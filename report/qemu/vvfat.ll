Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vvfat?download=true
inline.NumInlined: 261
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@vvfat_open:bb.a

bb.am:                                            ; preds = %bb.fr, %.lr.ph302.i
  %.0151300.i = phi i32 [ 0, %.lr.ph302.i ], [ %i.aah, %bb.fr ] ; 6 uses
  %.0153299.i = phi i32 [ 0, %.lr.ph302.i ], [ %i.ack, %bb.fr ] ; 10 uses
  %i.gw = icmp ne i32 %.0153299.i, 0              ; 3 uses
  %i.gx = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not.i167.i = icmp eq ptr %i.gx, null
  br i1 %.not.i167.i, label %bb.an, label %array_get.exit.i

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i:                                 ; preds = %bb.am
  %i.gy = load i32, ptr %i.de, align 8
  %i.gz = mul i32 %i.gy, %.0153299.i
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ha ; 8 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 8            ; 2 uses
  %i.he = and i32 %i.hd, 4
  %.not163.i = icmp eq i32 %i.he, 0
  br i1 %.not163.i, label %bb.eq, label %bb.ao

bb.ao:                                            ; preds = %array_get.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  store i32 %.0151300.i, ptr %i.hb, align 8
  %i.hh = load i32, ptr %i.fx, align 4            ; 2 uses
  %i.hi = icmp ult i32 %.0153299.i, %i.hh
  br i1 %i.hi, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hj = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.i.i168.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i168.i, label %bb.ar, label %array_get.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i.i:                               ; preds = %bb.aq
  %i.hk = load i32, ptr %i.de, align 8            ; 2 uses
  %i.hl = mul i32 %i.hk, %.0153299.i
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hm ; 8 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8            ; 3 uses
  %i.hq = load i32, ptr %i.hn, align 8            ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hs = load i32, ptr %i.hr, align 8            ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, -1
  br i1 %i.ht, label %bb.as, label %.thread.i.i

bb.as:                                            ; preds = %array_get.exit.i.i
  %i.hu = icmp ult i32 %i.hs, %i.hh
  br i1 %i.hu, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.hv = mul i32 %i.hs, %i.hk
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 8
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.au, %array_get.exit.i.i
  %i.hz = phi i32 [ %i.hy, %bb.au ], [ -1, %array_get.exit.i.i ] ; 2 uses
  %i.ia = call noalias ptr @opendir(ptr noundef %i.hp) ; 5 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.ic = load i32, ptr %i.ib, align 8
  %i.id = and i32 %i.ic, 4
  %.not140.i.i = icmp eq i32 %i.id, 0
  br i1 %.not140.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.14, i32 noundef 759, ptr noundef nonnull @__PRETTY_FUNCTION__.read_directory) #24
  unreachable

bb.aw:                                            ; preds = %.thread.i.i
  %.not141.i.i = icmp eq ptr %i.ia, null
  br i1 %.not141.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ie = load i32, ptr %i.hn, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 %i.ie, ptr %i.if, align 4
  br label %bb.ep

bb.ay:                                            ; preds = %bb.aw
  %i.ig = icmp eq i32 %i.hq, 0                    ; 2 uses
  br i1 %i.ig, label %.thread165.i.i, label %bb.az

.thread165.i.i:                                   ; preds = %bb.ay
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  store i32 0, ptr %i.ih, align 4
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ii = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  store i32 %i.ii, ptr %i.ij, align 4
  %i.ik = call fastcc ptr @array_get_next(ptr noundef nonnull %i.df) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ik, i8 noundef 32, i64 noundef 11, i1 noundef false) #22
  store i8 46, ptr %i.ik, align 1
  %i.il = call fastcc ptr @array_get_next(ptr noundef nonnull %i.df) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.il, i8 noundef 32, i64 noundef 11, i1 noundef false) #22
  store i16 11822, ptr %i.il, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.thread165.i.i
  %i.im = phi i32 [ 0, %.thread165.i.i ], [ %i.ii, %bb.az ] ; 3 uses
  %i.in = call ptr @readdir64(ptr noundef nonnull %i.ia) #22 ; 2 uses
  %.not143191.i.i = icmp eq ptr %i.in, null
  br i1 %.not143191.i.i, label %._crit_edge.i.i, label %sub_0169.lr.ph.i.i

