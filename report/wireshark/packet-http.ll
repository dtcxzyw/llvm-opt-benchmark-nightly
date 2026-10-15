Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-http?download=true
inline.NumInlined: 68
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_http_message:bb.a
bb.fn:                                            ; preds = %.critedge966
  %i.wf = load i32, ptr @http_follow_tap, align 4
  %i.wg = sub i32 %.3849, %1
  %i.wh = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %1, i32 noundef %i.wg)
  call void @tap_queue_packet(i32 noundef %i.wf, ptr noundef %2, ptr noundef %i.wh)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.critedge966
  %i.wi = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.3849) ; 5 uses
  %i.wj = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.3849) ; 4 uses
  %i.wk = getelementptr i8, ptr %.18261167, i64 44
  %i.wl = load i8, ptr %i.wk, align 4, !range !10, !noundef !11
  %i.wm = trunc nuw i8 %i.wl to i1
  br i1 %i.wm, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  %i.wn = getelementptr i8, ptr %.18261167, i64 40
  %i.wo = load i32, ptr %i.wn, align 8
  %i.wp = icmp eq i32 %i.wo, 0
  br i1 %i.wp, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.wq = zext i32 %i.wj to i64
  %i.wr = getelementptr i8, ptr %.18261167, i64 16
  %i.ws = load i64, ptr %i.wr, align 8            ; 2 uses
  %spec.select9671338 = call i64 @llvm.smin.i64(i64 %i.ws, i64 %i.wq)
  %spec.select967 = trunc i64 %spec.select9671338 to i32
  %i.wt = sext i32 %i.wi to i64
  %spec.select9741339 = call i64 @llvm.smin.i64(i64 %i.ws, i64 %i.wt)
  %spec.select974 = trunc i64 %spec.select9741339 to i32
  br label %bb.fv

bb.fr:                                            ; preds = %bb.fp, %bb.fo
  %i.wu = load i32, ptr %i.p, align 4
  switch i32 %i.wu, label %bb.fv [
    i32 0, label %bb.fs
    i32 1, label %bb.ft
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.wv = getelementptr i8, ptr %.18261167, i64 40
  %i.ww = load i32, ptr %i.wv, align 8
  %i.wx = icmp eq i32 %i.ww, 0                    ; 2 uses
  %. = select i1 %i.wx, i32 0, i32 %i.wj
  %.968 = select i1 %i.wx, i32 %i.wi, i32 -1
  br label %bb.fv

bb.ft:                                            ; preds = %bb.fr
  %i.wy = load i32, ptr %i.jj, align 4
  %.fr1337 = freeze i32 %i.wy                     ; 2 uses
  %.off945 = add i32 %.fr1337, -100
  %i.wz = icmp ult i32 %.off945, 100
  br i1 %i.wz, label %bb.fv, label %switch.early.test975

switch.early.test975:                             ; preds = %bb.ft
  switch i32 %.fr1337, label %bb.fu [
    i32 304, label %bb.fv
    i32 204, label %bb.fv
  ]

bb.fu:                                            ; preds = %switch.early.test975
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fq, %switch.early.test975, %switch.early.test975, %bb.ft, %bb.fr, %bb.fs, %bb.fu
  %.1821 = phi i32 [ %i.wj, %bb.fr ], [ 0, %switch.early.test975 ], [ 0, %switch.early.test975 ], [ %., %bb.fs ], [ %i.wj, %bb.fu ], [ %spec.select967, %bb.fq ], [ 0, %bb.ft ] ; 3 uses
  %.0818 = phi i32 [ -1, %bb.fr ], [ %i.wi, %switch.early.test975 ], [ %i.wi, %switch.early.test975 ], [ %.968, %bb.fs ], [ -1, %bb.fu ], [ %spec.select974, %bb.fq ], [ %i.wi, %bb.ft ] ; 2 uses
  %i.xa = load ptr, ptr %i.da, align 8
  %i.xb = getelementptr i8, ptr %i.xa, i64 53
  %i.xc = load i16, ptr %i.xb, align 1
  %i.xd = and i16 %i.xc, 8
  %i.xe = icmp eq i16 %i.xd, 0
  %i.xf = icmp eq ptr %.177611091163, null
  %i.xg = and i1 %i.xf, %i.xe
  %or.cond52 = and i1 %i.jd, %i.xg
  br i1 %or.cond52, label %bb.fw, label %bb.fz

bb.fw:                                            ; preds = %bb.fv
  %.not53 = xor i1 %.0779.shrunk, true
  %i.xh = load ptr, ptr %i.s, align 8
  %i.xi = icmp ne ptr %i.xh, null
  %or.cond55 = select i1 %.not53, i1 %i.xi, i1 false
  %i.xj = load i8, ptr @http_dechunk_body, align 1, !range !10
  %i.xk = trunc nuw i8 %i.xj to i1
  %or.cond57 = select i1 %or.cond55, i1 %i.xk, i1 false
  %i.xl = load i8, ptr @http_desegment_body, align 1, !range !10
  %i.xm = trunc nuw i8 %i.xl to i1
  %or.cond59 = select i1 %or.cond57, i1 %i.xm, i1 false
  br i1 %or.cond59, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.xn = load ptr, ptr %.18261167, align 8
  %i.xo = icmp ne ptr %i.xn, null
  %i.xp = icmp ne ptr %.27971395, null
  %or.cond61 = select i1 %i.xo, i1 %i.xp, i1 false
  br i1 %or.cond61, label %.sink.split1768, label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.426, ptr noundef nonnull @.str.417, i32 noundef 2151, ptr noundef nonnull @.str.427) #23
  unreachable

