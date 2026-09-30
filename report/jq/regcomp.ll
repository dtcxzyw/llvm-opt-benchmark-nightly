Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regcomp?download=true
inline.NumInlined: 305
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@compile_tree:bb.a
  %.not.3.i.i = icmp eq i32 %i.fr, 0
  br i1 %.not.3.i.i, label %bb.am, label %bitset_is_empty.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.fs = getelementptr inbounds nuw i8, ptr %.tr, i64 36
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !15
  %.not.4.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not.4.i.i, label %bb.an, label %bitset_is_empty.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !15
  %.not.5.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.5.i.i, label %bb.ao, label %bitset_is_empty.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.fw = getelementptr inbounds nuw i8, ptr %.tr, i64 44
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !15
  %.not.6.i.i = icmp eq i32 %i.fx, 0
  br i1 %.not.6.i.i, label %bitset_is_empty.exit.i, label %bitset_is_empty.exit.thread.i

bitset_is_empty.exit.i:                           ; preds = %bb.ao
  %i.fy = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !15
  %.not.7.i.not.i = icmp eq i32 %i.fz, 0
  br i1 %.not.7.i.not.i, label %bb.ap, label %bitset_is_empty.exit.thread.i

bb.ap:                                            ; preds = %bitset_is_empty.exit.i, %bb.ah
  %i.ga = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !97
  %i.gc = and i32 %i.gb, 1
  %.not44.i = icmp eq i32 %i.gc, 0
  %i.gd = select i1 %.not44.i, i32 15, i32 18
  %i.ge = load i32, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.gf = load i32, ptr %i.d, align 4, !tbaa !34  ; 3 uses
  %.not.i.i48.i = icmp ult i32 %i.ge, %i.gf
  br i1 %.not.i.i48.i, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gg = shl i32 %i.gf, 1                        ; 3 uses
  %i.gh = icmp eq i32 %i.gf, 0
  br i1 %i.gh, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gi = icmp slt i32 %i.gg, 1
  br i1 %i.gi, label %add_op.exit216, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gk = mul nuw nsw i64 %i.gj, 24
  %i.gl = load ptr, ptr %1, align 8, !tbaa !24
  %i.gm = tail call ptr @realloc(ptr noundef %i.gl, i64 noundef %i.gk) #25 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %add_op.exit216, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.gm, ptr %1, align 8, !tbaa !24
  %i.go = shl nuw nsw i64 %i.gj, 2
  %i.gp = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.gq = tail call ptr @realloc(ptr noundef %i.gp, i64 noundef %i.go) #25 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %add_op.exit216, label %.sink.split.i.i.i49.i

.sink.split.i.i.i49.i:                            ; preds = %bb.at
  store ptr %i.gq, ptr %i.e, align 8, !tbaa !26
  store i32 %i.gg, ptr %i.d, align 4, !tbaa !34
  %i.gs = load i32, ptr %i.c, align 8, !tbaa !25
  br label %bb.au

bb.au:                                            ; preds = %.sink.split.i.i.i49.i, %bb.aq, %bb.ap
  %i.gt = phi i32 [ %i.gs, %.sink.split.i.i.i49.i ], [ %i.ge, %bb.aq ], [ %i.ge, %bb.ap ] ; 2 uses
  %i.gu = load ptr, ptr %1, align 8, !tbaa !24
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.gu, i64 %i.gv ; 2 uses
  store ptr %i.gw, ptr %i.b, align 8, !tbaa !35
  %i.gx = add i32 %i.gt, 1
  store i32 %i.gx, ptr %i.c, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i8 0, i64 24, i1 false)
  %i.gy = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.gz = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %i.ha = load ptr, ptr %1, align 8, !tbaa !24
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = sdiv exact i64 %i.hd, 6
  %i.hf = getelementptr inbounds i8, ptr %i.gy, i64 %i.he
  store i32 %i.gd, ptr %i.hf, align 4, !tbaa !15
  %i.hg = load ptr, ptr %i.dp, align 8, !tbaa !96 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !218
  %i.hj = zext i32 %i.hi to i64                   ; 2 uses
  %i.hk = tail call noalias ptr @malloc(i64 noundef %i.hj) #26 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %add_op.exit216, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hm = load ptr, ptr %i.hg, align 8, !tbaa !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hk, ptr align 1 %i.hm, i64 %i.hj, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hk, ptr %i.hn, align 8, !tbaa !27
  br label %add_op.exit216

bitset_is_empty.exit.thread.i:                    ; preds = %bitset_is_empty.exit.i, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.ho = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !97
  %i.hq = and i32 %i.hp, 1
  %.not42.i = icmp eq i32 %i.hq, 0
  %i.hr = select i1 %.not42.i, i32 16, i32 19
  %i.hs = load i32, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.ht = load i32, ptr %i.d, align 4, !tbaa !34  ; 3 uses
  %.not.i.i52.i = icmp ult i32 %i.hs, %i.ht
  br i1 %.not.i.i52.i, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %bitset_is_empty.exit.thread.i
  %i.hu = shl i32 %i.ht, 1                        ; 3 uses
  %i.hv = icmp eq i32 %i.ht, 0
  br i1 %i.hv, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hw = icmp slt i32 %i.hu, 1
  br i1 %i.hw, label %add_op.exit216, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hx = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hy = mul nuw nsw i64 %i.hx, 24
  %i.hz = load ptr, ptr %1, align 8, !tbaa !24
  %i.ia = tail call ptr @realloc(ptr noundef %i.hz, i64 noundef %i.hy) #25 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %add_op.exit216, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store ptr %i.ia, ptr %1, align 8, !tbaa !24
  %i.ic = shl nuw nsw i64 %i.hx, 2
  %i.id = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.ie = tail call ptr @realloc(ptr noundef %i.id, i64 noundef %i.ic) #25 ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %add_op.exit216, label %.sink.split.i.i.i53.i

