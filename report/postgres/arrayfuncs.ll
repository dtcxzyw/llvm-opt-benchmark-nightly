Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/arrayfuncs?download=true
inline.NumInlined: 302
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@array_set_element:bb.a
  %.pre221.i = sext i32 %i.fh to i64
  br label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ix = icmp eq ptr %.2141.i, null
  %.pre222.i = sext i32 %i.fh to i64              ; 5 uses
  br i1 %i.ix, label %._crit_edge219.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iy = getelementptr inbounds i8, ptr %.2141.i, i64 %.pre222.i
  %i.iz = load i8, ptr %i.iy, align 1, !range !8, !noundef !9
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %.thread191.i, label %._crit_edge219.i

.thread191.i:                                     ; preds = %bb.bf
  %i.jb = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre222.i
  store i64 %.0.i229, ptr %i.jb, align 8
  br label %bb.bh

._crit_edge219.i:                                 ; preds = %bb.bf, %bb.be
  %i.jc = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre222.i
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = inttoptr i64 %i.jd to ptr
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge219.i, %._crit_edge220.i
  %.pre-phi.i = phi i64 [ %.pre221.i, %._crit_edge220.i ], [ %.pre222.i, %._crit_edge219.i ] ; 2 uses
  %.0131.i = phi ptr [ null, %._crit_edge220.i ], [ %i.je, %._crit_edge219.i ] ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %.0142.i, i64 %.pre-phi.i
  store i64 %.0.i229, ptr %i.jf, align 8
  %.not160.i = icmp eq ptr %.2141.i, null
  br i1 %.not160.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.thread191.i
  %i.jg = phi i64 [ %.pre222.i, %.thread191.i ], [ %.pre-phi.i, %bb.bg ]
  %.0131194.i = phi ptr [ null, %.thread191.i ], [ %.0131.i, %bb.bg ]
  %i.jh = getelementptr inbounds i8, ptr %.2141.i, i64 %i.jg
  store i8 %i.g, ptr %i.jh, align 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0131195.i = phi ptr [ %.0131194.i, %bb.bh ], [ %.0131.i, %bb.bg ] ; 4 uses
  %.not161.i = icmp eq ptr %.0131195.i, null
  br i1 %.not161.i, label %array_set_element_expanded.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ji = getelementptr inbounds nuw i8, ptr %i.av, i64 120
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = icmp ult ptr %.0131195.i, %i.jj
  br i1 %i.jk, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.jm = load ptr, ptr %i.jl, align 8
  %.not162.i = icmp ult ptr %.0131195.i, %i.jm
  br i1 %.not162.i, label %array_set_element_expanded.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @pfree(ptr noundef nonnull %.0131195.i) #16
  br label %array_set_element_expanded.exit

array_set_element_expanded.exit:                  ; preds = %bb.bi, %bb.bk, %bb.bl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %array_bitmap_copy.exit

VARATT_IS_EXTERNAL_EXPANDED.exit.thread:          ; preds = %bb.o, %VARATT_IS_EXTERNAL_EXPANDED.exit
  %i.jo = tail call ptr @pg_detoast_datum(ptr noundef nonnull %i.aq) #16 ; 9 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4 ; 5 uses
  %i.jq = load i32, ptr %i.jp, align 4            ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %.lr.ph333.preheader, label %bb.bm

.lr.ph333.preheader:                              ; preds = %VARATT_IS_EXTERNAL_EXPANDED.exit.thread
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = shl nuw nsw i32 %1, 2
  %i.jv = zext nneg i32 %i.ju to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 4 %2, i64 %i.jv, i1 false)
  store i32 1, ptr %i.e, align 16
  %exitcond355.not = icmp eq i32 %1, 1
  br i1 %exitcond355.not, label %._crit_edge, label %.lr.ph333.1

.lr.ph333.1:                                      ; preds = %.lr.ph333.preheader
  %i.jw = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.jw, align 4
  %exitcond355.not.1 = icmp eq i32 %1, 2
  br i1 %exitcond355.not.1, label %._crit_edge, label %.lr.ph333.2

