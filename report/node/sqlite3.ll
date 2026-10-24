Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@fts3EvalTestExpr:bb.a
  br i1 %.not.i4.i111.i, label %sqlite3_free.exit112.i, label %bb.bd

bb.bd:                                            ; preds = %sqlite3_mutex_enter.exit.i110.i
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.io(ptr noundef nonnull %i.in) #58, !inline_history !6709
  br label %sqlite3_free.exit112.i

bb.be:                                            ; preds = %bb.ba
  %i.ip = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ip(ptr noundef nonnull %i.gy) #58, !inline_history !6708
  br label %sqlite3_free.exit112.i

sqlite3_free.exit112.i:                           ; preds = %bb.be, %bb.bd, %sqlite3_mutex_enter.exit.i110.i, %sqlite3_free.exit.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store ptr null, ptr %i.iq, align 8, !tbaa !2949
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 0, ptr %i.ir, align 8, !tbaa !2954
  br label %fts3EvalDeferredPhrase.exit

bb.bf:                                            ; preds = %sqlite3_malloc64.exit.i.i
  %i.is = load ptr, ptr %i.hg, align 8, !tbaa !2940
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !2842
  %i.iv = call fastcc i32 @sqlite3Fts3GetVarintU(ptr noundef %i.iu, ptr noundef nonnull %i.a), !inline_history !6710 ; 2 uses
  %i.iw = load ptr, ptr %i.hg, align 8, !tbaa !2940 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !2841
  %i.iy = sext i32 %i.iv to i64
  %i.iz = trunc i64 %i.ix to i32
  %i.ja = sub i32 %i.iz, %i.iv                    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !2842
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 %i.iy
  %i.je = sext i32 %i.ja to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hl, ptr align 1 %i.jd, i64 %i.je, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.jf = icmp eq ptr %.080208.i, null
  %i.jg = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  br i1 %i.jf, label %.thread164.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store ptr %i.hl, ptr %i.b, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #58
  store ptr %.080208.i, ptr %i.c, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #58
  store ptr %i.hl, ptr %i.d, align 8, !tbaa !747
  %i.jh = sub nsw i32 %i.jg, %.071210.i
  %i.ji = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.b, i32 noundef %i.jh, i32 noundef 0, i32 noundef 1, ptr noundef %i.c, ptr noundef %i.d), !inline_history !6711 ; 0 uses
  %i.jj = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i113.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i113.i, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jk = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i114.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i114.i, label %sqlite3_mutex_enter.exit.i115.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.jl(ptr noundef nonnull %i.jk) #58, !inline_history !6706
  br label %sqlite3_mutex_enter.exit.i115.i

sqlite3_mutex_enter.exit.i115.i:                  ; preds = %bb.bi, %bb.bh
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.jn = tail call i32 %i.jm(ptr noundef nonnull %.080208.i) #58, !inline_history !6707
  %i.jo = sext i32 %i.jn to i64
  %i.jp = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.jq = sub nsw i64 %i.jp, %i.jo
  store i64 %i.jq, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.jr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.js = add nsw i64 %i.jr, -1
  store i64 %i.js, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.jt(ptr noundef nonnull %.080208.i) #58, !inline_history !6708
  %i.ju = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i116.i = icmp eq ptr %i.ju, null
  br i1 %.not.i4.i116.i, label %sqlite3_free.exit117.i, label %bb.bj

bb.bj:                                            ; preds = %sqlite3_mutex_enter.exit.i115.i
  %i.jv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.jv(ptr noundef nonnull %i.ju) #58, !inline_history !6709
  br label %sqlite3_free.exit117.i

bb.bk:                                            ; preds = %bb.bg
  %i.jw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.jw(ptr noundef nonnull %.080208.i) #58, !inline_history !6708
  br label %sqlite3_free.exit117.i

sqlite3_free.exit117.i:                           ; preds = %bb.bk, %bb.bj, %sqlite3_mutex_enter.exit.i115.i
  %i.jx = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.hl to i64
  %i.ka = sub i64 %i.jy, %i.jz
  %i.kb = trunc i64 %i.ka to i32                  ; 2 uses
  %.not102.i = icmp eq i32 %i.kb, 0
  br i1 %.not102.i, label %bb.bl, label %.thread181.i

.thread181.i:                                     ; preds = %sqlite3_free.exit117.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %.thread164.i

bb.bl:                                            ; preds = %sqlite3_free.exit117.i
  %i.kc = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i118.i = icmp eq i32 %i.kc, 0
  br i1 %.not.i118.i, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kd = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i119.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i119.i, label %sqlite3_mutex_enter.exit.i120.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.ke(ptr noundef nonnull %i.kd) #58, !inline_history !6706
  br label %sqlite3_mutex_enter.exit.i120.i

