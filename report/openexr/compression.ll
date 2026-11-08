Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@libdeflate_alloc_compressor_ex:bb.a
  store <4 x i32> splat (i32 2), ptr %i.hb, align 8, !tbaa !16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.hd = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  store <4 x i32> splat (i32 2), ptr %i.hc, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hd, align 8, !tbaa !16
  %i.he = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.hf = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  store <4 x i32> splat (i32 2), ptr %i.he, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hf, align 8, !tbaa !16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.hh = getelementptr inbounds nuw i8, ptr %i.n, i64 312
  store <4 x i32> splat (i32 2), ptr %i.hg, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hh, align 8, !tbaa !16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.n, i64 328
  %i.hj = getelementptr inbounds nuw i8, ptr %i.n, i64 344
  store <4 x i32> splat (i32 2), ptr %i.hi, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hj, align 8, !tbaa !16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  %i.hl = getelementptr inbounds nuw i8, ptr %i.n, i64 376
  store <4 x i32> splat (i32 2), ptr %i.hk, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hl, align 8, !tbaa !16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.n, i64 392
  %i.hn = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  store <4 x i32> splat (i32 2), ptr %i.hm, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hn, align 8, !tbaa !16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.hp = getelementptr inbounds nuw i8, ptr %i.n, i64 440
  store <4 x i32> splat (i32 2), ptr %i.ho, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hp, align 8, !tbaa !16
  %i.hq = getelementptr inbounds nuw i8, ptr %i.n, i64 456
  %i.hr = getelementptr inbounds nuw i8, ptr %i.n, i64 472
  store <4 x i32> splat (i32 2), ptr %i.hq, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hr, align 8, !tbaa !16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.n, i64 488
  %i.ht = getelementptr inbounds nuw i8, ptr %i.n, i64 504
  store <4 x i32> splat (i32 2), ptr %i.hs, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.ht, align 8, !tbaa !16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.n, i64 520
  %i.hv = getelementptr inbounds nuw i8, ptr %i.n, i64 536
  store <4 x i32> splat (i32 2), ptr %i.hu, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hv, align 8, !tbaa !16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.n, i64 552
  %i.hx = getelementptr inbounds nuw i8, ptr %i.n, i64 568
  store <4 x i32> splat (i32 2), ptr %i.hw, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hx, align 8, !tbaa !16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.n, i64 584
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 600
  store <4 x i32> splat (i32 2), ptr %i.hy, align 8, !tbaa !16
  store <4 x i32> splat (i32 2), ptr %i.hz, align 8, !tbaa !16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.n, i64 616
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  store <4 x i32> splat (i32 1), ptr %i.ia, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.ib, align 8, !tbaa !16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  %i.id = getelementptr inbounds nuw i8, ptr %i.n, i64 664
  store <4 x i32> splat (i32 1), ptr %i.ic, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.id, align 8, !tbaa !16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.n, i64 680
  %i.if = getelementptr inbounds nuw i8, ptr %i.n, i64 696
  store <4 x i32> splat (i32 1), ptr %i.ie, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.if, align 8, !tbaa !16
  %i.ig = getelementptr inbounds nuw i8, ptr %i.n, i64 712
  %i.ih = getelementptr inbounds nuw i8, ptr %i.n, i64 728
  store <4 x i32> splat (i32 1), ptr %i.ig, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.ih, align 8, !tbaa !16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.n, i64 744
  %i.ij = getelementptr inbounds nuw i8, ptr %i.n, i64 760
  store <4 x i32> splat (i32 1), ptr %i.ii, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.ij, align 8, !tbaa !16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.n, i64 776
  %i.il = getelementptr inbounds nuw i8, ptr %i.n, i64 792
  store <4 x i32> splat (i32 1), ptr %i.ik, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.il, align 8, !tbaa !16
  %i.im = getelementptr inbounds nuw i8, ptr %i.n, i64 808
  %i.in = getelementptr inbounds nuw i8, ptr %i.n, i64 824
  store <4 x i32> splat (i32 1), ptr %i.im, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.in, align 8, !tbaa !16
  %i.io = getelementptr inbounds nuw i8, ptr %i.n, i64 840
  %i.ip = getelementptr inbounds nuw i8, ptr %i.n, i64 856
  store <4 x i32> splat (i32 1), ptr %i.io, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.ip, align 8, !tbaa !16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.n, i64 872
  %i.ir = getelementptr inbounds nuw i8, ptr %i.n, i64 888
  store <4 x i32> splat (i32 1), ptr %i.iq, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.ir, align 8, !tbaa !16
  %i.is = getelementptr inbounds nuw i8, ptr %i.n, i64 904
  %i.it = getelementptr inbounds nuw i8, ptr %i.n, i64 920
  store <4 x i32> splat (i32 1), ptr %i.is, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.it, align 8, !tbaa !16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.n, i64 936
  %i.iv = getelementptr inbounds nuw i8, ptr %i.n, i64 952
  store <4 x i32> splat (i32 1), ptr %i.iu, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.iv, align 8, !tbaa !16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 968
  %i.ix = getelementptr inbounds nuw i8, ptr %i.n, i64 984
  store <4 x i32> splat (i32 1), ptr %i.iw, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.ix, align 8, !tbaa !16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.n, i64 1000
  %i.iz = getelementptr inbounds nuw i8, ptr %i.n, i64 1016
  store <4 x i32> splat (i32 1), ptr %i.iy, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.iz, align 8, !tbaa !16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.n, i64 1032
  %i.jb = getelementptr inbounds nuw i8, ptr %i.n, i64 1048
  store <4 x i32> splat (i32 1), ptr %i.ja, align 8, !tbaa !16
  store <4 x i32> splat (i32 1), ptr %i.jb, align 8, !tbaa !16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 1064
  store <4 x i32> splat (i32 4), ptr %i.jc, align 8, !tbaa !16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.n, i64 1080
  store <4 x i32> splat (i32 4), ptr %i.jd, align 8, !tbaa !16
  %i.je = getelementptr inbounds nuw i8, ptr %i.n, i64 1096
  store <4 x i32> splat (i32 4), ptr %i.je, align 8, !tbaa !16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.n, i64 1112
  store <4 x i32> splat (i32 4), ptr %i.jf, align 8, !tbaa !16
  %i.jg = getelementptr inbounds nuw i8, ptr %i.n, i64 1128
  store <4 x i32> splat (i32 4), ptr %i.jg, align 8, !tbaa !16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.n, i64 1144
  store <4 x i32> splat (i32 4), ptr %i.jh, align 8, !tbaa !16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.n, i64 1160
  store <4 x i32> splat (i32 2), ptr %i.ji, align 8, !tbaa !16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.n, i64 1176
  store <4 x i32> splat (i32 2), ptr %i.jj, align 8, !tbaa !16
  %i.jk = getelementptr inbounds nuw i8, ptr %i.n, i64 1192 ; 2 uses
  store <4 x i32> splat (i32 1), ptr %i.jk, align 8, !tbaa !16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.n, i64 1208
  store <4 x i32> splat (i32 1), ptr %i.jl, align 8, !tbaa !16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.n, i64 1224
  store <4 x i32> splat (i32 1), ptr %i.jm, align 8, !tbaa !16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.n, i64 1240
  store <4 x i32> splat (i32 1), ptr %i.jn, align 8, !tbaa !16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.n, i64 1256
  store <4 x i32> splat (i32 1), ptr %i.jo, align 8, !tbaa !16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.n, i64 1272
  store <4 x i32> splat (i32 1), ptr %i.jp, align 8, !tbaa !16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.n, i64 1288
  store <4 x i32> splat (i32 1), ptr %i.jq, align 8, !tbaa !16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.n, i64 1304
  store <4 x i32> splat (i32 1), ptr %i.jr, align 8, !tbaa !16
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i = phi i64 [ 131072, %bb.a ], [ %i.t, %bb.b ]
  %.0.i75 = phi ptr [ %i.c, %bb.a ], [ %i.s, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i75, align 16, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i75, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.d, align 16, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i75, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i75, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i75, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i75, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i75, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i75, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i75, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i75, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i75, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i75, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i75, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i75, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i75, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i75, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i75, i64 256
  %i.t = add nsw i64 %.011.i, -256                ; 2 uses
  %.not.i76.3 = icmp eq i64 %i.t, 0
  br i1 %.not.i76.3, label %matchfinder_init_sse2.exit.preheader, label %bb.b, !llvm.loop !0

matchfinder_init_sse2.exit.preheader:             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.b, i32 258)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = ptrtoint ptr %i.u to i64                 ; 3 uses
  %.ptr195 = getelementptr inbounds nuw i8, ptr %0, i64 137152 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2560
  br label %matchfinder_init_sse2.exit

matchfinder_init_sse2.exit:                       ; preds = %matchfinder_init_sse2.exit.preheader, %bb.ar
  %.0169 = phi ptr [ %.2171185, %bb.ar ], [ %1, %matchfinder_init_sse2.exit.preheader ]
  %.0165 = phi i32 [ %.2167187, %bb.ar ], [ 0, %matchfinder_init_sse2.exit.preheader ]
  %.060 = phi ptr [ %.464190, %bb.ar ], [ %1, %matchfinder_init_sse2.exit.preheader ] ; 4 uses
  %.056 = phi i32 [ %.4192, %bb.ar ], [ 258, %matchfinder_init_sse2.exit.preheader ]
  %.055 = phi i32 [ %.3194, %bb.ar ], [ %., %matchfinder_init_sse2.exit.preheader ]
  %i.ad = ptrtoint ptr %.060 to i64               ; 2 uses
  %i.ae = sub i64 %i.v, %i.ad
  %i.af = icmp ult i64 %i.ae, 70535
  %i.ag = getelementptr inbounds nuw i8, ptr %.060, i64 65535
  %.0.i = select i1 %i.af, ptr %i.u, ptr %i.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1280) %i.w, i8 0, i64 1280, i1 false)
  store i32 0, ptr %.ptr195, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.aq, %matchfinder_init_sse2.exit
  %.1170 = phi ptr [ %.0169, %matchfinder_init_sse2.exit ], [ %.2171.ph, %bb.aq ] ; 5 uses
  %.1166 = phi i32 [ %.0165, %matchfinder_init_sse2.exit ], [ %.2167.ph, %bb.aq ] ; 3 uses
  %.0163.idx = phi i64 [ 137152, %matchfinder_init_sse2.exit ], [ %.1164.ph.idx, %bb.aq ] ; 3 uses
  %.161 = phi ptr [ %.060, %matchfinder_init_sse2.exit ], [ %.464.ph, %bb.aq ] ; 28 uses
  %.157 = phi i32 [ %.056, %matchfinder_init_sse2.exit ], [ %.359, %bb.aq ]
  %.1 = phi i32 [ %.055, %matchfinder_init_sse2.exit ], [ %.2, %bb.aq ] ; 4 uses
  %.0163.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0163.idx ; 12 uses
  %i.ah = ptrtoint ptr %.161 to i64               ; 3 uses
  %i.ai = sub i64 %i.v, %i.ah                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 258
  br i1 %i.aj, label %bb.d, label %bb.f, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.ak = trunc nuw i64 %i.ai to i32              ; 5 uses
  %i.al = icmp samesign ult i64 %i.ai, 5
  br i1 %i.al, label %.preheader202.preheader, label %bb.e

