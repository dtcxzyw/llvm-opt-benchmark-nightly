Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_serialize?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@serialize_put:bb.a
  br label %bb.ap

bb.ap:                                            ; preds = %bb.au, %bb.ao
  %.0174 = phi ptr [ %i.hb, %bb.ao ], [ %i.hw, %bb.au ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0174, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !16 ; 2 uses
  %.mask210 = and i64 %i.hd, -140737488355328
  %i.he = icmp eq i64 %.mask210, -703687441776640
  %i.hf = and i64 %i.hd, 140737488355327
  %i.hg = icmp eq i64 %i.hf, %i.gs
  %or.cond = and i1 %i.he, %i.hg
  br i1 %or.cond, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.hh = load i32, ptr %.0174, align 8, !tbaa !16 ; 3 uses
  %i.hi = load ptr, ptr %i.ev, align 8, !tbaa !26
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %.6 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = icmp ult i32 %i.hm, 6
  br i1 %i.hn, label %bb.ar, label %serialize_more.exit221, !prof !27

bb.ar:                                            ; preds = %bb.aq
  store ptr %.6, ptr %1, align 8, !tbaa !22
  %i.ho = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef 6) #11
  br label %serialize_more.exit221

serialize_more.exit221:                           ; preds = %bb.aq, %bb.ar
  %.0.i220 = phi ptr [ %i.ho, %bb.ar ], [ %.6, %bb.aq ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i220, i64 1 ; 2 uses
  store i8 15, ptr %.0.i220, align 1, !tbaa !16
  %i.hq = icmp ult i32 %i.hh, 224
  br i1 %i.hq, label %bb.as, label %bb.at, !prof !23

bb.as:                                            ; preds = %serialize_more.exit221
  %i.hr = trunc nuw i32 %i.hh to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i220, i64 2
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !16
  br label %serialize_wu124.exit234

bb.at:                                            ; preds = %serialize_more.exit221
  %i.ht = tail call fastcc ptr @serialize_wu124_(ptr noundef nonnull %i.hp, i32 noundef %i.hh)
  br label %serialize_wu124.exit234

bb.au:                                            ; preds = %bb.ap
  %i.hu = getelementptr inbounds nuw i8, ptr %.0174, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !59 ; 2 uses
  %i.hw = inttoptr i64 %i.hv to ptr
  %.not211 = icmp eq i64 %i.hv, 0
  br i1 %.not211, label %bb.av, label %bb.ap

bb.av:                                            ; preds = %bb.au
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !25 ; 3 uses
  %i.hz = add i32 %i.hy, 5                        ; 2 uses
  %i.ia = load ptr, ptr %i.ev, align 8, !tbaa !26
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %.6 to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = trunc i64 %i.id to i32
  %i.if = icmp ugt i32 %i.hz, %i.ie
  br i1 %i.if, label %bb.aw, label %serialize_more.exit219, !prof !27

bb.aw:                                            ; preds = %bb.av
  store ptr %.6, ptr %1, align 8, !tbaa !22
  %i.ig = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef %i.hz) #11
  br label %serialize_more.exit219

serialize_more.exit219:                           ; preds = %bb.av, %bb.aw
  %.0.i218 = phi ptr [ %i.ig, %bb.aw ], [ %.6, %bb.av ] ; 3 uses
  %i.ih = add i32 %i.hy, 32                       ; 3 uses
  %i.ii = icmp ult i32 %i.ih, 224
  br i1 %i.ii, label %bb.ax, label %bb.ay, !prof !23

bb.ax:                                            ; preds = %serialize_more.exit219
  %i.ij = trunc nuw i32 %i.ih to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i218, i64 1
  store i8 %i.ij, ptr %.0.i218, align 1, !tbaa !16
  br label %serialize_wu124.exit

bb.ay:                                            ; preds = %serialize_more.exit219
  %i.il = tail call fastcc ptr @serialize_wu124_(ptr noundef %.0.i218, i32 noundef %i.ih)
  br label %serialize_wu124.exit

