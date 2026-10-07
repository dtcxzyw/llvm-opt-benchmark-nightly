Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 75
begin_hunk_0_@DecodeExtensionType:bb.a
  %i.iq = tail call ptr @wolfSSL_Malloc(i64 noundef 32) #24 ; 9 uses
  %.not.i.i160.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i160.i.i, label %.loopexit.sink.split.i, label %bb.as

bb.as:                                            ; preds = %.loopexit223.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iq, i8 0, i64 32, i1 false)
  %i.ir = sext i32 %i.ev to i64                   ; 3 uses
  %i.is = add nsw i64 %i.ir, 1
  %i.it = tail call ptr @wolfSSL_Malloc(i64 noundef %i.is) #24 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store ptr %i.it, ptr %i.iu, align 8, !tbaa !68
  %i.iv = icmp eq ptr %i.it, null
  br i1 %i.iv, label %DecodeGeneralName.exit.thread80.sink.split.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  store i32 1, ptr %i.iw, align 8, !tbaa !67
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 1, ptr %i.ix, align 8, !tbaa !113
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  store i32 %i.ev, ptr %i.iy, align 4, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.it, ptr nonnull readonly align 1 %i.il, i64 %i.ir, i1 false)
  %i.iz = getelementptr inbounds i8, ptr %i.it, i64 %i.ir
  store i8 0, ptr %i.iz, align 1, !tbaa !15
  %i.ja = load ptr, ptr %i.eo, align 8, !tbaa !114
  store ptr %i.ja, ptr %i.iq, align 8, !tbaa !66
  store ptr %i.iq, ptr %i.eo, align 8, !tbaa !114
  %i.jb = add i32 %i.ev, %.pre.i
  br label %DecodeGeneralName.exit.i

bb.au:                                            ; preds = %bb.aa
  %i.jc = zext i32 %.pre.i to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 %i.jc ; 2 uses
  %i.je = icmp sgt i32 %i.ev, 0
  br i1 %i.je, label %.lr.ph.preheader.i166.i.i, label %.loopexit.sink.split.i

.lr.ph.preheader.i166.i.i:                        ; preds = %bb.au
  %wide.trip.count.i167.i.i = zext nneg i32 %i.ev to i64 ; 2 uses
  br label %.lr.ph.i168.i.i

bb.av:                                            ; preds = %.lr.ph.i168.i.i
  %indvars.iv.next.i170.i.i = add nuw nsw i64 %indvars.iv.i169.i.i, 1 ; 2 uses
  %exitcond.not.i171.i.i = icmp eq i64 %indvars.iv.next.i170.i.i, %wide.trip.count.i167.i.i
  br i1 %exitcond.not.i171.i.i, label %.lr.ph.i.i, label %.lr.ph.i168.i.i, !llvm.loop !244

.lr.ph.i168.i.i:                                  ; preds = %bb.av, %.lr.ph.preheader.i166.i.i
  %indvars.iv.i169.i.i = phi i64 [ 0, %.lr.ph.preheader.i166.i.i ], [ %indvars.iv.next.i170.i.i, %bb.av ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 %indvars.iv.i169.i.i
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !15
  %i.jh = icmp eq i8 %i.jg, 0
  br i1 %i.jh, label %.loopexit.sink.split.i, label %bb.av

.lr.ph.i.i:                                       ; preds = %bb.av, %bb.aw
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.aw ], [ 0, %bb.av ] ; 3 uses
  %i.ji = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.jj = add i32 %.pre.i, %i.ji
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !15
  switch i8 %i.jm, label %bb.aw [
    i8 58, label %._crit_edge.i.i
    i8 47, label %.loopexit.sink.split.i
  ]

bb.aw:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i167.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.sink.split.i, label %.lr.ph.i.i, !llvm.loop !246

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.jn = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %i.jn, label %.loopexit.sink.split.i, label %bb.bh

