Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/motion_est?download=true
inline.NumInlined: 141
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@sad_hpel_motion_search:bb.a
  %i.ki = add nsw i32 %i.kh, %i.jy                ; 2 uses
  %i.kj = icmp slt i32 %i.ki, %.11405             ; 2 uses
  %.12406 = tail call i32 @llvm.smin.i32(i32 %i.ki, i32 %.11405) ; 2 uses
  %.12386 = select i1 %i.kj, i32 1, i32 %.11385
  %.12 = select i1 %i.kj, i32 0, i32 %.11
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !22
  %i.km = tail call i32 %i.kl(ptr noundef null, ptr noundef %i.y, ptr noundef %i.aj, i64 noundef %i.bo, i32 noundef %7) #14
  %i.kn = load i8, ptr %i.ka, align 1, !tbaa !69
  %i.ko = zext i8 %i.kn to i32
  %i.kp = getelementptr i8, ptr %i.kd, i64 1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !69
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nuw nsw i32 %i.kr, %i.ko
  %i.kt = mul nsw i32 %i.ks, %i.b
  %i.ku = add nsw i32 %i.kt, %i.km                ; 2 uses
  %i.kv = icmp slt i32 %i.ku, %.12406
  br i1 %i.kv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.u, %bb.v
  %.pre-phi468 = phi i64 [ %.pre-phi465, %bb.aa ], [ %.pre-phi465, %bb.ab ], [ %.pre-phi471, %bb.u ], [ %.pre-phi471, %bb.v ]
  %.pre-phi467 = phi i64 [ %.pre-phi464, %bb.aa ], [ %.pre-phi464, %bb.ab ], [ %.pre-phi470, %bb.u ], [ %.pre-phi470, %bb.v ]
  %.13407 = phi i32 [ %.12406, %bb.aa ], [ %i.ku, %bb.ab ], [ %.9403, %bb.u ], [ %i.il, %bb.v ] ; 2 uses
  %.13387 = phi i32 [ %.12386, %bb.aa ], [ 1, %bb.ab ], [ %.9383, %bb.u ], [ -1, %bb.v ]
  %.13 = phi i32 [ %.12, %bb.aa ], [ 1, %bb.ab ], [ %.9, %bb.u ], [ 1, %bb.v ]
  %i.kw = getelementptr [32 x i8], ptr %0, i64 %i.br
  %i.kx = getelementptr i8, ptr %i.kw, i64 5272
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !22
  %i.kz = tail call i32 %i.ky(ptr noundef null, ptr noundef %i.y, ptr noundef %i.aj, i64 noundef %i.bo, i32 noundef %7) #14
  %i.la = getelementptr inbounds i8, ptr %i.g, i64 %.pre-phi467
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !69
  %i.lc = zext i8 %i.lb to i32
  %i.ld = getelementptr i8, ptr %i.g, i64 %.pre-phi468
  %i.le = getelementptr i8, ptr %i.ld, i64 1
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !69
  %i.lg = zext i8 %i.lf to i32
  %i.lh = add nuw nsw i32 %i.lg, %i.lc
  %i.li = mul nsw i32 %i.lh, %i.b
  %i.lj = add nsw i32 %i.li, %i.kz                ; 2 uses
  %i.lk = icmp slt i32 %i.lj, %.13407
  br i1 %i.lk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.j, %bb.i, %bb.p, %bb.o
  %.14408 = phi i32 [ %i.ef, %bb.j ], [ %.3397, %bb.i ], [ %i.fy, %bb.p ], [ %.6400, %bb.o ], [ %i.lj, %bb.ad ], [ %.13407, %bb.ac ]
  %.14388 = phi i32 [ -1, %bb.j ], [ %.3377, %bb.i ], [ 1, %bb.p ], [ %.6380, %bb.o ], [ 0, %bb.ad ], [ %.13387, %bb.ac ]
  %.14 = phi i32 [ 0, %bb.j ], [ %.3, %bb.i ], [ 0, %bb.p ], [ %.6, %bb.o ], [ 1, %bb.ad ], [ %.13, %bb.ac ]
  %i.ll = add nsw i32 %.14388, %i.bk
  %i.lm = add nsw i32 %.14, %i.bl
  br label %bb.ag

bb.af:                                            ; preds = %bb.b
  %i.ln = shl nsw i32 %i.z, 1
  %i.lo = shl nsw i32 %i.aa, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.a
  %storemerge456 = phi i32 [ 0, %bb.a ], [ %i.ll, %bb.ae ], [ %i.ln, %bb.af ]
  %storemerge = phi i32 [ 0, %bb.a ], [ %i.lm, %bb.ae ], [ %i.lo, %bb.af ]
  %.0411 = phi i32 [ %3, %bb.a ], [ %.14408, %bb.ae ], [ %3, %bb.af ]
  store i32 %storemerge456, ptr %1, align 4, !tbaa !61
  store i32 %storemerge, ptr %2, align 4, !tbaa !61
  ret i32 %.0411
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @zero_cmp(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, i32 %4) #6 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_me_init_pic(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  %i.e = and i32 %i.d, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5352
  store ptr %i.f, ptr %i.g, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.i = load i32, ptr %i.h, align 16, !tbaa !156
  %.not33 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5344 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5336 ; 2 uses
  br i1 %.not33, label %.thread, label %.thread41

.thread41:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2400
  store ptr %i.m, ptr %i.j, align 16, !tbaa !66
  store ptr %i.k, ptr %i.l, align 8, !tbaa !65
  br label %bb.e

