Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/deflate_compress?download=true
inline.NumInlined: 64
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 117
begin_hunk_0_@libdeflate_alloc_compressor_ex:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %i.j, i64 552
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 568
  store <4 x i32> splat (i32 2), ptr %i.hr, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hs, align 8, !tbaa !31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.j, i64 584
  %i.hu = getelementptr inbounds nuw i8, ptr %i.j, i64 600
  store <4 x i32> splat (i32 2), ptr %i.ht, align 8, !tbaa !31
  store <4 x i32> splat (i32 2), ptr %i.hu, align 8, !tbaa !31
  %i.hv = getelementptr inbounds nuw i8, ptr %i.j, i64 616
  %i.hw = getelementptr inbounds nuw i8, ptr %i.j, i64 632
  store <4 x i32> splat (i32 1), ptr %i.hv, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.hw, align 8, !tbaa !31
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 648
  %i.hy = getelementptr inbounds nuw i8, ptr %i.j, i64 664
  store <4 x i32> splat (i32 1), ptr %i.hx, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.hy, align 8, !tbaa !31
  %i.hz = getelementptr inbounds nuw i8, ptr %i.j, i64 680
  %i.ia = getelementptr inbounds nuw i8, ptr %i.j, i64 696
  store <4 x i32> splat (i32 1), ptr %i.hz, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ia, align 8, !tbaa !31
  %i.ib = getelementptr inbounds nuw i8, ptr %i.j, i64 712
  %i.ic = getelementptr inbounds nuw i8, ptr %i.j, i64 728
  store <4 x i32> splat (i32 1), ptr %i.ib, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ic, align 8, !tbaa !31
  %i.id = getelementptr inbounds nuw i8, ptr %i.j, i64 744
  %i.ie = getelementptr inbounds nuw i8, ptr %i.j, i64 760
  store <4 x i32> splat (i32 1), ptr %i.id, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ie, align 8, !tbaa !31
  %i.if = getelementptr inbounds nuw i8, ptr %i.j, i64 776
  %i.ig = getelementptr inbounds nuw i8, ptr %i.j, i64 792
  store <4 x i32> splat (i32 1), ptr %i.if, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ig, align 8, !tbaa !31
  %i.ih = getelementptr inbounds nuw i8, ptr %i.j, i64 808
  %i.ii = getelementptr inbounds nuw i8, ptr %i.j, i64 824
  store <4 x i32> splat (i32 1), ptr %i.ih, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ii, align 8, !tbaa !31
  %i.ij = getelementptr inbounds nuw i8, ptr %i.j, i64 840
  %i.ik = getelementptr inbounds nuw i8, ptr %i.j, i64 856
  store <4 x i32> splat (i32 1), ptr %i.ij, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.ik, align 8, !tbaa !31
  %i.il = getelementptr inbounds nuw i8, ptr %i.j, i64 872
  %i.im = getelementptr inbounds nuw i8, ptr %i.j, i64 888
  store <4 x i32> splat (i32 1), ptr %i.il, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.im, align 8, !tbaa !31
  %i.in = getelementptr inbounds nuw i8, ptr %i.j, i64 904
  %i.io = getelementptr inbounds nuw i8, ptr %i.j, i64 920
  store <4 x i32> splat (i32 1), ptr %i.in, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.io, align 8, !tbaa !31
  %i.ip = getelementptr inbounds nuw i8, ptr %i.j, i64 936
  %i.iq = getelementptr inbounds nuw i8, ptr %i.j, i64 952
  store <4 x i32> splat (i32 1), ptr %i.ip, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.iq, align 8, !tbaa !31
  %i.ir = getelementptr inbounds nuw i8, ptr %i.j, i64 968
  %i.is = getelementptr inbounds nuw i8, ptr %i.j, i64 984
  store <4 x i32> splat (i32 1), ptr %i.ir, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.is, align 8, !tbaa !31
  %i.it = getelementptr inbounds nuw i8, ptr %i.j, i64 1000
  %i.iu = getelementptr inbounds nuw i8, ptr %i.j, i64 1016
  store <4 x i32> splat (i32 1), ptr %i.it, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.iu, align 8, !tbaa !31
  %i.iv = getelementptr inbounds nuw i8, ptr %i.j, i64 1032
  %i.iw = getelementptr inbounds nuw i8, ptr %i.j, i64 1048
  store <4 x i32> splat (i32 1), ptr %i.iv, align 8, !tbaa !31
  store <4 x i32> splat (i32 1), ptr %i.iw, align 8, !tbaa !31
  %i.ix = getelementptr inbounds nuw i8, ptr %i.j, i64 1064
  store <4 x i32> splat (i32 4), ptr %i.ix, align 8, !tbaa !31
  %i.iy = getelementptr inbounds nuw i8, ptr %i.j, i64 1080
  store <4 x i32> splat (i32 4), ptr %i.iy, align 8, !tbaa !31
  %i.iz = getelementptr inbounds nuw i8, ptr %i.j, i64 1096
  store <4 x i32> splat (i32 4), ptr %i.iz, align 8, !tbaa !31
  %i.ja = getelementptr inbounds nuw i8, ptr %i.j, i64 1112
  store <4 x i32> splat (i32 4), ptr %i.ja, align 8, !tbaa !31
  %i.jb = getelementptr inbounds nuw i8, ptr %i.j, i64 1128
  store <4 x i32> splat (i32 4), ptr %i.jb, align 8, !tbaa !31
  %i.jc = getelementptr inbounds nuw i8, ptr %i.j, i64 1144
  store <4 x i32> splat (i32 4), ptr %i.jc, align 8, !tbaa !31
  %i.jd = getelementptr inbounds nuw i8, ptr %i.j, i64 1160
  store <4 x i32> splat (i32 2), ptr %i.jd, align 8, !tbaa !31
  %i.je = getelementptr inbounds nuw i8, ptr %i.j, i64 1176
  store <4 x i32> splat (i32 2), ptr %i.je, align 8, !tbaa !31
  %i.jf = getelementptr inbounds nuw i8, ptr %i.j, i64 1192 ; 2 uses
  store <4 x i32> splat (i32 1), ptr %i.jf, align 8, !tbaa !31
  %i.jg = getelementptr inbounds nuw i8, ptr %i.j, i64 1208
  store <4 x i32> splat (i32 1), ptr %i.jg, align 8, !tbaa !31
  %i.jh = getelementptr inbounds nuw i8, ptr %i.j, i64 1224
  store <4 x i32> splat (i32 1), ptr %i.jh, align 8, !tbaa !31
  %i.ji = getelementptr inbounds nuw i8, ptr %i.j, i64 1240
  store <4 x i32> splat (i32 1), ptr %i.ji, align 8, !tbaa !31
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 1256
  store <4 x i32> splat (i32 1), ptr %i.jj, align 8, !tbaa !31
  %i.jk = getelementptr inbounds nuw i8, ptr %i.j, i64 1272
  store <4 x i32> splat (i32 1), ptr %i.jk, align 8, !tbaa !31
  %i.jl = getelementptr inbounds nuw i8, ptr %i.j, i64 1288
  store <4 x i32> splat (i32 1), ptr %i.jl, align 8, !tbaa !31
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 1304
  store <4 x i32> splat (i32 1), ptr %i.jm, align 8, !tbaa !31
  %i.jn = getelementptr inbounds nuw i8, ptr %i.j, i64 3008
  %i.jo = getelementptr inbounds nuw i8, ptr %i.j, i64 4288
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.gl, ptr noundef nonnull %i.jo, ptr noundef nonnull %i.jn)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.j, i64 4576
  %i.jq = getelementptr inbounds nuw i8, ptr %i.j, i64 4160
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.jf, ptr noundef nonnull %i.jp, ptr noundef nonnull %i.jq)
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.b, %bb.a, %deflate_init_offset_slot_full.exit
  %.077 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.j, %deflate_init_offset_slot_full.exit ], [ null, %bb.f ]
  ret ptr %.077
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @libdeflate_aligned_malloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_fastest(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i = phi i64 [ 131072, %bb.a ], [ %i.t, %bb.b ]
  %.0.i75 = phi ptr [ %i.c, %bb.a ], [ %i.s, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i75, align 16, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i75, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.d, align 16, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i75, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i75, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i75, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i75, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i75, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i75, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i75, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i75, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i75, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i75, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i75, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i75, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i75, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i75, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i75, i64 256
  %i.t = add nsw i64 %.011.i, -256                ; 2 uses
  %.not.i76.3 = icmp eq i64 %i.t, 0
  br i1 %.not.i76.3, label %matchfinder_init_sse2.exit.preheader, label %bb.b, !llvm.loop !0

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
  store i32 0, ptr %.ptr192, align 8, !tbaa !38
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
  br i1 %i.ak, label %bb.d, label %bb.f, !prof !39

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
  %i.ao = load i8, ptr %.161, align 1, !tbaa !30
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !31
  %i.at = load i32, ptr %.0160.ptr, align 4, !tbaa !38
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %.0160.ptr, align 4, !tbaa !38
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
  %i.ay = load i8, ptr %.262, align 1, !tbaa !30
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !31
  %i.bd = load i32, ptr %.0160.ptr, align 4, !tbaa !38
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %.0160.ptr, align 4, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %.262, i64 2 ; 2 uses
  %i.bg = load i8, ptr %i.ax, align 1, !tbaa !30
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !31
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !31
  %i.bl = load i32, ptr %.0160.ptr, align 4, !tbaa !38
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %.0160.ptr, align 4, !tbaa !38
  %i.bn = add i32 %.258, -2                       ; 2 uses
  %.not71.1 = icmp eq i32 %i.bn, 0
  br i1 %.not71.1, label %.loopexit200, label %.preheader199, !llvm.loop !80

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
  %i.bu = load <8 x i16>, ptr %.0.i113, align 16, !tbaa !30
  %i.bv = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bu, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.bv, ptr %.0.i113, align 16, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i113, i64 16 ; 2 uses
  %i.bx = load <8 x i16>, ptr %i.bw, align 16, !tbaa !30
  %i.by = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.bx, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.by, ptr %i.bw, align 16, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i113, i64 32 ; 2 uses
  %i.ca = load <8 x i16>, ptr %i.bz, align 16, !tbaa !30
  %i.cb = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ca, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cb, ptr %i.bz, align 16, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i113, i64 48 ; 2 uses
  %i.cd = load <8 x i16>, ptr %i.cc, align 16, !tbaa !30
  %i.ce = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cd, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ce, ptr %i.cc, align 16, !tbaa !30
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i113, i64 64 ; 2 uses
  %i.cg = load <8 x i16>, ptr %i.cf, align 16, !tbaa !30
  %i.ch = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cg, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ch, ptr %i.cf, align 16, !tbaa !30
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i113, i64 80 ; 2 uses
  %i.cj = load <8 x i16>, ptr %i.ci, align 16, !tbaa !30
  %i.ck = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cj, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ck, ptr %i.ci, align 16, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i113, i64 96 ; 2 uses
  %i.cm = load <8 x i16>, ptr %i.cl, align 16, !tbaa !30
  %i.cn = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cn, ptr %i.cl, align 16, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i113, i64 112 ; 2 uses
  %i.cp = load <8 x i16>, ptr %i.co, align 16, !tbaa !30
  %i.cq = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.cp, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.cq, ptr %i.co, align 16, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i113, i64 128
  %i.cs = add nsw i64 %.015.i, -128               ; 2 uses
  %.not.i114.1 = icmp eq i64 %i.cs, 0
  br i1 %.not.i114.1, label %matchfinder_rebase_sse2.exit, label %.preheader198, !llvm.loop !1

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
  %i.db = load i16, ptr %i.da, align 4, !tbaa !40 ; 3 uses
  %i.dc = trunc i32 %.0.i73 to i16
  store i16 %i.dc, ptr %i.da, align 4, !tbaa !40
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
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !40 ; 4 uses
  store i16 %i.db, ptr %i.di, align 2, !tbaa !40
  %.0.copyload.i82 = load i32, ptr %i.dh, align 1
  %i.dk = icmp eq i32 %.0.copyload.i82, %.0.copyload.i83
  br i1 %i.dk, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.dl = add nsw i32 %.359, -36
  %i.dm = icmp ult i32 %i.dl, -32                 ; 2 uses
  br i1 %i.dm, label %bb.j, label %.preheader290, !prof !41

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
  %i.dy = xor i64 %.0.copyload.i129, %.0.copyload.i130
  %.not56.i98 = icmp eq i64 %.0.copyload.i130, %.0.copyload.i129
  br i1 %.not56.i98, label %.preheader290, label %bb.q

.preheader290:                                    ; preds = %bb.m, %bb.i
  %.1.i88.ph = phi i32 [ 36, %bb.m ], [ 4, %bb.i ]
  br label %bb.n

bb.n:                                             ; preds = %.preheader290, %bb.o
  %.1.i88 = phi i32 [ %i.dz, %bb.o ], [ %.1.i88.ph, %.preheader290 ] ; 6 uses
  %i.dz = add i32 %.1.i88, 8                      ; 2 uses
  %.not57.i89 = icmp ugt i32 %i.dz, %.359
  br i1 %.not57.i89, label %.preheader194, label %bb.o

.preheader194:                                    ; preds = %bb.n
  %i.ea = icmp ult i32 %.1.i88, %.359
  br i1 %i.ea, label %.lr.ph219.preheader, label %lz_extend.exit99

.lr.ph219.preheader:                              ; preds = %.preheader194
  %i.eb = zext nneg i32 %.1.i88 to i64
  %i.ec = zext nneg i32 %.359 to i64
  br label %.lr.ph219

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@deflate_compress_fastest:bb.a
  %.not.i108 = icmp eq i64 %.0.copyload.i126, %.0.copyload.i125
  br i1 %.not.i108, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %.0.copyload.i124 = load i64, ptr %i.gp, align 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.161, i64 12
  %.0.copyload.i123 = load i64, ptr %i.gq, align 1 ; 2 uses
  %i.gr = xor i64 %.0.copyload.i123, %.0.copyload.i124
  %.not54.i109 = icmp eq i64 %.0.copyload.i124, %.0.copyload.i123
  br i1 %.not54.i109, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  %.0.copyload.i122 = load i64, ptr %i.gs, align 1 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.161, i64 20
  %.0.copyload.i121 = load i64, ptr %i.gt, align 1 ; 2 uses
  %i.gu = xor i64 %.0.copyload.i121, %.0.copyload.i122
  %.not55.i110 = icmp eq i64 %.0.copyload.i122, %.0.copyload.i121
  br i1 %.not55.i110, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gi, i64 28
  %.0.copyload.i120 = load i64, ptr %i.gv, align 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.161, i64 28
  %.0.copyload.i119 = load i64, ptr %i.gw, align 1 ; 2 uses
  %i.gx = xor i64 %.0.copyload.i119, %.0.copyload.i120
  %.not56.i111 = icmp eq i64 %.0.copyload.i120, %.0.copyload.i119
  br i1 %.not56.i111, label %.preheader291, label %bb.am

.preheader291:                                    ; preds = %bb.ai, %bb.ae
  %.1.i101.ph = phi i32 [ 36, %bb.ai ], [ 4, %bb.ae ]
  br label %bb.aj

bb.aj:                                            ; preds = %.preheader291, %bb.ak
  %.1.i101 = phi i32 [ %i.gy, %bb.ak ], [ %.1.i101.ph, %.preheader291 ] ; 6 uses
  %i.gy = add i32 %.1.i101, 8                     ; 2 uses
  %.not57.i102 = icmp ugt i32 %i.gy, %.359
  br i1 %.not57.i102, label %.preheader196, label %bb.ak

.preheader196:                                    ; preds = %bb.aj
  %i.gz = icmp ult i32 %.1.i101, %.359
  br i1 %i.gz, label %.lr.ph.preheader, label %ht_matchfinder_longest_match.exit

.lr.ph.preheader:                                 ; preds = %.preheader196
  %i.ha = zext nneg i32 %.1.i101 to i64
  %i.hb = zext nneg i32 %.359 to i64
  br label %.lr.ph

bb.ak:                                            ; preds = %bb.aj
  %i.hc = zext i32 %.1.i101 to i64                ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.hc
  %.0.copyload.i128 = load i64, ptr %i.hd, align 1 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.161, i64 %i.hc
  %.0.copyload.i127 = load i64, ptr %i.he, align 1 ; 2 uses
  %.not58.i103 = icmp eq i64 %.0.copyload.i128, %.0.copyload.i127
  br i1 %.not58.i103, label %bb.aj, label %.loopexit197, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.al
  %indvars.iv = phi i64 [ %i.ha, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.al ] ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !30
  %i.hh = getelementptr inbounds nuw i8, ptr %.161, i64 %indvars.iv
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !30
  %i.hj = icmp eq i8 %i.hg, %i.hi
  br i1 %i.hj, label %bb.al, label %ht_matchfinder_longest_match.exit.loopexit.split.loop.exit

bb.al:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.hb
  br i1 %exitcond.not, label %ht_matchfinder_longest_match.exit, label %.lr.ph, !llvm.loop !3

.loopexit197:                                     ; preds = %bb.ak
  %i.hk = xor i64 %.0.copyload.i127, %.0.copyload.i128
  br label %bb.am

bb.am:                                            ; preds = %.loopexit197, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.3.i104 = phi i32 [ 4, %bb.af ], [ 12, %bb.ag ], [ 20, %bb.ah ], [ 28, %bb.ai ], [ %.1.i101, %.loopexit197 ]
  %.0.i105 = phi i64 [ %i.go, %bb.af ], [ %i.gr, %bb.ag ], [ %i.gu, %bb.ah ], [ %i.gx, %bb.ai ], [ %i.hk, %.loopexit197 ]
  %i.hl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0.i105, i1 true)
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = lshr i32 %i.hm, 3
  %i.ho = add i32 %i.hn, %.3.i104
  br label %ht_matchfinder_longest_match.exit

ht_matchfinder_longest_match.exit.loopexit.split.loop.exit: ; preds = %.lr.ph
  %i.hp = trunc nuw i64 %indvars.iv to i32
  br label %ht_matchfinder_longest_match.exit

ht_matchfinder_longest_match.exit:                ; preds = %bb.al, %ht_matchfinder_longest_match.exit.loopexit.split.loop.exit, %.preheader196, %bb.am, %lz_extend.exit99, %bb.r, %bb.s, %lz_extend.exit
  %.068.i = phi i32 [ %i.ho, %bb.am ], [ %.047.i93, %lz_extend.exit99 ], [ %.047.i93, %bb.s ], [ %.047.i93, %bb.r ], [ %spec.select.i, %lz_extend.exit ], [ %.1.i101, %.preheader196 ], [ %i.hp, %ht_matchfinder_longest_match.exit.loopexit.split.loop.exit ], [ %.359, %bb.al ] ; 7 uses
  %.067.i = phi ptr [ %i.gi, %bb.am ], [ %i.dh, %lz_extend.exit99 ], [ %i.dh, %bb.s ], [ %i.dh, %bb.r ], [ %spec.select77.i, %lz_extend.exit ], [ %i.gi, %.preheader196 ], [ %i.gi, %ht_matchfinder_longest_match.exit.loopexit.split.loop.exit ], [ %i.gi, %bb.al ]
  %.not = icmp eq i32 %.068.i, 0
  br i1 %.not, label %ht_matchfinder_longest_match.exit.thread, label %bb.an

bb.an:                                            ; preds = %ht_matchfinder_longest_match.exit
  %i.hq = ptrtoint ptr %.067.i to i64
  %i.hr = sub i64 %i.ai, %i.hq                    ; 2 uses
  %i.hs = trunc i64 %i.hr to i32                  ; 2 uses
  %i.ht = zext i32 %.068.i to i64                 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr @deflate_length_slot, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !30
  %i.hw = zext i8 %i.hv to i64
  %i.hx = sub i32 256, %i.hs
  %i.hy = lshr i32 %i.hx, 29                      ; 2 uses
  %i.hz = add i32 %i.hs, -1
  %i.ia = lshr i32 %i.hz, %i.hy
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @deflate_offset_slot, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !30
  %i.ie = zext i8 %i.id to i32
  %i.if = shl nuw nsw i32 %i.hy, 1
  %i.ig = add nuw nsw i32 %i.if, %i.ie            ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.hw
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1028 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !31
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !31
  %i.il = zext nneg i32 %i.ig to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !31
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr %i.im, align 4, !tbaa !31
  %i.ip = shl nuw i32 %.068.i, 23
  %i.iq = load i32, ptr %.0160.ptr, align 4, !tbaa !38
  %i.ir = or i32 %i.iq, %i.ip
  store i32 %i.ir, ptr %.0160.ptr, align 4, !tbaa !38
  %i.is = trunc i64 %i.hr to i16
  %i.it = getelementptr inbounds nuw i8, ptr %.0160.ptr, i64 4
  store i16 %i.is, ptr %i.it, align 4, !tbaa !42
  %i.iu = trunc nuw nsw i32 %i.ig to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %.0160.ptr, i64 6
  store i16 %i.iu, ptr %i.iv, align 2, !tbaa !43
  %.0160.add = add nuw nsw i64 %.0160.idx, 8      ; 2 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.0160.add
  store i32 0, ptr %.ptr, align 4, !tbaa !38
  %i.iw = add i32 %.068.i, -1                     ; 3 uses
  %i.ix = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.iy = add nuw i32 %.068.i, 4
  %i.iz = zext i32 %i.iy to i64
  %i.ja = sub i64 %i.v, %i.ix
  %i.jb = icmp slt i64 %i.ja, %i.iz
  br i1 %i.jb, label %ht_matchfinder_skip_bytes.exit, label %bb.ao, !prof !39

bb.ao:                                            ; preds = %bb.an
  %i.jc = ptrtoint ptr %.3169 to i64
  %i.jd = sub i64 %i.ix, %i.jc
  %i.je = trunc i64 %i.jd to i32                  ; 3 uses
  %i.jf = add i32 %i.je, -32769
  %i.jg = add i32 %i.jf, %i.iw
  %i.jh = icmp ult i32 %i.jg, -32768
  br i1 %i.jh, label %.preheader, label %bb.ap

.preheader:                                       ; preds = %bb.ao, %.preheader
  %.015.i115 = phi i64 [ %i.kg, %.preheader ], [ 131072, %bb.ao ]
  %.0.i116 = phi ptr [ %i.kf, %.preheader ], [ %i.c, %bb.ao ] ; 10 uses
  %i.ji = load <8 x i16>, ptr %.0.i116, align 16, !tbaa !30
  %i.jj = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ji, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jj, ptr %.0.i116, align 16, !tbaa !30
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i116, i64 16 ; 2 uses
  %i.jl = load <8 x i16>, ptr %i.jk, align 16, !tbaa !30
  %i.jm = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jl, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jm, ptr %i.jk, align 16, !tbaa !30
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i116, i64 32 ; 2 uses
  %i.jo = load <8 x i16>, ptr %i.jn, align 16, !tbaa !30
  %i.jp = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jo, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jp, ptr %i.jn, align 16, !tbaa !30
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i116, i64 48 ; 2 uses
  %i.jr = load <8 x i16>, ptr %i.jq, align 16, !tbaa !30
  %i.js = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jr, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.js, ptr %i.jq, align 16, !tbaa !30
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i116, i64 64 ; 2 uses
  %i.ju = load <8 x i16>, ptr %i.jt, align 16, !tbaa !30
  %i.jv = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ju, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jv, ptr %i.jt, align 16, !tbaa !30
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i116, i64 80 ; 2 uses
  %i.jx = load <8 x i16>, ptr %i.jw, align 16, !tbaa !30
  %i.jy = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.jx, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.jy, ptr %i.jw, align 16, !tbaa !30
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i116, i64 96 ; 2 uses
  %i.ka = load <8 x i16>, ptr %i.jz, align 16, !tbaa !30
  %i.kb = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.ka, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.kb, ptr %i.jz, align 16, !tbaa !30
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i116, i64 112 ; 2 uses
  %i.kd = load <8 x i16>, ptr %i.kc, align 16, !tbaa !30
  %i.ke = tail call <8 x i16> @llvm.sadd.sat.v8i16(<8 x i16> %i.kd, <8 x i16> splat (i16 -32768))
  store <8 x i16> %i.ke, ptr %i.kc, align 16, !tbaa !30
  %i.kf = getelementptr inbounds nuw i8, ptr %.0.i116, i64 128
  %i.kg = add nsw i64 %.015.i115, -128            ; 2 uses
  %.not.i117.1 = icmp eq i64 %i.kg, 0
  br i1 %.not.i117.1, label %matchfinder_rebase_sse2.exit118, label %.preheader, !llvm.loop !1

matchfinder_rebase_sse2.exit118:                  ; preds = %.preheader
  %i.kh = getelementptr inbounds nuw i8, ptr %.3169, i64 32768
  %i.ki = add i32 %i.je, -32768
  br label %bb.ap

bb.ap:                                            ; preds = %matchfinder_rebase_sse2.exit118, %bb.ao
  %.4170 = phi ptr [ %i.kh, %matchfinder_rebase_sse2.exit118 ], [ %.3169, %bb.ao ]
  %.031.i = phi i32 [ %i.ki, %matchfinder_rebase_sse2.exit118 ], [ %i.je, %bb.ao ] ; 3 uses
  %xtraiter = and i32 %i.iw, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ap
  %i.kj = zext nneg i32 %i.cw to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kj ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 2
  %i.km = load i16, ptr %i.kk, align 2, !tbaa !40
  store i16 %i.km, ptr %i.kl, align 2, !tbaa !40
  %i.kn = trunc i32 %.031.i to i16
  store i16 %i.kn, ptr %i.kk, align 4, !tbaa !40
  %i.ko = getelementptr inbounds nuw i8, ptr %.161, i64 2 ; 2 uses
  %.0.copyload.i77.prol = load i32, ptr %i.ko, align 1
  %i.kp = mul i32 %.0.copyload.i77.prol, 506832829
  %i.kq = lshr i32 %i.kp, 17                      ; 2 uses
  %i.kr = add nsw i32 %.031.i, 1
  %i.ks = add i32 %.068.i, -2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ap
  %.lcssa.unr = phi i32 [ poison, %bb.ap ], [ %i.kq, %.prol.loopexit.unr-lcssa ]
  %.032.i.unr = phi ptr [ %i.cu, %bb.ap ], [ %i.ko, %.prol.loopexit.unr-lcssa ]
  %.1.i.unr = phi i32 [ %.031.i, %bb.ap ], [ %i.kr, %.prol.loopexit.unr-lcssa ]
  %.030.i.unr = phi i32 [ %i.cw, %bb.ap ], [ %i.kq, %.prol.loopexit.unr-lcssa ]
  %.029.i.unr = phi i32 [ %i.iw, %bb.ap ], [ %i.ks, %.prol.loopexit.unr-lcssa ]
  %i.kt = icmp eq i32 %.068.i, 2
  br i1 %i.kt, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.032.i = phi ptr [ %i.li, %.new ], [ %.032.i.unr, %.prol.loopexit ] ; 2 uses
  %.1.i = phi i32 [ %i.ll, %.new ], [ %.1.i.unr, %.prol.loopexit ] ; 3 uses
  %.030.i = phi i32 [ %i.lk, %.new ], [ %.030.i.unr, %.prol.loopexit ]
  %.029.i = phi i32 [ %i.lm, %.new ], [ %.029.i.unr, %.prol.loopexit ]
  %i.ku = zext nneg i32 %.030.i to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ku ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.kx = load i16, ptr %i.kv, align 2, !tbaa !40
  store i16 %i.kx, ptr %i.kw, align 2, !tbaa !40
  %i.ky = trunc i32 %.1.i to i16
  store i16 %i.ky, ptr %i.kv, align 4, !tbaa !40
  %i.kz = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %.0.copyload.i77 = load i32, ptr %i.kz, align 1
  %i.la = mul i32 %.0.copyload.i77, 506832829
  %i.lb = lshr i32 %i.la, 17
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lc ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %i.lf = load i16, ptr %i.ld, align 2, !tbaa !40
  store i16 %i.lf, ptr %i.le, align 2, !tbaa !40
  %i.lg = trunc i32 %.1.i to i16
  %i.lh = add i16 %i.lg, 1
  store i16 %i.lh, ptr %i.ld, align 4, !tbaa !40
  %i.li = getelementptr inbounds nuw i8, ptr %.032.i, i64 2 ; 2 uses
  %.0.copyload.i77.1 = load i32, ptr %i.li, align 1
  %i.lj = mul i32 %.0.copyload.i77.1, 506832829
  %i.lk = lshr i32 %i.lj, 17                      ; 2 uses
  %i.ll = add nsw i32 %.1.i, 2
  %i.lm = add i32 %.029.i, -2                     ; 2 uses
  %.not.i74.1 = icmp eq i32 %i.lm, 0
  br i1 %.not.i74.1, label %.unr-lcssa, label %.new, !llvm.loop !81

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.lk, %.new ] ; 2 uses
  %i.ln = zext nneg i32 %.lcssa to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ln
  tail call void @llvm.prefetch.p0(ptr nonnull %i.lo, i32 1, i32 3, i32 1)
  br label %ht_matchfinder_skip_bytes.exit

