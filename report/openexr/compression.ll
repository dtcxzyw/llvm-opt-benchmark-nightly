Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 134
begin_hunk_0_@libdeflate_alloc_compressor_ex:bb.a
  store <4 x i32> splat (i32 2), ptr %i.hn, align 8, !tbaa !9
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.hp = getelementptr inbounds nuw i8, ptr %i.n, i64 440
  store <4 x i32> splat (i32 2), ptr %i.ho, align 8, !tbaa !9
  store <4 x i32> splat (i32 2), ptr %i.hp, align 8, !tbaa !9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.n, i64 456
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 472
  store <4 x i32> splat (i32 2), ptr %i.hq, align 8, !tbaa !9
  store <4 x i32> splat (i32 2), ptr %i.hr, align 8, !tbaa !9
  %i.hs = getelementptr inbounds nuw i8, ptr %i.n, i64 488
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 504
  store <4 x i32> splat (i32 2), ptr %i.hs, align 8, !tbaa !9
  store <4 x i32> splat (i32 2), ptr %i.ht, align 8, !tbaa !9
  %i.hu = getelementptr inbounds nuw i8, ptr %i.n, i64 520
  %i.hv = getelementptr inbounds nuw i8, ptr %i.n, i64 536
  store <4 x i32> splat (i32 2), ptr %i.hu, align 8, !tbaa !9
  store <4 x i32> splat (i32 2), ptr %i.hv, align 8, !tbaa !9
  %i.hw = getelementptr inbounds nuw i8, ptr %i.n, i64 552
  %i.hx = getelementptr inbounds nuw i8, ptr %i.n, i64 568
  store <4 x i32> splat (i32 2), ptr %i.hw, align 8, !tbaa !9
  store <4 x i32> splat (i32 2), ptr %i.hx, align 8, !tbaa !9
  %i.hy = getelementptr inbounds nuw i8, ptr %i.n, i64 584
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 600
  store <4 x i32> splat (i32 2), ptr %i.hy, align 8, !tbaa !9
  store <4 x i32> splat (i32 2), ptr %i.hz, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw i8, ptr %i.n, i64 616
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  store <4 x i32> splat (i32 1), ptr %i.ia, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.ib, align 8, !tbaa !9
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  %i.id = getelementptr inbounds nuw i8, ptr %i.n, i64 664
  store <4 x i32> splat (i32 1), ptr %i.ic, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.id, align 8, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.n, i64 680
  %i.if = getelementptr inbounds nuw i8, ptr %i.n, i64 696
  store <4 x i32> splat (i32 1), ptr %i.ie, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.if, align 8, !tbaa !9
  %i.ig = getelementptr inbounds nuw i8, ptr %i.n, i64 712
  %i.ih = getelementptr inbounds nuw i8, ptr %i.n, i64 728
  store <4 x i32> splat (i32 1), ptr %i.ig, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.ih, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw i8, ptr %i.n, i64 744
  %i.ij = getelementptr inbounds nuw i8, ptr %i.n, i64 760
  store <4 x i32> splat (i32 1), ptr %i.ii, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.ij, align 8, !tbaa !9
  %i.ik = getelementptr inbounds nuw i8, ptr %i.n, i64 776
  %i.il = getelementptr inbounds nuw i8, ptr %i.n, i64 792
  store <4 x i32> splat (i32 1), ptr %i.ik, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.il, align 8, !tbaa !9
  %i.im = getelementptr inbounds nuw i8, ptr %i.n, i64 808
  %i.in = getelementptr inbounds nuw i8, ptr %i.n, i64 824
  store <4 x i32> splat (i32 1), ptr %i.im, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.in, align 8, !tbaa !9
  %i.io = getelementptr inbounds nuw i8, ptr %i.n, i64 840
  %i.ip = getelementptr inbounds nuw i8, ptr %i.n, i64 856
  store <4 x i32> splat (i32 1), ptr %i.io, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.ip, align 8, !tbaa !9
  %i.iq = getelementptr inbounds nuw i8, ptr %i.n, i64 872
  %i.ir = getelementptr inbounds nuw i8, ptr %i.n, i64 888
  store <4 x i32> splat (i32 1), ptr %i.iq, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.ir, align 8, !tbaa !9
  %i.is = getelementptr inbounds nuw i8, ptr %i.n, i64 904
  %i.it = getelementptr inbounds nuw i8, ptr %i.n, i64 920
  store <4 x i32> splat (i32 1), ptr %i.is, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.it, align 8, !tbaa !9
  %i.iu = getelementptr inbounds nuw i8, ptr %i.n, i64 936
  %i.iv = getelementptr inbounds nuw i8, ptr %i.n, i64 952
  store <4 x i32> splat (i32 1), ptr %i.iu, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.iv, align 8, !tbaa !9
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 968
  %i.ix = getelementptr inbounds nuw i8, ptr %i.n, i64 984
  store <4 x i32> splat (i32 1), ptr %i.iw, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.ix, align 8, !tbaa !9
  %i.iy = getelementptr inbounds nuw i8, ptr %i.n, i64 1000
  %i.iz = getelementptr inbounds nuw i8, ptr %i.n, i64 1016
  store <4 x i32> splat (i32 1), ptr %i.iy, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.iz, align 8, !tbaa !9
  %i.ja = getelementptr inbounds nuw i8, ptr %i.n, i64 1032
  %i.jb = getelementptr inbounds nuw i8, ptr %i.n, i64 1048
  store <4 x i32> splat (i32 1), ptr %i.ja, align 8, !tbaa !9
  store <4 x i32> splat (i32 1), ptr %i.jb, align 8, !tbaa !9
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 1064
  store <4 x i32> splat (i32 4), ptr %i.jc, align 8, !tbaa !9
  %i.jd = getelementptr inbounds nuw i8, ptr %i.n, i64 1080
  store <4 x i32> splat (i32 4), ptr %i.jd, align 8, !tbaa !9
  %i.je = getelementptr inbounds nuw i8, ptr %i.n, i64 1096
  store <4 x i32> splat (i32 4), ptr %i.je, align 8, !tbaa !9
  %i.jf = getelementptr inbounds nuw i8, ptr %i.n, i64 1112
  store <4 x i32> splat (i32 4), ptr %i.jf, align 8, !tbaa !9
  %i.jg = getelementptr inbounds nuw i8, ptr %i.n, i64 1128
  store <4 x i32> splat (i32 4), ptr %i.jg, align 8, !tbaa !9
  %i.jh = getelementptr inbounds nuw i8, ptr %i.n, i64 1144
  store <4 x i32> splat (i32 4), ptr %i.jh, align 8, !tbaa !9
  %i.ji = getelementptr inbounds nuw i8, ptr %i.n, i64 1160
  store <4 x i32> splat (i32 2), ptr %i.ji, align 8, !tbaa !9
  %i.jj = getelementptr inbounds nuw i8, ptr %i.n, i64 1176
  store <4 x i32> splat (i32 2), ptr %i.jj, align 8, !tbaa !9
  %i.jk = getelementptr inbounds nuw i8, ptr %i.n, i64 1192 ; 2 uses
  store <4 x i32> splat (i32 1), ptr %i.jk, align 8, !tbaa !9
  %i.jl = getelementptr inbounds nuw i8, ptr %i.n, i64 1208
  store <4 x i32> splat (i32 1), ptr %i.jl, align 8, !tbaa !9
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 1224
  store <4 x i32> splat (i32 1), ptr %i.jm, align 8, !tbaa !9
  %i.jn = getelementptr inbounds nuw i8, ptr %i.n, i64 1240
  store <4 x i32> splat (i32 1), ptr %i.jn, align 8, !tbaa !9
  %i.jo = getelementptr inbounds nuw i8, ptr %i.n, i64 1256
  store <4 x i32> splat (i32 1), ptr %i.jo, align 8, !tbaa !9
  %i.jp = getelementptr inbounds nuw i8, ptr %i.n, i64 1272
  store <4 x i32> splat (i32 1), ptr %i.jp, align 8, !tbaa !9
  %i.jq = getelementptr inbounds nuw i8, ptr %i.n, i64 1288
  store <4 x i32> splat (i32 1), ptr %i.jq, align 8, !tbaa !9
  %i.jr = getelementptr inbounds nuw i8, ptr %i.n, i64 1304
  store <4 x i32> splat (i32 1), ptr %i.jr, align 8, !tbaa !9
  %i.js = getelementptr inbounds nuw i8, ptr %i.n, i64 3008
  %i.jt = getelementptr inbounds nuw i8, ptr %i.n, i64 4288
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.gq, ptr noundef nonnull %i.jt, ptr noundef nonnull %i.js)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.n, i64 4576
  %i.jv = getelementptr inbounds nuw i8, ptr %i.n, i64 4160
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.jk, ptr noundef nonnull %i.ju, ptr noundef nonnull %i.jv)
  br label %libdeflate_aligned_malloc.exit.thread

libdeflate_aligned_malloc.exit.thread:            ; preds = %bb.e, %libdeflate_aligned_malloc.exit, %bb.a, %deflate_init_offset_slot_full.exit
  %.076 = phi ptr [ null, %libdeflate_aligned_malloc.exit ], [ null, %bb.a ], [ %i.n, %deflate_init_offset_slot_full.exit ], [ null, %bb.e ]
  ret ptr %.076
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_fastest(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i = phi i64 [ 131072, %bb.a ], [ %i.t, %bb.b ]
  %.0.i75 = phi ptr [ %i.c, %bb.a ], [ %i.s, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i75, align 16, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i75, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.d, align 16, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i75, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i75, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i75, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i75, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i75, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i75, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i75, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i75, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i75, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i75, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i75, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i75, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i75, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i75, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i75, i64 256
  %i.t = add nsw i64 %.011.i, -256                ; 2 uses
  %.not.i76.3 = icmp eq i64 %i.t, 0
  br i1 %.not.i76.3, label %matchfinder_init_sse2.exit.preheader, label %bb.b, !llvm.loop !49

matchfinder_init_sse2.exit.preheader:             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.b, i32 258)
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %.ptr192 = getelementptr inbounds nuw i8, ptr %0, i64 137152 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %matchfinder_init_sse2.exit

matchfinder_init_sse2.exit:                       ; preds = %matchfinder_init_sse2.exit.preheader, %bb.ar
  %.0166 = phi ptr [ %.2168182, %bb.ar ], [ %1, %matchfinder_init_sse2.exit.preheader ]
  %.0162 = phi i32 [ %.2164184, %bb.ar ], [ 0, %matchfinder_init_sse2.exit.preheader ]
  %.060 = phi ptr [ %.464187, %bb.ar ], [ %1, %matchfinder_init_sse2.exit.preheader ] ; 4 uses
  %.056 = phi i32 [ %.4189, %bb.ar ], [ 258, %matchfinder_init_sse2.exit.preheader ]
  %.055 = phi i32 [ %.3191, %bb.ar ], [ %., %matchfinder_init_sse2.exit.preheader ]
  %i.ae = ptrtoint ptr %.060 to i64               ; 2 uses
  %i.af = sub i64 %i.v, %i.ae
  %i.ag = icmp ult i64 %i.af, 70535
  %i.ah = getelementptr inbounds nuw i8, ptr %.060, i64 65535
  %.0.i = select i1 %i.ag, ptr %i.u, ptr %i.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.w, i8 0, i64 1280, i1 false)
  store i32 0, ptr %.ptr192, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.aq, %matchfinder_init_sse2.exit
  %.1167 = phi ptr [ %.0166, %matchfinder_init_sse2.exit ], [ %.2168.ph, %bb.aq ] ; 5 uses
  %.1163 = phi i32 [ %.0162, %matchfinder_init_sse2.exit ], [ %.2164.ph, %bb.aq ] ; 3 uses
  %.0160.idx = phi i64 [ 137152, %matchfinder_init_sse2.exit ], [ %.1161.ph.idx, %bb.aq ] ; 3 uses
  %.161 = phi ptr [ %.060, %matchfinder_init_sse2.exit ], [ %.464.ph, %bb.aq ] ; 28 uses
  %.157 = phi i32 [ %.056, %matchfinder_init_sse2.exit ], [ %.359, %bb.aq ]
  %.1 = phi i32 [ %.055, %matchfinder_init_sse2.exit ], [ %.2, %bb.aq ] ; 4 uses
  %.0160.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0160.idx ; 12 uses
  %i.ai = ptrtoint ptr %.161 to i64               ; 3 uses
  %i.aj = sub i64 %i.v, %i.ai                     ; 4 uses
  %i.ak = icmp ult i64 %i.aj, 258
  br i1 %i.ak, label %bb.d, label %bb.f, !prof !53

bb.d:                                             ; preds = %bb.c
  %i.al = trunc nuw i64 %i.aj to i32              ; 5 uses
  %i.am = icmp samesign ult i64 %i.aj, 5
  br i1 %i.am, label %.preheader199.preheader, label %bb.e

.preheader199.preheader:                          ; preds = %bb.d
  %xtraiter306 = and i32 %i.al, 1
  %lcmp.mod307.not = icmp eq i32 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.preheader199.prol.loopexit, label %.preheader199.prol

.preheader199.prol:                               ; preds = %.preheader199.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.161, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.161, align 1, !tbaa !31
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !9
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !9
  %i.at = load i32, ptr %.0160.ptr, align 4, !tbaa !50
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %.0160.ptr, align 4, !tbaa !50
  %i.av = add nsw i32 %i.al, -1
  br label %.preheader199.prol.loopexit

