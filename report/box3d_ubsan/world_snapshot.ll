Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/world_snapshot?download=true
inline.NumInlined: 202
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3DeserializeIntoShell:bb.a
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gf, i64 60 ; 2 uses
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !166
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !246
  %i.hk = sext i32 %i.hj to i64
  %i.hl = mul nsw i64 %i.hk, 12
  tail call void @b3Free(ptr noundef %i.hi, i64 noundef %i.hl) #8
  store ptr null, ptr %i.hg, align 8, !tbaa !166
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  store i32 0, ptr %i.hm, align 8, !tbaa !165
  store i32 0, ptr %i.hh, align 4, !tbaa !246
  %indvars.iv.next762.i = add nuw nsw i64 %indvars.iv761.i2327, 1 ; 2 uses
  %i.hn = load i32, ptr %i.eq, align 8, !tbaa !150
  %i.ho = sext i32 %i.hn to i64
  %i.hp = icmp slt i64 %indvars.iv.next762.i, %i.ho
  br i1 %i.hp, label %.lr.ph2328, label %b3FreeLiveSimElements.exit

b3FreeLiveSimElements.exit:                       ; preds = %.lr.ph475.split.i, %.preheader.i
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 4428
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.hq, i32 noundef 12)
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 4440
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.hr, i32 noundef 4)
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 4444
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.hs, i32 noundef 4)
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 4448
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ht, i32 noundef 4)
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 4452
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.hu, i32 noundef 4)
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 4456
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.hv, i32 noundef 4)
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 4460
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.hw, i32 noundef 4)
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 4464
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.hx, i32 noundef 4)
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 4416
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.hy, i32 noundef 8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #8
  store i32 0, ptr %i.ah, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ah, i32 noundef 4)
  %i.hz = load i32, ptr %i.ah, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #8
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 4424
  store i32 %i.hz, ptr %i.ia, align 8, !tbaa !71
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 4744
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ib, i32 noundef 4)
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 4748
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ic, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #8
  store i32 0, ptr %i.ag, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ag, i32 noundef 4)
  %i.id = load i32, ptr %i.ag, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #8
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 4288
  store i32 %i.id, ptr %i.ie, align 8, !tbaa !72
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 4624
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.if, i32 noundef 20)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #8
  store i8 0, ptr %i.ai, align 1, !tbaa !77
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ai, i32 noundef 1)
  %i.ig = load i8, ptr %i.ai, align 1, !tbaa !77  ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 4762
  %i.ii = and i8 %i.ig, 1
  store i8 %i.ii, ptr %i.ih, align 2, !tbaa !73
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 4764
  %i.ik = lshr i8 %i.ig, 1
  %.lobit.i = and i8 %i.ik, 1
  store i8 %.lobit.i, ptr %i.ij, align 4, !tbaa !74
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 4765
  %i.im = lshr i8 %i.ig, 2
  %.lobit35.i = and i8 %i.im, 1
  store i8 %.lobit35.i, ptr %i.il, align 1, !tbaa !75
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 4766
  %i.io = lshr i8 %i.ig, 3
  %.lobit37.i = and i8 %i.io, 1
  store i8 %.lobit37.i, ptr %i.in, align 2, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #8
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 3856
  call fastcc void @b3DesIdPool(ptr noundef %4, ptr noundef %i.ip)
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 4056
  call fastcc void @b3DesIdPool(ptr noundef %4, ptr noundef %i.iq)
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 3976
  call fastcc void @b3DesIdPool(ptr noundef %4, ptr noundef %i.ir)
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 3936
  call fastcc void @b3DesIdPool(ptr noundef %4, ptr noundef %i.is)
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 4016
  call fastcc void @b3DesIdPool(ptr noundef %4, ptr noundef %i.it)
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 3896
  call fastcc void @b3DesIdPool(ptr noundef %4, ptr noundef %i.iu)
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 3920 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 3928 ; 3 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !78
  %i.iy = icmp sgt i32 %i.ix, 0
  br i1 %i.iy, label %.lr.ph5777, label %.lr.ph2330.split._crit_edge

