Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Ppmd8?download=true
inline.NumInlined: 56
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 15
begin_hunk_0_@UpdateModel:bb.a
  %i.ed = load ptr, ptr %i.bm, align 8, !tbaa !15
  %i.ee = ptrtoint ptr %.sink318 to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = trunc i64 %i.eg to i32
  br label %.thread244

.thread244:                                       ; preds = %.thread244.sink.split, %bb.ai, %bb.aj
  %.2195 = phi i32 [ %i.dw, %bb.ai ], [ %i.d, %bb.aj ], [ %i.eh, %.thread244.sink.split ] ; 2 uses
  %i.ei = load i32, ptr %i.aq, align 8, !tbaa !29
  %i.ej = add i32 %i.ei, -1                       ; 2 uses
  store i32 %i.ej, ptr %i.aq, align 8, !tbaa !29
  %i.ek = icmp eq i32 %i.ej, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !35    ; 4 uses
  br i1 %i.ek, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread244
  %i.el = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.em = icmp ne ptr %i.el, %.pre
  %i.en = load ptr, ptr %i.bi, align 8, !tbaa !26
  %.neg = sext i1 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %.neg
  store ptr %i.eo, ptr %i.bi, align 8, !tbaa !26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread244
  %.0 = phi i32 [ %.2195, %bb.al ], [ %i.br, %.thread244 ]
  %i.ep = load i8, ptr %.pre, align 4, !tbaa !38  ; 2 uses
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = icmp ugt i8 %i.h, 63
  %i.es = select i1 %i.er, i8 8, i8 0
  %.not217273 = icmp eq ptr %i.ap, %.pre
  br i1 %.not217273, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.am
  %.pre285 = load ptr, ptr %i.bm, align 8, !tbaa !15
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !40
  %i.ev = zext i16 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fd = icmp ugt i8 %i.ep, 2
  %i.fe = zext i1 %i.fd to i32
  %i.ff = shl nuw nsw i32 %i.g, 1
  %i.fg = add nuw nsw i32 %i.g, %i.eq
  %i.fh = sub nsw i32 %i.ev, %i.fg
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph, %.critedge226
  %.0192274 = phi ptr [ %i.ap, %.lr.ph ], [ %i.mb, %.critedge226 ] ; 12 uses
  %i.fi = load i8, ptr %.0192274, align 4, !tbaa !38 ; 4 uses
  %i.fj = zext i8 %i.fi to i32                    ; 3 uses
  %.not218 = icmp eq i8 %i.fi, 0
  br i1 %.not218, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = and i32 %i.fj, 1
  %.not220 = icmp eq i32 %i.fk, 0
  br i1 %.not220, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = add nuw nsw i32 %i.fj, 1                ; 3 uses
  %i.fm = lshr exact i32 %i.fl, 1                 ; 3 uses
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr i8, ptr %i.ew, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 -1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !16  ; 3 uses
  %i.fr = load i8, ptr %i.fo, align 1, !tbaa !16
  %.not221 = icmp eq i8 %i.fq, %i.fr
  br i1 %.not221, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = zext i8 %i.fq to i32
  %i.ft = add nuw nsw i32 %i.fs, 1                ; 2 uses
  %i.fu = zext nneg i32 %i.ft to i64              ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !8  ; 2 uses
  %.not.i227 = icmp eq i32 %i.fw, 0
  br i1 %.not.i227, label %bb.ar, label %AllocUnits.exit.thread

AllocUnits.exit.thread:                           ; preds = %bb.aq
  %i.fx = load ptr, ptr %i.bm, align 8, !tbaa !15 ; 2 uses
  %i.fy = zext i32 %i.fw to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !55
  store i32 %i.gb, ptr %i.fv, align 4, !tbaa !8
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fu ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !8
  %i.ge = add i32 %i.gd, -1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !8
  br label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fu
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !16
  %i.gh = zext i8 %i.gg to i32
  %i.gi = mul nuw nsw i32 %i.gh, 12               ; 2 uses
  %i.gj = load ptr, ptr %i.fa, align 8, !tbaa !33
  %i.gk = load ptr, ptr %i.fb, align 8, !tbaa !42 ; 3 uses
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = trunc i64 %i.gn to i32
  %.not16.i = icmp ugt i32 %i.gi, %i.go
  br i1 %.not16.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gp = zext nneg i32 %i.gi to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gp
  store ptr %i.gq, ptr %i.fb, align 8, !tbaa !42
  br label %AllocUnits.exit

