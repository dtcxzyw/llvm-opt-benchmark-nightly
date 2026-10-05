Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@lj_record_ret:bb.a
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.epil.preheader
  %.2260.epil = phi i64 [ %.2260.epil.init, %.epil.preheader ], [ %i.gs, %bb.an ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.an ]
  %i.gn = icmp slt i64 %.2260.epil, %.0203.lcssa
  br i1 %i.gn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.2260.epil
  %i.go = load i32, ptr %gep.epil, align 4, !tbaa !37
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gp = phi i32 [ %i.go, %bb.am ], [ 32767, %bb.al ]
  %i.gq = getelementptr [4 x i8], ptr %i.fn, i64 %.2260.epil
  %i.gr = getelementptr i8, ptr %i.gq, i64 -8
  store i32 %i.gp, ptr %i.gr, align 4, !tbaa !37
  %i.gs = add nuw nsw i64 %.2260.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge263, label %bb.al, !llvm.loop !118

._crit_edge263:                                   ; preds = %._crit_edge263.loopexit.unr-lcssa, %bb.an, %bb.ab
  %i.gt = trunc i64 %i.eb to i32
  %i.gu = add i32 %i.ed, %i.gt                    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !36
  %i.gw = load i32, ptr %i.bu, align 4, !tbaa !31 ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge263
  %i.gy = add nsw i32 %i.gw, -1
  store i32 %i.gy, ptr %i.bu, align 4, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !35
  %i.hb = sub i32 %i.ha, %i.ee
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !35
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !42
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.eg
  store ptr %i.he, ptr %i.hc, align 8, !tbaa !42
  br label %bb.bx

bb.ap:                                            ; preds = %._crit_edge263
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 3016
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !57
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 3020
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !58
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !59
  %i.hn = and i32 %i.hm, 255
  %i.ho = add nsw i32 %i.hn, -77
  %narrow239 = icmp ult i32 %i.ho, -4
  br i1 %narrow239, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 8) #9
  unreachable

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 181 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !40
  %.not233 = icmp eq i8 %i.hq, 0
  br i1 %.not233, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 16) #9
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.hr = getelementptr inbounds i8, ptr %i.eo, i64 -93
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !60
  %i.ht = icmp ugt i8 %i.hs, -8
  br i1 %i.ht, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !35
  %i.hw = add i32 %i.hv, %i.gu
  %i.hx = icmp ugt i32 %i.hw, 249
  br i1 %i.hx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.hy = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef nonnull %i.ep, i32 noundef 7) #8
  %i.hz = load i64, ptr %.1210, align 8, !tbaa !9
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = tail call i32 @lj_ir_kptr_(ptr noundef nonnull %0, i32 noundef 25, ptr noundef %i.ia) #8
  %i.ic = trunc i32 %i.hy to i16
  %i.id = trunc i32 %i.ib to i16
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 2953, ptr %i.if, align 4, !tbaa !9
  store i16 %i.ic, ptr %i.ie, align 8, !tbaa !9
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.id, ptr %i.ig, align 2, !tbaa !9
  %i.ih = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !32
  %i.ik = add nsw i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 8, !tbaa !32
  store i8 1, ptr %i.hp, align 1, !tbaa !40
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 2992
  store i16 32767, ptr %i.il, align 8, !tbaa !61
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !42 ; 2 uses
  %i.io = zext nneg i32 %i.ed to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.io
  %i.iq = getelementptr inbounds i8, ptr %i.in, i64 -8
  %i.ir = shl i64 %i.eb, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ip, ptr nonnull align 4 %i.iq, i64 %i.ir, i1 false)
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !42
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -8
  %i.iu = shl nuw nsw i64 %i.ef, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.it, i8 0, i64 %i.iu, i1 false)
  br label %bb.bx

bb.az:                                            ; preds = %bb.s
  %i.iv = and i64 %i.ds, 7
  %i.iw = icmp eq i64 %i.iv, 2
  br i1 %i.iw, label %bb.ba, label %bb.bw

bb.ba:                                            ; preds = %bb.az
  %i.ix = getelementptr inbounds i8, ptr %.1210, i64 -24
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !9  ; 2 uses
  %i.iz = lshr i64 %i.ds, 3                       ; 3 uses
  %i.ja = trunc i64 %i.iz to i32                  ; 4 uses
  %i.jb = add nsw i32 %i.dr, -2
  store i32 %i.jb, ptr %i.bu, align 4, !tbaa !31
  %i.jc = icmp slt i32 %i.dr, 2
  br i1 %i.jc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 16) #9
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !35
  %i.jf = sub i32 %i.je, %i.ja
  store i32 %i.jf, ptr %i.jd, align 8, !tbaa !35
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !42
  %i.ji = and i64 %i.iz, 4294967295               ; 2 uses
  %i.jj = sub nsw i64 0, %i.ji                    ; 2 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.jj ; 5 uses
  store ptr %i.jk, ptr %i.jg, align 8, !tbaa !42
  %i.jl = add i32 %i.ja, -4                       ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 5 uses
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !36
  %i.jn = icmp eq i64 %i.iy, ptrtoint (ptr @lj_cont_ra to i64)
  br i1 %i.jn, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.jo = getelementptr inbounds i8, ptr %.1210, i64 -16
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !9
  %i.jq = inttoptr i64 %i.jp to ptr
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !37
  %i.jt = lshr i32 %i.js, 8
  %i.ju = and i32 %i.jt, 255                      ; 3 uses
  %.not225 = icmp eq i64 %.0203.lcssa, 0
  br i1 %.not225, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jv = add i32 %.1, %i.ja
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !37
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.jz = phi i32 [ %i.jy, %bb.be ], [ 32767, %bb.bd ]
  %i.ka = zext nneg i32 %i.ju to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.ka
  store i32 %i.jz, ptr %i.kb, align 4, !tbaa !37
  %i.kc = load i32, ptr %i.jm, align 4, !tbaa !36
  %.not226 = icmp ult i32 %i.ju, %i.kc
  br i1 %.not226, label %bb.bx, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kd = add nuw nsw i32 %i.ju, 1
  store i32 %i.kd, ptr %i.jm, align 4, !tbaa !36
  br label %bb.bx

bb.bh:                                            ; preds = %bb.bc
  %i.ke = icmp eq i64 %i.iy, ptrtoint (ptr @lj_cont_cat to i64)
  %4 = icmp ne i64 ptrtoint (ptr @lj_cont_nop to i64), ptrtoint (ptr @lj_cont_cat to i64)
  %or.cond = and i1 %4, %i.ke
  br i1 %or.cond, label %bb.bi, label %bb.bx

bb.bi:                                            ; preds = %bb.bh
  %i.kf = getelementptr inbounds i8, ptr %.1210, i64 -16 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !9
  %i.kh = inttoptr i64 %i.kg to ptr
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !37
  %i.kk = lshr i32 %i.kj, 24                      ; 2 uses
  %.not220 = icmp eq i64 %.0203.lcssa, 0          ; 2 uses
  br i1 %.not220, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kl = add i32 %.1, %i.ja
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.km
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !37
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.kp = phi i32 [ %i.ko, %bb.bj ], [ 32767, %bb.bi ] ; 2 uses
  %.not221 = icmp eq i32 %i.kk, %i.jl
  br i1 %.not221, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kq = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !46
  %i.kt = zext i32 %.1206 to i64                  ; 2 uses
  %i.ku = sub nsw i64 0, %i.kt
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.ku ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !62
  %.not222 = icmp eq i32 %i.kx, 0
  br i1 %.not222, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 16) #9
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.ky = zext i32 %i.jl to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.ky
  store i32 %i.kp, ptr %i.kz, align 4, !tbaa !37
  %i.la = getelementptr inbounds i8, ptr %i.kv, i64 -32 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !9
  br i1 %.not220, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lc = zext i32 %.1 to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.lc
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !9
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %storemerge = phi i64 [ %i.le, %bb.bo ], [ -1, %bb.bn ]
  store i64 %storemerge, ptr %i.la, align 8, !tbaa !9
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.jj ; 3 uses
  %i.lg = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 4 uses
  store ptr %i.lf, ptr %i.lh, align 8, !tbaa !46
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 40 ; 3 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %i.lk, align 8, !tbaa !66
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.kk, ptr %i.ll, align 8, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 3 uses
  store i32 %i.jl, ptr %i.lm, align 4, !tbaa !68
  %i.ln = add nuw nsw i64 %i.iz, 4294967291
  %i.lo = and i64 %i.ln, 4294967295
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.lp, i64 48, i1 false)
  %i.lq = call i32 @lj_vm_cpcall(ptr noundef %i.lg, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @rec_mm_concat_cp) #8 ; 2 uses
  %.not.i = icmp eq i32 %i.lq, 0
  br i1 %.not.i, label %.critedge.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lr = ptrtoint ptr %i.lj to i64
  %i.ls = ptrtoint ptr %i.lf to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %i.lu = load ptr, ptr %i.li, align 8, !tbaa !63
  %i.lv = getelementptr inbounds i8, ptr %i.lu, i64 -8
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !9
  %i.lx = load ptr, ptr %i.lh, align 8, !tbaa !46
  %i.ly = load i32, ptr %i.lm, align 4, !tbaa !68
  %i.lz = add i32 %i.ly, -1
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.ma
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mb, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.mc = load ptr, ptr %i.lh, align 8, !tbaa !46
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 %i.lt ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store ptr %i.me, ptr %i.li, align 8, !tbaa !63
  store i64 %i.lw, ptr %i.md, align 8, !tbaa !9
  %i.mf = sub nsw i32 0, %i.lq
  br label %rec_cat.exit