.lr.ph2330.split._crit_edge:                      ; preds = %.lr.ph2330.split, %b3FreeLiveSimElements.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #8
  store i32 0, ptr %i.af, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.af, i32 noundef 4)
  %i.iz = load i32, ptr %i.af, align 4, !tbaa !14 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #8
  %i.ja = load i8, ptr %i.ao, align 8, !tbaa !204 ; 3 uses
  %i.jb = icmp ult i8 %i.ja, 2
  br i1 %i.jb, label %bb.ao, label %bb.an, !prof !10, !nosanitize !9

.lr.ph5777:                                       ; preds = %b3FreeLiveSimElements.exit, %.lr.ph2330.split
  %indvars.iv5776 = phi i64 [ %indvars.iv.next, %.lr.ph2330.split ], [ 0, %b3FreeLiveSimElements.exit ] ; 3 uses
  %i.jc = load ptr, ptr %i.iv, align 8, !tbaa !79 ; 3 uses
  %i.jd = getelementptr inbounds nuw [88 x i8], ptr %i.jc, i64 %indvars.iv5776 ; 17 uses
  %i.je = mul nuw nsw i64 %indvars.iv5776, 88
  %i.jf = ptrtoint ptr %i.jc to i64, !nosanitize !9 ; 3 uses
  %i.jg = add i64 %i.je, %i.jf, !nosanitize !9    ; 3 uses
  %i.jh = icmp ne ptr %i.jc, null, !nosanitize !9 ; 2 uses
  %i.ji = icmp eq i64 %i.jg, 0
  %i.jj = xor i1 %i.jh, %i.ji
  %i.jk = icmp uge i64 %i.jg, %i.jf, !nosanitize !9
  %i.jl = and i1 %i.jk, %i.jj, !nosanitize !9
  br i1 %i.jl, label %bb.al, label %bb.ak, !prof !10, !nosanitize !9

bb.ak:                                            ; preds = %.lr.ph5777
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.jf, i64 %i.jg) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.al:                                            ; preds = %.lr.ph5777
  %i.jm = ptrtoint ptr %i.jd to i64, !nosanitize !9 ; 2 uses
  %i.jn = and i64 %i.jm, 7, !nosanitize !9
  %i.jo = icmp eq i64 %i.jn, 0, !nosanitize !9
  %i.jp = and i1 %i.jh, %i.jo
  br i1 %i.jp, label %.lr.ph2330.split, label %bb.am, !prof !10, !nosanitize !9

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @33, i64 %i.jm) #7, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph2330.split:                                 ; preds = %bb.al
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 12 ; 2 uses
  %i.jr = load ptr, ptr %i.jd, align 8, !tbaa !92
  %i.js = load i32, ptr %i.jq, align 4, !tbaa !247
  %i.jt = sext i32 %i.js to i64
  %i.ju = mul nsw i64 %i.jt, 216
  call void @b3Free(ptr noundef %i.jr, i64 noundef %i.ju) #8
  store ptr null, ptr %i.jd, align 8, !tbaa !92
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i32 0, ptr %i.jv, align 8, !tbaa !90
  store i32 0, ptr %i.jq, align 4, !tbaa !247
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jd, i64 28 ; 2 uses
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !94
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !248
  %i.ka = sext i32 %i.jz to i64
  %i.kb = mul nsw i64 %i.ka, 56
  call void @b3Free(ptr noundef %i.jy, i64 noundef %i.kb) #8
  store ptr null, ptr %i.jw, align 8, !tbaa !94
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store i32 0, ptr %i.kc, align 8, !tbaa !93
  store i32 0, ptr %i.jx, align 4, !tbaa !248
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jd, i64 32 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jd, i64 44 ; 2 uses
  %i.kf = load ptr, ptr %i.kd, align 8, !tbaa !96
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !249
  %i.kh = sext i32 %i.kg to i64
  %i.ki = mul nsw i64 %i.kh, 444
  call void @b3Free(ptr noundef %i.kf, i64 noundef %i.ki) #8
  store ptr null, ptr %i.kd, align 8, !tbaa !96
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store i32 0, ptr %i.kj, align 8, !tbaa !95
  store i32 0, ptr %i.ke, align 4, !tbaa !249
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jd, i64 48 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jd, i64 60 ; 2 uses
  %i.km = load ptr, ptr %i.kk, align 8, !tbaa !98
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !250
  %i.ko = sext i32 %i.kn to i64
  %i.kp = shl nsw i64 %i.ko, 2
  call void @b3Free(ptr noundef %i.km, i64 noundef %i.kp) #8
  store ptr null, ptr %i.kk, align 8, !tbaa !98
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store i32 0, ptr %i.kq, align 8, !tbaa !97
  store i32 0, ptr %i.kl, align 4, !tbaa !250
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jd, i64 64 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jd, i64 76 ; 2 uses
  %i.kt = load ptr, ptr %i.kr, align 8, !tbaa !100
  %i.ku = load i32, ptr %i.ks, align 4, !tbaa !251
  %i.kv = sext i32 %i.ku to i64
  %i.kw = shl nsw i64 %i.kv, 2
  call void @b3Free(ptr noundef %i.kt, i64 noundef %i.kw) #8
  store ptr null, ptr %i.kr, align 8, !tbaa !100
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  store i32 0, ptr %i.kx, align 8, !tbaa !99
  store i32 0, ptr %i.ks, align 4, !tbaa !251
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5776, 1 ; 2 uses
  %i.ky = load i32, ptr %i.iw, align 8, !tbaa !78
  %i.kz = sext i32 %i.ky to i64
  %i.la = icmp slt i64 %indvars.iv.next, %i.kz
  br i1 %i.la, label %.lr.ph5777, label %.lr.ph2330.split._crit_edge

