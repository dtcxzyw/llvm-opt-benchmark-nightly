Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event?download=true
inline.NumInlined: 216
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@event_add_nolock_:bb.a
  br label %bb.ay

bb.at:                                            ; preds = %is_common_timeout.exit
  %.pre210 = load i64, ptr %5, align 16           ; 2 uses
  br i1 %i.fp, label %.thread191, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.fr = and i64 %.val, 1048575
  %i.fs = add nsw i64 %.pre210, %.sroa.0.0.copyload ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 %i.fs, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = add nsw i64 %i.fv, %i.fr                ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i64 %i.fw, ptr %i.fx, align 8
  %i.fy = icmp sgt i64 %i.fw, 999999
  br i1 %i.fy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fz = add nsw i64 %i.fs, 1
  store i64 %i.fz, ptr %i.ft, align 8
  %i.ga = add nsw i64 %i.fw, -1000000             ; 2 uses
  store i64 %i.ga, ptr %i.fx, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gb = phi i64 [ %i.ga, %bb.av ], [ %i.fw, %bb.au ]
  %i.gc = load i64, ptr %i.fi, align 8
  %i.gd = and i64 %i.gc, -1048576
  %i.ge = or i64 %i.gb, %i.gd
  store i64 %i.ge, ptr %i.fx, align 8
  br label %bb.ay

.thread191:                                       ; preds = %is_common_timeout.exit.thread..thread191_crit_edge, %bb.at
  %i.gf = phi i64 [ %.pre209, %is_common_timeout.exit.thread..thread191_crit_edge ], [ %.pre210, %bb.at ]
  %i.gg = load i64, ptr %1, align 8
  %i.gh = add nsw i64 %i.gg, %i.gf                ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 %i.gh, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = load i64, ptr %i.fi, align 8
  %i.gm = add nsw i64 %i.gl, %i.gk                ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 %i.gm, ptr %i.gn, align 8
  %i.go = icmp sgt i64 %i.gm, 999999
  br i1 %i.go, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread191
  %i.gp = add nsw i64 %i.gh, 1
  store i64 %i.gp, ptr %i.gi, align 8
  %i.gq = add nsw i64 %i.gm, -1000000
  store i64 %i.gq, ptr %i.gn, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.as, %.thread191, %bb.ax, %bb.aw
  %.0.i160188 = phi i1 [ %.0.i160190, %bb.as ], [ true, %.thread191 ], [ true, %bb.ax ], [ false, %bb.aw ]
  %i.gr = load i32, ptr @event_debug_logging_mask_, align 4
  %.not144 = icmp eq i32 %i.gr, 0
  br i1 %.not144, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gs = load i64, ptr %1, align 8
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = load i64, ptr %i.fi, align 8
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.26, ptr noundef nonnull %0, i32 noundef %i.gt, i32 noundef %i.gv, ptr noundef %i.gx) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gy = load i16, ptr %i.aq, align 8
  %i.gz = and i16 %i.gy, 16
  %.not.i161 = icmp eq i16 %i.gz, 0
  %i.ha = zext i1 %.not.i161 to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = add nsw i32 %i.hc, %i.ha                ; 2 uses
  store i32 %i.hd, ptr %i.hb, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 212 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4
  %..i162 = call i32 @llvm.smax.i32(i32 %i.hf, i32 %i.hd)
  store i32 %..i162, ptr %i.he, align 4
  %i.hg = load i16, ptr %i.aq, align 8
  %i.hh = or i16 %i.hg, 1
  store i16 %i.hh, ptr %i.aq, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.hj = getelementptr i8, ptr %0, i64 120       ; 3 uses
  %.val.i = load i64, ptr %i.hj, align 8          ; 4 uses
  %i.hk = and i64 %.val.i, 4026531840
  %.not.i.i163 = icmp eq i64 %i.hk, 1342177280
  br i1 %.not.i.i163, label %is_common_timeout.exit.i, label %is_common_timeout.exit.thread.i