.sink.split.i.i.i53.i:                            ; preds = %bb.az
  store ptr %i.ie, ptr %i.e, align 8, !tbaa !26
  store i32 %i.hu, ptr %i.d, align 4, !tbaa !34
  %i.ig = load i32, ptr %i.c, align 8, !tbaa !25
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i.i.i53.i, %bb.aw, %bitset_is_empty.exit.thread.i
  %i.ih = phi i32 [ %i.ig, %.sink.split.i.i.i53.i ], [ %i.hs, %bb.aw ], [ %i.hs, %bitset_is_empty.exit.thread.i ] ; 2 uses
  %i.ii = load ptr, ptr %1, align 8, !tbaa !24
  %i.ij = zext i32 %i.ih to i64
  %i.ik = getelementptr inbounds nuw [24 x i8], ptr %i.ii, i64 %i.ij ; 2 uses
  store ptr %i.ik, ptr %i.b, align 8, !tbaa !35
  %i.il = add i32 %i.ih, 1
  store i32 %i.il, ptr %i.c, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i8 0, i64 24, i1 false)
  %i.im = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.in = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %i.io = load ptr, ptr %1, align 8, !tbaa !24
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = sdiv exact i64 %i.ir, 6
  %i.it = getelementptr inbounds i8, ptr %i.im, i64 %i.is
  store i32 %i.hr, ptr %i.it, align 4, !tbaa !15
  %i.iu = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26
  %i.iv = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store ptr %i.iu, ptr %i.iv, align 8, !tbaa !27
  %i.iw = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !27 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %add_op.exit216, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.iy, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.fk, i64 32, i1 false)
  %i.ja = load ptr, ptr %i.dp, align 8, !tbaa !96 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !218
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = tail call noalias ptr @malloc(i64 noundef %i.jd) #26 ; 3 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %add_op.exit216, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !99
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.je, ptr align 1 %i.jg, i64 %i.jd, i1 false)
  %i.jh = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr %i.je, ptr %i.ji, align 8, !tbaa !27
  br label %add_op.exit216

bb.bd:                                            ; preds = %tailrecurse
  %i.jj = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !27
  switch i32 %i.jk, label %add_op.exit216 [
    i32 -1, label %bb.be
    i32 12, label %bb.bk
  ]

bb.be:                                            ; preds = %bb.bd
  %i.jl = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !27
  %3 = and i32 %i.jm, 4194304
  %.not187 = icmp eq i32 %3, 0
  %4 = select i1 %.not187, i32 20, i32 21
  %i.jn = load i32, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.jo = load i32, ptr %i.d, align 4, !tbaa !34  ; 3 uses
  %.not.i.i213 = icmp ult i32 %i.jn, %i.jo
  br i1 %.not.i.i213, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jp = shl i32 %i.jo, 1                        ; 3 uses
  %i.jq = icmp eq i32 %i.jo, 0
  br i1 %i.jq, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jr = icmp slt i32 %i.jp, 1
  br i1 %i.jr, label %add_op.exit216, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.js = zext nneg i32 %i.jp to i64              ; 2 uses
  %i.jt = mul nuw nsw i64 %i.js, 24
  %i.ju = load ptr, ptr %1, align 8, !tbaa !24
  %i.jv = tail call ptr @realloc(ptr noundef %i.ju, i64 noundef %i.jt) #25 ; 2 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %add_op.exit216, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.jv, ptr %1, align 8, !tbaa !24
  %i.jx = shl nuw nsw i64 %i.js, 2
  %i.jy = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.jz = tail call ptr @realloc(ptr noundef %i.jy, i64 noundef %i.jx) #25 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %add_op.exit216, label %.sink.split.i.i.i214

.sink.split.i.i.i214:                             ; preds = %bb.bi
  store ptr %i.jz, ptr %i.e, align 8, !tbaa !26
  store i32 %i.jp, ptr %i.d, align 4, !tbaa !34
  %i.kb = load i32, ptr %i.c, align 8, !tbaa !25
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split.i.i.i214, %bb.bf, %bb.be
  %i.kc = phi i32 [ %i.kb, %.sink.split.i.i.i214 ], [ %i.jn, %bb.bf ], [ %i.jn, %bb.be ] ; 2 uses
  %i.kd = load ptr, ptr %1, align 8, !tbaa !24
  %i.ke = zext i32 %i.kc to i64
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.kd, i64 %i.ke ; 2 uses
  store ptr %i.kf, ptr %i.b, align 8, !tbaa !35
  %i.kg = add i32 %i.kc, 1
  store i32 %i.kg, ptr %i.c, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i8 0, i64 24, i1 false)
  %i.kh = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.ki = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.kj = load ptr, ptr %1, align 8, !tbaa !24
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = sdiv exact i64 %i.km, 6
  %i.ko = getelementptr inbounds i8, ptr %i.kh, i64 %i.kn
  store i32 %4, ptr %i.ko, align 4, !tbaa !15
  br label %add_op.exit216

bb.bk:                                            ; preds = %bb.bd
  %i.kp = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !27
  %i.kr = icmp eq i32 %i.kq, 0
  %i.ks = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !27
  %.not186 = icmp eq i32 %i.kt, 0                 ; 2 uses
  %i.ku = select i1 %.not186, i32 26, i32 28
  %i.kv = select i1 %.not186, i32 27, i32 29
  %.0138 = select i1 %i.kr, i32 %i.ku, i32 %i.kv
  %i.kw = load i32, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.kx = load i32, ptr %i.d, align 4, !tbaa !34  ; 3 uses
  %.not.i.i217 = icmp ult i32 %i.kw, %i.kx
  br i1 %.not.i.i217, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ky = shl i32 %i.kx, 1                        ; 3 uses
  %i.kz = icmp eq i32 %i.kx, 0
  br i1 %i.kz, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.la = icmp slt i32 %i.ky, 1
  br i1 %i.la, label %add_op.exit216, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lb = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.lc = mul nuw nsw i64 %i.lb, 24
  %i.ld = load ptr, ptr %1, align 8, !tbaa !24
  %i.le = tail call ptr @realloc(ptr noundef %i.ld, i64 noundef %i.lc) #25 ; 2 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %add_op.exit216, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr %i.le, ptr %1, align 8, !tbaa !24
  %i.lg = shl nuw nsw i64 %i.lb, 2
  %i.lh = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.li = tail call ptr @realloc(ptr noundef %i.lh, i64 noundef %i.lg) #25 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %add_op.exit216, label %.sink.split.i.i.i218

.sink.split.i.i.i218:                             ; preds = %bb.bo
  store ptr %i.li, ptr %i.e, align 8, !tbaa !26
  store i32 %i.ky, ptr %i.d, align 4, !tbaa !34
  %i.lk = load i32, ptr %i.c, align 8, !tbaa !25
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i.i.i218, %bb.bl, %bb.bk
  %i.ll = phi i32 [ %i.lk, %.sink.split.i.i.i218 ], [ %i.kw, %bb.bl ], [ %i.kw, %bb.bk ] ; 2 uses
  %i.lm = load ptr, ptr %1, align 8, !tbaa !24
  %i.ln = zext i32 %i.ll to i64
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %i.lm, i64 %i.ln ; 2 uses
  store ptr %i.lo, ptr %i.b, align 8, !tbaa !35
  %i.lp = add i32 %i.ll, 1
  store i32 %i.lp, ptr %i.c, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, i8 0, i64 24, i1 false)
  %i.lq = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.lr = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.ls = load ptr, ptr %1, align 8, !tbaa !24
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = sdiv exact i64 %i.lv, 6
  %i.lx = getelementptr inbounds i8, ptr %i.lq, i64 %i.lw
  store i32 %.0138, ptr %i.lx, align 4, !tbaa !15
  br label %add_op.exit216