.thread:                                          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store ptr %i.n, ptr %i.j, align 16, !tbaa !66
  store ptr %i.k, ptr %i.l, align 8, !tbaa !65
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %.pre = load i32, ptr %.phi.trans.insert, align 16, !tbaa !156
  %i.o = icmp eq i32 %.pre, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5336
  store ptr %i.p, ptr %i.q, align 8, !tbaa !65
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.thread41, %bb.d
  %.sink = phi i64 [ 1384, %bb.d ], [ 1640, %.thread41 ], [ 1640, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5328 ; 4 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.u = load i64, ptr %i.t, align 16, !tbaa !108 ; 2 uses
  %.not35 = icmp eq i64 %i.u, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.x = load i64, ptr %i.w, align 8, !tbaa !109
  %i.y = trunc i64 %i.x to i32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !94  ; 2 uses
  %i.ab = shl nsw i32 %i.aa, 4
  %i.ac = add nsw i32 %i.ab, 32
  %i.ad = shl nsw i32 %i.aa, 3
  %i.ae = add nsw i32 %i.ad, 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink38 = phi i32 [ %i.ac, %bb.g ], [ %i.v, %bb.f ]
  %.sink37 = phi i32 [ %i.ae, %bb.g ], [ %i.y, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5032
  store i32 %.sink38, ptr %i.af, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5036
  store i32 %.sink37, ptr %i.ag, align 4, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ai = load i32, ptr %i.ah, align 16, !tbaa !110
  %.not36 = icmp eq i32 %i.ai, 205
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  store ptr @zero_hpel, ptr %i.aj, align 8, !tbaa !22
  %i.ak = load ptr, ptr %i.s, align 16, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  store ptr @zero_hpel, ptr %i.al, align 8, !tbaa !22
  %i.am = load ptr, ptr %i.s, align 16, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store ptr @zero_hpel, ptr %i.an, align 8, !tbaa !22
  %i.ao = load ptr, ptr %i.s, align 16, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr @zero_hpel, ptr %i.ap, align 8, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.aq, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @zero_hpel(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i32 %3) #6 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_estimate_p_frame_motion(ptr noundef initializes((4776, 4800), (4904, 4928)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = alloca i32, align 4                      ; 16 uses
  %i.c = alloca [10 x [2 x i32]], align 16        ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 0, ptr %i.b, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.f = load i32, ptr %i.e, align 4, !tbaa !111  ; 2 uses
  %i.g = add nsw i32 %i.f, 1                      ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !112 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.k = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.l = insertelement <2 x i32> %i.k, i32 %2, i64 1 ; 3 uses
  %i.m = shl nsw <2 x i32> %i.l, splat (i32 4)    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.o = load i32, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %i.p = extractelement <2 x i32> %i.m, i64 1     ; 4 uses
  %i.q = mul nsw i32 %i.o, %i.p
  %i.r = extractelement <2 x i32> %i.m, i64 0     ; 4 uses
  %i.s = add nsw i32 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5036
  %i.u = load i32, ptr %i.t, align 4, !tbaa !68   ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.p
  %i.w = add nsw i32 %i.v, %i.r
  %i.x = ashr exact i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4904 ; 2 uses
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !63  ; 2 uses
  %.not40.i = icmp eq ptr %i.aa, null
  %i.ab = sext i32 %i.s to i64                    ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %i.ad = select i1 %.not40.i, ptr null, ptr %i.ac ; 5 uses
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !63
  %i.ae = load ptr, ptr %i.j, align 16, !tbaa !63 ; 2 uses
  %.not41.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.ab
  %i.ag = select i1 %.not41.i, ptr null, ptr %i.af
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 2 uses
  %.not40.1.i = icmp eq ptr %i.ai, null
  %i.aj = sext i32 %i.x to i64                    ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  %i.al = select i1 %.not40.1.i, ptr null, ptr %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4784
  store ptr %i.al, ptr %i.am, align 16, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63 ; 2 uses
  %.not41.1.i = icmp eq ptr %i.ao, null
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.aj
  %i.aq = select i1 %.not41.1.i, ptr null, ptr %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store ptr %i.aq, ptr %i.ar, align 16, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63 ; 2 uses
  %.not40.2.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.aj
  %i.av = select i1 %.not40.2.i, ptr null, ptr %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4792
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !63 ; 2 uses
  %.not41.2.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aj
  %i.ba = select i1 %.not41.2.i, ptr null, ptr %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4920
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !63
  %switch = icmp ult i32 %i.f, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 902) #14
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 5 uses
  %i.bd = load i64, ptr %i.bc, align 16, !tbaa !108 ; 2 uses
  %i.be = sext i32 %i.o to i64
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 903) #14
  tail call void @abort() #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !109
  %i.bi = sext i32 %i.u to i64
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 904) #14
  tail call void @abort() #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.bl = load i32, ptr %i.bk, align 16, !tbaa !113 ; 15 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4420 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !114 ; 3 uses
  %i.bo = load ptr, ptr %i.d, align 16, !tbaa !79 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 244
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !98
  %trunc.i = trunc i32 %i.bq to i8
  switch i8 %trunc.i, label %bb.h [
    i8 15, label %get_penalty_factor.exit
    i8 3, label %bb.i
    i8 11, label %bb.j
    i8 12, label %bb.k
    i8 2, label %bb.l
    i8 14, label %bb.l
    i8 6, label %bb.m
    i8 4, label %bb.m
    i8 1, label %bb.m
    i8 10, label %bb.m
    i8 5, label %get_penalty_factor.exit
  ]

bb.h:                                             ; preds = %bb.g
  %i.br = ashr i32 %i.bl, 7
  br label %get_penalty_factor.exit

bb.i:                                             ; preds = %bb.g
  %i.bs = mul nsw i32 %i.bl, 3
  %i.bt = ashr i32 %i.bs, 8
  br label %get_penalty_factor.exit

bb.j:                                             ; preds = %bb.g
  %i.bu = ashr i32 %i.bl, 5
  br label %get_penalty_factor.exit

bb.k:                                             ; preds = %bb.g
  %i.bv = ashr i32 %i.bl, 6
  br label %get_penalty_factor.exit

bb.l:                                             ; preds = %bb.g, %bb.g
  %i.bw = ashr i32 %i.bl, 6
  br label %get_penalty_factor.exit

bb.m:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.bx = ashr i32 %i.bn, 7
  br label %get_penalty_factor.exit