.preheader199.prol.loopexit:                      ; preds = %.preheader199.prol, %.preheader199.preheader
  %.lcssa305.unr = phi ptr [ poison, %.preheader199.preheader ], [ %i.an, %.preheader199.prol ]
  %.262.unr = phi ptr [ %.161, %.preheader199.preheader ], [ %i.an, %.preheader199.prol ]
  %.258.unr = phi i32 [ %i.al, %.preheader199.preheader ], [ %i.av, %.preheader199.prol ]
  %i.aw = icmp eq i64 %i.aj, 1
  br i1 %i.aw, label %.loopexit200, label %.preheader199

.preheader199:                                    ; preds = %.preheader199.prol.loopexit, %.preheader199
  %.262 = phi ptr [ %i.bf, %.preheader199 ], [ %.262.unr, %.preheader199.prol.loopexit ] ; 3 uses
  %.258 = phi i32 [ %i.bn, %.preheader199 ], [ %.258.unr, %.preheader199.prol.loopexit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.262, i64 1
  %i.ay = load i8, ptr %.262, align 1, !tbaa !31
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !9
  %i.bd = load i32, ptr %.0160.ptr, align 4, !tbaa !50
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %.0160.ptr, align 4, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %.262, i64 2 ; 2 uses
  %i.bg = load i8, ptr %i.ax, align 1, !tbaa !31
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !9
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !9
  %i.bl = load i32, ptr %.0160.ptr, align 4, !tbaa !50
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %.0160.ptr, align 4, !tbaa !50
  %i.bn = add i32 %.258, -2                       ; 2 uses
  %.not71.1 = icmp eq i32 %i.bn, 0
  br i1 %.not71.1, label %.loopexit200, label %.preheader199, !llvm.loop !54

bb.e:                                             ; preds = %bb.d
  %i.bo = tail call i32 @llvm.umin.i32(i32 %.1, i32 %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.359 = phi i32 [ %i.al, %bb.e ], [ %.157, %bb.c ] ; 16 uses
  %.2 = phi i32 [ %i.bo, %bb.e ], [ %.1, %bb.c ]  ; 3 uses
  %i.bp = ptrtoint ptr %.1167 to i64
  %i.bq = sub i64 %i.ai, %i.bp                    ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i64 %i.bq, 4294967295
  %i.bt = icmp eq i64 %i.bs, 32768
  br i1 %i.bt, label %.preheader198, label %bb.g

.preheader198:                                    ; preds = %bb.f, %.preheader198
  %.015.i = phi i64 [ %i.cs, %.preheader198 ], [ 131072, %bb.f ]
  %.0.i113 = phi ptr [ %i.cr, %.preheader198 ], [ %i.c, %bb.f ] ; 10 uses
  %i.bu = load <8 x i16>, ptr %.0.i113, align 16, !tbaa !31
  %i.bv = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bu, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.bv, ptr %.0.i113, align 16, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i113, i64 16 ; 2 uses
  %i.bx = load <8 x i16>, ptr %i.bw, align 16, !tbaa !31
  %i.by = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bx, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.by, ptr %i.bw, align 16, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i113, i64 32 ; 2 uses
  %i.ca = load <8 x i16>, ptr %i.bz, align 16, !tbaa !31
  %i.cb = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cb, ptr %i.bz, align 16, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i113, i64 48 ; 2 uses
  %i.cd = load <8 x i16>, ptr %i.cc, align 16, !tbaa !31
  %i.ce = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cd, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ce, ptr %i.cc, align 16, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i113, i64 64 ; 2 uses
  %i.cg = load <8 x i16>, ptr %i.cf, align 16, !tbaa !31
  %i.ch = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cg, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ch, ptr %i.cf, align 16, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i113, i64 80 ; 2 uses
  %i.cj = load <8 x i16>, ptr %i.ci, align 16, !tbaa !31
  %i.ck = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cj, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ck, ptr %i.ci, align 16, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i113, i64 96 ; 2 uses
  %i.cm = load <8 x i16>, ptr %i.cl, align 16, !tbaa !31
  %i.cn = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cn, ptr %i.cl, align 16, !tbaa !31
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i113, i64 112 ; 2 uses
  %i.cp = load <8 x i16>, ptr %i.co, align 16, !tbaa !31
  %i.cq = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cp, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cq, ptr %i.co, align 16, !tbaa !31
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i113, i64 128
  %i.cs = add nsw i64 %.015.i, -128               ; 2 uses
  %.not.i114.1 = icmp eq i64 %i.cs, 0
  br i1 %.not.i114.1, label %matchfinder_rebase_sse2.exit, label %.preheader198, !llvm.loop !55

matchfinder_rebase_sse2.exit:                     ; preds = %.preheader198
  %i.ct = getelementptr inbounds nuw i8, ptr %.1167, i64 32768
  br label %bb.g

bb.g:                                             ; preds = %matchfinder_rebase_sse2.exit, %bb.f
  %.3169 = phi ptr [ %i.ct, %matchfinder_rebase_sse2.exit ], [ %.1167, %bb.f ] ; 8 uses
  %.0.i73 = phi i32 [ 0, %matchfinder_rebase_sse2.exit ], [ %i.br, %bb.f ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.161, i64 1 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.cu, align 1
  %i.cv = mul i32 %.0.copyload.i, 506832829
  %i.cw = lshr i32 %i.cv, 17                      ; 5 uses
  %.0.copyload.i83 = load i32, ptr %.161, align 1 ; 3 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cx
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cy, i32 1, i32 3, i32 1)
  %i.cz = zext nneg i32 %.1163 to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cz ; 3 uses
  %i.db = load i16, ptr %i.da, align 4, !tbaa !56 ; 3 uses
  %i.dc = trunc i32 %.0.i73 to i16
  store i16 %i.dc, ptr %i.da, align 4, !tbaa !56
  %i.dd = sext i16 %i.db to i32
  %i.de = shl i32 %.0.i73, 16
  %sext.i = ashr exact i32 %i.de, 16
  %i.df = xor i32 %sext.i, -32768                 ; 3 uses
  %.not.i = icmp slt i32 %i.df, %i.dd
  br i1 %.not.i, label %bb.h, label %ht_matchfinder_longest_match.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.dg = sext i16 %i.db to i64
  %i.dh = getelementptr inbounds i8, ptr %.3169, i64 %i.dg ; 11 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 2 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !56 ; 4 uses
  store i16 %i.db, ptr %i.di, align 2, !tbaa !56
  %.0.copyload.i82 = load i32, ptr %i.dh, align 1
  %i.dk = icmp eq i32 %.0.copyload.i82, %.0.copyload.i83
  br i1 %i.dk, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.dl = add nsw i32 %.359, -36
  %i.dm = icmp ult i32 %i.dl, -32                 ; 2 uses
  br i1 %i.dm, label %bb.j, label %.preheader290, !prof !57

bb.j:                                             ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.0.copyload.i136 = load i64, ptr %i.dn, align 1 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.161, i64 4
  %.0.copyload.i135 = load i64, ptr %i.do, align 1 ; 2 uses
  %i.dp = xor i64 %.0.copyload.i135, %.0.copyload.i136
  %.not.i95 = icmp eq i64 %.0.copyload.i136, %.0.copyload.i135
  br i1 %.not.i95, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %.0.copyload.i134 = load i64, ptr %i.dq, align 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.161, i64 12
  %.0.copyload.i133 = load i64, ptr %i.dr, align 1 ; 2 uses
  %i.ds = xor i64 %.0.copyload.i133, %.0.copyload.i134
  %.not54.i96 = icmp eq i64 %.0.copyload.i134, %.0.copyload.i133
  br i1 %.not54.i96, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  %.0.copyload.i132 = load i64, ptr %i.dt, align 1 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.161, i64 20
  %.0.copyload.i131 = load i64, ptr %i.du, align 1 ; 2 uses
  %i.dv = xor i64 %.0.copyload.i131, %.0.copyload.i132
  %.not55.i97 = icmp eq i64 %.0.copyload.i132, %.0.copyload.i131
  br i1 %.not55.i97, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %.0.copyload.i130 = load i64, ptr %i.dw, align 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.161, i64 28
  %.0.copyload.i129 = load i64, ptr %i.dx, align 1 ; 2 uses
end_hunk_0
begin_hunk_1_@deflate_compress_near_optimal:bb.a
  %.4.ptr.le371 = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx
  br label %vector.ph

bb.bn:                                            ; preds = %.loopexit304
  %i.xa = load i32, ptr %i.af, align 4, !tbaa !73
  %i.xb = icmp ugt i32 %i.xa, 511
  br i1 %i.xb, label %bb.bo, label %deflate_near_optimal_merge_stats.exit.backedge

deflate_near_optimal_merge_stats.exit.backedge:   ; preds = %bb.bn, %bb.bo
  br label %deflate_near_optimal_merge_stats.exit

bb.bo:                                            ; preds = %bb.bn
  %i.xc = ptrtoint ptr %.3 to i64                 ; 2 uses
  %i.xd = sub i64 %i.xc, %i.dq                    ; 2 uses
  %i.xe = icmp sgt i64 %i.xd, 4999
  %i.xf = sub i64 %i.x, %i.xc
  %i.xg = icmp sgt i64 %i.xf, 4999
  %or.cond292 = select i1 %i.xe, i1 %i.xg, i1 false
  br i1 %or.cond292, label %bb.bp, label %deflate_near_optimal_merge_stats.exit.backedge

bb.bp:                                            ; preds = %bb.bo
  %i.xh = trunc i64 %i.xd to i32
  %i.xi = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.aa, i32 noundef %i.xh)
  br i1 %i.xi, label %bb.bq, label %vector.ph467

vector.ph467:                                     ; preds = %bb.bp
  %i.xj = load <4 x i32>, ptr %i.aa, align 4, !tbaa !9
  %i.xk = load <4 x i32>, ptr %i.ag, align 4, !tbaa !9
  %i.xl = add <4 x i32> %i.xk, %i.xj
  store <4 x i32> %i.xl, ptr %i.ag, align 4, !tbaa !9
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !9
  %i.xm = load <4 x i32>, ptr %i.ah, align 4, !tbaa !9
  %i.xn = load <4 x i32>, ptr %i.ai, align 4, !tbaa !9
  %i.xo = add <4 x i32> %i.xn, %i.xm
  store <4 x i32> %i.xo, ptr %i.ai, align 4, !tbaa !9
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !9
  %i.xp = load <2 x i32>, ptr %i.aj, align 4, !tbaa !9
  store i32 0, ptr %i.aj, align 4, !tbaa !9
  %i.xq = load <2 x i32>, ptr %i.ak, align 4, !tbaa !9
  %i.xr = add <2 x i32> %i.xq, %i.xp
  store <2 x i32> %i.xr, ptr %i.ak, align 4, !tbaa !9
  store i32 0, ptr %i.al, align 4, !tbaa !9
  %i.xs = load i32, ptr %i.af, align 4, !tbaa !73
  %i.xt = load i32, ptr %i.am, align 4, !tbaa !95
  %i.xu = add i32 %i.xt, %i.xs
  store i32 %i.xu, ptr %i.am, align 4, !tbaa !95
  store i32 0, ptr %i.af, align 4, !tbaa !73
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph467
  %index469 = phi i64 [ 0, %vector.ph467 ], [ %index.next474.1, %vector.body468 ] ; 4 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index469 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 2 uses
  %wide.load470 = load <4 x i32>, ptr %i.xv, align 4, !tbaa !31
  %wide.load471 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !31
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index469 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 16 ; 2 uses
  %wide.load472 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !31
  %wide.load473 = load <4 x i32>, ptr %i.xy, align 4, !tbaa !31
  %i.xz = add <4 x i32> %wide.load472, %wide.load470
  %i.ya = add <4 x i32> %wide.load473, %wide.load471
  store <4 x i32> %i.xz, ptr %i.xx, align 4, !tbaa !31
  store <4 x i32> %i.ya, ptr %i.xy, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.xv, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.xw, align 4, !tbaa !31
  %index.next474 = or disjoint i64 %index469, 8   ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next474 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 16 ; 2 uses
  %wide.load470.1 = load <4 x i32>, ptr %i.yb, align 4, !tbaa !31
  %wide.load471.1 = load <4 x i32>, ptr %i.yc, align 4, !tbaa !31
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next474 ; 3 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16 ; 2 uses
  %wide.load472.1 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !31
  %wide.load473.1 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !31
  %i.yf = add <4 x i32> %wide.load472.1, %wide.load470.1
  %i.yg = add <4 x i32> %wide.load473.1, %wide.load471.1
  store <4 x i32> %i.yf, ptr %i.yd, align 4, !tbaa !31
  store <4 x i32> %i.yg, ptr %i.ye, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.yb, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.yc, align 4, !tbaa !31
  %index.next474.1 = add nuw nsw i64 %index469, 16 ; 2 uses
  %i.yh = icmp eq i64 %index.next474.1, 256
  br i1 %i.yh, label %scalar.ph466, label %vector.body468, !llvm.loop !96

scalar.ph466:                                     ; preds = %vector.body468
  %i.yi = load i32, ptr %i.de, align 4, !tbaa !31
  %i.yj = load i32, ptr %i.df, align 4, !tbaa !31
  %i.yk = add i32 %i.yj, %i.yi
  store i32 %i.yk, ptr %i.df, align 4, !tbaa !31
  store i32 0, ptr %i.de, align 4, !tbaa !31
  %i.yl = load i32, ptr %i.dg, align 4, !tbaa !31
  %i.ym = load i32, ptr %i.dh, align 4, !tbaa !31
  %i.yn = add i32 %i.ym, %i.yl
  store i32 %i.yn, ptr %i.dh, align 4, !tbaa !31
  store i32 0, ptr %i.dg, align 4, !tbaa !31
  %i.yo = load i32, ptr %i.di, align 4, !tbaa !31
  %i.yp = load i32, ptr %i.dj, align 4, !tbaa !31
  %i.yq = add i32 %i.yp, %i.yo
  store i32 %i.yq, ptr %i.dj, align 4, !tbaa !31
  store i32 0, ptr %i.di, align 4, !tbaa !31
  br label %deflate_near_optimal_merge_stats.exit.outer

bb.bq:                                            ; preds = %bb.bp
  %.4.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.4.idx ; 4 uses
  %.not420 = icmp eq ptr %.0163.ph, null
  br i1 %.not420, label %vector.ph, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.3.lcssa537.lcssa538 = ptrtoaddr ptr %.3 to i64
  %.0163.ph.lcssa534535 = ptrtoaddr ptr %.0163.ph to i64
  %i.yr = ptrtoint ptr %.0163.ph to i64           ; 2 uses
  %i.ys = ptrtoint ptr %.3 to i64
  %i.yt = sub i64 %i.ys, %i.yr
  %i.yu = trunc i64 %i.yt to i32                  ; 3 uses
  %i.yv = trunc i64 %.0163.ph.lcssa534535 to i32
  %i.yw = trunc i64 %.3.lcssa537.lcssa538 to i32
  %xtraiter539 = and i32 %i.yu, 7                 ; 2 uses
  %lcmp.mod540.not = icmp eq i32 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.br, %.prol.preheader
  %.5.prol = phi ptr [ %i.zb, %.prol.preheader ], [ %.4.ptr.le, %bb.br ]
  %.0154.prol = phi i32 [ %i.zc, %.prol.preheader ], [ %i.yu, %bb.br ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.br ]
  %i.yx = getelementptr inbounds i8, ptr %.5.prol, i64 -4 ; 2 uses
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !91
  %i.yz = zext i16 %i.yy to i64
  %i.za = sub nsw i64 0, %i.yz
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.yx, i64 %i.za ; 3 uses
  %i.zc = add i32 %.0154.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter539
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !97

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.br
  %.lcssa531.unr = phi ptr [ poison, %bb.br ], [ %i.zb, %.prol.preheader ]
  %.5.unr = phi ptr [ %.4.ptr.le, %bb.br ], [ %i.zb, %.prol.preheader ]
  %.0154.unr = phi i32 [ %i.yu, %bb.br ], [ %i.zc, %.prol.preheader ]
  %i.zd = sub i32 %i.yv, %i.yw
  %i.ze = icmp ugt i32 %i.zd, -8
  br i1 %i.ze, label %.unr-lcssa, label %.new533

.new533:                                          ; preds = %.prol.loopexit, %.new533
  %.5 = phi ptr [ %i.aas, %.new533 ], [ %.5.unr, %.prol.loopexit ]
  %.0154 = phi i32 [ %i.aat, %.new533 ], [ %.0154.unr, %.prol.loopexit ]
  %i.zf = getelementptr inbounds i8, ptr %.5, i64 -4 ; 2 uses
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !91
  %i.zh = zext i16 %i.zg to i64
  %i.zi = sub nsw i64 0, %i.zh
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.zi
  %i.zk = getelementptr inbounds i8, ptr %i.zj, i64 -4 ; 2 uses
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !91
  %i.zm = zext i16 %i.zl to i64
  %i.zn = sub nsw i64 0, %i.zm
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.zn
  %i.zp = getelementptr inbounds i8, ptr %i.zo, i64 -4 ; 2 uses
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !91
  %i.zr = zext i16 %i.zq to i64
  %i.zs = sub nsw i64 0, %i.zr
  %i.zt = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.zs
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 -4 ; 2 uses
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !91
  %i.zw = zext i16 %i.zv to i64
  %i.zx = sub nsw i64 0, %i.zw
  %i.zy = getelementptr inbounds [4 x i8], ptr %i.zu, i64 %i.zx
  %i.zz = getelementptr inbounds i8, ptr %i.zy, i64 -4 ; 2 uses
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !91
  %i.aab = zext i16 %i.aaa to i64
  %i.aac = sub nsw i64 0, %i.aab
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.zz, i64 %i.aac
  %i.aae = getelementptr inbounds i8, ptr %i.aad, i64 -4 ; 2 uses
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !91
  %i.aag = zext i16 %i.aaf to i64
  %i.aah = sub nsw i64 0, %i.aag
  %i.aai = getelementptr inbounds [4 x i8], ptr %i.aae, i64 %i.aah
  %i.aaj = getelementptr inbounds i8, ptr %i.aai, i64 -4 ; 2 uses
  %i.aak = load i16, ptr %i.aaj, align 2, !tbaa !91
  %i.aal = zext i16 %i.aak to i64
  %i.aam = sub nsw i64 0, %i.aal
  %i.aan = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.aam
  %i.aao = getelementptr inbounds i8, ptr %i.aan, i64 -4 ; 2 uses
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !91
  %i.aaq = zext i16 %i.aap to i64
  %i.aar = sub nsw i64 0, %i.aaq
  %i.aas = getelementptr inbounds [4 x i8], ptr %i.aao, i64 %i.aar ; 2 uses
  %i.aat = add i32 %.0154, -8                     ; 2 uses
  %.not192.7 = icmp eq i32 %i.aat, 0
  br i1 %.not192.7, label %.unr-lcssa, label %.new533, !llvm.loop !98

.unr-lcssa:                                       ; preds = %.new533, %.prol.loopexit
  %.lcssa531 = phi ptr [ %.lcssa531.unr, %.prol.loopexit ], [ %i.aas, %.new533 ] ; 3 uses
  %i.aau = sub i64 %i.yr, %i.dq
  %i.aav = trunc i64 %i.aau to i32
  %i.aaw = icmp eq ptr %.0152, %1
  %i.aax = ptrtoint ptr %.4.ptr.le to i64
  %i.aay = ptrtoint ptr %.lcssa531 to i64
  %i.aaz = sub i64 %i.aax, %i.aay                 ; 2 uses
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0152, i32 noundef %i.aav, ptr noundef nonnull %.lcssa531, i1 noundef zeroext %i.aaw, i1 noundef zeroext false, ptr noundef %i.b)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 32 %.ptr296, ptr nonnull align 2 %.lcssa531, i64 %i.aaz, i1 false)
  %.add = add nuw nsw i64 %i.aaz, 530368
  %i.aba = load <4 x i32>, ptr %i.ag, align 16, !tbaa !9
  store <4 x i32> %i.aba, ptr %i.ao, align 32, !tbaa !31
  %i.abb = load <4 x i32>, ptr %i.ai, align 32, !tbaa !9
  store <4 x i32> %i.abb, ptr %i.ap, align 16, !tbaa !31
  %i.abc = load <2 x i32>, ptr %i.ak, align 16, !tbaa !9
  store <2 x i32> %i.abc, ptr %i.aq, align 32, !tbaa !31
  %i.abd = load i32, ptr %i.am, align 4, !tbaa !99
  store i32 %i.abd, ptr %i.ar, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.ag, i8 0, i64 40, i1 false), !tbaa !9
  store i32 0, ptr %i.am, align 4, !tbaa !99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.an, i8 0, i64 1036, i1 false)
  br label %bb.bs