.preheader202.preheader:                          ; preds = %bb.d
  %xtraiter309 = and i32 %i.ak, 1
  %lcmp.mod310.not = icmp eq i32 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.preheader202.prol.loopexit, label %.preheader202.prol

.preheader202.prol:                               ; preds = %.preheader202.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %.161, i64 1 ; 2 uses
  %i.an = load i8, ptr %.161, align 1, !tbaa !36
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !16
  %i.as = load i32, ptr %.0163.ptr, align 4, !tbaa !43
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %.0163.ptr, align 4, !tbaa !43
  %i.au = add nsw i32 %i.ak, -1
  br label %.preheader202.prol.loopexit

.preheader202.prol.loopexit:                      ; preds = %.preheader202.prol, %.preheader202.preheader
  %.lcssa308.unr = phi ptr [ poison, %.preheader202.preheader ], [ %i.am, %.preheader202.prol ]
  %.262.unr = phi ptr [ %.161, %.preheader202.preheader ], [ %i.am, %.preheader202.prol ]
  %.258.unr = phi i32 [ %i.ak, %.preheader202.preheader ], [ %i.au, %.preheader202.prol ]
  %i.av = icmp eq i64 %i.ai, 1
  br i1 %i.av, label %.loopexit203, label %.preheader202

.preheader202:                                    ; preds = %.preheader202.prol.loopexit, %.preheader202
  %.262 = phi ptr [ %i.be, %.preheader202 ], [ %.262.unr, %.preheader202.prol.loopexit ] ; 3 uses
  %.258 = phi i32 [ %i.bm, %.preheader202 ], [ %.258.unr, %.preheader202.prol.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.262, i64 1
  %i.ax = load i8, ptr %.262, align 1, !tbaa !36
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !16
  %i.bc = load i32, ptr %.0163.ptr, align 4, !tbaa !43
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %.0163.ptr, align 4, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %.262, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.aw, align 1, !tbaa !36
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !16
  %i.bk = load i32, ptr %.0163.ptr, align 4, !tbaa !43
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %.0163.ptr, align 4, !tbaa !43
  %i.bm = add i32 %.258, -2                       ; 2 uses
  %.not71.1 = icmp eq i32 %i.bm, 0
  br i1 %.not71.1, label %.loopexit203, label %.preheader202, !llvm.loop !117

bb.e:                                             ; preds = %bb.d
  %i.bn = tail call i32 @llvm.umin.i32(i32 %.1, i32 %i.ak)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.359 = phi i32 [ %i.ak, %bb.e ], [ %.157, %bb.c ] ; 16 uses
  %.2 = phi i32 [ %i.bn, %bb.e ], [ %.1, %bb.c ]  ; 3 uses
  %i.bo = ptrtoint ptr %.1170 to i64
  %i.bp = sub i64 %i.ah, %i.bo                    ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i64 %i.bp, 4294967295
  %i.bs = icmp eq i64 %i.br, 32768
  br i1 %i.bs, label %.preheader201, label %bb.g

.preheader201:                                    ; preds = %bb.f, %.preheader201
  %.015.i = phi i64 [ %i.cr, %.preheader201 ], [ 131072, %bb.f ]
  %.0.i116 = phi ptr [ %i.cq, %.preheader201 ], [ %i.c, %bb.f ] ; 10 uses
  %i.bt = load <8 x i16>, ptr %.0.i116, align 16, !tbaa !36
  %i.bu = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bt, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.bu, ptr %.0.i116, align 16, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i116, i64 16 ; 2 uses
  %i.bw = load <8 x i16>, ptr %i.bv, align 16, !tbaa !36
  %i.bx = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bw, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.bx, ptr %i.bv, align 16, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i116, i64 32 ; 2 uses
  %i.bz = load <8 x i16>, ptr %i.by, align 16, !tbaa !36
  %i.ca = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bz, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ca, ptr %i.by, align 16, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i116, i64 48 ; 2 uses
  %i.cc = load <8 x i16>, ptr %i.cb, align 16, !tbaa !36
  %i.cd = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cc, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cd, ptr %i.cb, align 16, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i116, i64 64 ; 2 uses
  %i.cf = load <8 x i16>, ptr %i.ce, align 16, !tbaa !36
  %i.cg = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cf, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cg, ptr %i.ce, align 16, !tbaa !36
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i116, i64 80 ; 2 uses
  %i.ci = load <8 x i16>, ptr %i.ch, align 16, !tbaa !36
  %i.cj = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cj, ptr %i.ch, align 16, !tbaa !36
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i116, i64 96 ; 2 uses
  %i.cl = load <8 x i16>, ptr %i.ck, align 16, !tbaa !36
  %i.cm = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cl, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cm, ptr %i.ck, align 16, !tbaa !36
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.i116, i64 112 ; 2 uses
  %i.co = load <8 x i16>, ptr %i.cn, align 16, !tbaa !36
  %i.cp = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cp, ptr %i.cn, align 16, !tbaa !36
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i116, i64 128
  %i.cr = add nsw i64 %.015.i, -128               ; 2 uses
  %.not.i117.1 = icmp eq i64 %i.cr, 0
  br i1 %.not.i117.1, label %matchfinder_rebase_sse2.exit, label %.preheader201, !llvm.loop !1

matchfinder_rebase_sse2.exit:                     ; preds = %.preheader201
  %i.cs = getelementptr inbounds nuw i8, ptr %.1170, i64 32768
  br label %bb.g

bb.g:                                             ; preds = %matchfinder_rebase_sse2.exit, %bb.f
  %.3172 = phi ptr [ %i.cs, %matchfinder_rebase_sse2.exit ], [ %.1170, %bb.f ] ; 8 uses
  %.0.i73 = phi i32 [ 0, %matchfinder_rebase_sse2.exit ], [ %i.bq, %bb.f ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.161, i64 1 ; 4 uses
  %.0.copyload.i = load i32, ptr %i.ct, align 1
  %i.cu = mul i32 %.0.copyload.i, 506832829
  %i.cv = lshr i32 %i.cu, 17                      ; 5 uses
  %.0.copyload.i83 = load i32, ptr %.161, align 1 ; 3 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cw
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cx, i32 1, i32 3, i32 1)
  %i.cy = zext nneg i32 %.1166 to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cy ; 3 uses
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !45 ; 3 uses
  %i.db = trunc i32 %.0.i73 to i16
  store i16 %i.db, ptr %i.cz, align 4, !tbaa !45
  %i.dc = sext i16 %i.da to i32
  %i.dd = shl i32 %.0.i73, 16
  %sext.i = ashr exact i32 %i.dd, 16
  %i.de = xor i32 %sext.i, -32768                 ; 3 uses
  %.not.i = icmp slt i32 %i.de, %i.dc
  br i1 %.not.i, label %bb.h, label %ht_matchfinder_longest_match.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.df = sext i16 %i.da to i64
  %i.dg = getelementptr inbounds i8, ptr %.3172, i64 %i.df ; 11 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 2 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !45 ; 4 uses
  store i16 %i.da, ptr %i.dh, align 2, !tbaa !45
  %.0.copyload.i82 = load i32, ptr %i.dg, align 1
  %i.dj = icmp eq i32 %.0.copyload.i82, %.0.copyload.i83
  br i1 %i.dj, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.dk = add nsw i32 %.359, -36
  %i.dl = icmp ult i32 %i.dk, -32                 ; 2 uses
  br i1 %i.dl, label %bb.j, label %.preheader293, !prof !46

bb.j:                                             ; preds = %bb.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %.0.copyload.i139 = load i64, ptr %i.dm, align 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.161, i64 4
  %.0.copyload.i138 = load i64, ptr %i.dn, align 1 ; 2 uses
  %i.do = xor i64 %.0.copyload.i138, %.0.copyload.i139
  %.not.i97 = icmp eq i64 %.0.copyload.i139, %.0.copyload.i138
  br i1 %.not.i97, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %.0.copyload.i137 = load i64, ptr %i.dp, align 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.161, i64 12
  %.0.copyload.i136 = load i64, ptr %i.dq, align 1 ; 2 uses
  %i.dr = xor i64 %.0.copyload.i136, %.0.copyload.i137
  %.not54.i98 = icmp eq i64 %.0.copyload.i137, %.0.copyload.i136
  br i1 %.not54.i98, label %bb.l, label %bb.q
end_hunk_0
begin_hunk_1_@deflate_compress_fastest:bb.a
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i119, i64 80 ; 2 uses
  %i.jw = load <8 x i16>, ptr %i.jv, align 16, !tbaa !36
  %i.jx = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jw, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jx, ptr %i.jv, align 16, !tbaa !36
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i119, i64 96 ; 2 uses
  %i.jz = load <8 x i16>, ptr %i.jy, align 16, !tbaa !36
  %i.ka = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jz, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ka, ptr %i.jy, align 16, !tbaa !36
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.i119, i64 112 ; 2 uses
  %i.kc = load <8 x i16>, ptr %i.kb, align 16, !tbaa !36
  %i.kd = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kc, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.kd, ptr %i.kb, align 16, !tbaa !36
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i119, i64 128
  %i.kf = add nsw i64 %.015.i118, -128            ; 2 uses
  %.not.i120.1 = icmp eq i64 %i.kf, 0
  br i1 %.not.i120.1, label %matchfinder_rebase_sse2.exit121, label %.preheader, !llvm.loop !1

matchfinder_rebase_sse2.exit121:                  ; preds = %.preheader
  %i.kg = getelementptr inbounds nuw i8, ptr %.3172, i64 32768
  %i.kh = add i32 %i.jd, -32768
  br label %bb.ap

bb.ap:                                            ; preds = %matchfinder_rebase_sse2.exit121, %bb.ao
  %.4173 = phi ptr [ %i.kg, %matchfinder_rebase_sse2.exit121 ], [ %.3172, %bb.ao ]
  %.031.i = phi i32 [ %i.kh, %matchfinder_rebase_sse2.exit121 ], [ %i.jd, %bb.ao ] ; 3 uses
  %xtraiter = and i32 %i.iv, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i.prol.loopexit, label %.critedge.i.prol

.critedge.i.prol:                                 ; preds = %bb.ap
  %i.ki = zext nneg i32 %i.cv to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ki ; 3 uses
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !45
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 2
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !45
  %i.km = trunc i32 %.031.i to i16
  store i16 %i.km, ptr %i.kj, align 4, !tbaa !45
  %i.kn = getelementptr inbounds nuw i8, ptr %.161, i64 2 ; 2 uses
  %.0.copyload.i77.prol = load i32, ptr %i.kn, align 1
  %i.ko = mul i32 %.0.copyload.i77.prol, 506832829
  %i.kp = lshr i32 %i.ko, 17                      ; 2 uses
  %i.kq = add nsw i32 %.031.i, 1
  %i.kr = add i32 %.068.i, -2
  br label %.critedge.i.prol.loopexit

.critedge.i.prol.loopexit:                        ; preds = %.critedge.i.prol, %bb.ap
  %.lcssa.unr = phi i32 [ poison, %bb.ap ], [ %i.kp, %.critedge.i.prol ]
  %.032.i.unr = phi ptr [ %i.ct, %bb.ap ], [ %i.kn, %.critedge.i.prol ]
  %.1.i.unr = phi i32 [ %.031.i, %bb.ap ], [ %i.kq, %.critedge.i.prol ]
  %.030.i.unr = phi i32 [ %i.cv, %bb.ap ], [ %i.kp, %.critedge.i.prol ]
  %.029.i.unr = phi i32 [ %i.iv, %bb.ap ], [ %i.kr, %.critedge.i.prol ]
  %i.ks = icmp eq i32 %.068.i, 2
  br i1 %i.ks, label %.unr-lcssa, label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.prol.loopexit, %.critedge.i
  %.032.i = phi ptr [ %i.lh, %.critedge.i ], [ %.032.i.unr, %.critedge.i.prol.loopexit ] ; 2 uses
  %.1.i = phi i32 [ %i.lk, %.critedge.i ], [ %.1.i.unr, %.critedge.i.prol.loopexit ] ; 3 uses
  %.030.i = phi i32 [ %i.lj, %.critedge.i ], [ %.030.i.unr, %.critedge.i.prol.loopexit ]
  %.029.i = phi i32 [ %i.ll, %.critedge.i ], [ %.029.i.unr, %.critedge.i.prol.loopexit ]
  %i.kt = zext nneg i32 %.030.i to i64
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kt ; 3 uses
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !45
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !45
  %i.kx = trunc i32 %.1.i to i16
  store i16 %i.kx, ptr %i.ku, align 4, !tbaa !45
  %i.ky = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %.0.copyload.i77 = load i32, ptr %i.ky, align 1
  %i.kz = mul i32 %.0.copyload.i77, 506832829
  %i.la = lshr i32 %i.kz, 17
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lb ; 3 uses
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !45
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  store i16 %i.ld, ptr %i.le, align 2, !tbaa !45
  %i.lf = trunc i32 %.1.i to i16
  %i.lg = add i16 %i.lf, 1
  store i16 %i.lg, ptr %i.lc, align 4, !tbaa !45
  %i.lh = getelementptr inbounds nuw i8, ptr %.032.i, i64 2 ; 2 uses
  %.0.copyload.i77.1 = load i32, ptr %i.lh, align 1
  %i.li = mul i32 %.0.copyload.i77.1, 506832829
  %i.lj = lshr i32 %i.li, 17                      ; 2 uses
  %i.lk = add nsw i32 %.1.i, 2
  %i.ll = add i32 %.029.i, -2                     ; 2 uses
  %.not.i74.1 = icmp eq i32 %i.ll, 0
  br i1 %.not.i74.1, label %.unr-lcssa, label %.critedge.i, !llvm.loop !118

.unr-lcssa:                                       ; preds = %.critedge.i, %.critedge.i.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.critedge.i.prol.loopexit ], [ %i.lj, %.critedge.i ] ; 2 uses
  %i.lm = zext nneg i32 %.lcssa to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lm
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ln, i32 1, i32 3, i32 1)
  br label %ht_matchfinder_skip_bytes.exit