bb.bq:                                            ; preds = %tailrecurse
  %i.ly = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !27 ; 5 uses
  %i.ma = and i32 %i.lz, 131072
  %.not = icmp eq i32 %i.ma, 0
  %i.mb = and i32 %i.lz, 8192
  %.not172 = icmp eq i32 %i.mb, 0                 ; 2 uses
  br i1 %.not, label %bb.cd, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mc = load i32, ptr %i.c, align 8, !tbaa !25  ; 5 uses
  %i.md = load i32, ptr %i.d, align 4, !tbaa !34  ; 5 uses
  %.not.i.i225 = icmp ult i32 %i.mc, %i.md        ; 2 uses
  br i1 %.not172, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  br i1 %.not.i.i225, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.me = shl i32 %i.md, 1                        ; 3 uses
  %i.mf = icmp eq i32 %i.md, 0
  br i1 %i.mf, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mg = icmp slt i32 %i.me, 1
  br i1 %i.mg, label %add_op.exit216, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mh = zext nneg i32 %i.me to i64              ; 2 uses
  %i.mi = mul nuw nsw i64 %i.mh, 24
  %i.mj = load ptr, ptr %1, align 8, !tbaa !24
  %i.mk = tail call ptr @realloc(ptr noundef %i.mj, i64 noundef %i.mi) #25 ; 2 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %add_op.exit216, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store ptr %i.mk, ptr %1, align 8, !tbaa !24
  %i.mm = shl nuw nsw i64 %i.mh, 2
  %i.mn = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.mo = tail call ptr @realloc(ptr noundef %i.mn, i64 noundef %i.mm) #25 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %add_op.exit216, label %.sink.split.i.i.i222

.sink.split.i.i.i222:                             ; preds = %bb.bw
  store ptr %i.mo, ptr %i.e, align 8, !tbaa !26
  store i32 %i.me, ptr %i.d, align 4, !tbaa !34
  %i.mq = load i32, ptr %i.c, align 8, !tbaa !25
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split.i.i.i222, %bb.bt, %bb.bs
  %i.mr = phi i32 [ %i.mq, %.sink.split.i.i.i222 ], [ %i.mc, %bb.bt ], [ %i.mc, %bb.bs ] ; 2 uses
  %i.ms = load ptr, ptr %1, align 8, !tbaa !24
  %i.mt = zext i32 %i.mr to i64
  %i.mu = getelementptr inbounds nuw [24 x i8], ptr %i.ms, i64 %i.mt ; 2 uses
  store ptr %i.mu, ptr %i.b, align 8, !tbaa !35
  %i.mv = add i32 %i.mr, 1
  store i32 %i.mv, ptr %i.c, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i8 0, i64 24, i1 false)
  %i.mw = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.mx = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %i.my = load ptr, ptr %1, align 8, !tbaa !24
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = sdiv exact i64 %i.nb, 6
  %i.nd = getelementptr inbounds i8, ptr %i.mw, i64 %i.nc
  store i32 50, ptr %i.nd, align 4, !tbaa !15
  %i.ne = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !219
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mx, i64 20
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !27
  br label %bb.cq

bb.by:                                            ; preds = %bb.br
  br i1 %.not.i.i225, label %add_op.exit228, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nh = shl i32 %i.md, 1                        ; 3 uses
  %i.ni = icmp eq i32 %i.md, 0
  br i1 %i.ni, label %add_op.exit228, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nj = icmp slt i32 %i.nh, 1
  br i1 %i.nj, label %add_op.exit216, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nk = zext nneg i32 %i.nh to i64              ; 2 uses
  %i.nl = mul nuw nsw i64 %i.nk, 24
  %i.nm = load ptr, ptr %1, align 8, !tbaa !24
  %i.nn = tail call ptr @realloc(ptr noundef %i.nm, i64 noundef %i.nl) #25 ; 2 uses
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %add_op.exit216, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.nn, ptr %1, align 8, !tbaa !24
  %i.np = shl nuw nsw i64 %i.nk, 2
  %i.nq = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.nr = tail call ptr @realloc(ptr noundef %i.nq, i64 noundef %i.np) #25 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %add_op.exit216, label %.sink.split.i.i.i226

.sink.split.i.i.i226:                             ; preds = %bb.cc
  store ptr %i.nr, ptr %i.e, align 8, !tbaa !26
  store i32 %i.nh, ptr %i.d, align 4, !tbaa !34
  %i.nt = load i32, ptr %i.c, align 8, !tbaa !25
  br label %add_op.exit228

add_op.exit228:                                   ; preds = %bb.by, %bb.bz, %.sink.split.i.i.i226
  %i.nu = phi i32 [ %i.nt, %.sink.split.i.i.i226 ], [ %i.mc, %bb.bz ], [ %i.mc, %bb.by ] ; 2 uses
  %i.nv = load ptr, ptr %1, align 8, !tbaa !24
  %i.nw = zext i32 %i.nu to i64
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %i.nv, i64 %i.nw ; 2 uses
  store ptr %i.nx, ptr %i.b, align 8, !tbaa !35
  %i.ny = add i32 %i.nu, 1
  store i32 %i.ny, ptr %i.c, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nx, i8 0, i64 24, i1 false)
  %i.nz = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.oa = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.ob = load ptr, ptr %1, align 8, !tbaa !24
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = sdiv exact i64 %i.oe, 6
  %i.og = getelementptr inbounds i8, ptr %i.nz, i64 %i.of
  store i32 49, ptr %i.og, align 4, !tbaa !15
  br label %bb.cq

bb.cd:                                            ; preds = %bb.bq
  br i1 %.not172, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oh = and i32 %i.lz, 2097152
end_hunk_0
begin_hunk_1_@compile_tree:bb.a
  store i32 %i.qy, ptr %i.ra, align 4, !tbaa !15
  %indvars.iv.next529.3 = add nsw i64 %indvars.iv528, -4 ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv.next529.3
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !15
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  store i32 %i.rc, ptr %i.re, align 4, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond533.not.3 = icmp eq i64 %indvars.iv.next.3, %i.px
  br i1 %exitcond533.not.3, label %add_op.exit216, label %.lr.ph462, !llvm.loop !208