is_common_timeout.exit.i:                         ; preds = %bb.ba
  %i.hl = trunc i64 %.val.i to i32
  %i.hm = lshr i32 %i.hl, 20
  %i.hn = and i32 %i.hm, 255
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.hp = load i32, ptr %i.ho, align 8
  %.not28.i = icmp slt i32 %i.hn, %i.hp
  br i1 %.not28.i, label %bb.bb, label %is_common_timeout.exit.thread.i

bb.bb:                                            ; preds = %is_common_timeout.exit.i
  %i.hq = getelementptr i8, ptr %i.b, i64 280
  %.val20.i = load ptr, ptr %i.hq, align 8
  %i.hr = lshr i64 %.val.i, 20
  %i.hs = and i64 %i.hr, 255
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val20.i, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8            ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 3 uses
  %.pn37.i.i = load ptr, ptr %i.hv, align 8
  %.0.in.in38.i.i = getelementptr inbounds nuw i8, ptr %.pn37.i.i, i64 8
  %.0.in39.i.i = load ptr, ptr %.0.in.in38.i.i, align 8
  %.040.i.i = load ptr, ptr %.0.in39.i.i, align 8 ; 2 uses
  %.not41.i.i = icmp eq ptr %.040.i.i, null
  br i1 %.not41.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bb
  %i.hw = load i64, ptr %i.hi, align 8            ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bj, %.lr.ph.i.i
  %.042.i.i = phi ptr [ %.040.i.i, %.lr.ph.i.i ], [ %.0.i22.i, %bb.bj ] ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 112
  %i.hy = load i64, ptr %i.hx, align 8            ; 2 uses
  %i.hz = icmp eq i64 %i.hw, %i.hy
  br i1 %i.hz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ia = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 120
  %i.ib = load i64, ptr %i.ia, align 8
  %.not34.i.i = icmp slt i64 %.val.i, %i.ib
  br i1 %.not34.i.i, label %bb.bj, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %.not33.i.i = icmp slt i64 %i.hw, %i.hy
  br i1 %.not33.i.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ic = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 40 ; 3 uses
  %i.id = load ptr, ptr %i.ic, align 8            ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.id, ptr %i.ie, align 8
  %.not35.i.i = icmp eq ptr %i.id, null
  br i1 %.not35.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  store ptr %i.ie, ptr %i.if, align 8
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  store ptr %i.ie, ptr %i.hv, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store ptr %0, ptr %i.ic, align 8
  br label %insert_common_timeout_inorder.exit.i

bb.bj:                                            ; preds = %bb.be, %bb.bd
  %i.ig = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 48
  %.pn.i.i = load ptr, ptr %i.ig, align 8
  %.0.in.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %.0.in.i.i = load ptr, ptr %.0.in.in.i.i, align 8
  %.0.i22.i = load ptr, ptr %.0.in.i.i, align 8   ; 2 uses
  %.not.i23.i = icmp eq ptr %.0.i22.i, null
  br i1 %.not.i23.i, label %._crit_edge.i.i, label %bb.bc, !llvm.loop !53

._crit_edge.i.i:                                  ; preds = %bb.bj, %bb.bb
  %i.ih = load ptr, ptr %i.hu, align 8            ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.ih, ptr %i.ii, align 8
  %.not32.i.i = icmp eq ptr %i.ih, null
  br i1 %.not32.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  store ptr %i.ii, ptr %i.ij, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i
  store ptr %i.ii, ptr %i.hv, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr %0, ptr %i.hu, align 8
  br label %insert_common_timeout_inorder.exit.i

