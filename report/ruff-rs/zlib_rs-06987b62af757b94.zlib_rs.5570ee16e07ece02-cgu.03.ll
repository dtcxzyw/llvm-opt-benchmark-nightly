Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/zlib_rs-06987b62af757b94.zlib_rs.5570ee16e07ece02-cgu.03?download=true
inline.NumInlined: 20
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCs7kNFBubu20U_7zlib_rs7inflate7infback4back:bb.a

.lr.ph1139:                                       ; preds = %.preheader426, %bb.ci
  %i.jo = phi i64 [ %i.ps, %bb.ci ], [ %i.iw, %.preheader426 ]
  %.sroa.018.91138 = phi i64 [ %i.qa, %bb.ci ], [ %i.gs, %.preheader426 ]
  %.sroa.076.91137 = phi i8 [ %i.qc, %bb.ci ], [ %i.gt, %.preheader426 ] ; 2 uses
  %.sroa.0182.161136 = phi i32 [ %i.pt, %bb.ci ], [ %.sroa.0182.12, %.preheader426 ] ; 2 uses
  %i.jp = icmp eq i32 %.sroa.0182.161136, 0
  br i1 %i.jp, label %bb.cg, label %bb.ci

bb.ay:                                            ; preds = %bb.bj, %bb.ax
  %.sroa.0182.17 = phi i32 [ %.sroa.0182.15, %bb.ax ], [ %i.kn, %bb.bj ] ; 4 uses
  %.sroa.076.10 = phi i8 [ %.sroa.076.8, %bb.ax ], [ %i.kw, %bb.bj ] ; 5 uses
  %.sroa.018.10 = phi i64 [ %.sroa.018.8, %bb.ax ], [ %i.ku, %bb.bj ] ; 4 uses
  %i.jq = load i64, ptr %i.jb, align 32, !noundef !4
  %i.jr = and i64 %i.jq, 63
  %notmask398 = shl nsw i64 -1, %i.jr
  %i.js = xor i64 %notmask398, -1
  %i.jt = and i64 %.sroa.018.10, %i.js            ; 3 uses
  %i.ju = load i8, ptr %i.jc, align 8, !range !30, !noundef !4 ; 2 uses
  switch i8 %i.ju, label %default.unreachable2128 [
    i8 0, label %bb.bc
    i8 1, label %bb.az
    i8 2, label %bb.ba
    i8 3, label %bb.bb
  ]

bb.az:                                            ; preds = %bb.ay
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ay, %bb.bb, %bb.ba, %bb.az
  %.sroa.10272.0 = phi i64 [ 592, %bb.bb ], [ 1332, %bb.az ], [ 1332, %bb.ba ], [ 32, %bb.ay ] ; 2 uses
  %.sroa.0268.0 = phi ptr [ %i.jd, %bb.bb ], [ %i.jf, %bb.az ], [ %i.je, %bb.ba ], [ @7, %bb.ay ]
  %i.jv = icmp samesign ult i64 %i.jt, %.sroa.10272.0
  br i1 %i.jv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0268.0, i64 %i.jt ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  %i.jy = load i8, ptr %i.jx, align 2, !noundef !4 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  %i.ka = load i8, ptr %i.jz, align 1, !noundef !4 ; 6 uses
  %i.kb = load i16, ptr %i.jw, align 2, !noundef !4 ; 2 uses
  %.not399 = icmp ugt i8 %i.ka, %.sroa.076.10
  br i1 %.not399, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %bb.bc
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jt, i64 noundef %.sroa.10272.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #11
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.kc = icmp eq i32 %.sroa.0182.17, 0
  br i1 %i.kc, label %bb.bh, label %bb.bj

bb.bg:                                            ; preds = %bb.bd
  %i.kd = icmp ult i8 %i.jy, 16
  br i1 %i.kd, label %.preheader423, label %bb.bw