bb.an:                                            ; preds = %.lr.ph2330.split._crit_edge
  %i.lb = zext i8 %i.ja to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @34, i64 %i.lb) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.ao:                                            ; preds = %.lr.ph2330.split._crit_edge
  %5 = trunc nuw i8 %i.ja to i1
  %or.cond728 = icmp ult i32 %i.iz, 24403224
  %or.cond5525.not = select i1 %5, i1 %or.cond728, i1 false
  br i1 %or.cond5525.not, label %b3SnapCheckCount.exit, label %.thread643.thread

b3SnapCheckCount.exit:                            ; preds = %bb.ao
  %i.lc = load i32, ptr %i.an, align 4, !tbaa !203
  %i.ld = sext i32 %i.lc to i64
  %i.le = load i32, ptr %i.am, align 8, !tbaa !202
  %i.lf = sext i32 %i.le to i64
  %i.lg = sub nsw i64 %i.ld, %i.lf
  %narrow = mul nuw nsw i32 %i.iz, 24
  %i.lh = zext nneg i32 %narrow to i64
  %.not735 = icmp slt i64 %i.lg, %i.lh
  br i1 %.not735, label %.thread643.thread, label %bb.ap

bb.ap:                                            ; preds = %b3SnapCheckCount.exit
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 3932 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !252 ; 2 uses
  %i.lk = icmp slt i32 %i.lj, %i.iz
  br i1 %i.lk, label %bb.aq, label %thread-pre-split639

bb.aq:                                            ; preds = %bb.ap
  %i.ll = mul i32 %i.lj, 88
  %i.lm = mul nuw nsw i32 %i.iz, 88
  %i.ln = load ptr, ptr %i.iv, align 8, !tbaa !79
  %i.lo = call ptr @b3GrowAlloc(ptr noundef %i.ln, i32 noundef %i.ll, i32 noundef %i.lm) #8 ; 2 uses
  store ptr %i.lo, ptr %i.iv, align 8, !tbaa !79
  store i32 %i.iz, ptr %i.li, align 4, !tbaa !252
  br label %bb.ar

thread-pre-split639:                              ; preds = %bb.ap
  %.pr640 = load ptr, ptr %i.iv, align 8, !tbaa !79
  br label %bb.ar

