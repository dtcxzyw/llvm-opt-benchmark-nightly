inline.NumInlined: 103
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__redisAsyncCommand:bb.a
  %.167 = phi ptr [ %i.ia, %bb.bh ], [ %i.q, %.preheader ] ; 2 uses
  %.not.i100 = icmp eq i8 %i.hr, 36
  br i1 %.not.i100, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hs = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.167, i32 noundef 36) #19 ; 2 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %nextArgument.exit95.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0.i101 = phi ptr [ %i.hs, %bb.av ], [ %.167, %bb.au ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i101, i64 1
  %i.hv = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.hu, ptr noundef null, i32 noundef 10) #16
  %i.hw = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0.i101, i32 noundef 13) #19 ; 2 uses
  %.not16.i103 = icmp eq ptr %i.hw, null
  br i1 %.not16.i103, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 826, ptr noundef nonnull @__PRETTY_FUNCTION__.nextArgument) #17
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %sext.i102 = shl i64 %i.hv, 32
  %i.hx = ashr exact i64 %sext.i102, 32           ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 2 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2 ; 2 uses
  %i.ib = tail call ptr @hi_sdsnewlen(ptr noundef nonnull %i.hy, i64 noundef %i.hx) #16 ; 6 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %__redisPushCallback.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.id = load i64, ptr %i.hm, align 8, !tbaa !32
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %.loopexit195, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.if = load ptr, ptr %i.hn, align 8, !tbaa !28
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !129
  %i.ih = tail call i32 %i.ig(ptr noundef nonnull %i.ib) #16, !inline_history !158
  %i.ii = load i64, ptr %i.ho, align 8, !tbaa !131
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = and i32 %i.ih, %i.ij
  %i.il = load ptr, ptr %.165, align 8, !tbaa !22
  %i.im = zext i32 %i.ik to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.im
  %.01620.i106 = load ptr, ptr %i.in, align 8, !tbaa !34 ; 3 uses
  %.not21.i107 = icmp eq ptr %.01620.i106, null
  br i1 %.not21.i107, label %.loopexit195, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %bb.ba
  %i.io = load ptr, ptr %i.hn, align 8, !tbaa !28
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !132
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %.lr.ph.split.us.i117, label %.lr.ph.split.i109

.lr.ph.split.us.i117:                             ; preds = %.lr.ph.i108, %bb.bb
  %.01622.us.i118 = phi ptr [ %.016.us.i119, %bb.bb ], [ %.01620.i106, %.lr.ph.i108 ] ; 3 uses
  %i.is = load ptr, ptr %.01622.us.i118, align 8, !tbaa !40
  %i.it = icmp eq ptr %i.ib, %i.is
  br i1 %i.it, label %dictFind.exit121, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.split.us.i117
  %i.iu = getelementptr inbounds nuw i8, ptr %.01622.us.i118, i64 16
  %.016.us.i119 = load ptr, ptr %i.iu, align 8, !tbaa !34 ; 2 uses
  %.not.us.i120 = icmp eq ptr %.016.us.i119, null
  br i1 %.not.us.i120, label %.loopexit195, label %.lr.ph.split.us.i117

.lr.ph.split.i109:                                ; preds = %.lr.ph.i108, %bb.be
  %.01622.i110 = phi ptr [ %.016.i115, %bb.be ], [ %.01620.i106, %.lr.ph.i108 ] ; 5 uses
  %i.iv = load ptr, ptr %i.hn, align 8, !tbaa !28
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !132 ; 2 uses
  %.not18.i111 = icmp eq ptr %i.ix, null
  br i1 %.not18.i111, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.split.i109
  %i.iy = load ptr, ptr %i.hp, align 8, !tbaa !29
  %i.iz = load ptr, ptr %.01622.i110, align 8, !tbaa !40
  %i.ja = tail call i32 %i.ix(ptr noundef %i.iy, ptr noundef nonnull %i.ib, ptr noundef %i.iz) #16, !inline_history !158
  %.not19.i112 = icmp eq i32 %i.ja, 0
  br i1 %.not19.i112, label %bb.be, label %dictFind.exit121

bb.bd:                                            ; preds = %.lr.ph.split.i109
  %i.jb = load ptr, ptr %.01622.i110, align 8, !tbaa !40
  %i.jc = icmp eq ptr %i.ib, %i.jb
  br i1 %i.jc, label %dictFind.exit121, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.jd = getelementptr inbounds nuw i8, ptr %.01622.i110, i64 16
  %.016.i115 = load ptr, ptr %i.jd, align 8, !tbaa !34 ; 2 uses
  %.not.i116 = icmp eq ptr %.016.i115, null
  br i1 %.not.i116, label %.loopexit195, label %.lr.ph.split.i109, !llvm.loop !133