serialize_wu124.exit:                             ; preds = %bb.ax, %bb.ay
  %.0.i232 = phi ptr [ %i.ik, %bb.ax ], [ %i.il, %bb.ay ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.in = zext i32 %i.hy to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i232, ptr nonnull align 4 %i.im, i64 %i.in, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i232, i64 %i.in
  br label %serialize_wu124.exit234

bb.az:                                            ; preds = %bb.an
  %i.ip = tail call fastcc ptr @serialize_put(ptr noundef %.6, ptr noundef %1, ptr noundef nonnull %i.gp)
  br label %serialize_wu124.exit234

serialize_wu124.exit234:                          ; preds = %bb.at, %bb.as, %serialize_wu124.exit, %bb.az
  %.8 = phi ptr [ %i.ip, %bb.az ], [ %i.io, %serialize_wu124.exit ], [ %i.hs, %bb.as ], [ %i.ht, %bb.at ]
  %i.iq = tail call fastcc ptr @serialize_put(ptr noundef %.8, ptr noundef %1, ptr noundef nonnull %.0175) ; 2 uses
  %i.ir = add i32 %.2186, -1                      ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.am, %serialize_wu124.exit234
  %.3187 = phi i32 [ %.2186, %bb.am ], [ %i.ir, %serialize_wu124.exit234 ]
  %.9 = phi ptr [ %.6, %bb.am ], [ %i.iq, %serialize_wu124.exit234 ]
  %i.it = getelementptr inbounds i8, ptr %.0175, i64 -24
  br label %bb.am

.preheader:                                       ; preds = %bb.al, %bb.bc
  %.4188 = phi i32 [ %.5189, %bb.bc ], [ %.1185, %bb.al ] ; 2 uses
  %.1176 = phi ptr [ %i.jb, %bb.bc ], [ %i.gh, %bb.al ] ; 4 uses
  %.10 = phi ptr [ %.11, %bb.bc ], [ %.5, %bb.al ] ; 2 uses
  %i.iu = load i64, ptr %.1176, align 8, !tbaa !16
  %i.iv = icmp eq i64 %i.iu, -1
  br i1 %i.iv, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.preheader
  %i.iw = getelementptr inbounds nuw i8, ptr %.1176, i64 8
  %i.ix = tail call fastcc ptr @serialize_put(ptr noundef %.10, ptr noundef %1, ptr noundef nonnull %i.iw)
  %i.iy = tail call fastcc ptr @serialize_put(ptr noundef nonnull %i.ix, ptr noundef %1, ptr noundef nonnull %.1176) ; 2 uses
  %i.iz = add i32 %.4188, -1                      ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %.preheader, %bb.bb
  %.5189 = phi i32 [ %.4188, %.preheader ], [ %i.iz, %bb.bb ]
  %.11 = phi ptr [ %.10, %.preheader ], [ %i.iy, %bb.bb ]
  %i.jb = getelementptr inbounds i8, ptr %.1176, i64 -24
  br label %.preheader

.loopexit:                                        ; preds = %serialize_wu124.exit234, %bb.bb, %.loopexit252
  %.13 = phi ptr [ %.5, %.loopexit252 ], [ %i.iy, %bb.bb ], [ %i.iq, %serialize_wu124.exit234 ]
  %i.jc = load i32, ptr %i.az, align 8, !tbaa !21
  %i.jd = add nsw i32 %i.jc, 1
  store i32 %i.jd, ptr %i.az, align 8, !tbaa !21
  br label %.thread247

bb.bd:                                            ; preds = %bb.l
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !28
  %i.jg = and i64 %i.jf, -8
  %i.jh = inttoptr i64 %i.jg to ptr               ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !35
  %i.jk = inttoptr i64 %i.jj to ptr
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 392
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !43
  %i.jn = inttoptr i64 %i.jm to ptr               ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  store ptr %i.jh, ptr %i.jo, align 8, !tbaa !69
  %i.jp = load i64, ptr %2, align 8, !tbaa !16    ; 3 uses
  %i.jq = and i64 %i.jp, 140737488355327
  %i.jr = inttoptr i64 %i.jq to ptr               ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 10
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !16
  %i.ju = load ptr, ptr %i.jn, align 8, !tbaa !70
  %i.jv = zext i16 %i.jt to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %bb.bd
  %.pn = phi i64 [ %i.jv, %bb.bd ], [ %i.jz, %bb.be ]
  %.0.i243.a = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %.pn ; 4 uses
  %i.jw = load i32, ptr %.0.i243.a, align 8, !tbaa !72 ; 5 uses
  %i.jx = icmp slt i32 %i.jw, -1879048192
  %i.jy = and i32 %i.jw, 65535
  %i.jz = zext nneg i32 %i.jy to i64
  br i1 %i.jx, label %bb.be, label %ctype_raw.exit, !llvm.loop !56

ctype_raw.exit:                                   ; preds = %bb.be
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.kb = icmp ult i32 %i.jw, 67108864
  br i1 %i.kb, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %ctype_raw.exit
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i243.a, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !73
  %i.ke = icmp eq i32 %i.kd, 8
  br i1 %i.ke, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !26
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %0 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = icmp ult i32 %i.kk, 9
  br i1 %i.kl, label %bb.bh, label %serialize_more.exit217, !prof !27

bb.bh:                                            ; preds = %bb.bg
  store ptr %0, ptr %1, align 8, !tbaa !22
  %i.km = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef 9) #11
  %.pre = load i32, ptr %.0.i243.a, align 8, !tbaa !72
  br label %serialize_more.exit217

