Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/hash_xlog?download=true
inline.NumInlined: 124
inline.NumDeleted: 22
begin_hunk_0_@hash_redo:bb.a
  %i.ji = add nsw i32 %i.ja, -1
  %i.jj = sext i32 %i.ji to i64
  %i.jk = shl nsw i64 %i.jj, 13
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jk
  br label %BufferGetPage.exit71.i

BufferGetPage.exit71.i:                           ; preds = %bb.ay, %bb.ax
  %.0.i.i70.i = phi ptr [ %i.jg, %bb.ax ], [ %i.jl, %bb.ay ] ; 6 uses
  %i.jm = load i32, ptr %i.iz, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i.i70.i, i64 64
  store i32 %i.jm, ptr %i.jn, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.jp = load i8, ptr %i.jo, align 2, !range !6, !noundef !7
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %BufferGetPage.exit71.i
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i.i70.i, i64 76
  %i.js = getelementptr inbounds nuw i8, ptr %.0.i.i70.i, i64 60
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ju ; 4 uses
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4
  br i1 %.063.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jy = getelementptr inbounds nuw i8, ptr %.0.i.i70.i, i64 468
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i.i70.i, i64 68 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4            ; 2 uses
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kb
  store i32 %.0.i, ptr %i.kc, align 4
  %i.kd = add i32 %i.ka, 1
  store i32 %i.kd, ptr %i.jz, align 4
  %i.ke = load i32, ptr %i.jv, align 4
  %i.kf = add i32 %i.ke, 1
  store i32 %i.kf, ptr %i.jv, align 4
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %BufferGetPage.exit71.i
  store volatile i64 %i.fz, ptr %.0.i.i70.i, align 8
  %i.kg = load i32, ptr %i.ae, align 4
  call void @MarkBufferDirty(i32 noundef %i.kg) #5
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.i
  %i.kh = load i32, ptr %i.ae, align 4            ; 2 uses
  %.not73.i = icmp eq i32 %i.kh, 0
  br i1 %.not73.i, label %hash_xlog_add_ovfl_page.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @UnlockReleaseBuffer(i32 noundef %i.kh) #5
  br label %hash_xlog_add_ovfl_page.exit

hash_xlog_add_ovfl_page.exit:                     ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #5
  br label %bb.hd

bb.be:                                            ; preds = %bb.a
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kj = load i64, ptr %i.ki, align 8            ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.kl = load ptr, ptr %i.kk, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #5
  %i.km = call i32 @XLogReadBufferForRedoExtended(ptr noundef nonnull %0, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %i.z) #5
  %i.kn = and i32 %i.km, -3
  %or.cond.i = icmp eq i32 %i.kn, 0
  br i1 %or.cond.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ko = load i32, ptr %i.z, align 4             ; 3 uses
  %i.kp = icmp slt i32 %i.ko, 0
  br i1 %i.kp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kq = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.kr = xor i32 %i.ko, -1
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ks
  %i.ku = load ptr, ptr %i.kt, align 8
  br label %BufferGetPage.exit.i25

bb.bh:                                            ; preds = %bb.bf
  %i.kv = load ptr, ptr @BufferBlocks, align 8
  %i.kw = add nsw i32 %i.ko, -1
  %i.kx = sext i32 %i.kw to i64
  %i.ky = shl nsw i64 %i.kx, 13
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ky
  br label %BufferGetPage.exit.i25

BufferGetPage.exit.i25:                           ; preds = %bb.bh, %bb.bg
  %.0.i.i.i26 = phi ptr [ %i.ku, %bb.bg ], [ %i.kz, %bb.bh ] ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 16
  %i.lb = load i16, ptr %i.la, align 8
  %i.lc = zext i16 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %.0.i.i.i26, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.lf = load i16, ptr %i.le, align 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  store i16 %i.lf, ptr %i.lg, align 4
  %i.lh = load i32, ptr %i.kl, align 4
  store i32 %i.lh, ptr %i.ld, align 4
  %i.li = call i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 32)
  store volatile i64 %i.li, ptr %.0.i.i.i26, align 8
  %i.lj = load i32, ptr %i.z, align 4
  call void @MarkBufferDirty(i32 noundef %i.lj) #5
  br label %bb.bi