ht_matchfinder_skip_bytes.exit:                   ; preds = %bb.an, %.unr-lcssa
  %.5 = phi ptr [ %.3172, %bb.an ], [ %.4173, %.unr-lcssa ]
  %.3168 = phi i32 [ %i.cv, %bb.an ], [ %.lcssa, %.unr-lcssa ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.161, i64 %i.hs
  br label %bb.aq

ht_matchfinder_longest_match.exit.thread:         ; preds = %bb.ac, %bb.ad, %bb.g, %ht_matchfinder_longest_match.exit
  %i.lp = load i8, ptr %.161, align 1, !tbaa !36
  %i.lq = zext i8 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.lq ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !16
  %i.lt = add i32 %i.ls, 1
  store i32 %i.lt, ptr %i.lr, align 4, !tbaa !16
  %i.lu = load i32, ptr %.0163.ptr, align 4, !tbaa !43
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %.0163.ptr, align 4, !tbaa !43
  br label %bb.aq

bb.aq:                                            ; preds = %ht_matchfinder_longest_match.exit.thread, %ht_matchfinder_skip_bytes.exit
  %.2171.ph = phi ptr [ %.5, %ht_matchfinder_skip_bytes.exit ], [ %.3172, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.2167.ph = phi i32 [ %.3168, %ht_matchfinder_skip_bytes.exit ], [ %i.cv, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.1164.ph.idx = phi i64 [ %.0163.add, %ht_matchfinder_skip_bytes.exit ], [ %.0163.idx, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.464.ph = phi ptr [ %i.lo, %ht_matchfinder_skip_bytes.exit ], [ %i.ct, %ht_matchfinder_longest_match.exit.thread ] ; 3 uses
  %i.lw = icmp ult ptr %.464.ph, %.0.i
  %i.lx = icmp slt i64 %.1164.ph.idx, 202688
  %i.ly = select i1 %i.lw, i1 %i.lx, i1 false
  br i1 %i.ly, label %bb.c, label %.loopexit203, !llvm.loop !119

.loopexit203:                                     ; preds = %bb.aq, %.preheader202.prol.loopexit, %.preheader202
  %.3194 = phi i32 [ %.1, %.preheader202.prol.loopexit ], [ %.1, %.preheader202 ], [ %.2, %bb.aq ]
  %.4192 = phi i32 [ 0, %.preheader202.prol.loopexit ], [ 0, %.preheader202 ], [ %.359, %bb.aq ]
  %.464190 = phi ptr [ %i.be, %.preheader202 ], [ %.lcssa308.unr, %.preheader202.prol.loopexit ], [ %.464.ph, %bb.aq ] ; 3 uses
  %.2167187 = phi i32 [ %.1166, %.preheader202.prol.loopexit ], [ %.1166, %.preheader202 ], [ %.2167.ph, %bb.aq ]
  %.2171185 = phi ptr [ %.1170, %.preheader202.prol.loopexit ], [ %.1170, %.preheader202 ], [ %.2171.ph, %bb.aq ]
  %i.lz = ptrtoint ptr %.464190 to i64
  %i.ma = sub i64 %i.lz, %i.ad
  %i.mb = trunc i64 %i.ma to i32
  %i.mc = icmp eq ptr %.464190, %i.u              ; 2 uses
  %i.md = load i32, ptr %i.y, align 8, !tbaa !16
  %i.me = add i32 %i.md, 1
  store i32 %i.me, ptr %i.y, align 8, !tbaa !16
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.w, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.z)
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.x, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac)
  tail call fastcc void @deflate_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.060, i32 noundef %i.mb, ptr noundef nonnull readonly %.ptr195, i1 noundef zeroext %i.mc)
  br i1 %i.mc, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %.loopexit203
  %i.mf = load i8, ptr %4, align 8, !tbaa !52, !range !53, !noundef !54
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %.critedge, label %matchfinder_init_sse2.exit, !llvm.loop !120

.critedge:                                        ; preds = %.loopexit203, %bb.ar
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_greedy(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 72 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i.i = phi i64 [ 196608, %bb.a ], [ %i.u, %bb.b ]
  %.0.i.i = phi ptr [ %i.d, %bb.a ], [ %i.t, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i.i, align 16, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.s, align 16, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 256
  %i.u = add nsw i64 %.011.i.i, -256              ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.3, label %hc_matchfinder_init.exit.preheader, label %bb.b, !llvm.loop !0

hc_matchfinder_init.exit.preheader:               ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.c, i32 258)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = ptrtoint ptr %i.v to i64                 ; 4 uses
  %.ptr106 = getelementptr inbounds nuw i8, ptr %0, i64 268224 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 71616 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 202688 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  br label %hc_matchfinder_init.exit

hc_matchfinder_init.exit:                         ; preds = %hc_matchfinder_init.exit.preheader, %bb.bd
  %.0101 = phi ptr [ %.2103, %bb.bd ], [ %1, %hc_matchfinder_init.exit.preheader ]
  %.098 = phi i32 [ %.2100, %bb.bd ], [ 258, %hc_matchfinder_init.exit.preheader ]
  %.095 = phi i32 [ %.297, %bb.bd ], [ %., %hc_matchfinder_init.exit.preheader ]
  %.sroa.8.0 = phi i32 [ %.sroa.8.2, %bb.bd ], [ 0, %hc_matchfinder_init.exit.preheader ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.2, %bb.bd ], [ 0, %hc_matchfinder_init.exit.preheader ]
  %.0 = phi ptr [ %.2, %bb.bd ], [ %1, %hc_matchfinder_init.exit.preheader ] ; 9 uses
  %i.cu = ptrtoint ptr %.0 to i64                 ; 4 uses
  %i.cv = sub i64 %i.w, %i.cu
  %i.cw = icmp ult i64 %i.cv, 305000
  %i.cx = getelementptr inbounds nuw i8, ptr %.0, i64 300000
  %.0.i = select i1 %i.cw, ptr %i.v, ptr %i.cx    ; 2 uses
  store i32 0, ptr %.ptr106, align 4, !tbaa !43
  %i.cy = ptrtoint ptr %.0.i to i64
  %i.cz = sub i64 %i.cy, %i.cu                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1368) %i.y, i8 0, i64 1368, i1 false)
  %i.da = load i32, ptr %i.z, align 32, !tbaa !35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.db = icmp ult i64 %i.cz, 512
  br i1 %i.db, label %calculate_min_match_len.exit, label %.new