.critedge.i:                                      ; preds = %bb.bp
  %i.mg = load ptr, ptr %i.lh, align 8, !tbaa !46
  %i.mh = load i32, ptr %i.lm, align 4, !tbaa !68
  %i.mi = add i32 %i.mh, -1
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.mj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mk, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !69
  br label %rec_cat.exit

rec_cat.exit:                                     ; preds = %bb.bq, %.critedge.i
  %.0.i237 = phi i32 [ %i.mf, %bb.bq ], [ %i.mm, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.mn = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 32 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !46
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.ji ; 2 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.kt
  store ptr %i.mr, ptr %i.mo, align 8, !tbaa !46
  %i.ms = getelementptr inbounds i8, ptr %i.mq, i64 -32
  store i64 %i.lb, ptr %i.ms, align 8, !tbaa !9
  br label %bb.br

bb.br:                                            ; preds = %rec_cat.exit, %bb.bk
  %.0 = phi i32 [ %.0.i237, %rec_cat.exit ], [ %i.kp, %bb.bk ] ; 4 uses
  %i.mt = icmp ugt i32 %.0, -257
  br i1 %i.mt, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mu = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.mv = sub nsw i32 0, %.0
  call void @lj_err_throw(ptr noundef %i.mu, i32 noundef %i.mv) #9
  unreachable

bb.bt:                                            ; preds = %bb.br
  %.not223 = icmp eq i32 %.0, 0
  br i1 %.not223, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mw = load i64, ptr %i.kf, align 8, !tbaa !9
  %i.mx = inttoptr i64 %i.mw to ptr
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !37
  %i.na = lshr i32 %i.mz, 8
  %i.nb = and i32 %i.na, 255                      ; 3 uses
  %i.nc = load ptr, ptr %i.jg, align 8, !tbaa !42
  %i.nd = zext nneg i32 %i.nb to i64
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.nd
  store i32 %.0, ptr %i.ne, align 4, !tbaa !37
  %i.nf = load i32, ptr %i.jm, align 4, !tbaa !36
  %.not224 = icmp ult i32 %i.nb, %i.nf
  br i1 %.not224, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ng = add nuw nsw i32 %i.nb, 1
  store i32 %i.ng, ptr %i.jm, align 4, !tbaa !36
  br label %bb.bx

bb.bw:                                            ; preds = %bb.az
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 16) #9
  unreachable

bb.bx:                                            ; preds = %bb.ao, %bb.ay, %bb.bt, %bb.bv, %bb.bu, %bb.bf, %bb.bg, %bb.bh, %.critedge, %._crit_edge259
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sload(ptr noundef initializes((184, 190)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = ashr i64 %i.g, 47                        ; 2 uses
  %i.i = icmp ult i64 %i.h, -14
  %i.j = trunc nsw i64 %i.h to i32
  %i.k = xor i32 %i.j, -1
  %.0.i = select i1 %i.i, i32 14, i32 %i.k        ; 3 uses
  %i.l = trunc nuw nsw i32 %.0.i to i16
  %i.m = or disjoint i16 %i.l, 18304
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.o = load i32, ptr %i.n, align 8, !tbaa !35
  %i.p = add nsw i32 %i.o, %1
  %i.q = trunc i32 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.m, ptr %i.s, align 4, !tbaa !9
  store i16 %i.q, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 4, ptr %i.t, align 2, !tbaa !9
  %i.u = tail call i32 @lj_ir_emit(ptr noundef %0) #8
  %i.v = icmp samesign ult i32 %.0.i, 3
  %i.w = mul nuw nsw i32 %.0.i, 16777217
  %i.x = xor i32 %i.w, 32767
  %.0 = select i1 %i.v, i32 %i.x, i32 %i.u        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.e
end_hunk_0
begin_hunk_1_@lj_record_mm_lookup:bb.a
  %i.av = tail call ptr @lj_tab_getstr(ptr noundef %.081, ptr noundef %i.au) #8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.ap, ptr %i.aw, align 4, !tbaa !72
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.081, ptr %i.ax, align 8, !tbaa !73
  %.not91 = icmp eq ptr %i.av, null
  br i1 %.not91, label %bb.u, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !9  ; 3 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = ashr i64 %i.ay, 47
  switch i64 %i.ba, label %bb.i [
    i64 -9, label %bb.j
    i64 -12, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 11) #9
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ay, ptr %i.bb, align 8, !tbaa !9
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !9  ; 2 uses
  %i.bd = and i64 %i.bc, 140737488355327
  %i.be = inttoptr i64 %i.bd to ptr
  %.mask = and i64 %i.bc, -140737488355328
  %i.bf = icmp eq i64 %.mask, -1266637395197952
  %i.bg = select i1 %i.bf, i32 8, i32 11
  %i.bh = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.be, i32 noundef %i.bg) #8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !50
  br label %bb.u

bb.k:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds i8, ptr %0, i64 -312
  %i.bk = load i64, ptr %1, align 8, !tbaa !9
  %i.bl = ashr i64 %i.bk, 47                      ; 3 uses
  %i.bm = icmp ult i64 %i.bl, -13                 ; 2 uses
  %i.bn = sub nsw i64 21, %i.bl
  %spec.select = select i1 %i.bm, i64 35, i64 %i.bn
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %spec.select
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !71 ; 2 uses
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = icmp eq i64 %i.bp, 0
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 32767, ptr %i.bs, align 4, !tbaa !72
  br label %bb.u

bb.m:                                             ; preds = %bb.k
  %i.bt = icmp eq i32 %i.c, 167772160
  br i1 %i.bt, label %bb.f, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = shl nsw i64 %i.bl, 3
  %i.bv = sub nsw i64 696, %i.bu
  %i.bw = select i1 %i.bm, i64 808, i64 %i.bv
  %i.bx = tail call i32 @lj_ir_ggfload(ptr noundef nonnull %0, i32 noundef 11, i64 noundef %i.bw) #8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.bx, ptr %i.bz, align 4, !tbaa !72
  br label %bb.p

bb.o:                                             ; preds = %bb.c, %bb.b
  %i.ca = phi i32 [ %i.n, %bb.b ], [ %i.ab, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.w, %bb.c ]  ; 2 uses
  %.not92 = icmp eq ptr %.1, null                 ; 2 uses
  %i.cb = select i1 %.not92, i32 32767, i32 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !72
  %i.cd = select i1 %.not92, i16 2187, i16 2443
  %i.ce = trunc i32 %i.ca to i16
  %i.cf = tail call i32 @lj_ir_knull(ptr noundef nonnull %0, i32 noundef 11) #8
  %i.cg = trunc i32 %i.cf to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.cd, ptr %i.ci, align 4, !tbaa !9
  store i16 %i.ce, ptr %i.ch, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.cg, ptr %i.cj, align 2, !tbaa !9
  %i.ck = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2 = phi ptr [ %.1, %bb.o ], [ %i.bq, %bb.n ]  ; 4 uses
  %.not93 = icmp eq ptr %.2, null
  br i1 %.not93, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds i8, ptr %0, i64 -312
  %i.cm = zext i32 %2 to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !71 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  %i.cq = tail call ptr @lj_tab_getstr(ptr noundef nonnull %.2, ptr noundef %i.cp) #8 ; 2 uses
  %.not94 = icmp eq ptr %i.cq, null
  br i1 %.not94, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !9  ; 2 uses
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %.2, ptr %i.cu, align 8, !tbaa !73
  %i.cv = ptrtoint ptr %.2 to i64
  %i.cw = or i64 %i.cv, -1688849860263936
  store i64 %i.cw, ptr %3, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = or i64 %i.co, -703687441776640
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !9
  %i.cz = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.cp, i32 noundef 4) #8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !74
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.db, align 8, !tbaa !75
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 0, ptr %i.dc, align 4, !tbaa !76
  %i.dd = call i32 @lj_record_idx(ptr noundef nonnull %0, ptr noundef nonnull %3) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !50
  %i.df = and i32 %i.dd, 520093696
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.f, %bb.g, %bb.t, %bb.l, %bb.j
  %.0 = phi i32 [ %i.dh, %bb.t ], [ 0, %bb.f ], [ 0, %bb.l ], [ 1, %bb.j ], [ 0, %bb.g ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.0
}