bb.bi:                                            ; preds = %BufferGetPage.exit.i25, %bb.be
  %i.lk = call i32 @XLogReadBufferForRedoExtended(ptr noundef nonnull %0, i8 noundef zeroext 1, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull %i.aa) #5 ; 0 uses
  %i.ll = load i32, ptr %i.aa, align 4
  %i.lm = load i32, ptr %i.kl, align 4            ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kl, i64 6
  %i.lo = load i16, ptr %i.ln, align 2
  %i.lp = zext i16 %i.lo to i32
  call void @_hash_initbuf(i32 noundef %i.ll, i32 noundef %i.lm, i32 noundef %i.lm, i32 noundef %i.lp, i1 noundef zeroext true) #5
  %i.lq = load i32, ptr %i.aa, align 4
  call void @MarkBufferDirty(i32 noundef %i.lq) #5
  %i.lr = load i32, ptr %i.aa, align 4            ; 4 uses
  %i.ls = icmp slt i32 %i.lr, 0
  br i1 %i.ls, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lt = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.lu = xor i32 %i.lr, -1
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.lv
  %i.lx = load ptr, ptr %i.lw, align 8
  br label %BufferGetPage.exit47.i

bb.bk:                                            ; preds = %bb.bi
  %i.ly = load ptr, ptr @BufferBlocks, align 8
  %i.lz = add nsw i32 %i.lr, -1
  %i.ma = sext i32 %i.lz to i64
  %i.mb = shl nsw i64 %i.ma, 13
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.mb
  br label %BufferGetPage.exit47.i

BufferGetPage.exit47.i:                           ; preds = %bb.bk, %bb.bj
  %.0.i.i46.i = phi ptr [ %i.lx, %bb.bj ], [ %i.mc, %bb.bk ]
  %i.md = call i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 32) ; 2 uses
  store volatile i64 %i.md, ptr %.0.i.i46.i, align 8
  %i.me = load i32, ptr %i.z, align 4             ; 2 uses
  %.not52.i = icmp eq i32 %i.me, 0
  br i1 %.not52.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %BufferGetPage.exit47.i
  call void @UnlockReleaseBuffer(i32 noundef %i.me) #5
  %.pre.i22 = load i32, ptr %i.aa, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %BufferGetPage.exit47.i
  %i.mf = phi i32 [ %.pre.i22, %bb.bl ], [ %i.lr, %BufferGetPage.exit47.i ] ; 2 uses
  %.not53.i = icmp eq i32 %i.mf, 0
  br i1 %.not53.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @UnlockReleaseBuffer(i32 noundef %i.mf) #5
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.mg = call i32 @XLogReadBufferForRedo(ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef nonnull %i.ab) #5
  %i.mh = icmp eq i32 %i.mg, 0
  %.pre56.i = load i32, ptr %i.ab, align 4        ; 4 uses
  br i1 %i.mh, label %bb.bp, label %bb.by

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #5
  %i.mi = icmp slt i32 %.pre56.i, 0
  br i1 %i.mi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mj = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.mk = xor i32 %.pre56.i, -1
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8
  br label %BufferGetPage.exit49.i

bb.br:                                            ; preds = %bb.bp
  %i.mo = load ptr, ptr @BufferBlocks, align 8
  %i.mp = add nsw i32 %.pre56.i, -1
  %i.mq = sext i32 %i.mp to i64
  %i.mr = shl nsw i64 %i.mq, 13
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 %i.mr
  br label %BufferGetPage.exit49.i