insert_common_timeout_inorder.exit.i:             ; preds = %bb.bm, %bb.bi
  %.sink.i.i = phi ptr [ %i.hu, %bb.bm ], [ %i.ic, %bb.bi ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink.i.i, ptr %i.ik, align 8
  br label %event_queue_insert_timeout.exit

is_common_timeout.exit.thread.i:                  ; preds = %is_common_timeout.exit.i, %bb.ba
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8            ; 3 uses
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %event_queue_insert_timeout.exit, label %bb.bn

bb.bn:                                            ; preds = %is_common_timeout.exit.thread.i
  %6 = add nuw i32 %i.in, 1                       ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 340 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4            ; 3 uses
  %7 = icmp ult i32 %i.iq, %6
  br i1 %7, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %.not.i.i.i164 = icmp eq i32 %i.iq, 0
  %i.ir = shl i32 %i.iq, 1
  %spec.select.i.i.i = select i1 %.not.i.i.i164, i32 8, i32 %i.ir
  %.014.i.i.i = call i32 @llvm.umax.i32(i32 %spec.select.i.i.i, i32 %6) ; 2 uses
  %i.is = load ptr, ptr %i.il, align 8            ; 2 uses
  %i.it = zext i32 %.014.i.i.i to i64
  %i.iu = shl nuw nsw i64 %i.it, 3                ; 2 uses
  %i.iv = load ptr, ptr @mm_realloc_fn_, align 8  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iw = call ptr %i.iv(ptr noundef %i.is, i64 noundef %i.iu) #25, !inline_history !54
  br label %event_mm_realloc_.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.ix = call ptr @realloc(ptr noundef %i.is, i64 noundef %i.iu) #27
  br label %event_mm_realloc_.exit.i.i.i

event_mm_realloc_.exit.i.i.i:                     ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i = phi ptr [ %i.iw, %bb.bp ], [ %i.ix, %bb.bq ] ; 2 uses
  %.not20.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not20.i.i.i, label %event_queue_insert_timeout.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %event_mm_realloc_.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.il, align 8
  store i32 %.014.i.i.i, ptr %i.ip, align 4
  %.pre.i.i = load i32, ptr %i.im, align 8        ; 2 uses
  %.pre10.i.i = add i32 %.pre.i.i, 1
  br label %bb.br

bb.br:                                            ; preds = %.thread.i.i.i, %bb.bn
  %i.iy = phi i32 [ %.pre10.i.i, %.thread.i.i.i ], [ %6, %bb.bn ]
  %8 = phi i32 [ %.pre.i.i, %.thread.i.i.i ], [ %i.in, %bb.bn ] ; 2 uses
  store i32 %i.iy, ptr %i.im, align 8
  %.not26.i.i.i = icmp eq i32 %8, 0
  br i1 %.not26.i.i.i, label %min_heap_shift_up_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %bb.bt
  %.02127.i.i.i = phi i32 [ %.028.i.i.i, %bb.bt ], [ %8, %bb.br ] ; 5 uses
  %.028.in.i.i.i = add i32 %.02127.i.i.i, -1
  %.028.i.i.i = lshr i32 %.028.in.i.i.i, 1        ; 3 uses
  %i.iz = load ptr, ptr %i.il, align 8            ; 2 uses
  %i.ja = zext nneg i32 %.028.i.i.i to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8            ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 112
  %i.je = load i64, ptr %i.jd, align 8            ; 2 uses
  %i.jf = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.jg = icmp eq i64 %i.je, %i.jf
  br i1 %i.jg, label %.split.i.i.i, label %bb.bs

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 120
  %i.ji = load i64, ptr %i.jh, align 8
  %i.jj = load i64, ptr %i.hj, align 8
  %i.jk = icmp sgt i64 %i.ji, %i.jj
  br i1 %i.jk, label %bb.bt, label %min_heap_shift_up_.exit.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.jl = icmp sgt i64 %i.je, %i.jf
  br i1 %i.jl, label %bb.bt, label %min_heap_shift_up_.exit.i.i

bb.bt:                                            ; preds = %bb.bs, %.split.i.i.i
  %i.jm = zext i32 %.02127.i.i.i to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jm
  store ptr %i.jc, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  store i32 %.02127.i.i.i, ptr %i.jo, align 8
  %.not.i7.i.i = icmp eq i32 %.028.i.i.i, 0
  br i1 %.not.i7.i.i, label %min_heap_shift_up_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !55

min_heap_shift_up_.exit.i.i:                      ; preds = %bb.bt, %bb.bs, %.split.i.i.i, %bb.br
  %.021.lcssa.i.i.i = phi i32 [ 0, %bb.br ], [ %.02127.i.i.i, %bb.bs ], [ 0, %bb.bt ], [ %.02127.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.jp = load ptr, ptr %i.il, align 8
  %i.jq = zext i32 %.021.lcssa.i.i.i to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jq
  store ptr %0, ptr %i.jr, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.021.lcssa.i.i.i, ptr %i.js, align 8
  br label %event_queue_insert_timeout.exit

event_queue_insert_timeout.exit:                  ; preds = %insert_common_timeout_inorder.exit.i, %is_common_timeout.exit.thread.i, %event_mm_realloc_.exit.i.i.i, %min_heap_shift_up_.exit.i.i
  br i1 %.0.i160188, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %event_queue_insert_timeout.exit
  %i.jt = getelementptr i8, ptr %i.b, i64 280
  %.val151 = load ptr, ptr %i.jt, align 8
  %.val152 = load i64, ptr %i.hj, align 8
  %i.ju = lshr i64 %.val152, 20
  %i.jv = and i64 %i.ju, 255
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.val151, i64 %i.jv
  %i.jx = load ptr, ptr %i.jw, align 8            ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = icmp eq ptr %0, %i.jy
  br i1 %i.jz, label %bb.bv, label %min_heap_top_.exit.thread

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8
  %i.kc = and i64 %i.kb, 1048575
  store i64 %i.kc, ptr %i.ka, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.ke = call i32 @event_add_nolock_(ptr noundef nonnull %i.kd, ptr noundef nonnull %3, i32 noundef 1), !inline_history !56 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %min_heap_top_.exit.thread

bb.bw:                                            ; preds = %event_queue_insert_timeout.exit
  %i.kf = getelementptr i8, ptr %0, i64 40
  %.val154 = load i32, ptr %i.kf, align 8
  %.not202 = icmp eq i32 %.val154, 0
  br i1 %.not202, label %min_heap_top_.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.kh = load i32, ptr %i.kg, align 8
  %.not.i165 = icmp eq i32 %i.kh, 0
  br i1 %.not.i165, label %min_heap_top_.exit.thread, label %min_heap_top_.exit

min_heap_top_.exit:                               ; preds = %bb.bx
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = load ptr, ptr %i.kj, align 8            ; 3 uses
  %.not147 = icmp eq ptr %i.kk, null
  br i1 %.not147, label %min_heap_top_.exit.thread, label %bb.by

bb.by:                                            ; preds = %min_heap_top_.exit
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 112
  %i.km = load i64, ptr %i.kl, align 8            ; 2 uses
  %i.kn = load i64, ptr %5, align 16              ; 2 uses
  %i.ko = icmp eq i64 %i.km, %i.kn
  br i1 %i.ko, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 120
  %i.kq = load i64, ptr %i.kp, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = icmp slt i64 %i.kq, %i.ks
  br i1 %i.kt, label %bb.cb, label %min_heap_top_.exit.thread

bb.ca:                                            ; preds = %bb.by
  %i.ku = icmp slt i64 %i.km, %i.kn
  br i1 %i.ku, label %bb.cb, label %min_heap_top_.exit.thread

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  br label %min_heap_top_.exit.thread

min_heap_top_.exit.thread:                        ; preds = %bb.bx, %bb.cb, %bb.ca, %bb.bz, %min_heap_top_.exit, %bb.bw, %bb.bu, %bb.bv
  %.2 = phi i32 [ %.0, %bb.bu ], [ %.0, %bb.bv ], [ %.0, %min_heap_top_.exit ], [ 1, %bb.cb ], [ %.0, %bb.bz ], [ %.0, %bb.ca ], [ 1, %bb.bw ], [ %.0, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cc

bb.cc:                                            ; preds = %min_heap_top_.exit.thread, %bb.aa
  %.3 = phi i32 [ %.2, %min_heap_top_.exit.thread ], [ %.0, %bb.aa ]
  %i.kv = icmp ne i32 %.3, 0
  %i.kw = load ptr, ptr @evthread_id_fn_, align 8 ; 2 uses
  %i.kx = icmp ne ptr %i.kw, null
  %or.cond11 = select i1 %i.kv, i1 %i.kx, i1 false
  br i1 %or.cond11, label %bb.cd, label %evthread_notify_base.exit

bb.cd:                                            ; preds = %bb.cc
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.kz = load i32, ptr %i.ky, align 8
  %.not148 = icmp eq i32 %i.kz, 0
  br i1 %.not148, label %evthread_notify_base.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = call i64 %i.kw() #25
  %.not149 = icmp eq i64 %i.lb, %i.lc
  br i1 %.not149, label %evthread_notify_base.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.le = load ptr, ptr %i.ld, align 8            ; 2 uses
  %.not.i166 = icmp eq ptr %i.le, null
  br i1 %.not.i166, label %evthread_notify_base.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8
  %.not7.i167 = icmp eq i32 %i.lg, 0
  br i1 %.not7.i167, label %bb.ch, label %evthread_notify_base.exit

bb.ch:                                            ; preds = %bb.cg
  store i32 1, ptr %i.lf, align 8
  %i.lh = call i32 %i.le(ptr noundef nonnull %i.b) #25, !inline_history !2 ; 0 uses
  br label %evthread_notify_base.exit

evthread_notify_base.exit:                        ; preds = %bb.z, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %.1114186201 = phi i32 [ %.1114, %bb.ch ], [ %.1114, %bb.cc ], [ %.1114, %bb.ce ], [ %.1114, %bb.cd ], [ %.1114, %bb.cf ], [ %.1114, %bb.cg ], [ -1, %bb.z ]
  %i.li = load i32, ptr @event_debug_mode_on_, align 4
  %.not.i169 = icmp eq i32 %i.li, 0
  br i1 %.not.i169, label %event_debug_note_add_.exit, label %bb.ci

bb.ci:                                            ; preds = %evthread_notify_base.exit
  %i.lj = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not9.i170 = icmp eq ptr %i.lj, null
  br i1 %.not9.i170, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ll = call i32 %i.lk(i32 noundef 0, ptr noundef nonnull %i.lj) #25, !inline_history !57 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.lm = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i171, label %.loopexit.i177, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ln = ptrtoint ptr %0 to i64
  %i.lo = trunc i64 %i.ln to i32
  %i.lp = lshr i32 %i.lo, 6
  %i.lq = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8
  %i.lr = urem i32 %i.lp, %i.lq
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ls
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %.0.i.i.i172 = phi ptr [ %i.lt, %bb.cl ], [ %i.lu, %bb.cn ]
  %i.lu = load ptr, ptr %.0.i.i.i172, align 8     ; 4 uses
  %.not14.i.i.i173 = icmp eq ptr %i.lu, null
  br i1 %.not14.i.i.i173, label %.loopexit.i177, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lv = getelementptr i8, ptr %i.lu, i64 8
  %.val16.i.i.i174 = load ptr, ptr %i.lv, align 8
  %.not1.i.i.i175 = icmp eq ptr %.val16.i.i.i174, %0
  br i1 %.not1.i.i.i175, label %event_debug_map_HT_FIND.exit.i176, label %bb.cm, !llvm.loop !3

event_debug_map_HT_FIND.exit.i176:                ; preds = %bb.cn
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 8
  %i.ly = or i8 %i.lx, 1
end_hunk_0
