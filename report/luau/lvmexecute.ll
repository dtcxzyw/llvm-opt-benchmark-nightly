Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lvmexecute?download=true
inline.NumInlined: 57
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZL12luau_executeILb1EEvP9lua_State:bb.a
bb.y:                                             ; preds = %.backedge
  %i.gf = getelementptr inbounds nuw i8, ptr %.43539, i64 4
  %i.gg = load i32, ptr %.43539, align 4, !tbaa !62 ; 2 uses
  %i.gh = lshr i32 %i.gg, 8
  %i.gi = and i32 %i.gh, 255
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.gm = lshr i32 %i.gg, 16
  %i.gn = and i32 %i.gm, 255
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.go ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !64
  %i.gs = icmp eq i32 %i.gr, 16
  br i1 %i.gs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !30
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !78
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.gw = phi ptr [ %i.gv, %bb.z ], [ %i.gp, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !65
  br label %.backedge.backedge

bb.ab:                                            ; preds = %.backedge
  %i.gx = getelementptr inbounds nuw i8, ptr %.43539, i64 4 ; 4 uses
  %i.gy = load i32, ptr %.43539, align 4, !tbaa !62 ; 2 uses
  %i.gz = lshr i32 %i.gy, 8
  %i.ha = and i32 %i.gz, 255
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.he = lshr i32 %i.gy, 16
  %i.hf = and i32 %i.he, 255
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !30 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i64 16, i1 false), !tbaa.struct !65
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !64
  %i.hn = icmp sgt i32 %i.hm, 5
  br i1 %i.hn, label %bb.ac, label %.backedge.backedge

bb.ac:                                            ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !30
  %i.hq = and i8 %i.hp, 4
  %.not3864 = icmp eq i8 %i.hq, 0
  br i1 %.not3864, label %.backedge.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hr = load ptr, ptr %i.hc, align 8, !tbaa !30 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !30
  %i.hu = and i8 %i.ht, 3
  %.not3865 = icmp eq i8 %i.hu, 0
  br i1 %.not3865, label %.backedge.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef %0, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hr)
  br label %.backedge.backedge

bb.af:                                            ; preds = %.backedge
  %i.hv = getelementptr inbounds nuw i8, ptr %.43539, i64 4 ; 3 uses
  %i.hw = load i32, ptr %.43539, align 4, !tbaa !62
  %i.hx = lshr i32 %i.hw, 8
  %i.hy = and i32 %i.hx, 255
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.hz ; 2 uses
  %i.ib = load ptr, ptr %i.q, align 8, !tbaa !79  ; 2 uses
  %.not3862 = icmp eq ptr %i.ib, null
  br i1 %.not3862, label %.backedge.backedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !78
  %.not3863 = icmp ult ptr %i.id, %i.ia
  br i1 %.not3863, label %.backedge.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_Z10luaF_closeP9lua_StateP10lua_TValue(ptr noundef nonnull %0, ptr noundef %i.ia)
  br label %.backedge.backedge

bb.ai:                                            ; preds = %.backedge
  %i.ie = getelementptr inbounds nuw i8, ptr %.43539, i64 4
  %i.if = load i32, ptr %.43539, align 4, !tbaa !62 ; 2 uses
  %i.ig = lshr i32 %i.if, 8
  %i.ih = and i32 %i.ig, 255
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.ii ; 2 uses
  %i.ik = ashr i32 %i.if, 16
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [16 x i8], ptr %.03534, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  %i.io = load i32, ptr %i.in, align 4, !tbaa !64
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iq = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !66
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 5
  %i.it = load i8, ptr %i.is, align 1, !tbaa !80
  %.not3861 = icmp eq i8 %i.it, 0
  br i1 %.not3861, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %i.im, i64 16, i1 false), !tbaa.struct !65
  %i.iu = getelementptr inbounds nuw i8, ptr %.43539, i64 8
  br label %.backedge.backedge

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.iv = getelementptr inbounds nuw i8, ptr %.43539, i64 8 ; 2 uses
  %i.iw = load i32, ptr %i.ie, align 4, !tbaa !62
  %i.ix = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  store ptr %i.iv, ptr %i.iy, align 8, !tbaa !30
  %i.iz = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !66
  call void @_Z14luaV_getimportP9lua_StateP8LuaTableP10lua_TValueS4_jb(ptr noundef %0, ptr noundef %i.ja, ptr noundef nonnull %.03534, ptr noundef %i.ij, i32 noundef %i.iw, i1 noundef zeroext false)
  %i.jb = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %.backedge.backedge

bb.am:                                            ; preds = %.backedge
  %i.jc = getelementptr inbounds nuw i8, ptr %.43539, i64 4
  %i.jd = load i32, ptr %.43539, align 4, !tbaa !62 ; 7 uses
  %i.je = lshr i32 %i.jd, 8
  %i.jf = and i32 %i.je, 255                      ; 3 uses
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.jg ; 10 uses
  %i.ji = lshr i32 %i.jd, 16
  %i.jj = and i32 %i.ji, 255
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.jk ; 12 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.43539, i64 8 ; 15 uses
  %i.jn = load i32, ptr %i.jc, align 4, !tbaa !62
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %.03534, i64 %i.jo ; 10 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 12 ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !64 ; 3 uses
  %i.js = icmp eq i32 %i.jr, 7
  br i1 %i.js, label %bb.an, label %bb.av, !prof !71

bb.an:                                            ; preds = %bb.am
  %i.jt = load ptr, ptr %i.jl, align 8, !tbaa !30 ; 4 uses
  %i.ju = lshr i32 %i.jd, 24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 7
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !69
  %i.jx = zext i8 %i.jw to i32
  %i.jy = and i32 %i.ju, %i.jx                    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 32 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !70
  %i.kb = zext nneg i32 %i.jy to i64
  %i.kc = getelementptr inbounds nuw [32 x i8], ptr %i.ka, i64 %i.kb ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 28
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = and i32 %i.ke, 15
  %i.kg = icmp eq i32 %i.kf, 6
  br i1 %i.kg, label %bb.ao, label %.critedge3878, !prof !71

bb.ao:                                            ; preds = %bb.an
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !30
  %i.kj = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %bb.ap, label %.critedge3878, !prof !71

bb.ap:                                            ; preds = %bb.ao
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !74
  %.not4037 = icmp eq i32 %i.km, 0
  br i1 %.not4037, label %.critedge3878, label %bb.aq, !prof !76

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(16) %i.kc, i64 16, i1 false), !tbaa.struct !65
  br label %.backedge.backedge

.critedge3878:                                    ; preds = %bb.ao, %bb.an, %bb.ap
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !81
  %.not3854 = icmp eq ptr %i.ko, null
  br i1 %.not3854, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.critedge3878
  %i.kp = load ptr, ptr %i.jp, align 8, !tbaa !30
  %i.kq = call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef nonnull %i.jt, ptr noundef %i.kp) ; 3 uses
  %.not3855 = icmp eq ptr %i.kq, @luaO_nilobject_
  br i1 %.not3855, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kr = load ptr, ptr %i.jz, align 8, !tbaa !70
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt
  %5 = trunc i64 %i.ku to i32
  %6 = shl i32 %5, 19
  %7 = and i32 %6, -16777216
  %8 = load i32, ptr %.43539, align 4, !tbaa !62
  %9 = and i32 %8, 16777215
  %10 = or disjoint i32 %7, %9
  store i32 %10, ptr %.43539, align 4, !tbaa !62
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(16) %i.kq, i64 16, i1 false), !tbaa.struct !65
  br label %.backedge.backedge

bb.au:                                            ; preds = %.critedge3878
  store i32 %i.jy, ptr %i.n, align 4, !tbaa !75
  %i.kv = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  store ptr %i.jm, ptr %i.kw, align 8, !tbaa !30
  call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.jl, ptr noundef %i.jp, ptr noundef nonnull %i.jh)
  %i.kx = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.ky = load i32, ptr %i.n, align 4, !tbaa !75
  %i.kz = shl i32 %i.ky, 24
  %i.la = load i32, ptr %.43539, align 4, !tbaa !62
  %i.lb = and i32 %i.la, 16777215
  %i.lc = or disjoint i32 %i.lb, %i.kz
  store i32 %i.lc, ptr %.43539, align 4, !tbaa !62
  br label %.backedge.backedge

bb.av:                                            ; preds = %bb.am
  %i.ld = load i8, ptr @_ZN5FFlag18LuauDirectFieldGetE, align 8, !tbaa !34, !range !35, !noundef !36
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = icmp eq i32 %i.jr, 9
  %or.cond4579 = and i1 %i.lf, %i.le
  br i1 %or.cond4579, label %bb.aw, label %thread-pre-split

bb.aw:                                            ; preds = %bb.av
  %i.lg = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 17488
  %i.li = load ptr, ptr %i.jl, align 8, !tbaa !30 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 3
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !83
  %i.ll = zext i8 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.ll
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !84 ; 4 uses
  %.not3847 = icmp eq ptr %i.ln, null
  br i1 %.not3847, label %thread-pre-split.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lo = lshr i32 %i.jd, 24
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 7
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !69
  %i.lr = zext i8 %i.lq to i32
  %i.ls = and i32 %i.lo, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 32 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !70
  %i.lv = zext nneg i32 %i.ls to i64
  %i.lw = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %i.lv ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 28
  %i.ly = load i32, ptr %i.lx, align 4
  %i.lz = and i32 %i.ly, 15
  %i.ma = icmp eq i32 %i.lz, 6
  %.pre4366 = load ptr, ptr %i.jp, align 8, !tbaa !30 ; 2 uses
  br i1 %i.ma, label %bb.ay, label %.critedge3880, !prof !71

bb.ay:                                            ; preds = %bb.ax
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !30
  %i.md = icmp eq ptr %i.mc, %.pre4366
  br i1 %i.md, label %bb.az, label %.critedge3880, !prof !71

bb.az:                                            ; preds = %bb.ay
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 12
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !74
  %.not4036 = icmp eq i32 %i.mf, 0
  br i1 %.not4036, label %.critedge3880, label %bb.ba, !prof !76

bb.ba:                                            ; preds = %bb.az
  %i.mg = load ptr, ptr %i.lw, align 8, !tbaa !30
  %i.mh = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  call void %i.mg(ptr noundef nonnull %i.mh, ptr noundef nonnull %i.jh)
  br label %.backedge.backedge

.critedge3880:                                    ; preds = %bb.ay, %bb.ax, %bb.az
  %i.mi = call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef nonnull %i.ln, ptr noundef %.pre4366) ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !64
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %.critedge3880.thread-pre-split_crit_edge, label %bb.bb

.critedge3880.thread-pre-split_crit_edge:         ; preds = %.critedge3880
  %.pr.pre = load i32, ptr %i.jq, align 4, !tbaa !64
  br label %thread-pre-split

bb.bb:                                            ; preds = %.critedge3880
  %i.mm = load ptr, ptr %i.lt, align 8, !tbaa !70
  %i.mn = ptrtoint ptr %i.mi to i64
  %i.mo = ptrtoint ptr %i.mm to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %11 = trunc i64 %i.mp to i32
  %12 = shl i32 %11, 19
  %13 = and i32 %12, -16777216
  %14 = load i32, ptr %.43539, align 4, !tbaa !62
  %15 = and i32 %14, 16777215
  %16 = or disjoint i32 %13, %15
  store i32 %16, ptr %.43539, align 4, !tbaa !62
  %i.mq = load ptr, ptr %i.mi, align 8, !tbaa !30
  %i.mr = load ptr, ptr %i.jl, align 8, !tbaa !30
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  call void %i.mq(ptr noundef nonnull %i.ms, ptr noundef nonnull %i.jh)
  br label %.backedge.backedge

thread-pre-split:                                 ; preds = %.critedge3880.thread-pre-split_crit_edge, %bb.av
  %i.mt = phi i32 [ %i.jr, %bb.av ], [ %.pr.pre, %.critedge3880.thread-pre-split_crit_edge ]
  %i.mu = icmp eq i32 %i.mt, 9
  br i1 %i.mu, label %thread-pre-split.thread, label %.thread

thread-pre-split.thread:                          ; preds = %bb.aw, %thread-pre-split
  %i.mv = load ptr, ptr %i.jl, align 8, !tbaa !30
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !85 ; 3 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %.thread, label %bb.bc

bb.bc:                                            ; preds = %thread-pre-split.thread
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 3
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !86
  %i.nb = and i8 %i.na, 1
  %.not3848 = icmp eq i8 %i.nb, 0
  br i1 %.not3848, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  %i.nc = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1032
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !87
  %i.nf = call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.mx, i32 noundef 0, ptr noundef %i.ne) ; 4 uses
  %.not3849 = icmp eq ptr %i.nf, null
  br i1 %.not3849, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !64
  %i.ni = icmp eq i32 %i.nh, 8
  br i1 %i.ni, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  %i.nj = load ptr, ptr %i.nf, align 8, !tbaa !30
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 3
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !48
  %.not3850 = icmp eq i8 %i.nl, 0
  br i1 %.not3850, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nm = load ptr, ptr %i.h, align 8, !tbaa !22  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nm, ptr noundef nonnull align 8 dereferenceable(16) %i.nf, i64 16, i1 false), !tbaa.struct !65
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nn, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !65
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.no, ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i64 16, i1 false), !tbaa.struct !65
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 48
  store ptr %i.np, ptr %i.h, align 8, !tbaa !22
  %i.nq = lshr i32 %i.jd, 24
  store i32 %i.nq, ptr %i.n, align 4, !tbaa !75
  %i.nr = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 32
  store ptr %i.jm, ptr %i.ns, align 8, !tbaa !30
  call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.jf)
  %i.nt = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.nu = load i32, ptr %i.n, align 4, !tbaa !75
  %i.nv = shl i32 %i.nu, 24
  %i.nw = load i32, ptr %.43539, align 4, !tbaa !62
  %i.nx = and i32 %i.nw, 16777215
  %i.ny = or disjoint i32 %i.nx, %i.nv
  store i32 %i.ny, ptr %.43539, align 4, !tbaa !62
  br label %.backedge.backedge

.thread:                                          ; preds = %bb.bc, %thread-pre-split.thread, %bb.bf, %bb.be, %bb.bd, %thread-pre-split
  %i.nz = load i32, ptr %i.jq, align 4, !tbaa !64 ; 2 uses
  %i.oa = icmp eq i32 %i.nz, 5
  br i1 %i.oa, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %.thread
  %i.ob = load ptr, ptr %i.jp, align 8, !tbaa !30 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !30
  %i.oe = or i8 %i.od, 32
  %i.of = sext i8 %i.oe to i32
  %i.og = add nsw i32 %i.of, -120                 ; 2 uses
  %i.oh = icmp ult i32 %i.og, 3
  br i1 %i.oh, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 25
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !30
  %i.ok = icmp eq i8 %i.oj, 0
  br i1 %i.ok, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ol = zext nneg i32 %i.og to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ol
  %i.on = load float, ptr %i.om, align 4, !tbaa !89
  %i.oo = fpext float %i.on to double
  store double %i.oo, ptr %i.jh, align 8, !tbaa !30
  %i.op = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  store i32 3, ptr %i.op, align 4, !tbaa !64
  br label %.backedge.backedge

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.oq = load ptr, ptr %i.f, align 8, !tbaa !50  ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 848
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !84 ; 3 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %.critedge3882, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 3
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !86
  %i.ow = and i8 %i.ov, 1
  %.not3851 = icmp eq i8 %i.ow, 0
  br i1 %.not3851, label %bb.bm, label %.critedge3882

bb.bm:                                            ; preds = %bb.bl
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oq, i64 1032
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !87
  %i.oz = call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.os, i32 noundef 0, ptr noundef %i.oy) ; 4 uses
  %.not3852 = icmp eq ptr %i.oz, null
  br i1 %.not3852, label %.critedge3882, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 12
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !64
  %i.pc = icmp eq i32 %i.pb, 8
  br i1 %i.pc, label %bb.bo, label %.critedge3882

bb.bo:                                            ; preds = %bb.bn
  %i.pd = load ptr, ptr %i.oz, align 8, !tbaa !30
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 3
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !48
  %.not3853 = icmp eq i8 %i.pf, 0
  br i1 %.not3853, label %.critedge3882, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pg = load ptr, ptr %i.h, align 8, !tbaa !22  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, ptr noundef nonnull align 8 dereferenceable(16) %i.oz, i64 16, i1 false), !tbaa.struct !65
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ph, ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !65
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i64 16, i1 false), !tbaa.struct !65
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  store ptr %i.pj, ptr %i.h, align 8, !tbaa !22
  %i.pk = lshr i32 %i.jd, 24
  store i32 %i.pk, ptr %i.n, align 4, !tbaa !75
  %i.pl = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  store ptr %i.jm, ptr %i.pm, align 8, !tbaa !30
  call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.jf)
  %i.pn = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.po = load i32, ptr %i.n, align 4, !tbaa !75
  %i.pp = shl i32 %i.po, 24
  %i.pq = load i32, ptr %.43539, align 4, !tbaa !62
  %i.pr = and i32 %i.pq, 16777215
  %i.ps = or disjoint i32 %i.pr, %i.pp
  store i32 %i.ps, ptr %.43539, align 4, !tbaa !62
  br label %.backedge.backedge

bb.bq:                                            ; preds = %.thread
  %i.pt = load i8, ptr @_ZN5FFlag34DebugLuauUserDefinedClassesRuntimeE, align 8, !tbaa !34, !range !35, !noundef !36
  %i.pu = trunc nuw i8 %i.pt to i1
  %i.pv = icmp eq i32 %i.nz, 13
  %or.cond4026 = and i1 %i.pv, %i.pu
  br i1 %or.cond4026, label %bb.br, label %.critedge3882, !prof !90

bb.br:                                            ; preds = %bb.bq
  %i.pw = lshr i32 %i.jd, 24                      ; 4 uses
  %i.px = zext nneg i32 %i.pw to i64              ; 2 uses
  %i.py = load ptr, ptr %i.jl, align 8, !tbaa !30 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !93 ; 5 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 68
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !95
  %i.qd = icmp ult i32 %i.pw, %i.qc
  %.pre4368 = load ptr, ptr %i.jp, align 8, !tbaa !30 ; 2 uses
  br i1 %i.qd, label %bb.bs, label %.critedge3884, !prof !71

bb.bs:                                            ; preds = %bb.br
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 40
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !96
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.px
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !87
  %i.qi = icmp eq ptr %.pre4368, %i.qh
  br i1 %i.qi, label %bb.bt, label %.critedge3884, !prof !71

bb.bt:                                            ; preds = %bb.bs
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qa, i64 64
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !97 ; 2 uses
  %i.ql = icmp ult i32 %i.pw, %i.qk
  br i1 %i.ql, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.qm = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !98
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.px
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !99
  %i.qr = sub nuw nsw i32 %i.pw, %i.qk
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [16 x i8], ptr %i.qq, i64 %i.qs
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.qu = phi ptr [ %i.qo, %bb.bu ], [ %i.qt, %bb.bv ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(16) %i.qu, i64 16, i1 false), !tbaa.struct !65
  br label %.backedge.backedge

.critedge3884:                                    ; preds = %bb.br, %bb.bs
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !100
  %i.qx = call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef %i.qw, ptr noundef %.pre4368) ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !64
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.critedge3884
  call void @_Z23luaG_missingmembererrorP9lua_StatePK10lua_TValueS3_(ptr noundef %0, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.jp) #12
  unreachable