bb.ar:                                            ; preds = %thread-pre-split639, %bb.aq
  %i.lp = phi ptr [ %.pr640, %thread-pre-split639 ], [ %i.lo, %bb.aq ] ; 2 uses
  store i32 %i.iz, ptr %i.iw, align 8, !tbaa !78
  %.not606 = icmp eq ptr %i.lp, null, !nosanitize !9
  br i1 %.not606, label %bb.as, label %bb.at, !prof !91, !nosanitize !9

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @35) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.at:                                            ; preds = %bb.ar
  %narrow736 = mul nuw nsw i32 %i.iz, 88
  %i.lq = zext nneg i32 %narrow736 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lp, i8 0, i64 %i.lq, i1 false)
  %.not2355 = icmp eq i32 %i.iz, 0
  br i1 %.not2355, label %.thread638, label %.lr.ph2333.preheader

.lr.ph2333.preheader:                             ; preds = %bb.at
  %wide.trip.count = zext nneg i32 %i.iz to i64
  br label %.lr.ph2333

.lr.ph2333:                                       ; preds = %.lr.ph2333.preheader, %b3DesSolverSet.exit
  %indvars.iv3916 = phi i64 [ 0, %.lr.ph2333.preheader ], [ %indvars.iv.next3917, %b3DesSolverSet.exit ] ; 3 uses
  %i.lr = load ptr, ptr %i.iv, align 8, !tbaa !79 ; 3 uses
  %i.ls = mul nuw nsw i64 %indvars.iv3916, 88
  %i.lt = ptrtoint ptr %i.lr to i64, !nosanitize !9 ; 3 uses
  %i.lu = add i64 %i.ls, %i.lt, !nosanitize !9    ; 3 uses
  %i.lv = icmp ne ptr %i.lr, null                 ; 2 uses
  %i.lw = icmp eq i64 %i.lu, 0
  %i.lx = xor i1 %i.lv, %i.lw
  %i.ly = icmp uge i64 %i.lu, %i.lt, !nosanitize !9
  %i.lz = and i1 %i.ly, %i.lx, !nosanitize !9
  br i1 %i.lz, label %bb.av, label %bb.au, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %.lr.ph2333
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 %i.lt, i64 %i.lu) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.av:                                            ; preds = %.lr.ph2333
  %i.ma = getelementptr inbounds nuw [88 x i8], ptr %i.lr, i64 %indvars.iv3916 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #8
  store i32 0, ptr %i.ae, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ae, i32 noundef 4)
  %i.mb = load i32, ptr %i.ae, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #8
  %i.mc = ptrtoint ptr %i.ma to i64, !nosanitize !9 ; 2 uses
  %i.md = and i64 %i.mc, 7, !nosanitize !9
  %i.me = icmp eq i64 %i.md, 0, !nosanitize !9
  %i.mf = and i1 %i.me, %i.lv
  br i1 %i.mf, label %bb.ax, label %bb.aw, !prof !10, !nosanitize !9

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @130, i64 %i.mc) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.ax:                                            ; preds = %bb.av
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 80
  store i32 %i.mb, ptr %i.mg, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #8
  store i32 0, ptr %i.ad, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ad, i32 noundef 4)
  %i.mh = load i32, ptr %i.ad, align 4, !tbaa !14 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #8
  %i.mi = load i8, ptr %i.ao, align 8, !tbaa !204 ; 3 uses
  %i.mj = icmp ult i8 %i.mi, 2
  br i1 %i.mj, label %bb.az, label %bb.ay, !prof !10, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.mk = zext i8 %i.mi to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @131, i64 %i.mk) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.az:                                            ; preds = %bb.ax
  %i.ml = trunc nuw i8 %i.mi to i1
  br i1 %i.ml, label %bb.ba, label %.thread191.i

bb.ba:                                            ; preds = %bb.az
  %or.cond224.i = icmp ugt i32 %i.mh, 9942053
  br i1 %or.cond224.i, label %b3SnapCheckCount.exit.thread.i, label %b3SnapCheckCount.exit.i