.sink.split1768:                                  ; preds = %bb.fx
  %i.xq = call ptr @wmem_file_scope()
  %i.xr = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.xq, i64 noundef 32) #22 ; 5 uses
  %i.xs = getelementptr i8, ptr %.18261167, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8
  %i.xu = getelementptr i8, ptr %i.xr, i64 8
  store ptr %i.xt, ptr %i.xu, align 8
  %i.xv = load i32, ptr %i.p, align 4
  store i32 %i.xv, ptr %i.xr, align 8
  %i.xw = getelementptr i8, ptr %i.xr, i64 24
  store ptr %.27971395, ptr %i.xw, align 8
  %i.xx = call ptr @wmem_file_scope()
  %i.xy = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.xx, i64 noundef 32) #22 ; 6 uses
  %i.xz = load ptr, ptr %i.s, align 8
  %i.ya = getelementptr i8, ptr %i.xy, i64 8
  store ptr %i.xz, ptr %i.ya, align 8
  %i.yb = call ptr @streaming_reassembly_info_new()
  store ptr %i.yb, ptr %i.xy, align 8
  %i.yc = getelementptr i8, ptr %i.xy, i64 16
  store ptr %i.xr, ptr %i.yc, align 8
  %i.yd = getelementptr i8, ptr %i.xy, i64 24
  store ptr %.18261167, ptr %i.yd, align 8
  %i.ye = load i32, ptr %.17611381, align 8
  %i.yf = icmp eq i32 %i.ye, %.07581325
  %.1774 = select i1 %i.yf, i64 8, i64 16
  %i.yg = getelementptr i8, ptr %.17611381, i64 %.1774
  store ptr %i.xy, ptr %i.yg, align 8
  br label %bb.fz

bb.fz:                                            ; preds = %.sink.split1768, %bb.fv
  %.1806 = phi ptr [ %.080511031166, %bb.fv ], [ %i.xr, %.sink.split1768 ] ; 2 uses
  %.2777 = phi ptr [ %.177611091163, %bb.fv ], [ %i.xy, %.sink.split1768 ] ; 2 uses
  %i.yh = icmp eq ptr %.1806, null
  br i1 %i.yh, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  %i.yi = load ptr, ptr %i.je, align 8
  %i.yj = call noalias dereferenceable_or_null(32) ptr @wmem_alloc0(ptr noundef %i.yi, i64 noundef 32) #22 ; 4 uses
  %i.yk = getelementptr i8, ptr %.18261167, i64 8
  %i.yl = load ptr, ptr %i.yk, align 8
  %i.ym = getelementptr i8, ptr %i.yj, i64 8
  store ptr %i.yl, ptr %i.ym, align 8
  %i.yn = load i32, ptr %i.p, align 4
  store i32 %i.yn, ptr %i.yj, align 8
  %i.yo = icmp eq ptr %.27971395, null
  br i1 %i.yo, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.yp = load ptr, ptr %i.je, align 8
  %i.yq = call ptr @wmem_map_new(ptr noundef %i.yp, ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.10 = phi ptr [ %i.yq, %bb.gb ], [ %.27971395, %bb.ga ]
  %i.yr = getelementptr i8, ptr %i.yj, i64 24
  store ptr %.10, ptr %i.yr, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.fz, %bb.gc
  %.2807 = phi ptr [ %.1806, %bb.fz ], [ %i.yj, %bb.gc ] ; 2 uses
  %.not946 = icmp eq i32 %.1821, 0
  br i1 %.not946, label %bb.js, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ys = icmp eq i32 %.0818, -1
  br i1 %i.ys, label %.thread1248, label %bb.gf

.thread1248:                                      ; preds = %bb.bt, %bb.ge
  %i.yt = phi i1 [ %i.jd, %bb.ge ], [ true, %bb.bt ]
  %.1826116812311282 = phi ptr [ %.18261167, %bb.ge ], [ %.1826, %bb.bt ]
  %.47841107116512321280 = phi i8 [ %.478411071164, %bb.ge ], [ 1, %bb.bt ]
  %.485012331277 = phi i32 [ %.3849, %bb.ge ], [ %.0846, %bb.bt ] ; 2 uses
  %.584512341276 = phi ptr [ %.4844, %bb.ge ], [ %.0840, %bb.bt ]
  %.583912361274 = phi ptr [ %.4838, %bb.ge ], [ %.0834, %bb.bt ]
  %.383312381272 = phi i8 [ %.2832, %bb.ge ], [ %i.em, %bb.bt ]
  %.282212391270 = phi i32 [ %.1821, %bb.ge ], [ %i.bm, %bb.bt ]
  %.280712411268 = phi ptr [ %.2807, %bb.ge ], [ %.08051103, %bb.bt ]
  %.377812431266 = phi ptr [ %.2777, %bb.ge ], [ %.17761109, %bb.bt ]
  %.677412441264 = phi ptr [ %.17691388, %bb.ge ], [ %.0768, %bb.bt ]
  %.076712461262 = phi ptr [ %i.jg, %bb.ge ], [ null, %bb.bt ]
  %i.yu = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %.485012331277)
  br label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.yv = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.3849, i32 noundef %.0818)
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.thread1248
  %i.yw = phi i1 [ %i.jd, %bb.gf ], [ %i.yt, %.thread1248 ]
  %.1826116812311281 = phi ptr [ %.18261167, %bb.gf ], [ %.1826116812311282, %.thread1248 ] ; 10 uses
  %.47841107116512321279 = phi i8 [ %.478411071164, %bb.gf ], [ %.47841107116512321280, %.thread1248 ] ; 2 uses
  %.485012331278 = phi i32 [ %.3849, %bb.gf ], [ %.485012331277, %.thread1248 ] ; 4 uses
  %.584512341275 = phi ptr [ %.4844, %bb.gf ], [ %.584512341276, %.thread1248 ] ; 9 uses
  %.583912361273 = phi ptr [ %.4838, %bb.gf ], [ %.583912361274, %.thread1248 ] ; 4 uses
  %.383312381271 = phi i8 [ %.2832, %bb.gf ], [ %.383312381272, %.thread1248 ] ; 2 uses
  %.282212391269 = phi i32 [ %.1821, %bb.gf ], [ %.282212391270, %.thread1248 ] ; 4 uses
  %.280712411267 = phi ptr [ %.2807, %bb.gf ], [ %.280712411268, %.thread1248 ] ; 5 uses
  %.377812431265 = phi ptr [ %.2777, %bb.gf ], [ %.377812431266, %.thread1248 ]
  %.677412441263 = phi ptr [ %.17691388, %bb.gf ], [ %.677412441264, %.thread1248 ] ; 4 uses
  %.076712461261 = phi ptr [ %i.jg, %bb.gf ], [ %.076712461262, %.thread1248 ]
  %storemerge = phi ptr [ %i.yv, %bb.gf ], [ %i.yu, %.thread1248 ] ; 20 uses
  %i.yx = getelementptr i8, ptr %.1826116812311281, i64 45
  %i.yy = load i8, ptr %i.yx, align 1, !range !10, !noundef !11
  %i.yz = trunc nuw i8 %i.yy to i1
  br i1 %i.yz, label %bb.gh, label %bb.hl