bb.ax:                                            ; preds = %bb.aa
  %i.jo = zext i32 %.pre.i to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 %i.jo
  %i.jq = tail call ptr @wolfSSL_Malloc(i64 noundef 32) #24 ; 9 uses
  %.not.i.i173.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i173.i.i, label %.loopexit.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jq, i8 0, i64 32, i1 false)
  %i.jr = sext i32 %i.ev to i64                   ; 3 uses
  %i.js = add nsw i64 %i.jr, 1
  %i.jt = tail call ptr @wolfSSL_Malloc(i64 noundef %i.js) #24 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !68
  %i.jv = icmp eq ptr %i.jt, null
  br i1 %i.jv, label %DecodeGeneralName.exit.thread80.sink.split.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  store i32 1, ptr %i.jw, align 8, !tbaa !67
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  store i32 7, ptr %i.jx, align 8, !tbaa !113
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  store i32 %i.ev, ptr %i.jy, align 4, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jt, ptr nonnull readonly align 1 %i.jp, i64 %i.jr, i1 false)
  %i.jz = getelementptr inbounds i8, ptr %i.jt, i64 %i.jr
  store i8 0, ptr %i.jz, align 1, !tbaa !15
  %i.ka = load ptr, ptr %i.en, align 8, !tbaa !114
  store ptr %i.ka, ptr %i.jq, align 8, !tbaa !66
  store ptr %i.jq, ptr %i.en, align 8, !tbaa !114
  %i.kb = add i32 %i.ev, %.pre.i
  br label %DecodeGeneralName.exit.i

bb.ba:                                            ; preds = %bb.aa
  %i.kc = zext i32 %.pre.i to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 %i.kc
  %i.ke = tail call ptr @wolfSSL_Malloc(i64 noundef 32) #24 ; 9 uses
  %.not.i.i178.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i178.i.i, label %.loopexit.sink.split.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ke, i8 0, i64 32, i1 false)
  %i.kf = sext i32 %i.ev to i64                   ; 3 uses
  %i.kg = add nsw i64 %i.kf, 1
  %i.kh = tail call ptr @wolfSSL_Malloc(i64 noundef %i.kg) #24 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !68
  %i.kj = icmp eq ptr %i.kh, null
  br i1 %i.kj, label %DecodeGeneralName.exit.thread80.sink.split.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  store i32 1, ptr %i.kk, align 8, !tbaa !67
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store i32 8, ptr %i.kl, align 8, !tbaa !113
  %i.km = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  store i32 %i.ev, ptr %i.km, align 4, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kh, ptr nonnull readonly align 1 %i.kd, i64 %i.kf, i1 false)
  %i.kn = getelementptr inbounds i8, ptr %i.kh, i64 %i.kf
  store i8 0, ptr %i.kn, align 1, !tbaa !15
  %i.ko = load ptr, ptr %i.en, align 8, !tbaa !114
  store ptr %i.ko, ptr %i.ke, align 8, !tbaa !66
  store ptr %i.ke, ptr %i.en, align 8, !tbaa !114
  %i.kp = add i32 %i.ev, %.pre.i
  br label %DecodeGeneralName.exit.i

bb.bd:                                            ; preds = %bb.aa
  %i.kq = zext i32 %.pre.i to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 %i.kq
  %i.ks = tail call ptr @wolfSSL_Malloc(i64 noundef 32) #24 ; 9 uses
  %.not.i.i183.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i183.i.i, label %.loopexit.sink.split.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ks, i8 0, i64 32, i1 false)
  %i.kt = sext i32 %i.ev to i64                   ; 3 uses
  %i.ku = add nsw i64 %i.kt, 1
  %i.kv = tail call ptr @wolfSSL_Malloc(i64 noundef %i.ku) #24 ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !68
  %i.kx = icmp eq ptr %i.kv, null
  br i1 %i.kx, label %DecodeGeneralName.exit.thread80.sink.split.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  store i32 1, ptr %i.ky, align 8, !tbaa !67
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i32 0, ptr %i.kz, align 8, !tbaa !113
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  store i32 %i.ev, ptr %i.la, align 4, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kv, ptr nonnull readonly align 1 %i.kr, i64 %i.kt, i1 false)
  %i.lb = getelementptr inbounds i8, ptr %i.kv, i64 %i.kt
  store i8 0, ptr %i.lb, align 1, !tbaa !15
  %i.lc = load ptr, ptr %i.em, align 8, !tbaa !114
  store ptr %i.lc, ptr %i.ks, align 8, !tbaa !66
  store ptr %i.ks, ptr %i.em, align 8, !tbaa !114
  %i.ld = add i32 %i.ev, %.pre.i
  br label %DecodeGeneralName.exit.i

bb.bg:                                            ; preds = %bb.aa
  %i.le = add i32 %i.ev, %.pre.i
  br label %DecodeGeneralName.exit.i

bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.lf = tail call fastcc i32 @SetDNSEntry(ptr noundef nonnull readonly %i.jd, i32 noundef %i.ev, i32 noundef 6, ptr noundef nonnull %i.en) ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 0                    ; 2 uses
  %i.lh = select i1 %i.lg, i32 %i.ev, i32 0
  %spec.select140.i.i = add i32 %i.lh, %.pre.i
  br i1 %i.lg, label %DecodeGeneralName.exit.i, label %.loopexit.sink.split.i

DecodeGeneralName.exit.thread80.sink.split.i:     ; preds = %bb.be, %bb.bb, %bb.ay, %bb.as, %bb.ao, %bb.ad
  %.lcssa89.sink.i = phi ptr [ %i.jq, %bb.ay ], [ %i.ke, %bb.bb ], [ %i.iq, %bb.as ], [ %i.fc, %bb.ad ], [ %i.hz, %bb.ao ], [ %i.ks, %bb.be ]
  tail call void @wolfSSL_Free(ptr noundef nonnull %.lcssa89.sink.i) #24
  br label %.loopexit.sink.split.i

DecodeGeneralName.exit.i:                         ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bc, %bb.az, %bb.at, %bb.ap, %bb.ae
  %.2216.i.i = phi i32 [ %spec.select140.i.i, %bb.bh ], [ %i.kp, %bb.bc ], [ %i.kb, %bb.az ], [ %i.jb, %bb.at ], [ %i.fo, %bb.ap ], [ %i.fn, %bb.ae ], [ %i.ld, %bb.bf ], [ %i.le, %bb.bg ] ; 2 uses
  store i32 %.2216.i.i, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.li = icmp ult i32 %.2216.i.i, %1
  br i1 %i.li, label %bb.y, label %DecodeAltNames.exit