bb.by:                                            ; preds = %.critedge3884
  %i.rb = load double, ptr %i.qx, align 8, !tbaa !30
  %i.rc = fptoui double %i.rb to i32              ; 3 uses
  %i.rd = load ptr, ptr %i.pz, align 8, !tbaa !93 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 64
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !97 ; 2 uses
  %i.rg = icmp ugt i32 %i.rf, %i.rc               ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.ri = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  %i.rj = select i1 %i.rg, i32 0, i32 %i.rf
  %.sink4581 = sub nuw i32 %i.rc, %i.rj
  %.sink.in = select i1 %i.rg, ptr %i.ri, ptr %i.rh
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !101
  %i.rk = zext i32 %.sink4581 to i64
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %.sink, i64 %i.rk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(16) %i.rl, i64 16, i1 false), !tbaa.struct !65
  %i.rm = shl i32 %i.rc, 24
  %i.rn = load i32, ptr %.43539, align 4, !tbaa !62
  %i.ro = and i32 %i.rn, 16777215
  %i.rp = or disjoint i32 %i.ro, %i.rm
  store i32 %i.rp, ptr %.43539, align 4, !tbaa !62
  br label %.backedge.backedge

.critedge3882:                                    ; preds = %bb.bl, %bb.bk, %bb.bq, %bb.bm, %bb.bn, %bb.bo
  %i.rq = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 32
  store ptr %i.jm, ptr %i.rr, align 8, !tbaa !30
  call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.jl, ptr noundef %i.jp, ptr noundef nonnull %i.jh)
  %i.rs = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %.backedge.backedge

bb.bz:                                            ; preds = %.backedge
  %i.rt = getelementptr inbounds nuw i8, ptr %.43539, i64 4
  %i.ru = load i32, ptr %.43539, align 4, !tbaa !62 ; 4 uses
  %i.rv = lshr i32 %i.ru, 8
  %i.rw = and i32 %i.rv, 255
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.rx ; 9 uses
  %i.rz = lshr i32 %i.ru, 16
  %i.sa = and i32 %i.rz, 255
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.sb ; 6 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.43539, i64 8 ; 15 uses
  %i.se = load i32, ptr %i.rt, align 4, !tbaa !62
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [16 x i8], ptr %.03534, i64 %i.sf ; 5 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !64
  switch i32 %i.si, label %.thread3967 [
    i32 7, label %bb.ca
    i32 9, label %bb.co
  ], !prof !102

bb.ca:                                            ; preds = %bb.bz
  %i.sj = load ptr, ptr %i.sc, align 8, !tbaa !30 ; 10 uses
  %i.sk = lshr i32 %i.ru, 24
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 7
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !69
  %i.sn = zext i8 %i.sm to i32
  %i.so = and i32 %i.sk, %i.sn                    ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 32 ; 2 uses
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !70
  %i.sr = zext nneg i32 %i.so to i64
  %i.ss = getelementptr inbounds nuw [32 x i8], ptr %i.sq, i64 %i.sr ; 4 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 28
  %i.su = load i32, ptr %i.st, align 4
  %i.sv = and i32 %i.su, 15
  %i.sw = icmp eq i32 %i.sv, 6
  br i1 %i.sw, label %bb.cb, label %.critedge3886, !prof !71

bb.cb:                                            ; preds = %bb.ca
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !30
  %i.sz = load ptr, ptr %i.sg, align 8, !tbaa !30
  %i.ta = icmp eq ptr %i.sy, %i.sz
  br i1 %i.ta, label %bb.cc, label %.critedge3886, !prof !71

bb.cc:                                            ; preds = %bb.cb
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ss, i64 12
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !74
  %i.td = icmp eq i32 %i.tc, 0
  br i1 %i.td, label %.critedge3886, label %bb.cd, !prof !76

bb.cd:                                            ; preds = %bb.cc
  %i.te = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.tf = load i8, ptr %i.te, align 4, !tbaa !77
  %.not3840 = icmp eq i8 %i.tf, 0
  br i1 %.not3840, label %bb.ce, label %.critedge3886, !prof !71

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ss, ptr noundef nonnull align 8 dereferenceable(16) %i.ry, i64 16, i1 false), !tbaa.struct !65
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !64
  %i.ti = icmp sgt i32 %i.th, 5
  br i1 %i.ti, label %bb.cf, label %.backedge.backedge

bb.cf:                                            ; preds = %bb.ce
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !30
  %i.tl = and i8 %i.tk, 4
  %.not3845 = icmp eq i8 %i.tl, 0
  br i1 %.not3845, label %.backedge.backedge, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.tm = load ptr, ptr %i.ry, align 8, !tbaa !30 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 1
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !30
  %i.tp = and i8 %i.to, 3
  %.not3846 = icmp eq i8 %i.tp, 0
  br i1 %.not3846, label %.backedge.backedge, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef %0, ptr noundef nonnull %i.sj, ptr noundef nonnull %i.tm)
  br label %.backedge.backedge

.critedge3886:                                    ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.cd
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !81 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, null
  br i1 %i.ts, label %.critedge3886._crit_edge, label %bb.ci

.critedge3886._crit_edge:                         ; preds = %.critedge3886
  %.pre4365.pre = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %bb.cj

bb.ci:                                            ; preds = %.critedge3886
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 3
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !86
  %i.tv = and i8 %i.tu, 2
  %.not3841 = icmp eq i8 %i.tv, 0
  %.pre4365.pre4371 = load ptr, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  br i1 %.not3841, label %._crit_edge4363, label %bb.cj

bb.cj:                                            ; preds = %.critedge3886._crit_edge, %bb.ci
  %.pre4365 = phi ptr [ %.pre4365.pre, %.critedge3886._crit_edge ], [ %.pre4365.pre4371, %bb.ci ] ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !77
  %.not3842 = icmp eq i8 %i.tx, 0
  br i1 %.not3842, label %bb.ck, label %._crit_edge4363

bb.ck:                                            ; preds = %bb.cj
  %i.ty = getelementptr inbounds nuw i8, ptr %.pre4365, i64 32
  store ptr %i.sd, ptr %i.ty, align 8, !tbaa !30
  %i.tz = load ptr, ptr %i.sg, align 8, !tbaa !30
  %i.ua = call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef nonnull %0, ptr noundef nonnull %i.sj, ptr noundef %i.tz) ; 2 uses
  %i.ub = load ptr, ptr %i.sp, align 8, !tbaa !70
  %i.uc = ptrtoint ptr %i.ua to i64
  %i.ud = ptrtoint ptr %i.ub to i64
  %i.ue = sub i64 %i.uc, %i.ud
  %17 = trunc i64 %i.ue to i32
  %18 = shl i32 %17, 19
  %19 = and i32 %18, -16777216
  %20 = load i32, ptr %.43539, align 4, !tbaa !62
  %21 = and i32 %20, 16777215
  %22 = or disjoint i32 %19, %21
  store i32 %22, ptr %.43539, align 4, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ua, ptr noundef nonnull align 8 dereferenceable(16) %i.ry, i64 16, i1 false), !tbaa.struct !65
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ry, i64 12
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !64
  %i.uh = icmp sgt i32 %i.ug, 5
  br i1 %i.uh, label %bb.cl, label %.backedge.backedge

bb.cl:                                            ; preds = %bb.ck
  %i.ui = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !30
  %i.uk = and i8 %i.uj, 4
  %.not3843 = icmp eq i8 %i.uk, 0
  br i1 %.not3843, label %.backedge.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ul = load ptr, ptr %i.ry, align 8, !tbaa !30 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 1
  %i.un = load i8, ptr %i.um, align 1, !tbaa !30
  %i.uo = and i8 %i.un, 3
  %.not3844 = icmp eq i8 %i.uo, 0
  br i1 %.not3844, label %.backedge.backedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef nonnull %0, ptr noundef nonnull %i.sj, ptr noundef nonnull %i.ul)
  br label %.backedge.backedge

._crit_edge4363:                                  ; preds = %bb.ci, %bb.cj
  %i.up = phi ptr [ %.pre4365, %bb.cj ], [ %.pre4365.pre4371, %bb.ci ]
  store i32 %i.so, ptr %i.n, align 4, !tbaa !75
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 32
  store ptr %i.sd, ptr %i.uq, align 8, !tbaa !30
  call void @_Z13luaV_settableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef nonnull %0, ptr noundef nonnull %i.sc, ptr noundef %i.sg, ptr noundef nonnull %i.ry)
  %i.ur = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.us = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ut = shl i32 %i.us, 24
  %i.uu = load i32, ptr %.43539, align 4, !tbaa !62
  %i.uv = and i32 %i.uu, 16777215
  %i.uw = or disjoint i32 %i.uv, %i.ut
  store i32 %i.uw, ptr %.43539, align 4, !tbaa !62
  br label %.backedge.backedge

bb.co:                                            ; preds = %bb.bz
  %i.ux = load ptr, ptr %i.sc, align 8, !tbaa !30
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !85 ; 3 uses
  %i.va = icmp eq ptr %i.uz, null
  br i1 %i.va, label %.thread3967, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 3
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !86
  %i.vd = and i8 %i.vc, 2
  %.not3837 = icmp eq i8 %i.vd, 0
  br i1 %.not3837, label %bb.cq, label %.thread3967

bb.cq:                                            ; preds = %bb.cp
  %i.ve = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 1040
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !87
  %i.vh = call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.uz, i32 noundef 1, ptr noundef %i.vg) ; 4 uses
  %.not3838 = icmp eq ptr %i.vh, null
  br i1 %.not3838, label %.thread3967, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 12
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !64
  %i.vk = icmp eq i32 %i.vj, 8
  br i1 %i.vk, label %bb.cs, label %.thread3967

bb.cs:                                            ; preds = %bb.cr
  %i.vl = load ptr, ptr %i.vh, align 8, !tbaa !30
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 3
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !48
  %.not3839 = icmp eq i8 %i.vn, 0
  br i1 %.not3839, label %.thread3967, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vo = load ptr, ptr %i.h, align 8, !tbaa !22  ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vo, ptr noundef nonnull align 8 dereferenceable(16) %i.vh, i64 16, i1 false), !tbaa.struct !65
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, ptr noundef nonnull align 8 dereferenceable(16) %i.sc, i64 16, i1 false), !tbaa.struct !65
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vq, ptr noundef nonnull align 8 dereferenceable(16) %i.sg, i64 16, i1 false), !tbaa.struct !65
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vr, ptr noundef nonnull align 8 dereferenceable(16) %i.ry, i64 16, i1 false), !tbaa.struct !65
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 64
  store ptr %i.vs, ptr %i.h, align 8, !tbaa !22
  %i.vt = lshr i32 %i.ru, 24
  store i32 %i.vt, ptr %i.n, align 4, !tbaa !75
  %i.vu = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 32
  store ptr %i.sd, ptr %i.vv, align 8, !tbaa !30
  call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 3, i32 noundef -1)
  %i.vw = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.vx = load i32, ptr %i.n, align 4, !tbaa !75
  %i.vy = shl i32 %i.vx, 24
  %i.vz = load i32, ptr %.43539, align 4, !tbaa !62
  %i.wa = and i32 %i.vz, 16777215
  %i.wb = or disjoint i32 %i.wa, %i.vy
  store i32 %i.wb, ptr %.43539, align 4, !tbaa !62
  br label %.backedge.backedge

.thread3967:                                      ; preds = %bb.cp, %bb.co, %bb.bz, %bb.cs, %bb.cr, %bb.cq
  %i.wc = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  store ptr %i.sd, ptr %i.wd, align 8, !tbaa !30
  call void @_Z13luaV_settableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.sc, ptr noundef %i.sg, ptr noundef nonnull %i.ry)
  %i.we = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %.backedge.backedge

bb.cu:                                            ; preds = %.backedge
  %i.wf = getelementptr inbounds nuw i8, ptr %.43539, i64 4 ; 3 uses
  %i.wg = load i32, ptr %.43539, align 4, !tbaa !62 ; 3 uses
  %i.wh = lshr i32 %i.wg, 8
  %i.wi = and i32 %i.wh, 255
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.wj ; 2 uses
  %i.wl = lshr i32 %i.wg, 16
  %i.wm = and i32 %i.wl, 255
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.wn ; 3 uses
  %i.wp = lshr i32 %i.wg, 24
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.wq ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 12
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !64
  %i.wu = icmp eq i32 %i.wt, 7
  br i1 %i.wu, label %bb.cv, label %.critedge3888

bb.cv:                                            ; preds = %bb.cu
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 12
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !64
  %i.wx = icmp eq i32 %i.ww, 3
  br i1 %i.wx, label %bb.cw, label %.critedge3888

bb.cw:                                            ; preds = %bb.cv
  %i.wy = load ptr, ptr %i.wo, align 8, !tbaa !30 ; 3 uses
  %i.wz = load double, ptr %i.wr, align 8, !tbaa !30 ; 2 uses
  %i.xa = fptosi double %i.wz to i32              ; 2 uses
  %i.xb = add i32 %i.xa, -1                       ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !103
  %i.xe = icmp ult i32 %i.xb, %i.xd
  br i1 %i.xe, label %bb.cx, label %.critedge3888, !prof !71

bb.cx:                                            ; preds = %bb.cw
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !81
  %.not3860 = icmp eq ptr %i.xg, null
  %i.xh = sitofp i32 %i.xa to double
  %i.xi = fcmp oeq double %i.wz, %i.xh
  %or.cond3937 = and i1 %i.xi, %.not3860
  br i1 %or.cond3937, label %bb.cy, label %.critedge3888, !prof !104

bb.cy:                                            ; preds = %bb.cx
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wy, i64 24
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !105
  %i.xl = zext i32 %i.xb to i64
  %i.xm = getelementptr inbounds nuw [16 x i8], ptr %i.xk, i64 %i.xl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wk, ptr noundef nonnull align 8 dereferenceable(16) %i.xm, i64 16, i1 false), !tbaa.struct !65
  br label %.backedge.backedge

.critedge3888:                                    ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu
  %i.xn = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  store ptr %i.wf, ptr %i.xo, align 8, !tbaa !30
  call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.wo, ptr noundef nonnull %i.wr, ptr noundef nonnull %i.wk)
  %i.xp = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %.backedge.backedge

bb.cz:                                            ; preds = %.backedge
  %i.xq = getelementptr inbounds nuw i8, ptr %.43539, i64 4 ; 6 uses
  %i.xr = load i32, ptr %.43539, align 4, !tbaa !62 ; 3 uses
  %i.xs = lshr i32 %i.xr, 8
  %i.xt = and i32 %i.xs, 255
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.xu ; 4 uses
  %i.xw = lshr i32 %i.xr, 16
  %i.xx = and i32 %i.xw, 255
  %i.xy = zext nneg i32 %i.xx to i64
  %i.xz = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.xy ; 3 uses
  %i.ya = lshr i32 %i.xr, 24
  %i.yb = zext nneg i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.yb ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 12
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !64
  %i.yf = icmp eq i32 %i.ye, 7
  br i1 %i.yf, label %bb.da, label %.critedge3890

bb.da:                                            ; preds = %bb.cz
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 12
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !64
  %i.yi = icmp eq i32 %i.yh, 3
  br i1 %i.yi, label %bb.db, label %.critedge3890

bb.db:                                            ; preds = %bb.da
  %i.yj = load ptr, ptr %i.xz, align 8, !tbaa !30 ; 6 uses
  %i.yk = load double, ptr %i.yc, align 8, !tbaa !30 ; 2 uses
  %i.yl = fptosi double %i.yk to i32              ; 2 uses
  %i.ym = add i32 %i.yl, -1                       ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
end_hunk_0
begin_hunk_1_@_ZL12luau_executeILb1EEvP9lua_State:bb.a
  %i.fat = add nsw i32 %.135584136.prol, -1       ; 2 uses
  %i.fau = getelementptr inbounds nuw i8, ptr %.135624135.prol, i64 16 ; 3 uses
  %i.fav = getelementptr inbounds nuw i8, ptr %.135624135.prol, i64 12
  store i32 0, ptr %i.fav, align 4, !tbaa !64
  %prol.iter4763.next = add i32 %prol.iter4763, 1 ; 2 uses
  %prol.iter4763.cmp.not = icmp eq i32 %prol.iter4763.next, %xtraiter4761
  br i1 %prol.iter4763.cmp.not, label %.lr.ph4137.prol.loopexit, label %.lr.ph4137.prol, !llvm.loop !173

.lr.ph4137.prol.loopexit:                         ; preds = %.lr.ph4137.prol, %.lr.ph4137.preheader
  %.135584136.unr = phi i32 [ %.03557.lcssa, %.lr.ph4137.preheader ], [ %i.fat, %.lr.ph4137.prol ]
  %.135624135.unr = phi ptr [ %.03561.lcssa, %.lr.ph4137.preheader ], [ %i.fau, %.lr.ph4137.prol ]
  %.lcssa4688.unr = phi ptr [ poison, %.lr.ph4137.preheader ], [ %i.fau, %.lr.ph4137.prol ]
  %i.faw = icmp ult i32 %.03557.lcssa, 8
  br i1 %i.faw, label %._crit_edge4138, label %.lr.ph4137

.lr.ph4132:                                       ; preds = %.lr.ph4132.preheader, %.lr.ph4132
  %.035574130 = phi i32 [ %i.faz, %.lr.ph4132 ], [ %i.ezj, %.lr.ph4132.preheader ]
  %.035604129 = phi ptr [ %i.fax, %.lr.ph4132 ], [ %i.far, %.lr.ph4132.preheader ] ; 2 uses
  %.035614128 = phi ptr [ %i.fay, %.lr.ph4132 ], [ %i.fal, %.lr.ph4132.preheader ] ; 2 uses
  %i.fax = getelementptr inbounds nuw i8, ptr %.035604129, i64 16 ; 2 uses
  %i.fay = getelementptr inbounds nuw i8, ptr %.035614128, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.035614128, ptr noundef nonnull align 8 dereferenceable(16) %.035604129, i64 16, i1 false), !tbaa.struct !65
  %i.faz = add nsw i32 %.035574130, -1            ; 3 uses
  %i.fba = icmp ne i32 %i.faz, 0
  %i.fbb = icmp ult ptr %i.fax, %i.fam
  %i.fbc = select i1 %i.fba, i1 %i.fbb, i1 false
  br i1 %i.fbc, label %.lr.ph4132, label %.preheader4045, !llvm.loop !174

.lr.ph4137:                                       ; preds = %.lr.ph4137.prol.loopexit, %.lr.ph4137
  %.135584136 = phi i32 [ %i.fbk, %.lr.ph4137 ], [ %.135584136.unr, %.lr.ph4137.prol.loopexit ] ; 2 uses
  %.135624135 = phi ptr [ %i.fbl, %.lr.ph4137 ], [ %.135624135.unr, %.lr.ph4137.prol.loopexit ] ; 9 uses
  %i.fbd = getelementptr inbounds nuw i8, ptr %.135624135, i64 12
  store i32 0, ptr %i.fbd, align 4, !tbaa !64
  %i.fbe = getelementptr inbounds nuw i8, ptr %.135624135, i64 28
  store i32 0, ptr %i.fbe, align 4, !tbaa !64
  %i.fbf = getelementptr inbounds nuw i8, ptr %.135624135, i64 44
  store i32 0, ptr %i.fbf, align 4, !tbaa !64
  %i.fbg = getelementptr inbounds nuw i8, ptr %.135624135, i64 60
  store i32 0, ptr %i.fbg, align 4, !tbaa !64
  %i.fbh = getelementptr inbounds nuw i8, ptr %.135624135, i64 76
  store i32 0, ptr %i.fbh, align 4, !tbaa !64
  %i.fbi = getelementptr inbounds nuw i8, ptr %.135624135, i64 92
  store i32 0, ptr %i.fbi, align 4, !tbaa !64
  %i.fbj = getelementptr inbounds nuw i8, ptr %.135624135, i64 108
  store i32 0, ptr %i.fbj, align 4, !tbaa !64
  %i.fbk = add nsw i32 %.135584136, -8
  %i.fbl = getelementptr inbounds nuw i8, ptr %.135624135, i64 128 ; 2 uses
  %i.fbm = getelementptr inbounds nuw i8, ptr %.135624135, i64 124
  store i32 0, ptr %i.fbm, align 4, !tbaa !64
  %i.fbn = icmp sgt i32 %.135584136, 8
  br i1 %i.fbn, label %.lr.ph4137, label %._crit_edge4138, !llvm.loop !175