bb.gh:                                            ; preds = %bb.gg
  %i.za = load i8, ptr @http_dechunk_body, align 1, !range !10, !noundef !11
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.zc = call i32 @call_data_dissector(ptr noundef %storemerge, ptr noundef %2, ptr noundef %.584512341275) ; 0 uses
  br label %.thread1289

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8
  %i.zd = icmp eq ptr %storemerge, null
  br i1 %i.zd, label %chunked_encoding_dissector.exit.thread, label %bb.gk

chunked_encoding_dissector.exit.thread:           ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.thread1289

bb.gk:                                            ; preds = %bb.gj
  %i.ze = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %storemerge, i32 noundef 0) ; 8 uses
  %i.zf = load i32, ptr @ett_http_chunked_response, align 4
  %i.zg = call ptr @proto_tree_add_subtree(ptr noundef %.584512341275, ptr noundef nonnull %storemerge, i32 noundef 0, i32 noundef %i.ze, i32 noundef %i.zf, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.522) ; 5 uses
  %i.zh = getelementptr i8, ptr %2, i64 416
  %i.zi = load ptr, ptr %i.zh, align 8
  %i.zj = zext i32 %i.ze to i64
  %i.zk = call noalias ptr @wmem_alloc(ptr noundef %i.zi, i64 noundef %i.zj) #22 ; 2 uses
  %.not156.i = icmp eq i32 %i.ze, 0
  br i1 %.not156.i, label %chunked_encoding_dissector.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gk
  %.not122.i = icmp eq ptr %i.zg, null
  br label %bb.gl