.preheader423:                                    ; preds = %bb.bg
  %i.ke = zext i16 %i.kb to i64
  %i.kf = add i8 %i.ka, %i.jy
  %i.kg = and i8 %i.kf, 63
  %i.kh = zext nneg i8 %i.kg to i64
  %notmask400 = shl nsw i64 -1, %i.kh
  %i.ki = xor i64 %notmask400, -1
  %i.kj = and i8 %i.ka, 63
  %i.kk = zext nneg i8 %i.kj to i64               ; 2 uses
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.kl = call noundef i32 %1(ptr noundef %2, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store ptr null, ptr %i.f, align 8
  br label %.loopexit

bb.bj:                                            ; preds = %bb.bh, %bb.bf
  %.sroa.0182.18 = phi i32 [ %i.kl, %bb.bh ], [ %.sroa.0182.17, %bb.bf ]
  %i.kn = add i32 %.sroa.0182.18, -1
  %i.ko = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !noundef !4
  %i.kq = zext i8 %i.kp to i64
  %i.kr = and i8 %.sroa.076.10, 63
  %i.ks = zext nneg i8 %i.kr to i64
  %i.kt = shl i64 %i.kq, %i.ks
  %i.ku = add i64 %i.kt, %.sroa.018.10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  store ptr %i.kv, ptr %i.f, align 8
  %i.kw = add i8 %.sroa.076.10, 8
  br label %bb.ay

bb.bk:                                            ; preds = %.preheader423, %bb.bv
  %.pre19771982 = phi i8 [ %.pre1977, %bb.bv ], [ %i.ju, %.preheader423 ] ; 2 uses
  %.sroa.0182.19 = phi i32 [ %i.ln, %bb.bv ], [ %.sroa.0182.17, %.preheader423 ] ; 3 uses
  %.sroa.076.11 = phi i8 [ %i.lw, %bb.bv ], [ %.sroa.076.10, %.preheader423 ] ; 4 uses
  %.sroa.018.11 = phi i64 [ %i.lu, %bb.bv ], [ %.sroa.018.10, %.preheader423 ] ; 3 uses
  %i.kx = and i64 %.sroa.018.11, %i.ki
  %i.ky = lshr i64 %i.kx, %i.kk
  %i.kz = add nuw i64 %i.ky, %i.ke                ; 3 uses
  switch i8 %.pre19771982, label %default.unreachable2128 [
    i8 0, label %bb.bo
    i8 1, label %bb.bl
    i8 2, label %bb.bm
    i8 3, label %bb.bn
  ]

bb.bl:                                            ; preds = %bb.bk
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bk
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bk, %bb.bn, %bb.bm, %bb.bl
  %.sroa.10280.0 = phi i64 [ 592, %bb.bn ], [ 1332, %bb.bl ], [ 1332, %bb.bm ], [ 32, %bb.bk ] ; 2 uses
  %.sroa.0276.0 = phi ptr [ %i.jd, %bb.bn ], [ %i.jf, %bb.bl ], [ %i.je, %bb.bm ], [ @7, %bb.bk ]
  %i.la = icmp ult i64 %i.kz, %.sroa.10280.0
  br i1 %i.la, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %i.kz ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 3
  %i.ld = load i8, ptr %i.lc, align 1, !noundef !4 ; 2 uses
  %i.le = add i8 %i.ld, %i.ka
  %.not401 = icmp ugt i8 %i.le, %.sroa.076.11
  br i1 %.not401, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.kz, i64 noundef %.sroa.10280.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #11
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.lf = icmp eq i32 %.sroa.0182.19, 0
  br i1 %i.lf, label %bb.bt, label %bb.bv

bb.bs:                                            ; preds = %bb.bp
  %i.lg = load i16, ptr %i.lb, align 2, !noundef !4
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.li = load i8, ptr %i.lh, align 2, !noundef !4
  %i.lj = lshr i64 %.sroa.018.11, %i.kk
  %i.lk = sub i8 %.sroa.076.11, %i.ka
  br label %bb.bw

bb.bt:                                            ; preds = %bb.br
  %i.ll = call noundef i32 %1(ptr noundef %2, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.bu, label %._crit_edge1981

._crit_edge1981:                                  ; preds = %bb.bt
  %.pre1977.pre = load i8, ptr %i.jc, align 8, !range !30
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store ptr null, ptr %i.f, align 8
  br label %.loopexit

bb.bv:                                            ; preds = %._crit_edge1981, %bb.br
  %.pre1977 = phi i8 [ %.pre1977.pre, %._crit_edge1981 ], [ %.pre19771982, %bb.br ]
  %.sroa.0182.20 = phi i32 [ %i.ll, %._crit_edge1981 ], [ %.sroa.0182.19, %bb.br ]
  %i.ln = add i32 %.sroa.0182.20, -1
  %i.lo = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 1, !noundef !4
  %i.lq = zext i8 %i.lp to i64
  %i.lr = and i8 %.sroa.076.11, 63
  %i.ls = zext nneg i8 %i.lr to i64
  %i.lt = shl i64 %i.lq, %i.ls
  %i.lu = add i64 %i.lt, %.sroa.018.11
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  store ptr %i.lv, ptr %i.f, align 8
  %i.lw = add i8 %.sroa.076.11, 8
  br label %bb.bk

bb.bw:                                            ; preds = %bb.bg, %bb.bs
  %.sroa.0182.21 = phi i32 [ %.sroa.0182.19, %bb.bs ], [ %.sroa.0182.17, %bb.bg ] ; 4 uses
  %.sroa.076.12 = phi i8 [ %i.lk, %bb.bs ], [ %.sroa.076.10, %bb.bg ]
  %.sroa.018.12 = phi i64 [ %i.lj, %bb.bs ], [ %.sroa.018.10, %bb.bg ]
  %.sroa.0300.0 = phi i8 [ %i.li, %bb.bs ], [ %i.jy, %bb.bg ] ; 2 uses
  %.sroa.0304.0 = phi i8 [ %i.ld, %bb.bs ], [ %i.ka, %bb.bg ] ; 2 uses
  %.sroa.0309.0 = phi i16 [ %i.lg, %bb.bs ], [ %i.kb, %bb.bg ]
  %i.lx = and i8 %.sroa.0304.0, 63
  %i.ly = zext nneg i8 %i.lx to i64
  %i.lz = lshr i64 %.sroa.018.12, %i.ly           ; 4 uses
  %i.ma = sub i8 %.sroa.076.12, %.sroa.0304.0     ; 5 uses
  %i.mb = and i8 %.sroa.0300.0, 64
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.md = getelementptr inbounds nuw i8, ptr %i.af, i64 152 ; 3 uses
  %i.me = zext i16 %.sroa.0309.0 to i64           ; 2 uses
  store i64 %i.me, ptr %i.md, align 8
  %i.mf = and i8 %.sroa.0300.0, 15                ; 5 uses
  %i.mg = zext nneg i8 %i.mf to i64               ; 3 uses
  store i64 %i.mg, ptr %i.iv, align 32
  %.not402 = icmp eq i8 %i.mf, 0
  br i1 %.not402, label %bb.bz, label %.preheader422

.preheader422:                                    ; preds = %bb.bx
  %i.mh = icmp ugt i8 %i.mf, %i.ma
  br i1 %i.mh, label %.lr.ph1148, label %._crit_edge1149

bb.by:                                            ; preds = %bb.bw
  store i8 30, ptr %i.af, align 64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.af, i64 304
  store ptr @18, ptr %i.mi, align 16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.af, i64 312
  store i64 22, ptr %i.mj, align 8
  br label %.backedge

bb.bz:                                            ; preds = %._crit_edge1149, %bb.bx
  %.sroa.0182.22 = phi i32 [ %.sroa.0182.23.lcssa, %._crit_edge1149 ], [ %.sroa.0182.21, %bb.bx ] ; 2 uses
  %.sroa.076.13 = phi i8 [ %i.mp, %._crit_edge1149 ], [ %i.ma, %bb.bx ]
  %.sroa.018.13 = phi i64 [ %i.mo, %._crit_edge1149 ], [ %i.lz, %bb.bx ]
  br label %bb.ca

._crit_edge1149.loopexit:                         ; preds = %bb.cf
  %.pre1978.a = load i64, ptr %i.md, align 8
  br label %._crit_edge1149

._crit_edge1149:                                  ; preds = %._crit_edge1149.loopexit, %.preheader422
  %i.mk = phi i64 [ %i.me, %.preheader422 ], [ %.pre1978.a, %._crit_edge1149.loopexit ]
  %.sroa.0182.23.lcssa = phi i32 [ %.sroa.0182.21, %.preheader422 ], [ %i.pj, %._crit_edge1149.loopexit ]
  %.sroa.076.14.lcssa = phi i8 [ %i.ma, %.preheader422 ], [ %6, %._crit_edge1149.loopexit ]
  %.sroa.018.14.lcssa = phi i64 [ %i.lz, %.preheader422 ], [ %i.po, %._crit_edge1149.loopexit ] ; 2 uses
  %notmask403 = shl nsw i64 -1, %i.mg
  %i.ml = xor i64 %notmask403, -1
  %i.mm = and i64 %.sroa.018.14.lcssa, %i.ml
  %i.mn = add i64 %i.mk, %i.mm
  store i64 %i.mn, ptr %i.md, align 8
  %i.mo = lshr i64 %.sroa.018.14.lcssa, %i.mg
  %i.mp = sub nuw i8 %.sroa.076.14.lcssa, %i.mf
  br label %bb.bz

.lr.ph1148:                                       ; preds = %.preheader422, %bb.cf
  %.sroa.018.141147.a = phi i64 [ %i.po, %bb.cf ], [ %i.lz, %.preheader422 ]
  %.sroa.076.141146 = phi i8 [ %6, %bb.cf ], [ %i.ma, %.preheader422 ] ; 2 uses
  %.sroa.0182.231145 = phi i32 [ %i.pj, %bb.cf ], [ %.sroa.0182.21, %.preheader422 ] ; 2 uses
  %i.mq = icmp eq i32 %.sroa.0182.231145, 0
  br i1 %i.mq, label %bb.cd, label %bb.cf

bb.ca:                                            ; preds = %._crit_edge1158, %bb.bz
  %i.mr = phi ptr [ %i.af, %bb.bz ], [ %i.oe, %._crit_edge1158 ] ; 3 uses
  %.sroa.0160.5 = phi i64 [ %.sroa.0160.0, %bb.bz ], [ %i.nm, %._crit_edge1158 ] ; 2 uses
  %.sroa.0148.4 = phi ptr [ %.sroa.0148.0, %bb.bz ], [ %.sroa.0148.6.lcssa, %._crit_edge1158 ]
  %i.ms = icmp eq i64 %.sroa.0160.5, 0
  br i1 %i.ms, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.mu = call noundef i64 @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window11buffer_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mt) ; 4 uses
  %i.mv = call { ptr, i64 } @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window8as_slice(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.mt)
  %i.mw = extractvalue { ptr, i64 } %i.mv, 0      ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store i64 %i.mu, ptr %i.mx, align 8
  %i.my = trunc i64 %i.mu to i32
  %i.mz = call noundef i32 %3(ptr noundef %4, ptr noundef %i.mw, i32 noundef %i.my) #10
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %._crit_edge1979, label %.loopexit

._crit_edge1979:                                  ; preds = %bb.cb
  %.pre1980 = load ptr, ptr %i.h, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge1979, %bb.ca
  %i.nb = phi ptr [ %.pre1980, %._crit_edge1979 ], [ %i.mr, %bb.ca ] ; 3 uses
  %.sroa.0160.6 = phi i64 [ %i.mu, %._crit_edge1979 ], [ %.sroa.0160.5, %bb.ca ] ; 3 uses
  %.sroa.0148.5 = phi ptr [ %i.mw, %._crit_edge1979 ], [ %.sroa.0148.4, %bb.ca ] ; 7 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = call noundef i64 @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window11buffer_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.nc)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 152
  %i.nf = load i64, ptr %i.ne, align 8, !noundef !4 ; 2 uses
  %i.ng = sub i64 %i.nd, %i.nf                    ; 3 uses
  %i.nh = icmp ult i64 %i.ng, %.sroa.0160.6       ; 2 uses
  %i.ni = select i1 %i.nh, i64 %i.ng, i64 0
  %.sroa.0233.0 = sub nuw i64 %.sroa.0160.6, %i.ni
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 144 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 16, !noundef !4 ; 2 uses
  %.sroa.0.0.i408 = call noundef i64 @llvm.umin.i64(i64 %i.nk, i64 %.sroa.0233.0) ; 13 uses
  %i.nl = sub nuw i64 %i.nk, %.sroa.0.0.i408
  store i64 %i.nl, ptr %i.nj, align 16
  %i.nm = sub nuw i64 %.sroa.0160.6, %.sroa.0.0.i408 ; 2 uses
  %.not1477 = icmp eq i64 %.sroa.0.0.i408, 0
  br i1 %.not1477, label %._crit_edge1158, label %iter.check