.lr.ph333.2:                                      ; preds = %.lr.ph333.1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.jx, align 8
  %exitcond355.not.2 = icmp eq i32 %1, 3
  br i1 %exitcond355.not.2, label %._crit_edge, label %.lr.ph333.3

.lr.ph333.3:                                      ; preds = %.lr.ph333.2
  %i.jy = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 1, ptr %i.jy, align 4
  %exitcond355.not.3 = icmp eq i32 %1, 4
  br i1 %exitcond355.not.3, label %._crit_edge, label %.lr.ph333.4

.lr.ph333.4:                                      ; preds = %.lr.ph333.3
  %i.jz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 1, ptr %i.jz, align 16
  %exitcond355.not.4 = icmp eq i32 %1, 5
  br i1 %exitcond355.not.4, label %._crit_edge, label %.lr.ph333.5

.lr.ph333.5:                                      ; preds = %.lr.ph333.4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 1, ptr %i.ka, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph333.5, %.lr.ph333.4, %.lr.ph333.3, %.lr.ph333.2, %.lr.ph333.1, %.lr.ph333.preheader
  %i.kb = call ptr @construct_md_array(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.jt, i32 noundef %6, i1 noundef zeroext %7, i8 noundef signext %8)
  br label %array_bitmap_copy.exit

bb.bm:                                            ; preds = %VARATT_IS_EXTERNAL_EXPANDED.exit.thread
  %.not = icmp eq i32 %i.jq, %1
  br i1 %.not, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.kd = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.ke = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2321, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 4 uses
  %i.kg = shl nuw nsw i32 %1, 2
  %i.kh = zext nneg i32 %i.kg to i64              ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.e, ptr nonnull align 4 %i.kf, i64 %i.kh, i1 false)
  %i.ki = load i32, ptr %i.jp, align 4
  %i.kj = sext i32 %i.ki to i64
  %i.kk = shl nsw i64 %i.kj, 2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr nonnull align 4 %i.kl, i64 %i.kh, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.kn = load i32, ptr %i.km, align 4
  %.not214 = icmp ne i32 %i.kn, 0
  %i.ko = or i1 %4, %.not214                      ; 7 uses
  %i.kp = icmp eq i32 %1, 1
  br i1 %i.kp, label %bb.bp, label %.lr.ph

bb.bp:                                            ; preds = %bb.bo
  %i.kq = load i32, ptr %2, align 4               ; 6 uses
  %i.kr = load i32, ptr %i.f, align 16            ; 3 uses
  %i.ks = icmp slt i32 %i.kq, %i.kr
  br i1 %i.ks, label %bb.bq, label %._crit_edge356