serialize_more.exit217:                           ; preds = %bb.bg, %bb.bh
  %i.kn = phi i32 [ %.pre, %bb.bh ], [ %i.jw, %bb.bg ]
  %.0.i216 = phi ptr [ %i.km, %bb.bh ], [ %0, %bb.bg ] ; 3 uses
  %3 = lshr i32 %i.kn, 23
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  %6 = or disjoint i8 %5, 16
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.i216, i64 1
  store i8 %6, ptr %.0.i216, align 1, !tbaa !16
  %i.kp = load i64, ptr %i.ka, align 2
  store i64 %i.kp, ptr %i.ko, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %.0.i216, i64 9
  br label %.thread247

bb.bi:                                            ; preds = %bb.bf, %ctype_raw.exit
  %i.kr = and i32 %i.jw, -201326592
  %i.ks = icmp eq i32 %i.kr, 872415232
  br i1 %i.ks, label %bb.bj, label %bb.bt

bb.bj:                                            ; preds = %bb.bi
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i243.a, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !73
  %i.kv = icmp eq i32 %i.ku, 16
  br i1 %i.kv, label %bb.bk, label %bb.bt

bb.bk:                                            ; preds = %bb.bj
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !26
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %0 to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = trunc i64 %i.la to i32
  %i.lc = icmp ult i32 %i.lb, 17
  br i1 %i.lc, label %bb.bl, label %serialize_more.exit215, !prof !27

bb.bl:                                            ; preds = %bb.bk
  store ptr %0, ptr %1, align 8, !tbaa !22
  %i.ld = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef 17) #11
  br label %serialize_more.exit215

serialize_more.exit215:                           ; preds = %bb.bk, %bb.bl
  %.0.i214 = phi ptr [ %i.ld, %bb.bl ], [ %0, %bb.bk ] ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0.i214, i64 1
  store i8 18, ptr %.0.i214, align 1, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.le, ptr noundef nonnull align 2 dereferenceable(16) %i.ka, i64 16, i1 false)
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.i214, i64 17
  br label %.thread247

bb.bm:                                            ; preds = %bb.l
  %i.lg = lshr i64 %i.a, 39
  %i.lh = and i64 %i.lg, 255                      ; 2 uses
  %i.li = icmp eq i64 %i.lh, 255
  br i1 %i.li, label %lightudV.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !28
  %i.ll = and i64 %i.lk, -8
  %i.lm = inttoptr i64 %i.ll to ptr
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !35
  %i.lp = inttoptr i64 %i.lo to ptr
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 112
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !74
  %i.ls = inttoptr i64 %i.lr to ptr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lh
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !45
  %i.lv = zext i32 %i.lu to i64
  %i.lw = shl nuw i64 %i.lv, 32
  %i.lx = and i64 %i.a, 549755813887
  %i.ly = or i64 %i.lw, %i.lx
  %i.lz = inttoptr i64 %i.ly to ptr
  br label %lightudV.exit

lightudV.exit:                                    ; preds = %bb.bm, %bb.bn
  %.0.i244 = phi ptr [ %i.lz, %bb.bn ], [ null, %bb.bm ] ; 3 uses
  %i.ma = ptrtoint ptr %.0.i244 to i64            ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !26
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %0 to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = icmp ult i32 %i.mg, 9
  br i1 %i.mh, label %bb.bo, label %serialize_more.exit, !prof !27

bb.bo:                                            ; preds = %lightudV.exit
  store ptr %0, ptr %1, align 8, !tbaa !22
  %i.mi = tail call ptr @lj_buf_more2(ptr noundef nonnull %1, i32 noundef 9) #11
  br label %serialize_more.exit

serialize_more.exit:                              ; preds = %lightudV.exit, %bb.bo
  %.0.i = phi ptr [ %i.mi, %bb.bo ], [ %0, %lightudV.exit ] ; 8 uses
  %i.mj = icmp eq ptr %.0.i244, null
  br i1 %i.mj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %serialize_more.exit
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 3, ptr %.0.i, align 1, !tbaa !16
  br label %.thread247