sub_0169.lr.ph.i.i:                               ; preds = %bb.ba
  %i.io = trunc i32 %i.hq to i16
  %i.ip = lshr i32 %i.hq, 16
  %i.iq = trunc nuw i32 %i.ip to i16
  %i.ir = trunc i32 %i.hz to i16
  %i.is = lshr i32 %i.hz, 16
  %i.it = trunc nuw i32 %i.is to i16
  br label %sub_0169.i.i

sub_0169.i.i:                                     ; preds = %bb.dv, %sub_0169.lr.ph.i.i
  %i.iu = phi ptr [ %i.in, %sub_0169.lr.ph.i.i ], [ %i.wj, %bb.dv ] ; 3 uses
  %i.iv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hp) #23
  %i.iw = add i64 %i.iv, 2
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 19 ; 6 uses
  %i.iy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ix) #23
  %i.iz = add i64 %i.iw, %i.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %9, i8 0, i64 144, i1 false), !annotation !10
  %i.ja = load i8, ptr %i.ix, align 1
  %.not.i169.i = icmp eq i8 %i.ja, 46
  br i1 %.not.i169.i, label %sub_1.i.i, label %.tail.i.i

sub_1.i.i:                                        ; preds = %sub_0169.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 20
  %i.jc = load i8, ptr %i.jb, align 1             ; 2 uses
  %i.jd = icmp eq i8 %i.jc, 0
  %.not197.i.i = icmp eq i8 %i.jc, 46
  br i1 %.not197.i.i, label %sub_2.i.i, label %.tail.i.i

sub_2.i.i:                                        ; preds = %sub_1.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.iu, i64 21
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = icmp eq i8 %i.jf, 0
  br label %.tail.i.i

.tail.i.i:                                        ; preds = %sub_2.i.i, %sub_1.i.i, %sub_0169.i.i
  %.not145255.i.i = phi i1 [ false, %sub_2.i.i ], [ %i.jd, %sub_1.i.i ], [ false, %sub_0169.i.i ] ; 4 uses
  %.not146.i.i = phi i1 [ %i.jg, %sub_2.i.i ], [ false, %sub_1.i.i ], [ false, %sub_0169.i.i ] ; 3 uses
  br i1 %i.ig, label %bb.bb, label %.critedge.i.i

bb.bb:                                            ; preds = %.tail.i.i
  %i.jh = load i32, ptr %i.fz, align 4
  %i.ji = load i16, ptr %i.ex, align 8
  %i.jj = zext i16 %i.ji to i32
  %i.jk = add nsw i32 %i.jj, -1
  %.not147.i.i = icmp ult i32 %i.jh, %i.jk
  br i1 %.not147.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jl = load ptr, ptr @stderr, align 8
  %i.jm = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jl, i32 noundef 1, ptr noundef nonnull @.str.55) #22 ; 0 uses
  br label %.thread166.i.i

bb.bd:                                            ; preds = %bb.bb
  %or.cond.i.i = or i1 %.not145255.i.i, %.not146.i.i
  br i1 %or.cond.i.i, label %bb.dv, label %.critedge.i.i, !llvm.loop !13

.critedge.i.i:                                    ; preds = %bb.bd, %.tail.i.i
  %i.jn = and i64 %i.iz, 4294967295               ; 2 uses
  %i.jo = call noalias ptr @g_malloc(i64 noundef %i.jn) #26 ; 7 uses
  %i.jp = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.jo, i64 noundef %i.jn, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.ix) #22 ; 0 uses
  %i.jq = call i32 @stat64(ptr noundef %i.jo, ptr noundef nonnull %9) #22
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge.i.i
  call void @g_free(ptr noundef %i.jo) #22
  br label %bb.dv, !llvm.loop !13