.new:                                             ; preds = %hc_matchfinder_init.exit
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 4096) ; 2 uses
  %xtraiter = and i64 %i.dc, 3                    ; 3 uses
  %unroll_iter = and i64 %i.dc, 8188
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.017.i = phi i64 [ 0, %.new ], [ %i.dw, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0, i64 %.017.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !36
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  store i8 1, ptr %i.dg, align 1, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %.0, i64 %.017.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !36
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dk
  store i8 1, ptr %i.dl, align 1, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %.0, i64 %.017.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !36
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dp
  store i8 1, ptr %i.dq, align 1, !tbaa !36
  %i.dr = getelementptr inbounds nuw i8, ptr %.0, i64 %.017.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !36
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.du
  store i8 1, ptr %i.dv, align 1, !tbaa !36
  %i.dw = add nuw nsw i64 %.017.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %vector.body.preheader.unr-lcssa, label %bb.c, !llvm.loop !4

vector.body.preheader.unr-lcssa:                  ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.body, label %.epil.preheader

.epil.preheader:                                  ; preds = %vector.body.preheader.unr-lcssa
  %lcmp.mod299 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod299)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.017.i.epil = phi i64 [ %i.dw, %.epil.preheader ], [ %i.eb, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0, i64 %.017.i.epil
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !36
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dz
  store i8 1, ptr %i.ea, align 1, !tbaa !36
  %i.eb = add nuw nsw i64 %.017.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %vector.body, label %bb.d, !llvm.loop !121

vector.body:                                      ; preds = %vector.body.preheader.unr-lcssa, %bb.d
  %wide.load = load <4 x i8>, ptr %i.a, align 16, !tbaa !36
  %wide.load263 = load <4 x i8>, ptr %i.aj, align 4, !tbaa !36
  %i.ec = zext <4 x i8> %wide.load to <4 x i32>
  %i.ed = zext <4 x i8> %wide.load263 to <4 x i32>
  %wide.load.1 = load <4 x i8>, ptr %i.ak, align 8, !tbaa !36
  %wide.load263.1 = load <4 x i8>, ptr %i.al, align 4, !tbaa !36
  %i.ee = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.ef = zext <4 x i8> %wide.load263.1 to <4 x i32>
  %i.eg = add nuw nsw <4 x i32> %i.ec, %i.ee
  %i.eh = add nuw nsw <4 x i32> %i.ed, %i.ef
  %wide.load.2 = load <4 x i8>, ptr %i.am, align 16, !tbaa !36
  %wide.load263.2 = load <4 x i8>, ptr %i.an, align 4, !tbaa !36
  %i.ei = zext <4 x i8> %wide.load.2 to <4 x i32>
  %i.ej = zext <4 x i8> %wide.load263.2 to <4 x i32>
  %i.ek = add nuw nsw <4 x i32> %i.eg, %i.ei
  %i.el = add nuw nsw <4 x i32> %i.eh, %i.ej
  %wide.load.3 = load <4 x i8>, ptr %i.ao, align 8, !tbaa !36
  %wide.load263.3 = load <4 x i8>, ptr %i.ap, align 4, !tbaa !36
  %i.em = zext <4 x i8> %wide.load.3 to <4 x i32>
  %i.en = zext <4 x i8> %wide.load263.3 to <4 x i32>
  %i.eo = add nuw nsw <4 x i32> %i.ek, %i.em
  %i.ep = add nuw nsw <4 x i32> %i.el, %i.en
  %wide.load.4 = load <4 x i8>, ptr %i.aq, align 16, !tbaa !36
  %wide.load263.4 = load <4 x i8>, ptr %i.ar, align 4, !tbaa !36
  %i.eq = zext <4 x i8> %wide.load.4 to <4 x i32>
  %i.er = zext <4 x i8> %wide.load263.4 to <4 x i32>
  %i.es = add nuw nsw <4 x i32> %i.eo, %i.eq
  %i.et = add nuw nsw <4 x i32> %i.ep, %i.er
  %wide.load.5 = load <4 x i8>, ptr %i.as, align 8, !tbaa !36
  %wide.load263.5 = load <4 x i8>, ptr %i.at, align 4, !tbaa !36
  %i.eu = zext <4 x i8> %wide.load.5 to <4 x i32>
  %i.ev = zext <4 x i8> %wide.load263.5 to <4 x i32>
  %i.ew = add nuw nsw <4 x i32> %i.es, %i.eu
  %i.ex = add nuw nsw <4 x i32> %i.et, %i.ev
  %wide.load.6 = load <4 x i8>, ptr %i.au, align 16, !tbaa !36
  %wide.load263.6 = load <4 x i8>, ptr %i.av, align 4, !tbaa !36
  %i.ey = zext <4 x i8> %wide.load.6 to <4 x i32>
  %i.ez = zext <4 x i8> %wide.load263.6 to <4 x i32>
  %i.fa = add nuw nsw <4 x i32> %i.ew, %i.ey
  %i.fb = add nuw nsw <4 x i32> %i.ex, %i.ez
  %wide.load.7 = load <4 x i8>, ptr %i.aw, align 8, !tbaa !36
  %wide.load263.7 = load <4 x i8>, ptr %i.ax, align 4, !tbaa !36
  %i.fc = zext <4 x i8> %wide.load.7 to <4 x i32>
  %i.fd = zext <4 x i8> %wide.load263.7 to <4 x i32>
  %i.fe = add <4 x i32> %i.fa, %i.fc
  %i.ff = add <4 x i32> %i.fb, %i.fd
  %wide.load.8 = load <4 x i8>, ptr %i.ay, align 16, !tbaa !36
  %wide.load263.8 = load <4 x i8>, ptr %i.az, align 4, !tbaa !36
  %i.fg = zext <4 x i8> %wide.load.8 to <4 x i32>
  %i.fh = zext <4 x i8> %wide.load263.8 to <4 x i32>
  %i.fi = add <4 x i32> %i.fe, %i.fg
  %i.fj = add <4 x i32> %i.ff, %i.fh
  %wide.load.9 = load <4 x i8>, ptr %i.ba, align 8, !tbaa !36
end_hunk_1
begin_hunk_2_@deflate_compress_greedy:bb.a
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 80 ; 2 uses
  %i.sd = load <8 x i16>, ptr %i.sc, align 16, !tbaa !36
  %i.se = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sd, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.se, ptr %i.sc, align 16, !tbaa !36
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 96 ; 2 uses
  %i.sg = load <8 x i16>, ptr %i.sf, align 16, !tbaa !36
  %i.sh = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sg, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.sh, ptr %i.sf, align 16, !tbaa !36
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 112 ; 2 uses
  %i.sj = load <8 x i16>, ptr %i.si, align 16, !tbaa !36
  %i.sk = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.sj, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.sk, ptr %i.si, align 16, !tbaa !36
  %i.sl = getelementptr inbounds nuw i8, ptr %.0.i.i72, i64 128
  %i.sm = add nsw i64 %.015.i.i, -128             ; 2 uses
  %.not.i.i73.1 = icmp eq i64 %i.sm, 0
  br i1 %.not.i.i73.1, label %hc_matchfinder_slide_window.exit, label %.preheader, !llvm.loop !1

hc_matchfinder_slide_window.exit:                 ; preds = %.preheader
  %i.sn = getelementptr inbounds nuw i8, ptr %.4, i64 32768
  br label %bb.ax

bb.ax:                                            ; preds = %hc_matchfinder_slide_window.exit, %bb.aw
  %.5 = phi ptr [ %i.sn, %hc_matchfinder_slide_window.exit ], [ %.4, %bb.aw ] ; 2 uses
  %.1.i68 = phi i32 [ 0, %hc_matchfinder_slide_window.exit ], [ %.035.i, %bb.aw ] ; 3 uses
  %i.so = trunc i32 %.1.i68 to i16                ; 2 uses
  %i.sp = zext nneg i32 %.034.i to i64
  %i.sq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.sp
  store i16 %i.so, ptr %i.sq, align 2, !tbaa !45
  %i.sr = zext nneg i32 %.033.i to i64
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.sr ; 2 uses
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !45
  %i.su = zext i32 %.1.i68 to i64
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.su
  store i16 %i.st, ptr %i.sv, align 2, !tbaa !45
  store i16 %i.so, ptr %i.ss, align 2, !tbaa !45
  %i.sw = getelementptr inbounds nuw i8, ptr %.036.i, i64 1 ; 2 uses
  %.0.copyload.i.i69 = load i32, ptr %i.sw, align 1 ; 2 uses
  %i.sx = and i32 %.0.copyload.i.i69, 16777215
  %i.sy = mul i32 %i.sx, 506832829
  %i.sz = lshr i32 %i.sy, 17                      ; 3 uses
  %i.ta = mul i32 %.0.copyload.i.i69, 506832829
  %i.tb = lshr i32 %i.ta, 16                      ; 3 uses
  %i.tc = add i32 %.1.i68, 1
  %i.td = add i32 %.0.i67, -1                     ; 2 uses
  %.not.i70 = icmp eq i32 %i.td, 0
  br i1 %.not.i70, label %bb.ay, label %bb.aw, !llvm.loop !5

bb.ay:                                            ; preds = %bb.ax
  %i.te = zext nneg i32 %i.sz to i64
  %i.tf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.te
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tf, i32 1, i32 3, i32 1)
  %i.tg = zext nneg i32 %i.tb to i64
  %i.th = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.tg
  tail call void @llvm.prefetch.p0(ptr nonnull %i.th, i32 1, i32 3, i32 1)
  br label %hc_matchfinder_skip_bytes.exit

hc_matchfinder_skip_bytes.exit:                   ; preds = %bb.au, %bb.ay
  %.6 = phi ptr [ %.3, %bb.au ], [ %.5, %bb.ay ]
  %.sroa.8.4 = phi i32 [ %.sroa.8.3, %bb.au ], [ %i.tb, %bb.ay ]
  %.sroa.0.4 = phi i32 [ %.sroa.0.3, %bb.au ], [ %i.sz, %bb.ay ]
  %i.ti = getelementptr inbounds nuw i8, ptr %.1, i64 %i.pt
  br label %bb.ba