._crit_edge4138:                                  ; preds = %.lr.ph4137.prol.loopexit, %.lr.ph4137, %.preheader4045
  %.13562.lcssa = phi ptr [ %.03561.lcssa, %.preheader4045 ], [ %.lcssa4688.unr, %.lr.ph4137.prol.loopexit ], [ %i.fbl, %.lr.ph4137 ]
  store ptr %i.faj, ptr %i.d, align 8, !tbaa !23
  %i.fbo = load ptr, ptr %i.faj, align 8, !tbaa !28 ; 2 uses
  store ptr %i.fbo, ptr %i.e, align 8, !tbaa !21
  %i.fbp = icmp eq i32 %i.ezi, 0
  br i1 %i.fbp, label %bb.zb, label %bb.za

bb.za:                                            ; preds = %._crit_edge4138
  %i.fbq = getelementptr inbounds i8, ptr %i.fai, i64 -32
  %i.fbr = load ptr, ptr %i.fbq, align 8, !tbaa !26
  br label %bb.zb

bb.zb:                                            ; preds = %._crit_edge4138, %bb.za
  %i.fbs = phi ptr [ %i.fbr, %bb.za ], [ %.13562.lcssa, %._crit_edge4138 ]
  store ptr %i.fbs, ptr %i.h, align 8, !tbaa !22
  br label %.backedge.backedge

.critedge3934:                                    ; preds = %bb.yq, %bb.yr, %bb.yp
  %i.fbt = and i32 %i.exv, -256
  %i.fbu = or disjoint i32 %i.fbt, 20
  store i32 %i.fbu, ptr %.43539, align 4, !tbaa !62
  store i32 %i.eyg, ptr %i.exu, align 4, !tbaa !62
  br label %.backedge.backedge

bb.zc:                                            ; preds = %.backedge
  %i.fbv = getelementptr inbounds nuw i8, ptr %.43539, i64 4
  %i.fbw = load i32, ptr %.43539, align 4, !tbaa !62 ; 2 uses
  %i.fbx = getelementptr inbounds nuw i8, ptr %.43539, i64 8 ; 2 uses
  %i.fby = load i32, ptr %i.fbv, align 4, !tbaa !62
  %i.fbz = lshr i32 %i.fbw, 8
  %i.fca = and i32 %i.fbz, 255
  %i.fcb = zext nneg i32 %i.fca to i64
  %i.fcc = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.fcb
  %i.fcd = zext i32 %i.fby to i64
  %i.fce = getelementptr inbounds nuw [16 x i8], ptr %.03534, i64 %i.fcd
  %i.fcf = lshr i32 %i.fbw, 24
  %i.fcg = zext nneg i32 %i.fcf to i64
  %i.fch = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.fcg
  %i.fci = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.fcj = getelementptr inbounds nuw i8, ptr %i.fci, i64 32
  store ptr %i.fbx, ptr %i.fcj, align 8, !tbaa !30
  %i.fck = load ptr, ptr %i.fcc, align 8, !tbaa !30
  %i.fcl = load ptr, ptr %i.fce, align 8, !tbaa !30
  call void @_Z19luaR_addclassmemberP9lua_StateP9LuauClassP7TStringP10lua_TValue(ptr noundef %0, ptr noundef %i.fck, ptr noundef %i.fcl, ptr noundef %i.fch)
  br label %.backedge.backedge

bb.zd:                                            ; preds = %.backedge
  %i.fcm = getelementptr inbounds nuw i8, ptr %.43539, i64 4
  %i.fcn = load i32, ptr %.43539, align 4, !tbaa !62 ; 3 uses
  %i.fco = getelementptr inbounds nuw i8, ptr %.43539, i64 8 ; 3 uses
  %i.fcp = load i32, ptr %i.fcm, align 4, !tbaa !62
  %i.fcq = lshr i32 %i.fcn, 8
  %i.fcr = and i32 %i.fcq, 255
  %i.fcs = zext nneg i32 %i.fcr to i64
  %i.fct = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.fcs ; 2 uses
  %i.fcu = getelementptr inbounds nuw i8, ptr %i.fct, i64 12
  %i.fcv = load i32, ptr %i.fcu, align 4, !tbaa !64
  %.not3697 = icmp eq i32 %i.fcv, 8
  br i1 %.not3697, label %bb.zf, label %bb.ze, !prof !71

bb.ze:                                            ; preds = %bb.zd
  %i.fcw = ashr i32 %i.fcn, 16
  %i.fcx = sext i32 %i.fcw to i64
  %i.fcy = getelementptr [4 x i8], ptr %i.fco, i64 %i.fcx
  %i.fcz = getelementptr i8, ptr %i.fcy, i64 -4
  br label %.backedge.backedge

bb.zf:                                            ; preds = %bb.zd
  %i.fda = load ptr, ptr %i.fct, align 8, !tbaa !30 ; 2 uses
  %i.fdb = getelementptr inbounds nuw i8, ptr %i.fda, i64 3
  %i.fdc = load i8, ptr %i.fdb, align 1, !tbaa !48
  %.not3698 = icmp eq i8 %i.fdc, 0
  br i1 %.not3698, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %bb.zf
  %i.fdd = getelementptr inbounds nuw i8, ptr %i.fda, i64 24
  %i.fde = load ptr, ptr %i.fdd, align 8, !tbaa !30
  %i.fdf = getelementptr inbounds nuw i8, ptr %i.fde, i64 188
  %i.fdg = load i32, ptr %i.fdf, align 4, !tbaa !143
  %.not3699 = icmp eq i32 %i.fdg, %i.fcp
  br i1 %.not3699, label %.backedge.backedge, label %bb.zh

bb.zh:                                            ; preds = %bb.zg, %bb.zf
  %i.fdh = ashr i32 %i.fcn, 16
  %i.fdi = sext i32 %i.fdh to i64
  %i.fdj = getelementptr [4 x i8], ptr %i.fco, i64 %i.fdi
  %i.fdk = getelementptr i8, ptr %i.fdj, i64 -4
  br label %.backedge.backedge

bb.zi:                                            ; preds = %.backedge
  %i.fdl = getelementptr inbounds nuw i8, ptr %.43539, i64 4
  %i.fdm = load i32, ptr %.43539, align 4, !tbaa !62 ; 3 uses
  %i.fdn = lshr i32 %i.fdm, 8
  %i.fdo = and i32 %i.fdn, 255
  %i.fdp = zext nneg i32 %i.fdo to i64
  %i.fdq = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.fdp ; 4 uses
  %i.fdr = getelementptr inbounds nuw i8, ptr %.43539, i64 8 ; 3 uses
  %i.fds = load i32, ptr %i.fdl, align 4, !tbaa !62
  %i.fdt = zext i32 %i.fds to i64
  %i.fdu = getelementptr inbounds nuw [16 x i8], ptr %.03534, i64 %i.fdt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fdq, ptr noundef nonnull align 8 dereferenceable(16) %i.fdu, i64 16, i1 false), !tbaa.struct !65
  %i.fdv = load ptr, ptr %i.fdq, align 8, !tbaa !30
  %i.fdw = and i32 %i.fdm, 16711680
  %.not3695 = icmp eq i32 %i.fdw, 16711680
  br i1 %.not3695, label %.backedge.backedge, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  %i.fdx = lshr i32 %i.fdm, 16
  %i.fdy = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.fdz = getelementptr inbounds nuw i8, ptr %i.fdy, i64 32
  store ptr %i.fdr, ptr %i.fdz, align 8, !tbaa !30
  %i.fea = and i32 %i.fdx, 255
  %i.feb = zext nneg i32 %i.fea to i64
  %i.fec = getelementptr inbounds nuw [16 x i8], ptr %.18, i64 %i.feb ; 3 uses
  %i.fed = getelementptr inbounds nuw i8, ptr %i.fec, i64 12
  %i.fee = load i32, ptr %i.fed, align 4, !tbaa !64
  %.not3696 = icmp eq i32 %i.fee, 12
  br i1 %.not3696, label %bb.zl, label %bb.zk, !prof !71

bb.zk:                                            ; preds = %bb.zj
  call void @_Z15luaG_typeerrorLP9lua_StatePK10lua_TValuePKc(ptr noundef nonnull %0, ptr noundef nonnull %i.fec, ptr noundef nonnull @.str.17) #12
  unreachable

bb.zl:                                            ; preds = %bb.zj
  %i.fef = load ptr, ptr %i.fec, align 8, !tbaa !30
  %i.feg = call noundef ptr @_Z17luaR_inheritclassP9lua_StatePK9LuauClassS3_(ptr noundef nonnull %0, ptr noundef %i.fdv, ptr noundef %i.fef)
  store ptr %i.feg, ptr %i.fdq, align 8, !tbaa !30
  %i.feh = getelementptr inbounds nuw i8, ptr %i.fdq, i64 12
  store i32 12, ptr %i.feh, align 4, !tbaa !64
  br label %.backedge.backedge

.loopexit4047.sink.split.sink.split:              ; preds = %bb.vv, %bb.vo, %bb.sv, %bb.rr, %bb.go
  %i.fei = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %.loopexit4047.sink.split

.loopexit4047.sink.split:                         ; preds = %bb.hq, %bb.ft, %.loopexit4047.sink.split.sink.split
  %.sink4600 = phi ptr [ %i.fei, %.loopexit4047.sink.split.sink.split ], [ %.pre4358.pre, %bb.ft ], [ %.pre4353, %bb.hq ]
  %i.fej = getelementptr inbounds nuw i8, ptr %.sink4600, i64 32 ; 2 uses
  %i.fek = load ptr, ptr %i.fej, align 8, !tbaa !30
  %i.fel = getelementptr inbounds i8, ptr %i.fek, i64 -4
  store ptr %i.fel, ptr %i.fej, align 8, !tbaa !30
  br label %.loopexit4047

.loopexit4047:                                    ; preds = %bb.ue, %bb.yy, %bb.xl, %bb.tm, %bb.rb, %bb.hw, %bb.hl, %bb.gj, %bb.e, %.loopexit4047.sink.split
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %bb.b
  %.43539 = phi ptr [ %i.v, %bb.b ], [ %.43539.be, %.backedge.backedge ] ; 251 uses
  %.03534 = phi ptr [ %i.ac, %bb.b ], [ %.03534.be, %.backedge.backedge ] ; 263 uses
  %.18 = phi ptr [ %i.z, %bb.b ], [ %.18.be, %.backedge.backedge ] ; 321 uses
  %.0 = phi ptr [ %i.y, %bb.b ], [ %.0.be, %.backedge.backedge ] ; 256 uses
  %i.fem = phi ptr [ blockaddress(@_ZL12luau_executeILb1EEvP9lua_State, %bb.c), %bb.b ], [ %.be, %.backedge.backedge ]
  indirectbr ptr %i.fem, [label %bb.g, label %bb.xi, label %bb.h, label %bb.i, label %bb.j, label %bb.k, label %bb.l, label %bb.m, label %bb.q, label %bb.y, label %bb.ab, label %bb.af, label %bb.ai, label %bb.cu, label %bb.cz, label %bb.am, label %bb.bz, label %bb.di, label %bb.dm, label %bb.du, label %bb.ed, label %bb.fs, label %bb.hp, label %bb.hy, label %bb.vn, label %bb.hz, label %bb.id, label %bb.ih, label %bb.ks, label %bb.lc, label %bb.jm, label %bb.kx, label %bb.lh, label %bb.lm, label %bb.lv, label %bb.me, label %bb.mp, label %bb.nj, label %bb.nn, label %bb.nr, label %bb.nu, label %bb.nx, label %bb.of, label %bb.ov, label %bb.oy, label %bb.pi, label %bb.pm, label %bb.pq, label %bb.pu, label %bb.py, label %bb.qb, label %bb.qe, label %bb.qm, label %bb.qt, label %bb.qw, label %bb.qz, label %bb.rh, label %bb.rq, label %bb.su, label %bb.tp, label %bb.xe, label %bb.tx, label %bb.ue, label %bb.uf, label %bb.um, label %bb.vk, label %bb.vt, label %bb.vu, label %bb.wa, label %bb.wi, label %bb.wj, label %bb.wk, label %bb.wn, label %bb.wr, label %bb.ww, label %bb.xa, label %bb.rz, label %bb.xn, label %bb.xo, label %bb.xr, label %bb.xu, label %bb.na, label %bb.on, label %bb.xx, label %bb.yg, label %bb.yp, label %bb.zc, label %bb.gn, label %bb.zd, label %bb.zi, label %bb.c]
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL12luau_executeILb0EEvP9lua_State(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.lua_TValue, align 8         ; 3 uses
  %2 = alloca %struct.lua_TValue, align 8         ; 3 uses
  %3 = alloca %struct.lua_TValue, align 8         ; 3 uses
  %4 = alloca %struct.lua_TValue, align 8         ; 3 uses
  %i.a = alloca i16, align 2                      ; 3 uses
  %i.b = alloca i16, align 2                      ; 3 uses
  %i.c = alloca i16, align 2                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 136 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !122
  %i.h = and i32 %i.g, 4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr @_ZN5FFlag11LuauCIProtoE, align 8, !tbaa !34, !range !35, !noundef !36
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %.pn.pre = load ptr, ptr %i.l, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pn = phi ptr [ %.pn.pre, %bb.c ], [ %i.e, %bb.b ]
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %i.m = load ptr, ptr %.in, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1392
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !131
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull %0, ptr noundef %i.m)
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.loopexit4247, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 88 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 39 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 75 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 18 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.backedge4249

.backedge4249:                                    ; preds = %.backedge4249.backedge, %bb.e
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !23  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.ap = load i8, ptr @_ZN5FFlag11LuauCIProtoE, align 8, !tbaa !34, !range !35, !noundef !36
  %i.aq = trunc nuw i8 %i.ap to i1
  %spec.select = select i1 %i.aq, ptr %i.ai, ptr %i.an
  %.pn3893.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %.pn3893 = load ptr, ptr %.pn3893.in, align 8, !tbaa !30
  %.in3892 = getelementptr inbounds nuw i8, ptr %.pn3893, i64 8
  %i.ar = load ptr, ptr %.in3892, align 8, !tbaa !49
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !62
  %i.at = and i32 %i.as, 255
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63
  br label %.backedge