bb.bf:                                            ; preds = %.critedge.i.i
  %or.cond3.i.i = select i1 %.not145255.i.i, i1 true, i1 %.not146.i.i ; 2 uses
  br i1 %or.cond3.i.i, label %bb.dh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.js = load i32, ptr %i.fz, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i64 0, ptr %i.g, align 8, !annotation !10
  %i.jt = call noalias ptr @g_utf8_to_utf16(ptr noundef nonnull %i.ix, i64 noundef -1, ptr noundef null, ptr noundef nonnull %i.g, ptr noundef null) #22 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.jt, null         ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ju = load ptr, ptr @stderr, align 8
  %i.jv = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ju, i32 noundef 1, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.ix) #22 ; 0 uses
  br label %create_long_filename.exit.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.jw = load i64, ptr %i.g, align 8
  %i.jx = shl i64 %i.jw, 1
  %i.jy = add i64 %i.jx, 25
  %i.jz = sdiv i64 %i.jy, 26                      ; 2 uses
  %i.ka = trunc i64 %i.jz to i32                  ; 6 uses
  %i.kb = icmp sgt i32 %i.ka, 0
  br i1 %i.kb, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bi
  %i.kc = call fastcc ptr @array_get_next(ptr noundef nonnull %i.df) ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 11
  store i8 15, ptr %i.kd, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  store i8 0, ptr %i.ke, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 26
  store i16 0, ptr %i.kf, align 1
  %i.kg = trunc i64 %i.jz to i8
  %i.kh = or i8 %i.kg, 64
  store i8 %i.kh, ptr %i.kc, align 1
  %exitcond.peel.not.i.i.i.i = icmp eq i32 %i.ka, 1
  br i1 %exitcond.peel.not.i.i.i.i, label %.lr.ph54.i.i.i.i, label %.peel.next.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %array_get_next.exit.i, %bb.bi
  %i.ki = mul i32 %i.ka, 26                       ; 2 uses
  %i.kj = icmp sgt i32 %i.ki, 0
  br i1 %i.kj, label %.lr.ph54.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph54.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %i.kk = phi i32 [ %i.ki, %.preheader.i.i.i.i ], [ 26, %.lr.ph.i.i.i.i ]
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.kk to i64
  br label %bb.bp

.peel.next.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %array_get_next.exit.i
  %.04352.i.i.i.i = phi i32 [ %i.ll, %array_get_next.exit.i ], [ 1, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.kl = load i32, ptr %i.fz, align 4            ; 4 uses
  %i.km = add i32 %i.kl, 1                        ; 2 uses
  %i.kn = load i32, ptr %i.dg, align 8            ; 2 uses
  %i.ko = mul i32 %i.kn, %i.km
  %i.kp = load i32, ptr %i.gu, align 8
  %i.kq = icmp ugt i32 %i.ko, %i.kp
  br i1 %i.kq, label %bb.bj, label %array_ensure_allocated.exit.i179.i

bb.bj:                                            ; preds = %.peel.next.i.i.i.i
  %i.kr = add i32 %i.kl, 32
  %i.ks = mul i32 %i.kn, %i.kr                    ; 3 uses
  %i.kt = load ptr, ptr %i.df, align 8
  %i.ku = sext i32 %i.ks to i64
  %i.kv = call ptr @g_realloc(ptr noundef %i.kt, i64 noundef %i.ku) #22 ; 3 uses
  store ptr %i.kv, ptr %i.df, align 8
  %.not.i.i182.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i182.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 115, ptr noundef nonnull @__PRETTY_FUNCTION__.array_ensure_allocated) #24
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.kw = load i32, ptr %i.gu, align 8            ; 2 uses
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kx
  %i.kz = sub i32 %i.ks, %i.kw
  %i.la = zext i32 %i.kz to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ky, i8 noundef 0, i64 noundef range(i64 -2147483648, 4294967296) %i.la, i1 noundef false) #22
  store i32 %i.ks, ptr %i.gu, align 8
  br label %array_ensure_allocated.exit.i179.i

array_ensure_allocated.exit.i179.i:               ; preds = %bb.bl, %.peel.next.i.i.i.i
  store i32 %i.km, ptr %i.fz, align 4
  %.not.i180.i = icmp eq i32 %i.kl, -1
  br i1 %.not.i180.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %array_ensure_allocated.exit.i179.i
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.bn:                                            ; preds = %array_ensure_allocated.exit.i179.i
  %i.lb = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not.i6.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i6.i.i, label %bb.bo, label %array_get_next.exit.i