sqlite3_mutex_enter.exit.i120.i:                  ; preds = %bb.bn, %bb.bm
  %i.kf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.kg = tail call i32 %i.kf(ptr noundef nonnull %i.hl) #58, !inline_history !6707
  %i.kh = sext i32 %i.kg to i64
  %i.ki = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.kj = sub nsw i64 %i.ki, %i.kh
  store i64 %i.kj, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.kk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.kl = add nsw i64 %i.kk, -1
  store i64 %i.kl, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.km(ptr noundef nonnull %i.hl) #58, !inline_history !6708
  %i.kn = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i121.i = icmp eq ptr %i.kn, null
  br i1 %.not.i4.i121.i, label %sqlite3_free.exit122.i, label %bb.bo

bb.bo:                                            ; preds = %sqlite3_mutex_enter.exit.i120.i
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ko(ptr noundef nonnull %i.kn) #58, !inline_history !6709
  br label %sqlite3_free.exit122.i

bb.bp:                                            ; preds = %bb.bl
  %i.kp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.kp(ptr noundef nonnull %i.hl) #58, !inline_history !6708
  br label %sqlite3_free.exit122.i

sqlite3_free.exit122.i:                           ; preds = %bb.bp, %bb.bo, %sqlite3_mutex_enter.exit.i120.i
  %i.kq = icmp eq ptr %i.gy, null
  br i1 %i.kq, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %sqlite3_free.exit122.i
  %i.kr = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i123.i = icmp eq i32 %i.kr, 0
  br i1 %.not.i123.i, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ks = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i124.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i124.i, label %sqlite3_mutex_enter.exit.i125.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.kt(ptr noundef nonnull %i.ks) #58, !inline_history !6706
  br label %sqlite3_mutex_enter.exit.i125.i

sqlite3_mutex_enter.exit.i125.i:                  ; preds = %bb.bs, %bb.br
  %i.ku = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.kv = tail call i32 %i.ku(ptr noundef nonnull %i.gy) #58, !inline_history !6707
  %i.kw = sext i32 %i.kv to i64
  %i.kx = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ky = sub nsw i64 %i.kx, %i.kw
  store i64 %i.ky, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.kz = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.la = add nsw i64 %i.kz, -1
  store i64 %i.la, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.lb(ptr noundef nonnull %i.gy) #58, !inline_history !6708
  %i.lc = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i126.i = icmp eq ptr %i.lc, null
  br i1 %.not.i4.i126.i, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %sqlite3_mutex_enter.exit.i125.i
  %i.ld = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ld(ptr noundef nonnull %i.lc) #58, !inline_history !6709
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.le = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.le(ptr noundef nonnull %i.gy) #58, !inline_history !6708
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %sqlite3_mutex_enter.exit.i125.i, %sqlite3_free.exit122.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store ptr null, ptr %i.lf, align 8, !tbaa !2949
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 0, ptr %i.lg, align 8, !tbaa !2954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %fts3EvalDeferredPhrase.exit

.thread164.i:                                     ; preds = %.thread181.i, %bb.bf, %.lr.ph.i80
  %.374173.i = phi i32 [ %i.jg, %.thread181.i ], [ %i.jg, %bb.bf ], [ %.071210.i, %.lr.ph.i80 ] ; 4 uses
  %.479172.i = phi i32 [ %i.kb, %.thread181.i ], [ %i.ja, %bb.bf ], [ %.075209.i, %.lr.ph.i80 ] ; 3 uses
  %.484171.i = phi ptr [ %i.hl, %.thread181.i ], [ %i.hl, %bb.bf ], [ %.080208.i, %.lr.ph.i80 ] ; 12 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lh = load i32, ptr %i.ha, align 8, !tbaa !576
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next.i, %i.li
  br i1 %i.lj, label %.lr.ph.i80, label %._crit_edge.i83, !llvm.loop !6712

._crit_edge.i83:                                  ; preds = %.thread164.i
  %i.lk = icmp sgt i32 %.374173.i, -1
  br i1 %i.lk, label %bb.bw, label %.thread195.i