b3SnapCheckCount.exit.i:                          ; preds = %bb.ba
  %i.mm = load i32, ptr %i.an, align 4, !tbaa !203
  %i.mn = sext i32 %i.mm to i64
  %i.mo = load i32, ptr %i.am, align 8, !tbaa !202
  %i.mp = sext i32 %i.mo to i64
  %i.mq = sub nsw i64 %i.mn, %i.mp
  %narrow.i = mul nuw nsw i32 %i.mh, 216          ; 3 uses
  %i.mr = zext nneg i32 %narrow.i to i64
  %.not229.i = icmp slt i64 %i.mq, %i.mr
  br i1 %.not229.i, label %b3SnapCheckCount.exit.thread.i, label %bb.bb

b3SnapCheckCount.exit.thread.i:                   ; preds = %b3SnapCheckCount.exit.i, %bb.ba
  store i8 0, ptr %i.ao, align 8, !tbaa !204
  br label %.thread191.i

bb.bb:                                            ; preds = %b3SnapCheckCount.exit.i
  %.not255.i = icmp eq i32 %i.mh, 0
  br i1 %.not255.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ma, i64 12 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !247 ; 2 uses
  %i.mu = icmp slt i32 %i.mt, %i.mh
  br i1 %i.mu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mv = mul i32 %i.mt, 216
  %i.mw = load ptr, ptr %i.ma, align 8, !tbaa !92
  %i.mx = call ptr @b3GrowAlloc(ptr noundef %i.mw, i32 noundef %i.mv, i32 noundef %narrow.i) #8
  store ptr %i.mx, ptr %i.ma, align 8, !tbaa !92
  store i32 %i.mh, ptr %i.ms, align 4, !tbaa !247
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.my = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i32 %i.mh, ptr %i.my, align 8, !tbaa !90
  %i.mz = load ptr, ptr %i.ma, align 8, !tbaa !92
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef %i.mz, i32 noundef %narrow.i)
  br label %.thread191.i

bb.bf:                                            ; preds = %bb.bb
  %i.na = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store i32 0, ptr %i.na, align 8, !tbaa !90
  br label %.thread191.i

.thread191.i:                                     ; preds = %bb.bf, %bb.be, %b3SnapCheckCount.exit.thread.i, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #8
  store i32 0, ptr %i.ac, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %4, ptr noundef nonnull %i.ac, i32 noundef 4)
  %i.nb = load i32, ptr %i.ac, align 4, !tbaa !14 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #8
  %i.nc = load i8, ptr %i.ao, align 8, !tbaa !204 ; 3 uses
  %i.nd = icmp ult i8 %i.nc, 2
  br i1 %i.nd, label %bb.bh, label %bb.bg, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %.thread191.i
  %i.ne = zext i8 %i.nc to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @132, i64 %i.ne) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.bh:                                            ; preds = %.thread191.i
  %i.nf = trunc nuw i8 %i.nc to i1
  br i1 %i.nf, label %bb.bi, label %.thread199.i

bb.bi:                                            ; preds = %bb.bh
  %or.cond225.i = icmp ugt i32 %i.nb, 38347922
  br i1 %or.cond225.i, label %b3SnapCheckCount.exit181.thread.i, label %b3SnapCheckCount.exit181.i

b3SnapCheckCount.exit181.i:                       ; preds = %bb.bi
  %i.ng = load i32, ptr %i.an, align 4, !tbaa !203
  %i.nh = sext i32 %i.ng to i64
  %i.ni = load i32, ptr %i.am, align 8, !tbaa !202
  %i.nj = sext i32 %i.ni to i64
  %i.nk = sub nsw i64 %i.nh, %i.nj
  %narrow230.i = mul nuw nsw i32 %i.nb, 56        ; 3 uses
  %i.nl = zext nneg i32 %narrow230.i to i64
  %.not231.i = icmp slt i64 %i.nk, %i.nl
  br i1 %.not231.i, label %b3SnapCheckCount.exit181.thread.i, label %bb.bj