bb.gl:                                            ; preds = %bb.hf, %.lr.ph.i
  %.0108.neg163.i = phi i32 [ 0, %.lr.ph.i ], [ %.0108.neg.i, %bb.hf ]
  %.094162.i = phi i32 [ -1, %.lr.ph.i ], [ %.2205.i, %bb.hf ] ; 3 uses
  %.095161.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aab, %bb.hf ] ; 3 uses
  %.098160.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aaa, %bb.hf ] ; 3 uses
  %.0100159.i = phi i32 [ 0, %.lr.ph.i ], [ %i.zs, %bb.hf ] ; 2 uses
  %.0103158.i = phi i32 [ %i.ze, %.lr.ph.i ], [ %i.abg, %bb.hf ] ; 4 uses
  %.0108157.i = phi i32 [ 0, %.lr.ph.i ], [ %i.abf, %bb.hf ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.zl = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef nonnull %storemerge, i32 noundef %.0108157.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %i.zm = load i32, ptr %i.d, align 4             ; 2 uses
  %i.zn = icmp ne i32 %i.zm, 0
  %brmerge.not.i = select i1 %i.zn, i1 %i.zl, i1 false
  br i1 %brmerge.not.i, label %bb.gm, label %.thread.i

bb.gm:                                            ; preds = %bb.gl
  %i.zo = call zeroext i1 @tvb_get_string_uint(ptr noundef nonnull %storemerge, i32 noundef %.0108157.i, i32 noundef %i.zm, i32 noundef 33554432, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) ; 0 uses
  %i.zp = load i32, ptr %i.b, align 4             ; 2 uses
  %i.zq = icmp ugt i32 %i.zp, %.0103158.i
  br i1 %i.zq, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  store i32 %.0103158.i, ptr %i.b, align 4
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.zr = phi i32 [ %.0103158.i, %bb.gn ], [ %i.zp, %bb.gm ] ; 3 uses
  %i.zs = add i32 %i.zr, %.0100159.i              ; 3 uses
  %i.zt = add i32 %i.zr, %.098160.i
  %.not121.i = icmp ugt i32 %i.zt, %i.ze
  br i1 %.not121.i, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.426, ptr noundef nonnull @.str.417, i32 noundef 2904, ptr noundef nonnull @.str.523) #23
  unreachable

bb.gq:                                            ; preds = %bb.go
  %i.zu = zext i32 %.098160.i to i64
  %i.zv = getelementptr i8, ptr %i.zk, i64 %i.zu
  %i.zw = load i32, ptr %i.c, align 4
  %i.zx = zext i32 %i.zr to i64
  %i.zy = call ptr @tvb_memcpy(ptr noundef nonnull %storemerge, ptr noundef %i.zv, i32 noundef %i.zw, i64 noundef %i.zx) ; 0 uses
  %i.zz = load i32, ptr %i.b, align 4             ; 5 uses
  %i.aaa = add i32 %i.zz, %.098160.i
  %i.aab = add i32 %.095161.i, 1                  ; 3 uses
  br i1 %.not122.i, label %bb.gw, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aac = icmp eq i32 %i.zz, 0
  %i.aad = load i32, ptr %i.c, align 4            ; 2 uses
  %i.aae = add i32 %.0108.neg163.i, 2             ; 2 uses
  br i1 %i.aac, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aaf = add i32 %i.aad, %i.aae
  %i.aag = load i32, ptr @ett_http_chunk_data, align 4
  %i.aah = call ptr @proto_tree_add_subtree(ptr noundef nonnull %i.zg, ptr noundef nonnull %storemerge, i32 noundef %.0108157.i, i32 noundef %i.aaf, i32 noundef %i.aag, ptr noundef null, ptr noundef nonnull @.str.524)
  br label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  %i.aai = add i32 %i.zz, %i.aae
  %i.aaj = add i32 %i.aai, %i.aad
  %i.aak = load i32, ptr @ett_http_chunk_data, align 4
  %i.aal = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef nonnull %i.zg, ptr noundef nonnull %storemerge, i32 noundef %.0108157.i, i32 noundef %i.aaj, i32 noundef %i.aak, ptr noundef null, ptr noundef nonnull @.str.525, i32 noundef %i.zz)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.1.i1037 = phi i32 [ %.095161.i, %bb.gs ], [ %.094162.i, %bb.gt ] ; 2 uses
  %.092.i = phi ptr [ %i.aah, %bb.gs ], [ %i.aal, %bb.gt ] ; 3 uses
  %i.aam = load i32, ptr @hf_http_chunk_size, align 4
  %i.aan = load i32, ptr %i.b, align 4
  %i.aao = call ptr @proto_tree_add_uint(ptr noundef %.092.i, i32 noundef %i.aam, ptr noundef nonnull %storemerge, i32 noundef %.0108157.i, i32 noundef 1, i32 noundef %i.aan)
  %i.aap = load i32, ptr %i.c, align 4
  %i.aaq = sub i32 %i.aap, %.0108157.i
  call void @proto_item_set_len(ptr noundef %i.aao, i32 noundef %i.aaq)
  %i.aar = load i32, ptr %i.b, align 4            ; 2 uses
  %.not123.i = icmp eq i32 %i.aar, 0
  br i1 %.not123.i, label %.thread201.i, label %bb.gv

.thread201.i:                                     ; preds = %bb.gu
  %i.aas = load i32, ptr %i.c, align 4
  br label %bb.gx