bb.bw:                                            ; preds = %._crit_edge.i83
  %i.ll = getelementptr inbounds nuw i8, ptr %i.gx, i64 60
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !576 ; 3 uses
  %i.ln = icmp slt i32 %i.lm, 0
  br i1 %i.ln, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.lo = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store ptr %.484171.i, ptr %i.lo, align 8, !tbaa !2949
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 %.479172.i, ptr %i.lp, align 8, !tbaa !2954
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !2909
  %i.ls = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !2985
  store i32 1, ptr %i.gz, align 8, !tbaa !2948
  br label %.thread195.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #58
  %i.lt = icmp samesign ugt i32 %i.lm, %.374173.i ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 4 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !2949 ; 2 uses
  %i.lw = sub nsw i32 %i.lm, %.374173.i
  %.sink.i = select i1 %i.lt, ptr %.484171.i, ptr %i.lv
  %.080.lcssa.sink.i = select i1 %i.lt, ptr %i.lv, ptr %.484171.i
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.lw, i1 true)
  store ptr %.sink.i, ptr %i.e, align 8, !tbaa !747
  store ptr %.080.lcssa.sink.i, ptr %i.f, align 8, !tbaa !747
  %i.lx = sext i32 %.479172.i to i64
  %i.ly = add nsw i64 %i.lx, 8                    ; 2 uses
  %i.lz = tail call i32 @sqlite3_initialize(), !inline_history !6713
  %.not.i.i128.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i128.i, label %sqlite3_malloc64.exit.i129.i, label %bb.bz

sqlite3_malloc64.exit.i129.i:                     ; preds = %bb.by
  %i.ma = tail call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.ly), !inline_history !6713 ; 4 uses
  %.not.i130.i = icmp eq ptr %i.ma, null
  br i1 %.not.i130.i, label %bb.bz, label %bb.cf

bb.bz:                                            ; preds = %sqlite3_malloc64.exit.i129.i, %bb.by
  %i.mb = icmp eq ptr %.484171.i, null
  br i1 %i.mb, label %bb.ct, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mc = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i131.i = icmp eq i32 %i.mc, 0
  br i1 %.not.i131.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.md = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i132.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i132.i, label %sqlite3_mutex_enter.exit.i133.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.me = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.me(ptr noundef nonnull %i.md) #58, !inline_history !6706
  br label %sqlite3_mutex_enter.exit.i133.i

sqlite3_mutex_enter.exit.i133.i:                  ; preds = %bb.cc, %bb.cb
  %i.mf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.mg = tail call i32 %i.mf(ptr noundef nonnull %.484171.i) #58, !inline_history !6707
  %i.mh = sext i32 %i.mg to i64
  %i.mi = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.mj = sub nsw i64 %i.mi, %i.mh
  store i64 %i.mj, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.mk = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ml = add nsw i64 %i.mk, -1
  store i64 %i.ml, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.mm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.mm(ptr noundef nonnull %.484171.i) #58, !inline_history !6708
  %i.mn = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i134.i = icmp eq ptr %i.mn, null
  br i1 %.not.i4.i134.i, label %bb.ct, label %bb.cd

bb.cd:                                            ; preds = %sqlite3_mutex_enter.exit.i133.i
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.mo(ptr noundef nonnull %i.mn) #58, !inline_history !6709
  br label %bb.ct

bb.ce:                                            ; preds = %bb.ca
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.mp(ptr noundef nonnull %.484171.i) #58, !inline_history !6708
  br label %bb.ct

bb.cf:                                            ; preds = %sqlite3_malloc64.exit.i129.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ma, i8 0, i64 range(i64 -9223372036854775807, -9223372036854775808) %i.ly, i1 false)
  store ptr %i.ma, ptr %i.g, align 8, !tbaa !747
  store ptr %i.ma, ptr %i.lu, align 8, !tbaa !2949
  %i.mq = call fastcc i32 @fts3PoslistPhraseMerge(ptr noundef %i.g, i32 noundef %.0.i, i32 noundef 0, i32 noundef 1, ptr noundef %i.e, ptr noundef %i.f), !inline_history !6711
  %.not98.i = icmp eq i32 %i.mq, 0
  br i1 %.not98.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 1, ptr %i.gz, align 8, !tbaa !2948
  %i.mr = load ptr, ptr %i.g, align 8, !tbaa !747
  %i.ms = load ptr, ptr %i.lu, align 8, !tbaa !2949
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = trunc i64 %i.mv to i32
  br label %bb.cn

bb.ch:                                            ; preds = %bb.cf
  %i.mx = load ptr, ptr %i.g, align 8, !tbaa !747 ; 4 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %sqlite3_free.exit140.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mz = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i136.i = icmp eq i32 %i.mz, 0
  br i1 %.not.i136.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.na = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i137.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i137.i, label %sqlite3_mutex_enter.exit.i138.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.nb(ptr noundef nonnull %i.na) #58, !inline_history !6706
  br label %sqlite3_mutex_enter.exit.i138.i