bb.bo:                                            ; preds = %bb.bn
  call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get_next.exit.i:                            ; preds = %bb.bn
  %i.lc = load i32, ptr %i.dg, align 8
  %i.ld = mul i32 %i.lc, %i.kl
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.le ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 11
  store i8 15, ptr %i.lg, align 1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store i8 0, ptr %i.lh, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 26
  store i16 0, ptr %i.li, align 1
  %i.lj = sub nuw nsw i32 %i.ka, %.04352.i.i.i.i
  %i.lk = trunc i32 %i.lj to i8
  store i8 %i.lk, ptr %i.lf, align 1
  %i.ll = add nuw nsw i32 %.04352.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.ll, %i.ka
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.peel.next.i.i.i.i, !llvm.loop !14

bb.bp:                                            ; preds = %bb.bw, %.lr.ph54.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph54.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.bw ] ; 4 uses
  %i.lm = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.ln = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32 ; 4 uses
  %.neg.i.i.i.i = sdiv i32 %i.ln, -26
  %i.lo = add i32 %i.lm, -1
  %i.lp = add i32 %i.lo, %.neg.i.i.i.i            ; 2 uses
  %i.lq = icmp ult i32 %i.lp, %i.lm
  br i1 %i.lq, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.lr = load ptr, ptr %i.df, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i.i.i, label %bb.bs, label %array_get.exit.i.i.i.i

bb.bs:                                            ; preds = %bb.br
  call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

array_get.exit.i.i.i.i:                           ; preds = %bb.br
  %i.ls = load i32, ptr %i.dg, align 8
  %i.lt = mul i32 %i.ls, %i.lp
  %i.lu = zext i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lu
  %.urem.i.i.i.i = urem i32 %i.ln, 26             ; 3 uses
  %i.lw = icmp samesign ult i32 %.urem.i.i.i.i, 10
  %i.lx = icmp samesign ult i32 %.urem.i.i.i.i, 22
  %..i.i.i.i = select i1 %i.lx, i32 4, i32 6
  %.sink.i.i.i.i = select i1 %i.lw, i32 1, i32 %..i.i.i.i
  %i.ly = add nuw nsw i32 %.sink.i.i.i.i, %.urem.i.i.i.i
  %i.lz = load i64, ptr %i.g, align 8
  %i.ma = shl i64 %i.lz, 1
  %i.mb = add i64 %i.ma, 2
  %.not49.i.i.i.i = icmp sgt i64 %i.mb, %indvars.iv.i.i.i.i
  br i1 %.not49.i.i.i.i, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %array_get.exit.i.i.i.i
  %i.mc = and i32 %i.ln, 1
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %10 = ashr exact i32 %i.ln, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x i8], ptr %i.jt, i64 %11
  %13 = load i16, ptr %12, align 2
  %i.me = trunc i16 %13 to i8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %.udiv65.i.i.i.i = lshr i64 %indvars.iv.i.i.i.i, 1
  %14 = and i64 %.udiv65.i.i.i.i, 2147483647
  %15 = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %14
  %16 = load i16, ptr %15, align 2
  %i.mf = lshr i16 %16, 8
  %i.mg = trunc nuw i16 %i.mf to i8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %array_get.exit.i.i.i.i
  %.sink66.i.i.i.i = phi i8 [ %i.me, %bb.bu ], [ %i.mg, %bb.bv ], [ -1, %array_get.exit.i.i.i.i ]
  %i.mh = zext nneg i32 %i.ly to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.mh
  store i8 %.sink66.i.i.i.i, ptr %i.mi, align 1
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond57.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond57.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.bp, !llvm.loop !15

._crit_edge.i.i.i.i:                              ; preds = %bb.bw, %.preheader.i.i.i.i
  call void @g_free(ptr noundef nonnull %i.jt) #22
  %i.mj = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.mk = sub i32 %i.mj, %i.ka
  %i.ml = icmp ult i32 %i.mk, %i.mj
  br i1 %i.ml, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.14, i32 noundef 105, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