b3SnapCheckCount.exit181.thread.i:                ; preds = %b3SnapCheckCount.exit181.i, %bb.bi
  store i8 0, ptr %i.ao, align 8, !tbaa !204
  br label %.thread199.i

bb.bj:                                            ; preds = %b3SnapCheckCount.exit181.i
  %.not256.i = icmp eq i32 %i.nb, 0
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 3 uses
  br i1 %.not256.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
end_hunk_0
begin_hunk_1_@b3DesContacts:bb.a
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  store i32 %i.eh, ptr %i.fb, align 8, !tbaa !77
  %i.fc = load ptr, ptr %i.eu, align 8, !tbaa !77
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef %i.fc, i32 noundef %narrow127)
  br label %.thread115

.thread115:                                       ; preds = %bb.ar, %bb.av, %bb.an, %bb.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.m, !llvm.loop !298

.critedge.sink.split:                             ; preds = %b3SnapCheckCount.exit109, %bb.as, %b3SnapCheckCount.exit107, %bb.z, %b3SnapCheckCount.exit, %bb.f
  store i8 0, ptr %i.h, align 8, !tbaa !204
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %.thread115, %bb.aq, %bb.x, %.critedge.sink.split, %.split, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesBitSet(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !func_sanitize !306 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14   ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.c = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.d = and i64 %i.c, 7, !nosanitize !9
  %i.e = icmp eq i64 %i.d, 0, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @210, i64 %i.c) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !204   ; 3 uses
  %i.h = icmp ult i8 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.i = zext i8 %i.g to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @211, i64 %i.i) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.j = trunc nuw i8 %i.g to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %or.cond.not = icmp ult i32 %i.b, 268435456
  br i1 %or.cond.not, label %b3SnapCheckCount.exit, label %b3SnapCheckCount.exit.thread

b3SnapCheckCount.exit:                            ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.k, align 4, !tbaa !203
  %i.n = sext i32 %i.m to i64
  %i.o = load i32, ptr %i.l, align 8, !tbaa !202
  %i.p = sext i32 %i.o to i64
  %i.q = sub nsw i64 %i.n, %i.p
  %i.r = shl nuw nsw i32 %i.b, 3
  %i.s = zext nneg i32 %i.r to i64
  %.not30 = icmp slt i64 %i.q, %i.s
  br i1 %.not30, label %b3SnapCheckCount.exit.thread, label %bb.g

b3SnapCheckCount.exit.thread:                     ; preds = %bb.f, %b3SnapCheckCount.exit
  store i8 0, ptr %i.f, align 8, !tbaa !204
  br label %bb.g

bb.g:                                             ; preds = %b3SnapCheckCount.exit.thread, %b3SnapCheckCount.exit, %bb.e
  call void @b3DestroyBitSet(ptr noundef nonnull %1) #8
  %i.t = load i8, ptr %i.f, align 8, !tbaa !204   ; 3 uses
  %i.u = icmp ult i8 %i.t, 2
  br i1 %i.u, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  %i.v = zext i8 %i.t to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @212, i64 %i.v) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.w = trunc nuw i8 %i.t to i1
  br i1 %i.w, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %.not27 = icmp eq i32 %i.b, 0
  %i.x = call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3                  ; 2 uses
  %i.aa = call ptr @b3Alloc(i64 noundef %i.z) #8  ; 3 uses
  %i.ab = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.ac = and i64 %i.ab, 7, !nosanitize !9
  %i.ad = icmp eq i64 %i.ac, 0, !nosanitize !9
  br i1 %i.ad, label %bb.l, label %bb.k, !prof !10, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @214, i64 %i.ab) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  store ptr %i.aa, ptr %1, align 8, !tbaa !178
  %.not28 = icmp eq ptr %i.aa, null, !nosanitize !9
  br i1 %.not28, label %bb.m, label %bb.n, !prof !91, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_nonnull_arg_abort(ptr nonnull @215) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i8 0, i64 %i.z, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.x, ptr %i.ae, align 8, !tbaa !307
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.b, ptr %i.af, align 4, !tbaa !177
  br i1 %.not27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = load ptr, ptr %1, align 8, !tbaa !178
  %i.ah = shl i32 %i.b, 3
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef %i.ag, i32 noundef %i.ah)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesHashSet(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !func_sanitize !308 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 4)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14   ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !14   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %or.cond41.not = icmp ult i32 %i.c, 134217728
  %i.e = ptrtoint ptr %0 to i64, !nosanitize !9   ; 3 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %or.cond41.not, label %bb.b, label %b3SnapCheckCount.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @129, i64 %i.e) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.h, align 4, !tbaa !203
  %i.k = sext i32 %i.j to i64
  %i.l = load i32, ptr %i.i, align 8, !tbaa !202
  %i.m = sext i32 %i.l to i64
  %i.n = sub nsw i64 %i.k, %i.m
  %i.o = shl nuw nsw i32 %i.c, 4
  %i.p = zext nneg i32 %i.o to i64
  %i.q = icmp sge i64 %i.n, %i.p
  br label %b3SnapCheckCount.exit