bb.cu:                                            ; preds = %tailrecurse
  %i.rf = load i32, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.rg = load i32, ptr %i.d, align 4, !tbaa !34  ; 3 uses
  %.not.i.i.i229 = icmp ult i32 %i.rf, %i.rg
  br i1 %.not.i.i.i229, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.rh = shl i32 %i.rg, 1                        ; 3 uses
  %i.ri = icmp eq i32 %i.rg, 0
  br i1 %i.ri, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rj = icmp slt i32 %i.rh, 1
  br i1 %i.rj, label %add_op.exit216, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.rk = zext nneg i32 %i.rh to i64              ; 2 uses
  %i.rl = mul nuw nsw i64 %i.rk, 24
  %i.rm = load ptr, ptr %1, align 8, !tbaa !24
  %i.rn = tail call ptr @realloc(ptr noundef %i.rm, i64 noundef %i.rl) #25 ; 2 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %add_op.exit216, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr %i.rn, ptr %1, align 8, !tbaa !24
  %i.rp = shl nuw nsw i64 %i.rk, 2
  %i.rq = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.rr = tail call ptr @realloc(ptr noundef %i.rq, i64 noundef %i.rp) #25 ; 2 uses
  %i.rs = icmp eq ptr %i.rr, null
  br i1 %i.rs, label %add_op.exit216, label %.sink.split.i.i.i.i230

.sink.split.i.i.i.i230:                           ; preds = %bb.cy
  store ptr %i.rr, ptr %i.e, align 8, !tbaa !26
  store i32 %i.rh, ptr %i.d, align 4, !tbaa !34
  %i.rt = load i32, ptr %i.c, align 8, !tbaa !25
  br label %bb.cz

bb.cz:                                            ; preds = %.sink.split.i.i.i.i230, %bb.cv, %bb.cu
  %i.ru = phi i32 [ %i.rt, %.sink.split.i.i.i.i230 ], [ %i.rf, %bb.cv ], [ %i.rf, %bb.cu ] ; 2 uses
  %i.rv = load ptr, ptr %1, align 8, !tbaa !24
  %i.rw = zext i32 %i.ru to i64
  %i.rx = getelementptr inbounds nuw [24 x i8], ptr %i.rv, i64 %i.rw ; 2 uses
  store ptr %i.rx, ptr %i.b, align 8, !tbaa !35
  %i.ry = add i32 %i.ru, 1
  store i32 %i.ry, ptr %i.c, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rx, i8 0, i64 24, i1 false)
  %i.rz = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.sa = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %i.sb = load ptr, ptr %1, align 8, !tbaa !24
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = sdiv exact i64 %i.se, 6
  %i.sg = getelementptr inbounds i8, ptr %i.rz, i64 %i.sf
  store i32 80, ptr %i.sg, align 4, !tbaa !15
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  store i32 0, ptr %i.sh, align 8, !tbaa !27
  %i.si = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load ptr, ptr %1, align 8, !tbaa !24
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = sub i64 %i.sl, %i.sm
  %i.so = trunc i64 %i.sn to i32
  %i.sp = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !90 ; 6 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !108
  %i.st = load i32, ptr %i.sq, align 8, !tbaa !88 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.sq, i64 4 ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !89 ; 2 uses
  %.not.i.i231 = icmp slt i32 %i.st, %i.sv
  br i1 %.not.i.i231, label %._crit_edge.i.i, label %bb.da

._crit_edge.i.i:                                  ; preds = %bb.cz
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !72
  br label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.sw = shl nsw i32 %i.sv, 1                    ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !72
  %i.sz = sext i32 %i.sw to i64
  %i.ta = shl nsw i64 %i.sz, 4
  %i.tb = tail call ptr @realloc(ptr noundef %i.sy, i64 noundef %i.ta) #25 ; 3 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %add_op.exit216, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 %i.sw, ptr %i.su, align 4, !tbaa !89
  store ptr %i.tb, ptr %i.sx, align 8, !tbaa !72
  %.pre19.i.i = load i32, ptr %i.sq, align 8, !tbaa !88
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %._crit_edge.i.i
  %i.td = phi i32 [ %i.st, %._crit_edge.i.i ], [ %.pre19.i.i, %bb.db ] ; 2 uses
  %i.te = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.tb, %bb.db ]
  %i.tf = sext i32 %i.td to i64
  %i.tg = getelementptr inbounds [16 x i8], ptr %i.te, i64 %i.tf ; 2 uses
  store i32 %i.so, ptr %i.tg, align 8, !tbaa !110
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  store ptr %i.ss, ptr %i.th, align 8, !tbaa !111
  %i.ti = add nsw i32 %i.td, 1
  store i32 %i.ti, ptr %i.sq, align 8, !tbaa !88
  br label %add_op.exit216

bb.dd:                                            ; preds = %tailrecurse
  %i.tj = getelementptr inbounds nuw i8, ptr %.tr, i64 28 ; 5 uses
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !113
  %i.tl = icmp eq i32 %i.tk, -1
  %i.tm = getelementptr inbounds nuw i8, ptr %.tr, i64 36
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !114 ; 5 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.tr, i64 16 ; 8 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !115
  %i.tq = tail call fastcc i32 @compile_length_tree(ptr noundef %i.tp, ptr noundef %1, ptr noundef nonnull %2), !inline_history !209 ; 22 uses
  %i.tr = icmp slt i32 %i.tq, 0
  br i1 %i.tr, label %add_op.exit216, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ts = icmp eq i32 %i.tq, 0
  br i1 %i.ts, label %add_op.exit216, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.tt = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !116
  %.not.i267 = icmp eq i32 %i.tu, 0               ; 3 uses
  br i1 %.not.i267, label %is_anychar_infinite_greedy.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tv = load i32, ptr %i.tj, align 4, !tbaa !113
  %i.tw = icmp eq i32 %i.tv, -1
  br i1 %i.tw, label %bb.dh, label %is_anychar_infinite_greedy.exit.thread

bb.dh:                                            ; preds = %bb.dg
  %i.tx = load ptr, ptr %i.to, align 8, !tbaa !115 ; 4 uses
  %i.ty = load i32, ptr %i.tx, align 8, !tbaa !27
  %i.tz = icmp eq i32 %i.ty, 2
  br i1 %i.tz, label %bb.di, label %is_anychar_infinite_greedy.exit.thread

bb.di:                                            ; preds = %bb.dh
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !27
  %i.uc = icmp eq i32 %i.ub, -1
  br i1 %i.uc, label %is_anychar_infinite_greedy.exit, label %is_anychar_infinite_greedy.exit.thread