bb.az:                                            ; preds = %bb.at, %hc_matchfinder_longest_match.exit
  %i.tj = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.tk = load i8, ptr %.1, align 1, !tbaa !36    ; 2 uses
  %i.tl = zext i8 %i.tk to i32                    ; 2 uses
  %i.tm = zext i8 %i.tk to i64
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.tm ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !16
  %i.tp = add i32 %i.to, 1
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !16
  %i.tq = lshr i32 %i.tl, 5
  %i.tr = and i32 %i.tq, 6
  %i.ts = and i32 %i.tl, 1
  %i.tt = or disjoint i32 %i.tr, %i.ts
  %i.tu = zext nneg i32 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.tu ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !16
  %i.tx = add i32 %i.tw, 1
  store i32 %i.tx, ptr %i.tv, align 4, !tbaa !16
  %i.ty = load i32, ptr %i.ad, align 8, !tbaa !55
  %i.tz = add i32 %i.ty, 1
  store i32 %i.tz, ptr %i.ad, align 8, !tbaa !55
  %i.ua = load i32, ptr %.093.ptr, align 4, !tbaa !43
  %i.ub = add i32 %i.ua, 1
  store i32 %i.ub, ptr %.093.ptr, align 4, !tbaa !43
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %hc_matchfinder_skip_bytes.exit
  %.2103 = phi ptr [ %.3, %bb.az ], [ %.6, %hc_matchfinder_skip_bytes.exit ] ; 2 uses
  %.sroa.8.2 = phi i32 [ %.sroa.8.3, %bb.az ], [ %.sroa.8.4, %hc_matchfinder_skip_bytes.exit ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %.sroa.0.3, %bb.az ], [ %.sroa.0.4, %hc_matchfinder_skip_bytes.exit ] ; 2 uses
  %.194.idx = phi i64 [ %.093.idx, %bb.az ], [ %.093.add, %hc_matchfinder_skip_bytes.exit ] ; 2 uses
  %.2 = phi ptr [ %i.tj, %bb.az ], [ %i.ti, %hc_matchfinder_skip_bytes.exit ] ; 6 uses
  %i.uc = icmp ult ptr %.2, %.0.i
  %i.ud = icmp slt i64 %.194.idx, 668224
  %or.cond62 = select i1 %i.uc, i1 %i.ud, i1 false
  br i1 %or.cond62, label %bb.bb, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.ba
  %.pre = ptrtoint ptr %.2 to i64
  %.pre167 = sub i64 %.pre, %i.cu
  %.pre169 = trunc i64 %.pre167 to i32
  br label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %i.ue = load i32, ptr %i.ad, align 8, !tbaa !55
  %i.uf = icmp ugt i32 %i.ue, 511
  br i1 %i.uf, label %bb.bc, label %.backedge.backedge

bb.bc:                                            ; preds = %bb.bb
  %i.ug = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.uh = sub i64 %i.ug, %i.cu                    ; 2 uses
  %i.ui = icmp sgt i64 %i.uh, 4999
  %i.uj = sub i64 %i.w, %i.ug
  %i.uk = icmp sgt i64 %i.uj, 4999
  %or.cond105 = and i1 %i.ui, %i.uk
  br i1 %or.cond105, label %.split, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bc, %bb.bb, %.split
  br label %.backedge, !llvm.loop !122

.split:                                           ; preds = %bb.bc
  %i.ul = trunc i64 %i.uh to i32                  ; 2 uses
  %i.um = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.x, i32 noundef %i.ul)
  br i1 %i.um, label %.critedge, label %.backedge.backedge

.critedge:                                        ; preds = %.split, %..critedge_crit_edge
  %.pre-phi170 = phi i32 [ %.pre169, %..critedge_crit_edge ], [ %i.ul, %.split ]
  %i.un = icmp eq ptr %.2, %i.v                   ; 2 uses
  %i.uo = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.up = add i32 %i.uo, 1
  store i32 %i.up, ptr %i.ae, align 8, !tbaa !16
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.y, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.af)
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ac, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai)
  tail call fastcc void @deflate_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0, i32 noundef %.pre-phi170, ptr noundef nonnull readonly %.ptr106, i1 noundef zeroext %i.un)
  br i1 %i.un, label %.critedge3, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.uq = load i8, ptr %4, align 8, !tbaa !52, !range !53, !noundef !54
  %i.ur = trunc nuw i8 %i.uq to i1
  br i1 %i.ur, label %.critedge3, label %hc_matchfinder_init.exit, !llvm.loop !123

.critedge3:                                       ; preds = %.critedge, %bb.bd
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_lazy(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 72 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34, !alias.scope !128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 13 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i.i.i = phi i64 [ 196608, %bb.a ], [ %i.u, %bb.b ]
  %.0.i.i.i = phi ptr [ %i.d, %bb.a ], [ %i.t, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i.i.i, align 16, !tbaa !36, !alias.scope !128
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !36, !alias.scope !128
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !36, !alias.scope !128
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !36, !alias.scope !128
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !36, !alias.scope !128
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !36, !alias.scope !128
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !36, !alias.scope !128
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !36, !alias.scope !128
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !36, !alias.scope !128
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !36, !alias.scope !128
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !36, !alias.scope !128
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !36, !alias.scope !128
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !36, !alias.scope !128
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !36, !alias.scope !128
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !36, !alias.scope !128
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.s, align 16, !tbaa !36, !alias.scope !128
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 256
  %i.u = add nsw i64 %.011.i.i.i, -256            ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.3, label %hc_matchfinder_init.exit.i.preheader, label %bb.b, !llvm.loop !0

hc_matchfinder_init.exit.i.preheader:             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.c, i32 258)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = ptrtoint ptr %i.v to i64                 ; 7 uses
  %.ptr57 = getelementptr inbounds nuw i8, ptr %0, i64 268224 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 71616 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 202688 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1048
  br label %hc_matchfinder_init.exit.i

hc_matchfinder_init.exit.i:                       ; preds = %hc_matchfinder_init.exit.i.preheader, %bb.da
  %.048 = phi ptr [ %.7, %bb.da ], [ %1, %hc_matchfinder_init.exit.i.preheader ]
  %.042 = phi i32 [ %.446, %bb.da ], [ 258, %hc_matchfinder_init.exit.i.preheader ]
  %.040 = phi i32 [ %.4, %bb.da ], [ %..i, %hc_matchfinder_init.exit.i.preheader ]
  %.sroa.13.0 = phi i32 [ %.sroa.13.5, %bb.da ], [ 0, %hc_matchfinder_init.exit.i.preheader ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.5, %bb.da ], [ 0, %hc_matchfinder_init.exit.i.preheader ]
  %.0125.i = phi ptr [ %.4.i, %bb.da ], [ %1, %hc_matchfinder_init.exit.i.preheader ] ; 10 uses
  %i.ff = ptrtoint ptr %.0125.i to i64            ; 5 uses
  %i.fg = sub i64 %i.w, %i.ff                     ; 2 uses
  %i.fh = icmp ult i64 %i.fg, 305000
  %i.fi = getelementptr inbounds nuw i8, ptr %.0125.i, i64 300000
  %.0.i.i = select i1 %i.fh, ptr %i.v, ptr %i.fi  ; 2 uses
  %i.fj = tail call i64 @llvm.smin.i64(i64 %i.fg, i64 10000)
  %i.fk = getelementptr inbounds i8, ptr %.0125.i, i64 %i.fj
  store i32 0, ptr %.ptr57, align 4, !tbaa !43
  %i.fl = ptrtoint ptr %.0.i.i to i64
  %i.fm = sub i64 %i.fl, %i.ff                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1368) %i.y, i8 0, i64 1368, i1 false)
  %i.fn = load i32, ptr %i.z, align 32, !tbaa !35, !alias.scope !128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.fo = icmp ult i64 %i.fm, 512
  br i1 %i.fo, label %calculate_min_match_len.exit, label %.new

.new:                                             ; preds = %hc_matchfinder_init.exit.i
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fm, i64 4096) ; 2 uses
  %xtraiter = and i64 %i.fp, 3                    ; 3 uses
  %unroll_iter = and i64 %i.fp, 8188
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.017.i = phi i64 [ 0, %.new ], [ %i.gj, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %.017.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !36
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fs
  store i8 1, ptr %i.ft, align 1, !tbaa !36
  %i.fu = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %.017.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !36
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fx
  store i8 1, ptr %i.fy, align 1, !tbaa !36
  %i.fz = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %.017.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !36
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gc
  store i8 1, ptr %i.gd, align 1, !tbaa !36
  %i.ge = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %.017.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !36
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gh
  store i8 1, ptr %i.gi, align 1, !tbaa !36
  %i.gj = add nuw nsw i64 %.017.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %vector.body429.preheader.unr-lcssa, label %bb.c, !llvm.loop !4

vector.body429.preheader.unr-lcssa:               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.body429, label %.epil.preheader

.epil.preheader:                                  ; preds = %vector.body429.preheader.unr-lcssa
  %lcmp.mod509 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod509)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.017.i.epil = phi i64 [ %i.gj, %.epil.preheader ], [ %i.go, %bb.d ] ; 2 uses
end_hunk_2
begin_hunk_3_@deflate_compress_lazy:bb.a

.preheader58:                                     ; preds = %bb.cu, %.preheader58
  %.015.i.i372.i = phi i64 [ %i.akn, %.preheader58 ], [ 262144, %bb.cu ]
  %.0.i.i373.i = phi ptr [ %i.akm, %.preheader58 ], [ %i.d, %bb.cu ] ; 10 uses
  %i.ajp = load <8 x i16>, ptr %.0.i.i373.i, align 16, !tbaa !36, !alias.scope !128
  %i.ajq = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ajp, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ajq, ptr %.0.i.i373.i, align 16, !tbaa !36, !alias.scope !128
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0.i.i373.i, i64 16 ; 2 uses
  %i.ajs = load <8 x i16>, ptr %i.ajr, align 16, !tbaa !36, !alias.scope !128
  %i.ajt = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ajs, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ajt, ptr %i.ajr, align 16, !tbaa !36, !alias.scope !128
  %i.aju = getelementptr inbounds nuw i8, ptr %.0.i.i373.i, i64 32 ; 2 uses
  %i.ajv = load <8 x i16>, ptr %i.aju, align 16, !tbaa !36, !alias.scope !128
  %i.ajw = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ajv, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ajw, ptr %i.aju, align 16, !tbaa !36, !alias.scope !128
  %i.ajx = getelementptr inbounds nuw i8, ptr %.0.i.i373.i, i64 48 ; 2 uses
  %i.ajy = load <8 x i16>, ptr %i.ajx, align 16, !tbaa !36, !alias.scope !128
  %i.ajz = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ajy, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ajz, ptr %i.ajx, align 16, !tbaa !36, !alias.scope !128
  %i.aka = getelementptr inbounds nuw i8, ptr %.0.i.i373.i, i64 64 ; 2 uses
  %i.akb = load <8 x i16>, ptr %i.aka, align 16, !tbaa !36, !alias.scope !128
  %i.akc = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.akb, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.akc, ptr %i.aka, align 16, !tbaa !36, !alias.scope !128
  %i.akd = getelementptr inbounds nuw i8, ptr %.0.i.i373.i, i64 80 ; 2 uses
  %i.ake = load <8 x i16>, ptr %i.akd, align 16, !tbaa !36, !alias.scope !128
  %i.akf = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ake, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.akf, ptr %i.akd, align 16, !tbaa !36, !alias.scope !128
  %i.akg = getelementptr inbounds nuw i8, ptr %.0.i.i373.i, i64 96 ; 2 uses
  %i.akh = load <8 x i16>, ptr %i.akg, align 16, !tbaa !36, !alias.scope !128
  %i.aki = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.akh, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.aki, ptr %i.akg, align 16, !tbaa !36, !alias.scope !128
  %i.akj = getelementptr inbounds nuw i8, ptr %.0.i.i373.i, i64 112 ; 2 uses
  %i.akk = load <8 x i16>, ptr %i.akj, align 16, !tbaa !36, !alias.scope !128
  %i.akl = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.akk, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.akl, ptr %i.akj, align 16, !tbaa !36, !alias.scope !128
  %i.akm = getelementptr inbounds nuw i8, ptr %.0.i.i373.i, i64 128
  %i.akn = add nsw i64 %.015.i.i372.i, -128       ; 2 uses
  %.not.i.i374.i.1 = icmp eq i64 %i.akn, 0
  br i1 %.not.i.i374.i.1, label %hc_matchfinder_slide_window.exit375.i, label %.preheader58, !llvm.loop !1