b3SnapCheckCount.exit:                            ; preds = %bb.a, %bb.d
  %.pre-phi45 = phi i1 [ true, %bb.d ], [ %i.g, %bb.a ]
  %.0.i = phi i1 [ %i.q, %bb.d ], [ false, %bb.a ]
  %i.r = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.s = icmp samesign ult i32 %i.r, 2
  %or.cond38 = select i1 %.0.i, i1 %i.s, i1 false
  %.not35 = icmp ule i32 %i.d, %i.c
  %i.t = select i1 %or.cond38, i1 %.not35, i1 false
  br i1 %.pre-phi45, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %b3SnapCheckCount.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @216, i64 %i.e) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %b3SnapCheckCount.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !204   ; 3 uses
  %i.w = icmp ult i8 %i.v, 2
  br i1 %i.w, label %bb.h, label %bb.g, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  %i.x = zext i8 %i.v to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @217, i64 %i.x) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %2 = trunc nuw i8 %i.v to i1
  %.not39 = xor i1 %2, true
  %brmerge = select i1 %.not39, i1 true, i1 %i.t
  br i1 %brmerge, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = icmp ne i32 %i.c, 0
  %i.z = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.u, align 8, !tbaa !204
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  call void @b3DestroySet(ptr noundef nonnull %1) #8
  %i.aa = load i8, ptr %i.u, align 8, !tbaa !204  ; 3 uses
  %i.ab = icmp ult i8 %i.aa, 2
  br i1 %i.ab, label %bb.m, label %bb.l, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %bb.k
  %i.ac = zext i8 %i.aa to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @218, i64 %i.ac) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.m:                                             ; preds = %bb.k
  %i.ad = trunc nuw i8 %i.aa to i1
  br i1 %i.ad, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %.not36 = icmp eq i32 %i.c, 0
  br i1 %.not36, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = zext i32 %i.c to i64
  %i.af = shl nuw nsw i64 %i.ae, 4                ; 2 uses
  %i.ag = call ptr @b3Alloc(i64 noundef %i.af) #8 ; 2 uses
  %i.ah = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.ai = and i64 %i.ah, 7, !nosanitize !9
  %i.aj = icmp eq i64 %i.ai, 0, !nosanitize !9
  br i1 %i.aj, label %bb.q, label %bb.p, !prof !10, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @220, i64 %i.ah) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.q:                                             ; preds = %bb.o
  store ptr %i.ag, ptr %1, align 8, !tbaa !183
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.c, ptr %i.ak, align 8, !tbaa !181
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.d, ptr %i.al, align 4, !tbaa !182
  %i.am = trunc i64 %i.af to i32
  call fastcc void @b3SnapR_Bytes(ptr noundef %0, ptr noundef %i.ag, i32 noundef %i.am)
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.an = ptrtoint ptr %1 to i64, !nosanitize !9  ; 2 uses
  %i.ao = and i64 %i.an, 7, !nosanitize !9
  %i.ap = icmp eq i64 %i.ao, 0, !nosanitize !9
  br i1 %i.ap, label %bb.t, label %bb.s, !prof !10, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @221, i64 %i.an) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  store ptr null, ptr %1, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.aq, align 8, !tbaa !181
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !182
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @b3DesNames(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 !func_sanitize !310 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 4)
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.e = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.f = and i64 %i.e, 7, !nosanitize !9
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !9
  br i1 %i.g, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @225, i64 %i.e) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !204   ; 3 uses
  %i.j = icmp ult i8 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.d, !prof !10, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.k = zext i8 %i.i to i64, !nosanitize !9
  call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @226, i64 %i.k) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.l = trunc nuw i8 %i.i to i1
  br i1 %i.l, label %bb.f, label %.thread55