get_penalty_factor.exit:                          ; preds = %bb.g, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.0.i = phi i32 [ %i.br, %bb.h ], [ %i.bt, %bb.i ], [ %i.bu, %bb.j ], [ %i.bv, %bb.k ], [ %i.bw, %bb.l ], [ %i.bx, %bb.m ], [ 1, %bb.g ], [ 1, %bb.g ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4712
  store i32 %.0.i, ptr %i.by, align 8, !tbaa !107
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 248
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !99
  %trunc.i284 = trunc i32 %i.ca to i8
  switch i8 %trunc.i284, label %bb.n [
    i8 15, label %get_penalty_factor.exit286
    i8 3, label %bb.o
    i8 11, label %bb.p
    i8 12, label %bb.q
    i8 2, label %bb.r
    i8 14, label %bb.r
    i8 6, label %bb.s
    i8 4, label %bb.s
    i8 1, label %bb.s
    i8 10, label %bb.s
    i8 5, label %get_penalty_factor.exit286
  ]

bb.n:                                             ; preds = %get_penalty_factor.exit
  %i.cb = ashr i32 %i.bl, 7
  br label %get_penalty_factor.exit286

bb.o:                                             ; preds = %get_penalty_factor.exit
  %i.cc = mul nsw i32 %i.bl, 3
  %i.cd = ashr i32 %i.cc, 8
  br label %get_penalty_factor.exit286

bb.p:                                             ; preds = %get_penalty_factor.exit
  %i.ce = ashr i32 %i.bl, 5
  br label %get_penalty_factor.exit286

bb.q:                                             ; preds = %get_penalty_factor.exit
  %i.cf = ashr i32 %i.bl, 6
  br label %get_penalty_factor.exit286

bb.r:                                             ; preds = %get_penalty_factor.exit, %get_penalty_factor.exit
  %i.cg = ashr i32 %i.bl, 6
  br label %get_penalty_factor.exit286

bb.s:                                             ; preds = %get_penalty_factor.exit, %get_penalty_factor.exit, %get_penalty_factor.exit, %get_penalty_factor.exit
  %i.ch = ashr i32 %i.bn, 7
  br label %get_penalty_factor.exit286

get_penalty_factor.exit286:                       ; preds = %get_penalty_factor.exit, %get_penalty_factor.exit, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.0.i285 = phi i32 [ %i.cb, %bb.n ], [ %i.cd, %bb.o ], [ %i.ce, %bb.p ], [ %i.cf, %bb.q ], [ %i.cg, %bb.r ], [ %i.ch, %bb.s ], [ 1, %get_penalty_factor.exit ], [ 1, %get_penalty_factor.exit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4716
  store i32 %.0.i285, ptr %i.ci, align 4, !tbaa !106
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 252
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !101
  %trunc.i287 = trunc i32 %i.ck to i8
  switch i8 %trunc.i287, label %bb.t [
    i8 15, label %get_penalty_factor.exit289
    i8 3, label %bb.u
    i8 11, label %bb.v
    i8 12, label %bb.w
    i8 2, label %bb.x
    i8 14, label %bb.x
    i8 6, label %bb.y
end_hunk_0
begin_hunk_1_@ff_estimate_p_frame_motion:bb.a
get_limits.exit:                                  ; preds = %bb.z, %bb.ab, %bb.ac
  %i.ef = phi i32 [ %i.du, %bb.ab ], [ %i.db, %bb.ac ], [ %i.dk, %bb.z ]
  %i.eg = phi i32 [ %i.ds, %bb.ab ], [ %i.dc, %bb.ac ], [ %i.dj, %bb.z ]
  %i.eh = phi <2 x i32> [ %i.dz, %bb.ab ], [ %i.ee, %bb.ac ], [ %i.dn, %bb.z ] ; 2 uses
  %i.ei = and i32 %i.dg, 1                        ; 2 uses
  %i.ej = lshr exact i32 2048, %i.ei              ; 2 uses
  %i.ek = add nuw nsw i32 %i.ei, 1
  %i.el = ashr i32 %i.de, %i.ek                   ; 2 uses
  %.not69.i = icmp eq i32 %i.el, 0
  %i.em = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %i.ej)
  %.0.i290 = select i1 %.not69.i, i32 %i.ej, i32 %i.em ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4748 ; 2 uses
  %i.eo = sub nsw i32 0, %.0.i290                 ; 2 uses
  %i.ep = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 %i.eo)
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !24
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 2 uses
  %i.er = extractelement <2 x i32> %i.eh, i64 0
  %i.es = tail call i32 @llvm.smin.i32(i32 %i.er, i32 %.0.i290)
  store i32 %i.es, ptr %i.eq, align 16, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4756
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 %i.eo)
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !26
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.ew = extractelement <2 x i32> %i.eh, i64 1
  %i.ex = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %.0.i290)
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !27
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 4620 ; 6 uses
  store i32 0, ptr %i.ey, align 4, !tbaa !92
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 4520
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !157
  %i.fb = tail call i32 %i.fa(ptr noundef %i.ad, i64 noundef %i.bd) #14 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4528
  %i.fd = load ptr, ptr %i.fc, align 16, !tbaa !158
  %i.fe = load i64, ptr %i.bc, align 16, !tbaa !108
  %i.ff = tail call i32 %i.fd(ptr noundef %i.ad, i64 noundef %i.fe) #14
  %i.fg = mul i32 %i.fb, %i.fb
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = sub i32 %i.ff, %i.fh                    ; 7 uses
  %i.fj = add i32 %i.fi, 500                      ; 4 uses
  %i.fk = add nsw i32 %i.fb, 128
  %i.fl = ashr i32 %i.fk, 8                       ; 2 uses
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 6088
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !159
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 8 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !71
  %i.fr = mul nsw i32 %i.fq, %2
  %i.fs = add nsw i32 %i.fr, %1
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fo, i64 %i.ft
  store i8 %i.fm, ptr %i.fu, align 1, !tbaa !69
  %i.fv = add i32 %i.fi, 628
  %i.fw = ashr i32 %i.fv, 8                       ; 2 uses
  %i.fx = trunc i32 %i.fw to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 6072
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !120
  %i.ga = load i32, ptr %i.fp, align 4, !tbaa !71
  %i.gb = mul nsw i32 %i.ga, %2
  %i.gc = add nsw i32 %i.gb, %1
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.gd
  store i16 %i.fx, ptr %i.ge, align 2, !tbaa !78
  %i.gf = sext i32 %i.fw to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 5048 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !160
  %i.gi = add nsw i64 %i.gh, %i.gf
  store i64 %i.gi, ptr %i.gg, align 8, !tbaa !160
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 4616
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !121
  %.not = icmp eq i32 %i.gk, 0
  br i1 %.not, label %bb.ar, label %bb.ad

bb.ad:                                            ; preds = %get_limits.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.gm = load i32, ptr %i.gl, align 16, !tbaa !122
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.go = load i32, ptr %i.gn, align 16, !tbaa !61 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.gq = load ptr, ptr %i.gp, align 16, !tbaa !123 ; 2 uses
  %i.gr = sext i32 %i.go to i64
  %i.gs = getelementptr [4 x i8], ptr %i.gq, i64 %i.gr ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 -4
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !78
  %i.gv = sext i16 %i.gu to i32                   ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 %i.gv, ptr %i.gw, align 8, !tbaa !61
  %i.gx = getelementptr i8, ptr %i.gs, i64 -2
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !78
  %i.gz = sext i16 %i.gy to i32                   ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !61
  %i.hb = load i32, ptr %i.eq, align 16, !tbaa !25
  %i.hc = shl i32 %i.hb, %i.g                     ; 3 uses
  %i.hd = icmp slt i32 %i.hc, %i.gv
  br i1 %i.hd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.hc, ptr %i.gw, align 8, !tbaa !61
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.he = phi i32 [ %i.hc, %bb.ae ], [ %i.gv, %bb.ad ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !77
  %.not263 = icmp eq i32 %i.hg, 0
  br i1 %.not263, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  %i.hh = sub nsw i32 %i.go, %i.gm
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr [4 x i8], ptr %i.gq, i64 %i.hi ; 4 uses
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !78
  %i.hl = sext i16 %i.hk to i32                   ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.hl, ptr %i.hm, align 16, !tbaa !61
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !78
  %i.hp = sext i16 %i.ho to i32                   ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !61
  %i.hr = getelementptr i8, ptr %i.hj, i64 8
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !78
  %i.ht = sext i16 %i.hs to i32                   ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 %i.ht, ptr %i.hu, align 8, !tbaa !61
  %i.hv = getelementptr i8, ptr %i.hj, i64 10
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !78
  %i.hx = sext i16 %i.hw to i32                   ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !61
  %i.hz = load i32, ptr %i.ev, align 8, !tbaa !27
  %i.ia = shl i32 %i.hz, %i.g                     ; 6 uses
  %i.ib = icmp slt i32 %i.ia, %i.hp
  br i1 %i.ib, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.ia, ptr %i.hq, align 4, !tbaa !61
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ic = phi i32 [ %i.ia, %bb.ah ], [ %i.hp, %bb.ag ] ; 2 uses
  %i.id = load i32, ptr %i.en, align 4, !tbaa !24
  %i.ie = shl i32 %i.id, %i.g                     ; 3 uses
  %i.if = icmp sgt i32 %i.ie, %i.ht
  br i1 %i.if, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.ie, ptr %i.hu, align 8, !tbaa !61
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ig = phi i32 [ %i.ie, %bb.aj ], [ %i.ht, %bb.ai ]
  %i.ih = icmp slt i32 %i.ia, %i.hx
  br i1 %i.ih, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !61
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ii = phi i32 [ %i.ia, %bb.al ], [ %i.hx, %bb.ak ]
  %..i = tail call i32 @llvm.smax.i32(i32 %i.he, i32 %i.hl)
  %.20.i = tail call i32 @llvm.smin.i32(i32 %i.he, i32 %i.hl)
  %i.ij = tail call i32 @llvm.smin.i32(i32 %i.ig, i32 %..i)
  %i.ik = tail call noundef i32 @llvm.smax.i32(i32 %i.ij, i32 %.20.i) ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.ik, ptr %i.il, align 16, !tbaa !61
  %..i291 = tail call i32 @llvm.smax.i32(i32 %i.gz, i32 %i.ic)
  %.20.i292 = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.ic)
  %i.im = tail call i32 @llvm.smin.i32(i32 %i.ii, i32 %..i291)
  %i.in = tail call noundef i32 @llvm.smax.i32(i32 %i.im, i32 %.20.i292) ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.in, ptr %i.io, align 4, !tbaa !61
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !119
  %i.ir = icmp eq i32 %i.iq, 2
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 4764 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 4768 ; 2 uses
  br i1 %i.ir, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 %i.ik, ptr %i.is, align 4, !tbaa !20
  store i32 %i.in, ptr %i.it, align 16, !tbaa !21
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  store i32 %i.he, ptr %i.is, align 4, !tbaa !20
  store i32 %i.gz, ptr %i.it, align 16, !tbaa !21
  br label %bb.aq