hc_matchfinder_slide_window.exit375.i:            ; preds = %.preheader58
  %i.ako = getelementptr inbounds nuw i8, ptr %.9, i64 32768
  br label %bb.cv

bb.cv:                                            ; preds = %hc_matchfinder_slide_window.exit375.i, %bb.cu
  %.10 = phi ptr [ %i.ako, %hc_matchfinder_slide_window.exit375.i ], [ %.9, %bb.cu ] ; 2 uses
  %.1.i344.i = phi i32 [ 0, %hc_matchfinder_slide_window.exit375.i ], [ %.035.i.i, %bb.cu ] ; 3 uses
  %i.akp = trunc i32 %.1.i344.i to i16            ; 2 uses
  %i.akq = zext nneg i32 %.034.i.i to i64
  %i.akr = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.akq
  store i16 %i.akp, ptr %i.akr, align 2, !tbaa !45, !alias.scope !128
  %i.aks = zext nneg i32 %.033.i.i to i64
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.aks ; 2 uses
  %i.aku = load i16, ptr %i.akt, align 2, !tbaa !45, !alias.scope !128
  %i.akv = zext i32 %.1.i344.i to i64
  %i.akw = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.akv
  store i16 %i.aku, ptr %i.akw, align 2, !tbaa !45, !alias.scope !128
  store i16 %i.akp, ptr %i.akt, align 2, !tbaa !45, !alias.scope !128
  %i.akx = getelementptr inbounds nuw i8, ptr %.036.i.i, i64 1 ; 2 uses
  %.0.copyload.i.i345.i = load i32, ptr %i.akx, align 1, !noalias !128 ; 2 uses
  %i.aky = and i32 %.0.copyload.i.i345.i, 16777215
  %i.akz = mul i32 %i.aky, 506832829
  %i.ala = lshr i32 %i.akz, 17                    ; 3 uses
  %i.alb = mul i32 %.0.copyload.i.i345.i, 506832829
  %i.alc = lshr i32 %i.alb, 16                    ; 3 uses
  %i.ald = add i32 %.1.i344.i, 1
  %i.ale = add i32 %.0.i343.i, -1                 ; 2 uses
  %.not.i346.i = icmp eq i32 %i.ale, 0
  br i1 %.not.i346.i, label %bb.cw, label %bb.cu, !llvm.loop !5

bb.cw:                                            ; preds = %bb.cv
  %i.alf = zext nneg i32 %i.ala to i64
  %i.alg = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.alf
  tail call void @llvm.prefetch.p0(ptr nonnull %i.alg, i32 1, i32 3, i32 1)
  %i.alh = zext nneg i32 %i.alc to i64
  %i.ali = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.alh
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ali, i32 1, i32 3, i32 1)
  br label %hc_matchfinder_skip_bytes.exit.i

hc_matchfinder_skip_bytes.exit.i:                 ; preds = %bb.cw, %bb.cs
  %.11 = phi ptr [ %.8, %bb.cs ], [ %.10, %bb.cw ]
  %.sroa.13.7 = phi i32 [ %.sroa.13.6, %bb.cs ], [ %i.alc, %bb.cw ]
  %.sroa.0.7 = phi i32 [ %.sroa.0.6, %bb.cs ], [ %i.ala, %bb.cw ]
  %i.alj = zext i32 %i.ajf to i64
  %i.alk = getelementptr inbounds nuw i8, ptr %i.aat, i64 %i.alj
  br label %bb.cx

bb.cx:                                            ; preds = %hc_matchfinder_skip_bytes.exit.i, %hc_matchfinder_skip_bytes.exit364.i, %bb.bb
  %.7 = phi ptr [ %.250, %bb.bb ], [ %.11, %hc_matchfinder_skip_bytes.exit.i ], [ %.6, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.446 = phi i32 [ %.244, %bb.bb ], [ %.547, %hc_matchfinder_skip_bytes.exit.i ], [ %.345.lcssa, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.4 = phi i32 [ %.2, %bb.bb ], [ %.5, %hc_matchfinder_skip_bytes.exit.i ], [ %.3.lcssa, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.sroa.13.5 = phi i32 [ %.sroa.13.2, %bb.bb ], [ %.sroa.13.7, %hc_matchfinder_skip_bytes.exit.i ], [ %.sroa.13.4, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.sroa.0.5 = phi i32 [ %.sroa.0.2, %bb.bb ], [ %.sroa.0.7, %hc_matchfinder_skip_bytes.exit.i ], [ %.sroa.0.4, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.1.idx = phi i64 [ %.039.idx, %bb.bb ], [ %.039.add55, %hc_matchfinder_skip_bytes.exit.i ], [ %.039.add, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.4.i = phi ptr [ %i.wf, %bb.bb ], [ %i.alk, %hc_matchfinder_skip_bytes.exit.i ], [ %i.aao, %hc_matchfinder_skip_bytes.exit364.i ] ; 6 uses
  %i.all = icmp ult ptr %.4.i, %.0.i.i
  %i.alm = icmp slt i64 %.1.idx, 668224
  %or.cond142.i = select i1 %i.all, i1 %i.alm, i1 false
  br i1 %or.cond142.i, label %bb.cy, label %..critedge.i_crit_edge

..critedge.i_crit_edge:                           ; preds = %bb.cx
  %.pre233 = ptrtoint ptr %.4.i to i64
  %.pre235 = sub i64 %.pre233, %i.ff
  %.pre237 = trunc i64 %.pre235 to i32
  br label %.critedge.i

bb.cy:                                            ; preds = %bb.cx
  %i.aln = load i32, ptr %i.ac, align 8, !tbaa !55, !alias.scope !128
  %i.alo = icmp ugt i32 %i.aln, 511
  br i1 %i.alo, label %bb.cz, label %.backedge.backedge

bb.cz:                                            ; preds = %bb.cy
  %i.alp = ptrtoint ptr %.4.i to i64              ; 2 uses
  %i.alq = sub i64 %i.alp, %i.ff                  ; 2 uses
  %i.alr = icmp sgt i64 %i.alq, 4999
  %i.als = sub i64 %i.w, %i.alp
  %i.alt = icmp sgt i64 %i.als, 4999
  %or.cond = and i1 %i.alr, %i.alt
  br i1 %or.cond, label %.split, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.cz, %bb.cy, %.split
  br label %.backedge, !llvm.loop !6

.split:                                           ; preds = %bb.cz
  %i.alu = trunc i64 %i.alq to i32                ; 2 uses
  %i.alv = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.x, i32 noundef %i.alu)
  br i1 %i.alv, label %.critedge.i, label %.backedge.backedge

.critedge.i:                                      ; preds = %.split, %..critedge.i_crit_edge
  %.pre-phi238 = phi i32 [ %.pre237, %..critedge.i_crit_edge ], [ %i.alu, %.split ]
  %i.alw = icmp eq ptr %.4.i, %i.v                ; 2 uses
  %i.alx = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.aly = add i32 %i.alx, 1
  store i32 %i.aly, ptr %i.ae, align 8, !tbaa !16
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.y, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.af)
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ad, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai)
  tail call fastcc void @deflate_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0125.i, i32 noundef %.pre-phi238, ptr noundef nonnull readonly %.ptr57, i1 noundef zeroext %i.alw)
  br i1 %i.alw, label %deflate_compress_lazy_generic.exit, label %bb.da

bb.da:                                            ; preds = %.critedge.i
  %i.alz = load i8, ptr %4, align 8, !tbaa !52, !range !53, !noalias !128, !noundef !54
  %i.ama = trunc nuw i8 %i.alz to i1
  br i1 %i.ama, label %deflate_compress_lazy_generic.exit, label %hc_matchfinder_init.exit.i, !llvm.loop !7

deflate_compress_lazy_generic.exit:               ; preds = %.critedge.i, %bb.da
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_lazy2(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 72 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !34, !alias.scope !133
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 16 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i.i.i = phi i64 [ 196608, %bb.a ], [ %i.u, %bb.b ]
  %.0.i.i.i = phi ptr [ %i.d, %bb.a ], [ %i.t, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i.i.i, align 16, !tbaa !36, !alias.scope !133
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !36, !alias.scope !133
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !36, !alias.scope !133
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !36, !alias.scope !133
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !36, !alias.scope !133
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !36, !alias.scope !133
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !36, !alias.scope !133
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !36, !alias.scope !133
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !36, !alias.scope !133
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !36, !alias.scope !133
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !36, !alias.scope !133
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !36, !alias.scope !133
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !36, !alias.scope !133
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !36, !alias.scope !133
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !36, !alias.scope !133
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.s, align 16, !tbaa !36, !alias.scope !133
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 256
  %i.u = add nsw i64 %.011.i.i.i, -256            ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.3, label %hc_matchfinder_init.exit.i.preheader, label %bb.b, !llvm.loop !0

hc_matchfinder_init.exit.i.preheader:             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.c, i32 258)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = ptrtoint ptr %i.v to i64                 ; 8 uses
  %.ptr73 = getelementptr inbounds nuw i8, ptr %0, i64 268224 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 71616 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 202688 ; 17 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1048
  br label %hc_matchfinder_init.exit.i

hc_matchfinder_init.exit.i:                       ; preds = %hc_matchfinder_init.exit.i.preheader, %bb.en
  %.063 = phi ptr [ %.7, %bb.en ], [ %1, %hc_matchfinder_init.exit.i.preheader ]
  %.056 = phi i32 [ %.460, %bb.en ], [ 258, %hc_matchfinder_init.exit.i.preheader ]
  %.054 = phi i32 [ %.4, %bb.en ], [ %..i, %hc_matchfinder_init.exit.i.preheader ]
  %.sroa.16.0 = phi i32 [ %.sroa.16.5, %bb.en ], [ 0, %hc_matchfinder_init.exit.i.preheader ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.5, %bb.en ], [ 0, %hc_matchfinder_init.exit.i.preheader ]
  %.0125.i = phi ptr [ %.4.i, %bb.en ], [ %1, %hc_matchfinder_init.exit.i.preheader ] ; 10 uses
  %i.ff = ptrtoint ptr %.0125.i to i64            ; 5 uses
  %i.fg = sub i64 %i.w, %i.ff                     ; 2 uses
  %i.fh = icmp ult i64 %i.fg, 305000
  %i.fi = getelementptr inbounds nuw i8, ptr %.0125.i, i64 300000
  %.0.i.i = select i1 %i.fh, ptr %i.v, ptr %i.fi  ; 2 uses
  %i.fj = tail call i64 @llvm.smin.i64(i64 %i.fg, i64 10000)
  %i.fk = getelementptr inbounds i8, ptr %.0125.i, i64 %i.fj
  store i32 0, ptr %.ptr73, align 4, !tbaa !43
  %i.fl = ptrtoint ptr %.0.i.i to i64
  %i.fm = sub i64 %i.fl, %i.ff                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1368) %i.y, i8 0, i64 1368, i1 false)
  %i.fn = load i32, ptr %i.z, align 32, !tbaa !35, !alias.scope !133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.fo = icmp ult i64 %i.fm, 512
  br i1 %i.fo, label %calculate_min_match_len.exit, label %.new

.new:                                             ; preds = %hc_matchfinder_init.exit.i
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fm, i64 4096) ; 2 uses
  %xtraiter = and i64 %i.fp, 3                    ; 3 uses
  %unroll_iter = and i64 %i.fp, 8188
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.017.i = phi i64 [ 0, %.new ], [ %i.gj, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %.017.i
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !36
  %i.fs = zext i8 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fs
  store i8 1, ptr %i.ft, align 1, !tbaa !36
  %i.fu = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %.017.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !36
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fx
  store i8 1, ptr %i.fy, align 1, !tbaa !36
  %i.fz = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %.017.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !36
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gc
  store i8 1, ptr %i.gd, align 1, !tbaa !36
  %i.ge = getelementptr inbounds nuw i8, ptr %.0125.i, i64 %.017.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !36
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gh
  store i8 1, ptr %i.gi, align 1, !tbaa !36
  %i.gj = add nuw nsw i64 %.017.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %vector.body537.preheader.unr-lcssa, label %bb.c, !llvm.loop !4

vector.body537.preheader.unr-lcssa:               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.body537, label %.epil.preheader

.epil.preheader:                                  ; preds = %vector.body537.preheader.unr-lcssa
  %lcmp.mod626 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod626)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.017.i.epil = phi i64 [ %i.gj, %.epil.preheader ], [ %i.go, %bb.d ] ; 2 uses