is_anychar_infinite_greedy.exit:                  ; preds = %bb.di
  %i.ud = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ue = load i32, ptr %i.ud, align 8, !tbaa !117 ; 5 uses
  %i.uf = icmp slt i32 %i.ue, 2
  br i1 %i.uf, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %is_anychar_infinite_greedy.exit
  %i.ug = udiv i32 -1, %i.ue
  %i.uh = icmp samesign ult i32 %i.tq, %i.ug
  %i.ui = mul i32 %i.ue, %i.tq
  %i.uj = icmp ult i32 %i.ui, 11
  %or.cond345 = and i1 %i.uj, %i.uh
  br i1 %or.cond345, label %.lr.ph446.preheader, label %is_anychar_infinite_greedy.exit.thread

bb.dk:                                            ; preds = %is_anychar_infinite_greedy.exit
  %i.uk = icmp eq i32 %i.ue, 1
  br i1 %i.uk, label %.lr.ph446.preheader, label %._crit_edge447

.lr.ph446.preheader:                              ; preds = %bb.dj, %bb.dk
  br label %.lr.ph446

bb.dl:                                            ; preds = %.lr.ph446
  %i.ul = add nuw nsw i32 %.0.i260444, 1          ; 2 uses
  %exitcond524.not = icmp eq i32 %i.ul, %i.ue
  br i1 %exitcond524.not, label %._crit_edge447.loopexit, label %.lr.ph446, !llvm.loop !210

.lr.ph446:                                        ; preds = %.lr.ph446.preheader, %bb.dl
  %.0.i260444 = phi i32 [ %i.ul, %bb.dl ], [ 0, %.lr.ph446.preheader ]
  %i.um = tail call fastcc i32 @compile_tree(ptr noundef nonnull %i.tx, ptr noundef %1, ptr noundef nonnull %2), !inline_history !211 ; 2 uses
  %.not.i262 = icmp eq i32 %i.um, 0
  br i1 %.not.i262, label %bb.dl, label %add_op.exit216

._crit_edge447.loopexit:                          ; preds = %bb.dl
  %.pre1025 = load ptr, ptr %i.to, align 8, !tbaa !115
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %._crit_edge447.loopexit, %bb.dk
  %i.un = phi ptr [ %.pre1025, %._crit_edge447.loopexit ], [ %i.tx, %bb.dk ]
  %i.uo = getelementptr inbounds nuw i8, ptr %.tr, i64 48 ; 2 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !118
  %.not251.i = icmp eq ptr %i.up, null
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 4
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !27
  %5 = and i32 %i.ur, 4194304
  %.not252.i = icmp eq i32 %5, 0                  ; 2 uses
  br i1 %.not251.i, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %._crit_edge447
  %6 = select i1 %.not252.i, i32 24, i32 25
  %i.us = tail call fastcc i32 @add_op(ptr noundef %1, i32 noundef %6), !inline_history !209 ; 2 uses
  %.not254.i = icmp eq i32 %i.us, 0
  br i1 %.not254.i, label %bb.dn, label %add_op.exit216

bb.dn:                                            ; preds = %bb.dm
  %i.ut = load ptr, ptr %i.uo, align 8, !tbaa !118
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !27
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !27
  %i.ux = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  store i8 %i.uw, ptr %i.uy, align 8, !tbaa !27
  br label %add_op.exit216

bb.do:                                            ; preds = %._crit_edge447
  %7 = select i1 %.not252.i, i32 22, i32 23
  %i.uz = tail call fastcc i32 @add_op(ptr noundef %1, i32 noundef %7), !inline_history !209
  br label %add_op.exit216

is_anychar_infinite_greedy.exit.thread:           ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df
  br i1 %i.tl, label %bb.dp, label %.thread305

bb.dp:                                            ; preds = %is_anychar_infinite_greedy.exit.thread
  %i.va = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !117 ; 5 uses
  %i.vc = icmp slt i32 %i.vb, 2
  br i1 %i.vc, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.vd = udiv i32 -1, %i.vb
  %i.ve = icmp samesign ult i32 %i.tq, %i.vd
  %i.vf = mul i32 %i.vb, %i.tq
  %i.vg = icmp ult i32 %i.vf, 11
  %or.cond347 = and i1 %i.vg, %i.ve
  br i1 %or.cond347, label %.thread297.thread, label %len_multiply_cmp.exit259.thread

bb.dr:                                            ; preds = %bb.dp
  %i.vh = getelementptr inbounds nuw i8, ptr %.tr, i64 32 ; 3 uses
  %.not222.i.le436 = icmp eq i32 %i.tn, 0
  %i.vi = add nuw nsw i32 %i.tq, 2
  %spec.select.i.le423 = select i1 %.not222.i.le436, i32 %i.tq, i32 %i.vi ; 3 uses
  %i.vj = icmp eq i32 %i.vb, 1                    ; 2 uses
  %i.vk = icmp samesign ugt i32 %i.tq, 10
  %or.cond.i = and i1 %i.vk, %i.vj
  br i1 %or.cond.i, label %bb.ds, label %.thread297

bb.ds:                                            ; preds = %bb.dr
  %i.vl = tail call fastcc i32 @add_op(ptr noundef %1, i32 noundef 58), !inline_history !209 ; 2 uses
  %.not233.i = icmp eq i32 %i.vl, 0
  br i1 %.not233.i, label %compile_tree_n_times.exit256.thread.sink.split, label %add_op.exit216

compile_tree_n_times.exit256.thread.sink.split:   ; preds = %bb.ds
  %i.vm = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store i32 2, ptr %i.vn, align 8, !tbaa !27
  br label %compile_tree_n_times.exit256.thread

.thread297.thread:                                ; preds = %bb.dq
  %i.vo = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %.not222.i.le438 = icmp eq i32 %i.tn, 0
  %i.vp = add nuw nsw i32 %i.tq, 2
  %spec.select.i.le419 = select i1 %.not222.i.le438, i32 %i.tq, i32 %i.vp
  br label %.lr.ph458.preheader

.thread297:                                       ; preds = %bb.dr
  br i1 %i.vj, label %.lr.ph458.preheader, label %compile_tree_n_times.exit256.thread

.lr.ph458.preheader:                              ; preds = %.thread297.thread, %.thread297
  %i.vq = phi ptr [ %i.vo, %.thread297.thread ], [ %i.vh, %.thread297 ]
  %spec.select.i396719 = phi i32 [ %spec.select.i.le419, %.thread297.thread ], [ %spec.select.i.le423, %.thread297 ]
  %i.vr = load ptr, ptr %i.to, align 8, !tbaa !115
  br label %.lr.ph458

bb.dt:                                            ; preds = %.lr.ph458
  %i.vs = add nuw nsw i32 %.0.i253457, 1          ; 2 uses
  %exitcond527.not = icmp eq i32 %i.vs, %i.vb
  br i1 %exitcond527.not, label %compile_tree_n_times.exit256.thread, label %.lr.ph458, !llvm.loop !210