declare hidden i32 @lj_ir_kint(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @lj_tab_getstr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_ir_ggfload(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @lj_ir_knull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @lj_record_idx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 29 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 29 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 29 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 182 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %0, i64 -496 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 7 uses
  %i.o = getelementptr inbounds i8, ptr %0, i64 -304 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !49
  br label %bb.b

bb.b:                                             ; preds = %lj_record_constify.exit.thread, %bb.a
  %i.s = phi i32 [ %i.dz, %lj_record_constify.exit.thread ], [ %.pre, %bb.a ]
  %i.t = and i32 %i.s, 520093696
  %.not = icmp eq i32 %i.t, 184549376
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.b, align 8, !tbaa !75
  %.not249 = icmp ne i32 %i.u, 0
  %i.v = zext i1 %.not249 to i32
  %i.w = tail call i32 @lj_record_mm_lookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.v)
  %.not250 = icmp eq i32 %i.w, 0
  br i1 %.not250, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @lj_trace_err(ptr noundef %0, i32 noundef 18) #9
  unreachable

.thread:                                          ; preds = %bb.bn, %bb.bc, %bb.ab, %bb.c
  %i.x = load i32, ptr %i.p, align 8, !tbaa !50
  %i.y = and i32 %i.x, 520093696                  ; 2 uses
  %i.z = icmp eq i32 %i.y, 134217728
  br i1 %i.z, label %2, label %bb.j

2:                                                ; preds = %.thread
  %3 = load i32, ptr %i.b, align 8, !tbaa !75
  %.not254 = icmp eq i32 %3, 0
  %4 = select i1 %.not254, ptr @lj_cont_ra, ptr @lj_cont_nop ; 2 uses
  %5 = icmp eq ptr %4, @lj_cont_cat
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = load i32, ptr %7, align 4, !tbaa !36
  br label %bb.e

9:                                                ; preds = %2
  %10 = load ptr, ptr %i.e, align 8, !tbaa !43
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds i8, ptr %12, i64 -16
  %14 = load i64, ptr %13, align 8, !tbaa !9
  %15 = and i64 %14, 140737488355327
  %16 = inttoptr i64 %15 to ptr
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %18 = load i64, ptr %17, align 8, !tbaa !9
  %19 = inttoptr i64 %18 to ptr
  %20 = getelementptr inbounds i8, ptr %19, i64 -93
  %21 = load i8, ptr %20, align 1, !tbaa !60
  %22 = zext i8 %21 to i32
  br label %bb.e

bb.e:                                             ; preds = %9, %6
  %23 = phi i32 [ %8, %6 ], [ %22, %9 ]           ; 7 uses
  %24 = ptrtoint ptr %4 to i64
  %25 = tail call i32 @lj_ir_k64(ptr noundef nonnull %0, i32 noundef 28, i64 noundef %24) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 4 uses
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %26
  store i32 %25, ptr %27, align 4, !tbaa !37
  %28 = add i32 %23, 1
  %i.ac = zext i32 %28 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ac
  store i32 131072, ptr %i.ad, align 4, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36 ; 3 uses
  %i.aj = icmp ult i32 %i.ai, %23
  br i1 %i.aj, label %.lr.ph.preheader.i, label %rec_mm_prep.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.ak = zext i32 %i.ai to i64
  %i.al = shl nuw nsw i64 %i.ak, 2
  %scevgep.i = getelementptr i8, ptr %i.ab, i64 %i.al
  %i.am = xor i32 %i.ai, -1
  %i.an = add i32 %23, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.aq, i1 false), !tbaa !37
  br label %rec_mm_prep.exit

rec_mm_prep.exit:                                 ; preds = %bb.e, %.lr.ph.preheader.i
  %i.ar = add i32 %23, 2                          ; 3 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.as ; 4 uses
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.as ; 4 uses
  %i.ay = load i32, ptr %i.p, align 8, !tbaa !50
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !37
  %i.az = load i32, ptr %i.a, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !37
  %i.bb = load i32, ptr %i.d, align 4, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !37
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !9
  %i.be = and i64 %i.bd, 140737488355327
  %i.bf = or disjoint i64 %i.be, -1266637395197952
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bh = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !9
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !9
  %i.bk = load i32, ptr %i.b, align 8, !tbaa !75  ; 2 uses
  %.not255 = icmp eq i32 %i.bk, 0
  br i1 %.not255, label %bb.h, label %bb.f

bb.f:                                             ; preds = %rec_mm_prep.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !9
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !9
  tail call fastcc void @rec_call_setup(ptr noundef nonnull %0, i32 noundef %i.ar, i64 noundef 3), !inline_history !77
  %i.bp = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.ae, align 4, !tbaa !31
  %i.br = add i32 %23, 4                          ; 2 uses
  %i.bs = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  store ptr %i.bu, ptr %i.aa, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !35
  %i.bx = add i32 %i.bw, %i.br                    ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !35
  %i.by = load i32, ptr %i.ah, align 4, !tbaa !36
  %i.bz = add i32 %i.by, %i.bx
  %i.ca = icmp ugt i32 %i.bz, 249
  br i1 %i.ca, label %bb.g, label %lj_record_call.exit

bb.g:                                             ; preds = %bb.f
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

bb.h:                                             ; preds = %rec_mm_prep.exit
  tail call fastcc void @rec_call_setup(ptr noundef nonnull %0, i32 noundef %i.ar, i64 noundef 2), !inline_history !77
  %i.cb = load i32, ptr %i.ae, align 4, !tbaa !31
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ae, align 4, !tbaa !31
  %i.cd = add i32 %23, 4                          ; 2 uses
  %i.ce = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  store ptr %i.cg, ptr %i.aa, align 8, !tbaa !42
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !35
  %i.cj = add i32 %i.ci, %i.cd                    ; 2 uses
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !35
  %i.ck = load i32, ptr %i.ah, align 4, !tbaa !36
  %i.cl = add i32 %i.ck, %i.cj
  %i.cm = icmp ugt i32 %i.cl, 249
  br i1 %i.cm, label %bb.i, label %lj_record_call.exit

bb.i:                                             ; preds = %bb.h
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