bb.f:                                             ; preds = %.backedge
  %i.ax = getelementptr inbounds nuw i8, ptr %.43738, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !62
  %i.az = and i32 %i.ay, 255
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !63
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.o, %.critedge, %bb.x, %.critedge4077, %bb.aa, %bb.af, %bb.aj, %bb.am, %bb.an, %bb.as, %bb.av, %bb.aw, %bb.bc, %bb.bd, %bb.bi, %bb.bl, %bb.br, %bb.by, %bb.ca, %.critedge4083, %bb.ck, %bb.cr, %._crit_edge4572, %bb.cx, %.thread4168, %bb.dc, %.critedge4089, %bb.dm, %.critedge4091, %bb.dq, %.critedge4093, %bb.dz, %.critedge4095, %bb.ei, %bb.fy, %bb.gp, %bb.gt, %bb.hp, %bb.hv, %bb.ig, %bb.ih, %bb.il, %bb.ip, %bb.is, %bb.it, %bb.ix, %bb.iy, %_Z10luai_veceqPKfS0_.exit.thread, %bb.jb, %.critedge4101, %.thread4183, %bb.jp, %bb.jq, %bb.jr, %bb.jt, %bb.ju, %bb.jx, %bb.jy, %bb.kc, %bb.kd, %bb.kg, %bb.kh, %.critedge4103, %.thread4188, %bb.kv, %bb.kw, %bb.kx, %bb.kz, %bb.la, %bb.ld, %bb.lf, %.critedge4105.thread, %bb.li, %bb.lk, %.critedge4107.thread, %bb.ln, %bb.lp, %.critedge4109.thread, %bb.ls, %bb.lu, %.critedge4111.thread, %bb.lx, %bb.lz, %bb.md, %.thread4191, %bb.mg, %bb.mi, %bb.mm, %.thread4193, %bb.mp, %bb.mr, %bb.ms, %bb.mt, %bb.mx, %.thread4197.thread, %bb.na, %bb.nc, %bb.nd, %bb.ne, %bb.ni, %.thread4201.thread, %bb.nl, %bb.nn, %bb.nr, %.critedge4121.thread.thread, %bb.nu, %bb.nv, %bb.ny, %bb.nz, %bb.ob, %bb.oc, %bb.oe, %bb.of, %bb.oh, %bb.oi, %bb.om, %bb.on, %bb.op, %bb.oq, %bb.ou, %bb.ov, %bb.ox, %bb.oy, %bb.pc, %bb.pd, %bb.pf, %bb.pg, %bb.pp, %bb.pq, %bb.pu, %bb.py, %bb.qc, %bb.qg, %bb.qj, %bb.qm, %bb.qo, %bb.qp, %bb.qt, %bb.qu, %bb.qy, %bb.qz, %bb.ra, %bb.rb, %bb.re, %bb.rh, %bb.rq, %bb.rz, %bb.si, %bb.sj, %bb.te, %bb.tp, %bb.tr, %bb.tu, %._crit_edge4376, %bb.tz, %bb.uh, %bb.uo, %._crit_edge4365, %._crit_edge4361, %bb.vu, %._crit_edge4348, %bb.wd, %bb.we, %bb.wk, %bb.ws, %bb.wt, %bb.wu, %bb.wv, %bb.wy, %bb.wz, %bb.xb, %bb.xc, %bb.xd, %bb.xi, %bb.xj, %bb.xk, %bb.xp, %bb.xq, %bb.xr, %bb.xw, %bb.xx, %bb.xy, %bb.yd, %bb.ye, %bb.yf, %bb.yk, %bb.yl, %bb.yo, %bb.yr, %bb.yu, %bb.zd, %.critedge4131, %bb.zm, %.critedge4133, %bb.zz, %.critedge4135, %bb.aaa, %bb.aac, %bb.aag, %bb.aal
  %.43738.be = phi ptr [ %i.ax, %bb.f ], [ %.43738, %bb.yk ], [ %i.bd, %bb.g ], [ %i.ca, %bb.h ], [ %i.cg, %bb.i ], [ %i.cu, %bb.j ], [ %i.di, %bb.k ], [ %i.ed, %.critedge ], [ %i.ed, %bb.o ], [ %i.gb, %bb.x ], [ %i.gb, %.critedge4077 ], [ %i.if, %bb.aa ], [ %i.jc, %bb.af ], [ %i.kf, %bb.aj ], [ %i.lp, %bb.an ], [ %i.lj, %bb.am ], [ %i.acg, %bb.dc ], [ %i.acg, %.critedge4089 ], [ %i.aeb, %bb.dm ], [ %i.aeb, %.critedge4091 ], [ %i.ml, %bb.as ], [ %i.ml, %bb.aw ], [ %i.ml, %bb.av ], [ %i.ml, %bb.bc ], [ %i.ml, %bb.bi ], [ %i.ml, %bb.bl ], [ %i.ml, %bb.br ], [ %i.ml, %.critedge4083 ], [ %i.ml, %bb.by ], [ %i.ml, %bb.ca ], [ %i.ml, %bb.bd ], [ %i.xf, %bb.ck ], [ %i.xf, %._crit_edge4572 ], [ %i.xf, %bb.cr ], [ %i.xf, %bb.cx ], [ %i.xf, %.thread4168 ], [ %i.agi, %bb.dq ], [ %i.agi, %.critedge4093 ], [ %i.ahv, %bb.dz ], [ %i.ahv, %.critedge4095 ], [ %.03734.lcssa, %bb.ei ], [ %i.amp, %bb.fy ], [ %i.avf, %bb.gt ], [ %i.ayp, %bb.gp ], [ %i.bjr, %bb.ig ], [ %i.bkd, %bb.ih ], [ %i.fjq, %bb.wd ], [ %i.bkw, %bb.il ], [ %i.blp, %bb.ip ], [ %i.bml, %bb.is ], [ %i.bmx, %bb.it ], [ %i.bno, %bb.ix ], [ %i.boa, %bb.iy ], [ %i.bow, %_Z10luai_veceqPKfS0_.exit.thread ], [ %i.bpi, %bb.jb ], [ %i.buc, %bb.jt ], [ %i.bqj, %.critedge4101 ], [ %i.bsq, %bb.jp ], [ %i.brj, %.thread4183 ], [ %i.btc, %bb.jq ], [ %i.bto, %bb.jr ], [ %i.bui, %bb.ju ], [ %i.cdv, %bb.ld ], [ %i.cel, %bb.lf ], [ %i.cez, %.critedge4105.thread ], [ %i.cid, %bb.ln ], [ %i.cit, %bb.lp ], [ %i.cjh, %.critedge4109.thread ], [ %i.bvc, %bb.jx ], [ %i.bvn, %bb.jy ], [ %i.bwc, %bb.kc ], [ %i.bwo, %bb.kd ], [ %i.bxm, %bb.kg ], [ %i.bxx, %bb.kh ], [ %i.ccn, %bb.kz ], [ %i.byx, %.critedge4103 ], [ %i.cbd, %bb.kv ], [ %i.bzw, %.thread4188 ], [ %i.cbo, %bb.kw ], [ %i.cbz, %bb.kx ], [ %i.ccv, %bb.la ], [ %i.cfz, %bb.li ], [ %i.cgp, %bb.lk ], [ %i.chd, %.critedge4107.thread ], [ %i.ckh, %bb.ls ], [ %i.ckx, %bb.lu ], [ %i.cll, %.critedge4111.thread ], [ %i.clr, %bb.lx ], [ %i.clr, %bb.lz ], [ %i.clr, %bb.md ], [ %i.clr, %.thread4191 ], [ %i.col, %bb.mg ], [ %i.col, %bb.mi ], [ %i.col, %bb.mm ], [ %i.col, %.thread4193 ], [ %i.crf, %bb.mp ], [ %i.crf, %bb.mr ], [ %i.crf, %bb.ms ], [ %i.crf, %bb.mt ], [ %i.crf, %bb.mx ], [ %i.crf, %.thread4197.thread ], [ %i.cvg, %bb.na ], [ %i.cvg, %bb.nc ], [ %i.cvg, %bb.nd ], [ %i.cvg, %bb.ne ], [ %i.cvg, %bb.ni ], [ %i.cvg, %.thread4201.thread ], [ %i.dcn, %bb.nu ], [ %i.dcn, %bb.nv ], [ %i.dea, %bb.ny ], [ %i.dea, %bb.nz ], [ %i.dfk, %bb.ob ], [ %i.dfk, %bb.oc ], [ %i.dgr, %bb.oe ], [ %i.dgr, %bb.of ], [ %i.dhy, %bb.oh ], [ %i.dhy, %bb.oi ], [ %i.dhy, %bb.om ], [ %i.dhy, %bb.on ], [ %i.dkn, %bb.op ], [ %i.dkn, %bb.oq ], [ %i.dkn, %bb.ou ], [ %i.dkn, %bb.ov ], [ %i.dpz, %bb.pf ], [ %i.dpz, %bb.pg ], [ %i.drj, %bb.pp ], [ %i.drj, %bb.pq ], [ %i.dsy, %bb.pu ], [ %i.dtv, %bb.py ], [ %i.dus, %bb.qc ], [ %i.dvp, %bb.qg ], [ %i.dwm, %bb.qj ], [ %i.dxq, %bb.qm ], [ %i.dym, %bb.qo ], [ %i.dym, %bb.qp ], [ %i.dym, %bb.qt ], [ %i.dym, %bb.qu ], [ %i.eas, %bb.qy ], [ %i.eas, %bb.qz ], [ %i.eas, %bb.ra ], [ %i.eas, %bb.rb ], [ %i.edb, %bb.re ], [ %i.edz, %bb.rh ], [ %i.efn, %bb.rq ], [ %i.eiq, %bb.rz ], [ %i.ekk, %bb.si ], [ %i.ejs, %bb.sj ], [ %i.erp, %bb.tp ], [ %i.esr, %bb.tr ], [ %i.euf, %bb.tu ], [ %i.euo, %._crit_edge4376 ], [ %i.evs, %bb.tz ], [ %i.exa, %bb.uh ], [ %i.fxq, %bb.yd ], [ %i.fxo, %bb.ye ], [ %i.fxo, %bb.yf ], [ %i.eyg, %bb.uo ], [ %i.eyy, %._crit_edge4365 ], [ %i.eyy, %._crit_edge4361 ], [ %i.fgx, %bb.vu ], [ %i.fhd, %._crit_edge4348 ], [ %i.fkc, %bb.we ], [ %i.fll, %bb.wk ], [ %i.fnj, %bb.ws ], [ %i.flr, %bb.wt ], [ %i.flr, %bb.wu ], [ %i.fnz, %bb.wv ], [ %i.fon, %bb.wy ], [ %i.fon, %bb.wz ], [ %i.fpu, %bb.xb ], [ %i.fpu, %bb.xc ], [ %i.fpu, %bb.xd ], [ %i.fsw, %bb.xi ], [ %i.frq, %bb.xj ], [ %i.frq, %bb.xk ], [ %i.ftq, %bb.xp ], [ %i.fto, %bb.xq ], [ %i.fto, %bb.xr ], [ %i.fvq, %bb.xw ], [ %i.fvo, %bb.xx ], [ %i.fvo, %bb.xy ], [ %i.eoq, %bb.te ], [ %i.gbi, %bb.yl ], [ %i.gch, %bb.yo ], [ %i.gdj, %bb.yr ], [ %i.gel, %bb.yu ], [ %i.czh, %bb.nl ], [ %i.czh, %bb.nn ], [ %i.czh, %bb.nr ], [ %i.czh, %.critedge4121.thread.thread ], [ %i.dnc, %bb.ox ], [ %i.dnc, %bb.oy ], [ %i.dnc, %bb.pc ], [ %i.dnc, %bb.pd ], [ %i.gfa, %bb.zd ], [ %.43738, %.critedge4131 ], [ %i.ght, %bb.zm ], [ %.43738, %.critedge4133 ], [ %.23736, %bb.zz ], [ %.43738, %.critedge4135 ], [ %i.goj, %bb.aaa ], [ %i.bbc, %bb.hv ], [ %i.beo, %bb.hp ], [ %i.gpq, %bb.aac ], [ %.33737, %bb.aag ], [ %i.gqs, %bb.aal ]
  %.03733.be = phi ptr [ %.03733, %bb.f ], [ %.03733, %bb.yk ], [ %.03733, %bb.g ], [ %.03733, %bb.h ], [ %.03733, %bb.i ], [ %.03733, %bb.j ], [ %.03733, %bb.k ], [ %.03733, %.critedge ], [ %.03733, %bb.o ], [ %.03733, %bb.x ], [ %.03733, %.critedge4077 ], [ %.03733, %bb.aa ], [ %.03733, %bb.af ], [ %.03733, %bb.aj ], [ %.03733, %bb.an ], [ %.03733, %bb.am ], [ %.03733, %bb.dc ], [ %.03733, %.critedge4089 ], [ %.03733, %bb.dm ], [ %.03733, %.critedge4091 ], [ %.03733, %bb.as ], [ %.03733, %bb.aw ], [ %.03733, %bb.av ], [ %.03733, %bb.bc ], [ %.03733, %bb.bi ], [ %.03733, %bb.bl ], [ %.03733, %bb.br ], [ %.03733, %.critedge4083 ], [ %.03733, %bb.by ], [ %.03733, %bb.ca ], [ %.03733, %bb.bd ], [ %.03733, %bb.ck ], [ %.03733, %._crit_edge4572 ], [ %.03733, %bb.cr ], [ %.03733, %bb.cx ], [ %.03733, %.thread4168 ], [ %.03733, %bb.dq ], [ %.03733, %.critedge4093 ], [ %.03733, %bb.dz ], [ %.03733, %.critedge4095 ], [ %.03733, %bb.ei ], [ %.03733, %bb.fy ], [ %.03733, %bb.gt ], [ %i.ayr, %bb.gp ], [ %i.bjt, %bb.ig ], [ %.03733, %bb.ih ], [ %.03733, %bb.wd ], [ %.03733, %bb.il ], [ %.03733, %bb.ip ], [ %.03733, %bb.is ], [ %.03733, %bb.it ], [ %.03733, %bb.ix ], [ %.03733, %bb.iy ], [ %.03733, %_Z10luai_veceqPKfS0_.exit.thread ], [ %.03733, %bb.jb ], [ %.03733, %bb.jt ], [ %.03733, %.critedge4101 ], [ %.03733, %bb.jp ], [ %.03733, %.thread4183 ], [ %.03733, %bb.jq ], [ %.03733, %bb.jr ], [ %.03733, %bb.ju ], [ %.03733, %bb.ld ], [ %.03733, %bb.lf ], [ %.03733, %.critedge4105.thread ], [ %.03733, %bb.ln ], [ %.03733, %bb.lp ], [ %.03733, %.critedge4109.thread ], [ %.03733, %bb.jx ], [ %.03733, %bb.jy ], [ %.03733, %bb.kc ], [ %.03733, %bb.kd ], [ %.03733, %bb.kg ], [ %.03733, %bb.kh ], [ %.03733, %bb.kz ], [ %.03733, %.critedge4103 ], [ %.03733, %bb.kv ], [ %.03733, %.thread4188 ], [ %.03733, %bb.kw ], [ %.03733, %bb.kx ], [ %.03733, %bb.la ], [ %.03733, %bb.li ], [ %.03733, %bb.lk ], [ %.03733, %.critedge4107.thread ], [ %.03733, %bb.ls ], [ %.03733, %bb.lu ], [ %.03733, %.critedge4111.thread ], [ %.03733, %bb.lx ], [ %.03733, %bb.lz ], [ %.03733, %bb.md ], [ %.03733, %.thread4191 ], [ %.03733, %bb.mg ], [ %.03733, %bb.mi ], [ %.03733, %bb.mm ], [ %.03733, %.thread4193 ], [ %.03733, %bb.mp ], [ %.03733, %bb.mr ], [ %.03733, %bb.ms ], [ %.03733, %bb.mt ], [ %.03733, %bb.mx ], [ %.03733, %.thread4197.thread ], [ %.03733, %bb.na ], [ %.03733, %bb.nc ], [ %.03733, %bb.nd ], [ %.03733, %bb.ne ], [ %.03733, %bb.ni ], [ %.03733, %.thread4201.thread ], [ %.03733, %bb.nu ], [ %.03733, %bb.nv ], [ %.03733, %bb.ny ], [ %.03733, %bb.nz ], [ %.03733, %bb.ob ], [ %.03733, %bb.oc ], [ %.03733, %bb.oe ], [ %.03733, %bb.of ], [ %.03733, %bb.oh ], [ %.03733, %bb.oi ], [ %.03733, %bb.om ], [ %.03733, %bb.on ], [ %.03733, %bb.op ], [ %.03733, %bb.oq ], [ %.03733, %bb.ou ], [ %.03733, %bb.ov ], [ %.03733, %bb.pf ], [ %.03733, %bb.pg ], [ %.03733, %bb.pp ], [ %.03733, %bb.pq ], [ %.03733, %bb.pu ], [ %.03733, %bb.py ], [ %.03733, %bb.qc ], [ %.03733, %bb.qg ], [ %.03733, %bb.qj ], [ %.03733, %bb.qm ], [ %.03733, %bb.qo ], [ %.03733, %bb.qp ], [ %.03733, %bb.qt ], [ %.03733, %bb.qu ], [ %.03733, %bb.qy ], [ %.03733, %bb.qz ], [ %.03733, %bb.ra ], [ %.03733, %bb.rb ], [ %.03733, %bb.re ], [ %.03733, %bb.rh ], [ %.03733, %bb.rq ], [ %.03733, %bb.rz ], [ %.03733, %bb.si ], [ %.03733, %bb.sj ], [ %.03733, %bb.tp ], [ %.03733, %bb.tr ], [ %.03733, %bb.tu ], [ %.03733, %._crit_edge4376 ], [ %.03733, %bb.tz ], [ %.03733, %bb.uh ], [ %.03733, %bb.yd ], [ %.03733, %bb.ye ], [ %.03733, %bb.yf ], [ %.03733, %bb.uo ], [ %.03733, %._crit_edge4365 ], [ %.03733, %._crit_edge4361 ], [ %.03733, %bb.vu ], [ %.03733, %._crit_edge4348 ], [ %.03733, %bb.we ], [ %.03733, %bb.wk ], [ %.03733, %bb.ws ], [ %.03733, %bb.wt ], [ %.03733, %bb.wu ], [ %.03733, %bb.wv ], [ %.03733, %bb.wy ], [ %.03733, %bb.wz ], [ %.03733, %bb.xb ], [ %.03733, %bb.xc ], [ %.03733, %bb.xd ], [ %.03733, %bb.xi ], [ %.03733, %bb.xj ], [ %.03733, %bb.xk ], [ %.03733, %bb.xp ], [ %.03733, %bb.xq ], [ %.03733, %bb.xr ], [ %.03733, %bb.xw ], [ %.03733, %bb.xx ], [ %.03733, %bb.xy ], [ %.03733, %bb.te ], [ %.03733, %bb.yl ], [ %.03733, %bb.yo ], [ %.03733, %bb.yr ], [ %.03733, %bb.yu ], [ %.03733, %bb.nl ], [ %.03733, %bb.nn ], [ %.03733, %bb.nr ], [ %.03733, %.critedge4121.thread.thread ], [ %.03733, %bb.ox ], [ %.03733, %bb.oy ], [ %.03733, %bb.pc ], [ %.03733, %bb.pd ], [ %.03733, %bb.zd ], [ %.03733, %.critedge4131 ], [ %.03733, %bb.zm ], [ %.03733, %.critedge4133 ], [ %.03733, %bb.zz ], [ %.03733, %.critedge4135 ], [ %.03733, %bb.aaa ], [ %.03733, %bb.hv ], [ %i.beq, %bb.hp ], [ %.03733, %bb.aac ], [ %.03733, %bb.aag ], [ %.03733, %bb.aal ]
  %.17.be = phi ptr [ %.17, %bb.f ], [ %.16, %bb.yk ], [ %.17, %bb.g ], [ %.17, %bb.h ], [ %.17, %bb.i ], [ %.17, %bb.j ], [ %.17, %bb.k ], [ %i.fk, %.critedge ], [ %.17, %bb.o ], [ %.17, %bb.x ], [ %i.hu, %.critedge4077 ], [ %.17, %bb.aa ], [ %.17, %bb.af ], [ %.17, %bb.aj ], [ %i.lv, %bb.an ], [ %.17, %bb.am ], [ %.17, %bb.dc ], [ %i.adv, %.critedge4089 ], [ %.17, %bb.dm ], [ %i.agc, %.critedge4091 ], [ %.17, %bb.as ], [ %i.og, %bb.aw ], [ %.17, %bb.av ], [ %.17, %bb.bc ], [ %i.rr, %bb.bi ], [ %.17, %bb.bl ], [ %i.tv, %bb.br ], [ %i.wp, %.critedge4083 ], [ %.17, %bb.by ], [ %.17, %bb.ca ], [ %.17, %bb.bd ], [ %.17, %bb.ck ], [ %i.aad, %._crit_edge4572 ], [ %.17, %bb.cr ], [ %i.abn, %bb.cx ], [ %i.aca, %.thread4168 ], [ %.17, %bb.dq ], [ %i.ahp, %.critedge4093 ], [ %.17, %bb.dz ], [ %i.ajo, %.critedge4095 ], [ %i.alz, %bb.ei ], [ %.03732, %bb.fy ], [ %i.baf, %bb.gt ], [ %i.ayb, %bb.gp ], [ %i.bis, %bb.ig ], [ %.17, %bb.ih ], [ %.13, %bb.wd ], [ %.17, %bb.il ], [ %.17, %bb.ip ], [ %.17, %bb.is ], [ %.17, %bb.it ], [ %.17, %bb.ix ], [ %.17, %bb.iy ], [ %.17, %_Z10luai_veceqPKfS0_.exit.thread ], [ %.17, %bb.jb ], [ %i.btx, %bb.jt ], [ %.17, %.critedge4101 ], [ %i.bsg, %bb.jp ], [ %.17, %.thread4183 ], [ %.17, %bb.jq ], [ %.17, %bb.jr ], [ %.17, %bb.ju ], [ %.17, %bb.ld ], [ %.17, %bb.lf ], [ %i.ceu, %.critedge4105.thread ], [ %.17, %bb.ln ], [ %.17, %bb.lp ], [ %i.cjc, %.critedge4109.thread ], [ %.17, %bb.jx ], [ %.17, %bb.jy ], [ %.17, %bb.kc ], [ %.17, %bb.kd ], [ %.17, %bb.kg ], [ %.17, %bb.kh ], [ %i.cci, %bb.kz ], [ %.17, %.critedge4103 ], [ %i.cat, %bb.kv ], [ %.17, %.thread4188 ], [ %.17, %bb.kw ], [ %.17, %bb.kx ], [ %.17, %bb.la ], [ %.17, %bb.li ], [ %.17, %bb.lk ], [ %i.cgy, %.critedge4107.thread ], [ %.17, %bb.ls ], [ %.17, %bb.lu ], [ %i.clg, %.critedge4111.thread ], [ %.17, %bb.lx ], [ %.17, %bb.lz ], [ %i.cnx, %bb.md ], [ %i.cof, %.thread4191 ], [ %.17, %bb.mg ], [ %.17, %bb.mi ], [ %i.cqr, %bb.mm ], [ %i.cqz, %.thread4193 ], [ %.17, %bb.mp ], [ %.17, %bb.mr ], [ %.17, %bb.ms ], [ %.17, %bb.mt ], [ %i.cus, %bb.mx ], [ %i.cva, %.thread4197.thread ], [ %.17, %bb.na ], [ %.17, %bb.nc ], [ %.17, %bb.nd ], [ %.17, %bb.ne ], [ %i.cyt, %bb.ni ], [ %i.czb, %.thread4201.thread ], [ %.17, %bb.nu ], [ %i.ddu, %bb.nv ], [ %.17, %bb.ny ], [ %i.dfe, %bb.nz ], [ %.17, %bb.ob ], [ %i.dgl, %bb.oc ], [ %.17, %bb.oe ], [ %i.dhs, %bb.of ], [ %.17, %bb.oh ], [ %.17, %bb.oi ], [ %i.djz, %bb.om ], [ %i.dkh, %bb.on ], [ %.17, %bb.op ], [ %.17, %bb.oq ], [ %i.dmo, %bb.ou ], [ %i.dmw, %bb.ov ], [ %.17, %bb.pf ], [ %i.drd, %bb.pg ], [ %.17, %bb.pp ], [ %i.dss, %bb.pq ], [ %.17, %bb.pu ], [ %.17, %bb.py ], [ %.17, %bb.qc ], [ %.17, %bb.qg ], [ %i.dxk, %bb.qj ], [ %.17, %bb.qm ], [ %.17, %bb.qo ], [ %.17, %bb.qp ], [ %i.eae, %bb.qt ], [ %i.eam, %bb.qu ], [ %.17, %bb.qy ], [ %i.ebv, %bb.qz ], [ %.17, %bb.ra ], [ %i.ecn, %bb.rb ], [ %i.edt, %bb.re ], [ %i.eev, %bb.rh ], [ %.17, %bb.rq ], [ %.17, %bb.rz ], [ %.6, %bb.si ], [ %.6, %bb.sj ], [ %.9, %bb.tp ], [ %.9, %bb.tr ], [ %.9, %bb.tu ], [ %.9, %._crit_edge4376 ], [ %.10, %bb.tz ], [ %.17, %bb.uh ], [ %.17, %bb.yd ], [ %.17, %bb.ye ], [ %.17, %bb.yf ], [ %.17, %bb.uo ], [ %i.fac, %._crit_edge4365 ], [ %.17, %._crit_edge4361 ], [ %.11, %bb.vu ], [ %i.fhu, %._crit_edge4348 ], [ %.17, %bb.we ], [ %.15, %bb.wk ], [ %.17, %bb.ws ], [ %.17, %bb.wt ], [ %.17, %bb.wu ], [ %.17, %bb.wv ], [ %.17, %bb.wy ], [ %i.fpo, %bb.wz ], [ %.17, %bb.xb ], [ %.17, %bb.xc ], [ %i.frk, %bb.xd ], [ %.17, %bb.xi ], [ %.17, %bb.xj ], [ %.17, %bb.xk ], [ %.17, %bb.xp ], [ %.17, %bb.xq ], [ %.17, %bb.xr ], [ %.17, %bb.xw ], [ %.17, %bb.xx ], [ %.17, %bb.xy ], [ %.7, %bb.te ], [ %.17, %bb.yl ], [ %.17, %bb.yo ], [ %.17, %bb.yr ], [ %.17, %bb.yu ], [ %.17, %bb.nl ], [ %.17, %bb.nn ], [ %i.dbz, %bb.nr ], [ %i.dch, %.critedge4121.thread.thread ], [ %.17, %bb.ox ], [ %.17, %bb.oy ], [ %i.dpl, %bb.pc ], [ %i.dpt, %bb.pd ], [ %i.ggu, %bb.zd ], [ %.17, %.critedge4131 ], [ %i.gjp, %bb.zm ], [ %.17, %.critedge4133 ], [ %i.gnv, %bb.zz ], [ %.17, %.critedge4135 ], [ %.17, %bb.aaa ], [ %i.bgg, %bb.hv ], [ %i.bea, %bb.hp ], [ %.17, %bb.aac ], [ %.17, %bb.aag ], [ %.17, %bb.aal ]
  %.0.be = phi ptr [ %.0, %bb.f ], [ %.0, %bb.yk ], [ %.0, %bb.g ], [ %.0, %bb.h ], [ %.0, %bb.i ], [ %.0, %bb.j ], [ %.0, %bb.k ], [ %.0, %.critedge ], [ %.0, %bb.o ], [ %.0, %bb.x ], [ %.0, %.critedge4077 ], [ %.0, %bb.aa ], [ %.0, %bb.af ], [ %.0, %bb.aj ], [ %.0, %bb.an ], [ %.0, %bb.am ], [ %.0, %bb.dc ], [ %.0, %.critedge4089 ], [ %.0, %bb.dm ], [ %.0, %.critedge4091 ], [ %.0, %bb.as ], [ %.0, %bb.aw ], [ %.0, %bb.av ], [ %.0, %bb.bc ], [ %.0, %bb.bi ], [ %.0, %bb.bl ], [ %.0, %bb.br ], [ %.0, %.critedge4083 ], [ %.0, %bb.by ], [ %.0, %bb.ca ], [ %.0, %bb.bd ], [ %.0, %bb.ck ], [ %.0, %._crit_edge4572 ], [ %.0, %bb.cr ], [ %.0, %bb.cx ], [ %.0, %.thread4168 ], [ %.0, %bb.dq ], [ %.0, %.critedge4093 ], [ %.0, %bb.dz ], [ %.0, %.critedge4095 ], [ %.0, %bb.ei ], [ %.0, %bb.fy ], [ %.0, %bb.gt ], [ %i.awb, %bb.gp ], [ %i.bjc, %bb.ig ], [ %.0, %bb.ih ], [ %.0, %bb.wd ], [ %.0, %bb.il ], [ %.0, %bb.ip ], [ %.0, %bb.is ], [ %.0, %bb.it ], [ %.0, %bb.ix ], [ %.0, %bb.iy ], [ %.0, %_Z10luai_veceqPKfS0_.exit.thread ], [ %.0, %bb.jb ], [ %.0, %bb.jt ], [ %.0, %.critedge4101 ], [ %.0, %bb.jp ], [ %.0, %.thread4183 ], [ %.0, %bb.jq ], [ %.0, %bb.jr ], [ %.0, %bb.ju ], [ %.0, %bb.ld ], [ %.0, %bb.lf ], [ %.0, %.critedge4105.thread ], [ %.0, %bb.ln ], [ %.0, %bb.lp ], [ %.0, %.critedge4109.thread ], [ %.0, %bb.jx ], [ %.0, %bb.jy ], [ %.0, %bb.kc ], [ %.0, %bb.kd ], [ %.0, %bb.kg ], [ %.0, %bb.kh ], [ %.0, %bb.kz ], [ %.0, %.critedge4103 ], [ %.0, %bb.kv ], [ %.0, %.thread4188 ], [ %.0, %bb.kw ], [ %.0, %bb.kx ], [ %.0, %bb.la ], [ %.0, %bb.li ], [ %.0, %bb.lk ], [ %.0, %.critedge4107.thread ], [ %.0, %bb.ls ], [ %.0, %bb.lu ], [ %.0, %.critedge4111.thread ], [ %.0, %bb.lx ], [ %.0, %bb.lz ], [ %.0, %bb.md ], [ %.0, %.thread4191 ], [ %.0, %bb.mg ], [ %.0, %bb.mi ], [ %.0, %bb.mm ], [ %.0, %.thread4193 ], [ %.0, %bb.mp ], [ %.0, %bb.mr ], [ %.0, %bb.ms ], [ %.0, %bb.mt ], [ %.0, %bb.mx ], [ %.0, %.thread4197.thread ], [ %.0, %bb.na ], [ %.0, %bb.nc ], [ %.0, %bb.nd ], [ %.0, %bb.ne ], [ %.0, %bb.ni ], [ %.0, %.thread4201.thread ], [ %.0, %bb.nu ], [ %.0, %bb.nv ], [ %.0, %bb.ny ], [ %.0, %bb.nz ], [ %.0, %bb.ob ], [ %.0, %bb.oc ], [ %.0, %bb.oe ], [ %.0, %bb.of ], [ %.0, %bb.oh ], [ %.0, %bb.oi ], [ %.0, %bb.om ], [ %.0, %bb.on ], [ %.0, %bb.op ], [ %.0, %bb.oq ], [ %.0, %bb.ou ], [ %.0, %bb.ov ], [ %.0, %bb.pf ], [ %.0, %bb.pg ], [ %.0, %bb.pp ], [ %.0, %bb.pq ], [ %.0, %bb.pu ], [ %.0, %bb.py ], [ %.0, %bb.qc ], [ %.0, %bb.qg ], [ %.0, %bb.qj ], [ %.0, %bb.qm ], [ %.0, %bb.qo ], [ %.0, %bb.qp ], [ %.0, %bb.qt ], [ %.0, %bb.qu ], [ %.0, %bb.qy ], [ %.0, %bb.qz ], [ %.0, %bb.ra ], [ %.0, %bb.rb ], [ %.0, %bb.re ], [ %.0, %bb.rh ], [ %.0, %bb.rq ], [ %.0, %bb.rz ], [ %.0, %bb.si ], [ %.0, %bb.sj ], [ %.0, %bb.tp ], [ %.0, %bb.tr ], [ %.0, %bb.tu ], [ %.0, %._crit_edge4376 ], [ %.0, %bb.tz ], [ %.0, %bb.uh ], [ %.0, %bb.yd ], [ %.0, %bb.ye ], [ %.0, %bb.yf ], [ %.0, %bb.uo ], [ %.0, %._crit_edge4365 ], [ %.0, %._crit_edge4361 ], [ %.0, %bb.vu ], [ %.0, %._crit_edge4348 ], [ %.0, %bb.we ], [ %.0, %bb.wk ], [ %.0, %bb.ws ], [ %.0, %bb.wt ], [ %.0, %bb.wu ], [ %.0, %bb.wv ], [ %.0, %bb.wy ], [ %.0, %bb.wz ], [ %.0, %bb.xb ], [ %.0, %bb.xc ], [ %.0, %bb.xd ], [ %.0, %bb.xi ], [ %.0, %bb.xj ], [ %.0, %bb.xk ], [ %.0, %bb.xp ], [ %.0, %bb.xq ], [ %.0, %bb.xr ], [ %.0, %bb.xw ], [ %.0, %bb.xx ], [ %.0, %bb.xy ], [ %.0, %bb.te ], [ %.0, %bb.yl ], [ %.0, %bb.yo ], [ %.0, %bb.yr ], [ %.0, %bb.yu ], [ %.0, %bb.nl ], [ %.0, %bb.nn ], [ %.0, %bb.nr ], [ %.0, %.critedge4121.thread.thread ], [ %.0, %bb.ox ], [ %.0, %bb.oy ], [ %.0, %bb.pc ], [ %.0, %bb.pd ], [ %.0, %bb.zd ], [ %.0, %.critedge4131 ], [ %.0, %bb.zm ], [ %.0, %.critedge4133 ], [ %.0, %bb.zz ], [ %.0, %.critedge4135 ], [ %.0, %bb.aaa ], [ %.0, %bb.hv ], [ %i.bby, %bb.hp ], [ %.0, %bb.aac ], [ %.0, %bb.aag ], [ %.0, %bb.aal ]
  %.be = phi ptr [ %i.bc, %bb.f ], [ %i.gas, %bb.yk ], [ %i.bo, %bb.g ], [ %i.cf, %bb.h ], [ %i.ct, %bb.i ], [ %i.dh, %bb.j ], [ %i.dw, %bb.k ], [ %i.fu, %.critedge ], [ %i.fh, %bb.o ], [ %i.hr, %bb.x ], [ %i.ie, %.critedge4077 ], [ %i.jb, %bb.aa ], [ %i.ke, %bb.af ], [ %i.ks, %bb.aj ], [ %i.ma, %bb.an ], [ %i.lo, %bb.am ], [ %i.ads, %bb.dc ], [ %i.aea, %.critedge4089 ], [ %i.afz, %bb.dm ], [ %i.agh, %.critedge4091 ], [ %i.nq, %bb.as ], [ %i.oq, %bb.aw ], [ %i.od, %bb.av ], [ %i.qa, %bb.bc ], [ %i.sb, %bb.bi ], [ %i.sx, %bb.bl ], [ %i.uf, %bb.br ], [ %i.wu, %.critedge4083 ], [ %i.vm, %bb.by ], [ %i.wm, %bb.ca ], [ %i.qq, %bb.bd ], [ %i.yw, %bb.ck ], [ %i.aan, %._crit_edge4572 ], [ %i.aaa, %bb.cr ], [ %i.abx, %bb.cx ], [ %i.acf, %.thread4168 ], [ %i.ahk, %bb.dq ], [ %i.ahu, %.critedge4093 ], [ %i.ajj, %bb.dz ], [ %i.ajt, %.critedge4095 ], [ %i.ame, %bb.ei ], [ %i.auu, %bb.fy ], [ %i.bao, %bb.gt ], [ %i.ayw, %bb.gp ], [ %i.bjy, %bb.ig ], [ %i.bki, %bb.ih ], [ %i.fjv, %bb.wd ], [ %i.blb, %bb.il ], [ %i.blu, %bb.ip ], [ %i.bmq, %bb.is ], [ %i.bnc, %bb.it ], [ %i.bnt, %bb.ix ], [ %i.bof, %bb.iy ], [ %i.bpb, %_Z10luai_veceqPKfS0_.exit.thread ], [ %i.bpn, %bb.jb ], [ %i.buh, %bb.jt ], [ %i.bqo, %.critedge4101 ], [ %i.bsv, %bb.jp ], [ %i.bro, %.thread4183 ], [ %i.bth, %bb.jq ], [ %i.btt, %bb.jr ], [ %i.bun, %bb.ju ], [ %i.cea, %bb.ld ], [ %i.ceq, %bb.lf ], [ %i.cfe, %.critedge4105.thread ], [ %i.cii, %bb.ln ], [ %i.ciy, %bb.lp ], [ %i.cjm, %.critedge4109.thread ], [ %i.bvh, %bb.jx ], [ %i.bvs, %bb.jy ], [ %i.bwh, %bb.kc ], [ %i.bwt, %bb.kd ], [ %i.bxr, %bb.kg ], [ %i.byc, %bb.kh ], [ %i.ccs, %bb.kz ], [ %i.bzc, %.critedge4103 ], [ %i.cbi, %bb.kv ], [ %i.cab, %.thread4188 ], [ %i.cbt, %bb.kw ], [ %i.cce, %bb.kx ], [ %i.cda, %bb.la ], [ %i.cge, %bb.li ], [ %i.cgu, %bb.lk ], [ %i.chi, %.critedge4107.thread ], [ %i.ckm, %bb.ls ], [ %i.clc, %bb.lu ], [ %i.clq, %.critedge4111.thread ], [ %i.cmr, %bb.lx ], [ %i.cnj, %bb.lz ], [ %i.coc, %bb.md ], [ %i.cok, %.thread4191 ], [ %i.cpl, %bb.mg ], [ %i.cqd, %bb.mi ], [ %i.cqw, %bb.mm ], [ %i.cre, %.thread4193 ], [ %i.cse, %bb.mp ], [ %i.csw, %bb.mr ], [ %i.ctl, %bb.ms ], [ %i.cub, %bb.mt ], [ %i.cux, %bb.mx ], [ %i.cvf, %.thread4197.thread ], [ %i.cwf, %bb.na ], [ %i.cwx, %bb.nc ], [ %i.cxm, %bb.nd ], [ %i.cyc, %bb.ne ], [ %i.cyy, %bb.ni ], [ %i.czg, %.thread4201.thread ], [ %i.ddr, %bb.nu ], [ %i.ddz, %bb.nv ], [ %i.dfb, %bb.ny ], [ %i.dfj, %bb.nz ], [ %i.dgi, %bb.ob ], [ %i.dgq, %bb.oc ], [ %i.dhp, %bb.oe ], [ %i.dhx, %bb.of ], [ %i.div, %bb.oh ], [ %i.djl, %bb.oi ], [ %i.dke, %bb.om ], [ %i.dkm, %bb.on ], [ %i.dlk, %bb.op ], [ %i.dma, %bb.oq ], [ %i.dmt, %bb.ou ], [ %i.dnb, %bb.ov ], [ %i.dra, %bb.pf ], [ %i.dri, %bb.pg ], [ %i.dsp, %bb.pp ], [ %i.dsx, %bb.pq ], [ %i.dtu, %bb.pu ], [ %i.dur, %bb.py ], [ %i.dvo, %bb.qc ], [ %i.dwl, %bb.qg ], [ %i.dxp, %bb.qj ], [ %i.dyl, %bb.qm ], [ %i.dzf, %bb.qo ], [ %i.dzr, %bb.qp ], [ %i.eaj, %bb.qt ], [ %i.ear, %bb.qu ], [ %i.ebs, %bb.qy ], [ %i.eca, %bb.qz ], [ %i.eck, %bb.ra ], [ %i.ecs, %bb.rb ], [ %i.edy, %bb.re ], [ %i.efa, %bb.rh ], [ %i.ehl, %bb.rq ], [ %i.eiv, %bb.rz ], [ %i.ekp, %bb.si ], [ %i.eku, %bb.sj ], [ %i.eru, %bb.tp ], [ %i.esw, %bb.tr ], [ %i.euk, %bb.tu ], [ %i.eut, %._crit_edge4376 ], [ %i.evx, %bb.tz ], [ %i.exf, %bb.uh ], [ %i.fzi, %bb.yd ], [ %i.fzn, %bb.ye ], [ %i.fzs, %bb.yf ], [ %i.eyl, %bb.uo ], [ %i.fay, %._crit_edge4365 ], [ %i.fcp, %._crit_edge4361 ], [ %i.fhc, %bb.vu ], [ %i.fip, %._crit_edge4348 ], [ %i.fkk, %bb.we ], [ %i.flq, %bb.wk ], [ %i.fno, %bb.ws ], [ %i.fnt, %bb.wt ], [ %i.fny, %bb.wu ], [ %i.fom, %bb.wv ], [ %i.fpl, %bb.wy ], [ %i.fpt, %bb.wz ], [ %i.fqr, %bb.xb ], [ %i.frh, %bb.xc ], [ %i.frp, %bb.xd ], [ %i.ftb, %bb.xi ], [ %i.ftg, %bb.xj ], [ %i.ftl, %bb.xk ], [ %i.fvb, %bb.xp ], [ %i.fvg, %bb.xq ], [ %i.fvl, %bb.xr ], [ %i.fxb, %bb.xw ], [ %i.fxg, %bb.xx ], [ %i.fxl, %bb.xy ], [ %i.eov, %bb.te ], [ %i.gbn, %bb.yl ], [ %i.gcm, %bb.yo ], [ %i.gdo, %bb.yr ], [ %i.geq, %bb.yu ], [ %i.dai, %bb.nl ], [ %i.dbi, %bb.nn ], [ %i.dce, %bb.nr ], [ %i.dcm, %.critedge4121.thread.thread ], [ %i.doa, %bb.ox ], [ %i.dox, %bb.oy ], [ %i.dpq, %bb.pc ], [ %i.dpy, %bb.pd ], [ %i.ghg, %bb.zd ], [ blockaddress(@_ZL12luau_executeILb0EEvP9lua_State, %bb.ao), %.critedge4131 ], [ %i.gjy, %bb.zm ], [ blockaddress(@_ZL12luau_executeILb0EEvP9lua_State, %bb.cb), %.critedge4133 ], [ %i.goe, %bb.zz ], [ blockaddress(@_ZL12luau_executeILb0EEvP9lua_State, %bb.ej), %.critedge4135 ], [ %i.gpc, %bb.aaa ], [ %i.bgp, %bb.hv ], [ %i.bev, %bb.hp ], [ %i.gpv, %bb.aac ], [ %i.gql, %bb.aag ], [ %i.grn, %bb.aal ]
  br label %.backedge