._crit_edge356:                                   ; preds = %bb.bp
  %.pre = load i32, ptr %i.e, align 16
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.kt = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.kr, i32 %i.kq) ; 2 uses
  %i.ku = extractvalue { i32, i1 } %i.kt, 1
  %i.kv = extractvalue { i32, i1 } %i.kt, 0       ; 3 uses
  br i1 %i.ku, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kw = load i32, ptr %i.e, align 16
  %i.kx = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.kw, i32 %i.kv) ; 2 uses
  %i.ky = extractvalue { i32, i1 } %i.kx, 1
  %i.kz = extractvalue { i32, i1 } %i.kx, 0       ; 2 uses
  store i32 %i.kz, ptr %i.e, align 16
  br i1 %i.ky, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.la = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.lb = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.lc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2347, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.bt:                                            ; preds = %bb.br
  store i32 %i.kq, ptr %i.f, align 16
  %i.ld = icmp sgt i32 %i.kv, 1
  %spec.select = select i1 %i.ld, i1 true, i1 %i.ko
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge356, %bb.bt
  %i.le = phi i32 [ %i.kq, %bb.bt ], [ %i.kr, %._crit_edge356 ]
  %i.lf = phi i32 [ %i.kz, %bb.bt ], [ %.pre, %._crit_edge356 ] ; 2 uses
  %.0294 = phi i32 [ %i.kv, %bb.bt ], [ 0, %._crit_edge356 ] ; 2 uses
  %.0191 = phi i1 [ %spec.select, %bb.bt ], [ %i.ko, %._crit_edge356 ] ; 2 uses
  %i.lg = add i32 %i.le, %i.lf                    ; 2 uses
  %.not216 = icmp slt i32 %i.kq, %i.lg
  br i1 %.not216, label %.loopexit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lh = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.kq, i32 %i.lg) ; 2 uses
  %i.li = extractvalue { i32, i1 } %i.lh, 1
  br i1 %i.li, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lj = extractvalue { i32, i1 } %i.lh, 0
  %i.lk = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.lj, i32 1) ; 2 uses
  %i.ll = extractvalue { i32, i1 } %i.lk, 1
  %i.lm = extractvalue { i32, i1 } %i.lk, 0       ; 2 uses
  br i1 %i.ll, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ln = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.lf, i32 %i.lm) ; 2 uses
  %i.lo = extractvalue { i32, i1 } %i.ln, 1
  %i.lp = extractvalue { i32, i1 } %i.ln, 0
  store i32 %i.lp, ptr %i.e, align 16
  br i1 %i.lo, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.lq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.lr = tail call i32 @errcode(i32 noundef 261) #16 ; 0 uses
  %i.ls = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i64 noundef 134217727) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2362, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.lt = icmp sgt i32 %i.lm, 1
  %spec.select228 = select i1 %i.lt, i1 true, i1 %.0191
  br label %.loopexit

.lr.ph.1:                                         ; preds = %bb.cj
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.lv = load i32, ptr %i.lu, align 4            ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.lx = load i32, ptr %i.lw, align 4            ; 2 uses
  %i.ly = icmp slt i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.ck, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph.1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = add i32 %i.ma, %i.lx
  %.not215.1 = icmp slt i32 %i.lv, %i.mb
  br i1 %.not215.1, label %bb.cb, label %bb.ck

bb.cb:                                            ; preds = %bb.ca
  %exitcond.not.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.cb
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.md = load i32, ptr %i.mc, align 4            ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.mf = load i32, ptr %i.me, align 8            ; 2 uses
  %i.mg = icmp slt i32 %i.md, %i.mf
  br i1 %i.mg, label %bb.ck, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mi = load i32, ptr %i.mh, align 8
  %i.mj = add i32 %i.mi, %i.mf
  %.not215.2 = icmp slt i32 %i.md, %i.mj
  br i1 %.not215.2, label %bb.cd, label %bb.ck

bb.cd:                                            ; preds = %bb.cc
  %exitcond.not.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.cd
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ml = load i32, ptr %i.mk, align 4            ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.mn = load i32, ptr %i.mm, align 4            ; 2 uses
  %i.mo = icmp slt i32 %i.ml, %i.mn
  br i1 %i.mo, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.3
  %i.mp = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.mq = load i32, ptr %i.mp, align 4
  %i.mr = add i32 %i.mq, %i.mn
  %.not215.3 = icmp slt i32 %i.ml, %i.mr
  br i1 %.not215.3, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %bb.ce
  %exitcond.not.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.cf
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mt = load i32, ptr %i.ms, align 4            ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.mv = load i32, ptr %i.mu, align 16           ; 2 uses
  %i.mw = icmp slt i32 %i.mt, %i.mv
  br i1 %i.mw, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.4
  %i.mx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.my = load i32, ptr %i.mx, align 16
  %i.mz = add i32 %i.my, %i.mv
  %.not215.4 = icmp slt i32 %i.mt, %i.mz
  br i1 %.not215.4, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %exitcond.not.4 = icmp eq i32 %1, 5
  br i1 %exitcond.not.4, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.ch
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.nb = load i32, ptr %i.na, align 4            ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.nd = load i32, ptr %i.nc, align 4            ; 2 uses
  %i.ne = icmp slt i32 %i.nb, %i.nd
  br i1 %i.ne, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph.5
  %i.nf = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = add i32 %i.ng, %i.nd
  %.not215.5 = icmp slt i32 %i.nb, %i.nh
  br i1 %.not215.5, label %.loopexit, label %bb.ck