bb.at:                                            ; preds = %bb.ar
  %i.gr = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef range(i32 0, 257) %i.ft)
  br label %AllocUnits.exit

AllocUnits.exit:                                  ; preds = %bb.as, %bb.at
  %.0.i228 = phi ptr [ %i.gr, %bb.at ], [ %i.gk, %bb.as ] ; 2 uses
  %.not222.not = icmp eq ptr %.0.i228, null
  br i1 %.not222.not, label %.thread254, label %AllocUnits.exit._crit_edge

AllocUnits.exit._crit_edge:                       ; preds = %AllocUnits.exit
  %.pre284 = load ptr, ptr %i.bm, align 8, !tbaa !15
  br label %bb.au

.thread254:                                       ; preds = %AllocUnits.exit
  tail call fastcc void @RestoreModel(ptr noundef nonnull %0, ptr noundef nonnull %.0192274)
  br label %bb.bd

bb.au:                                            ; preds = %AllocUnits.exit._crit_edge, %AllocUnits.exit.thread
  %i.gs = phi ptr [ %i.fx, %AllocUnits.exit.thread ], [ %.pre284, %AllocUnits.exit._crit_edge ] ; 2 uses
  %.0.i228251 = phi ptr [ %i.fz, %AllocUnits.exit.thread ], [ %.0.i228, %AllocUnits.exit._crit_edge ] ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0192274, i64 4 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !43 ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gv ; 8 uses
  %i.gx = and i32 %i.fl, 2
  %lcmp.mod.not = icmp eq i32 %i.gx, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.au
  %i.gy = load i32, ptr %i.gw, align 4, !tbaa !8
  store i32 %i.gy, ptr %.0.i228251, align 4, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !8
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i228251, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i228251, i64 8
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !8
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
  %i.hj = load i32, ptr %.0185, align 4, !tbaa !8
  store i32 %i.hj, ptr %.0186, align 4, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %.0185, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !8
  %i.hm = getelementptr inbounds nuw i8, ptr %.0186, i64 4
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !8
  %i.hn = getelementptr inbounds nuw i8, ptr %.0185, i64 8
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8
  %i.hp = getelementptr inbounds nuw i8, ptr %.0186, i64 8
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !8
  %i.hq = getelementptr inbounds nuw i8, ptr %.0185, i64 12
  %i.hr = getelementptr inbounds nuw i8, ptr %.0186, i64 12
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !8
  store i32 %i.hs, ptr %i.hr, align 4, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %.0185, i64 16
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %.0186, i64 16
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %.0185, i64 20
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %.0186, i64 20
  store i32 %i.hx, ptr %i.hy, align 4, !tbaa !8
  %i.hz = getelementptr inbounds nuw i8, ptr %.0185, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %.0186, i64 24
  %i.ib = add nsw i32 %.0184, -2                  ; 2 uses
  %.not223.1 = icmp eq i32 %i.ib, 0
  br i1 %.not223.1, label %.unr-lcssa, label %.new, !llvm.loop !84

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store i32 -1, ptr %i.gw, align 4, !tbaa !54
  %i.ic = zext i8 %i.fq to i64                    ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !55
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ic
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !16
  %i.ii = zext i8 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !56
  %i.ik = ptrtoint ptr %i.gs to i64
  store i32 %i.gu, ptr %i.id, align 4, !tbaa !8
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ic ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !8
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !8
  %i.io = ptrtoint ptr %.0.i228251 to i64
  %i.ip = sub i64 %i.io, %i.ik
  %i.iq = trunc i64 %i.ip to i32
  store i32 %i.iq, ptr %i.gt, align 4, !tbaa !43
  br label %.critedge

.critedge:                                        ; preds = %.unr-lcssa, %bb.ap, %bb.ao
  %i.ir = getelementptr inbounds nuw i8, ptr %.0192274, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !40
  %i.it = mul nuw nsw i32 %i.fj, 3
  %i.iu = add nuw nsw i32 %i.it, 1
  %i.iv = icmp samesign ult i32 %i.iu, %i.eq
  %i.iw = zext i1 %i.iv to i16
  %i.ix = add i16 %i.is, %i.iw
  br label %bb.ba