dictFind.exit121:                                 ; preds = %bb.bd, %bb.bc, %.lr.ph.split.us.i117
  %.0.i114 = phi ptr [ %.01622.us.i118, %.lr.ph.split.us.i117 ], [ %.01622.i110, %bb.bc ], [ %.01622.i110, %bb.bd ]
  %i.je = getelementptr inbounds nuw i8, ptr %.0.i114, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !43
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 20 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !157
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %dictFind.exit121
  store i32 1, ptr %i.jg, align 4, !tbaa !157
  br label %bb.bh

bb.bg:                                            ; preds = %dictFind.exit121
  %i.jj = load i32, ptr %i.hq, align 8, !tbaa !63
  %i.jk = add nsw i32 %i.jj, 1
  store i32 %i.jk, ptr %i.hq, align 8, !tbaa !63
  br label %bb.bh

.loopexit195:                                     ; preds = %bb.be, %bb.bb, %bb.az, %bb.ba
  %i.jl = load i32, ptr %i.hq, align 8, !tbaa !63
  %i.jm = add nsw i32 %i.jl, 1
  store i32 %i.jm, ptr %i.hq, align 8, !tbaa !63
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg, %.loopexit195
  tail call void @hi_sdsfree(ptr noundef nonnull %i.ib) #16
  %.pre = load i8, ptr %i.ia, align 1, !tbaa !14
  br label %bb.au

.preheader202:                                    ; preds = %.preheader202.outer, %.loopexit201
  %.sroa.15.0 = phi ptr [ %i.ka, %.loopexit201 ], [ %.sroa.15.0.ph, %.preheader202.outer ]
  %.sroa.5.0 = phi i32 [ %.sroa.5.2, %.loopexit201 ], [ %.sroa.5.0.ph, %.preheader202.outer ] ; 2 uses
  %.sroa.11149.0 = phi i1 [ false, %.loopexit201 ], [ %.sroa.11149.0.ph, %.preheader202.outer ]
  br i1 %.sroa.11149.0, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.preheader202
  %i.jn = add nsw i32 %.sroa.5.0, 1               ; 3 uses
  %i.jo = load i64, ptr %i.hm, align 8, !tbaa !32
  %i.jp = trunc i64 %i.jo to i32
  %.not.peel.i = icmp slt i32 %i.jn, %i.jp
  br i1 %.not.peel.i, label %bb.bj, label %.loopexit200

bb.bj:                                            ; preds = %bb.bi
  %i.jq = load ptr, ptr %.165, align 8, !tbaa !22
  %i.jr = sext i32 %i.jn to i64
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %i.jr
  %storemerge.in.peel.i.sroa.speculate.load. = load ptr, ptr %i.js, align 8, !tbaa !34
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.preheader202
  %.sroa.5.1 = phi i32 [ %i.jn, %bb.bj ], [ %.sroa.5.0, %.preheader202 ] ; 2 uses
  %storemerge.in.peel.i.sroa.speculated = phi ptr [ %storemerge.in.peel.i.sroa.speculate.load., %bb.bj ], [ %.sroa.15.0, %.preheader202 ] ; 2 uses
  %.not16.peel.i = icmp eq ptr %storemerge.in.peel.i.sroa.speculated, null
  br i1 %.not16.peel.i, label %.peel.next.i, label %.loopexit201

.peel.next.i:                                     ; preds = %bb.bk
  %i.jt = load i64, ptr %i.hm, align 8, !tbaa !32
  %i.ju = sext i32 %.sroa.5.1 to i64
  %sext = shl i64 %i.jt, 32
  %i.jv = ashr exact i64 %sext, 32                ; 2 uses
  %indvars.iv.next333 = add nsw i64 %i.ju, 1      ; 2 uses
  %.not.i124334 = icmp slt i64 %indvars.iv.next333, %i.jv
  br i1 %.not.i124334, label %.lr.ph.preheader, label %.loopexit200

.lr.ph.preheader:                                 ; preds = %.peel.next.i
  %i.jw = load ptr, ptr %.165, align 8, !tbaa !22
  br label %.lr.ph

bb.bl:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next335, 1 ; 2 uses
  %.not.i124 = icmp slt i64 %indvars.iv.next, %i.jv
  br i1 %.not.i124, label %.lr.ph, label %.loopexit200, !llvm.loop !89

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bl
  %indvars.iv.next335 = phi i64 [ %indvars.iv.next, %bb.bl ], [ %indvars.iv.next333, %.lr.ph.preheader ] ; 3 uses
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %indvars.iv.next335
  %storemerge.i125 = load ptr, ptr %i.jx, align 8, !tbaa !34 ; 2 uses
  %.not16.i126 = icmp eq ptr %storemerge.i125, null
  br i1 %.not16.i126, label %bb.bl, label %.loopexit201.loopexit, !llvm.loop !89