bb.gv:                                            ; preds = %bb.gu
  %i.aat = load i32, ptr @hf_http_chunk_data, align 4
  %i.aau = load i32, ptr %i.c, align 4
  %i.aav = call ptr @proto_tree_add_item(ptr noundef %.092.i, i32 noundef %i.aat, ptr noundef nonnull %storemerge, i32 noundef %i.aau, i32 noundef %i.aar, i32 noundef 0) ; 0 uses
  %i.aaw = load i32, ptr @hf_http_chunk_boundary, align 4
  %i.aax = load i32, ptr %i.c, align 4
  %i.aay = load i32, ptr %i.b, align 4
  %i.aaz = add i32 %i.aay, %i.aax
  %i.aba = call ptr @proto_tree_add_item(ptr noundef %.092.i, i32 noundef %i.aaw, ptr noundef nonnull %storemerge, i32 noundef %i.aaz, i32 noundef 2, i32 noundef 0) ; 0 uses
  %.pre.i = load i32, ptr %i.b, align 4
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gq
  %i.abb = phi i32 [ %i.zz, %bb.gq ], [ %.pre.i, %bb.gv ]
  %.2.i = phi i32 [ %.094162.i, %bb.gq ], [ %.1.i1037, %bb.gv ]
  %.fr.i = freeze i32 %i.abb                      ; 2 uses
  %i.abc = load i32, ptr %i.c, align 4
  %.not124.i = icmp eq i32 %.fr.i, 0
  %i.abd = add i32 %.fr.i, 2
  %i.abe = select i1 %.not124.i, i32 0, i32 %i.abd
  %spec.select.i1038 = add i32 %i.abc, %i.abe
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %.thread201.i
  %.2205.i = phi i32 [ %.2.i, %bb.gw ], [ %.1.i1037, %.thread201.i ] ; 3 uses
  %i.abf = phi i32 [ %spec.select.i1038, %bb.gw ], [ %i.aas, %.thread201.i ] ; 8 uses
  %i.abg = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %storemerge, i32 noundef %i.abf) ; 4 uses
  %i.abh = load i32, ptr %i.b, align 4
  %i.abi = icmp eq i32 %i.abh, 0
  br i1 %i.abi, label %bb.gy, label %bb.hf

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 %i.abf, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gz, %bb.gy
  %i.abj = load i32, ptr %i.f, align 4            ; 4 uses
  %i.abk = sub i32 %i.abj, %i.abf                 ; 2 uses
  %i.abl = sub i32 %i.abg, %i.abk                 ; 2 uses
  %i.abm = call zeroext i1 @tvb_find_line_end_length(ptr noundef nonnull %storemerge, i32 noundef %i.abj, i32 noundef %i.abl, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f)
  %i.abn = load i32, ptr %i.g, align 4            ; 2 uses
  %i.abo = icmp ne i32 %i.abn, 0
  %i.abp = select i1 %i.abm, i1 %i.abo, i1 false
  br i1 %i.abp, label %bb.gz, label %bb.ha, !llvm.loop !20