bb.ap:                                            ; preds = %bb.af
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 4764
  store i32 %i.he, ptr %i.iu, align 4, !tbaa !20
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 4768
  store i32 %i.gz, ptr %i.iv, align 16, !tbaa !21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.ix = load ptr, ptr %i.iw, align 16, !tbaa !124
  %i.iy = lshr exact i32 65536, %i.g
  %i.iz = call i32 @ff_epzs_motion_search(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 0, ptr noundef %i.ix, i32 noundef %i.iy, i32 noundef 0, i32 noundef 16)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %get_limits.exit
  %.0246 = phi i32 [ %i.iz, %bb.aq ], [ 0, %get_limits.exit ] ; 2 uses
  %i.ja = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.jb = load i32, ptr %i.b, align 4, !tbaa !61  ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = load i64, ptr %i.bc, align 16, !tbaa !108 ; 2 uses
  %i.je = mul nsw i64 %i.jd, %i.jc
  %i.jf = getelementptr inbounds i8, ptr %i.ja, i64 %i.je
  %i.jg = load i32, ptr %i.a, align 4, !tbaa !61  ; 2 uses
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds i8, ptr %i.jf, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 5320
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !102
  %i.jl = tail call i32 %i.jk(ptr noundef null, ptr noundef %i.ad, ptr noundef %i.ji, i64 noundef %i.jd, i32 noundef 16) #14 ; 7 uses
  %i.jm = add nsw i32 %i.jl, 128
  %i.jn = ashr i32 %i.jm, 8                       ; 2 uses
  %i.jo = trunc i32 %i.jn to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %i.jq = load ptr, ptr %i.jp, align 16, !tbaa !125
  %i.jr = load i32, ptr %i.fp, align 4, !tbaa !71
  %i.js = mul nsw i32 %i.jr, %2
  %i.jt = add nsw i32 %i.js, %1
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.jq, i64 %i.ju
  store i16 %i.jo, ptr %i.jv, align 2, !tbaa !78
  %i.jw = sext i32 %i.jn to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 16, !tbaa !126
  %i.jz = add nsw i64 %i.jy, %i.jw
  store i64 %i.jz, ptr %i.jx, align 16, !tbaa !126
  %i.ka = load ptr, ptr %i.d, align 16, !tbaa !79
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 284
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !127
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %bb.as, label %bb.by

bb.as:                                            ; preds = %bb.ar
  %i.ke = load i32, ptr %i.bm, align 4, !tbaa !114
  %i.kf = lshr i32 %i.ke, 7                       ; 2 uses
  %i.kg = mul nuw i32 %i.kf, 100
  %i.kh = add i32 %i.kg, %i.fi
  %. = tail call i32 @llvm.umin.i32(i32 %i.jl, i32 %i.kh) ; 12 uses
  %i.ki = mul nuw nsw i32 %i.kf, 20
  %i.kj = add i32 %i.ki, %i.fi                    ; 12 uses
  %i.kk = icmp ult i32 %., 255
  br i1 %i.kk, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kl = zext nneg i32 %. to i64
  %i.km = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !69
  %i.kp = zext i8 %i.ko to i32
  %i.kq = add nsw i32 %i.kp, -1
  %i.kr = ashr i32 %i.kq, 4
  br label %ff_sqrt.exit

bb.au:                                            ; preds = %bb.as
  %i.ks = icmp ult i32 %., 4096
  br i1 %i.ks, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kt = lshr i32 %., 4
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !69
  %i.kx = lshr i8 %i.kw, 2
  %i.ky = zext nneg i8 %i.kx to i32
  br label %bb.bb

bb.aw:                                            ; preds = %bb.au
  %i.kz = icmp ult i32 %., 16384
  br i1 %i.kz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.la = lshr i32 %., 6
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !69
  %i.le = lshr i8 %i.ld, 1
  %i.lf = zext nneg i8 %i.le to i32
  br label %bb.bb

bb.ay:                                            ; preds = %bb.aw
  %i.lg = icmp ult i32 %., 65536
  br i1 %i.lg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.lh = lshr i32 %., 8
  %i.li = zext nneg i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !69
  %i.ll = zext i8 %i.lk to i32
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %.not.i.i = icmp ult i32 %., 16777216           ; 2 uses
  %spec.select.i.v.i = select i1 %.not.i.i, i32 16, i32 24
  %spec.select.i.i = lshr i32 %., %spec.select.i.v.i
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.lm = zext nneg i32 %spec.select.i.i to i64
  %i.ln = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.lm
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !69
  %i.lp = zext i8 %i.lo to i32
  %i.lq = add nuw nsw i32 %spec.select7.i.i, %i.lp
  %i.lr = lshr i32 %i.lq, 1                       ; 3 uses
  %i.ls = add nuw nsw i32 %i.lr, 2
  %i.lt = lshr i32 %., %i.ls                      ; 2 uses
  %i.lu = add nuw nsw i32 %i.lr, 8
  %i.lv = lshr i32 %i.lt, %i.lu
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !69  ; 2 uses
  %i.lz = zext i8 %i.ly to i32
  %i.ma = zext nneg i32 %i.lt to i64
  %i.mb = zext i8 %i.ly to i64
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !61
  %i.me = zext i32 %i.md to i64
  %i.mf = mul nuw nsw i64 %i.ma, %i.me
  %i.mg = lshr i64 %i.mf, 32
  %i.mh = trunc nuw nsw i64 %i.mg to i32
  %i.mi = shl i32 %i.lz, %i.lr
  %i.mj = add i32 %i.mi, %i.mh
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ax, %bb.av
  %.022.i = phi i32 [ %i.ky, %bb.av ], [ %i.lf, %bb.ax ], [ %i.ll, %bb.az ], [ %i.mj, %bb.ba ] ; 3 uses
  %i.mk = mul i32 %.022.i, %.022.i
  %i.ml = icmp ult i32 %., %i.mk
  %.neg.i = sext i1 %i.ml to i32
  %i.mm = add i32 %.022.i, %.neg.i
  br label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.at, %bb.bb
  %.0.i293 = phi i32 [ %i.kr, %bb.at ], [ %i.mm, %bb.bb ]
  %i.mn = icmp ult i32 %i.kj, 255
  br i1 %i.mn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %ff_sqrt.exit
  %i.mo = zext nneg i32 %i.kj to i64
  %i.mp = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !69
  %i.ms = zext i8 %i.mr to i32
  %i.mt = add nsw i32 %i.ms, -1
  %i.mu = ashr i32 %i.mt, 4
  br label %ff_sqrt.exit301