bb.f:                                             ; preds = %bb.e
  %or.cond56.not = icmp ult i32 %i.d, 134217728
  br i1 %or.cond56.not, label %b3SnapCheckCount.exit, label %.thread55.sink.split

b3SnapCheckCount.exit:                            ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !203
  %i.p = sext i32 %i.o to i64
  %i.q = load i32, ptr %i.n, align 8, !tbaa !202
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 %i.p, %i.r
  %i.t = shl nuw nsw i32 %i.d, 3
  %i.u = zext nneg i32 %i.t to i64
  %.not57 = icmp slt i64 %i.s, %i.u
  br i1 %.not57, label %.thread55.sink.split, label %bb.g

bb.g:                                             ; preds = %b3SnapCheckCount.exit
  %i.v = ptrtoint ptr %1 to i64, !nosanitize !9   ; 2 uses
  %i.w = and i64 %i.v, 7, !nosanitize !9
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !9
  br i1 %i.x, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @228, i64 %i.v) #7, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !311  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.d
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = shl i32 %i.z, 4
  %i.ac = shl nuw nsw i32 %i.d, 4
  %i.ad = load ptr, ptr %1, align 8, !tbaa !196
  %i.ae = call ptr @b3GrowAlloc(ptr noundef %i.ad, i32 noundef %i.ab, i32 noundef %i.ac) #8
  store ptr %i.ae, ptr %1, align 8, !tbaa !196
  store i32 %i.d, ptr %i.y, align 4, !tbaa !311
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not125 = icmp eq i32 %i.d, 0
  br i1 %.not125, label %.thread55, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %bb.k, %bb.r
  %.099.us.us = phi i32 [ %i.bf, %bb.r ], [ 0, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 4)
  %i.af = load i32, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call fastcc void @b3SnapR_Bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !14  ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ah = load i8, ptr %i.h, align 8, !tbaa !204  ; 3 uses
  %i.ai = icmp ult i8 %i.ah, 2
  br i1 %i.ai, label %bb.l, label %.split.us, !prof !10, !nosanitize !9

bb.l:                                             ; preds = %.lr.ph.split.us.split.us
  %i.aj = icmp eq i8 %i.ah, 0
  %i.ak = icmp slt i32 %i.ag, 0
  %or.cond.us.us = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.us.us, label %.thread55.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load i32, ptr %i.m, align 4, !tbaa !203 ; 2 uses
  %i.am = load i32, ptr %i.n, align 8, !tbaa !202 ; 2 uses
  %i.an = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.al, i32 %i.am), !nosanitize !9 ; 2 uses
  %i.ao = extractvalue { i32, i1 } %i.an, 1, !nosanitize !9
  br i1 %i.ao, label %.split104.us, label %bb.n, !prof !91, !nosanitize !9

bb.n:                                             ; preds = %bb.m
  %i.ap = extractvalue { i32, i1 } %i.an, 0, !nosanitize !9
  %i.aq = icmp sgt i32 %i.ag, %i.ap
  br i1 %i.aq, label %.thread55.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ag, i32 1), !nosanitize !9 ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1, !nosanitize !9
  br i1 %i.as, label %.split108.us, label %bb.p, !prof !91, !nosanitize !9

bb.p:                                             ; preds = %bb.o
  %i.at = extractvalue { i32, i1 } %i.ar, 0, !nosanitize !9
  %i.au = zext nneg i32 %i.at to i64
end_hunk_1
