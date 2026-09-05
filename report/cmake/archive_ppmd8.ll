Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_ppmd8?download=true
inline.NumInlined: 70
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@UpdateModel:bb.a
  br label %bb.au

.thread254:                                       ; preds = %AllocUnits.exit
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef nonnull %.0192274)
  br label %bb.bd

bb.au:                                            ; preds = %AllocUnits.exit._crit_edge, %AllocUnits.exit.thread
  %i.gs = phi ptr [ %i.fx, %AllocUnits.exit.thread ], [ %.pre284, %AllocUnits.exit._crit_edge ] ; 2 uses
  %.0.i228251 = phi ptr [ %i.fz, %AllocUnits.exit.thread ], [ %.0.i228, %AllocUnits.exit._crit_edge ] ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0192274, i64 4 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 1, !tbaa !43 ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv ; 8 uses
  %i.gx = and i32 %i.fl, 2
  %lcmp.mod.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.au
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !51
  store i32 %i.gy, ptr %.0.i228251, align 4, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !51
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i228251, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !51
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !51
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i228251, i64 8
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i228251, i64 12
  %i.hh = add nsw i32 %i.fm, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.au
  %.0186.unr = phi ptr [ %.0.i228251, %bb.au ], [ %i.hg, %.prol.loopexit.unr-lcssa ]
  %.0185.unr = phi ptr [ %i.gw, %bb.au ], [ %i.hf, %.prol.loopexit.unr-lcssa ]
  %.0184.unr = phi i32 [ %i.fm, %bb.au ], [ %i.hh, %.prol.loopexit.unr-lcssa ]
  %i.hi = icmp eq i32 %i.fl, 2
  br i1 %i.hi, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.0186 = phi ptr [ %i.ia, %.new ], [ %.0186.unr, %.prol.loopexit ] ; 7 uses
  %.0185 = phi ptr [ %i.hz, %.new ], [ %.0185.unr, %.prol.loopexit ] ; 7 uses
  %.0184 = phi i32 [ %i.ib, %.new ], [ %.0184.unr, %.prol.loopexit ]
  %i.hj = load i32, ptr %.0185, align 4, !tbaa !51
  store i32 %i.hj, ptr %.0186, align 4, !tbaa !51
  %i.hk = getelementptr inbounds nuw i8, ptr %.0185, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !51
  %i.hm = getelementptr inbounds nuw i8, ptr %.0186, i64 4
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !51
  %i.hn = getelementptr inbounds nuw i8, ptr %.0185, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !51
  %i.hp = getelementptr inbounds nuw i8, ptr %.0186, i64 8
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !51
  %i.hq = getelementptr inbounds nuw i8, ptr %.0185, i64 12
  %i.hr = getelementptr inbounds nuw i8, ptr %.0186, i64 12
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !51
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %.0185, i64 16
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !51
  %i.hv = getelementptr inbounds nuw i8, ptr %.0186, i64 16
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !51
  %i.hw = getelementptr inbounds nuw i8, ptr %.0185, i64 20
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !51
  %i.hy = getelementptr inbounds nuw i8, ptr %.0186, i64 20
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !51
  %i.hz = getelementptr inbounds nuw i8, ptr %.0185, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %.0186, i64 24
  %i.ib = add i32 %.0184, -2                      ; 2 uses
  %.not223.1 = icmp eq i32 %i.ib, 0
  br i1 %.not223.1, label %.unr-lcssa, label %.new, !llvm.loop !90

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store i32 -1, ptr %i.gw, align 4, !tbaa !56
  %i.ic = zext i8 %i.fq to i64                    ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !51
  %i.if = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !57
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ic
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !17
  %i.ii = zext i8 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !58
  %i.ik = ptrtoint ptr %i.gs to i64
  store i32 %i.gu, ptr %i.id, align 4, !tbaa !51
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ic ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !51
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !51
  %i.io = ptrtoint ptr %.0.i228251 to i64
  %i.ip = sub i64 %i.io, %i.ik
  %i.iq = trunc i64 %i.ip to i32
  store i32 %i.iq, ptr %i.gt, align 1, !tbaa !43
  br label %.critedge

