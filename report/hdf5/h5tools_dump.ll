Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5tools_dump?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@h5tools_dump_dcpl:bb.a
  br label %bb.x

.thread:                                          ; preds = %bb.c, %bb.d
  %.0386421 = phi i32 [ %i.z, %bb.d ], [ -1, %bb.c ]
  %i.hr = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.hs = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.234) #12 ; 0 uses
  %i.ht = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.hu = icmp eq i32 %.0386421, 3
  br label %bb.x

bb.x:                                             ; preds = %.thread, %bb.w, %bb.u, %bb.j, %bb.i
  %.0386420 = phi i1 [ %i.hu, %.thread ], [ true, %bb.w ], [ false, %bb.u ], [ false, %bb.j ], [ false, %bb.i ] ; 2 uses
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.hv = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.hw = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #12 ; 0 uses
  %i.hx = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br i1 %.0386420, label %bb.aw, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.hy = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.hz = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.14) #12 ; 0 uses
  %i.ia = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 12 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !36
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !36
  %.not408 = icmp eq i32 %.0, 0
  br i1 %.not408, label %bb.av, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.ie = icmp sgt i32 %.0, 0
  br i1 %i.ie, label %.lr.ph442, label %.loopexit

.lr.ph442:                                        ; preds = %.preheader
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph442, %bb.au
  %.3441 = phi i32 [ 0, %.lr.ph442 ], [ %i.ky, %bb.au ] ; 2 uses
  store i64 256, ptr %i.f, align 8, !tbaa !22
  %i.ig = call i32 @H5Pget_filter2(i64 noundef %3, i32 noundef %.3441, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull %i.h, ptr noundef null) #12 ; 3 uses
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %bb.au, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.ii = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  switch i32 %i.ig, label %bb.ap [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 4, label %bb.ae
    i32 5, label %bb.an
    i32 6, label %bb.ao
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ij = load i32, ptr %i.b, align 16, !tbaa !11
  %i.ik = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.238, i32 noundef %i.ij, ptr noundef nonnull @.str.15) #12 ; 0 uses
  br label %.sink.split474

bb.ac:                                            ; preds = %bb.aa
  %i.il = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.239) #12 ; 0 uses
  br label %.sink.split474

bb.ad:                                            ; preds = %bb.aa
  %i.im = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.240) #12 ; 0 uses
  br label %.sink.split474

bb.ae:                                            ; preds = %bb.aa
  %i.in = load i32, ptr %i.b, align 16, !tbaa !11 ; 7 uses
  %i.io = load i32, ptr %i.if, align 4, !tbaa !11
  %i.ip = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.14) #12 ; 0 uses
  %i.iq = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.ir = load i32, ptr %i.ib, align 8, !tbaa !36
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.ib, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.it = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.iu = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.242, i32 noundef %i.io) #12 ; 0 uses
  %i.iv = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.iw = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.ix = and i32 %i.in, 2
  %.not409 = icmp eq i32 %i.ix, 0
  br i1 %.not409, label %bb.af, label %.sink.split

bb.af:                                            ; preds = %bb.ae
  %i.iy = and i32 %i.in, 1
  %.not410 = icmp eq i32 %i.iy, 0
  br i1 %.not410, label %bb.ag, label %.sink.split

.sink.split:                                      ; preds = %bb.af, %bb.ae
  %.str.245.sink = phi ptr [ @.str.244, %bb.ae ], [ @.str.245, %bb.af ]
  %i.iz = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.243, ptr noundef nonnull %.str.245.sink) #12 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.af
  %i.ja = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.jb = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.jc = and i32 %i.in, 4
  %.not411 = icmp eq i32 %i.jc, 0
  br i1 %.not411, label %bb.ah, label %.sink.split472

bb.ah:                                            ; preds = %bb.ag
  %i.jd = and i32 %i.in, 32
  %.not412 = icmp eq i32 %i.jd, 0
  br i1 %.not412, label %bb.ai, label %.sink.split472

.sink.split472:                                   ; preds = %bb.ah, %bb.ag
  %.str.248.sink = phi ptr [ @.str.247, %bb.ag ], [ @.str.248, %bb.ah ]
  %i.je = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.246, ptr noundef nonnull %.str.248.sink) #12 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split472, %bb.ah
  %i.jf = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.jg = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.jh = and i32 %i.in, 8
  %.not413 = icmp eq i32 %i.jh, 0
  br i1 %.not413, label %bb.aj, label %.sink.split473

bb.aj:                                            ; preds = %bb.ai
  %i.ji = and i32 %i.in, 16
  %.not414 = icmp eq i32 %i.ji, 0
  br i1 %.not414, label %bb.ak, label %.sink.split473