bb.g:                                             ; preds = %.backedge
  %i.bd = getelementptr inbounds nuw i8, ptr %.43738, i64 4 ; 2 uses
  %i.be = load i32, ptr %.43738, align 4, !tbaa !62
  %i.bf = lshr i32 %i.be, 8
  %i.bg = and i32 %i.bf, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !64
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !62
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63
  br label %.backedge.backedge

bb.h:                                             ; preds = %.backedge
  %i.bp = getelementptr inbounds nuw i8, ptr %.43738, i64 4
  %i.bq = load i32, ptr %.43738, align 4, !tbaa !62 ; 3 uses
  %i.br = lshr i32 %i.bq, 8
  %i.bs = and i32 %i.br, 255
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.bt ; 2 uses
  %i.bv = lshr i32 %i.bq, 16
  %i.bw = and i32 %i.bv, 255
  store i32 %i.bw, ptr %i.bu, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 1, ptr %i.bx, align 4, !tbaa !64
  %i.by = lshr i32 %i.bq, 24
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !63
  br label %.backedge.backedge

bb.i:                                             ; preds = %.backedge
  %i.cg = getelementptr inbounds nuw i8, ptr %.43738, i64 4 ; 2 uses
  %i.ch = load i32, ptr %.43738, align 4, !tbaa !62 ; 2 uses
  %i.ci = lshr i32 %i.ch, 8
  %i.cj = and i32 %i.ci, 255
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.ck ; 2 uses
  %i.cm = ashr i32 %i.ch, 16
  %i.cn = sitofp i32 %i.cm to double
  store double %i.cn, ptr %i.cl, align 8, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 3, ptr %i.co, align 4, !tbaa !64
  %i.cp = load i32, ptr %i.cg, align 4, !tbaa !62
  %i.cq = and i32 %i.cp, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !63
  br label %.backedge.backedge