.lr.ph458:                                        ; preds = %.lr.ph458.preheader, %bb.dt
  %.0.i253457 = phi i32 [ %i.vs, %bb.dt ], [ 0, %.lr.ph458.preheader ]
  %i.vt = tail call fastcc i32 @compile_tree(ptr noundef %i.vr, ptr noundef %1, ptr noundef nonnull %2), !inline_history !211 ; 2 uses
  %.not.i255 = icmp eq i32 %i.vt, 0
  br i1 %.not.i255, label %bb.dt, label %add_op.exit216

compile_tree_n_times.exit256.thread:              ; preds = %bb.dt, %compile_tree_n_times.exit256.thread.sink.split, %.thread297
  %i.vu = phi ptr [ %i.vh, %.thread297 ], [ %i.vh, %compile_tree_n_times.exit256.thread.sink.split ], [ %i.vq, %bb.dt ]
  %spec.select.i395 = phi i32 [ %spec.select.i.le423, %.thread297 ], [ %spec.select.i.le423, %compile_tree_n_times.exit256.thread.sink.split ], [ %spec.select.i396719, %bb.dt ] ; 6 uses
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !116
  %.not237.i = icmp eq i32 %i.vv, 0
  br i1 %.not237.i, label %bb.ee, label %bb.du

bb.du:                                            ; preds = %compile_tree_n_times.exit256.thread
  %i.vw = getelementptr inbounds nuw i8, ptr %.tr, i64 40 ; 2 uses
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !119
  %.not241.i = icmp eq ptr %i.vx, null
  br i1 %.not241.i, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.vy = tail call fastcc i32 @add_op(ptr noundef %1, i32 noundef 63), !inline_history !209 ; 2 uses
  %.not247.i = icmp eq i32 %i.vy, 0
  br i1 %.not247.i, label %bb.dw, label %add_op.exit216

bb.dw:                                            ; preds = %bb.dv
  %i.vz = add nuw nsw i32 %spec.select.i395, 2
  %i.wa = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store i32 %i.vz, ptr %i.wb, align 8, !tbaa !27
  %i.wc = load ptr, ptr %i.vw, align 8, !tbaa !119
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !27
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !27
  %i.wg = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 12
  store i8 %i.wf, ptr %i.wh, align 4, !tbaa !27
  %i.wi = tail call fastcc i32 @compile_quant_body_with_empty_check(ptr noundef nonnull %.tr, ptr noundef %1, ptr noundef nonnull %2), !inline_history !209 ; 2 uses
  %.not248.i = icmp eq i32 %i.wi, 0
  br i1 %.not248.i, label %bb.ec, label %add_op.exit216

bb.dx:                                            ; preds = %bb.du
  %i.wj = getelementptr inbounds nuw i8, ptr %.tr, i64 48 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !118
  %.not242.i = icmp eq ptr %i.wk, null
  br i1 %.not242.i, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wl = tail call fastcc i32 @add_op(ptr noundef %1, i32 noundef 64), !inline_history !209 ; 2 uses
  %.not245.i = icmp eq i32 %i.wl, 0
  br i1 %.not245.i, label %bb.dz, label %add_op.exit216

bb.dz:                                            ; preds = %bb.dy
  %i.wm = add nuw nsw i32 %spec.select.i395, 2
  %i.wn = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  store i32 %i.wm, ptr %i.wo, align 8, !tbaa !27
  %i.wp = load ptr, ptr %i.wj, align 8, !tbaa !118
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !27
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !27
  %i.wt = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 12
  store i8 %i.ws, ptr %i.wu, align 4, !tbaa !27
  %i.wv = tail call fastcc i32 @compile_quant_body_with_empty_check(ptr noundef nonnull %.tr, ptr noundef %1, ptr noundef nonnull %2), !inline_history !209 ; 2 uses
  %.not246.i = icmp eq i32 %i.wv, 0
  br i1 %.not246.i, label %bb.ec, label %add_op.exit216

bb.ea:                                            ; preds = %bb.dx
  %i.ww = tail call fastcc i32 @add_op(ptr noundef %1, i32 noundef 59), !inline_history !209 ; 2 uses
  %.not243.i = icmp eq i32 %i.ww, 0
  br i1 %.not243.i, label %bb.eb, label %add_op.exit216

bb.eb:                                            ; preds = %bb.ea
  %i.wx = add nuw nsw i32 %spec.select.i395, 2
  %i.wy = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  store i32 %i.wx, ptr %i.wz, align 8, !tbaa !27
  %i.xa = tail call fastcc i32 @compile_quant_body_with_empty_check(ptr noundef nonnull %.tr, ptr noundef %1, ptr noundef nonnull %2), !inline_history !209 ; 2 uses
  %.not244.i = icmp eq i32 %i.xa, 0
  br i1 %.not244.i, label %bb.ec, label %add_op.exit216

bb.ec:                                            ; preds = %bb.eb, %bb.dz, %bb.dw
  %i.xb = tail call fastcc i32 @add_op(ptr noundef nonnull %1, i32 noundef 58), !inline_history !209 ; 2 uses
  %.not249.i = icmp eq i32 %i.xb, 0
  br i1 %.not249.i, label %bb.ed, label %add_op.exit216

bb.ed:                                            ; preds = %bb.ec
  %.0.i234 = xor i32 %spec.select.i395, -1
  %i.xc = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  store i32 %.0.i234, ptr %i.xd, align 8, !tbaa !27
  br label %add_op.exit216

bb.ee:                                            ; preds = %compile_tree_n_times.exit256.thread
  %i.xe = tail call fastcc i32 @add_op(ptr noundef %1, i32 noundef 58), !inline_history !209 ; 2 uses
  %.not238.i = icmp eq i32 %i.xe, 0
  br i1 %.not238.i, label %bb.ef, label %add_op.exit216

bb.ef:                                            ; preds = %bb.ee
  %i.xf = add nuw nsw i32 %spec.select.i395, 1
  %i.xg = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  store i32 %i.xf, ptr %i.xh, align 8, !tbaa !27
  %i.xi = tail call fastcc i32 @compile_quant_body_with_empty_check(ptr noundef nonnull %.tr, ptr noundef %1, ptr noundef nonnull %2), !inline_history !209 ; 2 uses
  %.not239.i = icmp eq i32 %i.xi, 0
  br i1 %.not239.i, label %bb.eg, label %add_op.exit216

bb.eg:                                            ; preds = %bb.ef
  %i.xj = tail call fastcc i32 @add_op(ptr noundef nonnull %1, i32 noundef 59), !inline_history !209 ; 2 uses
  %.not240.i = icmp eq i32 %i.xj, 0
  br i1 %.not240.i, label %bb.eh, label %add_op.exit216