bb.bd:                                            ; preds = %ff_sqrt.exit
  %i.mv = icmp ult i32 %i.kj, 4096
  br i1 %i.mv, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mw = lshr i32 %i.kj, 4
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !69
  %i.na = lshr i8 %i.mz, 2
  %i.nb = zext nneg i8 %i.na to i32
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %i.nc = icmp ult i32 %i.kj, 16384
  br i1 %i.nc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.nd = lshr i32 %i.kj, 6
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !69
  %i.nh = lshr i8 %i.ng, 1
  %i.ni = zext nneg i8 %i.nh to i32
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.nj = icmp ult i32 %i.kj, 65536
  br i1 %i.nj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nk = lshr i32 %i.kj, 8
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !69
  %i.no = zext i8 %i.nn to i32
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i294 = icmp ult i32 %i.kj, 16777216     ; 2 uses
  %spec.select.i.v.i295 = select i1 %.not.i.i294, i32 16, i32 24
  %spec.select.i.i296 = lshr i32 %i.kj, %spec.select.i.v.i295
  %spec.select7.i.i297 = select i1 %.not.i.i294, i32 0, i32 8
  %i.np = zext nneg i32 %spec.select.i.i296 to i64
  %i.nq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !69
  %i.ns = zext i8 %i.nr to i32
  %i.nt = add nuw nsw i32 %spec.select7.i.i297, %i.ns
end_hunk_1
begin_hunk_2_@interlaced_search:bb.a
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !78
  %i.gw = sext i16 %i.gv to i32                   ; 3 uses
  store i32 %i.gw, ptr %i.bq, align 4, !tbaa !61
  %i.gx = getelementptr i8, ptr %i.gr, i64 4
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !78
  %i.gz = sext i16 %i.gy to i32                   ; 3 uses
  store i32 %i.gz, ptr %i.br, align 8, !tbaa !61
  %i.ha = getelementptr i8, ptr %i.gr, i64 6
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !78
  %i.hc = sext i16 %i.hb to i32                   ; 3 uses
  store i32 %i.hc, ptr %i.bs, align 4, !tbaa !61
  %i.hd = load i32, ptr %i.s, align 8, !tbaa !27
  %i.he = shl i32 %i.hd, 1                        ; 6 uses
  %i.hf = icmp slt i32 %i.he, %i.gw
  br i1 %i.hf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.he, ptr %i.bq, align 4, !tbaa !61
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.hg = phi i32 [ %i.he, %bb.s ], [ %i.gw, %bb.r ] ; 2 uses
  %i.hh = load i32, ptr %i.bt, align 4, !tbaa !24
  %i.hi = shl nsw i32 %i.hh, 1                    ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, %i.gz
  %i.hk = call i32 @llvm.smax.i32(i32 %i.hi, i32 %i.gz) ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, %i.gn
  %i.hm = call i32 @llvm.smin.i32(i32 %i.hk, i32 %i.gn) ; 2 uses
  %i.hn = or i1 %i.hj, %i.hl
  br i1 %i.hn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %i.hm, ptr %i.br, align 8, !tbaa !61
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ho = icmp slt i32 %i.he, %i.hc
  br i1 %i.ho, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.he, ptr %i.bs, align 4, !tbaa !61
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hp = phi i32 [ %i.he, %bb.w ], [ %i.hc, %bb.v ]
  %..i.1 = call i32 @llvm.smax.i32(i32 %i.gp, i32 %i.gt)
  %.20.i.1 = call i32 @llvm.smin.i32(i32 %i.gp, i32 %i.gt)
  %i.hq = call i32 @llvm.smin.i32(i32 %i.hm, i32 %..i.1)
  %i.hr = call noundef i32 @llvm.smax.i32(i32 %i.hq, i32 %.20.i.1)
  store i32 %i.hr, ptr %i.bu, align 16, !tbaa !61
  %..i156.1 = call i32 @llvm.smax.i32(i32 %i.gl, i32 %i.hg)
  %.20.i157.1 = call i32 @llvm.smin.i32(i32 %i.gl, i32 %i.hg)
  %i.hs = call i32 @llvm.smin.i32(i32 %i.hp, i32 %..i156.1)
  %i.ht = call noundef i32 @llvm.smax.i32(i32 %i.hs, i32 %.20.i157.1)
  store i32 %i.ht, ptr %i.bv, align 4, !tbaa !61
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.q
  %i.hu = call fastcc i32 @epzs_motion_search2(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.a, i32 noundef %i.cl, i32 noundef %i.cf, ptr noundef nonnull %i.ge, i32 noundef 32768, i32 noundef 0)
  %i.hv = load ptr, ptr %i.bw, align 16, !tbaa !105
  %i.hw = call i32 %i.hv(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.hu, i32 noundef %i.cl, i32 noundef %i.cf, i32 noundef 0, i32 noundef 8) #14
  %i.hx = load i32, ptr %i.b, align 4, !tbaa !61  ; 3 uses
  %i.hy = trunc i32 %i.hx to i16
  store i16 %i.hy, ptr %i.gf, align 2, !tbaa !78
  %i.hz = load i32, ptr %i.c, align 4, !tbaa !61  ; 3 uses
  %i.ia = trunc i32 %i.hz to i16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !78
  %i.ic = load ptr, ptr %i.bx, align 8, !tbaa !22
  %i.id = load ptr, ptr %i.by, align 8, !tbaa !22
  %.not153.1 = icmp eq ptr %i.ic, %i.id
  br i1 %.not153.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ie = load ptr, ptr %i.cg, align 8, !tbaa !63
  %i.if = ashr i32 %i.hx, 1
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds i8, ptr %i.ie, i64 %i.ig
  %i.ii = ashr i32 %i.hz, 1
  %i.ij = mul nsw i32 %i.ii, %i.i
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds i8, ptr %i.ih, i64 %i.ik
  %i.im = shl i32 %i.hz, 1
  %i.in = and i32 %i.im, 2
  %i.io = and i32 %i.hx, 1
  %i.ip = or disjoint i32 %i.in, %i.io
  %i.iq = load ptr, ptr %i.bz, align 16, !tbaa !64
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.ir
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !22
  %i.iu = load ptr, ptr %i.ca, align 16, !tbaa !128
  call void %i.it(ptr noundef %i.iu, ptr noundef %i.il, i64 noundef %i.cb, i32 noundef 8) #14
  %i.iv = load ptr, ptr %i.by, align 8, !tbaa !22
  %i.iw = load ptr, ptr %i.ck, align 8, !tbaa !63
  %i.ix = load ptr, ptr %i.ca, align 16, !tbaa !128
  %i.iy = call i32 %i.iv(ptr noundef nonnull %0, ptr noundef %i.iw, ptr noundef %i.ix, i64 noundef %i.cb, i32 noundef 8) #14
  %i.iz = load i32, ptr %i.b, align 4, !tbaa !61
  %i.ja = load i32, ptr %i.bh, align 4, !tbaa !20
  %i.jb = sub nsw i32 %i.iz, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds i8, ptr %i.f, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !69
  %i.jf = zext i8 %i.je to i32
  %i.jg = load i32, ptr %i.c, align 4, !tbaa !61
  %i.jh = load i32, ptr %i.bi, align 16, !tbaa !21
  %i.ji = sub nsw i32 %i.jg, %i.jh
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds i8, ptr %i.f, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !69
  %i.jm = zext i8 %i.jl to i32
  %i.jn = add nuw nsw i32 %i.jf, 1
  %i.jo = add nuw nsw i32 %i.jn, %i.jm
  %i.jp = load i32, ptr %i.cc, align 16, !tbaa !17
  %i.jq = mul nsw i32 %i.jo, %i.jp
  %i.jr = add nsw i32 %i.jq, %i.iy
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.js = load i32, ptr %i.cc, align 16, !tbaa !17
  %i.jt = add nsw i32 %i.js, %i.hw
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0131.1 = phi i32 [ %i.jr, %bb.z ], [ %i.jt, %bb.aa ]
  %i.ju = zext i1 %i.ch to i32
  %i.jv = add nsw i32 %.0131.1, %i.ju             ; 2 uses
  %i.jw = icmp slt i32 %i.jv, %i.gc
  %spec.select.1 = call i32 @llvm.smin.i32(i32 %i.jv, i32 %i.gc)
  %spec.select154.1 = select i1 %i.jw, i32 1, i32 %spec.select154 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.jx = sext i32 %spec.select154.1 to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !123
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.bd ; 2 uses
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !78
  %i.kc = sext i16 %i.kb to i32
  %.not148 = icmp eq i32 %4, %i.kc
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 2
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !78 ; 2 uses
  %i.kf = and i16 %i.ke, 1
  %.not149 = icmp eq i16 %i.kf, 0
  %i.kg = sext i16 %i.ke to i32
  %i.kh = shl nsw i32 %i.kg, 1
  %.not150 = icmp eq i32 %i.kh, %5
  %i.ki = zext i32 %spec.select154.1 to i64
  %.not151 = icmp eq i64 %indvars.iv165, %i.ki
  %i.kj = select i1 %.not151, i1 %.not150, i1 false
  %i.kk = select i1 %i.kj, i1 %.not149, i1 false
  %i.kl = select i1 %i.kk, i1 %.not148, i1 false
  %.4 = select i1 %i.kl, i32 %.0138162, i32 0     ; 2 uses
  %i.km = trunc nsw i32 %spec.select154.1 to i8
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv165
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !63
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.bd
  store i8 %i.km, ptr %i.kp, align 1, !tbaa !69
  %i.kq = add nsw i32 %spec.select.1, %.0137163   ; 3 uses
  br i1 %i.ch, label %.preheader, label %bb.ac, !llvm.loop !165