vector.ph:                                        ; preds = %.thread, %bb.bq
  %.4.ptr.le373 = phi ptr [ %.4.ptr.le371, %.thread ], [ %.4.ptr.le, %bb.bq ]
  %i.abe = load <4 x i32>, ptr %i.aa, align 4, !tbaa !9
  %i.abf = load <4 x i32>, ptr %i.ag, align 4, !tbaa !9
  %i.abg = add <4 x i32> %i.abf, %i.abe
  store <4 x i32> %i.abg, ptr %i.ag, align 4, !tbaa !9
  store <4 x i32> zeroinitializer, ptr %i.aa, align 4, !tbaa !9
  %i.abh = load <4 x i32>, ptr %i.ah, align 4, !tbaa !9
  %i.abi = load <4 x i32>, ptr %i.ai, align 4, !tbaa !9
  %i.abj = add <4 x i32> %i.abi, %i.abh
  store <4 x i32> %i.abj, ptr %i.ai, align 4, !tbaa !9
  store <4 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !9
  %i.abk = load <2 x i32>, ptr %i.aj, align 4, !tbaa !9
  store i32 0, ptr %i.aj, align 4, !tbaa !9
  %i.abl = load <2 x i32>, ptr %i.ak, align 4, !tbaa !9
  %i.abm = add <2 x i32> %i.abl, %i.abk
  store <2 x i32> %i.abm, ptr %i.ak, align 4, !tbaa !9
  store i32 0, ptr %i.al, align 4, !tbaa !9
  %i.abn = load i32, ptr %i.af, align 4, !tbaa !73
  %i.abo = load i32, ptr %i.am, align 4, !tbaa !95
  %i.abp = add i32 %i.abo, %i.abn
  store i32 %i.abp, ptr %i.am, align 4, !tbaa !95
  store i32 0, ptr %i.af, align 4, !tbaa !73
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.abq, align 4, !tbaa !31
  %wide.load463 = load <4 x i32>, ptr %i.abr, align 4, !tbaa !31
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16 ; 2 uses
  %wide.load464 = load <4 x i32>, ptr %i.abs, align 4, !tbaa !31
  %wide.load465 = load <4 x i32>, ptr %i.abt, align 4, !tbaa !31
  %i.abu = add <4 x i32> %wide.load464, %wide.load
  %i.abv = add <4 x i32> %wide.load465, %wide.load463
  store <4 x i32> %i.abu, ptr %i.abs, align 4, !tbaa !31
  store <4 x i32> %i.abv, ptr %i.abt, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.abq, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.abr, align 4, !tbaa !31
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index.next ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.abw, align 4, !tbaa !31
  %wide.load463.1 = load <4 x i32>, ptr %i.abx, align 4, !tbaa !31
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 16 ; 2 uses
  %wide.load464.1 = load <4 x i32>, ptr %i.aby, align 4, !tbaa !31
  %wide.load465.1 = load <4 x i32>, ptr %i.abz, align 4, !tbaa !31
  %i.aca = add <4 x i32> %wide.load464.1, %wide.load.1
  %i.acb = add <4 x i32> %wide.load465.1, %wide.load463.1
  store <4 x i32> %i.aca, ptr %i.aby, align 4, !tbaa !31
  store <4 x i32> %i.acb, ptr %i.abz, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.abw, align 4, !tbaa !31
  store <4 x i32> zeroinitializer, ptr %i.abx, align 4, !tbaa !31
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.acc = icmp eq i64 %index.next.1, 256
  br i1 %i.acc, label %scalar.ph, label %vector.body, !llvm.loop !100

scalar.ph:                                        ; preds = %vector.body
  %i.acd = load i32, ptr %i.dk, align 4, !tbaa !31
  %i.ace = load i32, ptr %i.dl, align 4, !tbaa !31
  %i.acf = add i32 %i.ace, %i.acd
  store i32 %i.acf, ptr %i.dl, align 4, !tbaa !31
  store i32 0, ptr %i.dk, align 4, !tbaa !31
  %i.acg = load i32, ptr %i.dm, align 4, !tbaa !31
  %i.ach = load i32, ptr %i.dn, align 4, !tbaa !31
  %i.aci = add i32 %i.ach, %i.acg
  store i32 %i.aci, ptr %i.dn, align 4, !tbaa !31
  store i32 0, ptr %i.dm, align 4, !tbaa !31
  %i.acj = load i32, ptr %i.do, align 4, !tbaa !31
  %i.ack = load i32, ptr %i.dp, align 4, !tbaa !31
  %i.acl = add i32 %i.ack, %i.acj
  store i32 %i.acl, ptr %i.dp, align 4, !tbaa !31
  store i32 0, ptr %i.do, align 4, !tbaa !31
  %i.acm = ptrtoint ptr %.3 to i64
  %i.acn = sub i64 %i.acm, %i.dq
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = icmp eq ptr %.0152, %1
  %i.acq = icmp eq ptr %.3, %i.w
  call fastcc void @deflate_optimize_and_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0152, i32 noundef %i.aco, ptr noundef nonnull %.4.ptr.le373, i1 noundef zeroext %i.acp, i1 noundef zeroext %i.acq, ptr noundef %i.b)
  %i.acr = load <4 x i32>, ptr %i.ag, align 4, !tbaa !9
  store <4 x i32> %i.acr, ptr %i.ao, align 4, !tbaa !31
  %i.acs = load <4 x i32>, ptr %i.ai, align 4, !tbaa !9
  store <4 x i32> %i.acs, ptr %i.ap, align 4, !tbaa !31
  %i.act = load <2 x i32>, ptr %i.ak, align 4, !tbaa !9
  store <2 x i32> %i.act, ptr %i.aq, align 4, !tbaa !31
  %i.acu = load i32, ptr %i.am, align 4, !tbaa !99
  store i32 %i.acu, ptr %i.ar, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2072) %i.ab, i8 0, i64 2072, i1 false)
  br label %bb.bs

bb.bs:                                            ; preds = %scalar.ph, %.unr-lcssa
  %.6.idx = phi i64 [ %.add, %.unr-lcssa ], [ 530368, %scalar.ph ]
  %.1153 = phi ptr [ %.0163.ph, %.unr-lcssa ], [ %.3, %scalar.ph ]
  %.not193 = icmp eq ptr %.3, %i.w
  br i1 %.not193, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.acv = load i8, ptr %i.as, align 8, !tbaa !64, !range !68, !noundef !69
  %i.acw = trunc nuw i8 %i.acv to i1
  br i1 %i.acw, label %.critedge, label %bb.c, !llvm.loop !101