bb.eh:                                            ; preds = %bb.eg
  %i.xk = sub nsw i32 0, %spec.select.i395
  %i.xl = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i32 %i.xk, ptr %i.xm, align 8, !tbaa !27
  br label %add_op.exit216

len_multiply_cmp.exit259.thread:                  ; preds = %bb.dq
  %i.xn = load i32, ptr %i.tj, align 4, !tbaa !113 ; 2 uses
  %i.xo = icmp eq i32 %i.xn, 0
  br i1 %i.xo, label %bb.ei, label %bb.ez

.thread305:                                       ; preds = %is_anychar_infinite_greedy.exit.thread
  %i.xp = load i32, ptr %i.tj, align 4, !tbaa !113 ; 6 uses
  %i.xq = icmp eq i32 %i.xp, 0
  br i1 %i.xq, label %bb.ei, label %.thread306

bb.ei:                                            ; preds = %.thread305, %len_multiply_cmp.exit259.thread
  %i.xr = getelementptr inbounds nuw i8, ptr %.tr, i64 56
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !120
  %.not230.i = icmp eq i32 %i.xs, 0
  br i1 %.not230.i, label %add_op.exit216, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.xt = load i32, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  %i.xu = load i32, ptr %i.d, align 4, !tbaa !34  ; 3 uses
  %.not.i.i797 = icmp ult i32 %i.xt, %i.xu
end_hunk_1
begin_hunk_2_@is_exclusive:bb.a
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !27 ; 2 uses
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %i.gp) ; 2 uses
  %.not132193 = icmp sgt i32 %spec.select, 0
  br i1 %.not132193, label %.lr.ph, label %.thread160

.lr.ph:                                           ; preds = %bb.at, %bb.au
  %.0196 = phi ptr [ %i.gu, %bb.au ], [ %i.dg, %bb.at ] ; 2 uses
  %.0119195 = phi ptr [ %i.gt, %bb.au ], [ %i.gl, %bb.at ] ; 2 uses
  %.4125194 = phi i32 [ %i.gs, %bb.au ], [ 0, %bb.at ]
  %i.gq = load i8, ptr %.0119195, align 1, !tbaa !27
  %i.gr = load i8, ptr %.0196, align 1, !tbaa !27
  %.not = icmp eq i8 %i.gq, %i.gr
  br i1 %.not, label %bb.au, label %.thread160

bb.au:                                            ; preds = %.lr.ph
  %i.gs = add nuw nsw i32 %.4125194, 1            ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0119195, i64 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.0196, i64 1
  %exitcond.not = icmp eq i32 %i.gs, %spec.select
  br i1 %exitcond.not, label %.thread160, label %.lr.ph, !llvm.loop !307

.thread160:                                       ; preds = %bb.i, %bb.d, %bb.c, %bb.e, %bb.b, %bb.au, %.lr.ph, %bb.z, %bb.v, %.lr.ph202, %.lr.ph202.1, %bb.x, %bb.p, %bb.q, %bb.al, %bb.aj, %bb.ab, %bb.at, %.preheader, %onig_is_code_in_cc_len.exit.i, %bb.ao, %bb.j, %bb.am, %bb.ak, %bb.ad, %bb.m, %bb.s, %bb.r, %bb.l, %bb.ae, %bb.ag, %bb.ah, %bb.af, %bb.h
  %.7 = phi i32 [ 1, %bb.h ], [ %i.eb, %bb.ak ], [ 1, %.preheader ], [ %i.gh, %onig_is_code_in_cc_len.exit.i ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 1, %bb.ab ], [ 0, %bb.j ], [ 1, %bb.ao ], [ 0, %bb.p ], [ 0, %.lr.ph202.1 ], [ %i.ee, %bb.al ], [ 1, %bb.ad ], [ %i.ef, %bb.am ], [ 0, %bb.ae ], [ 0, %bb.z ], [ 0, %bb.m ], [ %i.ea, %bb.aj ], [ 1, %.lr.ph ], [ 0, %bb.at ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.l ], [ 0, %bb.v ], [ 1, %bb.q ], [ 0, %.lr.ph202 ], [ 1, %bb.x ], [ 0, %bb.au ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.i ]
  ret i32 %.7
}

declare ptr @onig_node_new_bag(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @node_swap(ptr noundef %0, ptr noundef %1) unnamed_addr #19 {
bb.a:
  %.sroa.0 = alloca %struct.BagNode, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !153
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !tbaa.struct !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false), !tbaa.struct !153
  %i.a = load i32, ptr %0, align 8, !tbaa !27
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !154
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !92
  %sext = shl i64 %i.l, 32
  %i.n = ashr exact i64 %sext, 32
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  store ptr %i.o, ptr %i.f, align 8, !tbaa !93
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.p = load i32, ptr %1, align 8, !tbaa !27
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !154
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !92
  %sext23 = shl i64 %i.aa, 32
  %i.ac = ashr exact i64 %sext23, 32
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  store ptr %i.ad, ptr %i.u, align 8, !tbaa !93
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