ht_matchfinder_skip_bytes.exit:                   ; preds = %bb.an, %.unr-lcssa
  %.5 = phi ptr [ %.3169, %bb.an ], [ %.4170, %.unr-lcssa ]
  %.3165 = phi i32 [ %i.cw, %bb.an ], [ %.lcssa, %.unr-lcssa ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.161, i64 %i.ht
  br label %bb.aq

ht_matchfinder_longest_match.exit.thread:         ; preds = %bb.ac, %bb.ad, %bb.g, %ht_matchfinder_longest_match.exit
  %i.lq = load i8, ptr %.161, align 1, !tbaa !30
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.lr ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !31
  %i.lu = add i32 %i.lt, 1
  store i32 %i.lu, ptr %i.ls, align 4, !tbaa !31
  %i.lv = load i32, ptr %.0160.ptr, align 4, !tbaa !38
  %i.lw = add i32 %i.lv, 1
  store i32 %i.lw, ptr %.0160.ptr, align 4, !tbaa !38
  br label %bb.aq

bb.aq:                                            ; preds = %ht_matchfinder_longest_match.exit.thread, %ht_matchfinder_skip_bytes.exit
  %.2168.ph = phi ptr [ %.5, %ht_matchfinder_skip_bytes.exit ], [ %.3169, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.2164.ph = phi i32 [ %.3165, %ht_matchfinder_skip_bytes.exit ], [ %i.cw, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.1161.ph.idx = phi i64 [ %.0160.add, %ht_matchfinder_skip_bytes.exit ], [ %.0160.idx, %ht_matchfinder_longest_match.exit.thread ] ; 2 uses
  %.464.ph = phi ptr [ %i.lp, %ht_matchfinder_skip_bytes.exit ], [ %i.cu, %ht_matchfinder_longest_match.exit.thread ] ; 3 uses
  %i.lx = icmp ult ptr %.464.ph, %.0.i
  %i.ly = icmp slt i64 %.1161.ph.idx, 202688
  %i.lz = select i1 %i.lx, i1 %i.ly, i1 false
  br i1 %i.lz, label %bb.c, label %.loopexit200, !llvm.loop !82

.loopexit200:                                     ; preds = %bb.aq, %.preheader199.prol.loopexit, %.preheader199
  %.3191 = phi i32 [ %.1, %.preheader199.prol.loopexit ], [ %.1, %.preheader199 ], [ %.2, %bb.aq ]
  %.4189 = phi i32 [ 0, %.preheader199.prol.loopexit ], [ 0, %.preheader199 ], [ %.359, %bb.aq ]
  %.464187 = phi ptr [ %i.bf, %.preheader199 ], [ %.lcssa305.unr, %.preheader199.prol.loopexit ], [ %.464.ph, %bb.aq ] ; 3 uses
  %.2164184 = phi i32 [ %.1163, %.preheader199.prol.loopexit ], [ %.1163, %.preheader199 ], [ %.2164.ph, %bb.aq ]
  %.2168182 = phi ptr [ %.1167, %.preheader199.prol.loopexit ], [ %.1167, %.preheader199 ], [ %.2168.ph, %bb.aq ]
  %i.ma = ptrtoint ptr %.464187 to i64
  %i.mb = sub i64 %i.ma, %i.ae
  %i.mc = trunc i64 %i.mb to i32
  %i.md = icmp eq ptr %.464187, %i.u              ; 2 uses
  %i.me = load i32, ptr %i.y, align 8, !tbaa !31
  %i.mf = add i32 %i.me, 1
  store i32 %i.mf, ptr %i.y, align 8, !tbaa !31
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 288, i32 noundef 14, ptr noundef nonnull readonly %i.w, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.z)
  tail call fastcc void @deflate_make_huffman_code(i32 noundef 32, i32 noundef 15, ptr noundef nonnull readonly %i.x, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac)
  tail call fastcc void @deflate_flush_block(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.060, i32 noundef %i.mc, ptr noundef nonnull readonly %.ptr192, i1 noundef zeroext %i.md)
  br i1 %i.md, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %.loopexit200
  %i.mg = load i8, ptr %i.ad, align 8, !tbaa !47, !range !48, !noundef !49
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %.critedge, label %matchfinder_init_sse2.exit, !llvm.loop !83

.critedge:                                        ; preds = %.loopexit200, %bb.ar
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal void @deflate_compress_greedy(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #3 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 72 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6080 ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.011.i.i = phi i64 [ 196608, %bb.a ], [ %i.u, %bb.b ]
  %.0.i.i = phi ptr [ %i.d, %bb.a ], [ %i.t, %bb.b ] ; 17 uses
  store <2 x i64> splat (i64 -9223231297218904064), ptr %.0.i.i, align 16, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.e, align 16, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.f, align 16, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.g, align 16, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.h, align 16, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.i, align 16, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.j, align 16, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 112
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.k, align 16, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 128
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.l, align 16, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 144
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.m, align 16, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 160
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.n, align 16, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 176
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.o, align 16, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 192
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.p, align 16, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 208
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.q, align 16, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.r, align 16, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 240
  store <2 x i64> splat (i64 -9223231297218904064), ptr %i.s, align 16, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 256
  %i.u = add nsw i64 %.011.i.i, -256              ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.3, label %hc_matchfinder_init.exit.preheader, label %bb.b, !llvm.loop !0

hc_matchfinder_init.exit.preheader:               ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %. = tail call i32 @llvm.umin.i32(i32 %i.c, i32 258)
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
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 52
end_hunk_1
begin_hunk_2_@deflate_flush_block:.preheader619
  %i.ajd = load i16, ptr %i.ajc, align 2, !tbaa !43
  %i.aje = zext nneg i32 %i.adc to i64            ; 3 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !30
  %i.ajh = zext i32 %i.ajg to i64
  %i.aji = zext nneg i32 %.22554 to i64
  %i.ajj = shl nuw nsw i64 %i.ajh, %i.aji
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.aje
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !30
  %i.ajm = zext i8 %i.ajl to i32
  %i.ajn = add nuw nsw i32 %.22554, %i.ajm        ; 2 uses
  %i.ajo = zext i16 %i.ajd to i64                 ; 4 uses
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %i.ajo
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !31
  %i.ajr = zext i32 %i.ajq to i64
  %i.ajs = zext nneg i32 %i.ajn to i64
  %i.ajt = shl i64 %i.ajr, %i.ajs
  %i.aju = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.ajo
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !30
  %i.ajw = zext i8 %i.ajv to i32
  %i.ajx = add nuw nsw i32 %i.ajn, %i.ajw         ; 2 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %i.ajo
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !31
  %i.aka = sub i32 %i.ajb, %i.ajz
  %i.akb = zext i32 %i.aka to i64
  %i.akc = zext nneg i32 %i.ajx to i64
  %i.akd = shl i64 %i.akb, %i.akc
  %i.ake = or i64 %i.ajj, %i.ajt
  %i.akf = or i64 %i.ake, %i.akd
  %i.akg = or i64 %i.akf, %.22                    ; 4 uses
  %i.akh = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %i.ajo
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !30
  %i.akj = zext i8 %i.aki to i32
  %i.akk = add nuw nsw i32 %i.ajx, %i.akj         ; 6 uses
  %i.akl = icmp ult ptr %.21525, %i.bm
  br i1 %i.akl, label %bb.ac, label %.preheader602, !prof !41

.preheader602:                                    ; preds = %bb.ab
  %i.akm = icmp ugt i32 %i.akk, 7
  br i1 %i.akm, label %.lr.ph695, label %.loopexit603

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.akg, ptr %.21525, align 1
  %i.akn = and i32 %i.akk, -8
  %i.ako = zext nneg i32 %i.akn to i64
  %i.akp = lshr i64 %i.akg, %i.ako
  %i.akq = lshr i32 %i.akk, 3
  %i.akr = zext nneg i32 %i.akq to i64
  %i.aks = getelementptr inbounds nuw i8, ptr %.21525, i64 %i.akr
  %i.akt = and i32 %i.akk, 7
  br label %.loopexit603

.lr.ph695:                                        ; preds = %.preheader602, %.lr.ph695
  %.23694 = phi i64 [ %i.akx, %.lr.ph695 ], [ %i.akg, %.preheader602 ] ; 2 uses
  %.22526693 = phi ptr [ %i.akv, %.lr.ph695 ], [ %.21525, %.preheader602 ] ; 2 uses
  %.23555692 = phi i32 [ %i.akw, %.lr.ph695 ], [ %i.akk, %.preheader602 ]
  %i.aku = trunc i64 %.23694 to i8
  %i.akv = getelementptr inbounds nuw i8, ptr %.22526693, i64 1 ; 2 uses
  store i8 %i.aku, ptr %.22526693, align 1, !tbaa !30
  %i.akw = add nsw i32 %.23555692, -8             ; 3 uses
  %i.akx = lshr i64 %.23694, 8                    ; 2 uses
  %i.aky = icmp ugt i32 %i.akw, 7
  br i1 %i.aky, label %.lr.ph695, label %.loopexit603, !llvm.loop !127

.loopexit603:                                     ; preds = %.lr.ph695, %.preheader602, %bb.ac
  %.24556 = phi i32 [ %i.akt, %bb.ac ], [ %i.akk, %.preheader602 ], [ %i.akw, %.lr.ph695 ]
  %.23527 = phi ptr [ %i.aks, %bb.ac ], [ %.21525, %.preheader602 ], [ %i.akv, %.lr.ph695 ]
  %.24 = phi i64 [ %i.akp, %bb.ac ], [ %i.akg, %.preheader602 ], [ %i.akx, %.lr.ph695 ]
  %i.akz = getelementptr inbounds nuw i8, ptr %.4, i64 %i.aje
  %i.ala = getelementptr inbounds nuw i8, ptr %.0475, i64 8
  br label %bb.u

.loopexit599:                                     ; preds = %.loopexit605, %.loopexit596
  %.26558 = phi i32 [ %.15547, %.loopexit596 ], [ %.22554, %.loopexit605 ] ; 3 uses
  %.25529 = phi ptr [ %.15519, %.loopexit596 ], [ %.21525, %.loopexit605 ] ; 6 uses
  %.26 = phi i64 [ %.15, %.loopexit596 ], [ %.22, %.loopexit605 ]
  %i.alb = getelementptr inbounds nuw i8, ptr %.0494, i64 1024
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !31
  %i.ald = zext i32 %i.alc to i64
  %i.ale = zext nneg i32 %.26558 to i64
  %i.alf = shl nuw nsw i64 %i.ald, %i.ale
  %i.alg = or i64 %i.alf, %.26                    ; 5 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.0494, i64 1536
  %i.ali = load i8, ptr %i.alh, align 4, !tbaa !30
  %i.alj = zext i8 %i.ali to i32                  ; 2 uses
  %i.alk = add nuw nsw i32 %.26558, %i.alj        ; 7 uses
  %i.all = icmp ult ptr %.25529, %i.bm
  br i1 %i.all, label %bb.ad, label %.preheader593, !prof !41

.preheader593:                                    ; preds = %.loopexit599
  %i.alm = icmp ugt i32 %i.alk, 7
  br i1 %i.alm, label %.lr.ph716.preheader, label %.loopexit

.lr.ph716.preheader:                              ; preds = %.preheader593
  %i.aln = add i32 %.26558, %i.alj
  %i.alo = add i32 %i.aln, -8                     ; 2 uses
  %i.alp = lshr i32 %i.alo, 3
  %i.alq = add nuw nsw i32 %i.alp, 1
  %xtraiter1072 = and i32 %i.alq, 7               ; 2 uses
  %lcmp.mod1073.not = icmp eq i32 %xtraiter1072, 0
  br i1 %lcmp.mod1073.not, label %.lr.ph716.prol.loopexit, label %.lr.ph716.prol

.lr.ph716.prol:                                   ; preds = %.lr.ph716.preheader, %.lr.ph716.prol
  %.27715.prol = phi i64 [ %i.alu, %.lr.ph716.prol ], [ %i.alg, %.lr.ph716.preheader ] ; 2 uses
  %.26530714.prol = phi ptr [ %i.als, %.lr.ph716.prol ], [ %.25529, %.lr.ph716.preheader ] ; 2 uses
  %.27559713.prol = phi i32 [ %i.alt, %.lr.ph716.prol ], [ %i.alk, %.lr.ph716.preheader ]
  %prol.iter1074 = phi i32 [ %prol.iter1074.next, %.lr.ph716.prol ], [ 0, %.lr.ph716.preheader ]
  %i.alr = trunc i64 %.27715.prol to i8
  %i.als = getelementptr inbounds nuw i8, ptr %.26530714.prol, i64 1 ; 3 uses
  store i8 %i.alr, ptr %.26530714.prol, align 1, !tbaa !30
  %i.alt = add nsw i32 %.27559713.prol, -8        ; 3 uses
  %i.alu = lshr i64 %.27715.prol, 8               ; 3 uses
  %prol.iter1074.next = add i32 %prol.iter1074, 1 ; 2 uses
  %prol.iter1074.cmp.not = icmp eq i32 %prol.iter1074.next, %xtraiter1072
  br i1 %prol.iter1074.cmp.not, label %.lr.ph716.prol.loopexit, label %.lr.ph716.prol, !llvm.loop !128

.lr.ph716.prol.loopexit:                          ; preds = %.lr.ph716.prol, %.lr.ph716.preheader
  %.27715.unr = phi i64 [ %i.alg, %.lr.ph716.preheader ], [ %i.alu, %.lr.ph716.prol ]
  %.26530714.unr = phi ptr [ %.25529, %.lr.ph716.preheader ], [ %i.als, %.lr.ph716.prol ]
  %.27559713.unr = phi i32 [ %i.alk, %.lr.ph716.preheader ], [ %i.alt, %.lr.ph716.prol ]
  %.lcssa1000.unr = phi ptr [ poison, %.lr.ph716.preheader ], [ %i.als, %.lr.ph716.prol ]
  %.lcssa999.unr = phi i32 [ poison, %.lr.ph716.preheader ], [ %i.alt, %.lr.ph716.prol ]
  %.lcssa998.unr = phi i64 [ poison, %.lr.ph716.preheader ], [ %i.alu, %.lr.ph716.prol ]
  %i.alv = icmp ult i32 %i.alo, 56
  br i1 %i.alv, label %.loopexit, label %.lr.ph716

bb.ad:                                            ; preds = %.loopexit599
  store i64 %i.alg, ptr %.25529, align 1
  %i.alw = and i32 %i.alk, -8
  %i.alx = zext nneg i32 %i.alw to i64
  %i.aly = lshr i64 %i.alg, %i.alx
  %i.alz = lshr i32 %i.alk, 3
  %i.ama = zext nneg i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw i8, ptr %.25529, i64 %i.ama
  %i.amc = and i32 %i.alk, 7
  br label %.loopexit

.lr.ph716:                                        ; preds = %.lr.ph716.prol.loopexit, %.lr.ph716
  %.27715 = phi i64 [ 0, %.lr.ph716 ], [ %.27715.unr, %.lr.ph716.prol.loopexit ] ; 8 uses
  %.26530714 = phi ptr [ %i.amz, %.lr.ph716 ], [ %.26530714.unr, %.lr.ph716.prol.loopexit ] ; 9 uses
  %.27559713 = phi i32 [ %i.ana, %.lr.ph716 ], [ %.27559713.unr, %.lr.ph716.prol.loopexit ]
  %i.amd = trunc i64 %.27715 to i8
  %i.ame = getelementptr inbounds nuw i8, ptr %.26530714, i64 1
  store i8 %i.amd, ptr %.26530714, align 1, !tbaa !30
  %i.amf = lshr i64 %.27715, 8
  %i.amg = trunc i64 %i.amf to i8
  %i.amh = getelementptr inbounds nuw i8, ptr %.26530714, i64 2
  store i8 %i.amg, ptr %i.ame, align 1, !tbaa !30
  %i.ami = lshr i64 %.27715, 16
  %i.amj = trunc i64 %i.ami to i8
  %i.amk = getelementptr inbounds nuw i8, ptr %.26530714, i64 3
  store i8 %i.amj, ptr %i.amh, align 1, !tbaa !30
  %i.aml = lshr i64 %.27715, 24
  %i.amm = trunc i64 %i.aml to i8
  %i.amn = getelementptr inbounds nuw i8, ptr %.26530714, i64 4
  store i8 %i.amm, ptr %i.amk, align 1, !tbaa !30
  %i.amo = lshr i64 %.27715, 32
  %i.amp = trunc i64 %i.amo to i8
  %i.amq = getelementptr inbounds nuw i8, ptr %.26530714, i64 5
  store i8 %i.amp, ptr %i.amn, align 1, !tbaa !30
  %i.amr = lshr i64 %.27715, 40
  %i.ams = trunc i64 %i.amr to i8
  %i.amt = getelementptr inbounds nuw i8, ptr %.26530714, i64 6
  store i8 %i.ams, ptr %i.amq, align 1, !tbaa !30
  %i.amu = lshr i64 %.27715, 48
  %i.amv = trunc i64 %i.amu to i8
  %i.amw = getelementptr inbounds nuw i8, ptr %.26530714, i64 7
  store i8 %i.amv, ptr %i.amt, align 1, !tbaa !30
  %i.amx = lshr i64 %.27715, 56
  %i.amy = trunc nuw i64 %i.amx to i8
  %i.amz = getelementptr inbounds nuw i8, ptr %.26530714, i64 8 ; 2 uses
  store i8 %i.amy, ptr %i.amw, align 1, !tbaa !30
  %i.ana = add nsw i32 %.27559713, -64            ; 3 uses
  %i.anb = icmp ugt i32 %i.ana, 7
  br i1 %i.anb, label %.lr.ph716, label %.loopexit, !llvm.loop !129

.loopexit:                                        ; preds = %.lr.ph716.prol.loopexit, %.lr.ph716, %bb.e, %bb.d, %.preheader593, %bb.ad
  %.28560 = phi i32 [ 0, %bb.d ], [ %i.amc, %bb.ad ], [ %i.alk, %.preheader593 ], [ 0, %bb.e ], [ %.lcssa999.unr, %.lr.ph716.prol.loopexit ], [ %i.ana, %.lr.ph716 ]
  %.27531 = phi ptr [ %i.na, %bb.d ], [ %i.amb, %bb.ad ], [ %.25529, %.preheader593 ], [ %i.nl, %bb.e ], [ %.lcssa1000.unr, %.lr.ph716.prol.loopexit ], [ %i.amz, %.lr.ph716 ]
  %.28 = phi i64 [ 0, %bb.d ], [ %i.aly, %bb.ad ], [ %i.alg, %.preheader593 ], [ 0, %bb.e ], [ %.lcssa998.unr, %.lr.ph716.prol.loopexit ], [ 0, %.lr.ph716 ]
  store i64 %.28, ptr %1, align 8, !tbaa !57
  store i32 %.28560, ptr %i.b, align 8, !tbaa !58
  store ptr %.27531, ptr %i.d, align 8, !tbaa !59
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @deflate_make_huffman_code(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 7, 16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 10 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.d = shl nuw nsw i32 %0, 2
  %i.e = zext nneg i32 %i.d to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.e, i1 false)
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 6 uses
  %i.g = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31
  %..i = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %i.f)
  %i.k = zext nneg i32 %..i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.f)
  %i.r = zext nneg i32 %..i.1 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !31
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader47.i.preheader.unr-lcssa, label %bb.b, !llvm.loop !131

.preheader47.i.preheader.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader47.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader47.i.preheader.unr-lcssa, %bb.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %.preheader47.i.preheader.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.w = load i32, ptr %i.v, align 4, !tbaa !31
  %..i.epil = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.f)
  %i.x = zext nneg i32 %..i.epil to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !31
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !31
  br label %.preheader47.i.preheader