.critedge:                                        ; preds = %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @libdeflate_alloc_compressor(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @libdeflate_alloc_compressor_ex(i32 noundef %0, ptr noundef nonnull @libdeflate_alloc_compressor.defaults)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden i64 @libdeflate_deflate_compress(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.deflate_output_bitstream, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.c, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @deflate_compress_none(ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %5, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %3, ptr %i.e, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !64
  %i.i = load ptr, ptr %0, align 32, !tbaa !28
  call void %i.i(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %5) #27
  %i.j = load i8, ptr %i.h, align 8, !tbaa !64, !range !68, !noundef !69
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.d, align 8, !tbaa !103
  %.not14 = icmp eq i32 %i.l, 0
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %5, align 8, !tbaa !102
  %i.n = trunc i64 %i.m to i8
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.e, align 8, !tbaa !104
  store i8 %i.n, ptr %i.o, align 1, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.r, %i.s
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.t, %bb.f ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @deflate_compress_none(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.b, label %.preheader, !prof !53

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %3, 5
  br i1 %i.f, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %2, align 1, !tbaa !31
  store i32 -65536, ptr %i.g, align 1
  br label %.critedge

bb.d:                                             ; preds = %.preheader, %bb.e
  %.040 = phi ptr [ %i.t, %bb.e ], [ %0, %.preheader ] ; 3 uses
  %.039 = phi ptr [ %i.s, %bb.e ], [ %2, %.preheader ] ; 5 uses
  %i.h = ptrtoint ptr %.040 to i64
  %i.i = sub i64 %i.d, %i.h                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 65536                 ; 2 uses
  %spec.select46 = select i1 %i.j, i64 %i.i, i64 65535 ; 5 uses
  %i.k = ptrtoint ptr %.039 to i64
  %i.l = sub i64 %i.e, %i.k
  %i.m = add nsw i64 %spec.select46, 5
  %.not = icmp ult i64 %i.l, %i.m
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = zext i1 %i.j to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.039, i64 1
  store i8 %spec.select, ptr %.039, align 1, !tbaa !31
  %i.o = trunc i64 %spec.select46 to i16          ; 2 uses
  store i16 %i.o, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.039, i64 3
  %i.q = xor i16 %i.o, -1
  store i16 %i.q, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.039, i64 5 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %.040, i64 %spec.select46, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select46 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.040, i64 %spec.select46 ; 2 uses
  %.not45 = icmp eq ptr %i.t, %i.a
  br i1 %.not45, label %bb.f, label %bb.d, !llvm.loop !106

bb.f:                                             ; preds = %bb.e
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %2 to i64
  %i.w = sub i64 %i.u, %i.v
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.f, %bb.c
  %.2 = phi i64 [ 0, %bb.b ], [ 5, %bb.c ], [ %i.w, %bb.f ], [ 0, %bb.d ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define hidden void @libdeflate_free_compressor(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  tail call void %i.b(ptr noundef %i.d) #27, !inline_history !107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @libdeflate_get_compression_level(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !26
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @libdeflate_deflate_compress_bound(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = add i64 %1, 4999                         ; 2 uses
  %.not = icmp ult i64 %i.a, 5000
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i64 %i.a, 5000
  %i.c = mul nuw nsw i64 %i.b, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i64 [ %i.c, %bb.b ], [ 5, %bb.a ]
  %i.e = add i64 %i.d, %1
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define hidden i32 @libdeflate_deflate_decompress_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load volatile ptr, ptr @decompress_impl, align 8, !tbaa !11
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #27
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
end_hunk_1
begin_hunk_2_@deflate_precompute_huffman_header:bb.a
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !31
  %.not39.5 = icmp eq i8 %i.ca, 0
  br i1 %.not39.5, label %bb.al, label %bb.bk

bb.al:                                            ; preds = %bb.ak
  store i32 26, ptr %i.bn, align 16, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3001
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !31
  %.not39.6 = icmp eq i8 %i.cc, 0
  br i1 %.not39.6, label %bb.am, label %bb.bk

bb.am:                                            ; preds = %bb.al
  store i32 25, ptr %i.bn, align 16, !tbaa !31
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 3000
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !31
  %.not39.7 = icmp eq i8 %i.ce, 0
  br i1 %.not39.7, label %bb.an, label %bb.bk

bb.an:                                            ; preds = %bb.am
  store i32 24, ptr %i.bn, align 16, !tbaa !31
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2999
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !31
  %.not39.8 = icmp eq i8 %i.cg, 0
  br i1 %.not39.8, label %bb.ao, label %bb.bk

bb.ao:                                            ; preds = %bb.an
  store i32 23, ptr %i.bn, align 16, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 2998
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !31
  %.not39.9 = icmp eq i8 %i.ci, 0
  br i1 %.not39.9, label %bb.ap, label %bb.bk

bb.ap:                                            ; preds = %bb.ao
  store i32 22, ptr %i.bn, align 16, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2997
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !31
  %.not39.10 = icmp eq i8 %i.ck, 0
  br i1 %.not39.10, label %bb.aq, label %bb.bk

bb.aq:                                            ; preds = %bb.ap
  store i32 21, ptr %i.bn, align 16, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2996
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !31
  %.not39.11 = icmp eq i8 %i.cm, 0
  br i1 %.not39.11, label %bb.ar, label %bb.bk

bb.ar:                                            ; preds = %bb.aq
  store i32 20, ptr %i.bn, align 16, !tbaa !31
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 2995
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !31
  %.not39.12 = icmp eq i8 %i.co, 0
  br i1 %.not39.12, label %bb.as, label %bb.bk

bb.as:                                            ; preds = %bb.ar
  store i32 19, ptr %i.bn, align 16, !tbaa !31
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2994
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !31
  %.not39.13 = icmp eq i8 %i.cq, 0
  br i1 %.not39.13, label %bb.at, label %bb.bk

bb.at:                                            ; preds = %bb.as
  store i32 18, ptr %i.bn, align 16, !tbaa !31
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2993
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !31
  %.not39.14 = icmp eq i8 %i.cs, 0
  br i1 %.not39.14, label %bb.au, label %bb.bk

bb.au:                                            ; preds = %bb.at
  store i32 17, ptr %i.bn, align 16, !tbaa !31
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.cu = load i8, ptr %i.ct, align 16, !tbaa !31
  %.not39.15 = icmp eq i8 %i.cu, 0
  br i1 %.not39.15, label %bb.av, label %bb.bk

bb.av:                                            ; preds = %bb.au
  store i32 16, ptr %i.bn, align 16, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2991
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !31
  %.not39.16 = icmp eq i8 %i.cw, 0
  br i1 %.not39.16, label %bb.aw, label %bb.bk

bb.aw:                                            ; preds = %bb.av
  store i32 15, ptr %i.bn, align 16, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2990
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !31
  %.not39.17 = icmp eq i8 %i.cy, 0
  br i1 %.not39.17, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %bb.aw
  store i32 14, ptr %i.bn, align 16, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2989
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !31
  %.not39.18 = icmp eq i8 %i.da, 0
  br i1 %.not39.18, label %bb.ay, label %bb.bk

bb.ay:                                            ; preds = %bb.ax
  store i32 13, ptr %i.bn, align 16, !tbaa !31
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2988
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !31
  %.not39.19 = icmp eq i8 %i.dc, 0
  br i1 %.not39.19, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  store i32 12, ptr %i.bn, align 16, !tbaa !31
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2987
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !31
  %.not39.20 = icmp eq i8 %i.de, 0
  br i1 %.not39.20, label %bb.ba, label %bb.bk

bb.ba:                                            ; preds = %bb.az
  store i32 11, ptr %i.bn, align 16, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2986
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !31
  %.not39.21 = icmp eq i8 %i.dg, 0
  br i1 %.not39.21, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  store i32 10, ptr %i.bn, align 16, !tbaa !31
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2985
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !31
  %.not39.22 = icmp eq i8 %i.di, 0
  br i1 %.not39.22, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  store i32 9, ptr %i.bn, align 16, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !31
  %.not39.23 = icmp eq i8 %i.dk, 0
  br i1 %.not39.23, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  store i32 8, ptr %i.bn, align 16, !tbaa !31
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2983
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !31
  %.not39.24 = icmp eq i8 %i.dm, 0
  br i1 %.not39.24, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  store i32 7, ptr %i.bn, align 16, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2982
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !31
  %.not39.25 = icmp eq i8 %i.do, 0
  br i1 %.not39.25, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  store i32 6, ptr %i.bn, align 16, !tbaa !31
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 2981
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !31
  %.not39.26 = icmp eq i8 %i.dq, 0
  br i1 %.not39.26, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  store i32 5, ptr %i.bn, align 16, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 2980
  %i.ds = load i8, ptr %i.dr, align 4, !tbaa !31
  %.not39.27 = icmp eq i8 %i.ds, 0
  br i1 %.not39.27, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  store i32 4, ptr %i.bn, align 16, !tbaa !31
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2979
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !31
  %.not39.28 = icmp eq i8 %i.du, 0
  br i1 %.not39.28, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  store i32 3, ptr %i.bn, align 16, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2978
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !31
  %.not39.29 = icmp eq i8 %i.dw, 0
  br i1 %.not39.29, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 2, ptr %i.bn, align 16, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 2977
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !31
  %.not39.30 = icmp eq i8 %i.dy, 0                ; 2 uses
  %spec.store.select68 = select i1 %.not39.30, i32 1, i32 2
  store i32 %spec.store.select68, ptr %i.bn, align 16
  %spec.select69 = select i1 %.not39.30, i32 1, i32 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %storemerge38.lcssa = phi i32 [ 32, %bb.af ], [ 9, %bb.bc ], [ 17, %bb.au ], [ 31, %bb.ag ], [ %spec.select69, %bb.bj ], [ 30, %bb.ah ], [ 16, %bb.av ], [ 29, %bb.ai ], [ 3, %bb.bi ], [ 28, %bb.aj ], [ 11, %bb.ba ], [ 27, %bb.ak ], [ 4, %bb.bh ], [ 26, %bb.al ], [ 15, %bb.aw ], [ 25, %bb.am ], [ 5, %bb.bg ], [ 24, %bb.an ], [ 10, %bb.bb ], [ 23, %bb.ao ], [ 6, %bb.bf ], [ 22, %bb.ap ], [ 14, %bb.ax ], [ 21, %bb.aq ], [ 7, %bb.be ], [ 20, %bb.ar ], [ 12, %bb.az ], [ 19, %bb.as ], [ 8, %bb.bd ], [ 18, %bb.at ], [ 13, %bb.ay ] ; 2 uses
  br i1 %.not.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.dz = zext nneg i32 %storemerge.lcssa to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dz
  %i.eb = zext nneg i32 %storemerge38.lcssa to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull align 32 dereferenceable(1) %i.bo, i64 %i.eb, i1 false)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !31
  %.pre57 = load i32, ptr %i.bn, align 16, !tbaa !31
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.ec = phi i32 [ %.pre57, %bb.bl ], [ %storemerge38.lcssa, %bb.bk ]
  %i.ed = phi i32 [ %.pre, %bb.bl ], [ %storemerge.lcssa, %bb.bk ]
  %i.ee = add i32 %i.ec, %i.ed                    ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 4780 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4672 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4680 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 4676 ; 2 uses
  %i.ej = add i32 %i.ee, -1                       ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge86.i, %bb.bm
  %.063.i = phi ptr [ %i.ef, %bb.bm ], [ %.467.lcssa.i, %._crit_edge86.i ] ; 5 uses
  %.062.i = phi i32 [ 0, %bb.bm ], [ %.4.lcssa.i, %._crit_edge86.i ] ; 8 uses
  %i.ek = zext i32 %.062.i to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !31  ; 5 uses
  %i.en = add i32 %.062.i, 1                      ; 2 uses
  %.not.i76 = icmp eq i32 %i.en, %i.ee
  br i1 %.not.i76, label %.critedge.i, label %.lr.ph

bb.bo:                                            ; preds = %.lr.ph
  %i.eo = add i32 %i.ep, 1                        ; 2 uses
  %.not.i = icmp eq i32 %i.eo, %i.ee
  br i1 %.not.i, label %.critedge.i, label %.lr.ph, !llvm.loop !211

.lr.ph:                                           ; preds = %bb.bn, %bb.bo
  %i.ep = phi i32 [ %i.eo, %bb.bo ], [ %i.en, %bb.bn ] ; 4 uses
  %.0.i77 = phi i32 [ %i.ep, %bb.bo ], [ %.062.i, %bb.bn ]
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !31
  %i.et = icmp eq i8 %i.em, %i.es
  br i1 %i.et, label %bb.bo, label %..critedge.i_crit_edge, !llvm.loop !211

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !211

.critedge.i:                                      ; preds = %bb.bo, %..critedge.i_crit_edge, %bb.bn
  %.0.lcssa.i = phi i32 [ %i.ej, %bb.bn ], [ %.0.i77, %..critedge.i_crit_edge ], [ %i.ej, %bb.bo ] ; 4 uses
  %.lcssa.i = phi i32 [ %i.ee, %bb.bn ], [ %i.ep, %..critedge.i_crit_edge ], [ %i.ee, %bb.bo ] ; 7 uses
  %i.eu = zext i8 %i.em to i32                    ; 6 uses
  %i.ev = icmp eq i8 %i.em, 0
  %i.ew = sub i32 %.lcssa.i, %.062.i              ; 4 uses
  br i1 %i.ev, label %.preheader.i, label %bb.bp

.preheader.i:                                     ; preds = %.critedge.i
  %i.ex = icmp ugt i32 %i.ew, 10
  br i1 %i.ex, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.ey = phi i32 [ %i.fj, %.lr.ph.i ], [ %i.ew, %.preheader.i ]
  %.178.i = phi i32 [ %i.fi, %.lr.ph.i ], [ %.062.i, %.preheader.i ]
  %.16477.i = phi ptr [ %i.fg, %.lr.ph.i ], [ %.063.i, %.preheader.i ] ; 2 uses
  %i.ez = add i32 %i.ey, -11                      ; 2 uses
  %i.fa = icmp ult i32 %i.ez, 128
  %i.fb = select i1 %i.fa, i32 %i.ez, i32 127     ; 2 uses
  %i.fc = load i32, ptr %i.eh, align 8, !tbaa !9
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.eh, align 8, !tbaa !9
  %i.fe = shl i32 %i.fb, 5
  %i.ff = or disjoint i32 %i.fe, 18
  %i.fg = getelementptr inbounds nuw i8, ptr %.16477.i, i64 4 ; 2 uses
  store i32 %i.ff, ptr %.16477.i, align 4, !tbaa !9
  %i.fh = add i32 %.178.i, 11
  %i.fi = add i32 %i.fh, %i.fb                    ; 3 uses
  %i.fj = sub i32 %.lcssa.i, %i.fi                ; 3 uses
  %i.fk = icmp ugt i32 %i.fj, 10
  br i1 %i.fk, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !212

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.164.lcssa.i = phi ptr [ %.063.i, %.preheader.i ], [ %i.fg, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.062.i, %.preheader.i ], [ %i.fi, %.lr.ph.i ]
  %.lcssa76.i = phi i32 [ %i.ew, %.preheader.i ], [ %i.fj, %.lr.ph.i ] ; 2 uses
  %i.fl = icmp samesign ugt i32 %.lcssa76.i, 2
  br i1 %i.fl, label %.loopexit.thread.i, label %.loopexit.i

.loopexit.thread.i:                               ; preds = %._crit_edge.i
  %i.fm = load i32, ptr %i.ei, align 4, !tbaa !9
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr %i.ei, align 4, !tbaa !9
  %i.fo = shl nuw nsw i32 %.lcssa76.i, 5
  %i.fp = add nsw i32 %i.fo, -79
  %i.fq = getelementptr inbounds nuw i8, ptr %.164.lcssa.i, i64 4
  store i32 %i.fp, ptr %.164.lcssa.i, align 4, !tbaa !9
  br label %._crit_edge86.i

bb.bp:                                            ; preds = %.critedge.i
  %i.fr = icmp ugt i32 %i.ew, 3
  br i1 %i.fr, label %bb.bq, label %.loopexit.i

bb.bq:                                            ; preds = %bb.bp
  %i.fs = zext i8 %i.em to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !9
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !9
  %i.fw = getelementptr inbounds nuw i8, ptr %.063.i, i64 4
  store i32 %i.eu, ptr %.063.i, align 4, !tbaa !9
  %i.fx = add i32 %.062.i, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %.265.i = phi ptr [ %i.fw, %bb.bq ], [ %i.gg, %bb.br ] ; 2 uses
  %.2.i = phi i32 [ %i.fx, %bb.bq ], [ %i.gi, %bb.br ] ; 2 uses
  %i.fy = sub i32 %.lcssa.i, %.2.i
  %i.fz = add i32 %i.fy, -3                       ; 2 uses
  %i.ga = icmp ult i32 %i.fz, 4
  %i.gb = select i1 %i.ga, i32 %i.fz, i32 3       ; 2 uses
  %i.gc = load i32, ptr %i.eg, align 16, !tbaa !9
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.eg, align 16, !tbaa !9
  %i.ge = shl i32 %i.gb, 5
  %i.gf = or disjoint i32 %i.ge, 16
  %i.gg = getelementptr inbounds nuw i8, ptr %.265.i, i64 4 ; 2 uses
  store i32 %i.gf, ptr %.265.i, align 4, !tbaa !9
  %i.gh = add i32 %.2.i, 3
  %i.gi = add i32 %i.gh, %i.gb                    ; 3 uses
  %i.gj = sub i32 %.lcssa.i, %i.gi
  %i.gk = icmp ugt i32 %i.gj, 2
  br i1 %i.gk, label %bb.br, label %.loopexit.i, !llvm.loop !213

.loopexit.i:                                      ; preds = %bb.br, %bb.bp, %._crit_edge.i
  %.366.i = phi ptr [ %.063.i, %bb.bp ], [ %.164.lcssa.i, %._crit_edge.i ], [ %i.gg, %bb.br ] ; 3 uses
  %.3.i = phi i32 [ %.062.i, %bb.bp ], [ %.1.lcssa.i, %._crit_edge.i ], [ %i.gi, %bb.br ] ; 5 uses
  %.not7281.i = icmp eq i32 %.3.i, %.lcssa.i
  br i1 %.not7281.i, label %._crit_edge86.i, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %.loopexit.i
  %i.gl = zext i8 %i.em to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gl ; 10 uses
  %i.gn = add i32 %.0.lcssa.i, 1
  %i.go = sub i32 %i.gn, %.3.i
  %i.gp = sub i32 %.0.lcssa.i, %.3.i
  %xtraiter = and i32 %i.go, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph85.i, %.prol.preheader
  %.483.i.prol = phi i32 [ %i.gt, %.prol.preheader ], [ %.3.i, %.lr.ph85.i ]
  %.46782.i.prol = phi ptr [ %i.gs, %.prol.preheader ], [ %.366.i, %.lr.ph85.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph85.i ]
  %i.gq = load i32, ptr %i.gm, align 4, !tbaa !9
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gm, align 4, !tbaa !9
  %i.gs = getelementptr inbounds nuw i8, ptr %.46782.i.prol, i64 4 ; 3 uses
  store i32 %i.eu, ptr %.46782.i.prol, align 4, !tbaa !9
  %i.gt = add i32 %.483.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !214

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph85.i
  %.lcssa89.unr = phi ptr [ poison, %.lr.ph85.i ], [ %i.gs, %.prol.preheader ]
  %.483.i.unr = phi i32 [ %.3.i, %.lr.ph85.i ], [ %i.gt, %.prol.preheader ]
  %.46782.i.unr = phi ptr [ %.366.i, %.lr.ph85.i ], [ %i.gs, %.prol.preheader ]
  %i.gu = icmp ult i32 %i.gp, 3
  br i1 %i.gu, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new

.lr.ph85.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph85.i.new
  %.483.i = phi i32 [ %i.hi, %.lr.ph85.i.new ], [ %.483.i.unr, %.prol.loopexit ] ; 2 uses
  %.46782.i = phi ptr [ %i.hh, %.lr.ph85.i.new ], [ %.46782.i.unr, %.prol.loopexit ] ; 5 uses
  %i.gv = load i32, ptr %i.gm, align 4, !tbaa !9
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.gm, align 4, !tbaa !9
  %i.gx = getelementptr inbounds nuw i8, ptr %.46782.i, i64 4
  store i32 %i.eu, ptr %.46782.i, align 4, !tbaa !9
  %i.gy = load i32, ptr %i.gm, align 4, !tbaa !9
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gm, align 4, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %.46782.i, i64 8
  store i32 %i.eu, ptr %i.gx, align 4, !tbaa !9
  %i.hb = load i32, ptr %i.gm, align 4, !tbaa !9
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.gm, align 4, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %.46782.i, i64 12
  store i32 %i.eu, ptr %i.ha, align 4, !tbaa !9
  %i.he = add i32 %.483.i, 3
  %i.hf = load i32, ptr %i.gm, align 4, !tbaa !9
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.gm, align 4, !tbaa !9
  %i.hh = getelementptr inbounds nuw i8, ptr %.46782.i, i64 16 ; 2 uses
  store i32 %i.eu, ptr %i.hd, align 4, !tbaa !9
  %i.hi = add i32 %.483.i, 4
  %.not72.i.3 = icmp eq i32 %i.he, %.0.lcssa.i
  br i1 %.not72.i.3, label %._crit_edge86.loopexit.i, label %.lr.ph85.i.new, !llvm.loop !215

._crit_edge86.loopexit.i:                         ; preds = %.lr.ph85.i.new, %.prol.loopexit
  %.lcssa89 = phi ptr [ %.lcssa89.unr, %.prol.loopexit ], [ %i.hh, %.lr.ph85.i.new ]
  %i.hj = add i32 %.0.lcssa.i, 1
  br label %._crit_edge86.i

._crit_edge86.i:                                  ; preds = %._crit_edge86.loopexit.i, %.loopexit.i, %.loopexit.thread.i
  %.467.lcssa.i = phi ptr [ %.366.i, %.loopexit.i ], [ %.lcssa89, %._crit_edge86.loopexit.i ], [ %i.fq, %.loopexit.thread.i ] ; 2 uses
  %.4.lcssa.i = phi i32 [ %.lcssa.i, %.loopexit.i ], [ %i.hj, %._crit_edge86.loopexit.i ], [ %.lcssa.i, %.loopexit.thread.i ] ; 2 uses
  %.not73.i = icmp eq i32 %.4.lcssa.i, %i.ee
  br i1 %.not73.i, label %deflate_compute_precode_items.exit, label %bb.bn, !llvm.loop !216

deflate_compute_precode_items.exit:               ; preds = %._crit_edge86.i
  %i.hk = ptrtoint ptr %.467.lcssa.i to i64
  %i.hl = ptrtoint ptr %i.ef to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = lshr exact i64 %i.hm, 2
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 6072
end_hunk_2
begin_hunk_3_@deflate_decompress_default:bb.a
  %i.go = zext nneg i32 %i.gj to i64
  %i.gp = shl nuw nsw i64 %i.gn, %i.go
  %i.gq = or i64 %i.gp, %.10653.4
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph984.5
  %i.gr = add i64 %.9.4, 1                        ; 2 uses
  %i.gs = icmp ugt i64 %i.gr, 8
  br i1 %i.gs, label %.thread836, label %bb.ag, !prof !53

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.9682.5 = phi ptr [ %i.gl, %bb.ae ], [ %.9682.4, %bb.af ] ; 5 uses
  %.10653.5 = phi i64 [ %i.gq, %bb.ae ], [ %.10653.4, %bb.af ] ; 3 uses
  %.9.5 = phi i64 [ %.9.4, %bb.ae ], [ %i.gr, %bb.af ] ; 3 uses
  %i.gt = add i32 %.6624, 48                      ; 2 uses
  %i.gu = and i32 %i.gt, 255                      ; 2 uses
  %i.gv = icmp samesign ult i32 %i.gu, 56
  br i1 %i.gv, label %.lr.ph984.6, label %.loopexit899

.lr.ph984.6:                                      ; preds = %bb.ag
  %.not750.6 = icmp eq ptr %.9682.5, %i.e
  br i1 %.not750.6, label %bb.ai, label %bb.ah, !prof !53

bb.ah:                                            ; preds = %.lr.ph984.6
  %i.gw = getelementptr inbounds nuw i8, ptr %.9682.5, i64 1
  %i.gx = load i8, ptr %.9682.5, align 1, !tbaa !31
  %i.gy = zext i8 %i.gx to i64
  %i.gz = zext nneg i32 %i.gu to i64
  %i.ha = shl nuw nsw i64 %i.gy, %i.gz
  %i.hb = or i64 %i.ha, %.10653.5
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph984.6
  %i.hc = add i64 %.9.5, 1                        ; 2 uses
  %i.hd = icmp ugt i64 %i.hc, 8
  br i1 %i.hd, label %.thread836, label %bb.aj, !prof !53

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.9682.6 = phi ptr [ %i.gw, %bb.ah ], [ %.9682.5, %bb.ai ]
  %.10653.6 = phi i64 [ %i.hb, %bb.ah ], [ %.10653.5, %bb.ai ]
  %.9.6 = phi i64 [ %.9.5, %bb.ah ], [ %i.hc, %bb.ai ]
  %i.he = add i32 %.6624, 56
  br label %.loopexit899

.loopexit899:                                     ; preds = %bb.r, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %bb.o, %bb.m
  %.10683 = phi ptr [ %i.eg, %bb.o ], [ %.7680, %bb.m ], [ %.9682, %bb.r ], [ %.9682.1, %bb.u ], [ %.9682.2, %bb.x ], [ %.9682.3, %bb.aa ], [ %.9682.4, %bb.ad ], [ %.9682.5, %bb.ag ], [ %.9682.6, %bb.aj ] ; 2 uses
  %.11654 = phi i64 [ %i.ea, %bb.o ], [ %.8651, %bb.m ], [ %.10653, %bb.r ], [ %.10653.1, %bb.u ], [ %.10653.2, %bb.x ], [ %.10653.3, %bb.aa ], [ %.10653.4, %bb.ad ], [ %.10653.5, %bb.ag ], [ %.10653.6, %bb.aj ] ; 2 uses
  %.8626 = phi i32 [ %i.eh, %bb.o ], [ %.6624, %bb.m ], [ %i.eq, %bb.r ], [ %i.fb, %bb.u ], [ %i.fm, %bb.x ], [ %i.fx, %bb.aa ], [ %i.gi, %bb.ad ], [ %i.gt, %bb.ag ], [ %i.he, %bb.aj ]
  %.10 = phi i64 [ %.7, %bb.o ], [ %.7, %bb.m ], [ %.9, %bb.r ], [ %.9.1, %bb.u ], [ %.9.2, %bb.x ], [ %.9.3, %bb.aa ], [ %.9.4, %bb.ad ], [ %.9.5, %bb.ag ], [ %.9.6, %bb.aj ] ; 2 uses
  %i.hf = and i64 %.11654, 127
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !31 ; 4 uses
  %i.hi = and i32 %i.hh, 255
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 %.11654, %i.hj                 ; 7 uses
  %i.hl = sub i32 %.8626, %i.hh                   ; 4 uses
  %i.hm = lshr i32 %i.hh, 16                      ; 2 uses
  %i.hn = icmp ult i32 %i.hh, 1048576
  br i1 %i.hn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit899
  %i.ho = trunc nuw nsw i32 %i.hm to i8
  %i.hp = add nuw nsw i32 %.2587, 1
  %i.hq = zext nneg i32 %.2587 to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %i.hq
  store i8 %i.ho, ptr %i.hr, align 1, !tbaa !31
  br label %bb.ar

bb.al:                                            ; preds = %.loopexit899
  %trunc = trunc nuw i32 %i.hm to i16
  switch i16 %trunc, label %bb.ap [
    i16 16, label %bb.am
    i16 17, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %.not751 = icmp eq i32 %.2587, 0
  br i1 %.not751, label %.thread836, label %bb.an, !prof !53

bb.an:                                            ; preds = %bb.am
  %i.hs = sext i32 %.2587 to i64
  %i.ht = getelementptr i8, ptr %0, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 -1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !31  ; 3 uses
  %i.hw = trunc i64 %i.hk to i32
  %i.hx = and i32 %i.hw, 3
  %i.hy = add nuw nsw i32 %i.hx, 3
  %i.hz = lshr i64 %i.hk, 2
  %i.ia = add i32 %i.hl, -2
  %i.ib = zext nneg i32 %.2587 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 %i.ib
  %i.id = zext nneg i32 %.2587 to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 %i.id ; 2 uses
  %i.if = insertelement <4 x i8> poison, i8 %i.hv, i64 0
  %i.ig = shufflevector <4 x i8> %i.if, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %i.ig, ptr %i.ic, align 1, !tbaa !31
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i8 %i.hv, ptr %i.ih, align 1, !tbaa !31
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 5
  store i8 %i.hv, ptr %i.ii, align 1, !tbaa !31
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  %i.ij = trunc i64 %i.hk to i32
  %i.ik = and i32 %i.ij, 7
  %i.il = add nuw nsw i32 %i.ik, 3
  %i.im = lshr i64 %i.hk, 3
  %i.in = add i32 %i.hl, -3
  %i.io = zext nneg i32 %.2587 to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 %i.io
  store i8 0, ptr %i.ip, align 1, !tbaa !31
  %i.iq = zext nneg i32 %.2587 to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.is, i8 0, i64 9, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.it = trunc i64 %i.hk to i32
  %i.iu = and i32 %i.it, 127
  %i.iv = add nuw nsw i32 %i.iu, 11               ; 2 uses
  %i.iw = lshr i64 %i.hk, 7
  %i.ix = add i32 %i.hl, -7
  %i.iy = zext nneg i32 %.2587 to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %i.iy
  %i.ja = zext nneg i32 %i.iv to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iz, i8 0, i64 %i.ja, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.12655 = phi i64 [ %i.hz, %bb.an ], [ %i.im, %bb.ao ], [ %i.iw, %bb.ap ]
  %.9627 = phi i32 [ %i.ia, %bb.an ], [ %i.in, %bb.ao ], [ %i.ix, %bb.ap ]
  %.pn = phi i32 [ %i.hy, %bb.an ], [ %i.il, %bb.ao ], [ %i.iv, %bb.ap ]
  %.3588 = add nuw nsw i32 %.pn, %.2587
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ak, %bb.aq
  %.13656 = phi i64 [ %i.hk, %bb.ak ], [ %.12655, %bb.aq ] ; 2 uses
  %.10628 = phi i32 [ %i.hl, %bb.ak ], [ %.9627, %bb.aq ] ; 2 uses
  %.4589 = phi i32 [ %i.hp, %bb.ak ], [ %.3588, %bb.aq ] ; 3 uses
  %i.jb = icmp ult i32 %.4589, %i.ds
  br i1 %i.jb, label %bb.m, label %bb.as, !llvm.loop !316

bb.as:                                            ; preds = %bb.ar
  %.not752 = icmp eq i32 %.4589, %i.ds
  br i1 %.not752, label %.thread843, label %.thread836, !prof !57

bb.at:                                            ; preds = %.loopexit916
  %i.jc = add i32 %.2620, 253
  %i.jd = lshr i32 %i.jc, 3
  %i.je = and i32 %i.jd, 31
  %i.jf = zext nneg i32 %i.je to i64              ; 2 uses
  %.not746 = icmp ugt i64 %.3614, %i.jf
  br i1 %.not746, label %.thread836, label %bb.au, !prof !53

bb.au:                                            ; preds = %bb.at
  %.neg = sub nsw i64 %.3614, %i.jf
  %i.jg = getelementptr inbounds i8, ptr %.3676, i64 %.neg ; 4 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.i, %i.jh
  %i.jj = icmp slt i64 %i.ji, 4
  br i1 %i.jj, label %.thread836, label %bb.av, !prof !53

bb.av:                                            ; preds = %bb.au
  %.0.copyload.i809 = load i16, ptr %i.jg, align 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %.0.copyload.i810 = load i16, ptr %i.jk, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 3 uses
  %i.jm = xor i16 %.0.copyload.i810, %.0.copyload.i809
  %.not747 = icmp eq i16 %i.jm, -1
  br i1 %.not747, label %bb.aw, label %.thread836, !prof !57

bb.aw:                                            ; preds = %bb.av
  %i.jn = zext i16 %.0.copyload.i809 to i64       ; 5 uses
  %i.jo = ptrtoint ptr %.0700 to i64
  %i.jp = sub i64 %i.k, %i.jo
  %i.jq = icmp slt i64 %i.jp, %i.jn
  br i1 %i.jq, label %.thread836, label %bb.ax, !prof !53

bb.ax:                                            ; preds = %bb.aw
  %i.jr = ptrtoint ptr %i.jl to i64
  %i.js = sub i64 %i.i, %i.jr
  %.not748 = icmp slt i64 %i.js, %i.jn
  br i1 %.not748, label %.thread836, label %bb.ay, !prof !53

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0700, ptr nonnull align 1 %i.jl, i64 %i.jn, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jn
  %i.ju = getelementptr inbounds nuw i8, ptr %.0700, i64 %i.jn
  br label %.thread869

bb.az:                                            ; preds = %.loopexit916
  %i.jv = lshr i64 %.3646, 3                      ; 2 uses
  %i.jw = add i32 %.2620, -3                      ; 2 uses
  %i.jx = load i8, ptr %i.j, align 8, !tbaa !312, !range !68, !noundef !69
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.bb, label %.lr.ph968.preheader

.lr.ph968.preheader:                              ; preds = %bb.az
  store i8 1, ptr %i.j, align 8, !tbaa !312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 8, i64 144, i1 false), !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep, i8 9, i64 112, i1 false), !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep1043, i8 7, i64 24, i1 false), !tbaa !31
  store i64 578721382704613384, ptr %scevgep1045, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep1047, i8 5, i64 32, i1 false), !tbaa !31
  br label %.thread843

default.unreachable:                              ; preds = %.loopexit916
  unreachable

.thread843:                                       ; preds = %.lr.ph968.preheader, %bb.as
  %.14687 = phi ptr [ %.10683, %bb.as ], [ %.3676, %.lr.ph968.preheader ]
  %.17660 = phi i64 [ %.13656, %bb.as ], [ %i.jv, %.lr.ph968.preheader ]
  %.14632 = phi i32 [ %.10628, %bb.as ], [ %i.jw, %.lr.ph968.preheader ]
  %.14 = phi i64 [ %.10, %bb.as ], [ %.3614, %.lr.ph968.preheader ]
  %.2608 = phi i32 [ %i.az, %bb.as ], [ 288, %.lr.ph968.preheader ] ; 2 uses
  %.2603 = phi i32 [ %i.bc, %bb.as ], [ 32, %.lr.ph968.preheader ]
  %i.jz = zext nneg i32 %.2608 to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %i.jz
  %i.kb = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ka, i32 noundef %.2603, ptr noundef nonnull @offset_decode_results, i32 noundef 8, i32 noundef 15, ptr noundef nonnull %i.n, ptr noundef null)
  br i1 %i.kb, label %bb.ba, label %.thread836, !prof !57

bb.ba:                                            ; preds = %.thread843
  %i.kc = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %.2608, ptr noundef nonnull @litlen_decode_results, i32 noundef 11, i32 noundef 15, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p)
  br i1 %i.kc, label %bb.bb, label %.thread836, !prof !57

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.15688 = phi ptr [ %.14687, %bb.ba ], [ %.3676, %bb.az ] ; 4 uses
  %.18661 = phi i64 [ %.17660, %bb.ba ], [ %i.jv, %bb.az ] ; 2 uses
  %.15633 = phi i32 [ %.14632, %bb.ba ], [ %i.jw, %bb.az ] ; 4 uses
  %.15 = phi i64 [ %.14, %bb.ba ], [ %.3614, %bb.az ] ; 3 uses
  %i.kd = load i32, ptr %i.p, align 4, !tbaa !317
  %i.ke = zext nneg i32 %i.kd to i64
  %notmask = shl nsw i64 -1, %i.ke
  %i.kf = xor i64 %notmask, -1                    ; 7 uses
  %.not753 = icmp ult ptr %.15688, %i.h
  %.not754 = icmp ult ptr %.0700, %i.d
  %or.cond = select i1 %.not753, i1 %.not754, i1 false
  br i1 %or.cond, label %bb.bc, label %.loopexit904.preheader

bb.bc:                                            ; preds = %bb.bb
  %.0.copyload.i805 = load i64, ptr %.15688, align 1
  %i.kg = and i32 %.15633, 255
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = shl i64 %.0.copyload.i805, %i.kh
  %i.kj = or i64 %i.ki, %.18661                   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.15688, i64 7
  %i.kl = lshr i32 %.15633, 3
  %i.km = and i32 %i.kl, 7
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = sub nsw i64 0, %i.kn
  %i.kp = getelementptr inbounds i8, ptr %i.kk, i64 %i.ko
  %i.kq = or i32 %.15633, 56
  %i.kr = and i64 %i.kj, %i.kf
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !31
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit895, %bb.bc
  %.2702 = phi ptr [ %.0700, %bb.bc ], [ %.4704.ph, %.loopexit895 ] ; 5 uses
  %.16689 = phi ptr [ %i.kp, %bb.bc ], [ %.19692.ph, %.loopexit895 ] ; 12 uses
  %.19662 = phi i64 [ %i.kj, %bb.bc ], [ %.24667.ph, %.loopexit895 ] ; 2 uses
  %.16634 = phi i32 [ %i.kq, %bb.bc ], [ %.21639.ph, %.loopexit895 ]
  %.0595 = phi i32 [ %i.kt, %bb.bc ], [ %.4599.ph, %.loopexit895 ] ; 5 uses
  %i.ku = and i32 %.0595, 255
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = lshr i64 %.19662, %i.kv                 ; 4 uses
  %i.kx = sub i32 %.16634, %.0595                 ; 2 uses
  %.not755 = icmp sgt i32 %.0595, -1
  br i1 %.not755, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ky = lshr i32 %.0595, 16
  %i.kz = and i64 %i.kw, %i.kf
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !31 ; 5 uses
  %i.lc = and i32 %i.lb, 255
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = lshr i64 %i.kw, %i.ld                   ; 4 uses
  %i.lf = sub i32 %i.kx, %i.lb                    ; 2 uses
  %i.lg = trunc i32 %i.ky to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %.2702, i64 1 ; 2 uses
  store i8 %i.lg, ptr %.2702, align 1, !tbaa !31
  %.not756 = icmp sgt i32 %i.lb, -1
  br i1 %.not756, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.li = lshr i32 %i.lb, 16
  %i.lj = and i64 %i.le, %i.kf
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !31 ; 5 uses
  %i.lm = and i32 %i.ll, 255
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = lshr i64 %i.le, %i.ln                   ; 3 uses
  %i.lp = sub i32 %i.lf, %i.ll                    ; 4 uses
  %i.lq = trunc i32 %i.li to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %.2702, i64 2 ; 2 uses
  store i8 %i.lq, ptr %i.lh, align 1, !tbaa !31
  %.not757 = icmp sgt i32 %i.ll, -1
  br i1 %.not757, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ls = lshr i32 %i.ll, 16
  %i.lt = and i64 %i.lo, %i.kf
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !31
  %.0.copyload.i804 = load i64, ptr %.16689, align 1
  %i.lw = and i32 %i.lp, 255
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = shl i64 %.0.copyload.i804, %i.lx
  %i.lz = or i64 %i.ly, %i.lo
  %i.ma = getelementptr inbounds nuw i8, ptr %.16689, i64 7
  %i.mb = lshr i32 %i.lp, 3
  %i.mc = and i32 %i.mb, 7
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = sub nsw i64 0, %i.md
  %i.mf = getelementptr inbounds i8, ptr %i.ma, i64 %i.me
  %i.mg = trunc i32 %i.ls to i8
  %i.mh = getelementptr inbounds nuw i8, ptr %.2702, i64 3
  store i8 %i.mg, ptr %i.lr, align 1, !tbaa !31
  br label %.loopexit895

bb.bh:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.3703 = phi ptr [ %i.lr, %bb.bf ], [ %i.lh, %bb.be ], [ %.2702, %bb.bd ] ; 23 uses
  %.20663 = phi i64 [ %i.lo, %bb.bf ], [ %i.le, %bb.be ], [ %i.kw, %bb.bd ] ; 5 uses
  %.0640 = phi i64 [ %i.le, %bb.bf ], [ %i.kw, %bb.be ], [ %.19662, %bb.bd ]
  %.17635 = phi i32 [ %i.lp, %bb.bf ], [ %i.lf, %bb.be ], [ %i.kx, %bb.bd ] ; 3 uses
  %.1596 = phi i32 [ %i.ll, %bb.bf ], [ %i.lb, %bb.be ], [ %.0595, %bb.bd ] ; 6 uses
  %i.mi = and i32 %.1596, 32768
  %.not758 = icmp eq i32 %i.mi, 0
  br i1 %.not758, label %._crit_edge1055, label %bb.bi, !prof !57

._crit_edge1055:                                  ; preds = %bb.bh
  %.pre = and i32 %.1596, 255
  %.pre1056 = zext nneg i32 %.pre to i64
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.mj = and i32 %.1596, 8192
  %.not759 = icmp eq i32 %i.mj, 0
  br i1 %.not759, label %bb.bj, label %.thread869, !prof !57

bb.bj:                                            ; preds = %bb.bi
  %i.mk = lshr i32 %.1596, 16
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = lshr i32 %.1596, 8
  %i.mn = and i32 %i.mm, 31
  %i.mo = zext nneg i32 %i.mn to i64
  %notmask760 = shl nsw i64 -1, %i.mo
  %i.mp = xor i64 %notmask760, -1
  %i.mq = and i64 %.20663, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ml
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !31 ; 6 uses
  %i.mu = and i32 %i.mt, 255
  %i.mv = zext nneg i32 %i.mu to i64              ; 2 uses
  %i.mw = lshr i64 %.20663, %i.mv                 ; 4 uses
  %i.mx = sub i32 %.17635, %i.mt                  ; 5 uses
  %.not761 = icmp sgt i32 %i.mt, -1
  br i1 %.not761, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.my = lshr i32 %i.mt, 16
  %i.mz = and i64 %i.mw, %i.kf
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !31
  %.0.copyload.i803 = load i64, ptr %.16689, align 1
  %i.nc = and i32 %i.mx, 255
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = shl i64 %.0.copyload.i803, %i.nd
  %i.nf = or i64 %i.ne, %i.mw
  %i.ng = getelementptr inbounds nuw i8, ptr %.16689, i64 7
  %i.nh = lshr i32 %i.mx, 3
  %i.ni = and i32 %i.nh, 7
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = sub nsw i64 0, %i.nj
  %i.nl = getelementptr inbounds i8, ptr %i.ng, i64 %i.nk
  %i.nm = trunc i32 %i.my to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %.3703, i64 1
  store i8 %i.nm, ptr %.3703, align 1, !tbaa !31
  br label %.loopexit895

bb.bl:                                            ; preds = %bb.bj
  %i.no = and i32 %i.mt, 8192
  %.not762 = icmp eq i32 %i.no, 0
  br i1 %.not762, label %bb.bm, label %.thread869, !prof !57

bb.bm:                                            ; preds = %._crit_edge1055, %bb.bl
  %.pre-phi1057 = phi i64 [ %.pre1056, %._crit_edge1055 ], [ %i.mv, %bb.bl ]
  %.21664 = phi i64 [ %.20663, %._crit_edge1055 ], [ %i.mw, %bb.bl ] ; 5 uses
  %.1641 = phi i64 [ %.0640, %._crit_edge1055 ], [ %.20663, %bb.bl ]
  %.18636 = phi i32 [ %.17635, %._crit_edge1055 ], [ %i.mx, %bb.bl ] ; 7 uses
  %.2597 = phi i32 [ %.1596, %._crit_edge1055 ], [ %i.mt, %bb.bl ] ; 2 uses
  %i.np = lshr i32 %.2597, 16
  %notmask763 = shl nsw i64 -1, %.pre-phi1057
  %i.nq = xor i64 %notmask763, -1
  %i.nr = and i64 %.1641, %i.nq
  %i.ns = lshr i32 %.2597, 8
  %i.nt = and i32 %i.ns, 255
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = lshr i64 %i.nr, %i.nu
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = add i32 %i.np, %i.nw                    ; 3 uses
  %i.ny = and i64 %.21664, 255
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ny
end_hunk_3
begin_hunk_4_@deflate_decompress_bmi2:bb.a
  %i.go = zext nneg i32 %i.gj to i64
  %i.gp = shl nuw nsw i64 %i.gn, %i.go
  %i.gq = or i64 %i.gp, %.10653.4
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph984.5
  %i.gr = add i64 %.9.4, 1                        ; 2 uses
  %i.gs = icmp ugt i64 %i.gr, 8
  br i1 %i.gs, label %.thread836, label %bb.ag, !prof !53

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.9682.5 = phi ptr [ %i.gl, %bb.ae ], [ %.9682.4, %bb.af ] ; 5 uses
  %.10653.5 = phi i64 [ %i.gq, %bb.ae ], [ %.10653.4, %bb.af ] ; 3 uses
  %.9.5 = phi i64 [ %.9.4, %bb.ae ], [ %i.gr, %bb.af ] ; 3 uses
  %i.gt = add i32 %.6624, 48                      ; 2 uses
  %i.gu = and i32 %i.gt, 255                      ; 2 uses
  %i.gv = icmp samesign ult i32 %i.gu, 56
  br i1 %i.gv, label %.lr.ph984.6, label %.loopexit899

.lr.ph984.6:                                      ; preds = %bb.ag
  %.not750.6 = icmp eq ptr %.9682.5, %i.e
  br i1 %.not750.6, label %bb.ai, label %bb.ah, !prof !53

bb.ah:                                            ; preds = %.lr.ph984.6
  %i.gw = getelementptr inbounds nuw i8, ptr %.9682.5, i64 1
  %i.gx = load i8, ptr %.9682.5, align 1, !tbaa !31
  %i.gy = zext i8 %i.gx to i64
  %i.gz = zext nneg i32 %i.gu to i64
  %i.ha = shl nuw nsw i64 %i.gy, %i.gz
  %i.hb = or i64 %i.ha, %.10653.5
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph984.6
  %i.hc = add i64 %.9.5, 1                        ; 2 uses
  %i.hd = icmp ugt i64 %i.hc, 8
  br i1 %i.hd, label %.thread836, label %bb.aj, !prof !53

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.9682.6 = phi ptr [ %i.gw, %bb.ah ], [ %.9682.5, %bb.ai ]
  %.10653.6 = phi i64 [ %i.hb, %bb.ah ], [ %.10653.5, %bb.ai ]
  %.9.6 = phi i64 [ %.9.5, %bb.ah ], [ %i.hc, %bb.ai ]
  %i.he = add i32 %.6624, 56
  br label %.loopexit899

.loopexit899:                                     ; preds = %bb.r, %bb.u, %bb.x, %bb.aa, %bb.ad, %bb.ag, %bb.aj, %bb.o, %bb.m
  %.10683 = phi ptr [ %i.eg, %bb.o ], [ %.7680, %bb.m ], [ %.9682, %bb.r ], [ %.9682.1, %bb.u ], [ %.9682.2, %bb.x ], [ %.9682.3, %bb.aa ], [ %.9682.4, %bb.ad ], [ %.9682.5, %bb.ag ], [ %.9682.6, %bb.aj ] ; 2 uses
  %.11654 = phi i64 [ %i.ea, %bb.o ], [ %.8651, %bb.m ], [ %.10653, %bb.r ], [ %.10653.1, %bb.u ], [ %.10653.2, %bb.x ], [ %.10653.3, %bb.aa ], [ %.10653.4, %bb.ad ], [ %.10653.5, %bb.ag ], [ %.10653.6, %bb.aj ] ; 2 uses
  %.8626 = phi i32 [ %i.eh, %bb.o ], [ %.6624, %bb.m ], [ %i.eq, %bb.r ], [ %i.fb, %bb.u ], [ %i.fm, %bb.x ], [ %i.fx, %bb.aa ], [ %i.gi, %bb.ad ], [ %i.gt, %bb.ag ], [ %i.he, %bb.aj ]
  %.10 = phi i64 [ %.7, %bb.o ], [ %.7, %bb.m ], [ %.9, %bb.r ], [ %.9.1, %bb.u ], [ %.9.2, %bb.x ], [ %.9.3, %bb.aa ], [ %.9.4, %bb.ad ], [ %.9.5, %bb.ag ], [ %.9.6, %bb.aj ] ; 2 uses
  %i.hf = and i64 %.11654, 127
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !31 ; 4 uses
  %i.hi = and i32 %i.hh, 255
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 %.11654, %i.hj                 ; 7 uses
  %i.hl = sub i32 %.8626, %i.hh                   ; 4 uses
  %i.hm = lshr i32 %i.hh, 16                      ; 2 uses
  %i.hn = icmp ult i32 %i.hh, 1048576
  br i1 %i.hn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit899
  %i.ho = trunc nuw nsw i32 %i.hm to i8
  %i.hp = add nuw nsw i32 %.2587, 1
  %i.hq = zext nneg i32 %.2587 to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %i.hq
  store i8 %i.ho, ptr %i.hr, align 1, !tbaa !31
  br label %bb.ar

bb.al:                                            ; preds = %.loopexit899
  %trunc = trunc nuw i32 %i.hm to i16
  switch i16 %trunc, label %bb.ap [
    i16 16, label %bb.am
    i16 17, label %bb.ao
  ]

bb.am:                                            ; preds = %bb.al
  %.not751 = icmp eq i32 %.2587, 0
  br i1 %.not751, label %.thread836, label %bb.an, !prof !53

bb.an:                                            ; preds = %bb.am
  %i.hs = sext i32 %.2587 to i64
  %i.ht = getelementptr i8, ptr %0, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 -1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !31  ; 3 uses
  %i.hw = trunc i64 %i.hk to i32
  %i.hx = and i32 %i.hw, 3
  %i.hy = add nuw nsw i32 %i.hx, 3
  %i.hz = lshr i64 %i.hk, 2
  %i.ia = add i32 %i.hl, -2
  %i.ib = zext nneg i32 %.2587 to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 %i.ib
  %i.id = zext nneg i32 %.2587 to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 %i.id ; 2 uses
  %i.if = insertelement <4 x i8> poison, i8 %i.hv, i64 0
  %i.ig = shufflevector <4 x i8> %i.if, <4 x i8> poison, <4 x i32> zeroinitializer
  store <4 x i8> %i.ig, ptr %i.ic, align 1, !tbaa !31
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i8 %i.hv, ptr %i.ih, align 1, !tbaa !31
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 5
  store i8 %i.hv, ptr %i.ii, align 1, !tbaa !31
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  %i.ij = trunc i64 %i.hk to i32
  %i.ik = and i32 %i.ij, 7
  %i.il = add nuw nsw i32 %i.ik, 3
  %i.im = lshr i64 %i.hk, 3
  %i.in = add i32 %i.hl, -3
  %i.io = zext nneg i32 %.2587 to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 %i.io
  store i8 0, ptr %i.ip, align 1, !tbaa !31
  %i.iq = zext nneg i32 %.2587 to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.is, i8 0, i64 9, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.it = trunc i64 %i.hk to i32
  %i.iu = and i32 %i.it, 127
  %i.iv = add nuw nsw i32 %i.iu, 11               ; 2 uses
  %i.iw = lshr i64 %i.hk, 7
  %i.ix = add i32 %i.hl, -7
  %i.iy = zext nneg i32 %.2587 to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 %i.iy
  %i.ja = zext nneg i32 %i.iv to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iz, i8 0, i64 %i.ja, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.12655 = phi i64 [ %i.hz, %bb.an ], [ %i.im, %bb.ao ], [ %i.iw, %bb.ap ]
  %.9627 = phi i32 [ %i.ia, %bb.an ], [ %i.in, %bb.ao ], [ %i.ix, %bb.ap ]
  %.pn = phi i32 [ %i.hy, %bb.an ], [ %i.il, %bb.ao ], [ %i.iv, %bb.ap ]
  %.3588 = add nuw nsw i32 %.pn, %.2587
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ak, %bb.aq
  %.13656 = phi i64 [ %i.hk, %bb.ak ], [ %.12655, %bb.aq ] ; 2 uses
  %.10628 = phi i32 [ %i.hl, %bb.ak ], [ %.9627, %bb.aq ] ; 2 uses
  %.4589 = phi i32 [ %i.hp, %bb.ak ], [ %.3588, %bb.aq ] ; 3 uses
  %i.jb = icmp ult i32 %.4589, %i.ds
  br i1 %i.jb, label %bb.m, label %bb.as, !llvm.loop !330

bb.as:                                            ; preds = %bb.ar
  %.not752 = icmp eq i32 %.4589, %i.ds
  br i1 %.not752, label %.thread843, label %.thread836, !prof !57

bb.at:                                            ; preds = %.loopexit916
  %i.jc = add i32 %.2620, 253
  %i.jd = lshr i32 %i.jc, 3
  %i.je = and i32 %i.jd, 31
  %i.jf = zext nneg i32 %i.je to i64              ; 2 uses
  %.not746 = icmp ugt i64 %.3614, %i.jf
  br i1 %.not746, label %.thread836, label %bb.au, !prof !53

bb.au:                                            ; preds = %bb.at
  %.neg = sub nsw i64 %.3614, %i.jf
  %i.jg = getelementptr inbounds i8, ptr %.3676, i64 %.neg ; 4 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.i, %i.jh
  %i.jj = icmp slt i64 %i.ji, 4
  br i1 %i.jj, label %.thread836, label %bb.av, !prof !53

bb.av:                                            ; preds = %bb.au
  %.0.copyload.i809 = load i16, ptr %i.jg, align 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %.0.copyload.i810 = load i16, ptr %i.jk, align 1
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 4 ; 3 uses
  %i.jm = xor i16 %.0.copyload.i810, %.0.copyload.i809
  %.not747 = icmp eq i16 %i.jm, -1
  br i1 %.not747, label %bb.aw, label %.thread836, !prof !57

bb.aw:                                            ; preds = %bb.av
  %i.jn = zext i16 %.0.copyload.i809 to i64       ; 5 uses
  %i.jo = ptrtoint ptr %.0700 to i64
  %i.jp = sub i64 %i.k, %i.jo
  %i.jq = icmp slt i64 %i.jp, %i.jn
  br i1 %i.jq, label %.thread836, label %bb.ax, !prof !53

bb.ax:                                            ; preds = %bb.aw
  %i.jr = ptrtoint ptr %i.jl to i64
  %i.js = sub i64 %i.i, %i.jr
  %.not748 = icmp slt i64 %i.js, %i.jn
  br i1 %.not748, label %.thread836, label %bb.ay, !prof !53

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0700, ptr nonnull align 1 %i.jl, i64 %i.jn, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jn
  %i.ju = getelementptr inbounds nuw i8, ptr %.0700, i64 %i.jn
  br label %.thread869

bb.az:                                            ; preds = %.loopexit916
  %i.jv = lshr i64 %.3646, 3                      ; 2 uses
  %i.jw = add i32 %.2620, -3                      ; 2 uses
  %i.jx = load i8, ptr %i.j, align 8, !tbaa !312, !range !68, !noundef !69
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.bb, label %.lr.ph968.preheader

.lr.ph968.preheader:                              ; preds = %bb.az
  store i8 1, ptr %i.j, align 8, !tbaa !312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 8, i64 144, i1 false), !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %scevgep, i8 9, i64 112, i1 false), !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %scevgep1043, i8 7, i64 24, i1 false), !tbaa !31
  store i64 578721382704613384, ptr %scevgep1045, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %scevgep1047, i8 5, i64 32, i1 false), !tbaa !31
  br label %.thread843