iter.check:                                       ; preds = %bb.cc
  %i.nn = sub i64 0, %i.nf
  %.pn = select i1 %i.nh, i64 %i.ng, i64 %i.nn    ; 2 uses
  %.sroa.0231.0 = getelementptr i8, ptr %.sroa.0148.5, i64 %.pn ; 5 uses
  %min.iters.check3159 = icmp ult i64 %.sroa.0.0.i408, 4
  %diff.check3161 = icmp ugt i64 %.pn, -32
  %or.cond3182.a = or i1 %min.iters.check3159, %diff.check3161
  br i1 %or.cond3182.a, label %.lr.ph1157.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3162 = icmp ult i64 %.sroa.0.0.i408, 32
  br i1 %min.iters.check3162, label %vec.epilog.ph, label %vector.ph3163

vector.ph3163:                                    ; preds = %vector.main.loop.iter.check
  %i.no = and i64 %.sroa.0.0.i408, 28
  %n.vec3164 = and i64 %.sroa.0.0.i408, -32       ; 6 uses
  %i.np = getelementptr i8, ptr %.sroa.0148.5, i64 %n.vec3164 ; 2 uses
  %i.nq = getelementptr i8, ptr %.sroa.0231.0, i64 %n.vec3164
  br label %vector.body3165