.sink.split473:                                   ; preds = %bb.aj, %bb.ai
  %.str.251.sink = phi ptr [ @.str.250, %bb.ai ], [ @.str.251, %bb.aj ]
  %i.jj = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.249, ptr noundef nonnull %.str.251.sink) #12 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split473, %bb.aj
  %i.jk = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.jl = and i32 %i.in, 128
  %.not415 = icmp eq i32 %i.jl, 0
  br i1 %.not415, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.jm = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.jn = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.253) #12 ; 0 uses
  %i.jo = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jp = load i32, ptr %i.ib, align 8, !tbaa !36
  %i.jq = add i32 %i.jp, -1
  store i32 %i.jq, ptr %i.ib, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.jr = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.js = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #12 ; 0 uses
  br label %.sink.split474

bb.an:                                            ; preds = %bb.aa
  %i.jt = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.254) #12 ; 0 uses
  br label %.sink.split474

bb.ao:                                            ; preds = %bb.aa
  %i.ju = load i32, ptr %i.b, align 16, !tbaa !11
  %i.jv = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.256, i32 noundef %i.ju, ptr noundef nonnull @.str.15) #12 ; 0 uses
  br label %.sink.split474

bb.ap:                                            ; preds = %bb.aa
  %i.jw = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.14) #12 ; 0 uses
  %i.jx = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.jy = load i32, ptr %i.ib, align 8, !tbaa !36
  %i.jz = add i32 %i.jy, 1
  store i32 %i.jz, ptr %i.ib, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.ka = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.kb = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.258, i32 noundef %i.ig) #12 ; 0 uses
  %i.kc = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.kd = load i8, ptr %i.h, align 16, !tbaa !55
  %.not416 = icmp eq i8 %i.kd, 0
  br i1 %.not416, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.ke = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.kf = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.259, ptr noundef nonnull %i.h) #12 ; 0 uses
  %i.kg = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.kh = load i64, ptr %i.f, align 8, !tbaa !22
  %.not417 = icmp eq i64 %i.kh, 0
  br i1 %.not417, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.ki = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.kj = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.14) #12 ; 0 uses
  %i.kk = load i64, ptr %i.f, align 8, !tbaa !22
  %.not445 = icmp eq i64 %i.kk, 0
  br i1 %.not445, label %._crit_edge440, label %.lr.ph439

.lr.ph439:                                        ; preds = %bb.as, %.lr.ph439
  %i.kl = phi i64 [ %8, %.lr.ph439 ], [ 0, %bb.as ]
  %.1437 = phi i32 [ %7, %.lr.ph439 ], [ 0, %bb.as ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !11
  %i.ko = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.261, i32 noundef %i.kn) #12 ; 0 uses
  %7 = add i32 %.1437, 1                          ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.kp = load i64, ptr %i.f, align 8, !tbaa !22
  %i.kq = icmp ugt i64 %i.kp, %8
  br i1 %i.kq, label %.lr.ph439, label %._crit_edge440, !llvm.loop !169

._crit_edge440:                                   ; preds = %.lr.ph439, %bb.as
  %i.kr = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #12 ; 0 uses
  %i.ks = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge440, %bb.ar
  %i.kt = load i32, ptr %i.ib, align 8, !tbaa !36
  %i.ku = add i32 %i.kt, -1
  store i32 %i.ku, ptr %i.ib, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.kv = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.kw = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #12 ; 0 uses
  br label %.sink.split474

.sink.split474:                                   ; preds = %bb.at, %bb.ao, %bb.an, %bb.am, %bb.ad, %bb.ac, %bb.ab
  %i.kx = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %.sink.split474, %bb.z
  %i.ky = add nuw nsw i32 %.3441, 1               ; 2 uses
  %exitcond454.not = icmp eq i32 %i.ky, %.0
  br i1 %exitcond454.not, label %.loopexit, label %bb.z, !llvm.loop !170

bb.av:                                            ; preds = %bb.y
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.kz = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.la = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.262) #12 ; 0 uses
  %i.lb = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.au, %.preheader, %bb.av
  %i.lc = load i32, ptr %i.ib, align 8, !tbaa !36
  %i.ld = add i32 %i.lc, -1
  store i32 %i.ld, ptr %i.ib, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.le = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.lf = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #12 ; 0 uses
  %i.lg = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit, %bb.x
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.lh = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.li = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.14) #12 ; 0 uses
  %i.lj = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 12 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !36
  %i.lm = add i32 %i.ll, 1
  store i32 %i.lm, ptr %i.lk, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.ln = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.lo = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.264) #12 ; 0 uses
  br i1 %i.t, label %bb.ax, label %.thread469.critedge

bb.ax:                                            ; preds = %bb.aw
  %i.lp = call i32 @H5Pget_fill_time(i64 noundef %3, ptr noundef nonnull %i.e) #12 ; 0 uses
  %.pre455 = load i32, ptr %i.e, align 4, !tbaa !11 ; 2 uses
  %i.lq = icmp ult i32 %.pre455, 3
  br i1 %i.lq, label %switch.lookup, label %.thread468

switch.lookup:                                    ; preds = %bb.ax
  %i.lr = zext nneg i32 %.pre455 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.h5tools_dump_dcpl, i64 %i.lr
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.thread468