.loopexit201.loopexit:                            ; preds = %.lr.ph
  %i.jy = trunc nsw i64 %indvars.iv.next335 to i32
  br label %.loopexit201

.loopexit201:                                     ; preds = %.loopexit201.loopexit, %bb.bk
  %.sroa.5.2 = phi i32 [ %.sroa.5.1, %bb.bk ], [ %i.jy, %.loopexit201.loopexit ] ; 2 uses
  %.sroa.11149.1 = phi ptr [ %storemerge.in.peel.i.sroa.speculated, %bb.bk ], [ %storemerge.i125, %.loopexit201.loopexit ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.11149.1, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !36 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.11149.1, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !43 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !157
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.bm, label %.preheader202

bb.bm:                                            ; preds = %.loopexit201
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  store i32 1, ptr %i.kg, align 4, !tbaa !157
  br label %.preheader202.outer

.preheader202.outer:                              ; preds = %bb.at, %bb.bm
  %.sroa.15.0.ph = phi ptr [ %i.ka, %bb.bm ], [ null, %bb.at ]
  %.sroa.5.0.ph = phi i32 [ %.sroa.5.2, %bb.bm ], [ -1, %bb.at ]
  %.sroa.11149.0.ph = phi i1 [ false, %bb.bm ], [ true, %bb.at ] ; 2 uses
  br label %.preheader202

.loopexit200:                                     ; preds = %bb.bi, %.peel.next.i, %bb.bl
  br i1 %.sroa.11149.0.ph, label %bb.bn, label %nextArgument.exit95.thread

bb.bn:                                            ; preds = %.loopexit200
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !63
  %i.kj = add nsw i32 %i.ki, 1
  store i32 %i.kj, ptr %i.kh, align 8, !tbaa !63
  br label %nextArgument.exit95.thread

bb.bo:                                            ; preds = %bb.ar
  %i.kk = tail call i32 @strncasecmp(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.16, i64 noundef 9) #19
  %i.kl = icmp eq i32 %i.kk, 0
  %i.km = load i32, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  br i1 %i.kl, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  %i.kn = or i32 %i.km, 64
  store i32 %i.kn, ptr %i.a, align 8, !tbaa !47
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.kp = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !19
  %i.kq = tail call ptr %i.kp(i64 noundef 32) #16, !inline_history !142 ; 6 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %__redisPushCallback.exit.thread187, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kq, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 32, i1 false)
  store ptr null, ptr %i.kq, align 8, !tbaa !84
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !83
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store ptr %i.kq, ptr %i.ko, align 8, !tbaa !83
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !86 ; 2 uses
  %.not.i127 = icmp eq ptr %i.kv, null
  br i1 %.not.i127, label %__redisPushCallback.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.kq, ptr %i.kv, align 8, !tbaa !84
  br label %__redisPushCallback.exit.thread

__redisPushCallback.exit.thread:                  ; preds = %bb.bs, %bb.bt
  store ptr %i.kq, ptr %i.ku, align 8, !tbaa !86
  br label %nextArgument.exit95.thread

bb.bu:                                            ; preds = %bb.bo
  %i.kw = and i32 %i.km, 32
  %.not78 = icmp eq i32 %i.kw, 0
  %i.kx = load ptr, ptr @hiredisAllocFns, align 8, !tbaa !19
  %i.ky = tail call ptr %i.kx(i64 noundef 32) #16 ; 11 uses
  %i.kz = icmp eq ptr %i.ky, null                 ; 2 uses
  br i1 %.not78, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  br i1 %i.kz, label %__redisPushCallback.exit.thread187, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ky, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 32, i1 false)
  store ptr null, ptr %i.ky, align 8, !tbaa !84
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !83
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store ptr %i.ky, ptr %i.la, align 8, !tbaa !83
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !86 ; 2 uses
  %.not.i129 = icmp eq ptr %i.le, null
  br i1 %.not.i129, label %__redisPushCallback.exit131.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store ptr %i.ky, ptr %i.le, align 8, !tbaa !84
  br label %__redisPushCallback.exit131.thread

__redisPushCallback.exit131.thread:               ; preds = %bb.by, %bb.bz
  store ptr %i.ky, ptr %i.ld, align 8, !tbaa !86
  br label %nextArgument.exit95.thread