BufferGetPage.exit49.i:                           ; preds = %bb.br, %bb.bq
  %.0.i.i48.i = phi ptr [ %i.mn, %bb.bq ], [ %i.ms, %bb.br ] ; 4 uses
  %i.mt = load i32, ptr %i.kl, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i.i48.i, i64 48
  store i32 %i.mt, ptr %i.mu, align 8
  %i.mv = call ptr @XLogRecGetBlockData(ptr noundef nonnull %0, i8 noundef zeroext 2, ptr noundef nonnull %i.ac) #5 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 4             ; 2 uses
  %i.my = and i8 %i.mx, 1
  %.not.i23 = icmp eq i8 %i.my, 0
  br i1 %.not.i23, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %BufferGetPage.exit49.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i.i48.i, i64 52
  %i.na = load <2 x i32>, ptr %i.mv, align 4
  %i.nb = shufflevector <2 x i32> %i.na, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.nb, ptr %i.mz, align 4
  %.pre55.i = load i8, ptr %i.mw, align 4
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %BufferGetPage.exit49.i
  %i.nc = phi i8 [ %.pre55.i, %bb.bs ], [ %i.mx, %BufferGetPage.exit49.i ]
  %.0.i24 = phi i64 [ 3, %bb.bs ], [ 1, %BufferGetPage.exit49.i ]
  %.0.i24.a = phi i64 [ 2, %bb.bs ], [ 0, %BufferGetPage.exit49.i ]
  %i.nd = and i8 %i.nc, 2
  %.not45.i = icmp eq i8 %i.nd, 0
  br i1 %.not45.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.0.i24.a
  %i.nf = load i32, ptr %i.ne, align 4            ; 2 uses
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.0.i24
  %i.ng = load i32, ptr %2, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.i.i48.i, i64 60
  store i32 %i.nf, ptr %i.nh, align 4
  %i.ni = getelementptr inbounds nuw i8, ptr %.0.i.i48.i, i64 76
  %i.nj = zext i32 %i.nf to i64
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nj
  store i32 %i.ng, ptr %i.nk, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.nl = load i32, ptr %i.ab, align 4
  call void @MarkBufferDirty(i32 noundef %i.nl) #5
  %i.nm = load i32, ptr %i.ab, align 4            ; 4 uses
  %i.nn = icmp slt i32 %i.nm, 0
  br i1 %i.nn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.no = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.np = xor i32 %i.nm, -1
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nq
  %i.ns = load ptr, ptr %i.nr, align 8
  br label %BufferGetPage.exit51.i

bb.bx:                                            ; preds = %bb.bv
  %i.nt = load ptr, ptr @BufferBlocks, align 8
  %i.nu = add nsw i32 %i.nm, -1
  %i.nv = sext i32 %i.nu to i64
  %i.nw = shl nsw i64 %i.nv, 13
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nw
  br label %BufferGetPage.exit51.i

BufferGetPage.exit51.i:                           ; preds = %bb.bx, %bb.bw
  %.0.i.i50.i = phi ptr [ %i.ns, %bb.bw ], [ %i.nx, %bb.bx ]
  store volatile i64 %i.md, ptr %.0.i.i50.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #5
  br label %bb.by

bb.by:                                            ; preds = %BufferGetPage.exit51.i, %bb.bo
  %i.ny = phi i32 [ %i.nm, %BufferGetPage.exit51.i ], [ %.pre56.i, %bb.bo ] ; 2 uses
  %.not54.i = icmp eq i32 %i.ny, 0
  br i1 %.not54.i, label %hash_xlog_split_allocate_page.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @UnlockReleaseBuffer(i32 noundef %i.ny) #5
  br label %hash_xlog_split_allocate_page.exit

hash_xlog_split_allocate_page.exit:               ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #5
  br label %bb.hd

bb.ca:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #5
  %i.nz = call i32 @XLogReadBufferForRedo(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull %i.y) #5
  %.not.i27 = icmp eq i32 %i.nz, 2
  br i1 %.not.i27, label %hash_xlog_split_page.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.oa = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.ob = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 408, ptr noundef nonnull @__func__.hash_xlog_split_page) #5
  unreachable

hash_xlog_split_page.exit:                        ; preds = %bb.ca
  %i.oc = load i32, ptr %i.y, align 4
  call void @UnlockReleaseBuffer(i32 noundef %i.oc) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #5
  br label %bb.hd

bb.cc:                                            ; preds = %bb.a
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.oe = load i64, ptr %i.od, align 8            ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.og = load ptr, ptr %i.of, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #5
  %i.oh = call i32 @XLogReadBufferForRedo(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef nonnull %i.w) #5
  %i.oi = and i32 %i.oh, -3
  %or.cond.i28 = icmp eq i32 %i.oi, 0
  br i1 %or.cond.i28, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.oj = load i32, ptr %i.w, align 4             ; 3 uses
  %i.ok = icmp slt i32 %i.oj, 0
  br i1 %i.ok, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ol = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.om = xor i32 %i.oj, -1
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.on
  %i.op = load ptr, ptr %i.oo, align 8
  br label %BufferGetPage.exit.i30