end_hunk_3
begin_hunk_4_@deflate_compress_lazy2:bb.a
  store <8 x i16> %i.arl, ptr %i.arj, align 16, !tbaa !36, !alias.scope !133
  %i.arm = getelementptr inbounds nuw i8, ptr %.0.i.i369.i, i64 32 ; 2 uses
  %i.arn = load <8 x i16>, ptr %i.arm, align 16, !tbaa !36, !alias.scope !133
  %i.aro = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.arn, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.aro, ptr %i.arm, align 16, !tbaa !36, !alias.scope !133
  %i.arp = getelementptr inbounds nuw i8, ptr %.0.i.i369.i, i64 48 ; 2 uses
  %i.arq = load <8 x i16>, ptr %i.arp, align 16, !tbaa !36, !alias.scope !133
  %i.arr = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.arq, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.arr, ptr %i.arp, align 16, !tbaa !36, !alias.scope !133
  %i.ars = getelementptr inbounds nuw i8, ptr %.0.i.i369.i, i64 64 ; 2 uses
  %i.art = load <8 x i16>, ptr %i.ars, align 16, !tbaa !36, !alias.scope !133
  %i.aru = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.art, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.aru, ptr %i.ars, align 16, !tbaa !36, !alias.scope !133
  %i.arv = getelementptr inbounds nuw i8, ptr %.0.i.i369.i, i64 80 ; 2 uses
  %i.arw = load <8 x i16>, ptr %i.arv, align 16, !tbaa !36, !alias.scope !133
  %i.arx = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.arw, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.arx, ptr %i.arv, align 16, !tbaa !36, !alias.scope !133
  %i.ary = getelementptr inbounds nuw i8, ptr %.0.i.i369.i, i64 96 ; 2 uses
  %i.arz = load <8 x i16>, ptr %i.ary, align 16, !tbaa !36, !alias.scope !133
  %i.asa = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.arz, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.asa, ptr %i.ary, align 16, !tbaa !36, !alias.scope !133
  %i.asb = getelementptr inbounds nuw i8, ptr %.0.i.i369.i, i64 112 ; 2 uses
  %i.asc = load <8 x i16>, ptr %i.asb, align 16, !tbaa !36, !alias.scope !133
  %i.asd = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.asc, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.asd, ptr %i.asb, align 16, !tbaa !36, !alias.scope !133
  %i.ase = getelementptr inbounds nuw i8, ptr %.0.i.i369.i, i64 128
  %i.asf = add nsw i64 %.015.i.i368.i, -128       ; 2 uses
  %.not.i.i370.i.1 = icmp eq i64 %i.asf, 0
  br i1 %.not.i.i370.i.1, label %hc_matchfinder_slide_window.exit371.i, label %.preheader77, !llvm.loop !1

hc_matchfinder_slide_window.exit371.i:            ; preds = %.preheader77
  %i.asg = getelementptr inbounds nuw i8, ptr %.10, i64 32768
  br label %bb.ei

bb.ei:                                            ; preds = %hc_matchfinder_slide_window.exit371.i, %bb.eh
  %.11 = phi ptr [ %i.asg, %hc_matchfinder_slide_window.exit371.i ], [ %.10, %bb.eh ] ; 2 uses
  %.1.i352.i = phi i32 [ 0, %hc_matchfinder_slide_window.exit371.i ], [ %.035.i348.i, %bb.eh ] ; 3 uses
  %i.ash = trunc i32 %.1.i352.i to i16            ; 2 uses
  %i.asi = zext nneg i32 %.034.i349.i to i64
  %i.asj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.asi
  store i16 %i.ash, ptr %i.asj, align 2, !tbaa !45, !alias.scope !133
  %i.ask = zext nneg i32 %.033.i350.i to i64
  %i.asl = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ask ; 2 uses
  %i.asm = load i16, ptr %i.asl, align 2, !tbaa !45, !alias.scope !133
  %i.asn = zext i32 %.1.i352.i to i64
  %i.aso = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.asn
  store i16 %i.asm, ptr %i.aso, align 2, !tbaa !45, !alias.scope !133
  store i16 %i.ash, ptr %i.asl, align 2, !tbaa !45, !alias.scope !133
  %i.asp = getelementptr inbounds nuw i8, ptr %.036.i347.i, i64 1 ; 2 uses
  %.0.copyload.i.i353.i = load i32, ptr %i.asp, align 1, !noalias !133 ; 2 uses
  %i.asq = and i32 %.0.copyload.i.i353.i, 16777215
  %i.asr = mul i32 %i.asq, 506832829
  %i.ass = lshr i32 %i.asr, 17                    ; 3 uses
  %i.ast = mul i32 %.0.copyload.i.i353.i, 506832829
  %i.asu = lshr i32 %i.ast, 16                    ; 3 uses
  %i.asv = add i32 %.1.i352.i, 1
  %i.asw = add nsw i32 %.0.i351.i, -1             ; 2 uses
  %.not.i354.i = icmp eq i32 %i.asw, 0
  br i1 %.not.i354.i, label %bb.ej, label %bb.eh, !llvm.loop !5

bb.ej:                                            ; preds = %bb.ei
  %i.asx = zext nneg i32 %i.ass to i64
  %i.asy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.asx
  tail call void @llvm.prefetch.p0(ptr nonnull %i.asy, i32 1, i32 3, i32 1)
  %i.asz = zext nneg i32 %i.asu to i64
  %i.ata = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.asz
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ata, i32 1, i32 3, i32 1)
  br label %hc_matchfinder_skip_bytes.exit355.i

hc_matchfinder_skip_bytes.exit355.i:              ; preds = %bb.ej, %bb.ef
  %.12 = phi ptr [ %.9, %bb.ef ], [ %.11, %bb.ej ]
  %.sroa.16.8 = phi i32 [ %.sroa.16.7, %bb.ef ], [ %i.asu, %bb.ej ]
  %.sroa.0.8 = phi i32 [ %.sroa.0.7, %bb.ef ], [ %i.ass, %bb.ej ]
  %i.atb = zext nneg i32 %i.aqx to i64
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ahx, i64 %i.atb
  br label %bb.ek