bb.ac:                                            ; preds = %bb.ab
  %i.kr = load <2 x i32>, ptr %i.r, align 4, !tbaa !61
  %i.ks = shl <2 x i32> %i.kr, splat (i32 1)
  store <2 x i32> %i.ks, ptr %i.r, align 4, !tbaa !61
  %i.kt = load <2 x i32>, ptr %i.v, align 8, !tbaa !61
  %i.ku = ashr <2 x i32> %i.kt, splat (i32 1)
  store <2 x i32> %i.ku, ptr %i.v, align 8, !tbaa !61
  %.not = icmp eq i32 %.4, 0
  br i1 %.not, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.kv = load ptr, ptr %i.d, align 16, !tbaa !79
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 252
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !101
  %i.ky = and i32 %i.kx, 255
  %cond = icmp eq i32 %i.ky, 6
  br i1 %cond, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kz = load i32, ptr %i.cc, align 16, !tbaa !17
  %i.la = mul nsw i32 %i.kz, 11
  %i.lb = add nsw i32 %i.la, %i.kq
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ae
  %.0 = phi i32 [ %i.lb, %bb.ae ], [ 2147483647, %bb.ac ], [ %i.kq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ff_pre_estimate_p_frame_motion(ptr noundef initializes((4776, 4800), (4904, 4928)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [10 x [2 x i32]], align 16        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3772
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111  ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.h = load i32, ptr %i.g, align 4, !tbaa !71   ; 2 uses
  %i.i = mul nsw i32 %i.h, %2
  %i.j = add nsw i32 %i.i, %1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !112 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.n = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.o = insertelement <2 x i32> %i.n, i32 %2, i64 1 ; 3 uses
  %i.p = shl nsw <2 x i32> %i.o, splat (i32 4)    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %i.s = extractelement <2 x i32> %i.p, i64 1     ; 4 uses
  %i.t = mul nsw i32 %i.r, %i.s
  %i.u = extractelement <2 x i32> %i.p, i64 0     ; 4 uses
  %i.v = add nsw i32 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5036
  %i.x = load i32, ptr %i.w, align 4, !tbaa !68
  %i.y = mul nsw i32 %i.x, %i.s
  %i.z = add nsw i32 %i.y, %i.u
  %i.aa = ashr exact i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4904
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !63  ; 2 uses
  %.not40.i = icmp eq ptr %i.ad, null
  %i.ae = sext i32 %i.v to i64                    ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = select i1 %.not40.i, ptr null, ptr %i.af
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !63
  %i.ah = load ptr, ptr %i.m, align 16, !tbaa !63 ; 2 uses
  %.not41.i = icmp eq ptr %i.ah, null
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ae
  %i.aj = select i1 %.not41.i, ptr null, ptr %i.ai
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63 ; 2 uses
  %.not40.1.i = icmp eq ptr %i.al, null
  %i.am = sext i32 %i.aa to i64                   ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  %i.ao = select i1 %.not40.1.i, ptr null, ptr %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4784
  store ptr %i.ao, ptr %i.ap, align 16, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %.not41.1.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.am
  %i.at = select i1 %.not41.1.i, ptr null, ptr %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store ptr %i.at, ptr %i.au, align 16, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63 ; 2 uses
  %.not40.2.i = icmp eq ptr %i.aw, null
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.am
  %i.ay = select i1 %.not40.2.i, ptr null, ptr %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4792
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !63
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.bb = load ptr, ptr %i.ba, align 16, !tbaa !63 ; 2 uses
  %.not41.2.i = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.am
  %i.bd = select i1 %.not41.2.i, ptr null, ptr %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4920
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !63
  %switch = icmp ult i32 %i.e, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1073) #14
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.bh = load i32, ptr %i.bg, align 16, !tbaa !113 ; 5 uses
  %i.bi = load ptr, ptr %i.bf, align 16, !tbaa !79 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 268
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !100
  %trunc.i = trunc i32 %i.bk to i8
  switch i8 %trunc.i, label %bb.d [
    i8 15, label %get_penalty_factor.exit
    i8 3, label %bb.e
    i8 11, label %bb.f
    i8 12, label %bb.g
    i8 2, label %bb.h
    i8 14, label %bb.h
    i8 6, label %bb.i
    i8 4, label %bb.i
    i8 1, label %bb.i
    i8 10, label %bb.i
    i8 5, label %get_penalty_factor.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.bl = ashr i32 %i.bh, 7
  br label %get_penalty_factor.exit

bb.e:                                             ; preds = %bb.c
  %i.bm = mul nsw i32 %i.bh, 3
  %i.bn = ashr i32 %i.bm, 8
  br label %get_penalty_factor.exit

bb.f:                                             ; preds = %bb.c
  %i.bo = ashr i32 %i.bh, 5
  br label %get_penalty_factor.exit

bb.g:                                             ; preds = %bb.c
  %i.bp = ashr i32 %i.bh, 6
  br label %get_penalty_factor.exit

bb.h:                                             ; preds = %bb.c, %bb.c
  %i.bq = ashr i32 %i.bh, 6
  br label %get_penalty_factor.exit

bb.i:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !114
  %i.bt = ashr i32 %i.bs, 7
  br label %get_penalty_factor.exit

get_penalty_factor.exit:                          ; preds = %bb.c, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ %i.bl, %bb.d ], [ %i.bn, %bb.e ], [ %i.bo, %bb.f ], [ %i.bp, %bb.g ], [ %i.bq, %bb.h ], [ %i.bt, %bb.i ], [ 1, %bb.c ], [ 1, %bb.c ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4708
  store i32 %.0.i, ptr %i.bu, align 4, !tbaa !166
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5360
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !115
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !116
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [16385 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8192
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 5368
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !19
  %i.cd = sub i32 0, %i.s
  %i.ce = sub i32 0, %i.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 280
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !117
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4724
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !70
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !118
  %.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %get_penalty_factor.exit
  %i.cl = sub nuw nsw i32 -16, %i.u
  %i.cm = sub nuw nsw i32 -16, %i.s
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.co = load <2 x i32>, ptr %i.cn, align 16, !tbaa !61
  %i.cp = sub nsw <2 x i32> %i.co, %i.p
  br label %get_limits.exit

bb.k:                                             ; preds = %get_penalty_factor.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !119
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ct = icmp sgt i32 %1, 0
  %i.cu = select i1 %i.ct, i32 -15, i32 0
  %i.cv = icmp sgt i32 %2, 0
  %i.cw = select i1 %i.cv, i32 -15, i32 0
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.cy = load <2 x i32>, ptr %i.cx, align 4, !tbaa !61
  %i.cz = add nsw <2 x i32> %i.cy, splat (i32 -1)
  %i.da = icmp slt <2 x i32> %i.o, %i.cz
  %i.db = select <2 x i1> %i.da, <2 x i32> splat (i32 15), <2 x i32> zeroinitializer
  br label %get_limits.exit

bb.m:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.dd = load <2 x i32>, ptr %i.dc, align 4, !tbaa !61
  %i.de = sub <2 x i32> %i.dd, %i.o
  %i.df = shl <2 x i32> %i.de, splat (i32 4)
  %i.dg = add <2 x i32> %i.df, splat (i32 -16)
  br label %get_limits.exit

get_limits.exit:                                  ; preds = %bb.j, %bb.l, %bb.m
  %i.dh = phi i32 [ %i.cw, %bb.l ], [ %i.cd, %bb.m ], [ %i.cm, %bb.j ]
  %i.di = phi i32 [ %i.cu, %bb.l ], [ %i.ce, %bb.m ], [ %i.cl, %bb.j ]
  %i.dj = phi <2 x i32> [ %i.db, %bb.l ], [ %i.dg, %bb.m ], [ %i.cp, %bb.j ] ; 2 uses
  %i.dk = and i32 %i.ci, 1                        ; 2 uses
  %i.dl = lshr exact i32 2048, %i.dk              ; 2 uses
  %i.dm = add nuw nsw i32 %i.dk, 1
  %i.dn = ashr i32 %i.cg, %i.dm                   ; 2 uses
  %.not69.i = icmp eq i32 %i.dn, 0
  %i.do = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %i.dl)
  %.0.i76 = select i1 %.not69.i, i32 %i.dl, i32 %i.do ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4748
  %i.dq = sub nsw i32 0, %.0.i76                  ; 2 uses
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.di, i32 %i.dq) ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !24
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4752
  %i.dt = extractelement <2 x i32> %i.dj, i64 0
  %i.du = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 %.0.i76) ; 2 uses
  store i32 %i.du, ptr %i.ds, align 16, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4756
  %i.dw = tail call i32 @llvm.smax.i32(i32 %i.dh, i32 %i.dq) ; 2 uses
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4760
  %i.dy = extractelement <2 x i32> %i.dj, i64 1
  %i.dz = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %.0.i76)
  store i32 %i.dz, ptr %i.dx, align 8, !tbaa !27
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 4620
  store i32 0, ptr %i.ea, align 4, !tbaa !92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 5904 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 16, !tbaa !124 ; 3 uses
  %i.ed = sext i32 %i.j to i64                    ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %i.ec, i64 %i.ed ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 4
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !78
  %i.eh = sext i16 %i.eg to i32
  %i.ei = shl i32 %i.dr, %i.f
  %. = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 %i.eh) ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %., ptr %i.ej, align 8, !tbaa !61
  %i.ek = getelementptr i8, ptr %i.ee, i64 6
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !78
  %i.em = sext i16 %i.el to i32                   ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.em, ptr %i.en, align 4, !tbaa !61
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !77
  %.not = icmp eq i32 %i.ep, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %get_limits.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 4764
  store i32 %., ptr %i.eq, align 4, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 4768
  store i32 %i.em, ptr %i.er, align 16, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.es, i8 0, i64 24, i1 false)
  br label %bb.v