bb.j:                                             ; preds = %.backedge
  %i.cu = getelementptr inbounds nuw i8, ptr %.43738, i64 4 ; 2 uses
  %i.cv = load i32, ptr %.43738, align 4, !tbaa !62 ; 2 uses
  %i.cw = lshr i32 %i.cv, 8
  %i.cx = and i32 %i.cw, 255
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.cy
  %i.da = ashr i32 %i.cv, 16
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %.03733, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !65
  %i.dd = load i32, ptr %i.cu, align 4, !tbaa !62
  %i.de = and i32 %i.dd, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !63
  br label %.backedge.backedge

bb.k:                                             ; preds = %.backedge
  %i.di = getelementptr inbounds nuw i8, ptr %.43738, i64 4 ; 2 uses
  %i.dj = load i32, ptr %.43738, align 4, !tbaa !62 ; 2 uses
  %i.dk = lshr i32 %i.dj, 8
  %i.dl = and i32 %i.dk, 255
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.dm
  %i.do = lshr i32 %i.dj, 16
  %i.dp = and i32 %i.do, 255
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa.struct !65
  %i.ds = load i32, ptr %i.di, align 4, !tbaa !62
  %i.dt = and i32 %i.ds, 255
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !63
  br label %.backedge.backedge

bb.l:                                             ; preds = %.backedge
end_hunk_1
begin_hunk_2_@_ZL12luau_executeILb0EEvP9lua_State:bb.a
  %i.je = lshr i32 %i.jd, 8
  %i.jf = and i32 %i.je, 255
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.jg ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.jj = lshr i32 %i.jd, 16
  %i.jk = and i32 %i.jj, 255
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !30 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i64 16, i1 false), !tbaa.struct !65
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !64
  %i.js = icmp sgt i32 %i.jr, 5
  br i1 %i.js, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !30
  %i.jv = and i8 %i.ju, 4
  %.not4065 = icmp eq i8 %i.jv, 0
  br i1 %.not4065, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jw = load ptr, ptr %i.jh, align 8, !tbaa !30 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !30
  %i.jz = and i8 %i.jy, 3
  %.not4066 = icmp eq i8 %i.jz, 0
  br i1 %.not4066, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef %0, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.jw)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.ka = load i32, ptr %i.jc, align 4, !tbaa !62
  %i.kb = and i32 %i.ka, 255
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.kc
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !63
  br label %.backedge.backedge

bb.ag:                                            ; preds = %.backedge
  %i.kf = getelementptr inbounds nuw i8, ptr %.43738, i64 4 ; 2 uses
  %i.kg = load i32, ptr %.43738, align 4, !tbaa !62
  %i.kh = lshr i32 %i.kg, 8
  %i.ki = and i32 %i.kh, 255
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.kj ; 2 uses
  %i.kl = load ptr, ptr %i.af, align 8, !tbaa !79 ; 2 uses
  %.not4063 = icmp eq ptr %i.kl, null
  br i1 %.not4063, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !78
  %.not4064 = icmp ult ptr %i.kn, %i.kk
  br i1 %.not4064, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_Z10luaF_closeP9lua_StateP10lua_TValue(ptr noundef nonnull %0, ptr noundef %i.kk)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ko = load i32, ptr %i.kf, align 4, !tbaa !62
  %i.kp = and i32 %i.ko, 255
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !63
  br label %.backedge.backedge

bb.ak:                                            ; preds = %.backedge
  %i.kt = getelementptr inbounds nuw i8, ptr %.43738, i64 4
  %i.ku = load i32, ptr %.43738, align 4, !tbaa !62 ; 2 uses
  %i.kv = lshr i32 %i.ku, 8
  %i.kw = and i32 %i.kv, 255
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.kx ; 2 uses
  %i.kz = ashr i32 %i.ku, 16
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [16 x i8], ptr %.03733, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !64
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lf = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !66
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 5
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !80
  %.not4062 = icmp eq i8 %i.li, 0
  br i1 %.not4062, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, ptr noundef nonnull align 8 dereferenceable(16) %i.lb, i64 16, i1 false), !tbaa.struct !65
  %i.lj = getelementptr inbounds nuw i8, ptr %.43738, i64 8 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !62
  %i.ll = and i32 %i.lk, 255
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.lm
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !63
  br label %.backedge.backedge

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.lp = getelementptr inbounds nuw i8, ptr %.43738, i64 8 ; 3 uses
  %i.lq = load i32, ptr %i.kt, align 4, !tbaa !62
  %i.lr = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 32
  store ptr %i.lp, ptr %i.ls, align 8, !tbaa !30
  %i.lt = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !66
  call void @_Z14luaV_getimportP9lua_StateP8LuaTableP10lua_TValueS4_jb(ptr noundef %0, ptr noundef %i.lu, ptr noundef nonnull %.03733, ptr noundef %i.ky, i32 noundef %i.lq, i1 noundef zeroext false)
  %i.lv = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.lw = load i32, ptr %i.lp, align 4, !tbaa !62
  %i.lx = and i32 %i.lw, 255
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.ly
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !63
  br label %.backedge.backedge

bb.ao:                                            ; preds = %.backedge
  %i.mb = getelementptr inbounds nuw i8, ptr %.43738, i64 4
  %i.mc = load i32, ptr %.43738, align 4, !tbaa !62 ; 7 uses
  %i.md = lshr i32 %i.mc, 8
  %i.me = and i32 %i.md, 255                      ; 3 uses
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.mf ; 10 uses
  %i.mh = lshr i32 %i.mc, 16
  %i.mi = and i32 %i.mh, 255
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.mj ; 12 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.43738, i64 8 ; 26 uses
  %i.mm = load i32, ptr %i.mb, align 4, !tbaa !62
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %.03733, i64 %i.mn ; 10 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 12 ; 3 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !64 ; 3 uses
  %i.mr = icmp eq i32 %i.mq, 7
  br i1 %i.mr, label %bb.ap, label %bb.ax, !prof !71

bb.ap:                                            ; preds = %bb.ao
  %i.ms = load ptr, ptr %i.mk, align 8, !tbaa !30 ; 4 uses
  %i.mt = lshr i32 %i.mc, 24
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 7
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !69
  %i.mw = zext i8 %i.mv to i32
  %i.mx = and i32 %i.mt, %i.mw                    ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 32 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !70
  %i.na = zext nneg i32 %i.mx to i64
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.mz, i64 %i.na ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 28
  %i.nd = load i32, ptr %i.nc, align 4
  %i.ne = and i32 %i.nd, 15
  %i.nf = icmp eq i32 %i.ne, 6
  br i1 %i.nf, label %bb.aq, label %.critedge4079, !prof !71

bb.aq:                                            ; preds = %bb.ap
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !30
  %i.ni = load ptr, ptr %i.mo, align 8, !tbaa !30
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %bb.ar, label %.critedge4079, !prof !71

bb.ar:                                            ; preds = %bb.aq
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !74
  %.not4238 = icmp eq i32 %i.nl, 0
  br i1 %.not4238, label %.critedge4079, label %bb.as, !prof !76

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %i.nb, i64 16, i1 false), !tbaa.struct !65
  %i.nm = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.nn = and i32 %i.nm, 255
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !63
  br label %.backedge.backedge

.critedge4079:                                    ; preds = %bb.aq, %bb.ap, %bb.ar
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !81
  %.not4055 = icmp eq ptr %i.ns, null
  br i1 %.not4055, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %.critedge4079
  %i.nt = load ptr, ptr %i.mo, align 8, !tbaa !30
  %i.nu = call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef nonnull %i.ms, ptr noundef %i.nt) ; 3 uses
  %.not4056 = icmp eq ptr %i.nu, @luaO_nilobject_
  br i1 %.not4056, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nv = load ptr, ptr %i.my, align 8, !tbaa !70
  %i.nw = ptrtoint ptr %i.nu to i64
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = sub i64 %i.nw, %i.nx
  %5 = trunc i64 %i.ny to i32
  %6 = shl i32 %5, 19
  %7 = and i32 %6, -16777216
  %8 = load i32, ptr %.43738, align 4, !tbaa !62
  %9 = and i32 %8, 16777215
  %10 = or disjoint i32 %7, %9
  store i32 %10, ptr %.43738, align 4, !tbaa !62
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %i.nu, i64 16, i1 false), !tbaa.struct !65
  %i.nz = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.oa = and i32 %i.nz, 255
  %i.ob = zext nneg i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.ob
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !63
  br label %.backedge.backedge

bb.aw:                                            ; preds = %.critedge4079
  store i32 %i.mx, ptr %i.ac, align 4, !tbaa !75
  %i.oe = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  store ptr %i.ml, ptr %i.of, align 8, !tbaa !30
  call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.mk, ptr noundef %i.mo, ptr noundef nonnull %i.mg)
  %i.og = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.oh = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.oi = shl i32 %i.oh, 24
  %i.oj = load i32, ptr %.43738, align 4, !tbaa !62
  %i.ok = and i32 %i.oj, 16777215
  %i.ol = or disjoint i32 %i.ok, %i.oi
  store i32 %i.ol, ptr %.43738, align 4, !tbaa !62
  %i.om = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.on = and i32 %i.om, 255
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.oo
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !63
  br label %.backedge.backedge

bb.ax:                                            ; preds = %bb.ao
  %i.or = load i8, ptr @_ZN5FFlag18LuauDirectFieldGetE, align 8, !tbaa !34, !range !35, !noundef !36
  %i.os = trunc nuw i8 %i.or to i1
  %i.ot = icmp eq i32 %i.mq, 9
  %or.cond4790 = and i1 %i.ot, %i.os
  br i1 %or.cond4790, label %bb.ay, label %thread-pre-split

bb.ay:                                            ; preds = %bb.ax
  %i.ou = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 17488
  %i.ow = load ptr, ptr %i.mk, align 8, !tbaa !30 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 3
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !83
  %i.oz = zext i8 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %i.oz
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !84 ; 4 uses
  %.not4048 = icmp eq ptr %i.pb, null
  br i1 %.not4048, label %thread-pre-split.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pc = lshr i32 %i.mc, 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 7
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !69
  %i.pf = zext i8 %i.pe to i32
  %i.pg = and i32 %i.pc, %i.pf
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 32 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !70
  %i.pj = zext nneg i32 %i.pg to i64
  %i.pk = getelementptr inbounds nuw [32 x i8], ptr %i.pi, i64 %i.pj ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 28
  %i.pm = load i32, ptr %i.pl, align 4
  %i.pn = and i32 %i.pm, 15
  %i.po = icmp eq i32 %i.pn, 6
  %.pre4575 = load ptr, ptr %i.mo, align 8, !tbaa !30 ; 2 uses
  br i1 %i.po, label %bb.ba, label %.critedge4081, !prof !71

bb.ba:                                            ; preds = %bb.az
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !30
  %i.pr = icmp eq ptr %i.pq, %.pre4575
  br i1 %i.pr, label %bb.bb, label %.critedge4081, !prof !71

bb.bb:                                            ; preds = %bb.ba
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !74
  %.not4237 = icmp eq i32 %i.pt, 0
  br i1 %.not4237, label %.critedge4081, label %bb.bc, !prof !76

bb.bc:                                            ; preds = %bb.bb
  %i.pu = load ptr, ptr %i.pk, align 8, !tbaa !30
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  call void %i.pu(ptr noundef nonnull %i.pv, ptr noundef nonnull %i.mg)
  %i.pw = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.px = and i32 %i.pw, 255
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.py
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !63
  br label %.backedge.backedge

.critedge4081:                                    ; preds = %bb.ba, %bb.az, %bb.bb
  %i.qb = call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef nonnull %i.pb, ptr noundef %.pre4575) ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 12
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !64
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %.critedge4081.thread-pre-split_crit_edge, label %bb.bd

.critedge4081.thread-pre-split_crit_edge:         ; preds = %.critedge4081
  %.pr.pre = load i32, ptr %i.mp, align 4, !tbaa !64
  br label %thread-pre-split

bb.bd:                                            ; preds = %.critedge4081
  %i.qf = load ptr, ptr %i.ph, align 8, !tbaa !70
  %i.qg = ptrtoint ptr %i.qb to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %11 = trunc i64 %i.qi to i32
  %12 = shl i32 %11, 19
  %13 = and i32 %12, -16777216
  %14 = load i32, ptr %.43738, align 4, !tbaa !62
  %15 = and i32 %14, 16777215
  %16 = or disjoint i32 %13, %15
  store i32 %16, ptr %.43738, align 4, !tbaa !62
  %i.qj = load ptr, ptr %i.qb, align 8, !tbaa !30
  %i.qk = load ptr, ptr %i.mk, align 8, !tbaa !30
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  call void %i.qj(ptr noundef nonnull %i.ql, ptr noundef nonnull %i.mg)
  %i.qm = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.qn = and i32 %i.qm, 255
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.qo
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !63
  br label %.backedge.backedge

thread-pre-split:                                 ; preds = %.critedge4081.thread-pre-split_crit_edge, %bb.ax
  %i.qr = phi i32 [ %i.mq, %bb.ax ], [ %.pr.pre, %.critedge4081.thread-pre-split_crit_edge ]
  %i.qs = icmp eq i32 %i.qr, 9
  br i1 %i.qs, label %thread-pre-split.thread, label %.thread

thread-pre-split.thread:                          ; preds = %bb.ay, %thread-pre-split
  %i.qt = load ptr, ptr %i.mk, align 8, !tbaa !30
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !85 ; 3 uses
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %.thread, label %bb.be

bb.be:                                            ; preds = %thread-pre-split.thread
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 3
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !86
  %i.qz = and i8 %i.qy, 1
  %.not4049 = icmp eq i8 %i.qz, 0
  br i1 %.not4049, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  %i.ra = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 1032
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !87
  %i.rd = call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.qv, i32 noundef 0, ptr noundef %i.rc) ; 4 uses
  %.not4050 = icmp eq ptr %i.rd, null
  br i1 %.not4050, label %.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !64
  %i.rg = icmp eq i32 %i.rf, 8
  br i1 %i.rg, label %bb.bh, label %.thread

bb.bh:                                            ; preds = %bb.bg
  %i.rh = load ptr, ptr %i.rd, align 8, !tbaa !30
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 3
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !48
  %.not4051 = icmp eq i8 %i.rj, 0
  br i1 %.not4051, label %.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rk = load ptr, ptr %i.w, align 8, !tbaa !22  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rk, ptr noundef nonnull align 8 dereferenceable(16) %i.rd, i64 16, i1 false), !tbaa.struct !65
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rl, ptr noundef nonnull align 8 dereferenceable(16) %i.mk, i64 16, i1 false), !tbaa.struct !65
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rm, ptr noundef nonnull align 8 dereferenceable(16) %i.mo, i64 16, i1 false), !tbaa.struct !65
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 48
  store ptr %i.rn, ptr %i.w, align 8, !tbaa !22
  %i.ro = lshr i32 %i.mc, 24
  store i32 %i.ro, ptr %i.ac, align 4, !tbaa !75
  %i.rp = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  store ptr %i.ml, ptr %i.rq, align 8, !tbaa !30
  call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.me)
  %i.rr = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.rs = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.rt = shl i32 %i.rs, 24
  %i.ru = load i32, ptr %.43738, align 4, !tbaa !62
  %i.rv = and i32 %i.ru, 16777215
  %i.rw = or disjoint i32 %i.rv, %i.rt
  store i32 %i.rw, ptr %.43738, align 4, !tbaa !62
  %i.rx = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.ry = and i32 %i.rx, 255
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.rz
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !63
  br label %.backedge.backedge

.thread:                                          ; preds = %bb.be, %thread-pre-split.thread, %bb.bh, %bb.bg, %bb.bf, %thread-pre-split
  %i.sc = load i32, ptr %i.mp, align 4, !tbaa !64 ; 2 uses
  %i.sd = icmp eq i32 %i.sc, 5
  br i1 %i.sd, label %bb.bj, label %bb.bs

bb.bj:                                            ; preds = %.thread
  %i.se = load ptr, ptr %i.mo, align 8, !tbaa !30 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !30
  %i.sh = or i8 %i.sg, 32
  %i.si = sext i8 %i.sh to i32
  %i.sj = add nsw i32 %i.si, -120                 ; 2 uses
  %i.sk = icmp ult i32 %i.sj, 3
  br i1 %i.sk, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.se, i64 25
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !30
  %i.sn = icmp eq i8 %i.sm, 0
  br i1 %i.sn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.so = zext nneg i32 %i.sj to i64
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.so
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !89
  %i.sr = fpext float %i.sq to double
  store double %i.sr, ptr %i.mg, align 8, !tbaa !30
  %i.ss = getelementptr inbounds nuw i8, ptr %i.mg, i64 12
  store i32 3, ptr %i.ss, align 4, !tbaa !64
  %i.st = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.su = and i32 %i.st, 255
  %i.sv = zext nneg i32 %i.su to i64
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.sv
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !63
  br label %.backedge.backedge

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.sy = load ptr, ptr %i.u, align 8, !tbaa !50  ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 848
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !84 ; 3 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %.critedge4083, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 3
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !86
  %i.te = and i8 %i.td, 1
  %.not4052 = icmp eq i8 %i.te, 0
  br i1 %.not4052, label %bb.bo, label %.critedge4083

bb.bo:                                            ; preds = %bb.bn
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 1032
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !87
  %i.th = call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.ta, i32 noundef 0, ptr noundef %i.tg) ; 4 uses
  %.not4053 = icmp eq ptr %i.th, null
  br i1 %.not4053, label %.critedge4083, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 12
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !64
  %i.tk = icmp eq i32 %i.tj, 8
  br i1 %i.tk, label %bb.bq, label %.critedge4083

bb.bq:                                            ; preds = %bb.bp
  %i.tl = load ptr, ptr %i.th, align 8, !tbaa !30
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 3
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !48
  %.not4054 = icmp eq i8 %i.tn, 0
  br i1 %.not4054, label %.critedge4083, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.to = load ptr, ptr %i.w, align 8, !tbaa !22  ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.to, ptr noundef nonnull align 8 dereferenceable(16) %i.th, i64 16, i1 false), !tbaa.struct !65
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, ptr noundef nonnull align 8 dereferenceable(16) %i.mk, i64 16, i1 false), !tbaa.struct !65
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tq, ptr noundef nonnull align 8 dereferenceable(16) %i.mo, i64 16, i1 false), !tbaa.struct !65
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 48
  store ptr %i.tr, ptr %i.w, align 8, !tbaa !22
  %i.ts = lshr i32 %i.mc, 24
  store i32 %i.ts, ptr %i.ac, align 4, !tbaa !75
  %i.tt = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 32
  store ptr %i.ml, ptr %i.tu, align 8, !tbaa !30
  call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.me)
  %i.tv = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.tw = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.tx = shl i32 %i.tw, 24
  %i.ty = load i32, ptr %.43738, align 4, !tbaa !62
  %i.tz = and i32 %i.ty, 16777215
  %i.ua = or disjoint i32 %i.tz, %i.tx
  store i32 %i.ua, ptr %.43738, align 4, !tbaa !62
  %i.ub = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.uc = and i32 %i.ub, 255
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.ud
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !63
  br label %.backedge.backedge