bb.by:                                            ; preds = %._crit_edge.i.i.i.i
  %i.mm = load ptr, ptr %i.df, align 8
  %.not.i50.i.i.i.i = icmp eq ptr %i.mm, null
  br i1 %.not.i50.i.i.i.i, label %bb.bz, label %create_long_filename.exit.i.i.i

bb.bz:                                            ; preds = %bb.by
  call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14, i32 noundef 106, ptr noundef nonnull @__PRETTY_FUNCTION__.array_get) #24
  unreachable

create_long_filename.exit.i.i.i:                  ; preds = %bb.by, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  %i.mn = call fastcc ptr @array_get_next(ptr noundef nonnull %i.df) ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 0, ptr %i.f, align 8, !annotation !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.mn, i8 noundef 32, i64 noundef 11, i1 noundef false) #22
  br label %bb.ca

bb.ca:                                            ; preds = %to_valid_short_char.exit.thread.i.i.i.i, %create_long_filename.exit.i.i.i
  %.084.i.i.i.i = phi ptr [ %i.ix, %create_long_filename.exit.i.i.i ], [ %i.ne, %to_valid_short_char.exit.thread.i.i.i.i ] ; 4 uses
  %.082.i.i.i.i = phi ptr [ null, %create_long_filename.exit.i.i.i ], [ %.183.i.i.i.i, %to_valid_short_char.exit.thread.i.i.i.i ] ; 7 uses
  %.076.i.i.i.i = phi i8 [ 0, %create_long_filename.exit.i.i.i ], [ %.379.i.i.i.i, %to_valid_short_char.exit.thread.i.i.i.i ] ; 6 uses
  %.071.i.i.i.i = phi i32 [ 0, %create_long_filename.exit.i.i.i ], [ %.273.i.i.i.i, %to_valid_short_char.exit.thread.i.i.i.i ] ; 8 uses
  %i.mo = call i32 @g_utf8_get_char(ptr noundef %.084.i.i.i.i) #23 ; 2 uses
  switch i32 %i.mo, label %bb.cd [
    i32 0, label %bb.ch
    i32 46, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.mp = icmp eq i32 %.071.i.i.i.i, 0
  br i1 %i.mp, label %to_valid_short_char.exit.thread.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not90.i.i.i.i = icmp eq ptr %.082.i.i.i.i, null
  %spec.select.i.i.i.i = select i1 %.not90.i.i.i.i, i8 %.076.i.i.i.i, i8 1
  br label %to_valid_short_char.exit.thread.i.i.i.i

bb.cd:                                            ; preds = %bb.ca
  %.not.i31.i.i.i = icmp eq ptr %.082.i.i.i.i, null
  br i1 %.not.i31.i.i.i, label %bb.ce, label %to_valid_short_char.exit.thread.i.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.mq = call i32 @g_unichar_toupper(i32 noundef %i.mo) #25 ; 4 uses
  %i.mr = add i32 %i.mq, -48
  %or.cond.i.i.i.i.i = icmp ult i32 %i.mr, 10
  %i.ms = add i32 %i.mq, -65
  %or.cond3.i.i.i.i.i = icmp ult i32 %i.ms, 26
  %or.cond11.i.i.i.i.i = or i1 %or.cond.i.i.i.i.i, %or.cond3.i.i.i.i.i
  br i1 %or.cond11.i.i.i.i.i, label %to_valid_short_char.exit.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %memchr.i.i.i.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.61, i32 %i.mq, i64 17)
  %.not.i.i32.i.i.i = icmp eq ptr %memchr.i.i.i.i.i, null
  br i1 %.not.i.i32.i.i.i, label %to_valid_short_char.exit.thread.i.i.i.i, label %to_valid_short_char.exit.i.i.i.i

to_valid_short_char.exit.i.i.i.i:                 ; preds = %bb.cf, %bb.ce
  %i.mt = trunc i32 %i.mq to i8                   ; 2 uses
  %i.mu = icmp slt i32 %.071.i.i.i.i, 8
  %i.mv = icmp ne i8 %i.mt, 0
  %or.cond.i.i.i.i = and i1 %i.mu, %i.mv
  br i1 %or.cond.i.i.i.i, label %bb.cg, label %to_valid_short_char.exit.thread.i.i.i.i