bb.o:                                             ; preds = %get_limits.exit
  %i.et = add nsw i32 %i.j, %i.h
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.eu ; 4 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !78
  %i.ex = sext i16 %i.ew to i32                   ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.ex, ptr %i.ey, align 16, !tbaa !61
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !78
  %i.fb = sext i16 %i.fa to i32                   ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !61
  %i.fd = getelementptr i8, ptr %i.ev, i64 -4
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !78
  %i.ff = sext i16 %i.fe to i32                   ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !61
  %i.fh = getelementptr i8, ptr %i.ev, i64 -2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !78
  %i.fj = sext i16 %i.fi to i32                   ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !61
  %i.fl = shl i32 %i.dw, %i.f                     ; 6 uses
  %i.fm = icmp sgt i32 %i.fl, %i.fb
  br i1 %i.fm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.fl, ptr %i.fc, align 4, !tbaa !61
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fn = phi i32 [ %i.fl, %bb.p ], [ %i.fb, %bb.o ] ; 2 uses
  %i.fo = shl i32 %i.du, %i.f                     ; 3 uses
  %i.fp = icmp slt i32 %i.fo, %i.ff
  br i1 %i.fp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.fo, ptr %i.fg, align 8, !tbaa !61
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fq = phi i32 [ %i.fo, %bb.r ], [ %i.ff, %bb.q ]
  %i.fr = icmp sgt i32 %i.fl, %i.fj
  br i1 %i.fr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fs = phi i32 [ %i.fl, %bb.t ], [ %i.fj, %bb.s ]
  %..i = tail call i32 @llvm.smax.i32(i32 %., i32 %i.ex)
  %.20.i = tail call i32 @llvm.smin.i32(i32 %., i32 %i.ex)
  %i.ft = tail call i32 @llvm.smin.i32(i32 %i.fq, i32 %..i)
  %i.fu = tail call noundef i32 @llvm.smax.i32(i32 %i.ft, i32 %.20.i) ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.fu, ptr %i.fv, align 16, !tbaa !61
  %..i77 = tail call i32 @llvm.smax.i32(i32 %i.em, i32 %i.fn)
  %.20.i78 = tail call i32 @llvm.smin.i32(i32 %i.em, i32 %i.fn)
  %i.fw = tail call i32 @llvm.smin.i32(i32 %i.fs, i32 %..i77)
  %i.fx = tail call noundef i32 @llvm.smax.i32(i32 %i.fw, i32 %.20.i78) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !61
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 4764
  store i32 %i.fu, ptr %i.fz, align 4, !tbaa !20
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 4768
  store i32 %i.fx, ptr %i.ga, align 16, !tbaa !21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.n
  %i.gb = lshr exact i32 65536, %i.f
  %i.gc = call i32 @ff_epzs_motion_search(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.ec, i32 noundef %i.gb, i32 noundef 0, i32 noundef 16)
  %i.gd = load i32, ptr %i.a, align 4, !tbaa !61
  %i.ge = shl i32 %i.gd, %i.f
  %i.gf = trunc i32 %i.ge to i16
  %i.gg = load ptr, ptr %i.eb, align 16, !tbaa !124
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.ed ; 2 uses
  store i16 %i.gf, ptr %i.gh, align 2, !tbaa !78
  %i.gi = load i32, ptr %i.b, align 4, !tbaa !61
  %i.gj = shl i32 %i.gi, %i.f
  %i.gk = trunc i32 %i.gj to i16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %i.gc
}