bb.j:                                             ; preds = %.thread
  %i.cn = load i32, ptr %i.q, align 4, !tbaa !72
  %i.co = icmp eq i32 %i.cn, 32767
  br i1 %i.co, label %bb.k, label %lj_record_constify.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cp = load i32, ptr %i.b, align 8, !tbaa !75
  %.not251 = icmp eq i32 %i.cp, 0
  br i1 %.not251, label %bb.l, label %lj_record_constify.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cq = load i32, ptr %i.a, align 8, !tbaa !49
  %i.cr = and i32 %i.cq, 520093696
  %i.cs = icmp eq i32 %i.cr, 201326592
  br i1 %i.cs, label %bb.m, label %lj_record_constify.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ct = load i64, ptr %1, align 8, !tbaa !9
  %i.cu = and i64 %i.ct, 140737488355327
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !9
  %i.cy = icmp eq i8 %i.cx, 3
  %i.cz = icmp eq i32 %i.y, 184549376
  %or.cond256 = and i1 %i.cz, %i.cy
  br i1 %or.cond256, label %bb.n, label %lj_record_constify.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.da = load i32, ptr %i.d, align 4, !tbaa !74
  %i.db = and i32 %i.da, 520126464
  %or.cond257 = icmp eq i32 %i.db, 67108864
  br i1 %or.cond257, label %bb.o, label %lj_record_constify.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !9
  %i.dd = and i64 %i.dc, 140737488355327
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i64, ptr %i.c, align 8, !tbaa !9
  %i.dg = and i64 %i.df, 140737488355327
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = tail call ptr @lj_tab_getstr(ptr noundef %i.de, ptr noundef %i.dh) #8
  %i.dj = load i64, ptr %i.di, align 8            ; 3 uses
  %i.dk = ashr i64 %i.dj, 47                      ; 4 uses
  %i.dl = trunc nsw i64 %i.dk to i32              ; 3 uses
  %i.dm = add nsw i32 %i.dl, 13
  %i.dn = icmp ult i32 %i.dm, 9
  %i.do = bitcast i64 %i.dj to double
  br i1 %i.dn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dp = and i64 %i.dj, 140737488355327
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = icmp ult i64 %i.dk, -14
  %i.ds = xor i32 %i.dl, -1
  %.0.i13.i = select i1 %i.dr, i32 14, i32 %i.ds
  %i.dt = tail call i32 @lj_ir_kgc(ptr noundef %0, ptr noundef %i.dq, i32 noundef %.0.i13.i) #8
  br label %lj_record_constify.exit

bb.q:                                             ; preds = %bb.o
  %i.du = icmp ult i64 %i.dk, -14
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dv = tail call i32 @lj_ir_knumint(ptr noundef %0, double noundef %i.do) #8
  br label %lj_record_constify.exit

bb.s:                                             ; preds = %bb.q
  %.off.i = add nsw i64 %i.dk, 3
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.t, label %lj_record_constify.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.dw = xor i32 %i.dl, -1
  %i.dx = mul nuw nsw i32 %i.dw, 16777217
  %i.dy = xor i32 %i.dx, 32767
  br label %lj_record_constify.exit

lj_record_constify.exit:                          ; preds = %bb.p, %bb.r, %bb.t
  %.0.i260 = phi i32 [ %i.dt, %bb.p ], [ %i.dv, %bb.r ], [ %i.dy, %bb.t ] ; 2 uses
  %.not253 = icmp eq i32 %.0.i260, 0
  br i1 %.not253, label %lj_record_constify.exit.thread, label %lj_record_call.exit

lj_record_constify.exit.thread:                   ; preds = %bb.s, %lj_record_constify.exit, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.dz = load i32, ptr %i.p, align 8, !tbaa !50  ; 2 uses
  store i32 %i.dz, ptr %i.a, align 8, !tbaa !49
  %i.ea = load i64, ptr %i.r, align 8, !tbaa !9
  store i64 %i.ea, ptr %1, align 8, !tbaa !9
  %i.eb = load i32, ptr %i.n, align 4, !tbaa !76
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.n, align 4, !tbaa !76
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.u, label %bb.b, !llvm.loop !122

bb.u:                                             ; preds = %lj_record_constify.exit.thread
  tail call void @lj_trace_err(ptr noundef %0, i32 noundef 19) #9
  unreachable

bb.v:                                             ; preds = %bb.b
  %i.ee = load i64, ptr %i.c, align 8             ; 3 uses
  %i.ef = icmp eq i64 %i.ee, -1
  br i1 %i.ef, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = bitcast i64 %i.ee to double
  %i.eh = icmp ult i64 %i.ee, -1970324836974592
  %i.ei = fcmp uno double %i.eg, 0.000000e+00
  %or.cond408 = and i1 %i.eh, %i.ei
  br i1 %or.cond408, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ej = load i32, ptr %i.b, align 8, !tbaa !75
  %.not232 = icmp eq i32 %i.ej, 0
  br i1 %.not232, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lj_trace_err(ptr noundef %0, i32 noundef 17) #9
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ek = load i32, ptr %i.d, align 4, !tbaa !74
  %i.el = and i32 %i.ek, 32768
  %.not233.not = icmp eq i32 %i.el, 0
  br i1 %.not233.not, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.em = load i32, ptr %i.n, align 4, !tbaa !76
  %.not247 = icmp eq i32 %i.em, 0
  br i1 %.not247, label %lj_record_call.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = tail call i32 @lj_record_mm_lookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not248 = icmp eq i32 %i.en, 0
  br i1 %.not248, label %lj_record_call.exit, label %.thread

bb.ac:                                            ; preds = %bb.z, %bb.w
  %i.eo = load i64, ptr %1, align 8, !tbaa !9
  %i.ep = and i64 %i.eo, 140737488355327
  %i.eq = inttoptr i64 %i.ep to ptr               ; 5 uses
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.es = tail call ptr @lj_tab_get(ptr noundef %i.er, ptr noundef %i.eq, ptr noundef nonnull %i.c) #8
  store ptr %i.es, ptr %i.f, align 8, !tbaa !123
  %i.et = load i32, ptr %i.d, align 4, !tbaa !74  ; 8 uses
  %i.eu = lshr i32 %i.et, 24
  %i.ev = and i32 %i.eu, 30
  %i.ew = add nsw i32 %i.ev, -14
  %i.ex = icmp ult i32 %i.ew, 6
  br i1 %i.ex, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.ey = load double, ptr %i.c, align 8, !tbaa !9
  %i.ez = tail call i64 @lj_vm_num2int_check(double noundef %i.ey) #10 ; 2 uses
  %i.fa = icmp slt i64 %i.ez, 0
  %i.fb = trunc i64 %i.ez to i32
  %.1107.i = select i1 %i.fa, i32 134217729, i32 %i.fb ; 3 uses
  %i.fc = icmp ult i32 %.1107.i, 134217729
  br i1 %i.fc, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fd = tail call i32 @lj_opt_narrow_index(ptr noundef nonnull %0, i32 noundef %i.et) #8 ; 3 uses
  %i.fe = load i32, ptr %i.a, align 8, !tbaa !49
  %i.ff = trunc i32 %i.fe to i16
  store i16 17683, ptr %i.h, align 4, !tbaa !9
  store i16 %i.ff, ptr %i.g, align 8, !tbaa !9
  store i16 8, ptr %i.i, align 2, !tbaa !9
  %i.fg = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !79 ; 2 uses
  %.not.i = icmp ult i32 %.1107.i, %i.fi
  br i1 %.not.i, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = trunc i32 %i.fg to i16
  %i.fk = trunc i32 %i.fd to i16
  store i16 1683, ptr %i.h, align 4, !tbaa !9
  store i16 %i.fj, ptr %i.g, align 8, !tbaa !9
  store i16 %i.fk, ptr %i.i, align 2, !tbaa !9
  %i.fl = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.fm = and i32 %i.et, 32768
  %i.fn = or i32 %.1107.i, %i.fm
  %or.cond.i = icmp eq i32 %i.fn, 0
  br i1 %or.cond.i, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.fo = tail call i32 @lj_ir_knum_u64(ptr noundef nonnull %0, i64 noundef 0) #8
  br label %.thread.i

bb.ah:                                            ; preds = %bb.ad
end_hunk_1
begin_hunk_2_@rec_mm_comp:bb.a
bb.d:                                             ; preds = %bb.c
  %i.q = and i64 %i.p, 140737488355327
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.w = icmp eq ptr %i.v, %i.u
  br i1 %i.w, label %.thread72.sink.split, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.x = and i64 %i.p, 140737488355327
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.ad = icmp eq ptr %i.ac, %i.ab
  br i1 %i.ad, label %.thread72.sink.split, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %i.ae = load i32, ptr %i.j, align 4, !tbaa !74
  store i32 %i.ae, ptr %i.c, align 8, !tbaa !49
  store i64 %i.p, ptr %1, align 8, !tbaa !9
  %i.af = call i32 @lj_record_mm_lookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.l)
  %.not70 = icmp eq i32 %i.af, 0
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ag = load i32, ptr %i.f, align 8, !tbaa !50
  %i.ah = call i32 @lj_record_objcmp(ptr noundef %0, i32 noundef %i.n, i32 noundef %i.ag, ptr noundef nonnull %3, ptr noundef nonnull %i.g)
  %.not71 = icmp eq i32 %i.ah, 0
  br i1 %.not71, label %.thread72, label %bb.g