bb.ha:                                            ; preds = %bb.gz
  %.not125.i = icmp eq i32 %i.abj, %i.abf
  br i1 %.not125.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.abq = load i32, ptr @hf_http_chunked_trailer_part, align 4
  %i.abr = call ptr @proto_tree_add_item(ptr noundef %i.zg, i32 noundef %i.abq, ptr noundef nonnull %storemerge, i32 noundef %i.abf, i32 noundef %i.abk, i32 noundef 0) ; 0 uses
  %.pr.i = load i32, ptr %i.g, align 4
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %i.abs = phi i32 [ %.pr.i, %bb.hb ], [ %i.abn, %bb.ha ]
  %.2110.i = phi i32 [ %i.abj, %bb.hb ], [ %i.abf, %bb.ha ] ; 3 uses
  %.1104.i = phi i32 [ %i.abl, %bb.hb ], [ %i.abg, %bb.ha ] ; 2 uses
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.abu = load i32, ptr %i.f, align 4
  %i.abv = sub i32 %i.abu, %.2110.i
  %i.abw = call ptr @proto_tree_add_format_text(ptr noundef %i.zg, ptr noundef nonnull %storemerge, i32 noundef %.2110.i, i32 noundef %i.abv) ; 0 uses
  %i.abx = load i32, ptr %i.f, align 4
  %.neg.i = add i32 %.1104.i, %.2110.i
  %i.aby = sub i32 %.neg.i, %i.abx
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.2105.i = phi i32 [ %i.aby, %bb.hd ], [ %.1104.i, %bb.hc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %.thread.i

.thread.i:                                        ; preds = %bb.gl, %bb.he
  %.3106.ph.i = phi i32 [ %.2105.i, %bb.he ], [ %.0103158.i, %bb.gl ]
  %.1101.ph.i = phi i32 [ %i.zs, %bb.he ], [ %.0100159.i, %bb.gl ]
  %.196.ph.i = phi i32 [ %i.aab, %bb.he ], [ %.095161.i, %bb.gl ]
  %.3.ph.i = phi i32 [ %.2205.i, %bb.he ], [ %.094162.i, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %.loopexit.i

bb.hf:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %.0108.neg.i = sub i32 0, %i.abf
  %.not.i1039 = icmp eq i32 %i.abg, 0
  br i1 %.not.i1039, label %.loopexit.i, label %bb.gl

.loopexit.i:                                      ; preds = %bb.hf, %.thread.i
  %.4107.i = phi i32 [ %.3106.ph.i, %.thread.i ], [ 0, %bb.hf ] ; 5 uses
  %.2102.i = phi i32 [ %.1101.ph.i, %.thread.i ], [ %i.zs, %bb.hf ] ; 2 uses
  %.297.i = phi i32 [ %.196.ph.i, %.thread.i ], [ %i.aab, %bb.hf ] ; 3 uses
  %.4.i = phi i32 [ %.3.ph.i, %.thread.i ], [ %.2205.i, %bb.hf ] ; 2 uses
  %i.abz = icmp ult i32 %.4107.i, %i.ze
  br i1 %i.abz, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %.loopexit.i
  %i.aca = load ptr, ptr %i.a, align 8
  %i.acb = sub nuw i32 %i.ze, %.4107.i
  call void @proto_item_set_len(ptr noundef %i.aca, i32 noundef %i.acb)
  %i.acc = call ptr @tvb_new_child_real_data(ptr noundef nonnull %storemerge, ptr noundef %i.zk, i32 noundef %.2102.i, i32 noundef %.2102.i)
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.loopexit.i
  %.31068 = phi ptr [ %i.acc, %bb.hg ], [ %storemerge, %.loopexit.i ] ; 3 uses
  %.not126.i = icmp eq i32 %.297.i, 0
  br i1 %.not126.i, label %chunked_encoding_dissector.exit, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.acd = call ptr @proto_tree_get_parent(ptr noundef %.584512341275)
  %i.ace = icmp eq i32 %.297.i, 1
  %i.acf = select i1 %i.ace, ptr @.str.407, ptr @.str.410
  %i.acg = icmp slt i32 %.4.i, 0
  %i.ach = select i1 %i.acg, ptr @.str.407, ptr @.str.527
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.acd, ptr noundef nonnull @.str.526, i32 noundef %.297.i, ptr noundef nonnull %i.acf, ptr noundef nonnull %i.ach)
  %i.aci = icmp eq i32 %.4.i, 0
  br i1 %i.aci, label %bb.hj, label %chunked_encoding_dissector.exit

bb.hj:                                            ; preds = %bb.hi
  %i.acj = getelementptr i8, ptr %2, i64 8
  %i.ack = load ptr, ptr %i.acj, align 8
  call void @col_append_sep_str(ptr noundef %i.ack, i32 noundef 25, ptr noundef nonnull @.str.528, ptr noundef nonnull @.str.529)
  br label %chunked_encoding_dissector.exit

chunked_encoding_dissector.exit:                  ; preds = %bb.gk, %bb.hh, %bb.hi, %bb.hj
  %.41069 = phi ptr [ %storemerge, %bb.gk ], [ %.31068, %bb.hh ], [ %.31068, %bb.hj ], [ %.31068, %bb.hi ] ; 2 uses
  %.4107211219.i = phi i32 [ 0, %bb.gk ], [ %.4107.i, %bb.hh ], [ %.4107.i, %bb.hj ], [ %.4107.i, %bb.hi ]
  %i.acl = sub i32 %i.ze, %.4107211219.i          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.acm = icmp eq i32 %i.acl, 0
  br i1 %i.acm, label %.thread1289, label %bb.hk

bb.hk:                                            ; preds = %chunked_encoding_dissector.exit
  %i.acn = call ptr @add_new_data_source(ptr noundef %2, ptr noundef %.41069, ptr noundef nonnull @.str.428) ; 0 uses
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.gg
  %.01065 = phi ptr [ %.41069, %bb.hk ], [ %storemerge, %bb.gg ] ; 20 uses
  %.3823 = phi i32 [ %i.acl, %bb.hk ], [ %.282212391269, %bb.gg ] ; 9 uses
  %i.aco = getelementptr i8, ptr %.1826116812311281, i64 40
  %i.acp = load i32, ptr %i.aco, align 8
  %.off971 = add i32 %i.acp, -1
  %switch = icmp ult i32 %.off971, 3
  br i1 %switch, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.acq = call i32 @call_data_dissector(ptr noundef %.01065, ptr noundef %2, ptr noundef %.584512341275) ; 0 uses
  br label %.thread1289

bb.hn:                                            ; preds = %bb.hl
  %i.acr = getelementptr i8, ptr %.1826116812311281, i64 24 ; 10 uses
  %i.acs = load ptr, ptr %i.acr, align 8          ; 2 uses
  %.not947 = icmp eq ptr %i.acs, null
  br i1 %.not947, label %bb.io, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.act = call i32 @g_ascii_strcasecmp(ptr noundef nonnull %i.acs, ptr noundef nonnull @.str.429)
  %.not948 = icmp eq i32 %i.act, 0
  br i1 %.not948, label %bb.io, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #17
  store ptr null, ptr %i.v, align 8
  %i.acu = load i8, ptr @http_decompress_body, align 1, !range !10, !noundef !11
  %i.acv = trunc nuw i8 %i.acu to i1
  br i1 %i.acv, label %bb.hq, label %bb.hv

bb.hq:                                            ; preds = %bb.hp
  %i.acw = load ptr, ptr %i.acr, align 8
  %i.acx = call i32 @g_ascii_strcasecmp(ptr noundef %i.acw, ptr noundef nonnull @.str.430)
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %bb.hu, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.acz = load ptr, ptr %i.acr, align 8
  %i.ada = call i32 @g_ascii_strcasecmp(ptr noundef %i.acz, ptr noundef nonnull @.str.431)
  %i.adb = icmp eq i32 %i.ada, 0
  br i1 %i.adb, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.adc = load ptr, ptr %i.acr, align 8
  %i.add = call i32 @g_ascii_strcasecmp(ptr noundef %i.adc, ptr noundef nonnull @.str.432)
  %i.ade = icmp eq i32 %i.add, 0
  br i1 %i.ade, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.adf = load ptr, ptr %i.acr, align 8
  %i.adg = call i32 @g_ascii_strcasecmp(ptr noundef %i.adf, ptr noundef nonnull @.str.433)
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht, %bb.hs, %bb.hr, %bb.hq
  %i.adi = call i32 @tvb_captured_length(ptr noundef %.01065)
  %i.adj = call ptr @tvb_child_uncompress_zlib(ptr noundef %0, ptr noundef %.01065, i32 noundef 0, i32 noundef %i.adi)
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht, %bb.hp
  %.0737 = phi ptr [ %i.adj, %bb.hu ], [ null, %bb.ht ], [ null, %bb.hp ] ; 2 uses
  %i.adk = load i8, ptr @http_decompress_body, align 1, !range !10, !noundef !11
  %i.adl = trunc nuw i8 %i.adk to i1
  br i1 %i.adl, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.adm = load ptr, ptr %i.acr, align 8
  %i.adn = call i32 @g_ascii_strcasecmp(ptr noundef %i.adm, ptr noundef nonnull @.str.434)
  %i.ado = icmp eq i32 %i.adn, 0
  br i1 %i.ado, label %bb.hx, label %bb.hy

bb.hx:                                            ; preds = %bb.hw
  %i.adp = call i32 @tvb_captured_length(ptr noundef %.01065)
  %i.adq = call ptr @tvb_child_uncompress_brotli(ptr noundef %0, ptr noundef %.01065, i32 noundef 0, i32 noundef %i.adp)
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw, %bb.hv
  %.1738 = phi ptr [ %i.adq, %bb.hx ], [ %.0737, %bb.hw ], [ %.0737, %bb.hv ] ; 2 uses
  %i.adr = load i8, ptr @http_decompress_body, align 1, !range !10, !noundef !11
  %i.ads = trunc nuw i8 %i.adr to i1
  br i1 %i.ads, label %bb.hz, label %bb.ib

bb.hz:                                            ; preds = %bb.hy
  %i.adt = load ptr, ptr %i.acr, align 8
  %i.adu = call i32 @g_ascii_strcasecmp(ptr noundef %i.adt, ptr noundef nonnull @.str.435)
  %i.adv = icmp eq i32 %i.adu, 0
  br i1 %i.adv, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.adw = call i32 @tvb_captured_length(ptr noundef %.01065)
  %i.adx = call ptr @tvb_child_uncompress_snappy(ptr noundef %0, ptr noundef %.01065, i32 noundef 0, i32 noundef %i.adw)
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz, %bb.hy
  %.2 = phi ptr [ %i.adx, %bb.ia ], [ %.1738, %bb.hz ], [ %.1738, %bb.hy ] ; 2 uses
  %i.ady = load i8, ptr @http_decompress_body, align 1, !range !10, !noundef !11
  %i.adz = trunc nuw i8 %i.ady to i1
  br i1 %i.adz, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.aea = load ptr, ptr %i.acr, align 8
  %i.aeb = call i32 @g_ascii_strcasecmp(ptr noundef %i.aea, ptr noundef nonnull @.str.436)
  %i.aec = icmp eq i32 %i.aeb, 0
  br i1 %i.aec, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.aed = call i32 @tvb_captured_length(ptr noundef %.01065)
  %i.aee = call ptr @tvb_child_uncompress_zstd(ptr noundef %0, ptr noundef %.01065, i32 noundef 0, i32 noundef %i.aed)
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic, %bb.ib
  %.3 = phi ptr [ %i.aee, %bb.id ], [ %.2, %bb.ic ], [ %.2, %bb.ib ] ; 4 uses
  %i.aef = load i8, ptr @http_decompress_body, align 1, !range !10, !noundef !11
  %i.aeg = trunc nuw i8 %i.aef to i1
  br i1 %i.aeg, label %bb.if, label %bb.im

bb.if:                                            ; preds = %bb.ie
  %i.aeh = load ptr, ptr %i.acr, align 8
  %i.aei = call i32 @g_ascii_strcasecmp(ptr noundef %i.aeh, ptr noundef nonnull @.str.437)
  %i.aej = icmp eq i32 %i.aei, 0
  br i1 %i.aej, label %.preheader, label %bb.im

.preheader:                                       ; preds = %bb.if
  %i.aek = call i32 @tvb_captured_length_remaining(ptr noundef %.01065, i32 noundef 0)
  %i.ael = icmp ugt i32 %i.aek, 7
  br i1 %i.ael, label %.lr.ph1459, label %._crit_edge

.lr.ph1459:                                       ; preds = %.preheader, %bb.ik
  %.07361458 = phi i32 [ %i.aev, %bb.ik ], [ 0, %.preheader ] ; 2 uses
  %.41457 = phi ptr [ %.5, %bb.ik ], [ %.3, %.preheader ] ; 5 uses
  %i.aem = add i32 %.07361458, 4                  ; 2 uses
  %i.aen = call i32 @tvb_get_int32(ptr noundef %.01065, i32 noundef %i.aem, i32 noundef -2147483648) ; 5 uses
  %i.aeo = add i32 %i.aen, -65536
  %or.cond63 = icmp ult i32 %i.aeo, -65535
  br i1 %or.cond63, label %._crit_edge, label %bb.ig

bb.ig:                                            ; preds = %.lr.ph1459
  %i.aep = call zeroext i1 @tvb_bytes_exist(ptr noundef %.01065, i32 noundef %i.aem, i32 noundef %i.aen)
  br i1 %i.aep, label %bb.ih, label %._crit_edge

bb.ih:                                            ; preds = %bb.ig
  %i.aeq = add i32 %.07361458, 8                  ; 2 uses
  %i.aer = call ptr @tvb_new_subset_length(ptr noundef %.01065, i32 noundef %i.aeq, i32 noundef %i.aen)
  %i.aes = call ptr @tvb_child_uncompress_lz77(ptr noundef %0, ptr noundef %i.aer, i32 noundef 0, i32 noundef %i.aen) ; 2 uses
  %.not949 = icmp eq ptr %i.aes, null
  br i1 %.not949, label %._crit_edge, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.aet = icmp eq ptr %.41457, null
  br i1 %i.aet, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.aeu = call ptr @tvb_new_composite()
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %.5 = phi ptr [ %i.aeu, %bb.ij ], [ %.41457, %bb.ii ] ; 3 uses
  call void @tvb_composite_append(ptr noundef %.5, ptr noundef nonnull %i.aes)
  %i.aev = add i32 %i.aen, %i.aeq                 ; 2 uses
  %i.aew = call i32 @tvb_captured_length_remaining(ptr noundef %.01065, i32 noundef %i.aev)
  %i.aex = icmp ugt i32 %i.aew, 7
  br i1 %i.aex, label %.lr.ph1459, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.ik, %.lr.ph1459, %bb.ig, %bb.ih, %.preheader
  %.4.lcssa = phi ptr [ %.3, %.preheader ], [ %.41457, %bb.ih ], [ %.41457, %bb.ig ], [ %.41457, %.lr.ph1459 ], [ %.5, %bb.ik ] ; 3 uses
  %.not950 = icmp eq ptr %.4.lcssa, null
  br i1 %.not950, label %bb.im, label %bb.il

bb.il:                                            ; preds = %._crit_edge
  call void @tvb_composite_finalize(ptr noundef nonnull %.4.lcssa)
  br label %bb.im

bb.im:                                            ; preds = %._crit_edge, %bb.il, %bb.if, %bb.ie
  %.6 = phi ptr [ %.3, %bb.ie ], [ %.3, %bb.if ], [ %.4.lcssa, %bb.il ], [ null, %._crit_edge ] ; 4 uses
  %i.aey = call i32 @tvb_captured_length(ptr noundef %.01065)
  %i.aez = load i32, ptr @ett_http_encoded_entity, align 4
  %i.afa = load ptr, ptr %i.acr, align 8
  %i.afb = call i32 @tvb_captured_length(ptr noundef %.01065)
  %i.afc = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.584512341275, ptr noundef %.01065, i32 noundef 0, i32 noundef %i.aey, i32 noundef %i.aez, ptr noundef nonnull %i.v, ptr noundef nonnull @.str.438, ptr noundef %i.afa, i32 noundef %i.afb)
  %.not951 = icmp eq ptr %.6, null
  br i1 %.not951, label %bb.in, label %.thread1285

.thread1285:                                      ; preds = %bb.im
  %i.afd = load ptr, ptr %i.v, align 8
  %i.afe = call i32 @tvb_captured_length(ptr noundef nonnull %.6)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.afd, ptr noundef nonnull @.str.439, i32 noundef %i.afe)
  %i.aff = call ptr @add_new_data_source(ptr noundef %2, ptr noundef nonnull %.6, ptr noundef nonnull @.str.440) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #17
  br label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.afg = load i8, ptr @http_decompress_body, align 1, !range !10, !noundef !11
  %i.afh = trunc nuw i8 %i.afg to i1
  %i.afi = load ptr, ptr %i.v, align 8
  %ei_http_decompression_failed.ei_http_decompression_disabled = select i1 %i.afh, ptr @ei_http_decompression_failed, ptr @ei_http_decompression_disabled
  %i.afj = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.afi, ptr noundef nonnull %ei_http_decompression_failed.ei_http_decompression_disabled) ; 0 uses
  %i.afk = call i32 @call_data_dissector(ptr noundef %.01065, ptr noundef %2, ptr noundef %i.afc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #17
  br label %.thread1289

bb.io:                                            ; preds = %.thread1285, %bb.ho, %bb.hn
end_hunk_0
