Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/tcache?download=true
inline.NumInlined: 196
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@tcache_bin_settings_backup:bb.a
  %i.m = getelementptr i8, ptr %0, i64 174
  %.val.6 = load i16, ptr %i.m, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.l, i16 noundef zeroext %.val.6) #13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.o = getelementptr i8, ptr %0, i64 198
  %.val.7 = load i16, ptr %i.o, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.n, i16 noundef zeroext %.val.7) #13
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr i8, ptr %0, i64 222
  %.val.8 = load i16, ptr %i.q, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.p, i16 noundef zeroext %.val.8) #13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.s = getelementptr i8, ptr %0, i64 246
  %.val.9 = load i16, ptr %i.s, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.r, i16 noundef zeroext %.val.9) #13
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = getelementptr i8, ptr %0, i64 270
  %.val.10 = load i16, ptr %i.u, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.t, i16 noundef zeroext %.val.10) #13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.w = getelementptr i8, ptr %0, i64 294
  %.val.11 = load i16, ptr %i.w, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.v, i16 noundef zeroext %.val.11) #13
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr i8, ptr %0, i64 318
  %.val.12 = load i16, ptr %i.y, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.x, i16 noundef zeroext %.val.12) #13
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.aa = getelementptr i8, ptr %0, i64 342
  %.val.13 = load i16, ptr %i.aa, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.z, i16 noundef zeroext %.val.13) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ac = getelementptr i8, ptr %0, i64 366
  %.val.14 = load i16, ptr %i.ac, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.ab, i16 noundef zeroext %.val.14) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ae = getelementptr i8, ptr %0, i64 390
  %.val.15 = load i16, ptr %i.ae, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.ad, i16 noundef zeroext %.val.15) #13
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = getelementptr i8, ptr %0, i64 414
  %.val.16 = load i16, ptr %i.ag, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.af, i16 noundef zeroext %.val.16) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ai = getelementptr i8, ptr %0, i64 438
  %.val.17 = load i16, ptr %i.ai, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.ah, i16 noundef zeroext %.val.17) #13
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ak = getelementptr i8, ptr %0, i64 462
  %.val.18 = load i16, ptr %i.ak, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.aj, i16 noundef zeroext %.val.18) #13
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.am = getelementptr i8, ptr %0, i64 486
  %.val.19 = load i16, ptr %i.am, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.al, i16 noundef zeroext %.val.19) #13
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = getelementptr i8, ptr %0, i64 510
  %.val.20 = load i16, ptr %i.ao, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.an, i16 noundef zeroext %.val.20) #13
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.aq = getelementptr i8, ptr %0, i64 534
  %.val.21 = load i16, ptr %i.aq, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.ap, i16 noundef zeroext %.val.21) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.as = getelementptr i8, ptr %0, i64 558
  %.val.22 = load i16, ptr %i.as, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.ar, i16 noundef zeroext %.val.22) #13
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.au = getelementptr i8, ptr %0, i64 582
  %.val.23 = load i16, ptr %i.au, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.at, i16 noundef zeroext %.val.23) #13
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = getelementptr i8, ptr %0, i64 606
  %.val.24 = load i16, ptr %i.aw, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.av, i16 noundef zeroext %.val.24) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.ay = getelementptr i8, ptr %0, i64 630
  %.val.25 = load i16, ptr %i.ay, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.ax, i16 noundef zeroext %.val.25) #13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ba = getelementptr i8, ptr %0, i64 654
  %.val.26 = load i16, ptr %i.ba, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.az, i16 noundef zeroext %.val.26) #13
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.bc = getelementptr i8, ptr %0, i64 678
  %.val.27 = load i16, ptr %i.bc, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bb, i16 noundef zeroext %.val.27) #13
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.be = getelementptr i8, ptr %0, i64 702
  %.val.28 = load i16, ptr %i.be, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bd, i16 noundef zeroext %.val.28) #13
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bg = getelementptr i8, ptr %0, i64 726
  %.val.29 = load i16, ptr %i.bg, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bf, i16 noundef zeroext %.val.29) #13
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bi = getelementptr i8, ptr %0, i64 750
  %.val.30 = load i16, ptr %i.bi, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bh, i16 noundef zeroext %.val.30) #13
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.bk = getelementptr i8, ptr %0, i64 774
  %.val.31 = load i16, ptr %i.bk, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bj, i16 noundef zeroext %.val.31) #13
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = getelementptr i8, ptr %0, i64 798
  %.val.32 = load i16, ptr %i.bm, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bl, i16 noundef zeroext %.val.32) #13
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bo = getelementptr i8, ptr %0, i64 822
  %.val.33 = load i16, ptr %i.bo, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bn, i16 noundef zeroext %.val.33) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bq = getelementptr i8, ptr %0, i64 846
  %.val.34 = load i16, ptr %i.bq, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bp, i16 noundef zeroext %.val.34) #13
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.bs = getelementptr i8, ptr %0, i64 870
  %.val.35 = load i16, ptr %i.bs, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.br, i16 noundef zeroext %.val.35) #13
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bu = getelementptr i8, ptr %0, i64 894
  %.val.36 = load i16, ptr %i.bu, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bt, i16 noundef zeroext %.val.36) #13
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.bw = getelementptr i8, ptr %0, i64 918
  %.val.37 = load i16, ptr %i.bw, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bv, i16 noundef zeroext %.val.37) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.by = getelementptr i8, ptr %0, i64 942
  %.val.38 = load i16, ptr %i.by, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bx, i16 noundef zeroext %.val.38) #13
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.ca = getelementptr i8, ptr %0, i64 966
  %.val.39 = load i16, ptr %i.ca, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.bz, i16 noundef zeroext %.val.39) #13
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cc = getelementptr i8, ptr %0, i64 990
  %.val.40 = load i16, ptr %i.cc, align 2, !tbaa !38
  tail call void @je_cache_bin_info_init(ptr noundef nonnull %i.cb, i16 noundef zeroext %.val.40) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tcache_bin_info_default_init(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @opt_tcache_ncached_max, ptr noundef nonnull @opt_tcache_ncached_max_set)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !146
  store i64 %1, ptr %i.b, align 8, !tbaa !28
  %.not15 = icmp eq ptr %3, null
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.f = call zeroext i1 @je_multi_setting_parse_next(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #13 ; 2 uses
  br i1 %i.f, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.d, align 8              ; 2 uses
  %i.h = icmp ugt i64 %i.g, 32768
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 32768, ptr %i.d, align 8, !tbaa !28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i64 [ 32768, %bb.d ], [ %i.g, %bb.c ] ; 4 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !28   ; 5 uses
  %i.k = icmp ugt i64 %i.j, 32768
  %i.l = icmp ugt i64 %i.j, %i.i
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i64 %i.j, 9
  br i1 %i.m, label %sz_size2index_compute.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = shl nuw nsw i64 %i.j, 1
  %i.o = add nsw i64 %i.n, -1
  %i.p = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = xor i32 %i.q, 63                         ; 2 uses
  %i.s = call i32 @llvm.usub.sat.i32(i32 %i.r, i32 6)
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = call i32 @llvm.umax.i32(i32 %i.r, i32 7)
  %i.v = add nsw i32 %i.u, -3
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %4 = shl nsw i64 -1, %i.w
  %i.x = add nsw i64 %i.j, -1
  %5 = and i64 %4, %i.x
  %i.y = lshr i64 %5, %i.w
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 3
  %i.ab = or disjoint i32 %i.t, 1
  %i.ac = add nuw nsw i32 %i.ab, %i.aa
  br label %sz_size2index_compute.exit

sz_size2index_compute.exit:                       ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.ac, %bb.g ], [ 0, %bb.f ] ; 3 uses
  %i.ad = icmp samesign ult i64 %i.i, 9
  br i1 %i.ad, label %sz_size2index_compute.exit19, label %bb.h