.critedge:                                        ; preds = %.unr-lcssa, %bb.ap, %bb.ao
  %i.ir = getelementptr inbounds nuw i8, ptr %.0192274, i64 2
  %i.is = load i16, ptr %i.ir, align 1, !tbaa !40
  %i.it = mul nuw nsw i32 %i.fj, 3
  %i.iu = add nuw nsw i32 %i.it, 1
  %i.iv = icmp samesign ult i32 %i.iu, %i.eq
  %i.iw = zext i1 %i.iv to i16
  %i.ix = add i16 %i.is, %i.iw
  br label %bb.ba

bb.av:                                            ; preds = %bb.an
  %i.iy = load i32, ptr %i.ex, align 8, !tbaa !51 ; 2 uses
  %.not.i229 = icmp eq i32 %i.iy, 0
  br i1 %.not.i229, label %bb.aw, label %AllocUnits.exit232.thread

AllocUnits.exit232.thread:                        ; preds = %bb.av
  %i.iz = load ptr, ptr %i.bm, align 8, !tbaa !16
  %i.ja = zext i32 %i.iy to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !57
  store i32 %i.jd, ptr %i.ex, align 8, !tbaa !51
  %i.je = load i32, ptr %i.ey, align 8, !tbaa !51
  %i.jf = add i32 %i.je, -1
  store i32 %i.jf, ptr %i.ey, align 8, !tbaa !51
  br label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.jg = load i8, ptr %i.ez, align 8, !tbaa !17
  %i.jh = zext i8 %i.jg to i32
  %i.ji = mul nuw nsw i32 %i.jh, 12               ; 2 uses
  %i.jj = load ptr, ptr %i.fa, align 8, !tbaa !33
  %i.jk = load ptr, ptr %i.fb, align 8, !tbaa !42 ; 3 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = trunc i64 %i.jn to i32
  %.not16.i231 = icmp ugt i32 %i.ji, %i.jo
  br i1 %.not16.i231, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jp = zext nneg i32 %i.ji to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jp
  store ptr %i.jq, ptr %i.fb, align 8, !tbaa !42
  br label %AllocUnits.exit232

bb.ay:                                            ; preds = %bb.aw
  %i.jr = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0)
  br label %AllocUnits.exit232

AllocUnits.exit232:                               ; preds = %bb.ax, %bb.ay
  %.0.i230 = phi ptr [ %i.jr, %bb.ay ], [ %i.jk, %bb.ax ] ; 2 uses
  %.not219.not = icmp eq ptr %.0.i230, null
  br i1 %.not219.not, label %.thread261, label %bb.az

.thread261:                                       ; preds = %AllocUnits.exit232
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef nonnull %.0192274)
  br label %bb.bd