bb.cg:                                            ; preds = %to_valid_short_char.exit.i.i.i.i
  %i.mw = add nsw i32 %.071.i.i.i.i, 1
  %i.mx = sext i32 %.071.i.i.i.i to i64
  %i.my = getelementptr inbounds i8, ptr %i.mn, i64 %i.mx
  store i8 %i.mt, ptr %i.my, align 1
  br label %to_valid_short_char.exit.thread.i.i.i.i

to_valid_short_char.exit.thread.i.i.i.i:          ; preds = %bb.cg, %to_valid_short_char.exit.i.i.i.i, %bb.cf, %bb.cd, %bb.cc, %bb.cb
  %.183.i.i.i.i = phi ptr [ %.082.i.i.i.i, %bb.cb ], [ %.084.i.i.i.i, %bb.cc ], [ %.082.i.i.i.i, %bb.cd ], [ null, %to_valid_short_char.exit.i.i.i.i ], [ null, %bb.cg ], [ null, %bb.cf ]
  %.379.i.i.i.i = phi i8 [ 1, %bb.cb ], [ %spec.select.i.i.i.i, %bb.cc ], [ %.076.i.i.i.i, %bb.cd ], [ 1, %to_valid_short_char.exit.i.i.i.i ], [ %.076.i.i.i.i, %bb.cg ], [ 1, %bb.cf ]
  %.273.i.i.i.i = phi i32 [ 0, %bb.cb ], [ %.071.i.i.i.i, %bb.cc ], [ %.071.i.i.i.i, %bb.cd ], [ %.071.i.i.i.i, %to_valid_short_char.exit.i.i.i.i ], [ %i.mw, %bb.cg ], [ %.071.i.i.i.i, %bb.cf ]
  %i.mz = load i8, ptr %.084.i.i.i.i, align 1
  %i.na = zext i8 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = sext i8 %i.nc to i64
  %i.ne = getelementptr inbounds i8, ptr %.084.i.i.i.i, i64 %i.nd
  br label %bb.ca

bb.ch:                                            ; preds = %bb.ca
  %.not91.i.i.i.i = icmp eq ptr %.082.i.i.i.i, null
  br i1 %.not91.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nf = load i8, ptr %.082.i.i.i.i, align 1
  %i.ng = zext i8 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ng
  %i.ni = load i8, ptr %i.nh, align 1
  %i.nj = sext i8 %i.ni to i64
  %i.nk = getelementptr inbounds i8, ptr %.082.i.i.i.i, i64 %i.nj ; 2 uses
  %i.nl = call i32 @g_utf8_get_char(ptr noundef nonnull %i.nk) #23 ; 2 uses
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %.loopexit.i.i.i.i, label %.lr.ph.i27.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.ci, %to_valid_short_char.exit102.thread.i.i.i.i
  %i.nn = phi i32 [ %i.oe, %to_valid_short_char.exit102.thread.i.i.i.i ], [ %i.nl, %bb.ci ]
  %.3111.i.i.i.i = phi i32 [ %.4.i.i.i.i, %to_valid_short_char.exit102.thread.i.i.i.i ], [ 0, %bb.ci ] ; 5 uses
  %.480110.i.i.i.i = phi i8 [ %.581.i.i.i.i, %to_valid_short_char.exit102.thread.i.i.i.i ], [ %.076.i.i.i.i, %bb.ci ]
  %.185109.i.i.i.i = phi ptr [ %i.od, %to_valid_short_char.exit102.thread.i.i.i.i ], [ %i.nk, %bb.ci ] ; 2 uses
  %i.no = call i32 @g_unichar_toupper(i32 noundef %i.nn) #25 ; 4 uses
  %i.np = add i32 %i.no, -48
  %or.cond.i96.i.i.i.i = icmp ult i32 %i.np, 10
  %i.nq = add i32 %i.no, -65
  %or.cond3.i97.i.i.i.i = icmp ult i32 %i.nq, 26
  %or.cond11.i98.i.i.i.i = or i1 %or.cond.i96.i.i.i.i, %or.cond3.i97.i.i.i.i
  br i1 %or.cond11.i98.i.i.i.i, label %to_valid_short_char.exit102.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i27.i.i.i
  %memchr.i99.i.i.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.61, i32 %i.no, i64 17)
  %.not.i100.i.i.i.i = icmp eq ptr %memchr.i99.i.i.i.i, null
  br i1 %.not.i100.i.i.i.i, label %to_valid_short_char.exit102.thread.i.i.i.i, label %to_valid_short_char.exit102.i.i.i.i