bb.h:                                             ; preds = %sz_size2index_compute.exit
  %i.ae = shl nuw nsw i64 %i.i, 1
  %i.af = add nsw i64 %i.ae, -1
  %i.ag = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.af, i1 true)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %i.ai = xor i32 %i.ah, 63                       ; 2 uses
  %i.aj = call i32 @llvm.usub.sat.i32(i32 %i.ai, i32 6)
  %i.ak = shl nuw nsw i32 %i.aj, 2
  %i.al = call i32 @llvm.umax.i32(i32 %i.ai, i32 7)
  %i.am = add nsw i32 %i.al, -3
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %6 = shl nsw i64 -1, %i.an
  %i.ao = add nsw i64 %i.i, -1
  %7 = and i64 %6, %i.ao
  %i.ap = lshr i64 %7, %i.an
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 3
  %i.as = or disjoint i32 %i.ak, 1
  %i.at = add nuw nsw i32 %i.as, %i.ar
  br label %sz_size2index_compute.exit19

sz_size2index_compute.exit19:                     ; preds = %sz_size2index_compute.exit, %bb.h
  %.0.i.i18 = phi i32 [ %i.at, %bb.h ], [ 0, %sz_size2index_compute.exit ] ; 3 uses
  %i.au = load i64, ptr %i.e, align 8, !tbaa !28
  %i.av = icmp ugt i64 %i.au, 8191
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %sz_size2index_compute.exit19
  store i64 8191, ptr %i.e, align 8, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sz_size2index_compute.exit19
  %.not23 = icmp samesign ugt i32 %.0.i.i, %.0.i.i18
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  br i1 %.not15, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.024.us = phi i32 [ %i.ba, %.lr.ph.split.us ], [ %.0.i.i, %.lr.ph ] ; 3 uses
  %i.aw = zext nneg i32 %.024.us to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.aw
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !28
  %i.az = trunc i64 %i.ay to i16
  call void @je_cache_bin_info_init(ptr noundef %i.ax, i16 noundef zeroext %i.az) #13
  %i.ba = add nuw nsw i32 %.024.us, 1
  %.not.us.not = icmp ult i32 %.024.us, %.0.i.i18
  br i1 %.not.us.not, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !143

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.024 = phi i32 [ %i.bg, %.lr.ph.split ], [ %.0.i.i, %.lr.ph ] ; 3 uses
  %i.bb = zext nneg i32 %.024 to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bb
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !28
  %i.be = trunc i64 %i.bd to i16
  call void @je_cache_bin_info_init(ptr noundef %i.bc, i16 noundef zeroext %i.be) #13
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  store i8 1, ptr %i.bf, align 1, !tbaa !27
  %i.bg = add nuw nsw i32 %.024, 1
  %.not.not = icmp ult i32 %.024, %.0.i.i18
  br i1 %.not.not, label %.lr.ph.split, label %.loopexit, !llvm.loop !143

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.loopexit21

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !28
  %.not16 = icmp eq i64 %i.bh, 0
  br i1 %.not16, label %.loopexit21, label %bb.b, !llvm.loop !144