default.unreachable:                              ; preds = %.loopexit916
  unreachable

.thread843:                                       ; preds = %.lr.ph968.preheader, %bb.as
  %.14687 = phi ptr [ %.10683, %bb.as ], [ %.3676, %.lr.ph968.preheader ]
  %.17660 = phi i64 [ %.13656, %bb.as ], [ %i.jv, %.lr.ph968.preheader ]
  %.14632 = phi i32 [ %.10628, %bb.as ], [ %i.jw, %.lr.ph968.preheader ]
  %.14 = phi i64 [ %.10, %bb.as ], [ %.3614, %.lr.ph968.preheader ]
  %.2608 = phi i32 [ %i.az, %bb.as ], [ 288, %.lr.ph968.preheader ] ; 2 uses
  %.2603 = phi i32 [ %i.bc, %bb.as ], [ 32, %.lr.ph968.preheader ]
  %i.jz = zext nneg i32 %.2608 to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %i.jz
  %i.kb = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ka, i32 noundef %.2603, ptr noundef nonnull @offset_decode_results, i32 noundef 8, i32 noundef 15, ptr noundef nonnull %i.n, ptr noundef null)
  br i1 %i.kb, label %bb.ba, label %.thread836, !prof !57

bb.ba:                                            ; preds = %.thread843
  %i.kc = tail call fastcc noundef zeroext i1 @build_decode_table(ptr noundef nonnull %0, ptr noundef nonnull %0, i32 noundef %.2608, ptr noundef nonnull @litlen_decode_results, i32 noundef 11, i32 noundef 15, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p)
  br i1 %i.kc, label %bb.bb, label %.thread836, !prof !57

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.15688 = phi ptr [ %.14687, %bb.ba ], [ %.3676, %bb.az ] ; 4 uses
  %.18661 = phi i64 [ %.17660, %bb.ba ], [ %i.jv, %bb.az ] ; 2 uses
  %.15633 = phi i32 [ %.14632, %bb.ba ], [ %i.jw, %bb.az ] ; 4 uses
  %.15 = phi i64 [ %.14, %bb.ba ], [ %.3614, %bb.az ] ; 3 uses
  %i.kd = load i32, ptr %i.p, align 4, !tbaa !317
  %i.ke = zext nneg i32 %i.kd to i64
  %notmask = shl nsw i64 -1, %i.ke
  %i.kf = xor i64 %notmask, -1                    ; 7 uses
  %.not753 = icmp ult ptr %.15688, %i.h
  %.not754 = icmp ult ptr %.0700, %i.d
  %or.cond = select i1 %.not753, i1 %.not754, i1 false
  br i1 %or.cond, label %bb.bc, label %.loopexit904.preheader