vector.body3165:                                  ; preds = %vector.ph3163, %vector.body3165
  %index3166 = phi i64 [ 0, %vector.ph3163 ], [ %index.next3170, %vector.body3165 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.0148.5, i64 %index3166 ; 2 uses
  %next.gep3167 = getelementptr i8, ptr %.sroa.0231.0, i64 %index3166 ; 2 uses
  %i.nr = getelementptr i8, ptr %next.gep3167, i64 16
  %wide.load3168.a = load <16 x i8>, ptr %next.gep3167, align 1
  %wide.load3169 = load <16 x i8>, ptr %i.nr, align 1
  %i.ns = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load3168.a, ptr %next.gep, align 1
  store <16 x i8> %wide.load3169, ptr %i.ns, align 1
  %index.next3170 = add nuw i64 %index3166, 32    ; 2 uses
  %i.nt = icmp eq i64 %index.next3170, %n.vec3164
  br i1 %i.nt, label %middle.block3171, label %vector.body3165, !llvm.loop !6

middle.block3171:                                 ; preds = %vector.body3165
  %cmp.n = icmp eq i64 %.sroa.0.0.i408, %n.vec3164
  br i1 %cmp.n, label %._crit_edge1158, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block3171
  %min.epilog.iters.check = icmp eq i64 %i.no, 0
  br i1 %min.epilog.iters.check, label %.lr.ph1157.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec3164, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3172 = and i64 %.sroa.0.0.i408, -4        ; 5 uses
  %i.nu = getelementptr i8, ptr %.sroa.0148.5, i64 %n.vec3172 ; 2 uses
  %i.nv = getelementptr i8, ptr %.sroa.0231.0, i64 %n.vec3172
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3173 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3177, %vec.epilog.vector.body ] ; 3 uses
  %next.gep3174.a = getelementptr i8, ptr %.sroa.0148.5, i64 %index3173
  %next.gep3175 = getelementptr i8, ptr %.sroa.0231.0, i64 %index3173
  %wide.load3176 = load <4 x i8>, ptr %next.gep3175, align 1
  store <4 x i8> %wide.load3176, ptr %next.gep3174.a, align 1
  %index.next3177 = add nuw i64 %index3173, 4     ; 2 uses
  %i.nw = icmp eq i64 %index.next3177, %n.vec3172
  br i1 %i.nw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !7

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3178 = icmp eq i64 %.sroa.0.0.i408, %n.vec3172
  br i1 %cmp.n3178, label %._crit_edge1158, label %.lr.ph1157.preheader