bb.bs:                                            ; preds = %.thread
  %i.ug = load i8, ptr @_ZN5FFlag34DebugLuauUserDefinedClassesRuntimeE, align 8, !tbaa !34, !range !35, !noundef !36
  %i.uh = trunc nuw i8 %i.ug to i1
  %i.ui = icmp eq i32 %i.sc, 13
  %or.cond4227 = and i1 %i.ui, %i.uh
  br i1 %or.cond4227, label %bb.bt, label %.critedge4083, !prof !90

bb.bt:                                            ; preds = %bb.bs
  %i.uj = lshr i32 %i.mc, 24                      ; 4 uses
  %i.uk = zext nneg i32 %i.uj to i64              ; 2 uses
  %i.ul = load ptr, ptr %i.mk, align 8, !tbaa !30 ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16 ; 2 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !93 ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 68
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !95
  %i.uq = icmp ult i32 %i.uj, %i.up
  %.pre4577 = load ptr, ptr %i.mo, align 8, !tbaa !30 ; 2 uses
  br i1 %i.uq, label %bb.bu, label %.critedge4085, !prof !71

bb.bu:                                            ; preds = %bb.bt
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 40
end_hunk_2
begin_hunk_3_@_ZL12luau_executeILb0EEvP9lua_State:bb.a
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.vc = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !99
  %i.ve = sub nuw nsw i32 %i.uj, %i.ux
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [16 x i8], ptr %i.vd, i64 %i.vf
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.vh = phi ptr [ %i.vb, %bb.bw ], [ %i.vg, %bb.bx ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %i.vh, i64 16, i1 false), !tbaa.struct !65
  %i.vi = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.vj = and i32 %i.vi, 255
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.vk
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !63
  br label %.backedge.backedge

.critedge4085:                                    ; preds = %bb.bt, %bb.bu
  %i.vn = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !100
  %i.vp = call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef %i.vo, ptr noundef %.pre4577) ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 12
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !64
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.critedge4085
  call void @_Z23luaG_missingmembererrorP9lua_StatePK10lua_TValueS3_(ptr noundef %0, ptr noundef nonnull %i.mk, ptr noundef nonnull %i.mo) #12
  unreachable

bb.ca:                                            ; preds = %.critedge4085
  %i.vt = load double, ptr %i.vp, align 8, !tbaa !30
  %i.vu = fptoui double %i.vt to i32              ; 3 uses
  %i.vv = load ptr, ptr %i.um, align 8, !tbaa !93 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 64
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !97 ; 2 uses
  %i.vy = icmp ugt i32 %i.vx, %i.vu               ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ul, i64 32
  %i.wb = select i1 %i.vy, i32 0, i32 %i.vx
  %.sink4792 = sub nuw i32 %i.vu, %i.wb
  %.sink.in = select i1 %i.vy, ptr %i.wa, ptr %i.vz
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !101
  %i.wc = zext i32 %.sink4792 to i64
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %.sink, i64 %i.wc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mg, ptr noundef nonnull align 8 dereferenceable(16) %i.wd, i64 16, i1 false), !tbaa.struct !65
  %i.we = shl i32 %i.vu, 24
  %i.wf = load i32, ptr %.43738, align 4, !tbaa !62
  %i.wg = and i32 %i.wf, 16777215
  %i.wh = or disjoint i32 %i.wg, %i.we
  store i32 %i.wh, ptr %.43738, align 4, !tbaa !62
  %i.wi = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.wj = and i32 %i.wi, 255
  %i.wk = zext nneg i32 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.wk
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !63
  br label %.backedge.backedge

.critedge4083:                                    ; preds = %bb.bn, %bb.bm, %bb.bs, %bb.bo, %bb.bp, %bb.bq
  %i.wn = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 32
  store ptr %i.ml, ptr %i.wo, align 8, !tbaa !30
  call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.mk, ptr noundef %i.mo, ptr noundef nonnull %i.mg)
  %i.wp = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.wq = load i32, ptr %i.ml, align 4, !tbaa !62
  %i.wr = and i32 %i.wq, 255
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.ws
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !63
  br label %.backedge.backedge

bb.cb:                                            ; preds = %.backedge
  %i.wv = getelementptr inbounds nuw i8, ptr %.43738, i64 4
  %i.ww = load i32, ptr %.43738, align 4, !tbaa !62 ; 4 uses
  %i.wx = lshr i32 %i.ww, 8
  %i.wy = and i32 %i.wx, 255
  %i.wz = zext nneg i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.wz ; 9 uses
  %i.xb = lshr i32 %i.ww, 16
  %i.xc = and i32 %i.xb, 255
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.xd ; 6 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %.43738, i64 8 ; 14 uses
  %i.xg = load i32, ptr %i.wv, align 4, !tbaa !62
  %i.xh = zext i32 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [16 x i8], ptr %.03733, i64 %i.xh ; 5 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xe, i64 12
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !64
  switch i32 %i.xk, label %.thread4168 [
    i32 7, label %bb.cc
    i32 9, label %bb.cs
  ], !prof !102

bb.cc:                                            ; preds = %bb.cb
  %i.xl = load ptr, ptr %i.xe, align 8, !tbaa !30 ; 10 uses
  %i.xm = lshr i32 %i.ww, 24
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 7
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !69
  %i.xp = zext i8 %i.xo to i32
  %i.xq = and i32 %i.xm, %i.xp                    ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xl, i64 32 ; 2 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !70
  %i.xt = zext nneg i32 %i.xq to i64
  %i.xu = getelementptr inbounds nuw [32 x i8], ptr %i.xs, i64 %i.xt ; 4 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 28
  %i.xw = load i32, ptr %i.xv, align 4
  %i.xx = and i32 %i.xw, 15
  %i.xy = icmp eq i32 %i.xx, 6
  br i1 %i.xy, label %bb.cd, label %.critedge4087, !prof !71

bb.cd:                                            ; preds = %bb.cc
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !30
  %i.yb = load ptr, ptr %i.xi, align 8, !tbaa !30
  %i.yc = icmp eq ptr %i.ya, %i.yb
  br i1 %i.yc, label %bb.ce, label %.critedge4087, !prof !71

bb.ce:                                            ; preds = %bb.cd
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xu, i64 12
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !74
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %.critedge4087, label %bb.cf, !prof !76

bb.cf:                                            ; preds = %bb.ce
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.yh = load i8, ptr %i.yg, align 4, !tbaa !77
  %.not4041 = icmp eq i8 %i.yh, 0
  br i1 %.not4041, label %bb.cg, label %.critedge4087, !prof !71

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xu, ptr noundef nonnull align 8 dereferenceable(16) %i.xa, i64 16, i1 false), !tbaa.struct !65
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xa, i64 12
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !64
  %i.yk = icmp sgt i32 %i.yj, 5
  br i1 %i.yk, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xl, i64 1
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !30
  %i.yn = and i8 %i.ym, 4
  %.not4046 = icmp eq i8 %i.yn, 0
  br i1 %.not4046, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yo = load ptr, ptr %i.xa, align 8, !tbaa !30 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 1
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !30
  %i.yr = and i8 %i.yq, 3
  %.not4047 = icmp eq i8 %i.yr, 0
  br i1 %.not4047, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef %0, ptr noundef nonnull %i.xl, ptr noundef nonnull %i.yo)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg
  %i.ys = load i32, ptr %i.xf, align 4, !tbaa !62
  %i.yt = and i32 %i.ys, 255
  %i.yu = zext nneg i32 %i.yt to i64
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.yu
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !63
  br label %.backedge.backedge

.critedge4087:                                    ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cf
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !81 ; 2 uses
  %i.yz = icmp eq ptr %i.yy, null
  br i1 %i.yz, label %.critedge4087._crit_edge, label %bb.cl

.critedge4087._crit_edge:                         ; preds = %.critedge4087
  %.pre4574.pre = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %bb.cm

bb.cl:                                            ; preds = %.critedge4087
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 3
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !86
  %i.zc = and i8 %i.zb, 2
  %.not4042 = icmp eq i8 %i.zc, 0
  %.pre4574.pre4580 = load ptr, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  br i1 %.not4042, label %._crit_edge4572, label %bb.cm

bb.cm:                                            ; preds = %.critedge4087._crit_edge, %bb.cl
  %.pre4574 = phi ptr [ %.pre4574.pre, %.critedge4087._crit_edge ], [ %.pre4574.pre4580, %bb.cl ] ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  %i.ze = load i8, ptr %i.zd, align 4, !tbaa !77
  %.not4043 = icmp eq i8 %i.ze, 0
  br i1 %.not4043, label %bb.cn, label %._crit_edge4572

bb.cn:                                            ; preds = %bb.cm
  %i.zf = getelementptr inbounds nuw i8, ptr %.pre4574, i64 32
  store ptr %i.xf, ptr %i.zf, align 8, !tbaa !30
  %i.zg = load ptr, ptr %i.xi, align 8, !tbaa !30
  %i.zh = call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef nonnull %0, ptr noundef nonnull %i.xl, ptr noundef %i.zg) ; 2 uses
  %i.zi = load ptr, ptr %i.xr, align 8, !tbaa !70
  %i.zj = ptrtoint ptr %i.zh to i64
  %i.zk = ptrtoint ptr %i.zi to i64
  %i.zl = sub i64 %i.zj, %i.zk
  %17 = trunc i64 %i.zl to i32
  %18 = shl i32 %17, 19
  %19 = and i32 %18, -16777216
  %20 = load i32, ptr %.43738, align 4, !tbaa !62
  %21 = and i32 %20, 16777215
  %22 = or disjoint i32 %19, %21
  store i32 %22, ptr %.43738, align 4, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zh, ptr noundef nonnull align 8 dereferenceable(16) %i.xa, i64 16, i1 false), !tbaa.struct !65
  %i.zm = getelementptr inbounds nuw i8, ptr %i.xa, i64 12
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !64
  %i.zo = icmp sgt i32 %i.zn, 5
  br i1 %i.zo, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.zp = getelementptr inbounds nuw i8, ptr %i.xl, i64 1
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !30
  %i.zr = and i8 %i.zq, 4
  %.not4044 = icmp eq i8 %i.zr, 0
  br i1 %.not4044, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.zs = load ptr, ptr %i.xa, align 8, !tbaa !30 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 1
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !30
  %i.zv = and i8 %i.zu, 3
  %.not4045 = icmp eq i8 %i.zv, 0
  br i1 %.not4045, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef nonnull %0, ptr noundef nonnull %i.xl, ptr noundef nonnull %i.zs)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn
  %i.zw = load i32, ptr %i.xf, align 4, !tbaa !62
  %i.zx = and i32 %i.zw, 255
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.zy
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !63
  br label %.backedge.backedge

._crit_edge4572:                                  ; preds = %bb.cl, %bb.cm
  %i.aab = phi ptr [ %.pre4574, %bb.cm ], [ %.pre4574.pre4580, %bb.cl ]
  store i32 %i.xq, ptr %i.ac, align 4, !tbaa !75
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 32
  store ptr %i.xf, ptr %i.aac, align 8, !tbaa !30
  call void @_Z13luaV_settableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef nonnull %0, ptr noundef nonnull %i.xe, ptr noundef %i.xi, ptr noundef nonnull %i.xa)
  %i.aad = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.aae = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.aaf = shl i32 %i.aae, 24
  %i.aag = load i32, ptr %.43738, align 4, !tbaa !62
  %i.aah = and i32 %i.aag, 16777215
  %i.aai = or disjoint i32 %i.aah, %i.aaf
  store i32 %i.aai, ptr %.43738, align 4, !tbaa !62
  %i.aaj = load i32, ptr %i.xf, align 4, !tbaa !62
  %i.aak = and i32 %i.aaj, 255
  %i.aal = zext nneg i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.aal
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !63
  br label %.backedge.backedge

bb.cs:                                            ; preds = %bb.cb
  %i.aao = load ptr, ptr %i.xe, align 8, !tbaa !30
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !85 ; 3 uses
  %i.aar = icmp eq ptr %i.aaq, null
  br i1 %i.aar, label %.thread4168, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 3
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !86
  %i.aau = and i8 %i.aat, 2
  %.not4038 = icmp eq i8 %i.aau, 0
  br i1 %.not4038, label %bb.cu, label %.thread4168

bb.cu:                                            ; preds = %bb.ct
  %i.aav = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 1040
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !87
  %i.aay = call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.aaq, i32 noundef 1, ptr noundef %i.aax) ; 4 uses
  %.not4039 = icmp eq ptr %i.aay, null
  br i1 %.not4039, label %.thread4168, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 12
  %i.aba = load i32, ptr %i.aaz, align 4, !tbaa !64
  %i.abb = icmp eq i32 %i.aba, 8
  br i1 %i.abb, label %bb.cw, label %.thread4168

bb.cw:                                            ; preds = %bb.cv
  %i.abc = load ptr, ptr %i.aay, align 8, !tbaa !30
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 3
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !48
  %.not4040 = icmp eq i8 %i.abe, 0
  br i1 %.not4040, label %.thread4168, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.abf = load ptr, ptr %i.w, align 8, !tbaa !22 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abf, ptr noundef nonnull align 8 dereferenceable(16) %i.aay, i64 16, i1 false), !tbaa.struct !65
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abg, ptr noundef nonnull align 8 dereferenceable(16) %i.xe, i64 16, i1 false), !tbaa.struct !65
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abh, ptr noundef nonnull align 8 dereferenceable(16) %i.xi, i64 16, i1 false), !tbaa.struct !65
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abi, ptr noundef nonnull align 8 dereferenceable(16) %i.xa, i64 16, i1 false), !tbaa.struct !65
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abf, i64 64
  store ptr %i.abj, ptr %i.w, align 8, !tbaa !22
  %i.abk = lshr i32 %i.ww, 24
  store i32 %i.abk, ptr %i.ac, align 4, !tbaa !75
  %i.abl = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 32
  store ptr %i.xf, ptr %i.abm, align 8, !tbaa !30
  call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 3, i32 noundef -1)
  %i.abn = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.abo = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.abp = shl i32 %i.abo, 24
  %i.abq = load i32, ptr %.43738, align 4, !tbaa !62
  %i.abr = and i32 %i.abq, 16777215
  %i.abs = or disjoint i32 %i.abr, %i.abp
  store i32 %i.abs, ptr %.43738, align 4, !tbaa !62
  %i.abt = load i32, ptr %i.xf, align 4, !tbaa !62
  %i.abu = and i32 %i.abt, 255
  %i.abv = zext nneg i32 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.abv
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !63
  br label %.backedge.backedge

.thread4168:                                      ; preds = %bb.ct, %bb.cs, %bb.cb, %bb.cw, %bb.cv, %bb.cu
  %i.aby = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  store ptr %i.xf, ptr %i.abz, align 8, !tbaa !30
  call void @_Z13luaV_settableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.xe, ptr noundef %i.xi, ptr noundef nonnull %i.xa)
  %i.aca = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.acb = load i32, ptr %i.xf, align 4, !tbaa !62
  %i.acc = and i32 %i.acb, 255
  %i.acd = zext nneg i32 %i.acc to i64
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.acd
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !63
  br label %.backedge.backedge

bb.cy:                                            ; preds = %.backedge
  %i.acg = getelementptr inbounds nuw i8, ptr %.43738, i64 4 ; 5 uses
  %i.ach = load i32, ptr %.43738, align 4, !tbaa !62 ; 3 uses
  %i.aci = lshr i32 %i.ach, 8
  %i.acj = and i32 %i.aci, 255
  %i.ack = zext nneg i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.ack ; 2 uses
  %i.acm = lshr i32 %i.ach, 16
  %i.acn = and i32 %i.acm, 255
  %i.aco = zext nneg i32 %i.acn to i64
  %i.acp = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.aco ; 3 uses
  %i.acq = lshr i32 %i.ach, 24
  %i.acr = zext nneg i32 %i.acq to i64
  %i.acs = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.acr ; 3 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 12
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !64
  %i.acv = icmp eq i32 %i.acu, 7
  br i1 %i.acv, label %bb.cz, label %.critedge4089

bb.cz:                                            ; preds = %bb.cy
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acs, i64 12
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !64
  %i.acy = icmp eq i32 %i.acx, 3
  br i1 %i.acy, label %bb.da, label %.critedge4089

bb.da:                                            ; preds = %bb.cz
  %i.acz = load ptr, ptr %i.acp, align 8, !tbaa !30 ; 3 uses
  %i.ada = load double, ptr %i.acs, align 8, !tbaa !30 ; 2 uses
  %i.adb = fptosi double %i.ada to i32            ; 2 uses
  %i.adc = add i32 %i.adb, -1                     ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.ade = load i32, ptr %i.add, align 8, !tbaa !103
  %i.adf = icmp ult i32 %i.adc, %i.ade
  br i1 %i.adf, label %bb.db, label %.critedge4089, !prof !71

bb.db:                                            ; preds = %bb.da
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !81
  %.not4061 = icmp eq ptr %i.adh, null
  %i.adi = sitofp i32 %i.adb to double
  %i.adj = fcmp oeq double %i.ada, %i.adi
  %or.cond4138 = and i1 %i.adj, %.not4061
  br i1 %or.cond4138, label %bb.dc, label %.critedge4089, !prof !104

bb.dc:                                            ; preds = %bb.db
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acz, i64 24
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !105
  %i.adm = zext i32 %i.adc to i64
  %i.adn = getelementptr inbounds nuw [16 x i8], ptr %i.adl, i64 %i.adm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acl, ptr noundef nonnull align 8 dereferenceable(16) %i.adn, i64 16, i1 false), !tbaa.struct !65
  %i.ado = load i32, ptr %i.acg, align 4, !tbaa !62
  %i.adp = and i32 %i.ado, 255
  %i.adq = zext nneg i32 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.adq
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !63
  br label %.backedge.backedge

.critedge4089:                                    ; preds = %bb.db, %bb.da, %bb.cz, %bb.cy
  %i.adt = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 32
  store ptr %i.acg, ptr %i.adu, align 8, !tbaa !30
  call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.acp, ptr noundef nonnull %i.acs, ptr noundef nonnull %i.acl)
  %i.adv = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.adw = load i32, ptr %i.acg, align 4, !tbaa !62
  %i.adx = and i32 %i.adw, 255
  %i.ady = zext nneg i32 %i.adx to i64
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.ady
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !63
end_hunk_3
begin_hunk_4_@_ZL12luau_executeILb0EEvP9lua_State:bb.a
  store i32 0, ptr %i.gnk, align 4, !tbaa !64
  %i.gnl = getelementptr inbounds nuw i8, ptr %.137614340, i64 28
  store i32 0, ptr %i.gnl, align 4, !tbaa !64
  %i.gnm = getelementptr inbounds nuw i8, ptr %.137614340, i64 44
  store i32 0, ptr %i.gnm, align 4, !tbaa !64
  %i.gnn = getelementptr inbounds nuw i8, ptr %.137614340, i64 60
  store i32 0, ptr %i.gnn, align 4, !tbaa !64
  %i.gno = getelementptr inbounds nuw i8, ptr %.137614340, i64 76
  store i32 0, ptr %i.gno, align 4, !tbaa !64
  %i.gnp = getelementptr inbounds nuw i8, ptr %.137614340, i64 92
  store i32 0, ptr %i.gnp, align 4, !tbaa !64
  %i.gnq = getelementptr inbounds nuw i8, ptr %.137614340, i64 108
  store i32 0, ptr %i.gnq, align 4, !tbaa !64
  %i.gnr = add nsw i32 %.137574341, -8
  %i.gns = getelementptr inbounds nuw i8, ptr %.137614340, i64 128 ; 2 uses
  %i.gnt = getelementptr inbounds nuw i8, ptr %.137614340, i64 124
  store i32 0, ptr %i.gnt, align 4, !tbaa !64
  %i.gnu = icmp sgt i32 %.137574341, 8
  br i1 %i.gnu, label %.lr.ph4342, label %._crit_edge4343, !llvm.loop !202