; Function Attrs: nounwind uwtable
define void @ff_estimate_b_frame_motion(ptr noundef initializes((4620, 4624), (4748, 4764), (4776, 4800), (4904, 4928), (4968, 4992), (5368, 5376)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !71
  %i.e = mul nsw i32 %i.d, %2
  %i.f = add nsw i32 %i.e, %1                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !112 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.k = shl nsw i32 %1, 4                        ; 4 uses
  %i.l = shl nsw i32 %2, 4                        ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5032 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23
  %i.o = mul nsw i32 %i.n, %i.l
  %i.p = add nsw i32 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5036
  %i.r = load i32, ptr %i.q, align 4, !tbaa !68
  %i.s = mul nsw i32 %i.r, %i.l
  %i.t = add nsw i32 %i.s, %i.k
  %i.u = ashr exact i32 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4776 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4904 ; 2 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %.not40.i = icmp eq ptr %i.x, null
  %i.y = sext i32 %i.p to i64                     ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  %i.aa = select i1 %.not40.i, ptr null, ptr %i.z
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !63
  %i.ab = load ptr, ptr %i.i, align 16, !tbaa !63 ; 2 uses
  %.not41.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.y
  %i.ad = select i1 %.not41.i, ptr null, ptr %i.ac
  store ptr %i.ad, ptr %i.w, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 2 uses
  %.not40.1.i = icmp eq ptr %i.af, null
  %i.ag = sext i32 %i.u to i64                    ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = select i1 %.not40.1.i, ptr null, ptr %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4784
  store ptr %i.ai, ptr %i.aj, align 16, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !63 ; 2 uses
  %.not41.1.i = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ag
  %i.an = select i1 %.not41.1.i, ptr null, ptr %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4912
  store ptr %i.an, ptr %i.ao, align 16, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !63 ; 2 uses
  %.not40.2.i = icmp eq ptr %i.aq, null
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ag
  %i.as = select i1 %.not40.2.i, ptr null, ptr %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4792
  store ptr %i.as, ptr %i.at, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.av = load ptr, ptr %i.au, align 16, !tbaa !63 ; 2 uses
  %.not41.2.i = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ag
  %i.ax = select i1 %.not41.2.i, ptr null, ptr %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4920
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4968 ; 3 uses
  %i.ba = load ptr, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %.not39.i = icmp eq ptr %i.ba, null
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.y
  %i.bc = select i1 %.not39.i, ptr null, ptr %i.bb
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !63
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !63 ; 2 uses
  %.not39.1.i = icmp eq ptr %i.be, null
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.ag
  %i.bg = select i1 %.not39.1.i, ptr null, ptr %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4976
  store ptr %i.bg, ptr %i.bh, align 16, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63 ; 2 uses
  %.not39.2.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.ag
  %i.bl = select i1 %.not39.2.i, ptr null, ptr %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4984
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !63
  %i.bn = load ptr, ptr %i.b, align 16, !tbaa !79 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 280
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !117
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4724
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !70
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !118
  %.not.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bv = load i32, ptr %i.bu, align 16, !tbaa !131
  %i.bw = sub nsw i32 %i.bv, %i.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !132
  %i.bz = sub nsw i32 %i.by, %i.l
  br label %get_limits.exit

bb.c:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !94
  %i.cc = sub i32 %i.cb, %1
  %reass.sub.i = shl i32 %i.cc, 4
  %i.cd = add i32 %reass.sub.i, -16
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !95
  %i.cg = sub i32 %i.cf, %2
  %reass.sub71.i = shl i32 %i.cg, 4
  %i.ch = add i32 %reass.sub71.i, -16
  br label %get_limits.exit

get_limits.exit:                                  ; preds = %bb.b, %bb.c
  %i.ci = phi i32 [ %i.bz, %bb.b ], [ %i.ch, %bb.c ]
  %.pn = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]     ; 2 uses
  %i.cj = phi i32 [ %i.bw, %bb.b ], [ %i.cd, %bb.c ]
  %i.ck = sub i32 %.pn, %i.k
  %i.cl = sub i32 %.pn, %i.l
  %i.cm = and i32 %i.br, 1                        ; 2 uses
  %i.cn = lshr exact i32 2048, %i.cm              ; 2 uses
  %i.co = add nuw nsw i32 %i.cm, 1
  %i.cp = ashr i32 %i.bp, %i.co                   ; 2 uses
  %.not69.i = icmp eq i32 %i.cp, 0
  %i.cq = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cn)
  %.0.i = select i1 %.not69.i, i32 %i.cn, i32 %i.cq ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4748 ; 2 uses
  %i.cs = sub nsw i32 0, %.0.i                    ; 2 uses
  %i.ct = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cs)
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !24
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 2 uses
  %i.cv = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %.0.i)
  store i32 %i.cv, ptr %i.cu, align 16, !tbaa !25
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4756 ; 2 uses
  %i.cx = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 %i.cs)
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 2 uses
  %i.cz = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %.0.i)
  store i32 %i.cz, ptr %i.cy, align 8, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4620 ; 5 uses
  store i32 0, ptr %i.da, align 4, !tbaa !92
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 16, !tbaa !110
  %i.dd = icmp eq i32 %i.dc, 12                   ; 2 uses
  br i1 %i.dd, label %bb.d, label %bb.f

bb.d:                                             ; preds = %get_limits.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.df = load ptr, ptr %i.de, align 16, !tbaa !170
  %i.dg = sext i32 %i.f to i64
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !69
  %.not = icmp eq i8 %i.di, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dj = tail call fastcc i32 @direct_search(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) ; 2 uses
  %i.dk = mul nsw i32 %i.dj, %i.dj
  %i.dl = add nuw nsw i32 %i.dk, 32768
  %i.dm = lshr i32 %i.dl, 16                      ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 5040 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 16, !tbaa !126
  %i.dq = add nsw i64 %i.dp, %i.dn
  store i64 %i.dq, ptr %i.do, align 16, !tbaa !126
  %i.dr = trunc nuw i32 %i.dm to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 6080
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !125
  %i.du = load i32, ptr %i.c, align 4, !tbaa !71
  %i.dv = mul nsw i32 %i.du, %2
  %i.dw = add nsw i32 %i.dv, %1
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.dx
  store i16 %i.dr, ptr %i.dy, align 2, !tbaa !78
  br label %bb.by

bb.f:                                             ; preds = %bb.d, %get_limits.exit
end_hunk_2