.lr.ph1157.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0148.61155.ph = phi ptr [ %.sroa.0148.5, %iter.check ], [ %i.np, %vec.epilog.iter.check ], [ %i.nu, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0231.11154.ph = phi ptr [ %.sroa.0231.0, %iter.check ], [ %i.nq, %vec.epilog.iter.check ], [ %i.nv, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0284.01153.ph = phi i64 [ 0, %iter.check ], [ %n.vec3164, %vec.epilog.iter.check ], [ %n.vec3172, %vec.epilog.middle.block ] ; 4 uses
  %i.nx = sub i64 %.sroa.0.0.i408, %.sroa.0284.01153.ph
  %xtraiter3709 = and i64 %i.nx, 7                ; 2 uses
  %lcmp.mod3710.not = icmp eq i64 %xtraiter3709, 0
  br i1 %lcmp.mod3710.not, label %.lr.ph1157.prol.loopexit, label %.lr.ph1157.prol

.lr.ph1157.prol:                                  ; preds = %.lr.ph1157.preheader, %.lr.ph1157.prol
  %.sroa.0148.61155.prol = phi ptr [ %i.oa, %.lr.ph1157.prol ], [ %.sroa.0148.61155.ph, %.lr.ph1157.preheader ] ; 2 uses
  %.sroa.0231.11154.prol = phi ptr [ %i.ob, %.lr.ph1157.prol ], [ %.sroa.0231.11154.ph, %.lr.ph1157.preheader ] ; 2 uses
  %.sroa.0284.01153.prol = phi i64 [ %i.ny, %.lr.ph1157.prol ], [ %.sroa.0284.01153.ph, %.lr.ph1157.preheader ]
  %prol.iter3711 = phi i64 [ %prol.iter3711.next, %.lr.ph1157.prol ], [ 0, %.lr.ph1157.preheader ]
  %i.ny = add nuw i64 %.sroa.0284.01153.prol, 1   ; 2 uses
  %i.nz = load i8, ptr %.sroa.0231.11154.prol, align 1, !noundef !4
  store i8 %i.nz, ptr %.sroa.0148.61155.prol, align 1
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155.prol, i64 1 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154.prol, i64 1 ; 2 uses
  %prol.iter3711.next = add i64 %prol.iter3711, 1 ; 2 uses
  %prol.iter3711.cmp.not = icmp eq i64 %prol.iter3711.next, %xtraiter3709
  br i1 %prol.iter3711.cmp.not, label %.lr.ph1157.prol.loopexit, label %.lr.ph1157.prol, !llvm.loop !8

.lr.ph1157.prol.loopexit:                         ; preds = %.lr.ph1157.prol, %.lr.ph1157.preheader
  %.lcssa3376.unr = phi ptr [ poison, %.lr.ph1157.preheader ], [ %i.oa, %.lr.ph1157.prol ]
  %.sroa.0148.61155.unr = phi ptr [ %.sroa.0148.61155.ph, %.lr.ph1157.preheader ], [ %i.oa, %.lr.ph1157.prol ]
  %.sroa.0231.11154.unr = phi ptr [ %.sroa.0231.11154.ph, %.lr.ph1157.preheader ], [ %i.ob, %.lr.ph1157.prol ]
  %.sroa.0284.01153.unr = phi i64 [ %.sroa.0284.01153.ph, %.lr.ph1157.preheader ], [ %i.ny, %.lr.ph1157.prol ]
  %i.oc = sub i64 %.sroa.0284.01153.ph, %.sroa.0.0.i408
  %i.od = icmp ugt i64 %i.oc, -8
  br i1 %i.od, label %._crit_edge1158, label %.lr.ph1157

._crit_edge1158:                                  ; preds = %.lr.ph1157.prol.loopexit, %.lr.ph1157, %middle.block3171, %vec.epilog.middle.block, %bb.cc
  %.sroa.0148.6.lcssa = phi ptr [ %.sroa.0148.5, %bb.cc ], [ %i.nu, %vec.epilog.middle.block ], [ %i.np, %middle.block3171 ], [ %.lcssa3376.unr, %.lr.ph1157.prol.loopexit ], [ %i.pf, %.lr.ph1157 ] ; 2 uses
  %i.oe = load ptr, ptr %i.h, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 144
  %i.og = load i64, ptr %i.of, align 16, !noundef !4
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %.backedge, label %bb.ca

.lr.ph1157:                                       ; preds = %.lr.ph1157.prol.loopexit, %.lr.ph1157
  %.sroa.0148.61155 = phi ptr [ %i.pf, %.lr.ph1157 ], [ %.sroa.0148.61155.unr, %.lr.ph1157.prol.loopexit ] ; 9 uses
  %.sroa.0231.11154 = phi ptr [ %i.pg, %.lr.ph1157 ], [ %.sroa.0231.11154.unr, %.lr.ph1157.prol.loopexit ] ; 9 uses
  %.sroa.0284.01153 = phi i64 [ %i.pd, %.lr.ph1157 ], [ %.sroa.0284.01153.unr, %.lr.ph1157.prol.loopexit ]
  %i.oi = load i8, ptr %.sroa.0231.11154, align 1, !noundef !4
  store i8 %i.oi, ptr %.sroa.0148.61155, align 1
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155, i64 1
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154, i64 1
  %i.ol = load i8, ptr %i.ok, align 1, !noundef !4
  store i8 %i.ol, ptr %i.oj, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155, i64 2
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154, i64 2
  %i.oo = load i8, ptr %i.on, align 1, !noundef !4
  store i8 %i.oo, ptr %i.om, align 1
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155, i64 3
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154, i64 3
  %i.or = load i8, ptr %i.oq, align 1, !noundef !4
  store i8 %i.or, ptr %i.op, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155, i64 4
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154, i64 4
  %i.ou = load i8, ptr %i.ot, align 1, !noundef !4
  store i8 %i.ou, ptr %i.os, align 1
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155, i64 5
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154, i64 5
  %i.ox = load i8, ptr %i.ow, align 1, !noundef !4
  store i8 %i.ox, ptr %i.ov, align 1
  %i.oy = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155, i64 6
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154, i64 6
  %i.pa = load i8, ptr %i.oz, align 1, !noundef !4
  store i8 %i.pa, ptr %i.oy, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155, i64 7
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154, i64 7
  %i.pd = add nuw i64 %.sroa.0284.01153, 8        ; 2 uses
  %i.pe = load i8, ptr %i.pc, align 1, !noundef !4
  store i8 %i.pe, ptr %i.pb, align 1
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0148.61155, i64 8 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0231.11154, i64 8
  %exitcond1964.not.7 = icmp eq i64 %i.pd, %.sroa.0.0.i408
  br i1 %exitcond1964.not.7, label %._crit_edge1158, label %.lr.ph1157, !llvm.loop !9

bb.cd:                                            ; preds = %.lr.ph1148
  %i.ph = call noundef i32 %1(ptr noundef %2, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store ptr null, ptr %i.f, align 8
  br label %.loopexit

bb.cf:                                            ; preds = %bb.cd, %.lr.ph1148
  %.sroa.0182.24 = phi i32 [ %i.ph, %bb.cd ], [ %.sroa.0182.231145, %.lr.ph1148 ]
  %i.pj = add i32 %.sroa.0182.24, -1              ; 2 uses
  %i.pk = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 1, !noundef !4
  %5 = zext i8 %i.pl to i64
  %i.pm = zext nneg i8 %.sroa.076.141146 to i64
  %i.pn = shl nuw nsw i64 %5, %i.pm
  %i.po = add i64 %i.pn, %.sroa.018.141147.a      ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  store ptr %i.pp, ptr %i.f, align 8
  %6 = add nuw nsw i8 %.sroa.076.141146, 8        ; 3 uses
  %7 = icmp ugt i8 %i.mf, %6
  br i1 %7, label %.lr.ph1148, label %._crit_edge1149.loopexit

bb.cg:                                            ; preds = %.lr.ph1139
  %i.pq = call noundef i32 %1(ptr noundef %2, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.pr = icmp eq i32 %i.pq, 0
  br i1 %i.pr, label %bb.ch, label %._crit_edge1974

._crit_edge1974:                                  ; preds = %bb.cg
  %.pre1975.a = load i64, ptr %i.iv, align 32
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr null, ptr %i.f, align 8
  br label %.loopexit

bb.ci:                                            ; preds = %._crit_edge1974, %.lr.ph1139
  %i.ps = phi i64 [ %.pre1975.a, %._crit_edge1974 ], [ %i.jo, %.lr.ph1139 ] ; 3 uses
  %.sroa.0182.26 = phi i32 [ %i.pq, %._crit_edge1974 ], [ %.sroa.0182.161136, %.lr.ph1139 ]
  %i.pt = add i32 %.sroa.0182.26, -1              ; 2 uses
  %i.pu = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !noundef !4
  %i.pw = zext i8 %i.pv to i64
  %i.px = and i8 %.sroa.076.91137, 63
  %i.py = zext nneg i8 %i.px to i64
  %i.pz = shl i64 %i.pw, %i.py
  %i.qa = add i64 %i.pz, %.sroa.018.91138         ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  store ptr %i.qb, ptr %i.f, align 8
  %i.qc = add i8 %.sroa.076.91137, 8              ; 3 uses
  %i.qd = zext i8 %i.qc to i64
  %i.qe = icmp ugt i64 %i.ps, %i.qd
  br i1 %i.qe, label %.lr.ph1139, label %._crit_edge1140.loopexit

bb.cj:                                            ; preds = %bb.y
  %i.qf = call noundef i64 @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window11buffer_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ei)
  %i.qg = sub i64 %i.qf, %.sroa.0160.0
  store i64 %i.qg, ptr %i.ep, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.y, %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.b, align 16, !noalias !35
  store i64 0, ptr %i.ab, align 16, !noalias !35
  store i8 0, ptr %i.ac, align 8, !noalias !35
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7kNFBubu20U_7zlib_rs(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eh, i64 noundef 4)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate9bitreader9BitReaderEB16_.exit unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #12
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate9bitreader9BitReaderEB16_.exit: ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !noalias !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7kNFBubu20U_7zlib_rs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.eo, i64 noundef 3)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6writer6WriterEB16_.exit unwind label %bb.cm

bb.cm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate9bitreader9BitReaderEB16_.exit
  %i.qi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #12
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6writer6WriterEB16_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate9bitreader9BitReaderEB16_.exit
  %i.qj = getelementptr inbounds nuw i8, ptr %i.af, i64 336 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.af, i64 344
  %i.ql = load i8, ptr %i.qk, align 8, !range !30, !alias.scope !35, !noundef !4
  switch i8 %i.ql, label %default.unreachable2128 [
    i8 0, label %bb.cq
    i8 1, label %bb.cn
    i8 2, label %bb.co
    i8 3, label %bb.cp
  ]

bb.cn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6writer6WriterEB16_.exit
  %i.qm = getelementptr inbounds nuw i8, ptr %i.af, i64 368
  br label %bb.cq

bb.co:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6writer6WriterEB16_.exit
  %i.qn = getelementptr inbounds nuw i8, ptr %i.af, i64 5696
  br label %bb.cq

bb.cp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6writer6WriterEB16_.exit
  %i.qo = getelementptr inbounds nuw i8, ptr %i.af, i64 11024
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6writer6WriterEB16_.exit
  %.sroa.26.0.i = phi i64 [ 592, %bb.cp ], [ 1332, %bb.cn ], [ 1332, %bb.co ], [ 512, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6writer6WriterEB16_.exit ] ; 10 uses
  %.sroa.0.0.i = phi ptr [ %i.qo, %bb.cp ], [ %i.qm, %bb.cn ], [ %i.qn, %bb.co ], [ @6, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs7kNFBubu20U_7zlib_rs7inflate6writer6WriterEB16_.exit ] ; 4 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.af, i64 352
  %i.qq = getelementptr inbounds nuw i8, ptr %i.af, i64 360
  %i.qr = load i8, ptr %i.qq, align 8, !range !30, !alias.scope !35, !noundef !4
  switch i8 %i.qr, label %default.unreachable2128 [
    i8 0, label %bb.cu
    i8 1, label %bb.cr
    i8 2, label %bb.cs
    i8 3, label %bb.ct
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.af, i64 368
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq
  %i.qt = getelementptr inbounds nuw i8, ptr %i.af, i64 5696
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cq
  %i.qu = getelementptr inbounds nuw i8, ptr %i.af, i64 11024
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.sroa.14.0.i = phi i64 [ 592, %bb.ct ], [ 1332, %bb.cr ], [ 1332, %bb.cs ], [ 32, %bb.cq ] ; 4 uses
  %.sroa.039.0.i = phi ptr [ %i.qu, %bb.ct ], [ %i.qs, %bb.cr ], [ %i.qt, %bb.cs ], [ @7, %bb.cq ] ; 2 uses
  %i.qv = load i64, ptr %i.qj, align 16, !alias.scope !35, !noundef !4
  %i.qw = and i64 %i.qv, 63
  %notmask.i = shl nsw i64 -1, %i.qw
  %i.qx = xor i64 %notmask.i, -1                  ; 4 uses
  %i.qy = load i64, ptr %i.qp, align 32, !alias.scope !35, !noundef !4
  %i.qz = and i64 %i.qy, 63
  %notmask147.i = shl nsw i64 -1, %i.qz
  %i.ra = xor i64 %notmask147.i, -1
  %i.rb = call noundef i64 @_RNvMNtNtCs7kNFBubu20U_7zlib_rs7inflate6windowNtB2_6Window11buffer_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ei) ; 2 uses
  %i.rc = load i8, ptr %i.ac, align 8, !noalias !35, !noundef !4 ; 4 uses
  %i.rd = icmp ult i8 %i.rc, 10
  %.pre1988.pre = load ptr, ptr %i.b, align 16, !noalias !35 ; 3 uses
  br i1 %i.rd, label %bb.cv, label %.split1182

bb.cv:                                            ; preds = %bb.cu
  %.sroa.079.0.copyload.i = load i64, ptr %.pre1988.pre, align 1
  %i.re = zext nneg i8 %i.rc to i64
  %i.rf = shl i64 %.sroa.079.0.copyload.i, %i.re
  %i.rg = load i64, ptr %i.ab, align 16, !noalias !35, !noundef !4
  %i.rh = or i64 %i.rg, %i.rf
  store i64 %i.rh, ptr %i.ab, align 16, !noalias !35
  %i.ri = lshr i8 %i.rc, 3
  %i.rj = xor i8 %i.ri, 7
  %i.rk = zext nneg i8 %i.rj to i64
  %i.rl = getelementptr i8, ptr %.pre1988.pre, i64 %i.rk ; 2 uses
  store ptr %i.rl, ptr %i.b, align 16, !noalias !35
  %i.rm = or i8 %i.rc, 56
  store i8 %i.rm, ptr %i.ac, align 8, !noalias !35
  br label %.split1182

.split1182:                                       ; preds = %bb.cu, %bb.cv
  %.pre1988 = phi ptr [ %.pre1988.pre, %bb.cu ], [ %i.rl, %bb.cv ]
  %i.rn = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  br label %bb.cw

bb.cw:                                            ; preds = %bb.fk, %.split1182
  %i.ro = phi ptr [ %i.ut, %bb.fk ], [ %.pre1988, %.split1182 ] ; 2 uses
  %i.rp = load i8, ptr %i.ac, align 8, !noalias !35, !noundef !4 ; 4 uses
  %i.rq = load i64, ptr %i.ab, align 16, !noalias !35, !noundef !4 ; 2 uses
  %.sroa.081.0.copyload.i = load i64, ptr %i.ro, align 1
  %i.rr = and i8 %i.rp, 63
  %i.rs = zext nneg i8 %i.rr to i64
  %i.rt = shl i64 %.sroa.081.0.copyload.i, %i.rs
  %i.ru = or i64 %i.rt, %i.rq                     ; 3 uses
  store i64 %i.ru, ptr %i.ab, align 16, !noalias !35
  %i.rv = lshr i8 %i.rp, 3
  %i.rw = xor i8 %i.rv, 7
  %i.rx = zext nneg i8 %i.rw to i64
  %i.ry = getelementptr i8, ptr %i.ro, i64 %i.rx
  store ptr %i.ry, ptr %i.b, align 16, !noalias !35
  %i.rz = or i8 %i.rp, 56                         ; 2 uses
  store i8 %i.rz, ptr %i.ac, align 8, !noalias !35
  %i.sa = zext i8 %i.rp to i64
  %i.sb = load i64, ptr %i.qj, align 16, !alias.scope !35, !noundef !4
  %.not.i = icmp ugt i64 %i.sb, %i.sa
  br i1 %.not.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.sc = and i64 %i.ru, %i.qx                    ; 3 uses
  %i.sd = icmp samesign ult i64 %i.sc, %.sroa.26.0.i
  br i1 %i.sd, label %bb.da, label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.se = and i64 %i.rq, %i.qx                    ; 3 uses
  %i.sf = icmp samesign ult i64 %i.se, %.sroa.26.0.i
  br i1 %i.sf, label %bb.da, label %bb.db

bb.cz:                                            ; preds = %bb.cx
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.sc, i64 noundef %.sroa.26.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #11
  unreachable

bb.da:                                            ; preds = %bb.cy, %bb.cx
  %i.sg = phi i64 [ %i.sc, %bb.cx ], [ %i.se, %bb.cy ]
  %.sroa.0105.0.in.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.i, i64 %i.sg ; 3 uses
  %.sroa.0105.0.i = load i16, ptr %.sroa.0105.0.in.i, align 2, !noundef !4 ; 2 uses
  %.sroa.097.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.in.i, i64 3
  %.sroa.097.0.i = load i8, ptr %.sroa.097.0.in.i, align 1, !noundef !4 ; 3 uses
  %.sroa.085.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0105.0.in.i, i64 2
  %.sroa.085.0.i = load i8, ptr %.sroa.085.0.in.i, align 2, !noundef !4 ; 2 uses
  %i.sh = icmp eq i8 %.sroa.085.0.i, 0
  br i1 %i.sh, label %bb.dc, label %bb.dm

end_hunk_0