bb.bq:                                            ; preds = %serialize_more.exit
  %i.ml = icmp ult ptr %.0.i244, inttoptr (i64 4294967296 to ptr)
  br i1 %i.ml, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mm = trunc i64 %i.ma to i32
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 4, ptr %.0.i, align 1, !tbaa !16
  store i32 %i.mm, ptr %i.mn, align 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.i, i64 5
  br label %.thread247

bb.bs:                                            ; preds = %bb.bq
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 5, ptr %.0.i, align 1, !tbaa !16
  store i64 %i.ma, ptr %i.mp, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i, i64 9
  br label %.thread247

bb.bt:                                            ; preds = %._crit_edge272, %bb.bj, %bb.bi
  %.pre-phi277 = phi ptr [ %.pre276, %._crit_edge272 ], [ %i.jh, %bb.bj ], [ %i.jh, %bb.bi ]
  %i.mr = phi i64 [ %i.a, %._crit_edge272 ], [ %i.jp, %bb.bj ], [ %i.jp, %bb.bi ]
  %i.ms = ashr i64 %i.mr, 47
  %i.mt = tail call i64 @llvm.umax.i64(i64 %i.ms, i64 -14)
  %spec.select213 = xor i64 %i.mt, -1
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr @lj_obj_itypename, i64 %spec.select213
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !46
  tail call void (ptr, i32, ...) @lj_err_callerv(ptr noundef %.pre-phi277, i32 noundef 3959, ptr noundef %i.mv) #12
  unreachable

.thread247:                                       ; preds = %serialize_more.exit217, %serialize_more.exit215, %bb.bp, %bb.bs, %bb.br, %serialize_more.exit229, %.loopexit, %serialize_more.exit227, %serialize_wu124.exit242
  %.17 = phi ptr [ %i.x, %serialize_wu124.exit242 ], [ %i.ai, %serialize_more.exit229 ], [ %i.aw, %serialize_more.exit227 ], [ %.13, %.loopexit ], [ %i.mq, %bb.bs ], [ %i.mk, %bb.bp ], [ %i.mo, %bb.br ], [ %i.lf, %serialize_more.exit215 ], [ %i.kq, %serialize_more.exit217 ]
  ret ptr %.17
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_serialize_get(ptr noundef initializes((64, 68)) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 100, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = tail call fastcc ptr @serialize_get(ptr noundef %i.c, ptr noundef %0, ptr noundef %1)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @serialize_get(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %3 = alloca %union.TValue, align 8              ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !22     ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.g = icmp ult ptr %0, %i.f
  br i1 %i.g, label %bb.b, label %serialize_ru124.exit182.thread, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %0, align 1, !tbaa !16      ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !45
  %i.k = icmp ugt i8 %i.h, -33
  br i1 %i.k, label %serialize_ru124.exit182, label %serialize_ru124.exit182.thread185, !prof !27

serialize_ru124.exit182:                          ; preds = %bb.b
  %i.l = call fastcc ptr @serialize_ru124_(ptr noundef nonnull %i.j, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %serialize_ru124.exit182.thread, label %thread-pre-split, !prof !77

thread-pre-split:                                 ; preds = %serialize_ru124.exit182
  %.pr = load i32, ptr %i.a, align 4, !tbaa !45
  br label %serialize_ru124.exit182.thread185

serialize_ru124.exit182.thread185:                ; preds = %bb.b, %thread-pre-split
  %.pr220 = phi i32 [ %.pr, %thread-pre-split ], [ %i.i, %bb.b ] ; 17 uses
  %.0.i181188 = phi ptr [ %i.l, %thread-pre-split ], [ %i.j, %bb.b ] ; 22 uses
  %i.m = icmp ugt i32 %.pr220, 31
  br i1 %i.m, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %serialize_ru124.exit182.thread185
  %i.n = add i32 %.pr220, -32                     ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = ptrtoint ptr %.0.i181188 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = icmp ugt i32 %i.n, %i.r
  br i1 %i.s, label %serialize_ru124.exit182.thread, label %.thread, !prof !27

.thread:                                          ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28
  %i.v = and i64 %i.u, -8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.n to i64                     ; 2 uses
  %i.y = tail call ptr @lj_str_new(ptr noundef %i.w, ptr noundef nonnull %.0.i181188, i64 noundef %i.x) #11
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = or i64 %i.z, -703687441776640
  store i64 %i.aa, ptr %2, align 8, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i181188, i64 %i.x
  br label %bb.bb

bb.d:                                             ; preds = %serialize_ru124.exit182.thread185
  switch i32 %.pr220, label %bb.i [
    i32 6, label %bb.e
end_hunk_0