bb.bc:                                            ; preds = %bb.bb
  %.0.copyload.i805 = load i64, ptr %.15688, align 1
  %i.kg = and i32 %.15633, 255
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = shl i64 %.0.copyload.i805, %i.kh
  %i.kj = or i64 %i.ki, %.18661                   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.15688, i64 7
  %i.kl = lshr i32 %.15633, 3
  %i.km = and i32 %i.kl, 7
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = sub nsw i64 0, %i.kn
  %i.kp = getelementptr inbounds i8, ptr %i.kk, i64 %i.ko
  %i.kq = or i32 %.15633, 56
  %i.kr = and i64 %i.kj, %i.kf
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !31
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit895, %bb.bc
  %.2702 = phi ptr [ %.0700, %bb.bc ], [ %.4704.ph, %.loopexit895 ] ; 5 uses
  %.16689 = phi ptr [ %i.kp, %bb.bc ], [ %.19692.ph, %.loopexit895 ] ; 12 uses
  %.19662 = phi i64 [ %i.kj, %bb.bc ], [ %.24667.ph, %.loopexit895 ] ; 2 uses
  %.16634 = phi i32 [ %i.kq, %bb.bc ], [ %.21639.ph, %.loopexit895 ]
  %.0595 = phi i32 [ %i.kt, %bb.bc ], [ %.4599.ph, %.loopexit895 ] ; 5 uses
  %i.ku = and i32 %.0595, 255
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = lshr i64 %.19662, %i.kv                 ; 4 uses
  %i.kx = sub i32 %.16634, %.0595                 ; 2 uses
  %.not755 = icmp sgt i32 %.0595, -1
  br i1 %.not755, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ky = lshr i32 %.0595, 16
  %i.kz = and i64 %i.kw, %i.kf
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !31 ; 5 uses
  %i.lc = and i32 %i.lb, 255
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = lshr i64 %i.kw, %i.ld                   ; 4 uses
  %i.lf = sub i32 %i.kx, %i.lb                    ; 2 uses
  %i.lg = trunc i32 %i.ky to i8
  %i.lh = getelementptr inbounds nuw i8, ptr %.2702, i64 1 ; 2 uses
  store i8 %i.lg, ptr %.2702, align 1, !tbaa !31
  %.not756 = icmp sgt i32 %i.lb, -1
  br i1 %.not756, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.li = lshr i32 %i.lb, 16
  %i.lj = and i64 %i.le, %i.kf
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lj
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !31 ; 5 uses
  %i.lm = and i32 %i.ll, 255
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = lshr i64 %i.le, %i.ln                   ; 3 uses
  %i.lp = sub i32 %i.lf, %i.ll                    ; 4 uses
  %i.lq = trunc i32 %i.li to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %.2702, i64 2 ; 2 uses
  store i8 %i.lq, ptr %i.lh, align 1, !tbaa !31
  %.not757 = icmp sgt i32 %i.ll, -1
  br i1 %.not757, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ls = lshr i32 %i.ll, 16
  %i.lt = and i64 %i.lo, %i.kf
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !31
  %.0.copyload.i804 = load i64, ptr %.16689, align 1
  %i.lw = and i32 %i.lp, 255
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = shl i64 %.0.copyload.i804, %i.lx
  %i.lz = or i64 %i.ly, %i.lo
  %i.ma = getelementptr inbounds nuw i8, ptr %.16689, i64 7
  %i.mb = lshr i32 %i.lp, 3
  %i.mc = and i32 %i.mb, 7
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = sub nsw i64 0, %i.md
  %i.mf = getelementptr inbounds i8, ptr %i.ma, i64 %i.me
  %i.mg = trunc i32 %i.ls to i8
  %i.mh = getelementptr inbounds nuw i8, ptr %.2702, i64 3
  store i8 %i.mg, ptr %i.lr, align 1, !tbaa !31
  br label %.loopexit895