to_valid_short_char.exit102.i.i.i.i:              ; preds = %bb.cj, %.lr.ph.i27.i.i.i
  %i.nr = trunc i32 %i.no to i8                   ; 2 uses
  %i.ns = icmp slt i32 %.3111.i.i.i.i, 3
  %i.nt = icmp ne i8 %i.nr, 0
  %or.cond5.i.i.i.i = and i1 %i.ns, %i.nt
  br i1 %or.cond5.i.i.i.i, label %bb.ck, label %to_valid_short_char.exit102.thread.i.i.i.i

bb.ck:                                            ; preds = %to_valid_short_char.exit102.i.i.i.i
  %i.nu = add nsw i32 %.3111.i.i.i.i, 1
  %i.nv = sext i32 %.3111.i.i.i.i to i64
  %i.nw = getelementptr i8, ptr %i.mn, i64 %i.nv
  %i.nx = getelementptr i8, ptr %i.nw, i64 8
  store i8 %i.nr, ptr %i.nx, align 1
  br label %to_valid_short_char.exit102.thread.i.i.i.i

to_valid_short_char.exit102.thread.i.i.i.i:       ; preds = %bb.ck, %to_valid_short_char.exit102.i.i.i.i, %bb.cj
  %.581.i.i.i.i = phi i8 [ %.480110.i.i.i.i, %bb.ck ], [ 1, %to_valid_short_char.exit102.i.i.i.i ], [ 1, %bb.cj ] ; 2 uses
  %.4.i.i.i.i = phi i32 [ %i.nu, %bb.ck ], [ %.3111.i.i.i.i, %to_valid_short_char.exit102.i.i.i.i ], [ %.3111.i.i.i.i, %bb.cj ]
  %i.ny = load i8, ptr %.185109.i.i.i.i, align 1
  %i.nz = zext i8 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1
  %i.oc = sext i8 %i.ob to i64
  %i.od = getelementptr inbounds i8, ptr %.185109.i.i.i.i, i64 %i.oc ; 2 uses
  %i.oe = call i32 @g_utf8_get_char(ptr noundef nonnull %i.od) #23 ; 2 uses
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %.loopexit.i.i.i.i, label %.lr.ph.i27.i.i.i

.loopexit.i.i.i.i:                                ; preds = %to_valid_short_char.exit102.thread.i.i.i.i, %bb.ci, %bb.ch
  %.6.i.i.i.i = phi i8 [ %.076.i.i.i.i, %bb.ch ], [ %.076.i.i.i.i, %bb.ci ], [ %.581.i.i.i.i, %to_valid_short_char.exit102.thread.i.i.i.i ]
  %i.og = load i8, ptr %i.mn, align 1
  switch i8 %i.og, label %bb.cl [
    i8 -27, label %.thread.i.i.i.i
    i8 32, label %bb.cs
  ]

.thread.i.i.i.i:                                  ; preds = %.loopexit.i.i.i.i
  store i8 5, ptr %i.mn, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %.thread.i.i.i.i, %.loopexit.i.i.i.i
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = icmp eq i8 %i.oi, 32
  br i1 %i.oj, label %bb.cs, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mn, i64 2
  %i.ol = load i8, ptr %i.ok, align 1
  %i.om = icmp eq i8 %i.ol, 32
  br i1 %i.om, label %bb.cs, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.on = getelementptr inbounds nuw i8, ptr %i.mn, i64 3
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = icmp eq i8 %i.oo, 32
  br i1 %i.op, label %bb.cs, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.or = load i8, ptr %i.oq, align 1
  %i.os = icmp eq i8 %i.or, 32
  br i1 %i.os, label %bb.cs, label %bb.cp
end_hunk_0