bb.ek:                                            ; preds = %hc_matchfinder_skip_bytes.exit355.i, %bb.ee, %hc_matchfinder_skip_bytes.exit364.i, %bb.bb
  %.7 = phi ptr [ %.265, %bb.bb ], [ %.12, %hc_matchfinder_skip_bytes.exit355.i ], [ %.9, %bb.ee ], [ %.669, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.460 = phi i32 [ %.258, %bb.bb ], [ %.662, %hc_matchfinder_skip_bytes.exit355.i ], [ %.662, %bb.ee ], [ %.359.lcssa, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.4 = phi i32 [ %.2, %bb.bb ], [ %.6, %hc_matchfinder_skip_bytes.exit355.i ], [ %.6, %bb.ee ], [ %.3.lcssa, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.sroa.16.5 = phi i32 [ %.sroa.16.2, %bb.bb ], [ %.sroa.16.8, %hc_matchfinder_skip_bytes.exit355.i ], [ %.sroa.16.7, %bb.ee ], [ %.sroa.16.4, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.sroa.0.5 = phi i32 [ %.sroa.0.2, %bb.bb ], [ %.sroa.0.8, %hc_matchfinder_skip_bytes.exit355.i ], [ %.sroa.0.7, %bb.ee ], [ %.sroa.0.4, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.1.idx = phi i64 [ %.053.idx, %bb.bb ], [ %.053.add71, %hc_matchfinder_skip_bytes.exit355.i ], [ %.053.add71, %bb.ee ], [ %.053.add, %hc_matchfinder_skip_bytes.exit364.i ] ; 2 uses
  %.4.i = phi ptr [ %i.wf, %bb.bb ], [ %i.atc, %hc_matchfinder_skip_bytes.exit355.i ], [ %i.ahx, %bb.ee ], [ %i.aao, %hc_matchfinder_skip_bytes.exit364.i ] ; 6 uses
  %i.atd = icmp ult ptr %.4.i, %.0.i.i
  %i.ate = icmp slt i64 %.1.idx, 668224
  %or.cond142.i = select i1 %i.atd, i1 %i.ate, i1 false
  br i1 %or.cond142.i, label %bb.el, label %..critedge.i_crit_edge

..critedge.i_crit_edge:                           ; preds = %bb.ek
  %.pre302 = ptrtoint ptr %.4.i to i64
  %.pre304 = sub i64 %.pre302, %i.ff
  %.pre306 = trunc i64 %.pre304 to i32
  br label %.critedge.i

bb.el:                                            ; preds = %bb.ek
  %i.atf = load i32, ptr %i.ac, align 8, !tbaa !55, !alias.scope !133
  %i.atg = icmp ugt i32 %i.atf, 511
  br i1 %i.atg, label %bb.em, label %.backedge99.backedge

bb.em:                                            ; preds = %bb.el
  %i.ath = ptrtoint ptr %.4.i to i64              ; 2 uses
  %i.ati = sub i64 %i.ath, %i.ff                  ; 2 uses
  %i.atj = icmp sgt i64 %i.ati, 4999
  %i.atk = sub i64 %i.w, %i.ath
  %i.atl = icmp sgt i64 %i.atk, 4999
  %or.cond = and i1 %i.atj, %i.atl
  br i1 %or.cond, label %.split, label %.backedge99.backedge

.backedge99.backedge:                             ; preds = %bb.em, %bb.el, %.split
  br label %.backedge99, !llvm.loop !6

.split:                                           ; preds = %bb.em
  %i.atm = trunc i64 %i.ati to i32                ; 2 uses
  %i.atn = tail call fastcc zeroext i1 @do_end_block_check(ptr noundef nonnull %i.x, i32 noundef %i.atm)
  br i1 %i.atn, label %.critedge.i, label %.backedge99.backedge

.critedge.i:                                      ; preds = %.split, %..critedge.i_crit_edge
  %.pre-phi307 = phi i32 [ %.pre306, %..critedge.i_crit_edge ], [ %i.atm, %.split ]
  %i.ato = icmp eq ptr %.4.i, %i.v                ; 2 uses
  %i.atp = load i32, ptr %i.ae, align 8, !tbaa !16
  %i.atq = add i32 %i.atp, 1
  store i32 %i.atq, ptr %i.ae, align 8, !tbaa !16
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.y, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.af)
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.ad, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai)
  tail call fastcc void @deflate_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.0125.i, i32 noundef %.pre-phi307, ptr noundef nonnull readonly %.ptr73, i1 noundef zeroext %i.ato)
  br i1 %i.ato, label %deflate_compress_lazy_generic.exit, label %bb.en

bb.en:                                            ; preds = %.critedge.i
  %i.atr = load i8, ptr %4, align 8, !tbaa !52, !range !53, !noalias !133, !noundef !54
  %i.ats = trunc nuw i8 %i.atr to i1
  br i1 %i.ats, label %deflate_compress_lazy_generic.exit, label %hc_matchfinder_init.exit.i, !llvm.loop !7

deflate_compress_lazy_generic.exit:               ; preds = %.critedge.i, %bb.en
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_near_optimal(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 72 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i8 0, ptr %i.b, align 1, !tbaa !56
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i.i = phi i64 [ 393216, %bb.a ], [ %i.v, %bb.b ]
  %.0.i.i = phi ptr [ %i.e, %bb.a ], [ %i.u, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i.i, align 16, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.s, align 16, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.t, align 16, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 256
  %i.v = add nsw i64 %.011.i.i, -256              ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.3, label %bt_matchfinder_init.exit, label %bb.b, !llvm.loop !0

bt_matchfinder_init.exit:                         ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 4 uses
  %i.y = tail call i64 @llvm.umin.i64(i64 %2, i64 32768)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %. = tail call i32 @llvm.umin.i32(i32 %i.d, i32 258)
  %.ptr296 = getelementptr inbounds nuw i8, ptr %0, i64 530368
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.aa, i8 0, i64 88, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9009612 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2072) %i.ab, i8 0, i64 2072, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268224 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 399296 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 9010648 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 9009568 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9009584 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9009600 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9009608 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 9010636 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 9011672 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 9010640 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 9011676 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 9010644 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 9011680 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 9010636 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 9011672 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 9010640 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 9011676 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 9010644 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 9011680 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.bt, %bt_matchfinder_init.exit
  %.0280 = phi i32 [ 258, %bt_matchfinder_init.exit ], [ %.3283, %bb.bt ]
  %.0274 = phi i32 [ %., %bt_matchfinder_init.exit ], [ %.3277, %bb.bt ]
  %.sroa.9.0 = phi i32 [ 0, %bt_matchfinder_init.exit ], [ %.sroa.9.5, %bb.bt ]
  %.sroa.0.0 = phi i32 [ 0, %bt_matchfinder_init.exit ], [ %.sroa.0.5, %bb.bt ]
  %.0175 = phi ptr [ %1, %bt_matchfinder_init.exit ], [ %.5180, %bb.bt ]
  %.0169 = phi ptr [ %i.z, %bt_matchfinder_init.exit ], [ %.5174, %bb.bt ]
  %.0165.idx = phi i64 [ 530368, %bt_matchfinder_init.exit ], [ %.6.idx, %bb.bt ]
  %.0152 = phi ptr [ %1, %bt_matchfinder_init.exit ], [ %.1153, %bb.bt ] ; 11 uses
  %.0 = phi ptr [ %1, %bt_matchfinder_init.exit ], [ %.3, %bb.bt ] ; 2 uses
  %i.dp = ptrtoint ptr %.0152 to i64              ; 5 uses
  %i.dq = sub i64 %i.x, %i.dp
  %i.dr = icmp ult i64 %i.dq, 305000
  %i.ds = getelementptr inbounds nuw i8, ptr %.0152, i64 300000
  %.0.i = select i1 %i.dr, ptr %i.w, ptr %i.ds    ; 2 uses
  %i.dt = load i8, ptr %i.b, align 1, !tbaa !56, !range !53, !noundef !54
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dv = ptrtoint ptr %.0.i to i64
  %i.dw = sub i64 %i.dv, %i.dp                    ; 2 uses
  %i.dx = load i32, ptr %i.ac, align 32, !tbaa !35 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.dy = icmp ult i64 %i.dw, 512
  br i1 %i.dy, label %calculate_min_match_len.exit, label %.new

.new:                                             ; preds = %bb.d
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 4096) ; 2 uses
  %xtraiter = and i64 %i.dz, 3                    ; 3 uses
  %unroll_iter = and i64 %i.dz, 8188
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.new
  %.017.i = phi i64 [ 0, %.new ], [ %i.et, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.e ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0152, i64 %.017.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !36
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ec
  store i8 1, ptr %i.ed, align 1, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %.0152, i64 %.017.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !36
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
  store i8 1, ptr %i.ei, align 1, !tbaa !36
  %i.ej = getelementptr inbounds nuw i8, ptr %.0152, i64 %.017.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !36
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  store i8 1, ptr %i.en, align 1, !tbaa !36
  %i.eo = getelementptr inbounds nuw i8, ptr %.0152, i64 %.017.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !36
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.er
  store i8 1, ptr %i.es, align 1, !tbaa !36
  %i.et = add nuw nsw i64 %.017.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %vector.body478.preheader.unr-lcssa, label %bb.e, !llvm.loop !4

vector.body478.preheader.unr-lcssa:               ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.body478, label %.epil.preheader

.epil.preheader:                                  ; preds = %vector.body478.preheader.unr-lcssa
  %lcmp.mod532 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod532)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.017.i.epil = phi i64 [ %i.et, %.epil.preheader ], [ %i.ey, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.0152, i64 %.017.i.epil
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !36
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ew
  store i8 1, ptr %i.ex, align 1, !tbaa !36
  %i.ey = add nuw nsw i64 %.017.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %vector.body478, label %bb.f, !llvm.loop !134

vector.body478:                                   ; preds = %vector.body478.preheader.unr-lcssa, %bb.f
  %wide.load481 = load <4 x i8>, ptr %i.a, align 16, !tbaa !36
  %wide.load482 = load <4 x i8>, ptr %i.as, align 4, !tbaa !36
  %i.ez = zext <4 x i8> %wide.load481 to <4 x i32>
  %i.fa = zext <4 x i8> %wide.load482 to <4 x i32>
  %wide.load481.1 = load <4 x i8>, ptr %i.at, align 8, !tbaa !36
  %wide.load482.1 = load <4 x i8>, ptr %i.au, align 4, !tbaa !36
  %i.fb = zext <4 x i8> %wide.load481.1 to <4 x i32>
  %i.fc = zext <4 x i8> %wide.load482.1 to <4 x i32>
  %i.fd = add nuw nsw <4 x i32> %i.ez, %i.fb
  %i.fe = add nuw nsw <4 x i32> %i.fa, %i.fc
  %wide.load481.2 = load <4 x i8>, ptr %i.av, align 16, !tbaa !36
  %wide.load482.2 = load <4 x i8>, ptr %i.aw, align 4, !tbaa !36
  %i.ff = zext <4 x i8> %wide.load481.2 to <4 x i32>
  %i.fg = zext <4 x i8> %wide.load482.2 to <4 x i32>
  %i.fh = add nuw nsw <4 x i32> %i.fd, %i.ff
  %i.fi = add nuw nsw <4 x i32> %i.fe, %i.fg
  %wide.load481.3 = load <4 x i8>, ptr %i.ax, align 8, !tbaa !36
  %wide.load482.3 = load <4 x i8>, ptr %i.ay, align 4, !tbaa !36
  %i.fj = zext <4 x i8> %wide.load481.3 to <4 x i32>
  %i.fk = zext <4 x i8> %wide.load482.3 to <4 x i32>
  %i.fl = add nuw nsw <4 x i32> %i.fh, %i.fj
  %i.fm = add nuw nsw <4 x i32> %i.fi, %i.fk
  %wide.load481.4 = load <4 x i8>, ptr %i.az, align 16, !tbaa !36
  %wide.load482.4 = load <4 x i8>, ptr %i.ba, align 4, !tbaa !36
  %i.fn = zext <4 x i8> %wide.load481.4 to <4 x i32>
  %i.fo = zext <4 x i8> %wide.load482.4 to <4 x i32>
  %i.fp = add nuw nsw <4 x i32> %i.fl, %i.fn
  %i.fq = add nuw nsw <4 x i32> %i.fm, %i.fo
  %wide.load481.5 = load <4 x i8>, ptr %i.bb, align 8, !tbaa !36
  %wide.load482.5 = load <4 x i8>, ptr %i.bc, align 4, !tbaa !36
  %i.fr = zext <4 x i8> %wide.load481.5 to <4 x i32>
  %i.fs = zext <4 x i8> %wide.load482.5 to <4 x i32>
  %i.ft = add nuw nsw <4 x i32> %i.fp, %i.fr
  %i.fu = add nuw nsw <4 x i32> %i.fq, %i.fs
  %wide.load481.6 = load <4 x i8>, ptr %i.bd, align 16, !tbaa !36
end_hunk_4