.lr.ph:                                           ; preds = %bb.bo
  %i.ni = load i32, ptr %2, align 4               ; 2 uses
  %i.nj = load i32, ptr %i.f, align 16            ; 2 uses
  %i.nk = icmp slt i32 %i.ni, %i.nj
  br i1 %i.nk, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph
  %i.nl = load i32, ptr %i.e, align 16
  %i.nm = add i32 %i.nl, %i.nj
  %.not215 = icmp slt i32 %i.ni, %i.nm
  br i1 %.not215, label %.lr.ph.1, label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %.lr.ph.5, %bb.cg, %.lr.ph.4, %bb.ce, %.lr.ph.3, %bb.cc, %.lr.ph.2, %bb.ca, %.lr.ph.1, %bb.cj, %.lr.ph
  %i.nn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #17 ; 0 uses
  %i.no = tail call i32 @errcode(i32 noundef 352845954) #16 ; 0 uses
  %i.np = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20) #16 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 2379, ptr noundef nonnull @__func__.array_set_element) #16
  unreachable

.loopexit:                                        ; preds = %bb.cb, %bb.cd, %bb.cf, %bb.ch, %bb.ci, %bb.bz, %bb.bu
  %.1295 = phi i32 [ %.0294, %bb.bu ], [ %.0294, %bb.bz ], [ 0, %bb.ci ], [ 0, %bb.ch ], [ 0, %bb.cf ], [ 0, %bb.cd ], [ 0, %bb.cb ] ; 3 uses
  %.0293 = phi i1 [ true, %bb.bu ], [ false, %bb.bz ], [ true, %bb.ci ], [ true, %bb.ch ], [ true, %bb.cf ], [ true, %bb.cd ], [ true, %bb.cb ] ; 3 uses
  %.1192 = phi i1 [ %.0191, %bb.bu ], [ %spec.select228, %bb.bz ], [ %i.ko, %bb.ci ], [ %i.ko, %bb.ch ], [ %i.ko, %bb.cf ], [ %i.ko, %bb.cd ], [ %i.ko, %bb.cb ] ; 2 uses
  %i.nq = call i32 @ArrayGetNItems(i32 noundef %1, ptr noundef nonnull %i.e) #16 ; 2 uses
  call void @ArrayCheckBounds(i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #16
  %i.nr = shl nuw nsw i32 %1, 3                   ; 2 uses
  br i1 %.1192, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.loopexit
  %i.ns = add i32 %i.nq, 7
  %i.nt = sdiv i32 %i.ns, 8
  %i.nu = add nuw nsw i32 %i.nr, 23
  %i.nv = add nsw i32 %i.nu, %i.nt
  %i.nw = and i32 %i.nv, -8                       ; 2 uses
  br label %bb.cn

bb.cm:                                            ; preds = %.loopexit
  %i.nx = add nuw nsw i32 %i.nr, 16
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ny = phi i32 [ %i.nw, %bb.cl ], [ 0, %bb.cm ]
  %.0188 = phi i32 [ %i.nw, %bb.cl ], [ %i.nx, %bb.cm ] ; 2 uses
  %i.nz = call i32 @ArrayGetNItems(i32 noundef %1, ptr noundef nonnull %i.kf) #16 ; 5 uses
  %i.oa = load i32, ptr %i.km, align 4            ; 2 uses
  %.not217 = icmp eq i32 %i.oa, 0                 ; 5 uses
  %i.ob = load i32, ptr %i.jp, align 4            ; 2 uses
  %i.oc = shl i32 %i.ob, 3
  %i.od = add i32 %i.oc, 16
  %i.oe = sext i32 %i.ob to i64
  %i.of = shl nsw i64 %i.oe, 3
  %i.og = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.of ; 4 uses
  %i.oh = select i1 %.not217, ptr null, ptr %i.og ; 4 uses
  %i.oi = select i1 %.not217, i32 %i.od, i32 %i.oa ; 2 uses
  %.val = load i32, ptr %i.jo, align 4
  %i.oj = lshr i32 %.val, 2
  %i.ok = sext i32 %i.oi to i64
  %i.ol = sub i32 %i.oj, %i.oi                    ; 3 uses
  %.not219 = icmp eq i32 %.1295, 0                ; 2 uses
  br i1 %.not219, label %bb.co, label %bb.df

bb.co:                                            ; preds = %bb.cn
  br i1 %.0293, label %bb.cp, label %bb.df

bb.cp:                                            ; preds = %bb.co
  %i.om = call i32 @ArrayGetOffset(i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %2) #16 ; 4 uses
  %i.on = load i32, ptr %i.km, align 4            ; 2 uses
  %.not221 = icmp eq i32 %i.on, 0
  br i1 %.not221, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.oo = sext i32 %i.on to i64
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.op = load i32, ptr %i.jp, align 4
  %i.oq = sext i32 %i.op to i64
  %i.or = shl nsw i64 %i.oq, 3
  %i.os = add nsw i64 %i.or, 16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ot = phi i64 [ %i.oo, %bb.cq ], [ %i.os, %bb.cr ]
  %i.ou = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ot
  %i.ov = call fastcc ptr @array_seek(ptr noundef nonnull %i.ou, i32 noundef 0, ptr noundef %i.oh, i32 noundef %i.om, i32 noundef %6, i8 noundef signext %8) ; 5 uses
  %i.ow = load i32, ptr %i.km, align 4            ; 2 uses
  %.not222 = icmp eq i32 %i.ow, 0
  br i1 %.not222, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ox = sext i32 %i.ow to i64
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.oy = load i32, ptr %i.jp, align 4
  %i.oz = sext i32 %i.oy to i64
  %i.pa = shl nsw i64 %i.oz, 3
  %i.pb = add nsw i64 %i.pa, 16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.pc = phi i64 [ %i.ox, %bb.ct ], [ %i.pb, %bb.cu ]
  %i.pd = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.pc
  %i.pe = ptrtoint ptr %i.ov to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = trunc i64 %i.pg to i32                  ; 2 uses
  br i1 %.not217, label %array_get_isnull.exit.thread, label %array_get_isnull.exit

array_get_isnull.exit:                            ; preds = %bb.cv
  %i.pi = sdiv i32 %i.om, 8
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds i8, ptr %i.og, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1
  %i.pm = zext i8 %i.pl to i32
  %i.pn = and i32 %i.om, 7
  %i.po = shl nuw nsw i32 1, %i.pn
  %i.pp = and i32 %i.po, %i.pm
  %.not.i230 = icmp eq i32 %i.pp, 0
  br i1 %.not.i230, label %bb.de, label %array_get_isnull.exit.thread

array_get_isnull.exit.thread:                     ; preds = %bb.cv, %array_get_isnull.exit
  %i.pq = icmp sgt i32 %6, 0
  br i1 %i.pq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %array_get_isnull.exit.thread
  %i.pr = zext nneg i32 %6 to i64
  br label %VARSIZE_ANY.exit

bb.cx:                                            ; preds = %array_get_isnull.exit.thread
  br i1 %i.al, label %bb.dd, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ps = load i8, ptr %i.ov, align 1             ; 2 uses
  %i.pt = zext i8 %i.ps to i32                    ; 2 uses
  %i.pu = icmp eq i8 %i.ps, 1
  br i1 %i.pu, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.pv = getelementptr i8, ptr %i.ov, i64 1
  %.val.i234 = load i8, ptr %i.pv, align 1        ; 2 uses
  %i.pw = add i8 %.val.i234, -1
  %or.cond.i.i.i = icmp ult i8 %i.pw, 3
  %i.px = icmp eq i8 %.val.i234, 18
  %i.py = select i1 %i.px, i64 18, i64 2
  %i.pz = select i1 %or.cond.i.i.i, i64 10, i64 %i.py
  br label %VARSIZE_ANY.exit

bb.da:                                            ; preds = %bb.cy
  %i.qa = and i32 %i.pt, 1
  %.not.i232 = icmp eq i32 %i.qa, 0
  br i1 %.not.i232, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.qb = lshr i32 %i.pt, 1
  %i.qc = zext nneg i32 %i.qb to i64
  br label %VARSIZE_ANY.exit

bb.dc:                                            ; preds = %bb.da
  %i.qd = load i32, ptr %i.ov, align 4
  %i.qe = lshr i32 %i.qd, 2
  %i.qf = zext nneg i32 %i.qe to i64
  br label %VARSIZE_ANY.exit

bb.dd:                                            ; preds = %bb.cx
  %i.qg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ov) #18
  %i.qh = add i64 %i.qg, 1
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.dc, %bb.db, %bb.cz, %bb.dd, %bb.cw
  %i.qi = phi i64 [ %i.pr, %bb.cw ], [ %i.qh, %bb.dd ], [ %i.pz, %bb.cz ], [ %i.qc, %bb.db ], [ %i.qf, %bb.dc ]
  %i.qj = zext nneg i8 %switch.load to i64        ; 2 uses
  %i.qk = add nuw nsw i64 %i.qj, 4294967295
  %i.ql = add i64 %i.qk, %i.qi
  %i.qm = sub nsw i64 0, %i.qj
  %i.qn = and i64 %i.ql, %i.qm
  %i.qo = trunc i64 %i.qn to i32
  br label %bb.de