.loopexit.sink.split.i:                           ; preds = %bb.bh, %bb.bd, %bb.ba, %bb.ax, %._crit_edge.i.i, %bb.au, %.loopexit223.i.i, %GetASN_Sequence.exit.i.i, %bb.an, %._crit_edge.i.i.i.i, %.thread69.i.i.i.i, %bb.am, %bb.ak, %.thread.i.i.i, %bb.ag, %bb.af, %.loopexit.i.i, %bb.z, %bb.y, %.lr.ph.i168.i.i, %bb.aw, %.lr.ph.i.i, %.lr.ph.i155.i.i, %.lr.ph.i.i26.i, %DecodeGeneralName.exit.thread80.sink.split.i
  %.5.ph.i = phi i32 [ -140, %.lr.ph.i155.i.i ], [ -140, %.lr.ph.i168.i.i ], [ -140, %.lr.ph.i.i26.i ], [ -161, %bb.aw ], [ -125, %DecodeGeneralName.exit.thread80.sink.split.i ], [ -161, %.lr.ph.i.i ], [ -140, %bb.an ], [ -140, %._crit_edge.i.i.i.i ], [ -140, %bb.am ], [ -140, %.thread69.i.i.i.i ], [ -125, %bb.ba ], [ -161, %bb.au ], [ -161, %._crit_edge.i.i ], [ -140, %bb.af ], [ -125, %bb.ax ], [ -125, %bb.bd ], [ %i.lf, %bb.bh ], [ %i.es, %bb.z ], [ -125, %.loopexit223.i.i ], [ -125, %GetASN_Sequence.exit.i.i ], [ -140, %.thread.i.i.i ], [ -125, %.loopexit.i.i ], [ -140, %bb.ag ], [ -140, %bb.ak ], [ -161, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %DecodeAltNames.exit

DecodeAltNames.exit:                              ; preds = %DecodeGeneralName.exit.i, %GetASN_Sequence.exit.i, %bb.p, %bb.q, %bb.u, %bb.w, %.thread69.i.i.i, %._crit_edge.i.i.i, %bb.x, %.loopexit.sink.split.i
  %.5.i = phi i32 [ -140, %bb.w ], [ %.5.ph.i, %.loopexit.sink.split.i ], [ -140, %bb.p ], [ -140, %GetASN_Sequence.exit.i ], [ -140, %bb.q ], [ -140, %bb.u ], [ -140, %.thread69.i.i.i ], [ -140, %._crit_edge.i.i.i ], [ -140, %bb.x ], [ 0, %DecodeGeneralName.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %bb.de

bb.bi:                                            ; preds = %bb.c
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 1032 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8            ; 2 uses
  %i.ll = and i32 %i.lk, 4
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.bj, label %bb.de

bb.bj:                                            ; preds = %bb.bi
  %.not102.not = icmp eq i8 %3, 0                 ; 2 uses
  %i.ln = and i32 %i.lk, -8388613
  %i.lo = select i1 %.not102.not, i32 4, i32 8388612
  %i.lp = or disjoint i32 %i.lo, %i.ln
  store i32 %i.lp, ptr %i.lj, align 8
  br i1 %.not102.not, label %bb.bk, label %bb.de

bb.bk:                                            ; preds = %bb.bj
  %i.lq = tail call fastcc i32 @DecodeAuthKeyIdInternal(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %i.lr = icmp slt i32 %i.lq, 0
  %spec.select114 = select i1 %i.lr, i32 -140, i32 0
  br label %bb.de

bb.bl:                                            ; preds = %bb.c
  %i.ls = getelementptr inbounds nuw i8, ptr %4, i64 1032 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 8            ; 2 uses
  %i.lu = and i32 %i.lt, 2
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %bb.bm, label %bb.de

bb.bm:                                            ; preds = %bb.bl
  %.not100.not = icmp eq i8 %3, 0                 ; 2 uses
  %i.lw = and i32 %i.lt, -67108867
  %i.lx = select i1 %.not100.not, i32 2, i32 67108866
  %i.ly = or disjoint i32 %i.lx, %i.lw
  store i32 %i.ly, ptr %i.ls, align 8
  br i1 %.not100.not, label %bb.bn, label %bb.de

bb.bn:                                            ; preds = %bb.bm
  %i.lz = tail call fastcc i32 @DecodeSubjKeyIdInternal(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %i.ma = icmp slt i32 %i.lz, 0
  %spec.select116 = select i1 %i.ma, i32 -140, i32 0
  br label %bb.de

bb.bo:                                            ; preds = %bb.c
  %.not99 = icmp eq i8 %3, 0
  %spec.select117 = select i1 %.not99, i32 0, i32 -160
  br label %bb.de

bb.bp:                                            ; preds = %bb.c
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 1032 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 8            ; 2 uses
  %i.md = and i32 %i.mc, 128
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.bq, label %bb.de

bb.bq:                                            ; preds = %bb.bp
  %.not98.not = icmp eq i8 %3, 0
  %i.mf = and i32 %i.mc, -134217857
  %i.mg = select i1 %.not98.not, i32 128, i32 134217856
  %i.mh = or disjoint i32 %i.mg, %i.mf
  store i32 %i.mh, ptr %i.mb, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 858 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i32 0, ptr %i.d, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 2, ptr %i.f, align 4, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  store i16 0, ptr %i.e, align 2
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 5, ptr %i.mj, align 16, !tbaa !31
  %i.mk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.e, ptr %i.mk, align 8, !tbaa !15
  %i.ml = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.f, ptr %i.ml, align 16, !tbaa !15
  %i.mm = call i32 @GetASN_Items(ptr noundef nonnull @keyUsageASN, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef %1) ; 2 uses
  %i.mn = icmp eq i32 %i.mm, 0
  br i1 %i.mn, label %bb.br, label %DecodeKeyUsageInternal.exit

bb.br:                                            ; preds = %bb.bq
  %i.mo = load i8, ptr %i.e, align 2, !tbaa !15
  %i.mp = zext i8 %i.mo to i16                    ; 2 uses
  store i16 %i.mp, ptr %i.mi, align 2, !tbaa !34
  %i.mq = load i32, ptr %i.f, align 4, !tbaa !26
  %i.mr = icmp eq i32 %i.mq, 2
  br i1 %i.mr, label %bb.bs, label %DecodeKeyUsageInternal.exit

bb.bs:                                            ; preds = %bb.br
  %i.ms = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !15
  %i.mu = zext i8 %i.mt to i16
  %i.mv = shl nuw i16 %i.mu, 8
  %i.mw = or disjoint i16 %i.mv, %i.mp
  store i16 %i.mw, ptr %i.mi, align 2, !tbaa !34
  br label %DecodeKeyUsageInternal.exit

DecodeKeyUsageInternal.exit:                      ; preds = %bb.bq, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.mx = icmp slt i32 %i.mm, 0
  %spec.select118 = select i1 %i.mx, i32 -140, i32 0
  br label %bb.de

bb.bt:                                            ; preds = %bb.c
  %i.my = getelementptr inbounds nuw i8, ptr %4, i64 1032 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 8            ; 2 uses
  %i.na = and i32 %i.mz, 256
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.bu, label %bb.de

bb.bu:                                            ; preds = %bb.bt
  %.not97.not = icmp eq i8 %3, 0
  %i.nc = and i32 %i.mz, -268435713
  %i.nd = select i1 %.not97.not, i32 256, i32 268435712
  %i.ne = or disjoint i32 %i.nd, %i.nc
  store i32 %i.ne, ptr %i.my, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %4, i64 860
  %i.ng = tail call range(i32 -192, 1) i32 @DecodeExtKeyUsage(ptr noundef %0, i32 noundef %1, ptr poison, ptr poison, ptr poison, ptr noundef nonnull %i.nf, ptr poison)
  %i.nh = icmp slt i32 %i.ng, 0
  %spec.select119 = select i1 %i.nh, i32 -140, i32 0
  br label %bb.de

bb.bv:                                            ; preds = %bb.c
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 1032 ; 4 uses
  %i.nj = load i32, ptr %i.ni, align 8            ; 3 uses
  %i.nk = and i32 %i.nj, 16
  %.not95 = icmp eq i32 %i.nk, 0
  %spec.select120 = select i1 %.not95, i32 -198, i32 0
  %i.nl = and i32 %i.nj, 8
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.bw, label %bb.de

bb.bw:                                            ; preds = %bb.bv
  %.not96.not = icmp eq i8 %3, 0
  %i.nn = and i32 %i.nj, -16777225
  %i.no = select i1 %.not96.not, i32 8, i32 16777224
  %i.np = or disjoint i32 %i.no, %i.nn
  store i32 %i.np, ptr %i.ni, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i8 0, ptr %i.c, align 1, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %7, i8 0, i64 120, i1 false)
  %i.nq = call i32 @GetASN_Items(ptr noundef nonnull @nameConstraintsASN, ptr noundef nonnull %7, i32 noundef 3, i32 noundef 1, ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %1) ; 2 uses
  %i.nr = icmp eq i32 %i.nq, 0
  %i.ns = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.nt = load ptr, ptr %i.ns, align 16           ; 2 uses
  %i.nu = icmp ne ptr %i.nt, null
  %or.cond7.i = select i1 %i.nr, i1 %i.nu, i1 false
  br i1 %or.cond7.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.nv = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !15
  %i.nx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ny = call fastcc i32 @DecodeSubtree(ptr noundef %i.nt, i32 noundef %i.nw, ptr noundef nonnull %i.nx, ptr noundef %i.c)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.1.i125 = phi i32 [ %i.ny, %bb.bx ], [ %i.nq, %bb.bw ] ; 2 uses
  %i.nz = icmp eq i32 %.1.i125, 0
  %i.oa = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ob = load ptr, ptr %i.oa, align 8            ; 2 uses
  %i.oc = icmp ne ptr %i.ob, null
  %or.cond12.i = select i1 %i.nz, i1 %i.oc, i1 false
  br i1 %or.cond12.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.od = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.oe = load i32, ptr %i.od, align 16, !tbaa !15
  %i.of = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.og = call fastcc i32 @DecodeSubtree(ptr noundef %i.ob, i32 noundef %i.oe, ptr noundef nonnull %i.of, ptr noundef %i.c)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.2.i = phi i32 [ %i.og, %bb.bz ], [ %.1.i125, %bb.by ] ; 2 uses
  %i.oh = icmp eq i32 %.2.i, 0
  %i.oi = load i8, ptr %i.c, align 1
  %i.oj = icmp ne i8 %i.oi, 0
  %or.cond.i126 = select i1 %i.oh, i1 %i.oj, i1 false
  br i1 %or.cond.i126, label %bb.cb, label %DecodeNameConstraints.exit

bb.cb:                                            ; preds = %bb.ca
  %i.ok = load i32, ptr %i.ni, align 8
  %i.ol = or i32 %i.ok, 33554432
  store i32 %i.ol, ptr %i.ni, align 8
  br label %DecodeNameConstraints.exit

DecodeNameConstraints.exit:                       ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.om = icmp slt i32 %.2.i, 0
  %spec.select121 = select i1 %i.om, i32 -140, i32 %spec.select120
end_hunk_0