bb.cf:                                            ; preds = %bb.cd
  %i.oq = load ptr, ptr @BufferBlocks, align 8
  %i.or = add nsw i32 %i.oj, -1
  %i.os = sext i32 %i.or to i64
  %i.ot = shl nsw i64 %i.os, 13
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ot
  br label %BufferGetPage.exit.i30

BufferGetPage.exit.i30:                           ; preds = %bb.cf, %bb.ce
  %.0.i.i.i31 = phi ptr [ %i.op, %bb.ce ], [ %i.ou, %bb.cf ] ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.0.i.i.i31, i64 16
  %i.ow = load i16, ptr %i.ov, align 8
  %i.ox = zext i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i.i.i31, i64 %i.ox
  %i.oz = load i16, ptr %i.og, align 2
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  store i16 %i.oz, ptr %i.pa, align 4
  %i.pb = call i64 @llvm.fshl.i64(i64 %i.oe, i64 %i.oe, i64 32)
  store volatile i64 %i.pb, ptr %.0.i.i.i31, align 8
  %i.pc = load i32, ptr %i.w, align 4
  call void @MarkBufferDirty(i32 noundef %i.pc) #5
  br label %bb.cg

bb.cg:                                            ; preds = %BufferGetPage.exit.i30, %bb.cc
  %i.pd = load i32, ptr %i.w, align 4             ; 2 uses
  %.not.i29 = icmp eq i32 %i.pd, 0
  br i1 %.not.i29, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @UnlockReleaseBuffer(i32 noundef %i.pd) #5
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.pe = call i32 @XLogReadBufferForRedo(ptr noundef nonnull %0, i8 noundef zeroext 1, ptr noundef nonnull %i.x) #5
  %i.pf = and i32 %i.pe, -3
  %or.cond3.i = icmp eq i32 %i.pf, 0
  br i1 %or.cond3.i, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  %i.pg = load i32, ptr %i.x, align 4             ; 3 uses
  %i.ph = icmp slt i32 %i.pg, 0
  br i1 %i.ph, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.pi = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.pj = xor i32 %i.pg, -1
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.pk
  %i.pm = load ptr, ptr %i.pl, align 8
  br label %BufferGetPage.exit25.i

bb.cl:                                            ; preds = %bb.cj
  %i.pn = load ptr, ptr @BufferBlocks, align 8
  %i.po = add nsw i32 %i.pg, -1
  %i.pp = sext i32 %i.po to i64
  %i.pq = shl nsw i64 %i.pp, 13
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pq
  br label %BufferGetPage.exit25.i

BufferGetPage.exit25.i:                           ; preds = %bb.cl, %bb.ck
  %.0.i.i24.i = phi ptr [ %i.pm, %bb.ck ], [ %i.pr, %bb.cl ] ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.i.i24.i, i64 16
  %i.pt = load i16, ptr %i.ps, align 8
  %i.pu = zext i16 %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr %.0.i.i24.i, i64 %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.og, i64 2
  %i.px = load i16, ptr %i.pw, align 2
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 12
  store i16 %i.px, ptr %i.py, align 4
  %i.pz = call i64 @llvm.fshl.i64(i64 %i.oe, i64 %i.oe, i64 32)
  store volatile i64 %i.pz, ptr %.0.i.i24.i, align 8
  %i.qa = load i32, ptr %i.x, align 4
  call void @MarkBufferDirty(i32 noundef %i.qa) #5
  br label %bb.cm

bb.cm:                                            ; preds = %BufferGetPage.exit25.i, %bb.ci
  %i.qb = load i32, ptr %i.x, align 4             ; 2 uses
  %.not26.i = icmp eq i32 %i.qb, 0
  br i1 %.not26.i, label %hash_xlog_split_complete.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @UnlockReleaseBuffer(i32 noundef %i.qb) #5
  br label %hash_xlog_split_complete.exit

hash_xlog_split_complete.exit:                    ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #5
  br label %bb.hd

bb.co:                                            ; preds = %bb.a
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qd = load i64, ptr %i.qc, align 8            ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.qf = load ptr, ptr %i.qe, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  store i32 0, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #5
  store i32 0, ptr %i.s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #5
  store i32 0, ptr %i.t, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  %i.qh = load i8, ptr %i.qg, align 2, !range !6, !noundef !7
  %i.qi = trunc nuw i8 %i.qh to i1
  br i1 %i.qi, label %bb.cp, label %bb.cq
end_hunk_0