.thread468:                                       ; preds = %bb.ax, %switch.lookup
  %.str.268.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.268, %bb.ax ]
  %i.ls = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %.str.268.sink) #12 ; 0 uses
  %i.lt = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.lu = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.lv = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.269) #12 ; 0 uses
  %i.lw = call i32 @H5Pfill_value_defined(i64 noundef %3, ptr noundef nonnull %i.c) #12 ; 0 uses
  %.pre456 = load i32, ptr %i.c, align 4, !tbaa !11
  switch i32 %.pre456, label %.thread469 [
    i32 0, label %bb.ay
    i32 1, label %bb.az
    i32 2, label %bb.ba
  ]

bb.ay:                                            ; preds = %.thread468
  %i.lx = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.270) #12 ; 0 uses
  br label %bb.bb

bb.az:                                            ; preds = %.thread468
  %i.ly = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.271) #12 ; 0 uses
  br label %bb.bb

bb.ba:                                            ; preds = %.thread468
  %i.lz = load i32, ptr %i.lk, align 8, !tbaa !36
  %i.ma = add i32 %i.lz, -1
  store i32 %i.ma, ptr %i.lk, align 8, !tbaa !36
  call void @h5tools_print_fill_value(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  %i.mb = load i32, ptr %i.lk, align 8, !tbaa !36
  %i.mc = add i32 %i.mb, 1
  store i32 %i.mc, ptr %i.lk, align 8, !tbaa !36
  br label %bb.bb

.thread469.critedge:                              ; preds = %bb.aw
  %i.md = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.268) #12 ; 0 uses
  %i.me = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.mf = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.mg = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.269) #12 ; 0 uses
  br label %.thread469

.thread469:                                       ; preds = %.thread469.critedge, %.thread468
  %i.mh = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.268) #12 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.thread469, %bb.ba, %bb.az, %bb.ay
  %i.mi = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.mj = load i32, ptr %i.lk, align 8, !tbaa !36
  %i.mk = add i32 %i.mj, -1
  store i32 %i.mk, ptr %i.lk, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.ml = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.mm = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #12 ; 0 uses
  %i.mn = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br i1 %.0386420, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.mo = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.mp = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.14) #12 ; 0 uses
  %i.mq = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.mr = load i32, ptr %i.lk, align 8, !tbaa !36
  %i.ms = add i32 %i.mr, 1
  store i32 %i.ms, ptr %i.lk, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.mt = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  br i1 %i.t, label %bb.bd, label %.thread470

bb.bd:                                            ; preds = %bb.bc
  %i.mu = call i32 @H5Pget_alloc_time(i64 noundef %3, ptr noundef nonnull %i.d) #12 ; 0 uses
  %.pre457 = load i32, ptr %i.d, align 4, !tbaa !11
  %switch.tableidx = add i32 %.pre457, -1         ; 2 uses
  %i.mv = icmp ult i32 %switch.tableidx, 3
  br i1 %i.mv, label %switch.lookup477, label %.thread470

switch.lookup477:                                 ; preds = %bb.bd
  %i.mw = zext nneg i32 %switch.tableidx to i64
  %switch.gep478 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.h5tools_dump_dcpl.4, i64 %i.mw
  %switch.load479 = load ptr, ptr %switch.gep478, align 8
  br label %.thread470

.thread470:                                       ; preds = %bb.bc, %bb.bd, %switch.lookup477
  %.str.268.sink475 = phi ptr [ %switch.load479, %switch.lookup477 ], [ @.str.268, %bb.bd ], [ @.str.268, %bb.bc ]
  %i.mx = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull %.str.268.sink475) #12 ; 0 uses
  %i.my = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  %i.mz = load i32, ptr %i.lk, align 8, !tbaa !36
  %i.na = add i32 %i.mz, -1
  store i32 %i.na, ptr %i.lk, align 8, !tbaa !36
  store i32 1, ptr %i.v, align 8, !tbaa !37
  %i.nb = call ptr @h5tools_str_reset(ptr noundef nonnull %6) #12 ; 0 uses
  %i.nc = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15) #12 ; 0 uses
  %i.nd = call zeroext i1 @h5tools_render_element(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %i.l, i64 noundef %spec.select, i64 noundef 0, i64 noundef 0) #12 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %.thread470, %bb.bb
  call void @h5tools_str_close(ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i64 @H5Dget_storage_size(i64 noundef) local_unnamed_addr #3

declare i32 @H5Pget_nfilters(i64 noundef) local_unnamed_addr #3

declare i32 @H5Pget_layout(i64 noundef) local_unnamed_addr #3

declare i32 @H5Pget_chunk(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Pget_filter2(i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5Pget_external_count(i64 noundef) local_unnamed_addr #3

declare i32 @H5Pget_external(i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @H5VLquery_optional(i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @H5Dget_offset(i64 noundef) local_unnamed_addr #3

declare i32 @H5Pget_virtual_count(i64 noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