bb.de:                                            ; preds = %array_get_isnull.exit, %VARSIZE_ANY.exit
  %.0190 = phi i32 [ %i.qo, %VARSIZE_ANY.exit ], [ 0, %array_get_isnull.exit ] ; 2 uses
  %i.qp = add i32 %.0190, %i.ph
  %i.qq = sub i32 %i.ol, %i.qp
  %i.qr = sext i32 %.0190 to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.co, %bb.cn, %bb.de
  %.0193 = phi i32 [ %i.om, %bb.de ], [ 0, %bb.cn ], [ %i.nz, %bb.co ] ; 7 uses
  %.1 = phi i64 [ %i.qr, %bb.de ], [ 0, %bb.cn ], [ 0, %bb.co ]
  %.0187 = phi i32 [ %i.ph, %bb.de ], [ 0, %bb.cn ], [ %i.ol, %bb.co ] ; 2 uses
  %.0 = phi i32 [ %i.qq, %bb.de ], [ %i.ol, %bb.cn ], [ 0, %bb.co ] ; 2 uses
  br i1 %4, label %bb.dp, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.qs = icmp sgt i32 %6, 0
  br i1 %i.qs, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.qt = zext nneg i32 %6 to i64
  br label %VARSIZE_ANY.exit239

bb.di:                                            ; preds = %bb.dg
  %i.qu = inttoptr i64 %i.ap to ptr               ; 4 uses
  br i1 %i.al, label %bb.do, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qv = load i8, ptr %i.qu, align 1             ; 2 uses
  %i.qw = zext i8 %i.qv to i32                    ; 2 uses
  %i.qx = icmp eq i8 %i.qv, 1
  br i1 %i.qx, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.qy = getelementptr i8, ptr %i.qu, i64 1
  %.val.i237 = load i8, ptr %i.qy, align 1        ; 2 uses
  %i.qz = add i8 %.val.i237, -1
  %or.cond.i.i.i238 = icmp ult i8 %i.qz, 3
  %i.ra = icmp eq i8 %.val.i237, 18
  %i.rb = select i1 %i.ra, i64 18, i64 2
  %i.rc = select i1 %or.cond.i.i.i238, i64 10, i64 %i.rb
  br label %VARSIZE_ANY.exit239

bb.dl:                                            ; preds = %bb.dj
end_hunk_0