.preheader47.i.preheader:                         ; preds = %.preheader47.i.preheader.unr-lcssa, %.epil.preheader
  %xtraiter100 = and i64 %i.g, 3                  ; 3 uses
  %unroll_iter104 = and i64 %i.g, -4
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %.preheader47.i, %.preheader47.i.preheader
  %indvars.iv64.i = phi i64 [ 1, %.preheader47.i.preheader ], [ %indvars.iv.next65.i.3, %.preheader47.i ] ; 5 uses
  %.03855.i = phi i32 [ 0, %.preheader47.i.preheader ], [ %i.ap, %.preheader47.i ] ; 2 uses
  %niter105 = phi i64 [ 0, %.preheader47.i.preheader ], [ %niter105.next.3, %.preheader47.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  store i32 %.03855.i, ptr %i.ab, align 4, !tbaa !31
  %i.ad = add i32 %i.ac, %.03855.i                ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !31
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !31
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !31
  store i32 %i.al, ptr %i.an, align 4, !tbaa !31
  %i.ap = add i32 %i.ao, %i.al                    ; 3 uses
  %indvars.iv.next65.i.3 = add nuw nsw i64 %indvars.iv64.i, 4 ; 2 uses
  %niter105.next.3 = add nuw nsw i64 %niter105, 4 ; 2 uses
  %niter105.ncmp.3 = icmp eq i64 %niter105.next.3, %unroll_iter104
  br i1 %niter105.ncmp.3, label %.preheader.i.preheader.unr-lcssa, label %.preheader47.i, !llvm.loop !132

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader47.i
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.preheader.i.preheader, label %.preheader47.i.epil.preheader

.preheader47.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa
  %lcmp.mod103 = icmp ne i64 %xtraiter100, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %.preheader47.i.epil

.preheader47.i.epil:                              ; preds = %.preheader47.i.epil, %.preheader47.i.epil.preheader
  %indvars.iv64.i.epil = phi i64 [ %indvars.iv.next65.i.epil, %.preheader47.i.epil ], [ %indvars.iv.next65.i.3, %.preheader47.i.epil.preheader ] ; 2 uses
  %.03855.i.epil = phi i32 [ %i.as, %.preheader47.i.epil ], [ %i.ap, %.preheader47.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader47.i.epil ], [ 0, %.preheader47.i.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i.epil ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !31
  store i32 %.03855.i.epil, ptr %i.aq, align 4, !tbaa !31
  %i.as = add i32 %i.ar, %.03855.i.epil           ; 2 uses
  %indvars.iv.next65.i.epil = add nuw nsw i64 %indvars.iv64.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter100
  br i1 %epil.iter.cmp.not, label %.preheader.i.preheader, label %.preheader47.i.epil, !llvm.loop !133

.preheader.i.preheader:                           ; preds = %.preheader47.i.epil, %.preheader.i.preheader.unr-lcssa
  %.lcssa98 = phi i32 [ %i.ap, %.preheader.i.preheader.unr-lcssa ], [ %i.as, %.preheader47.i.epil ] ; 5 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %bb.e ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv69.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31 ; 3 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.av = shl i32 %i.au, 10
  %i.aw = trunc nuw nsw i64 %indvars.iv69.i to i32
  %i.ax = or i32 %i.av, %i.aw
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.f)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31 ; 2 uses
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !31
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bd
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv69.i
  store i8 0, ptr %i.bf, align 1, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count.i
  br i1 %exitcond73.not.i, label %bb.f, label %.preheader.i, !llvm.loop !134

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count.i ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !31 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bj ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bg, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !31
  %i.bn = sub i32 %i.bm, %i.bi                    ; 6 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 12 uses
  %i.bp = lshr i32 %i.bn, 1                       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not7.i.i.i, label %heapify_array.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.bq = zext i32 %i.bn to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %heapify_subtree.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.br, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %heapify_subtree.exit.i.i.i ] ; 5 uses
  %.08.i.i.i = phi i32 [ %i.bp, %.lr.ph.preheader.i.i.i ], [ %i.cn, %heapify_subtree.exit.i.i.i ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !31 ; 2 uses
  %i.bu = shl nuw nsw i64 %indvars.iv.i.i.i, 1    ; 2 uses
  %.not27.i.i.i.i = icmp samesign ugt i64 %i.bu, %i.bq
  br i1 %.not27.i.i.i.i, label %heapify_subtree.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.bv = trunc nuw i64 %i.bu to i32
  %i.bw = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i
  %i.bx = phi i32 [ %i.cl, %bb.i ], [ %i.bv, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.02228.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.i ], [ %i.bw, %.lr.ph.i.preheader.i.i.i ]
  %i.by = icmp ult i32 %i.bx, %i.bn
  br i1 %i.by, label %bb.g, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i.i.i = zext i32 %i.bx to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.phi.trans.insert.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i.i, align 4, !tbaa !31
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = or disjoint i32 %i.bx, 1                ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !31 ; 2 uses
  %i.cd = zext i32 %i.bx to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !31 ; 2 uses
  %i.cg = icmp ugt i32 %i.cc, %i.cf
  %spec.select.i.i.i.i = select i1 %i.cg, i32 %i.bz, i32 %i.bx ; 2 uses
  %i.ch = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 %i.cf)
  %.pre33.i.i.i.i = zext i32 %spec.select.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi34.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %.pre33.i.i.i.i, %bb.g ]
  %i.ci = phi i32 [ %.pre.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.ch, %bb.g ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.bx, %.lr.ph._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %.not26.i.i.i.i = icmp ult i32 %i.bt, %i.ci
  %i.cj = zext i32 %.02228.i.i.i.i to i64         ; 2 uses
  br i1 %.not26.i.i.i.i, label %bb.i, label %heapify_subtree.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cj
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !31
  %i.cl = shl i32 %.0.i.i.i.i, 1                  ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.cl, %i.bn
  br i1 %.not.i.i.i.i, label %heapify_subtree.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !135

heapify_subtree.exit.i.i.i:                       ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %.pre-phi34.i.i.i.i, %bb.i ], [ %i.cj, %bb.h ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.pre-phi.i.i.i.i
  store i32 %i.bt, ptr %i.cm, align 4, !tbaa !31
  %i.cn = add nsw i32 %.08.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %.not.i.i.i, label %heapify_array.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !136

heapify_array.exit.i.i:                           ; preds = %heapify_subtree.exit.i.i.i, %bb.f
  %i.co = icmp ugt i32 %i.bn, 1
  br i1 %i.co, label %.lr.ph.preheader.i.i, label %sort_symbols.exit

.lr.ph.preheader.i.i:                             ; preds = %heapify_array.exit.i.i
  %i.cp = zext i32 %i.bn to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %heapify_subtree.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.cp, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %heapify_subtree.exit.i.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.i ; 2 uses
end_hunk_2