bb.az:                                            ; preds = %AllocUnits.exit232, %AllocUnits.exit232.thread
  %.0.i230258 = phi ptr [ %i.jb, %AllocUnits.exit232.thread ], [ %.0.i230, %AllocUnits.exit232 ] ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0192274, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.0.i230258, ptr noundef nonnull align 1 dereferenceable(6) %i.js, i64 6, i1 false), !tbaa.struct !52
  %i.jt = load ptr, ptr %i.bm, align 8, !tbaa !16
  %i.ju = ptrtoint ptr %.0.i230258 to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %.0192274, i64 4
  store i32 %i.jx, ptr %i.jy, align 1, !tbaa !43
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i230258, i64 1 ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !46  ; 2 uses
  %i.kb = icmp ult i8 %i.ka, 30
  %i.kc = shl nuw nsw i8 %i.ka, 1
  %storemerge = select i1 %i.kb, i8 %i.kc, i8 120 ; 2 uses
  store i8 %storemerge, ptr %i.jz, align 1, !tbaa !46
  %i.kd = zext nneg i8 %storemerge to i32
  %i.ke = load i32, ptr %i.fc, align 4, !tbaa !59
  %i.kf = add i32 %i.ke, %i.fe
  %i.kg = add i32 %i.kf, %i.kd
  %i.kh = trunc i32 %i.kg to i16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.critedge
  %i.ki = phi i16 [ %i.kh, %bb.az ], [ %i.ix, %.critedge ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0192274, i64 2
  %i.kk = zext i16 %i.ki to i32                   ; 2 uses
  %i.kl = add nuw nsw i32 %i.kk, 6
  %i.km = mul nuw nsw i32 %i.kl, %i.ff            ; 6 uses
  %i.kn = add nsw i32 %i.fh, %i.kk                ; 6 uses
  %i.ko = mul nsw i32 %i.kn, 6
  %i.kp = icmp ult i32 %i.km, %i.ko
  br i1 %i.kp, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kq = icmp ugt i32 %i.km, %i.kn
  %i.kr = select i1 %i.kq, i32 2, i32 1
  %i.ks = shl nsw i32 %i.kn, 2
  %i.kt = icmp uge i32 %i.km, %i.ks
  %i.ku = zext i1 %i.kt to i32
  %i.kv = add nuw nsw i32 %i.kr, %i.ku
  br label %.critedge226

bb.bc:                                            ; preds = %bb.ba
  %i.kw = mul nuw nsw i32 %i.kn, 9
  %i.kx = icmp samesign ugt i32 %i.km, %i.kw
  %i.ky = select i1 %i.kx, i32 5, i32 4
  %i.kz = mul nuw nsw i32 %i.kn, 12
  %i.la = icmp samesign ugt i32 %i.km, %i.kz
  %i.lb = zext i1 %i.la to i32
  %i.lc = add nuw nsw i32 %i.ky, %i.lb
  %i.ld = mul nuw nsw i32 %i.kn, 15
  %i.le = icmp samesign ugt i32 %i.km, %i.ld
  %i.lf = zext i1 %i.le to i32
  %i.lg = add nuw nsw i32 %i.lc, %i.lf            ; 2 uses
  %i.lh = trunc nuw nsw i32 %i.lg to i16
  br label %.critedge226

.critedge226:                                     ; preds = %bb.bc, %bb.bb
  %.pn = phi i16 [ %i.lh, %bb.bc ], [ 4, %bb.bb ]
  %.0187 = phi i32 [ %i.lg, %bb.bc ], [ %i.kv, %bb.bb ]
  %storemerge224 = add i16 %.pn, %i.ki
  store i16 %storemerge224, ptr %i.kj, align 1, !tbaa !40
  %i.li = load ptr, ptr %i.bm, align 8, !tbaa !16
  %i.lj = getelementptr inbounds nuw i8, ptr %.0192274, i64 4
  %i.lk = load i32, ptr %i.lj, align 1, !tbaa !43
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ll
  %i.ln = zext i8 %i.fi to i64
  %i.lo = getelementptr inbounds nuw [6 x i8], ptr %i.lm, i64 %i.ln ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 6
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i32 %.0, ptr %i.lq, align 2
  store i8 %i.h, ptr %i.lp, align 2, !tbaa !45
  %i.lr = trunc nuw nsw i32 %.0187 to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 7
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !46
  %i.lt = getelementptr inbounds nuw i8, ptr %.0192274, i64 1 ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !39
  %i.lv = or i8 %i.lu, %i.es
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !39
  %i.lw = add i8 %i.fi, 1
  store i8 %i.lw, ptr %.0192274, align 1, !tbaa !38
  %i.lx = load ptr, ptr %i.bm, align 8, !tbaa !16 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0192274, i64 8
  %i.lz = load i32, ptr %i.ly, align 1, !tbaa !37
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ma ; 2 uses
  %i.mc = load ptr, ptr %0, align 8, !tbaa !35
  %.not217 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not217, label %._crit_edge, label %bb.an, !llvm.loop !91

._crit_edge:                                      ; preds = %.critedge226, %.._crit_edge_crit_edge
  %i.md = phi ptr [ %.pre285, %.._crit_edge_crit_edge ], [ %i.lx, %.critedge226 ]
  %i.me = zext i32 %.2195 to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.me ; 2 uses
  store ptr %i.mf, ptr %0, align 8, !tbaa !35
  store ptr %i.mf, ptr %i.ao, align 8, !tbaa !34
  br label %bb.bd

bb.bd:                                            ; preds = %.thread261, %.thread254, %.thread247, %.thread, %bb.m, %bb.n, %._crit_edge, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @Ppmd8_RangeDec_Init(ptr nofree noundef captures(none) initializes((104, 116)) %0) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.a, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 -1, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65
  %i.h = tail call zeroext i8 %i.g(ptr noundef %i.e) #13
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  store i32 %i.i, ptr %i.c, align 4, !tbaa !62
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = tail call zeroext i8 %i.m(ptr noundef %i.k) #13
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.j, %i.o               ; 2 uses
  store i32 %i.p, ptr %i.c, align 4, !tbaa !62
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = tail call zeroext i8 %i.t(ptr noundef %i.r) #13
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.q, %i.v               ; 2 uses
  store i32 %i.w, ptr %i.c, align 4, !tbaa !62
  %i.x = shl nuw i32 %i.w, 8
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = tail call zeroext i8 %i.aa(ptr noundef %i.y) #13
  %i.ac = zext i8 %i.ab to i32
  %i.ad = or disjoint i32 %i.x, %i.ac             ; 2 uses
  store i32 %i.ad, ptr %i.c, align 4, !tbaa !62
  %i.ae = icmp ne i32 %i.ad, -1
  %i.af = zext i1 %i.ae to i32
  ret i32 %i.af
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Ppmd8_DecodeSymbol(ptr noundef %0) #10 {
bb.a:
  %1 = alloca %struct.CPpmd_State, align 2        ; 4 uses
  %i.a = alloca [32 x i64], align 16              ; 17 uses
  %i.b = alloca [256 x ptr], align 16             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = load ptr, ptr %0, align 8, !tbaa !35     ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !38    ; 2 uses
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 1, !tbaa !43
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.l = load i16, ptr %i.k, align 1, !tbaa !40
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 6 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !62   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 14 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !61
  %i.r = udiv i32 %i.q, %i.m                      ; 7 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !61
  %i.s = udiv i32 %i.o, %i.r                      ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !46
  %i.v = zext i8 %i.u to i32                      ; 3 uses
  %i.w = icmp ult i32 %i.s, %i.v
  br i1 %i.w, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !60
  %i.z = mul i32 %i.r, %i.v                       ; 2 uses
  store i32 %i.z, ptr %i.p, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %bb.c
  %i.ab = phi i32 [ %i.aq, %.critedge.i ], [ %i.o, %bb.c ]
  %i.ac = phi i32 [ %i.au, %.critedge.i ], [ %i.y, %bb.c ] ; 3 uses
  %i.ad = phi i32 [ %i.as, %.critedge.i ], [ %i.z, %bb.c ] ; 2 uses
  %i.ae = add i32 %i.ad, %i.ac
  %i.af = xor i32 %i.ae, %i.ac
  %i.ag = icmp ult i32 %i.af, 16777216
  br i1 %i.ag, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp ult i32 %i.ad, 32768
  br i1 %i.ah, label %bb.f, label %RangeDec_Decode.exit

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i32 0, %i.ac
  %i.aj = and i32 %i.ai, 32767
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !61
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.d
  %i.ak = shl i32 %i.ab, 8
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  %i.ao = tail call zeroext i8 %i.an(ptr noundef %i.al) #13, !inline_history !92
  %i.ap = zext i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.ak, %i.ap            ; 2 uses
  store i32 %i.aq, ptr %i.n, align 4, !tbaa !62
  %i.ar = load i32, ptr %i.p, align 8, !tbaa !61
  %i.as = shl i32 %i.ar, 8                        ; 2 uses
  store i32 %i.as, ptr %i.p, align 8, !tbaa !61
  %i.at = load i32, ptr %i.x, align 8, !tbaa !60
  %i.au = shl i32 %i.at, 8                        ; 2 uses
  store i32 %i.au, ptr %i.x, align 8, !tbaa !60
  br label %bb.d, !llvm.loop !93

RangeDec_Decode.exit:                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.av, align 8, !tbaa !41
  %i.aw = load i8, ptr %i.j, align 2, !tbaa !45
  %i.ax = load i8, ptr %i.t, align 1, !tbaa !46   ; 2 uses
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = load ptr, ptr %0, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 1, !tbaa !40 ; 2 uses
  %i.bd = zext i16 %i.bc to i32
  %i.be = icmp samesign uge i32 %i.az, %i.bd
  %i.bf = zext i1 %i.be to i32                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !31
  %i.bj = add i32 %i.bi, %i.bf
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !31
  %i.bk = add i16 %i.bc, 4
  store i16 %i.bk, ptr %i.bb, align 1, !tbaa !40
  %i.bl = add i8 %i.ax, 4                         ; 2 uses
  store i8 %i.bl, ptr %i.t, align 1, !tbaa !46
  %i.bm = icmp ugt i8 %i.bl, 124
  br i1 %i.bm, label %bb.g, label %bb.h
end_hunk_0
begin_hunk_1_@ShrinkUnits:bb.a
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.y = load i32, ptr %1, align 4, !tbaa !51
  store i32 %i.y, ptr %i.r, align 4, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.ah = add nsw i32 %3, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.033.unr = phi ptr [ %i.r, %bb.c ], [ %i.ag, %.prol.loopexit.unr-lcssa ]
  %.032.unr = phi ptr [ %1, %bb.c ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %.0.unr = phi i32 [ %3, %bb.c ], [ %i.ah, %.prol.loopexit.unr-lcssa ]
  %i.ai = icmp eq i32 %3, 1
  br i1 %i.ai, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.033 = phi ptr [ %i.ba, %.new ], [ %.033.unr, %.prol.loopexit ] ; 7 uses
  %.032 = phi ptr [ %i.az, %.new ], [ %.032.unr, %.prol.loopexit ] ; 7 uses
  %.0 = phi i32 [ %i.bb, %.new ], [ %.0.unr, %.prol.loopexit ]
  %i.aj = load i32, ptr %.032, align 4, !tbaa !51
  store i32 %i.aj, ptr %.033, align 4, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %.033, i64 4
  store i32 %i.al, ptr %i.am, align 4, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %.032, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %.033, i64 8
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %.032, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.033, i64 12
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !51
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %.033, i64 16
  store i32 %i.au, ptr %i.av, align 4, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %.032, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !51
  %i.ay = getelementptr inbounds nuw i8, ptr %.033, i64 20
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %.032, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.033, i64 24
  %i.bb = add nsw i32 %.0, -2                     ; 2 uses
  %.not37.1 = icmp eq i32 %i.bb, 0
  br i1 %.not37.1, label %.unr-lcssa, label %.new, !llvm.loop !104

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store i32 -1, ptr %1, align 4, !tbaa !56
  %i.bc = zext i8 %i.e to i64                     ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !17
  %i.bj = zext i8 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !58
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = ptrtoint ptr %i.p to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.bd, align 4, !tbaa !51
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bc ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !51
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !51
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.bt = zext i8 %i.e to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.l
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = sub nsw i32 %i.bw, %i.bz                ; 3 uses
  %i.cb = mul nuw nsw i32 %i.bz, 12
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc ; 5 uses
  %i.ce = add nsw i32 %i.ca, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !17
  %i.ci = zext i8 %i.ch to i64                    ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = zext i8 %i.ck to i32
  %.not.i = icmp eq i32 %i.ca, %i.cl
  br i1 %.not.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !16
  %.pre22.i = ptrtoint ptr %.pre.i to i64
  br label %SplitBlock.exit

bb.e:                                             ; preds = %bb.d
  %i.cm = add nuw nsw i64 %i.ci, 4294967295
  %i.cn = and i64 %i.cm, 4294967295               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = mul nuw nsw i32 %i.cq, 12
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cs ; 4 uses
  %i.cu = xor i32 %i.cq, -1
  %i.cv = add nsw i32 %i.ca, %i.cu
  store i32 -1, ptr %i.ct, align 4, !tbaa !56
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cw
  %i.db = load i8, ptr %i.da, align 1, !tbaa !17
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !58
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !16
  %i.dg = ptrtoint ptr %i.ct to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.cx, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.cw ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !51
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !51
  br label %SplitBlock.exit

SplitBlock.exit:                                  ; preds = %._crit_edge.i, %bb.e
  %.pre-phi23.i = phi i64 [ %.pre22.i, %._crit_edge.i ], [ %i.dh, %bb.e ]
  %.pre-phi.i = phi i64 [ %i.ci, %._crit_edge.i ], [ %i.cn, %bb.e ] ; 3 uses
  store i32 -1, ptr %i.cd, align 4, !tbaa !56
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.pre-phi.i ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !57
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.pre-phi.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !17
  %i.dt = zext i8 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !58
  %i.dv = ptrtoint ptr %i.cd to i64
  %i.dw = sub i64 %i.dv, %.pre-phi23.i
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.do, align 4, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.pre-phi.i ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !51
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !51
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %SplitBlock.exit, %.unr-lcssa
  %.034 = phi ptr [ %1, %SplitBlock.exit ], [ %i.r, %.unr-lcssa ], [ %1, %bb.a ]
  ret ptr %.034
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @CreateSuccessors(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = alloca [17 x ptr], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.e = load i32, ptr %i.d, align 2              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 16, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.082 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i32, ptr %i.f, align 1, !tbaa !37   ; 2 uses
  %.not103136 = icmp eq i32 %i.g, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !16 ; 6 uses
  br i1 %.not103136, label %.thread120, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %4 = zext nneg i32 %.082 to i64
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %4, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.183138 = phi i32 [ %i.g, %.lr.ph ], [ %i.ar, %bb.l ]
  %.089137 = phi ptr [ %2, %.lr.ph ], [ null, %bb.l ] ; 2 uses
  %i.h = zext i32 %.183138 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.h ; 8 uses
  %.not104 = icmp eq ptr %.089137, null
  br i1 %.not104, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.lr.ph.a
  %i.j = load i8, ptr %i.i, align 1, !tbaa !38
  %.not105 = icmp eq i8 %i.j, 0
  br i1 %.not105, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load i32, ptr %i.k, align 1, !tbaa !43
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.m
  %i.o = load i8, ptr %i.c, align 2, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.080 = phi ptr [ %i.n, %bb.e ], [ %i.q, %bb.f ] ; 5 uses
  %i.p = load i8, ptr %.080, align 2, !tbaa !45
  %.not107 = icmp eq i8 %i.p, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.080, i64 6
  br i1 %.not107, label %bb.g, label %bb.f, !llvm.loop !105

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.080, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !46    ; 2 uses
  %i.t = icmp ult i8 %i.s, 115
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.u = add nuw nsw i8 %i.s, 1
  store i8 %i.u, ptr %i.r, align 1, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.w = load i16, ptr %i.v, align 1, !tbaa !40
  %i.x = add i16 %i.w, 1
  store i16 %i.x, ptr %i.v, align 1, !tbaa !40
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !46   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !37
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !38
  %.not106 = icmp eq i8 %i.af, 0
  %i.ag = icmp ult i8 %i.aa, 24
  %i.ah = and i1 %i.ag, %.not106
  %i.ai = zext i1 %i.ah to i8
  %i.aj = add i8 %i.aa, %i.ai
  store i8 %i.aj, ptr %i.z, align 1, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.a, %bb.i, %bb.h, %bb.g
  %.181 = phi ptr [ %i.y, %bb.i ], [ %.080, %bb.h ], [ %.080, %bb.g ], [ %.089137, %.lr.ph.a ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.181, i64 2
  %i.al = load i32, ptr %i.ak, align 2            ; 2 uses
  %.not108 = icmp eq i32 %i.al, %i.e
  br i1 %.not108, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %5 = trunc nuw i64 %indvars.iv to i32
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.am ; 2 uses
  %i.ao = icmp eq i64 %indvars.iv, 0
  br i1 %i.ao, label %.thread, label %.thread120

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.181, ptr %i.ap, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !37 ; 2 uses
  %.not103 = icmp eq i32 %i.ar, 0
  br i1 %.not103, label %.thread120.loopexit, label %.lr.ph.a

.thread120.loopexit:                              ; preds = %bb.l
  %6 = trunc nuw i64 %indvars.iv.next to i32
  br label %.thread120

.thread120:                                       ; preds = %bb.c, %.thread120.loopexit, %bb.k
  %.183133 = phi i32 [ %5, %bb.k ], [ %6, %.thread120.loopexit ], [ %.082, %bb.c ] ; 2 uses
  %.286 = phi ptr [ %i.an, %bb.k ], [ %i.i, %.thread120.loopexit ], [ %3, %bb.c ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.at = zext i32 %i.e to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17  ; 3 uses
  %i.aw = add i32 %i.e, 1
  %i.ax = load i8, ptr %i.c, align 2, !tbaa !45
  %i.ay = icmp ugt i8 %i.ax, 63
  %i.az = select i1 %i.ay, i8 16, i8 0
  %i.ba = icmp ugt i8 %i.av, 63
  %i.bb = select i1 %i.ba, i8 8, i8 0
  %i.bc = or disjoint i8 %i.az, %i.bb
  %i.bd = load i8, ptr %.286, align 1, !tbaa !38  ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread120
  %i.bf = getelementptr inbounds nuw i8, ptr %.286, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !46
  br label %bb.t

bb.n:                                             ; preds = %.thread120
  %i.bh = getelementptr inbounds nuw i8, ptr %.286, i64 4
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !43
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bj
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.078 = phi ptr [ %i.bk, %bb.n ], [ %i.bm, %bb.o ] ; 3 uses
  %i.bl = load i8, ptr %.078, align 2, !tbaa !45
  %.not109 = icmp eq i8 %i.bl, %i.av
  %i.bm = getelementptr inbounds nuw i8, ptr %.078, i64 6
  br i1 %.not109, label %bb.p, label %bb.o, !llvm.loop !106

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.078, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !46
  %i.bp = zext i8 %i.bo to i32                    ; 3 uses
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.286, i64 2
  %i.bs = load i16, ptr %i.br, align 1, !tbaa !40
  %i.bt = zext i16 %i.bs to i32
  %i.bu = zext i8 %i.bd to i32
  %i.bv = add nuw nsw i32 %i.bp, %i.bu
  %reass.sub = sub nsw i32 %i.bt, %i.bv
  %i.bw = add nsw i32 %reass.sub, 1               ; 4 uses
  %i.bx = shl nsw i32 %i.bq, 1
  %.not110 = icmp ugt i32 %i.bx, %i.bw
  br i1 %.not110, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = mul nsw i32 %i.bq, 5
  %i.bz = icmp ugt i32 %i.by, %i.bw
  %i.ca = zext i1 %i.bz to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cb = shl nsw i32 %i.bw, 1
  %i.cc = add nsw i32 %i.bp, -4
  %i.cd = add nsw i32 %i.cc, %i.cb
  %i.ce = udiv i32 %i.cd, %i.bw
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cf = phi i32 [ %i.ca, %bb.q ], [ %i.ce, %bb.r ]
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = add i8 %i.cg, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m
  %.sroa.6.0 = phi i8 [ %i.bg, %bb.m ], [ %i.ch, %bb.s ]
  %.not111140 = icmp eq i32 %.183133, 0
  br i1 %.not111140, label %.thread, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.cm = zext i32 %.183133 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph143, %bb.z
  %indvars.iv.a = phi i64 [ %i.cm, %.lr.ph143 ], [ %i.dh, %bb.z ]
  %.387141 = phi ptr [ %.286, %.lr.ph143 ], [ %.0, %bb.z ]
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !33 ; 2 uses
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !42
  %.not112 = icmp eq ptr %i.cn, %i.co
  br i1 %.not112, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -12 ; 2 uses
  store ptr %i.cp, ptr %i.ci, align 8, !tbaa !33
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cq = load i32, ptr %i.ck, align 8, !tbaa !51 ; 2 uses
  %.not113 = icmp eq i32 %i.cq, 0
  br i1 %.not113, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !57
  store i32 %i.cv, ptr %i.ck, align 8, !tbaa !51
  %i.cw = load i32, ptr %i.cl, align 8, !tbaa !51
  %i.cx = add i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !51
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cy = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %.not114 = icmp eq ptr %i.cy, null
  br i1 %.not114, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y, %bb.x
  %.0 = phi ptr [ %i.cp, %bb.v ], [ %i.ct, %bb.x ], [ %i.cy, %bb.y ] ; 9 uses
  store i8 0, ptr %.0, align 1, !tbaa !38
  %i.cz = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.bc, ptr %i.cz, align 1, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.av, ptr %i.da, align 1, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !17
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.aw, ptr %.sroa.8.0..sroa_idx, align 1
  %i.db = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.dc = ptrtoint ptr %.387141 to i64
  %i.dd = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.df, ptr %i.dg, align 1, !tbaa !37
  %i.dh = add nsw i64 %indvars.iv.a, -1           ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !66
  %i.dk = ptrtoint ptr %.0 to i64
  %i.dl = sub i64 %i.dk, %i.dd
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i32 %i.dm, ptr %i.dn, align 2
  %.not111.wide = icmp eq i64 %i.dh, 0
  br i1 %.not111.wide, label %.thread, label %bb.u, !llvm.loop !107

.thread:                                          ; preds = %bb.z, %bb.y, %bb.t, %bb.k
  %.596 = phi ptr [ %i.an, %bb.k ], [ %.286, %bb.t ], [ %.0, %bb.z ], [ null, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.596
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @RestoreModel(ptr noundef initializes((80, 88)) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [38 x i32], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 3 uses
  %.not74 = icmp eq ptr %i.j, %1
  br i1 %.not74, label %.preheader68, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  br label %bb.b

.preheader68:                                     ; preds = %bb.g, %bb.a
  %i.o = phi ptr [ %i.c, %bb.a ], [ %i.dk, %bb.g ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.j, %bb.a ], [ %i.do, %bb.g ] ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %.not5476 = icmp eq ptr %.0.lcssa, %i.p
  br i1 %.not5476, label %._crit_edge, label %.lr.ph78

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.q = phi ptr [ %i.c, %.lr.ph ], [ %i.dk, %bb.g ] ; 2 uses
  %.075 = phi ptr [ %i.j, %.lr.ph ], [ %i.do, %bb.g ] ; 10 uses
  %i.r = load i8, ptr %.075, align 1, !tbaa !38
  %i.s = add i8 %i.r, -1                          ; 4 uses
  store i8 %i.s, ptr %.075, align 1, !tbaa !38
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.075, i64 4
  %i.v = load i32, ptr %i.u, align 1, !tbaa !43
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.075, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39
  %i.aa = and i8 %i.z, 16
end_hunk_1