bb.av:                                            ; preds = %bb.an
  %i.iy = load i32, ptr %i.ex, align 8, !tbaa !8  ; 2 uses
  %.not.i229 = icmp eq i32 %i.iy, 0
  br i1 %.not.i229, label %bb.aw, label %AllocUnits.exit232.thread

AllocUnits.exit232.thread:                        ; preds = %bb.av
  %i.iz = load ptr, ptr %i.bm, align 8, !tbaa !15
  %i.ja = zext i32 %i.iy to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !55
  store i32 %i.jd, ptr %i.ex, align 8, !tbaa !8
  %i.je = load i32, ptr %i.ey, align 8, !tbaa !8
  %i.jf = add i32 %i.je, -1
  store i32 %i.jf, ptr %i.ey, align 8, !tbaa !8
  br label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.jg = load i8, ptr %i.ez, align 8, !tbaa !16
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0.i230258, ptr noundef nonnull align 2 dereferenceable(6) %i.js, i64 6, i1 false), !tbaa.struct !50
  %i.jt = load ptr, ptr %i.bm, align 8, !tbaa !15
  %i.ju = ptrtoint ptr %.0.i230258 to i64
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = getelementptr inbounds nuw i8, ptr %.0192274, i64 4
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !43
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i230258, i64 1 ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !46  ; 2 uses
  %i.kb = icmp ult i8 %i.ka, 30
  %i.kc = shl nuw nsw i8 %i.ka, 1
  %storemerge = select i1 %i.kb, i8 %i.kc, i8 120 ; 2 uses
  store i8 %storemerge, ptr %i.jz, align 1, !tbaa !46
  %i.kd = zext nneg i8 %storemerge to i32
  %i.ke = load i32, ptr %i.fc, align 4, !tbaa !86
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
  %i.kw = mul nsw i32 %i.kn, 9
  %i.kx = icmp ugt i32 %i.km, %i.kw
  %i.ky = select i1 %i.kx, i32 5, i32 4
  %i.kz = mul nsw i32 %i.kn, 12
  %i.la = icmp ugt i32 %i.km, %i.kz
  %i.lb = zext i1 %i.la to i32
  %i.lc = add nuw nsw i32 %i.ky, %i.lb
  %i.ld = mul nsw i32 %i.kn, 15
  %i.le = icmp ugt i32 %i.km, %i.ld
  %i.lf = zext i1 %i.le to i32
  %i.lg = add nuw nsw i32 %i.lc, %i.lf            ; 2 uses
  %i.lh = trunc nuw nsw i32 %i.lg to i16
  br label %.critedge226

.critedge226:                                     ; preds = %bb.bc, %bb.bb
  %.pn = phi i16 [ %i.lh, %bb.bc ], [ 4, %bb.bb ]
  %.0187 = phi i32 [ %i.lg, %bb.bc ], [ %i.kv, %bb.bb ]
  %storemerge224 = add i16 %.pn, %i.ki
  store i16 %storemerge224, ptr %i.kj, align 2, !tbaa !40
  %i.li = load ptr, ptr %i.bm, align 8, !tbaa !15
  %i.lj = getelementptr inbounds nuw i8, ptr %.0192274, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !43
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.ll
  %i.ln = zext i8 %i.fi to i64
  %i.lo = getelementptr inbounds nuw [6 x i8], ptr %i.lm, i64 %i.ln ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 6
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i32 %.0, ptr %i.lq, align 1
  store i8 %i.h, ptr %i.lp, align 1, !tbaa !45
  %i.lr = trunc nuw nsw i32 %.0187 to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 7
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !46
  %i.lt = getelementptr inbounds nuw i8, ptr %.0192274, i64 1 ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !39
  %i.lv = or i8 %i.lu, %i.es
  store i8 %i.lv, ptr %i.lt, align 1, !tbaa !39
  %i.lw = add i8 %i.fi, 1
  store i8 %i.lw, ptr %.0192274, align 4, !tbaa !38
  %i.lx = load ptr, ptr %i.bm, align 8, !tbaa !15 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0192274, i64 8
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !37
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ma ; 2 uses
  %i.mc = load ptr, ptr %0, align 8, !tbaa !35
  %.not217 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not217, label %._crit_edge, label %bb.an, !llvm.loop !85

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @ShrinkUnits(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 130) %2, i32 noundef range(i32 1, 129) %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 3 uses
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr i8, ptr %i.a, i64 %i.b
end_hunk_0