.thread72.sink.split:                             ; preds = %bb.e, %bb.d
  %.sink = phi i16 [ 5, %bb.d ], [ 11, %bb.e ]
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !74
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 17675, ptr %i.al, align 4, !tbaa !9
  store i16 %i.aj, ptr %i.ak, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 %.sink, ptr %i.am, align 2, !tbaa !9
  %i.an = call i32 @lj_opt_fold(ptr noundef %0) #8
  %i.ao = trunc i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !72
  %i.ar = trunc i32 %i.aq to i16
  store i16 2187, ptr %i.al, align 4, !tbaa !9
  store i16 %i.ao, ptr %i.ak, align 8, !tbaa !9
  store i16 %i.ar, ptr %i.am, align 2, !tbaa !9
  %i.as = call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %.thread72

.thread72:                                        ; preds = %bb.f, %.thread72.sink.split
  call fastcc void @rec_mm_callcomp(ptr noundef %0, ptr noundef %1, i32 noundef %.066)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.loopexit

bb.g:                                             ; preds = %.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br i1 %.not, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = load <2 x i32>, ptr %i.j, align 4, !tbaa !37
  %i.au = load i32, ptr %i.j, align 4, !tbaa !74
  store <2 x i32> %i.at, ptr %i.c, align 8, !tbaa !37
  store i32 %i.au, ptr %i.a, align 8, !tbaa !75
  %i.av = load <2 x i64>, ptr %i.h, align 8, !tbaa !9
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !9
  store <2 x i64> %i.av, ptr %1, align 8, !tbaa !9
  store i64 %i.aw, ptr %i.d, align 8, !tbaa !9
  %i.ax = xor i32 %.066, 3
  br label %bb.b