._crit_edge4343:                                  ; preds = %.lr.ph4342.prol.loopexit, %.lr.ph4342, %.preheader4245
  %.13761.lcssa = phi ptr [ %.03760.lcssa, %.preheader4245 ], [ %.lcssa4901.unr, %.lr.ph4342.prol.loopexit ], [ %i.gns, %.lr.ph4342 ]
  store ptr %i.gmq, ptr %i.d, align 8, !tbaa !23
  %i.gnv = load ptr, ptr %i.gmq, align 8, !tbaa !28 ; 2 uses
  store ptr %i.gnv, ptr %i.t, align 8, !tbaa !21
  %i.gnw = icmp eq i32 %i.glp, 0
  br i1 %i.gnw, label %bb.zz, label %bb.zy

bb.zy:                                            ; preds = %._crit_edge4343
  %i.gnx = getelementptr inbounds i8, ptr %i.gmp, i64 -32
  %i.gny = load ptr, ptr %i.gnx, align 8, !tbaa !26
  br label %bb.zz

bb.zz:                                            ; preds = %._crit_edge4343, %bb.zy
  %i.gnz = phi ptr [ %i.gny, %bb.zy ], [ %.13761.lcssa, %._crit_edge4343 ]
  store ptr %i.gnz, ptr %i.w, align 8, !tbaa !22
  %i.goa = load i32, ptr %.23736, align 4, !tbaa !62
  %i.gob = and i32 %i.goa, 255
  %i.goc = zext nneg i32 %i.gob to i64
  %i.god = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.goc
  %i.goe = load ptr, ptr %i.god, align 8, !tbaa !63
  br label %.backedge.backedge

.critedge4135:                                    ; preds = %bb.zo, %bb.zp, %bb.zn
  %i.gof = and i32 %i.gkc, -256
  %i.gog = or disjoint i32 %i.gof, 20
  store i32 %i.gog, ptr %.43738, align 4, !tbaa !62
  store i32 %i.gkn, ptr %i.gkb, align 4, !tbaa !62
  br label %.backedge.backedge

bb.aaa:                                           ; preds = %.backedge
  %i.goh = getelementptr inbounds nuw i8, ptr %.43738, i64 4
  %i.goi = load i32, ptr %.43738, align 4, !tbaa !62 ; 2 uses
  %i.goj = getelementptr inbounds nuw i8, ptr %.43738, i64 8 ; 3 uses
  %i.gok = load i32, ptr %i.goh, align 4, !tbaa !62
  %i.gol = lshr i32 %i.goi, 8
  %i.gom = and i32 %i.gol, 255
  %i.gon = zext nneg i32 %i.gom to i64
  %i.goo = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.gon
  %i.gop = zext i32 %i.gok to i64
  %i.goq = getelementptr inbounds nuw [16 x i8], ptr %.03733, i64 %i.gop
  %i.gor = lshr i32 %i.goi, 24
  %i.gos = zext nneg i32 %i.gor to i64
  %i.got = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.gos
  %i.gou = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.gov = getelementptr inbounds nuw i8, ptr %i.gou, i64 32
  store ptr %i.goj, ptr %i.gov, align 8, !tbaa !30
  %i.gow = load ptr, ptr %i.goo, align 8, !tbaa !30
  %i.gox = load ptr, ptr %i.goq, align 8, !tbaa !30
  call void @_Z19luaR_addclassmemberP9lua_StateP9LuauClassP7TStringP10lua_TValue(ptr noundef %0, ptr noundef %i.gow, ptr noundef %i.gox, ptr noundef %i.got)
  %i.goy = load i32, ptr %i.goj, align 4, !tbaa !62
  %i.goz = and i32 %i.goy, 255
  %i.gpa = zext nneg i32 %i.goz to i64
  %i.gpb = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.gpa
  %i.gpc = load ptr, ptr %i.gpb, align 8, !tbaa !63
  br label %.backedge.backedge

bb.aab:                                           ; preds = %.backedge
  %i.gpd = getelementptr inbounds nuw i8, ptr %.43738, i64 4
  %i.gpe = load i32, ptr %.43738, align 4, !tbaa !62 ; 3 uses
  %i.gpf = getelementptr inbounds nuw i8, ptr %.43738, i64 8 ; 3 uses
  %i.gpg = load i32, ptr %i.gpd, align 4, !tbaa !62
  %i.gph = lshr i32 %i.gpe, 8
  %i.gpi = and i32 %i.gph, 255
  %i.gpj = zext nneg i32 %i.gpi to i64
  %i.gpk = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.gpj ; 2 uses
  %i.gpl = getelementptr inbounds nuw i8, ptr %i.gpk, i64 12
  %i.gpm = load i32, ptr %i.gpl, align 4, !tbaa !64
  %.not3897 = icmp eq i32 %i.gpm, 8
  br i1 %.not3897, label %bb.aad, label %bb.aac, !prof !71

bb.aac:                                           ; preds = %bb.aab
  %i.gpn = ashr i32 %i.gpe, 16
  %i.gpo = sext i32 %i.gpn to i64
  %i.gpp = getelementptr [4 x i8], ptr %i.gpf, i64 %i.gpo
  %i.gpq = getelementptr i8, ptr %i.gpp, i64 -4   ; 2 uses
  %i.gpr = load i32, ptr %i.gpq, align 4, !tbaa !62
  %i.gps = and i32 %i.gpr, 255
  %i.gpt = zext nneg i32 %i.gps to i64
  %i.gpu = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.gpt
  %i.gpv = load ptr, ptr %i.gpu, align 8, !tbaa !63
  br label %.backedge.backedge

bb.aad:                                           ; preds = %bb.aab
  %i.gpw = load ptr, ptr %i.gpk, align 8, !tbaa !30 ; 2 uses
  %i.gpx = getelementptr inbounds nuw i8, ptr %i.gpw, i64 3
  %i.gpy = load i8, ptr %i.gpx, align 1, !tbaa !48
  %.not3898 = icmp eq i8 %i.gpy, 0
  br i1 %.not3898, label %bb.aae, label %bb.aaf

bb.aae:                                           ; preds = %bb.aad
  %i.gpz = getelementptr inbounds nuw i8, ptr %i.gpw, i64 24
  %i.gqa = load ptr, ptr %i.gpz, align 8, !tbaa !30
  %i.gqb = getelementptr inbounds nuw i8, ptr %i.gqa, i64 188
  %i.gqc = load i32, ptr %i.gqb, align 4, !tbaa !143
  %.not3899 = icmp eq i32 %i.gqc, %i.gpg
  br i1 %.not3899, label %bb.aag, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae, %bb.aad
  %i.gqd = ashr i32 %i.gpe, 16
  %i.gqe = sext i32 %i.gqd to i64
  %i.gqf = getelementptr [4 x i8], ptr %i.gpf, i64 %i.gqe
  %i.gqg = getelementptr i8, ptr %i.gqf, i64 -4
  br label %bb.aag

bb.aag:                                           ; preds = %bb.aaf, %bb.aae
  %.33737 = phi ptr [ %i.gqg, %bb.aaf ], [ %i.gpf, %bb.aae ] ; 2 uses
  %i.gqh = load i32, ptr %.33737, align 4, !tbaa !62
  %i.gqi = and i32 %i.gqh, 255
  %i.gqj = zext nneg i32 %i.gqi to i64
  %i.gqk = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.gqj
  %i.gql = load ptr, ptr %i.gqk, align 8, !tbaa !63
  br label %.backedge.backedge

bb.aah:                                           ; preds = %.backedge
  %i.gqm = getelementptr inbounds nuw i8, ptr %.43738, i64 4
  %i.gqn = load i32, ptr %.43738, align 4, !tbaa !62 ; 3 uses
  %i.gqo = lshr i32 %i.gqn, 8
  %i.gqp = and i32 %i.gqo, 255
  %i.gqq = zext nneg i32 %i.gqp to i64
  %i.gqr = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.gqq ; 4 uses
  %i.gqs = getelementptr inbounds nuw i8, ptr %.43738, i64 8 ; 3 uses
  %i.gqt = load i32, ptr %i.gqm, align 4, !tbaa !62
  %i.gqu = zext i32 %i.gqt to i64
  %i.gqv = getelementptr inbounds nuw [16 x i8], ptr %.03733, i64 %i.gqu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gqr, ptr noundef nonnull align 8 dereferenceable(16) %i.gqv, i64 16, i1 false), !tbaa.struct !65
  %i.gqw = load ptr, ptr %i.gqr, align 8, !tbaa !30
  %i.gqx = and i32 %i.gqn, 16711680
  %.not3895 = icmp eq i32 %i.gqx, 16711680
  br i1 %.not3895, label %bb.aal, label %bb.aai

bb.aai:                                           ; preds = %bb.aah
  %i.gqy = lshr i32 %i.gqn, 16
  %i.gqz = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.gra = getelementptr inbounds nuw i8, ptr %i.gqz, i64 32
  store ptr %i.gqs, ptr %i.gra, align 8, !tbaa !30
  %i.grb = and i32 %i.gqy, 255
  %i.grc = zext nneg i32 %i.grb to i64
  %i.grd = getelementptr inbounds nuw [16 x i8], ptr %.17, i64 %i.grc ; 3 uses
  %i.gre = getelementptr inbounds nuw i8, ptr %i.grd, i64 12
  %i.grf = load i32, ptr %i.gre, align 4, !tbaa !64
  %.not3896 = icmp eq i32 %i.grf, 12
  br i1 %.not3896, label %bb.aak, label %bb.aaj, !prof !71

bb.aaj:                                           ; preds = %bb.aai
  call void @_Z15luaG_typeerrorLP9lua_StatePK10lua_TValuePKc(ptr noundef nonnull %0, ptr noundef nonnull %i.grd, ptr noundef nonnull @.str.17) #12
  unreachable

bb.aak:                                           ; preds = %bb.aai
  %i.grg = load ptr, ptr %i.grd, align 8, !tbaa !30
  %i.grh = call noundef ptr @_Z17luaR_inheritclassP9lua_StatePK9LuauClassS3_(ptr noundef nonnull %0, ptr noundef %i.gqw, ptr noundef %i.grg)
  store ptr %i.grh, ptr %i.gqr, align 8, !tbaa !30
  %i.gri = getelementptr inbounds nuw i8, ptr %i.gqr, i64 12
  store i32 12, ptr %i.gri, align 4, !tbaa !64
  br label %bb.aal

bb.aal:                                           ; preds = %bb.aak, %bb.aah
  %i.grj = load i32, ptr %i.gqs, align 4, !tbaa !62
  %i.grk = and i32 %i.grj, 255
  %i.grl = zext nneg i32 %i.grk to i64
  %i.grm = getelementptr inbounds nuw [8 x i8], ptr @_ZZL12luau_executeILb0EEvP9lua_StateE14kDispatchTable, i64 %i.grl
  %i.grn = load ptr, ptr %i.grm, align 8, !tbaa !63
  br label %.backedge.backedge

.loopexit4247.sink.split.sink.split:              ; preds = %bb.wg, %bb.vz, %bb.tg, %bb.sb, %bb.gv
  %i.gro = load ptr, ptr %i.d, align 8, !tbaa !23
  br label %.loopexit4247.sink.split

.loopexit4247.sink.split:                         ; preds = %bb.hx, %bb.ga, %.loopexit4247.sink.split.sink.split
  %.sink4811 = phi ptr [ %i.gro, %.loopexit4247.sink.split.sink.split ], [ %.pre4567.pre, %bb.ga ], [ %.pre4562, %bb.hx ]
  %i.grp = getelementptr inbounds nuw i8, ptr %.sink4811, i64 32 ; 2 uses
  %i.grq = load ptr, ptr %i.grp, align 8, !tbaa !30
  %i.grr = getelementptr inbounds i8, ptr %i.grq, i64 -4
  store ptr %i.grr, ptr %i.grp, align 8, !tbaa !30
  br label %.loopexit4247

.loopexit4247:                                    ; preds = %bb.up, %bb.if, %bb.zw, %bb.yj, %bb.tx, %bb.rk, %bb.id, %bb.hs, %bb.gq, %.loopexit4247.sink.split, %bb.d
  ret void

.backedge:                                        ; preds = %.backedge.backedge, %.backedge4249
  %.43738 = phi ptr [ %i.ak, %.backedge4249 ], [ %.43738.be, %.backedge.backedge ] ; 247 uses
  %.03733 = phi ptr [ %i.ar, %.backedge4249 ], [ %.03733.be, %.backedge.backedge ] ; 233 uses
  %.17 = phi ptr [ %i.ao, %.backedge4249 ], [ %.17.be, %.backedge.backedge ] ; 291 uses
  %.0 = phi ptr [ %i.an, %.backedge4249 ], [ %.0.be, %.backedge.backedge ] ; 226 uses
  %i.grs = phi ptr [ %i.aw, %.backedge4249 ], [ %.be, %.backedge.backedge ]
  indirectbr ptr %i.grs, [label %bb.f, label %bb.yg, label %bb.g, label %bb.h, label %bb.i, label %bb.j, label %bb.k, label %bb.l, label %bb.p, label %bb.y, label %bb.ab, label %bb.ag, label %bb.ak, label %bb.cy, label %bb.dd, label %bb.ao, label %bb.cb, label %bb.dn, label %bb.dr, label %bb.ea, label %bb.ej, label %bb.fz, label %bb.hw, label %bb.ih, label %bb.vy, label %bb.ii, label %bb.im, label %bb.iq, label %bb.lb, label %bb.ll, label %bb.jv, label %bb.lg, label %bb.lq, label %bb.lv, label %bb.me, label %bb.mn, label %bb.my, label %bb.ns, label %bb.nw, label %bb.oa, label %bb.od, label %bb.og, label %bb.oo, label %bb.pe, label %bb.ph, label %bb.pr, label %bb.pv, label %bb.pz, label %bb.qd, label %bb.qh, label %bb.qk, label %bb.qn, label %bb.qv, label %bb.rc, label %bb.rf, label %bb.ri, label %bb.rr, label %bb.sa, label %bb.tf, label %bb.ua, label %bb.xz, label %bb.ui, label %bb.up, label %bb.uq, label %bb.ux, label %bb.vv, label %bb.we, label %bb.wf, label %bb.wl, label %bb.wv, label %bb.ww, label %bb.wx, label %bb.xa, label %bb.xe, label %bb.xl, label %bb.xs, label %bb.sk, label %bb.yl, label %bb.ym, label %bb.yp, label %bb.ys, label %bb.nj, label %bb.ow, label %bb.yv, label %bb.ze, label %bb.zn, label %bb.aaa, label %bb.gu, label %bb.aab, label %bb.aah]
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z13luau_finishopP9lua_State(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !122
  %i.e = and i32 %i.d, -9
  store i32 %i.e, ptr %i.c, align 4, !tbaa !122
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !62   ; 2 uses
  %i.l = lshr i32 %i.k, 8
  %i.m = and i32 %i.l, 255
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !64
  %i.t = icmp eq i32 %i.s, 0
  %i.u = ashr i32 %i.k, 16
  %i.v = select i1 %i.t, i32 1, i32 %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.w
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.x, ptr %i.z, align 8, !tbaa !30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 3) i32 @_Z12luau_precallP9lua_StateP10lua_TValuei(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64
  %i.c = icmp eq i32 %i.b, 8
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaV_tryfuncTMP9lua_StateP10lua_TValue(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !30     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef ptr @_Z11luaD_growCIP9lua_State(ptr noundef nonnull %0)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %i.j, %bb.d ], [ %i.k, %bb.e ] ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %1, ptr %i.m, align 8, !tbaa !29
  %i.n = load i8, ptr @_ZN5FFlag11LuauCIProtoE, align 8, !tbaa !34, !range !35, !noundef !36
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !48
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.h, label %._crit_edge114

bb.h:                                             ; preds = %bb.g
  %i.r = load i8, ptr @_ZN5FFlag16LuauPromoteProtoE, align 8, !tbaa !34, !range !35, !noundef !36
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 3 uses
  br i1 %i.s, label %bb.i, label %._crit_edge114

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 2 uses
  %.not90 = icmp eq ptr %i.w, null
  br i1 %.not90, label %._crit_edge114, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.x = phi ptr [ %i.z, %.lr.ph.i ], [ %i.w, %bb.i ] ; 4 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_Z17luaF_promoteprotoP7Closure.exit, label %.lr.ph.i, !llvm.loop !0

_Z17luaF_promoteprotoP7Closure.exit:              ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !119
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !120
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %bb.h, %bb.i, %_Z17luaF_promoteprotoP7Closure.exit, %bb.g
  %i.ad = phi ptr [ null, %bb.g ], [ %i.x, %_Z17luaF_promoteprotoP7Closure.exit ], [ %i.u, %bb.i ], [ %i.u, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !121
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge114, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.af, ptr %i.l, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 5 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !120
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !122
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 %2, ptr %i.ap, align 8, !tbaa !123
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %i.aq, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = load i8, ptr %i.ai, align 1, !tbaa !120
  %i.ay = zext i8 %i.ax to i32                    ; 3 uses
  %i.az = shl nuw nsw i32 %i.ay, 4
  %i.ba = zext nneg i32 %i.az to i64
  %.not91 = icmp sgt i64 %i.aw, %i.ba
  br i1 %.not91, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !124 ; 3 uses
  %.not92 = icmp slt i32 %i.bc, %i.ay
  %i.bd = shl nuw nsw i32 %i.bc, 1
  %i.be = add nsw i32 %i.bc, %i.ay
  %i.bf = select i1 %.not92, i32 %i.be, i32 %i.bd
  tail call void @_Z17luaD_reallocstackP9lua_Stateii(ptr noundef nonnull %0, i32 noundef %i.bf, i32 noundef 1)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !48
  %.not93 = icmp eq i8 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !30 ; 6 uses
  br i1 %.not93, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 3 uses
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !125
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bq = icmp ult ptr %i.bk, %i.bp
  br i1 %i.bq, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.m, %.lr.ph107
  %.084105 = phi ptr [ %i.br, %.lr.ph107 ], [ %i.bk, %bb.m ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.084105, i64 16 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.084105, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !64
  %i.bt = icmp ult ptr %i.br, %i.bp
  br i1 %i.bt, label %.lr.ph107, label %._crit_edge108, !llvm.loop !204

._crit_edge108:                                   ; preds = %.lr.ph107, %bb.m
  %.084.lcssa = phi ptr [ %i.bk, %bb.m ], [ %i.br, %.lr.ph107 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 5
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !126
  %.not94 = icmp eq i8 %i.bv, 0
  br i1 %.not94, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge108
  %i.bw = load ptr, ptr %i.am, align 8, !tbaa !26
end_hunk_4