sqlite3_mutex_enter.exit.i138.i:                  ; preds = %bb.ck, %bb.cj
  %i.nc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.nd = tail call i32 %i.nc(ptr noundef nonnull %i.mx) #58, !inline_history !6707
  %i.ne = sext i32 %i.nd to i64
  %i.nf = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ng = sub nsw i64 %i.nf, %i.ne
  store i64 %i.ng, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.nh = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ni = add nsw i64 %i.nh, -1
  store i64 %i.ni, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.nj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.nj(ptr noundef nonnull %i.mx) #58, !inline_history !6708
  %i.nk = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i139.i = icmp eq ptr %i.nk, null
  br i1 %.not.i4.i139.i, label %sqlite3_free.exit140.i, label %bb.cl

bb.cl:                                            ; preds = %sqlite3_mutex_enter.exit.i138.i
  %i.nl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.nl(ptr noundef nonnull %i.nk) #58, !inline_history !6709
  br label %sqlite3_free.exit140.i

bb.cm:                                            ; preds = %bb.ci
  %i.nm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.nm(ptr noundef nonnull %i.mx) #58, !inline_history !6708
  br label %sqlite3_free.exit140.i

sqlite3_free.exit140.i:                           ; preds = %bb.cm, %bb.cl, %sqlite3_mutex_enter.exit.i138.i, %bb.ch
  store ptr null, ptr %i.lu, align 8, !tbaa !2949
  br label %bb.cn

bb.cn:                                            ; preds = %sqlite3_free.exit140.i, %bb.cg
  %.sink249.i = phi i32 [ 0, %sqlite3_free.exit140.i ], [ %i.mw, %bb.cg ]
  %i.nn = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 %.sink249.i, ptr %i.nn, align 8, !tbaa !2954
  %i.no = icmp eq ptr %.484171.i, null
  br i1 %i.no, label %sqlite3_free.exit135.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.np = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i141.i = icmp eq i32 %i.np, 0
  br i1 %.not.i141.i, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nq = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i142.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i142.i, label %sqlite3_mutex_enter.exit.i143.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.nr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.nr(ptr noundef nonnull %i.nq) #58, !inline_history !6706
  br label %sqlite3_mutex_enter.exit.i143.i

sqlite3_mutex_enter.exit.i143.i:                  ; preds = %bb.cq, %bb.cp
  %i.ns = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.nt = tail call i32 %i.ns(ptr noundef nonnull %.484171.i) #58, !inline_history !6707
  %i.nu = sext i32 %i.nt to i64
  %i.nv = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.nw = sub nsw i64 %i.nv, %i.nu
  store i64 %i.nw, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.nx = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ny = add nsw i64 %i.nx, -1
  store i64 %i.ny, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.nz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.nz(ptr noundef nonnull %.484171.i) #58, !inline_history !6708
  %i.oa = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i144.i = icmp eq ptr %i.oa, null
  br i1 %.not.i4.i144.i, label %sqlite3_free.exit135.i, label %bb.cr

bb.cr:                                            ; preds = %sqlite3_mutex_enter.exit.i143.i
  %i.ob = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ob(ptr noundef nonnull %i.oa) #58, !inline_history !6709
  br label %sqlite3_free.exit135.i

bb.cs:                                            ; preds = %bb.co
  %i.oc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.oc(ptr noundef nonnull %.484171.i) #58, !inline_history !6708
  br label %sqlite3_free.exit135.i

sqlite3_free.exit135.i:                           ; preds = %bb.cs, %bb.cr, %sqlite3_mutex_enter.exit.i143.i, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  br label %.thread195.i

bb.ct:                                            ; preds = %bb.ce, %bb.cd, %sqlite3_mutex_enter.exit.i133.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  br label %fts3EvalDeferredPhrase.exit

.thread195.i:                                     ; preds = %sqlite3_free.exit135.i, %bb.bx, %._crit_edge.i83, %bb.ar
  %i.od = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !2949
  %.not99.i = icmp eq ptr %i.oe, %i.gy
  %i.of = icmp eq ptr %i.gy, null
  %or.cond.i79 = or i1 %i.of, %.not99.i
  br i1 %or.cond.i79, label %fts3EvalDeferredPhrase.exit, label %bb.cu

bb.cu:                                            ; preds = %.thread195.i
  %i.og = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i146.i = icmp eq i32 %i.og, 0
  br i1 %.not.i146.i, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
end_hunk_0