.loopexit:                                        ; preds = %bb.g, %bb.h, %.thread72
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_mm_equal(ptr noundef %0, ptr noundef nonnull initializes((0, 8), (48, 52), (60, 64)) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %union.TValue, align 8              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i32 %i.b, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  store i64 %i.e, ptr %1, align 8, !tbaa !9
  %i.f = tail call i32 @lj_record_mm_lookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  store i64 %i.j, ptr %3, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9    ; 4 uses
  %.mask = and i64 %i.l, -140737488355328
  switch i64 %.mask, label %.thread [
    i64 -1688849860263936, label %bb.c
    i64 -1829587348619264, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = and i64 %i.l, 140737488355327
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %.sink.split, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.u = and i64 %i.l, 140737488355327
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !9
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %.sink.split, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !74
  store i32 %i.ad, ptr %i.c, align 8, !tbaa !49
  store i64 %i.l, ptr %1, align 8, !tbaa !9
  %i.ae = tail call i32 @lj_record_mm_lookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4)
  %.not45 = icmp eq i32 %i.ae, 0
  br i1 %.not45, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.af = load i32, ptr %i.g, align 8, !tbaa !50
  %i.ag = call i32 @lj_record_objcmp(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.af, ptr noundef nonnull %3, ptr noundef nonnull %i.i)
  %.not46 = icmp eq i32 %i.ag, 0
  br i1 %.not46, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi i16 [ 5, %bb.c ], [ 11, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !74
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  store i16 17675, ptr %i.al, align 4, !tbaa !9
  store i16 %i.aj, ptr %i.ak, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 2 uses
  store i16 %.sink, ptr %i.am, align 2, !tbaa !9
  %i.an = tail call i32 @lj_opt_fold(ptr noundef %0) #8
  %i.ao = trunc i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !72
  %i.ar = trunc i32 %i.aq to i16
  store i16 2187, ptr %i.al, align 4, !tbaa !9
  store i16 %i.ao, ptr %i.ak, align 8, !tbaa !9
  store i16 %i.ar, ptr %i.am, align 2, !tbaa !9
  %i.as = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  call fastcc void @rec_mm_callcomp(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

declare hidden i32 @lj_ir_tonum(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_ir_tostr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_mm_len(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RecordIndex, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load i64, ptr %2, align 8, !tbaa !9
  store i64 %i.c, ptr %3, align 8, !tbaa !9
  %i.d = call i32 @lj_record_mm_lookup(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 5)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %4

4:                                                ; preds = %bb.a
  %5 = icmp eq ptr @lj_cont_ra, @lj_cont_cat
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %8 = load i32, ptr %7, align 4, !tbaa !36
  br label %bb.b

9:                                                ; preds = %4
  %10 = load ptr, ptr %i.b, align 8, !tbaa !43
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds i8, ptr %12, i64 -16
  %14 = load i64, ptr %13, align 8, !tbaa !9
  %15 = and i64 %14, 140737488355327
  %16 = inttoptr i64 %15 to ptr
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 32
  %18 = load i64, ptr %17, align 8, !tbaa !9
  %19 = inttoptr i64 %18 to ptr
  %20 = getelementptr inbounds i8, ptr %19, i64 -93
  %21 = load i8, ptr %20, align 1, !tbaa !60
  %22 = zext i8 %21 to i32
  br label %bb.b

bb.b:                                             ; preds = %9, %6
  %23 = phi i32 [ %8, %6 ], [ %22, %9 ]           ; 6 uses
  %i.e = tail call i32 @lj_ir_k64(ptr noundef nonnull %0, i32 noundef 28, i64 noundef ptrtoint (ptr @lj_cont_ra to i64)) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 4 uses
  %i.h = zext i32 %23 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  store i32 %i.e, ptr %i.i, align 4, !tbaa !37
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %25
  store i32 131072, ptr %26, align 4, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36   ; 3 uses
  %i.o = icmp ult i32 %i.n, %23
  br i1 %i.o, label %.lr.ph.preheader.i, label %rec_mm_prep.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.p = zext i32 %i.n to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.q
  %i.r = xor i32 %i.n, -1
  %i.s = add i32 %23, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.v, i1 false), !tbaa !37
  br label %rec_mm_prep.exit

rec_mm_prep.exit:                                 ; preds = %bb.b, %.lr.ph.preheader.i
  %i.w = add i32 %23, 2                           ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 3 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !50
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !9
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %1, ptr %i.ah, align 4, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.aj = load i64, ptr %2, align 8, !tbaa !9
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 32767, ptr %i.ak, align 4, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 -1, ptr %i.al, align 8, !tbaa !9
  tail call fastcc void @rec_call_setup(ptr noundef nonnull %0, i32 noundef %i.w, i64 noundef 2), !inline_history !77
  %i.am = load i32, ptr %i.j, align 4, !tbaa !31
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.j, align 4, !tbaa !31
  %i.ao = add i32 %23, 4                          ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !35
  %i.au = add i32 %i.at, %i.ao                    ; 2 uses
  store i32 %i.au, ptr %i.as, align 8, !tbaa !35
  %i.av = load i32, ptr %i.m, align 4, !tbaa !36
  %i.aw = add i32 %i.av, %i.au
  %i.ax = icmp ugt i32 %i.aw, 249
  br i1 %i.ax, label %bb.c, label %lj_record_call.exit

bb.c:                                             ; preds = %rec_mm_prep.exit
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

lj_record_call.exit:                              ; preds = %rec_mm_prep.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @lj_trace_err(ptr noundef %0, i32 noundef 18) #9
  unreachable
}

declare hidden i32 @lj_opt_narrow_unm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_mm_arith(ptr noundef %0, ptr nofree noundef nonnull captures(none) initializes((60, 64)) %1, i32 noundef range(i32 0, 32) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 8
  %3 = select i1 %i.a, ptr @lj_cont_cat, ptr @lj_cont_ra ; 2 uses
  %4 = icmp eq ptr %3, @lj_cont_cat
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = and i64 %i.i, 140737488355327
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -93
  %i.p = load i8, ptr %i.o, align 1, !tbaa !60
  %i.q = zext i8 %i.p to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %5 = phi i32 [ %i.c, %bb.b ], [ %i.q, %bb.c ]   ; 6 uses
  %6 = ptrtoint ptr %3 to i64
  %i.r = tail call i32 @lj_ir_k64(ptr noundef nonnull %0, i32 noundef 28, i64 noundef %6) #8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42   ; 4 uses
  %i.u = zext i32 %5 to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  store i32 %i.r, ptr %i.v, align 4, !tbaa !37
  %i.w = add i32 %5, 1
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.x
  store i32 131072, ptr %i.y, align 4, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !36 ; 3 uses
  %i.ae = icmp ult i32 %i.ad, %5
  br i1 %i.ae, label %.lr.ph.preheader.i, label %rec_mm_prep.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.af = zext i32 %i.ad to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep.i = getelementptr i8, ptr %i.t, i64 %i.ag
  %i.ah = xor i32 %i.ad, -1
  %i.ai = add i32 %5, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.al, i1 false), !tbaa !37
  br label %rec_mm_prep.exit

rec_mm_prep.exit:                                 ; preds = %bb.d, %.lr.ph.preheader.i
  %i.am = add i32 %5, 2                           ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.an ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.an ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !74
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bb = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !9
  %i.bf = tail call i32 @lj_record_mm_lookup(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2)
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %rec_mm_prep.exit
  %.not36 = icmp eq i32 %2, 16
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = load i32, ptr %i.ax, align 4, !tbaa !74
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !49
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !9
  store i64 %i.bh, ptr %1, align 8, !tbaa !9
  %i.bi = tail call i32 @lj_record_mm_lookup(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2)
  %.not37 = icmp eq i32 %i.bi, 0
  br i1 %.not37, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 18) #9
  unreachable

bb.h:                                             ; preds = %rec_mm_prep.exit, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !50
  store i32 %i.bk, ptr %i.ao, align 4, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 0, ptr %i.bl, align 4, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !9
  store i64 %i.bn, ptr %i.at, align 8, !tbaa !9
  tail call fastcc void @rec_call_setup(ptr noundef nonnull %0, i32 noundef %i.am, i64 noundef 2), !inline_history !77
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !31
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.z, align 4, !tbaa !31
  %i.bq = add i32 %5, 4                           ; 2 uses
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs
  store ptr %i.bt, ptr %i.s, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !35
  %i.bw = add i32 %i.bv, %i.bq                    ; 2 uses
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !35
  %i.bx = load i32, ptr %i.ac, align 4, !tbaa !36
  %i.by = add i32 %i.bx, %i.bw
  %i.bz = icmp ugt i32 %i.by, 249
  br i1 %i.bz, label %bb.i, label %lj_record_call.exit

bb.i:                                             ; preds = %bb.h
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

lj_record_call.exit:                              ; preds = %bb.h
  ret void
}

declare hidden i32 @lj_opt_narrow_arith(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_narrow_mod(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @recff_bit64_bitop(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_narrow_tobit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @recff_bit64_shift(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rec_upvalue(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = inttoptr i64 %i.f to ptr                 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %getcurrf.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.m = load i32, ptr %i.l, align 8, !tbaa !35
  %i.n = trunc i32 %i.m to i16
  %i.o = add i16 %i.n, -2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 18184, ptr %i.q, align 4, !tbaa !9
  store i16 %i.o, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 16, ptr %i.r, align 2, !tbaa !9
  %i.s = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8 ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  store i32 %i.s, ptr %i.u, align 4, !tbaa !37
  br label %getcurrf.exit

getcurrf.exit:                                    ; preds = %bb.a, %bb.b
  %.0.i134 = phi i32 [ %i.s, %bb.b ], [ %i.k, %bb.a ] ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %i.w = load i8, ptr %i.v, align 1, !tbaa !137
  %.not.i135 = icmp eq i8 %i.w, 0
  br i1 %.not.i135, label %rec_upvalue_constify.exit.thread143, label %bb.c

bb.c:                                             ; preds = %getcurrf.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !138
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9   ; 3 uses
  %i.ab = ashr i64 %i.aa, 47                      ; 2 uses
  switch i64 %i.ab, label %rec_upvalue_constify.exit.thread140 [
    i64 -11, label %bb.d
    i64 -12, label %rec_upvalue_constify.exit.thread143
    i64 -13, label %rec_upvalue_constify.exit.thread143
    i64 -7, label %rec_upvalue_constify.exit.thread143
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = and i64 %i.aa, 140737488355327
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !140
  %i.ag = and i8 %i.af, -112
  %or.cond.i = icmp eq i8 %i.ag, 0
  br i1 %or.cond.i, label %bb.e, label %rec_upvalue_constify.exit.thread143

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -352
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !149
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !150
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !157
  %i.an = zext i16 %i.al to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi i64 [ %i.an, %bb.e ], [ %i.ar, %bb.f ]
  %.0.i.i = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.pn.i ; 2 uses
  %i.ao = load i32, ptr %.0.i.i, align 8, !tbaa !159 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, -1879048192
  %i.aq = and i32 %i.ao, 65535
  %i.ar = zext nneg i32 %i.aq to i64
  br i1 %i.ap, label %bb.f, label %ctype_raw.exit.i, !llvm.loop !135

ctype_raw.exit.i:                                 ; preds = %bb.f
  %i.as = icmp ult i32 %i.ao, 1610612736
  br i1 %i.as, label %rec_upvalue_constify.exit, label %rec_upvalue_constify.exit.thread140

rec_upvalue_constify.exit:                        ; preds = %ctype_raw.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !160
  %i.av = icmp ugt i32 %i.au, 16
  br i1 %i.av, label %rec_upvalue_constify.exit.thread143, label %rec_upvalue_constify.exit.thread140

rec_upvalue_constify.exit.thread140:              ; preds = %ctype_raw.exit.i, %bb.c, %rec_upvalue_constify.exit
  %i.aw = trunc i32 %.0.i134 to i16
  %i.ax = and i32 %.0.i134, 32768
  %.not124.not = icmp eq i32 %i.ax, 0
  br i1 %.not124.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %rec_upvalue_constify.exit.thread140
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 61
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !52
  %i.bc = icmp ugt i8 %i.bb, 95
  br i1 %i.bc, label %rec_upvalue_constify.exit.thread143, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.be = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.bd, i32 noundef 8) #8 ; 3 uses
  %i.bf = trunc i32 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 2184, ptr %i.bh, align 4, !tbaa !9
  store i16 %i.aw, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.bf, ptr %i.bi, align 2, !tbaa !9
  %i.bj = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  store i32 %i.be, ptr %i.bl, align 4, !tbaa !37
  %.pre = load i64, ptr %i.x, align 8, !tbaa !138
  %.phi.trans.insert = inttoptr i64 %.pre to ptr
  %.pre157 = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.pre162 = ashr i64 %.pre157, 47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %rec_upvalue_constify.exit.thread140
  %.pre-phi163 = phi i64 [ %.pre162, %bb.h ], [ %i.ab, %rec_upvalue_constify.exit.thread140 ] ; 4 uses
  %i.bm = phi i64 [ %.pre157, %bb.h ], [ %i.aa, %rec_upvalue_constify.exit.thread140 ] ; 2 uses
  %.0112 = phi i32 [ %i.be, %bb.h ], [ %.0.i134, %rec_upvalue_constify.exit.thread140 ] ; 2 uses
  %i.bn = trunc nsw i64 %.pre-phi163 to i32       ; 3 uses
  %i.bo = add nsw i32 %i.bn, 13
  %i.bp = icmp ult i32 %i.bo, 9
  %i.bq = bitcast i64 %i.bm to double
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = and i64 %i.bm, 140737488355327
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = icmp ult i64 %.pre-phi163, -14
  %i.bu = xor i32 %i.bn, -1
  %.0.i13.i = select i1 %i.bt, i32 14, i32 %i.bu
  %i.bv = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.bs, i32 noundef %.0.i13.i) #8
  br label %lj_record_constify.exit

bb.k:                                             ; preds = %bb.i
  %i.bw = icmp ult i64 %.pre-phi163, -14
  br i1 %i.bw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = tail call i32 @lj_ir_knumint(ptr noundef nonnull %0, double noundef %i.bq) #8
  br label %lj_record_constify.exit

bb.m:                                             ; preds = %bb.k
  %.off.i = add nsw i64 %.pre-phi163, 3
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.n, label %rec_upvalue_constify.exit.thread143

bb.n:                                             ; preds = %bb.m
  %i.by = xor i32 %i.bn, -1
  %i.bz = mul nuw nsw i32 %i.by, 16777217
  %i.ca = xor i32 %i.bz, 32767
  br label %lj_record_constify.exit

lj_record_constify.exit:                          ; preds = %bb.j, %bb.l, %bb.n
  %.0.i136 = phi i32 [ %i.bv, %bb.j ], [ %i.bx, %bb.l ], [ %i.ca, %bb.n ]
  %.0.i136.fr = freeze i32 %.0.i136               ; 2 uses
  %.not125 = icmp eq i32 %.0.i136.fr, 0
  br i1 %.not125, label %rec_upvalue_constify.exit.thread143, label %.thread155
end_hunk_2
begin_hunk_3_@rec_mm_concat_cp:bb.a
  store i16 %i.ah, ptr %i.m, align 8, !tbaa !9
  store i16 4, ptr %i.o, align 2, !tbaa !9
  %i.ai = tail call i32 @lj_ir_emit(ptr noundef nonnull %i.b) #8
  %i.aj = icmp samesign ult i32 %.0.i.i, 3
  %i.ak = mul nuw nsw i32 %.0.i.i, 16777217
  %i.al = xor i32 %i.ak, 32767
  %.0.i = select i1 %i.aj, i32 %i.al, i32 %i.ai
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.w
  store i32 %.0.i, ptr %i.an, align 4, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = phi ptr [ %i.am, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %i.ap = add i32 %.07898, 1                      ; 2 uses
  %.not = icmp ugt i32 %i.ap, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.aq = phi ptr [ %i.h, %bb.a ], [ %i.ao, %bb.d ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !37  ; 2 uses
  %i.as = lshr i32 %i.ar, 24
  %i.at = and i32 %i.as, 30
  %i.au = add nsw i32 %i.at, -14
  %i.av = icmp ult i32 %i.au, 6
  %i.aw = and i32 %i.ar, 520093696
  %i.ax = icmp eq i32 %i.aw, 67108864
  %or.cond = or i1 %i.ax, %i.av
  br i1 %or.cond, label %bb.e, label %bb.n

bb.e:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !37 ; 2 uses
  %i.ba = lshr i32 %i.az, 24
  %i.bb = and i32 %i.ba, 30
  %i.bc = add nsw i32 %i.bb, -14
  %i.bd = icmp ult i32 %i.bc, 6
  %i.be = and i32 %i.az, 520093696
  %i.bf = icmp eq i32 %i.be, 67108864
  %or.cond94 = or i1 %i.bf, %i.bd
  br i1 %or.cond94, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.bg = zext i32 %i.d to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bg ; 3 uses
  %.not8899 = icmp ult ptr %i.j, %i.bh
  br i1 %.not8899, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 186
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph102, %bb.j
  %.076100 = phi ptr [ %i.j, %.lr.ph102 ], [ %i.bx, %bb.j ] ; 4 uses
  %i.bl = load i32, ptr %.076100, align 4, !tbaa !37 ; 4 uses
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = and i32 %i.bm, 30
  %i.bo = add nsw i32 %i.bn, -14
  %i.bp = icmp ult i32 %i.bo, 6
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = trunc i32 %i.bl to i16
  %i.br = and i32 %i.bl, 520093696
  %i.bs = icmp eq i32 %i.br, 234881024
  %i.bt = zext i1 %i.bs to i16
  store i16 23812, ptr %i.bj, align 4, !tbaa !9
  store i16 %i.bq, ptr %i.bi, align 8, !tbaa !9
  store i16 %i.bt, ptr %i.bk, align 2, !tbaa !9
  %i.bu = tail call i32 @lj_opt_fold(ptr noundef %i.b) #8
  store i32 %i.bu, ptr %.076100, align 4, !tbaa !37
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bv = and i32 %i.bl, 520093696
  %i.bw = icmp eq i32 %i.bv, 67108864
  br i1 %i.bw, label %bb.j, label %._crit_edge103

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bx = getelementptr inbounds i8, ptr %.076100, i64 -4 ; 3 uses
  %.not88 = icmp ult ptr %i.bx, %i.bh
  br i1 %.not88, label %._crit_edge103, label %bb.g, !llvm.loop !203

._crit_edge103:                                   ; preds = %bb.j, %bb.i, %bb.f
  %.076.lcssa = phi ptr [ %i.j, %bb.f ], [ %.076100, %bb.i ], [ %i.bx, %bb.j ]
  %i.by = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %i.b, i64 -544
  %i.ca = tail call i32 @lj_ir_kptr_(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull %i.bz) #8
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 188 ; 3 uses
  store i16 21769, ptr %i.cd, align 4, !tbaa !9
  store i16 %i.cb, ptr %i.cc, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 186 ; 3 uses
  store i16 0, ptr %i.ce, align 2, !tbaa !9
  %i.cf = tail call i32 @lj_opt_fold(ptr noundef %i.b) #8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge103
  %.077 = phi i32 [ %i.cf, %._crit_edge103 ], [ %i.ck, %bb.k ]
  %.1 = phi ptr [ %i.by, %._crit_edge103 ], [ %i.ch, %bb.k ] ; 2 uses
  %i.cg = trunc i32 %.077 to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.ci = load i32, ptr %.1, align 4, !tbaa !37
  %i.cj = trunc i32 %i.ci to i16
  store i16 22153, ptr %i.cd, align 4, !tbaa !9
  store i16 %i.cg, ptr %i.cc, align 8, !tbaa !9
  store i16 %i.cj, ptr %i.ce, align 2, !tbaa !9
  %i.ck = tail call i32 @lj_opt_fold(ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not89 = icmp ugt ptr %i.ch, %i.j
  br i1 %.not89, label %bb.l, label %bb.k, !llvm.loop !204

bb.l:                                             ; preds = %bb.k
  %i.cl = trunc i32 %i.ck to i16
  %i.cm = trunc i32 %i.cf to i16
  store i16 22404, ptr %i.cd, align 4, !tbaa !9
  store i16 %i.cl, ptr %i.cc, align 8, !tbaa !9
  store i16 %i.cm, ptr %i.ce, align 2, !tbaa !9
  %i.cn = tail call i32 @lj_opt_fold(ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.cp = ptrtoint ptr %i.by to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = lshr exact i64 %i.cr, 2                 ; 2 uses
  %i.ct = trunc i64 %i.cs to i32                  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !36
  %.not90 = icmp eq ptr %i.by, %i.bh
  br i1 %.not90, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !36
  store i32 %i.ct, ptr %i.e, align 4, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !46
  %i.cy = add nuw nsw i64 %i.cs, 4294967295
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.da, i64 48, i1 false)
  store i32 %i.cn, ptr %i.by, align 4, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = getelementptr inbounds i8, ptr %i.b, i64 -624
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = or i64 %i.dd, -703687441776640
  store i64 %i.de, ptr %i.db, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre107 = load ptr, ptr %.phi.trans.insert106, align 8, !tbaa !46
  br label %bb.o

bb.n:                                             ; preds = %bb.e, %._crit_edge
  %i.df = add i32 %i.f, -1                        ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !9
  store i64 %i.dn, ptr %i.dj, align 8, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.pre-phi = phi i32 [ %i.cv, %bb.m ], [ %i.df, %bb.n ]
  %i.do = phi ptr [ %.pre107, %bb.m ], [ %i.dl, %bb.n ]
  %.180 = phi ptr [ %i.by, %bb.m ], [ %i.j, %bb.n ] ; 2 uses
  %i.dp = zext i32 %.pre-phi to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !9
  store i64 %i.dr, ptr %3, align 8, !tbaa !9
  %i.ds = getelementptr inbounds i8, ptr %.180, i64 -4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 %i.dt, ptr %i.du, align 8, !tbaa !49
  %i.dv = load i32, ptr %.180, align 4, !tbaa !37
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !74
  call fastcc void @rec_mm_arith(ptr noundef nonnull %i.b, ptr noundef %3, i32 noundef 8)
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.o
  %.sink = phi i32 [ 0, %bb.o ], [ %i.cn, %bb.l ]
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.sink, ptr %i.dx, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret ptr null
}

declare hidden void @lj_snap_shrink(ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_debug_line(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_mm_callcomp(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #0 {
  %4 = and i32 %2, 1
  %.not = icmp eq i32 %4, 0
  %5 = select i1 %.not, ptr @lj_cont_condt, ptr @lj_cont_condf ; 2 uses
  %6 = icmp eq ptr %5, @lj_cont_cat
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 172
  %9 = load i32, ptr %8, align 4, !tbaa !36
  br label %bb.a

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds i8, ptr %14, i64 -16
  %16 = load i64, ptr %15, align 8, !tbaa !9
  %17 = and i64 %16, 140737488355327
  %18 = inttoptr i64 %17 to ptr
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 32
  %20 = load i64, ptr %19, align 8, !tbaa !9
  %21 = inttoptr i64 %20 to ptr
  %22 = getelementptr inbounds i8, ptr %21, i64 -93
  %23 = load i8, ptr %22, align 1, !tbaa !60
  %24 = zext i8 %23 to i32
  br label %bb.a

bb.a:                                             ; preds = %10, %7
  %25 = phi i32 [ %9, %7 ], [ %24, %10 ]          ; 6 uses
  %26 = ptrtoint ptr %5 to i64
  %27 = tail call i32 @lj_ir_k64(ptr noundef nonnull %0, i32 noundef 28, i64 noundef %26) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %28 = zext i32 %25 to i64
  %29 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %28
  store i32 %27, ptr %29, align 4, !tbaa !37
  %30 = add i32 %25, 1
  %i.c = zext i32 %30 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  store i32 131072, ptr %i.d, align 4, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !31
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36   ; 3 uses
  %i.j = icmp ult i32 %i.i, %25
  br i1 %i.j, label %.lr.ph.preheader.i, label %rec_mm_prep.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.k = zext i32 %i.i to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.l
  %i.m = xor i32 %i.i, -1
  %i.n = add i32 %25, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.q, i1 false), !tbaa !37
  br label %rec_mm_prep.exit

rec_mm_prep.exit:                                 ; preds = %bb.a, %.lr.ph.preheader.i
  %i.r = add i32 %25, 2                           ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.s ; 3 uses
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = load ptr, ptr %31, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.s ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !50
  store i32 %i.z, ptr %i.t, align 4, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !74
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !9
  store i64 %i.ah, ptr %i.x, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !9
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !9
  store i64 %i.an, ptr %i.al, align 8, !tbaa !9
  tail call fastcc void @rec_call_setup(ptr noundef nonnull %0, i32 noundef %i.r, i64 noundef 2), !inline_history !77
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !31
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.e, align 4, !tbaa !31
  %i.aq = add i32 %25, 4                          ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  store ptr %i.at, ptr %i.a, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !35
  %i.aw = add i32 %i.av, %i.aq                    ; 2 uses
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !35
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !36
  %i.ay = add i32 %i.ax, %i.aw
  %i.az = icmp ugt i32 %i.ay, 249
  br i1 %i.az, label %bb.b, label %lj_record_call.exit

bb.b:                                             ; preds = %rec_mm_prep.exit
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9, !inline_history !77
  unreachable

lj_record_call.exit:                              ; preds = %rec_mm_prep.exit
  ret void
}

declare hidden void @lj_cont_condf() #2

declare hidden void @lj_cont_condt() #2

declare hidden i32 @lj_ir_kint64(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden i32 @lj_ffrecord_select_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @lj_meta_for(ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_opt_narrow_forl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_for_check(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %4 to i16                      ; 4 uses
  %i.b = and i32 %4, 32768
  %.not.not = icmp eq i32 %i.b, 0
  br i1 %.not.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 19                       ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @lj_ir_kint(ptr noundef %0, i32 noundef 0) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @lj_ir_knum_u64(ptr noundef %0, i64 noundef 0) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  %.not.not50 = icmp eq i32 %2, 0
  %i.g = shl nuw nsw i32 %2, 8
  %i.h = or i32 %1, %i.g
  %i.i = trunc i32 %i.h to i16
  %i.j = or i16 %i.i, 128
  %i.k = trunc i32 %i.f to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 5 uses
  store i16 %i.j, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 186 ; 5 uses
  store i16 %i.k, ptr %i.n, align 2, !tbaa !9
  %i.o = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  %i.p = icmp ne i32 %5, 0
  %or.cond = and i1 %i.c, %i.p
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %3, 32768
  %.not.not51 = icmp eq i32 %i.q, 0
  br i1 %.not.not51, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %.mask = and i32 %3, 32767
  %i.t = zext nneg i32 %.mask to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9    ; 4 uses
  br i1 %.not.not50, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.x = sub nuw nsw i32 2147483647, %i.v
  %i.y = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.x) #8
  %i.z = trunc i32 %i.y to i16
  store i16 659, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.z, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.j:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.v, 0
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ab = sub nsw i32 -2147483648, %i.v
  %i.ac = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef %i.ab) #8
  %i.ad = trunc i32 %i.ac to i16
  store i16 403, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.ad, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.l:                                             ; preds = %bb.f
  %i.ae = trunc i32 %3 to i16
  store i16 13715, ptr %i.m, align 4, !tbaa !9
  store i16 %i.a, ptr %i.l, align 8, !tbaa !9
  store i16 %i.ae, ptr %i.n, align 2, !tbaa !9
  %i.af = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  %i.ag = trunc i32 %i.af to i16
  store i16 4627, ptr %i.m, align 4, !tbaa !9
  store i16 %i.ag, ptr %i.l, align 8, !tbaa !9
  store i16 0, ptr %i.n, align 2, !tbaa !9
  br label %.sink.split

bb.m:                                             ; preds = %bb.a
  %i.ah = icmp eq i32 %5, 0
  %i.ai = icmp ne i32 %1, 19
  %or.cond3.not57 = or i1 %i.ai, %i.ah
  %i.aj = and i32 %3, 32768
  %.not.not52 = icmp eq i32 %i.aj, 0
  %or.cond54 = or i1 %.not.not52, %or.cond3.not57
  br i1 %or.cond54, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = trunc i32 %3 to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %.mask53 = and i32 %4, 32767
  %i.an = zext nneg i32 %.mask53 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !9
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.aq = select i1 %.not, i32 -2147483648, i32 2147483647
  %i.ar = sub nsw i32 %i.aq, %i.ap
  %i.as = select i1 %.not, i16 403, i16 659
  %i.at = tail call i32 @lj_ir_kint(ptr noundef %0, i32 noundef %i.ar) #8
  %i.au = trunc i32 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.as, ptr %i.aw, align 4, !tbaa !9
  store i16 %i.ak, ptr %i.av, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.au, ptr %i.ax, align 2, !tbaa !9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.i, %bb.k, %bb.l
  %i.ay = tail call i32 @lj_opt_fold(ptr noundef %0) #8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.e, %bb.j, %bb.h, %bb.m
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @check_call_unroll(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9
  %i.g = and i64 %i.f, 140737488355327
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 61
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = shl i8 %i.p, 6
  %sext = ashr i8 %i.q, 7
  %i.r = sext i8 %sext to i32
  %spec.select = add nsw i32 %i.l, %i.r           ; 2 uses
  %i.s = icmp sgt i32 %spec.select, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 -8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.047 = phi i32 [ %spec.select44, %bb.d ], [ 0, %.lr.ph.preheader ]
  %.13846 = phi i32 [ %i.av, %bb.d ], [ %spec.select, %.lr.ph.preheader ]
  %.03945 = phi ptr [ %i.am, %bb.d ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %i.u = load i64, ptr %.03945, align 8, !tbaa !9 ; 4 uses
  %i.v = and i64 %i.u, 7
  %i.w = icmp eq i64 %i.v, 2
  %i.x = sext i1 %i.w to i32
end_hunk_3