bb.ca:                                            ; preds = %bb.bu
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  br i1 %i.kz, label %__redisPushCallback.exit.thread187, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ky, ptr noundef nonnull readonly align 8 dereferenceable(32) %5, i64 32, i1 false)
  store ptr null, ptr %i.ky, align 8, !tbaa !84
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !83
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.ky, ptr %i.lf, align 8, !tbaa !83
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !86 ; 2 uses
  %.not.i132 = icmp eq ptr %i.lj, null
  br i1 %.not.i132, label %__redisPushCallback.exit134.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.ky, ptr %i.lj, align 8, !tbaa !84
  br label %__redisPushCallback.exit134.thread

__redisPushCallback.exit134.thread:               ; preds = %bb.cd, %bb.ce
  store ptr %i.ky, ptr %i.li, align 8, !tbaa !86
  br label %nextArgument.exit95.thread

nextArgument.exit95.thread:                       ; preds = %bb.av, %bb.k, %__redisPushCallback.exit134.thread, %__redisPushCallback.exit131.thread, %__redisPushCallback.exit.thread, %.loopexit200, %bb.bn
  %i.lk = call i32 @__redisAppendCommand(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %4) #16 ; 0 uses
  %i.ll = load i32, ptr %i.a, align 8, !tbaa !72
  %i.lm = and i32 %i.ll, 2
  %.not.i135 = icmp eq i32 %i.lm, 0
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !73 ; 3 uses
  %.not16.i136 = icmp eq ptr %i.lp, null          ; 2 uses
  br i1 %.not.i135, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %nextArgument.exit95.thread
  br i1 %.not16.i136, label %refreshTimeout.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !74 ; 3 uses
  %.not21.i137 = icmp eq ptr %i.lr, null
  br i1 %.not21.i137, label %refreshTimeout.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !75 ; 2 uses
  %.not22.i = icmp eq i64 %i.ls, 0
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lu = load i64, ptr %i.lt, align 8            ; 2 uses
  %.not23.i = icmp eq i64 %i.lu, 0
  %or.cond.i = select i1 %.not22.i, i1 %.not23.i, i1 false
  br i1 %or.cond.i, label %refreshTimeout.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ch
  %i.lv = load ptr, ptr %i.ln, align 8, !tbaa !77
  call void %i.lp(ptr noundef %i.lv, i64 %i.ls, i64 %i.lu) #16, !inline_history !143
  br label %refreshTimeout.exit

bb.ci:                                            ; preds = %nextArgument.exit95.thread
  br i1 %.not16.i136, label %refreshTimeout.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !79 ; 3 uses
  %.not17.i = icmp eq ptr %i.lx, null
  br i1 %.not17.i, label %refreshTimeout.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !75 ; 2 uses
  %.not18.i138 = icmp eq i64 %i.ly, 0
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ma = load i64, ptr %i.lz, align 8            ; 2 uses
  %.not19.i139 = icmp eq i64 %i.ma, 0
  %or.cond32.i = select i1 %.not18.i138, i1 %.not19.i139, i1 false
  br i1 %or.cond32.i, label %refreshTimeout.exit, label %._crit_edge24.i

._crit_edge24.i:                                  ; preds = %bb.ck
  %i.mb = load ptr, ptr %i.ln, align 8, !tbaa !77
  call void %i.lp(ptr noundef %i.mb, i64 %i.ly, i64 %i.ma) #16, !inline_history !143
  br label %refreshTimeout.exit

refreshTimeout.exit:                              ; preds = %bb.cf, %bb.cg, %bb.ch, %._crit_edge.i, %bb.ci, %bb.cj, %bb.ck, %._crit_edge24.i
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !80 ; 2 uses
  %.not88 = icmp eq ptr %i.md, null
  br i1 %.not88, label %__redisAsyncCopyError.exit, label %bb.cl

bb.cl:                                            ; preds = %refreshTimeout.exit
  %i.me = load ptr, ptr %i.ln, align 8, !tbaa !77
  call void %i.md(ptr noundef %i.me) #16
  br label %__redisAsyncCopyError.exit

__redisPushCallback.exit.thread187:               ; preds = %bb.ca, %bb.bv, %bb.bp
  tail call void @__redisSetError(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull @.str.6) #16
  br label %bb.cm

__redisPushCallback.exit:                         ; preds = %bb.ay, %bb.n
  call void @__redisSetError(ptr noundef %0, i32 noundef 5, ptr noundef nonnull @.str.6) #16
  %.not.i140 = icmp eq ptr %0, null
  br i1 %.not.i140, label %__redisAsyncCopyError.exit, label %bb.cm

bb.cm:                                            ; preds = %__redisPushCallback.exit.thread187, %__redisPushCallback.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !66
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.mg, ptr %i.mh, align 8, !tbaa !67
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !68
  br label %__redisAsyncCopyError.exit
end_hunk_0