.loopexit21:                                      ; preds = %.loopexit, %bb.k
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @je_tcache_bins_ncached_max_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [41 x %struct.cache_bin_info_s], align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call fastcc void @tcache_bin_settings_backup(ptr noundef nonnull %i.a, ptr noundef %3)
  %i.b = call fastcc zeroext i1 @tcache_bin_info_settings_parse(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef null)
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = load i8, ptr %0, align 8, !tbaa !27, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %je_tcache_cleanup.exit

bb.c:                                             ; preds = %bb.b
  call fastcc void @tcache_destroy(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i1 noundef zeroext true)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 968
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(984) %i.h, i8 0, i64 984, i1 false)
  br label %je_tcache_cleanup.exit

je_tcache_cleanup.exit:                           ; preds = %bb.b, %bb.c
  %i.i = call fastcc zeroext i1 @tsd_tcache_data_init(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %je_tcache_cleanup.exit
  %.0 = phi i1 [ %i.i, %je_tcache_cleanup.exit ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @je_tcache_flush(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  %.val1920.i = load i32, ptr %i.c, align 8, !tbaa !123
  %.not.i = icmp eq i32 %.val1920.i, 0
  br i1 %.not.i, label %tcache_flush_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.i ; 3 uses
  %.val17.i = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.f = icmp eq ptr %.val17.i, @je_disabled_bin
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %indvars.iv.i, 36
  %i.h = trunc nuw i64 %indvars.iv.i to i32       ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @je_tcache_bin_flush_small(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef %i.h, i32 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @je_tcache_bin_flush_large(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef %i.h, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val19.i = load i32, ptr %i.c, align 8, !tbaa !123
  %i.i = zext i32 %.val19.i to i64
  %i.j = icmp samesign ult i64 %indvars.iv.next.i, %i.i
  br i1 %i.j, label %bb.b, label %tcache_flush_cache.exit, !llvm.loop !0

tcache_flush_cache.exit:                          ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tcache_destroy(ptr noundef %0, ptr nofree noundef captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %4 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %5 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %6 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %7 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %8 = alloca %struct.rtree_contents_s, align 8   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !32     ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 48       ; 2 uses
  %.val1920.i = load i32, ptr %i.b, align 8, !tbaa !123
  %.not.i = icmp eq i32 %.val1920.i, 0
  br i1 %.not.i, label %tcache_flush_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv.i ; 3 uses
  %.val17.i = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.e = icmp eq ptr %.val17.i, @je_disabled_bin
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %indvars.iv.i, 36
  %i.g = trunc nuw i64 %indvars.iv.i to i32       ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef %i.g, i32 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef %i.g, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val19.i = load i32, ptr %i.b, align 8, !tbaa !123
  %i.h = zext i32 %.val19.i to i64
  %i.i = icmp samesign ult i64 %indvars.iv.next.i, %i.h
  br i1 %i.i, label %bb.b, label %tcache_flush_cache.exit, !llvm.loop !0

tcache_flush_cache.exit:                          ; preds = %bb.f, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  tail call fastcc void @tcache_arena_dissociate(ptr noundef %0, ptr noundef nonnull %i.a)
  br i1 %2, label %bb.g, label %.critedge

bb.g:                                             ; preds = %tcache_flush_cache.exit
  %i.l = tail call zeroext i1 @je_cache_bin_stack_use_thp() #13
  br i1 %i.l, label %bb.h, label %.critedge

end_hunk_0
begin_hunk_1_@tcache_gc_event:bb.a
  %.04961 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %.05160 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.aa = call fastcc zeroext i1 @tcache_try_gc_bin(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef %i.c, i32 noundef %.04961)
  %i.ab = zext i1 %i.aa to i32
  %spec.select = add nuw nsw i32 %.05160, %i.ab   ; 2 uses
  %i.ac = add i32 %.04961, 1                      ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.u
  %spec.store.select = select i1 %i.ad, i32 0, i32 %i.ac ; 2 uses
  %i.ae = add nuw nsw i32 %.04762, 1              ; 2 uses
  %i.af = icmp samesign ult i32 %i.ae, %i.u
  %i.ag = icmp samesign ult i32 %spec.select, 4
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !152

bb.f:                                             ; preds = %.preheader
  store i32 %spec.store.select1, ptr %i.w, align 8, !tbaa !127
  br label %._crit_edge.thread

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.064 = phi i32 [ %i.al, %.preheader ], [ 36, %._crit_edge ]
  %.04863 = phi i32 [ %spec.store.select1, %.preheader ], [ %i.x, %._crit_edge ] ; 2 uses
  %i.ai = call fastcc zeroext i1 @tcache_try_gc_bin(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef %i.c, i32 noundef %.04863)
  %i.aj = add i32 %.04863, 1                      ; 2 uses
  %i.ak = icmp eq i32 %i.aj, %.val
  %spec.store.select1 = select i1 %i.ak, i32 36, i32 %i.aj ; 2 uses
  %i.al = add nuw i32 %.064, 1                    ; 2 uses
  %i.am = icmp uge i32 %i.al, %.val
  %.not66 = or i1 %i.am, %i.ai
  br i1 %.not66, label %bb.f, label %.preheader, !llvm.loop !153

._crit_edge.thread:                               ; preds = %bb.e, %bb.f, %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %tcache_get.exit.thread

tcache_get.exit.thread:                           ; preds = %bb.c, %bb.a, %._crit_edge.thread
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !160  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !61

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %atomic_load_p.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !160
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !61

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !160
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !161  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !160
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !161
  store ptr %i.u, ptr %i.r, align 8, !tbaa !161
  store i64 %i.c, ptr %i.d, align 8, !tbaa !160
  store ptr %i.s, ptr %i.t, align 8, !tbaa !161
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %atomic_load_p.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !160
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !61

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !160
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !61

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !160
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !61

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !160
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !61

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !160
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !61

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !160
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !61

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #13
  br label %atomic_load_p.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !161 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !160
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !160
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !161
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !161
  store i64 %i.e, ptr %i.at, align 8, !tbaa !160
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !161
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !161
  store i64 %i.c, ptr %i.d, align 8, !tbaa !160
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !161
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %atomic_load_p.exit

atomic_load_p.exit:                               ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !162
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !19, !alias.scope !163
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !20, !alias.scope !163
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !164, !alias.scope !163
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !165, !alias.scope !163
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !121, !alias.scope !163
  ret void
}

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #4

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 233) i32 @sz_size2index_compute(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = icmp ugt i64 %0, 8070450532247928832
  br i1 %i.a, label %sz_size2index_compute_inline.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %0, 9
  br i1 %i.b, label %sz_size2index_compute_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = shl nuw i64 %0, 1
  %i.d = add i64 %i.c, -1
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.d, i1 true)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = xor i32 %i.f, 63                         ; 2 uses
  %i.h = tail call i32 @llvm.usub.sat.i32(i32 %i.g, i32 6)
  %i.i = shl nuw nsw i32 %i.h, 2
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.g, i32 7)
  %i.k = add nsw i32 %i.j, -3
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %1 = shl nsw i64 -1, %i.l
  %i.m = add nsw i64 %0, -1
  %2 = and i64 %1, %i.m
  %i.n = lshr i64 %2, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = or disjoint i32 %i.i, 1
  %i.r = add nuw nsw i32 %i.q, %i.p
  br label %sz_size2index_compute_inline.exit

sz_size2index_compute_inline.exit:                ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.r, %bb.c ], [ 232, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #9

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

declare zeroext i1 @je_cache_bin_stack_use_thp() local_unnamed_addr #4

declare ptr @je_b0_alloc_tcache_stack(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @je_arena_palloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @je_cache_bin_preincrement(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_cache_bin_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_cache_bin_init_disabled(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @je_cache_bin_postincrement(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_nstime_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #10

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_malloc_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

declare void @je_cache_bin_info_init(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare zeroext i1 @je_multi_setting_parse_next(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_b0_dalloc_tcache_stack(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @je_arena_decay(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @je_arena_nthreads_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #13
  br label %emap_edata_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %emap_edata_lookup.exit

emap_edata_lookup.exit:                           ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d) #13
  ret void
}

declare void @je_large_dalloc(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @je_base_alloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @tcache_try_gc_bin(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.cache_bin_ptr_array_s, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = zext i32 %3 to i64                       ; 8 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.b ; 13 uses
  %.val22 = load ptr, ptr %i.c, align 8, !tbaa !44 ; 4 uses
  %i.d = icmp eq ptr %.val22, @je_disabled_bin
  %i.e = getelementptr i8, ptr %i.c, i64 22       ; 2 uses
  br i1 %i.d, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %3, 36                      ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 20       ; 3 uses
  %.val19.i = load i16, ptr %i.g, align 4, !tbaa !45 ; 3 uses
  %.val17.i = load i16, ptr %i.e, align 2, !tbaa !38 ; 3 uses
  %i.h = shl i16 %.val17.i, 3
  %.neg.i = sub i16 %i.h, %.val19.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 18 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !50
  %i.k = add i16 %.neg.i, %i.j
  %i.l = lshr i16 %i.k, 3                         ; 4 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %je_tcache_bin_flush_stashed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %.val22 to i64
  %i.o = trunc i64 %i.n to i16
  %i.p = sub i16 %.val19.i, %i.o
  %i.q = zext nneg i16 %i.l to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i16 %i.l, ptr %4, align 8, !tbaa !43
  %i.r = zext i16 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.val22, i64 %i.r
  %i.t = zext i16 %.val17.i to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !46
  %i.x = zext nneg i16 %i.l to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.b
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  tail call void @je_san_check_stashed_ptrs(ptr noundef %i.v, i64 noundef %i.x, i64 noundef %i.z) #13
  %i.aa = load ptr, ptr %2, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  call void @je_arena_ptr_array_flush(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %i.q, i1 noundef zeroext %i.f, ptr noundef %i.ac, i64 %i.ae) #13
  %.val.i.i20.i = load i16, ptr %i.e, align 2, !tbaa !38 ; 2 uses
  %.val3.i.i21.i = load ptr, ptr %i.c, align 8, !tbaa !44 ; 3 uses
  %.val4.i.i22.i = load i16, ptr %i.g, align 4, !tbaa !45 ; 2 uses
  %i.af = ptrtoint ptr %.val3.i.i21.i to i64
  %i.ag = trunc i64 %i.af to i16
  %i.ah = sub i16 %.val4.i.i22.i, %i.ag
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.val3.i.i21.i, i64 %i.ai
  %i.ak = zext i16 %.val.i.i20.i to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = trunc i64 %i.an to i16
  store i16 %i.ao, ptr %i.i, align 2, !tbaa !50
  store i64 0, ptr %i.ad, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %je_tcache_bin_flush_stashed.exit

je_tcache_bin_flush_stashed.exit:                 ; preds = %bb.b, %bb.c
  %.val.i = phi i16 [ %.val17.i, %bb.b ], [ %.val.i.i20.i, %bb.c ] ; 2 uses
  %.val58.i = phi ptr [ %.val22, %bb.b ], [ %.val3.i.i21.i, %bb.c ] ; 2 uses
  %.val59.i = phi i16 [ %.val19.i, %bb.b ], [ %.val4.i.i22.i, %bb.c ] ; 4 uses
  br i1 %i.f, label %bb.d, label %bb.af

bb.d:                                             ; preds = %je_tcache_bin_flush_stashed.exit
  %i.ap = ptrtoint ptr %.val58.i to i64
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = sub i16 %.val59.i, %i.aq
  %i.as = lshr i16 %i.ar, 3                       ; 4 uses
  %i.at = getelementptr i8, ptr %i.c, i64 16
  %.val.i.i = load i16, ptr %i.at, align 8, !tbaa !49
  %i.au = sub i16 %.val59.i, %.val.i.i            ; 2 uses
  %i.av = lshr i16 %i.au, 3                       ; 2 uses
  %.not.i = icmp eq i16 %i.av, 0
  br i1 %.not.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.b ; 4 uses
  %cond.i.i = icmp eq i16 %.val.i, 0
  br i1 %cond.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !40  ; 2 uses
  %i.az = icmp ugt i8 %i.ay, 1
  br i1 %i.az, label %bb.g, label %tcache_nfill_small_gc_update.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ba = add i8 %i.ay, -1
  br label %.sink.split.i.i

bb.h:                                             ; preds = %bb.e
  %i.bb = zext i16 %.val.i to i32
end_hunk_1