bb.bh:                                            ; preds = %bb.be, %bb.bf, %bb.bd
  %.3703 = phi ptr [ %i.lr, %bb.bf ], [ %i.lh, %bb.be ], [ %.2702, %bb.bd ] ; 23 uses
  %.20663 = phi i64 [ %i.lo, %bb.bf ], [ %i.le, %bb.be ], [ %i.kw, %bb.bd ] ; 5 uses
  %.0640 = phi i64 [ %i.le, %bb.bf ], [ %i.kw, %bb.be ], [ %.19662, %bb.bd ]
  %.17635 = phi i32 [ %i.lp, %bb.bf ], [ %i.lf, %bb.be ], [ %i.kx, %bb.bd ] ; 3 uses
  %.1596 = phi i32 [ %i.ll, %bb.bf ], [ %i.lb, %bb.be ], [ %.0595, %bb.bd ] ; 6 uses
  %i.mi = and i32 %.1596, 32768
  %.not758 = icmp eq i32 %i.mi, 0
  br i1 %.not758, label %._crit_edge1055, label %bb.bi, !prof !57

._crit_edge1055:                                  ; preds = %bb.bh
  %.pre = and i32 %.1596, 255
  %.pre1056 = zext nneg i32 %.pre to i64
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.mj = and i32 %.1596, 8192
  %.not759 = icmp eq i32 %i.mj, 0
  br i1 %.not759, label %bb.bj, label %.thread869, !prof !57