declare i32 @onigenc_is_mbc_word_ascii(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @onig_node_new_str(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @onig_node_new_list(ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @onig_new_cclass_with_code_list(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @onig_node_new_alt(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 1, -2147483648) i32 @quantifiers_memory_node_info(ptr nofree noundef readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.i, %bb.a
  %accumulator.tr.ph = phi i32 [ %spec.select45, %bb.i ], [ -2147483648, %bb.a ] ; 2 uses
  %.tr.ph = phi ptr [ %i.v, %bb.i ], [ %0, %bb.a ]
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.tr = phi ptr [ %.tr.ph, %tailrecurse.outer ], [ %.tr.be, %tailrecurse.backedge ] ; 10 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !27
  switch i32 %i.a, label %.loopexit [
    i32 7, label %.preheader
    i32 8, label %.preheader
    i32 9, label %bb.c
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

.preheader:                                       ; preds = %tailrecurse, %tailrecurse
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.029 = phi ptr [ %i.f, %bb.b ], [ %.tr, %.preheader ] ; 2 uses
  %.028 = phi i32 [ %spec.select, %bb.b ], [ 1, %.preheader ]
  %i.b = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.d = tail call fastcc i32 @quantifiers_memory_node_info(ptr noundef %i.c)
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %.028) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.029, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.not43 = icmp eq ptr %i.f, null
  br i1 %.not43, label %.loopexit, label %bb.b, !llvm.loop !309

bb.c:                                             ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27
  %i.i = and i32 %i.h, 64
  %.not42 = icmp eq i32 %i.i, 0
  br i1 %.not42, label %tailrecurse.backedge, label %.loopexit

tailrecurse.backedge:                             ; preds = %bb.e, %bb.e, %bb.d, %bb.c
  %.tr.be.in = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %.tr.be = load ptr, ptr %.tr.be.in, align 8, !tbaa !27
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !113
  %.not41 = icmp eq i32 %i.k, 0
  br i1 %.not41, label %.loopexit, label %tailrecurse.backedge

bb.e:                                             ; preds = %tailrecurse
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !80
  switch i32 %i.m, label %.loopexit [
    i32 0, label %bb.j
    i32 1, label %tailrecurse.backedge
    i32 2, label %tailrecurse.backedge
    i32 3, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.p = tail call fastcc i32 @quantifiers_memory_node_info(ptr noundef %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call fastcc i32 @quantifiers_memory_node_info(ptr noundef nonnull %i.r)
  %i.t = tail call i32 @llvm.umax.i32(i32 %i.s, i32 %i.p)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.3 = phi i32 [ %i.p, %bb.f ], [ %i.t, %bb.g ]  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %.not39 = icmp eq ptr %i.v, null
  br i1 %.not39, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.select45 = tail call i32 @llvm.smax.i32(i32 %accumulator.tr.ph, i32 %.3)
  br label %tailrecurse.outer

bb.j:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %1 = and i32 %i.x, 64
  %.not40 = icmp eq i32 %1, 0
  %. = select i1 %.not40, i32 2, i32 3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.e, %tailrecurse, %bb.d, %bb.c, %bb.b, %bb.j
  %.131 = phi i32 [ %., %bb.j ], [ %spec.select, %bb.b ], [ 1, %bb.e ], [ 3, %bb.c ], [ 1, %bb.d ], [ 1, %tailrecurse ], [ %.3, %bb.h ]
  %accumulator.ret.tr = tail call i32 @llvm.smax.i32(i32 %accumulator.tr.ph, i32 %.131)
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @check_node_in_look_behind(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, ptr noundef nonnull %2) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.b = icmp ugt i32 %i.a, 10
  br i1 %i.b, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @check_node_in_look_behind.anchor_mask, i64 %i.c
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @check_node_in_look_behind.bag_mask, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.f = phi i32 [ %i.a, %.lr.ph ], [ %i.o, %tailrecurse.backedge ]
  %.tr88 = phi ptr [ %0, %.lr.ph ], [ %.tr.be, %tailrecurse.backedge ] ; 14 uses
  switch i32 %i.f, label %.critedge [
    i32 7, label %.preheader
    i32 8, label %.preheader
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.n
    i32 10, label %bb.p
    i32 9, label %bb.t
  ]

.preheader:                                       ; preds = %bb.b, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.054 = phi ptr [ %i.l, %bb.d ], [ %.tr88, %.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.054, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = tail call fastcc i32 @check_node_in_look_behind(ptr noundef %i.h, i32 noundef %1, ptr noundef %2)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.054, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %.not75 = icmp eq ptr %i.l, null
  br i1 %.not75, label %.critedge, label %bb.c, !llvm.loop !310

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.tr88, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.e, %bb.m, %bb.o
  %.tr.be = phi ptr [ %i.n, %bb.e ], [ %i.ah, %bb.m ], [ %i.ao, %bb.o ] ; 2 uses
  %i.o = load i32, ptr %.tr.be, align 8, !tbaa !27 ; 2 uses
  %i.p = icmp ugt i32 %i.o, 10
  br i1 %i.p, label %.critedge, label %bb.b

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.tr88, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !80
  %i.s = shl nuw i32 1, %i.r
  %i.t = load i32, ptr %i.e, align 4, !tbaa !15
  %i.u = and i32 %i.s, %i.t
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.tr88, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = tail call fastcc i32 @check_node_in_look_behind(ptr noundef %i.x, i32 noundef %1, ptr noundef %2)
  %.not68 = icmp eq i32 %i.y, 0
  br i1 %.not68, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.q, align 8, !tbaa !80
  switch i32 %i.z, label %.critedge [
    i32 0, label %bb.i
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr88, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !27
  %i.ac = and i32 %i.ab, 67174528
  %or.cond76 = icmp eq i32 %i.ac, 0
  br i1 %or.cond76, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr88, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %.not69 = icmp eq ptr %i.ae, null
  br i1 %.not69, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call fastcc i32 @check_node_in_look_behind(ptr noundef nonnull %i.ae, i32 noundef %1, ptr noundef %2)
  %.not70 = icmp eq i32 %i.af, 0
  br i1 %.not70, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr88, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27 ; 2 uses
  %.not71 = icmp eq ptr %i.ah, null
  br i1 %.not71, label %.critedge, label %tailrecurse.backedge

bb.n:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr88, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !27
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !15
  %i.al = and i32 %i.ak, %i.aj
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.tr88, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %.not67 = icmp eq ptr %i.ao, null
  br i1 %.not67, label %.critedge, label %tailrecurse.backedge

bb.p:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr88, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !27
  %i.ar = and i32 %i.aq, 16777216
  %.not66 = icmp eq i32 %i.ar, 0
  br i1 %.not66, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %.tr88, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !130
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %.tr88, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !131
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %.critedge

bb.t:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr88, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !27
  %i.ba = and i32 %i.az, 64
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %2, align 4, !tbaa !15
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr88, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27
  %i.bd = tail call fastcc i32 @check_called_node_in_look_behind(ptr noundef %i.bc)
  br label %.critedge

.critedge:                                        ; preds = %tailrecurse.backedge, %bb.n, %bb.b, %bb.o, %bb.f, %bb.g, %bb.l, %bb.h, %bb.m, %bb.d, %bb.c, %bb.a, %bb.j, %bb.i, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p
  %.153 = phi i32 [ 1, %bb.a ], [ 1, %bb.p ], [ %i.bd, %bb.v ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.i ], [ 0, %bb.q ], [ 0, %bb.j ], [ 0, %bb.d ], [ 1, %bb.c ], [ 0, %bb.h ], [ 1, %bb.l ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.n ], [ 0, %bb.o ], [ 1, %tailrecurse.backedge ], [ 0, %bb.m ]
  ret i32 %.153
}

declare i32 @onig_node_reset_fail(ptr noundef) local_unnamed_addr #7

declare i32 @onig_node_reset_empty(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i32 @divide_look_behind_alternatives(ptr noundef %0) unnamed_addr #6 {
bb.a:
  %.sroa.0.i = alloca %struct.BagNode, align 8    ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !153
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !tbaa.struct !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false), !tbaa.struct !153
  %i.h = load i32, ptr %0, align 8, !tbaa !27
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = load i32, ptr %i.j, align 4, !tbaa !154
  %i.l = icmp eq i32 %i.k, 0
end_hunk_2