bb.bj:                                            ; preds = %bb.bi
  %i.mk = lshr i32 %.1596, 16
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = lshr i32 %.1596, 8
  %i.mn = and i32 %i.mm, 31
  %i.mo = zext nneg i32 %i.mn to i64
  %notmask760 = shl nsw i64 -1, %i.mo
  %i.mp = xor i64 %notmask760, -1
  %i.mq = and i64 %.20663, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ml
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !31 ; 6 uses
  %i.mu = and i32 %i.mt, 255
  %i.mv = zext nneg i32 %i.mu to i64              ; 2 uses
  %i.mw = lshr i64 %.20663, %i.mv                 ; 4 uses
  %i.mx = sub i32 %.17635, %i.mt                  ; 5 uses
  %.not761 = icmp sgt i32 %i.mt, -1
  br i1 %.not761, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.my = lshr i32 %i.mt, 16
  %i.mz = and i64 %i.mw, %i.kf
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mz
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !31
  %.0.copyload.i803 = load i64, ptr %.16689, align 1
  %i.nc = and i32 %i.mx, 255
  %i.nd = zext nneg i32 %i.nc to i64
  %i.ne = shl i64 %.0.copyload.i803, %i.nd
  %i.nf = or i64 %i.ne, %i.mw
  %i.ng = getelementptr inbounds nuw i8, ptr %.16689, i64 7
  %i.nh = lshr i32 %i.mx, 3
  %i.ni = and i32 %i.nh, 7
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = sub nsw i64 0, %i.nj
  %i.nl = getelementptr inbounds i8, ptr %i.ng, i64 %i.nk
  %i.nm = trunc i32 %i.my to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %.3703, i64 1
  store i8 %i.nm, ptr %.3703, align 1, !tbaa !31
  br label %.loopexit895

bb.bl:                                            ; preds = %bb.bj
  %i.no = and i32 %i.mt, 8192
  %.not762 = icmp eq i32 %i.no, 0
  br i1 %.not762, label %bb.bm, label %.thread869, !prof !57

bb.bm:                                            ; preds = %._crit_edge1055, %bb.bl
  %.pre-phi1057 = phi i64 [ %.pre1056, %._crit_edge1055 ], [ %i.mv, %bb.bl ]
  %.21664 = phi i64 [ %.20663, %._crit_edge1055 ], [ %i.mw, %bb.bl ] ; 5 uses
  %.1641 = phi i64 [ %.0640, %._crit_edge1055 ], [ %.20663, %bb.bl ]
  %.18636 = phi i32 [ %.17635, %._crit_edge1055 ], [ %i.mx, %bb.bl ] ; 7 uses
  %.2597 = phi i32 [ %.1596, %._crit_edge1055 ], [ %i.mt, %bb.bl ] ; 2 uses
  %i.np = lshr i32 %.2597, 16
  %notmask763 = shl nsw i64 -1, %.pre-phi1057
  %i.nq = xor i64 %notmask763, -1
  %i.nr = and i64 %.1641, %i.nq
  %i.ns = lshr i32 %.2597, 8
  %i.nt = and i32 %i.ns, 255
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = lshr i64 %i.nr, %i.nu
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = add i32 %i.np, %i.nw                    ; 3 uses
  %i.ny = and i64 %.21664, 255
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ny
end_hunk_4
