Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/demangle_rust?download=true
inline.NumInlined: 154
inline.NumDeleted: 25
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internal26DemangleRustSymbolEncodingEPKcPcm:bb.a

bb.fo:                                            ; preds = %bb.fn
  %i.xe = add nsw i32 %i.xc, 1
  store i32 %i.xe, ptr %i.o, align 8, !tbaa !28
  %i.xf = sext i32 %i.xc to i64
  %i.xg = getelementptr inbounds i8, ptr %3, i64 %i.xf
  store i8 24, ptr %i.xg, align 1, !tbaa !16
  br label %.critedge202.preheader.i

bb.fp:                                            ; preds = %.lr.ph
  %.pre367 = load ptr, ptr %i.b, align 8, !tbaa !13
  %.pre368 = load i32, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %.pre372 = sext i32 %.pre368 to i64
  br label %bb.fl, !llvm.loop !24

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit162.i: ; preds = %bb.fl
  %i.xh = load i32, ptr %i.p, align 4, !tbaa !19
  %i.xi = add nsw i32 %i.xh, -1
  store i32 %i.xi, ptr %i.p, align 4, !tbaa !19
  br label %.critedge51.backedge.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i: ; preds = %bb.hb, %.preheader.i
  %i.xj = phi i8 [ %i.acs, %.preheader.i ], [ %i.ael, %bb.hb ]
  %i.xk = phi i32 [ %i.aco, %.preheader.i ], [ %i.aei, %bb.hb ]
  %.not.i165.i = icmp eq i8 %i.xj, 112
  br i1 %.not.i165.i, label %bb.fq, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i

bb.fq:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i
  %i.xl = add nsw i32 %i.xk, 1
  store i32 %i.xl, ptr %i.e, align 8, !tbaa !18
  %i.xm = load i32, ptr %i.p, align 4, !tbaa !19
  %i.xn = icmp sgt i32 %i.xm, 0
  br i1 %i.xn, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xo = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.xp = load ptr, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %i.xq = ptrtoint ptr %i.xo to i64
  %i.xr = ptrtoint ptr %i.xp to i64
  %i.xs = sub i64 %i.xq, %i.xr
  %.not.i8 = icmp ult i64 %i.xs, 2
  br i1 %.not.i8, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  store i16 95, ptr %i.xp, align 1
  %i.xt = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 1
  store ptr %i.xu, ptr %i.c, align 8, !tbaa !14
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit10: ; preds = %bb.fq, %bb.fs
  %exitcond.not.old.old.old.old.old.old.old.old.old.old.i.not = icmp eq i32 %i.h, 131071
  br i1 %exitcond.not.old.old.old.old.old.old.old.old.old.old.i.not, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %.lr.ph335.i.backedge

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i
  %i.xv = load i32, ptr %i.p, align 4, !tbaa !19
  %i.xw = add nsw i32 %i.xv, 1
  store i32 %i.xw, ptr %i.p, align 4, !tbaa !19
  %i.xx = load i32, ptr %i.o, align 8, !tbaa !28  ; 3 uses
  %i.xy = icmp eq i32 %i.xx, 256
  br i1 %i.xy, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit166.i
  %i.xz = add nsw i32 %i.xx, 1
  store i32 %i.xz, ptr %i.o, align 8, !tbaa !28
  %i.ya = sext i32 %i.xx to i64
  %i.yb = getelementptr inbounds i8, ptr %3, i64 %i.ya
  store i8 25, ptr %i.yb, align 1, !tbaa !16
  br label %.critedge202.preheader.i

bb.fu:                                            ; preds = %.lr.ph
  %i.yc = load i32, ptr %i.p, align 4, !tbaa !19  ; 2 uses
  %i.yd = add nsw i32 %i.yc, -1                   ; 3 uses
  store i32 %i.yd, ptr %i.p, align 4, !tbaa !19
  %i.ye = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.yf = load i32, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds i8, ptr %i.ye, i64 %i.yg
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !16
  %.not.i167.i = icmp eq i8 %i.yi, 110
  br i1 %.not.i167.i, label %bb.fv, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i

bb.fv:                                            ; preds = %bb.fu
  %i.yj = add nsw i32 %i.yf, 1
  store i32 %i.yj, ptr %i.e, align 8, !tbaa !18
  %i.yk = icmp sgt i32 %i.yc, 1
  br i1 %i.yk, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i.thread, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.yl = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.ym = load ptr, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %i.yn = ptrtoint ptr %i.yl to i64
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = sub i64 %i.yn, %i.yo
  %i.yq = icmp slt i64 %i.yp, 2
  br i1 %i.yq, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 1
  store ptr %i.yr, ptr %i.c, align 8, !tbaa !14
  store i8 45, ptr %i.ym, align 1, !tbaa !16
  %i.ys = load ptr, ptr %i.c, align 8, !tbaa !14
  store i8 0, ptr %i.ys, align 1, !tbaa !16
  %.pre366 = load i32, ptr %i.p, align 4, !tbaa !19
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i: ; preds = %bb.fx, %bb.fu
  %i.yt = phi i32 [ %.pre366, %bb.fx ], [ %i.yd, %bb.fu ] ; 3 uses
  %i.yu = icmp sgt i32 %i.yt, 0
  br i1 %i.yu, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i.thread, label %bb.fy

bb.fy:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i
  %i.yv = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.yw = load ptr, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = ptrtoint ptr %i.yw to i64
  %i.yz = sub i64 %i.yx, %i.yy
  %.not.i5 = icmp ult i64 %i.yz, 3
  br i1 %.not.i5, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yw, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  %i.za = getelementptr inbounds nuw i8, ptr %i.yw, i64 2
  store ptr %i.za, ptr %i.c, align 8, !tbaa !14
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i.thread

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i.thread: ; preds = %bb.fv, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i, %bb.fz
  %i.zb = phi i1 [ false, %bb.fz ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i ], [ true, %bb.fv ] ; 2 uses
  %i.zc = phi i32 [ %i.yt, %bb.fz ], [ %i.yt, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i ], [ %i.yd, %bb.fv ]
  %i.zd = load ptr, ptr %i.b, align 8, !tbaa !13  ; 4 uses
  %i.ze = load i32, ptr %i.e, align 8, !tbaa !18  ; 4 uses
  %i.zf = sext i32 %i.ze to i64                   ; 2 uses
  %i.zg = getelementptr inbounds i8, ptr %i.zd, i64 %i.zf ; 2 uses
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !16  ; 4 uses
  %.not.i170.i = icmp eq i8 %i.zh, 48
  br i1 %.not.i170.i, label %bb.ga, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171.preheader.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i.thread
  %i.zi = add i8 %i.zh, -48
  %i.zj = icmp ult i8 %i.zi, 10
  %i.zk = add i8 %i.zh, -97
  %i.zl = icmp ult i8 %i.zk, 6
  %i.zm = or i1 %i.zj, %i.zl
  br i1 %i.zm, label %.lr.ph.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171.preheader.i
  br i1 %i.zb, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.us.i, label %.lr.ph.split.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.us.i: ; preds = %.lr.ph.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.us.i ], [ %i.zf, %.lr.ph.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.zn = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %i.zn, ptr %i.e, align 8, !tbaa !18
  %i.zo = getelementptr inbounds i8, ptr %i.zd, i64 %indvars.iv.next.i
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !16  ; 3 uses
  %i.zq = add i8 %i.zp, -48
  %i.zr = icmp ult i8 %i.zq, 10
  %i.zs = add i8 %i.zp, -97
  %i.zt = icmp ult i8 %i.zs, 6
  %i.zu = or i1 %i.zr, %i.zt
  br i1 %i.zu, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.us.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171._crit_edge.i, !llvm.loop !25

bb.ga:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit168.i.thread
  %i.zv = add nsw i32 %i.ze, 1                    ; 2 uses
  store i32 %i.zv, ptr %i.e, align 8, !tbaa !18
  br i1 %i.zb, label %bb.gd, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.zw = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.zx = load ptr, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = ptrtoint ptr %i.zx to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = icmp slt i64 %i.aaa, 2
  br i1 %i.aab, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zx, i64 1
  store ptr %i.aac, ptr %i.c, align 8, !tbaa !14
  store i8 48, ptr %i.zx, align 1, !tbaa !16
  %i.aad = load ptr, ptr %i.c, align 8, !tbaa !14
  store i8 0, ptr %i.aad, align 1, !tbaa !16
  %.pre.i.a = load ptr, ptr %i.b, align 8, !tbaa !13
  %.pre480.i = load i32, ptr %i.e, align 8, !tbaa !18
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.ga
  %i.aae = phi i32 [ %.pre480.i, %bb.gc ], [ %i.zv, %bb.ga ] ; 2 uses
  %i.aaf = phi ptr [ %.pre.i.a, %bb.gc ], [ %i.zd, %bb.ga ]
  %i.aag = sext i32 %i.aae to i64
  %i.aah = getelementptr inbounds i8, ptr %i.aaf, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !16
  %.not.i174.i = icmp eq i8 %i.aai, 95
  br i1 %.not.i174.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit175.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit175.i: ; preds = %bb.gd
  %i.aaj = add nsw i32 %i.aae, 1
  store i32 %i.aaj, ptr %i.e, align 8, !tbaa !18
  br label %.critedge51.backedge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i
  %.val54479.i = phi ptr [ %.val54.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i ], [ %i.zd, %.lr.ph.i ]
  %4 = phi i32 [ %5, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i ], [ %i.zc, %.lr.ph.i ] ; 2 uses
  %i.aak = phi ptr [ %i.aax, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i ], [ %i.zg, %.lr.ph.i ]
  %.val53327.i = phi i32 [ %.val53.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i ], [ %i.ze, %.lr.ph.i ]
  %i.aal = add nsw i32 %.val53327.i, 1            ; 2 uses
  store i32 %i.aal, ptr %i.e, align 8, !tbaa !18
  %i.aam = load i8, ptr %i.aak, align 1, !tbaa !16
  %i.aan = icmp sgt i32 %4, 0
  br i1 %i.aan, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i, label %bb.ge

bb.ge:                                            ; preds = %.lr.ph.split.i
  %i.aao = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.aap = load ptr, ptr %i.c, align 8, !tbaa !14 ; 3 uses
  %i.aaq = ptrtoint ptr %i.aao to i64
  %i.aar = ptrtoint ptr %i.aap to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = icmp slt i64 %i.aas, 2
  br i1 %i.aat, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 1
  store ptr %i.aau, ptr %i.c, align 8, !tbaa !14
  store i8 %i.aam, ptr %i.aap, align 1, !tbaa !16
  %i.aav = load ptr, ptr %i.c, align 8, !tbaa !14
  store i8 0, ptr %i.aav, align 1, !tbaa !16
  %.pre.i = load i32, ptr %i.p, align 4, !tbaa !19
  %.val53.pre.i = load i32, ptr %i.e, align 8, !tbaa !18
  %.val54.pre.i = load ptr, ptr %i.b, align 8, !tbaa !13
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i: ; preds = %bb.gf, %.lr.ph.split.i
  %.val54.i = phi ptr [ %.val54479.i, %.lr.ph.split.i ], [ %.val54.pre.i, %bb.gf ] ; 2 uses
  %.val53.i = phi i32 [ %i.aal, %.lr.ph.split.i ], [ %.val53.pre.i, %bb.gf ] ; 3 uses
  %5 = phi i32 [ %4, %.lr.ph.split.i ], [ %.pre.i, %bb.gf ]
  %i.aaw = sext i32 %.val53.i to i64
  %i.aax = getelementptr inbounds i8, ptr %.val54.i, i64 %i.aaw ; 2 uses
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !16 ; 3 uses
  %i.aaz = add i8 %i.aay, -48
  %i.aba = icmp ult i8 %i.aaz, 10
  %i.abb = add i8 %i.aay, -97
  %i.abc = icmp ult i8 %i.abb, 6
  %i.abd = or i1 %i.aba, %i.abc
  br i1 %i.abd, label %.lr.ph.split.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171._crit_edge.i, !llvm.loop !26

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171._crit_edge.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.us.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171.preheader.i
  %.val53.lcssa.i = phi i32 [ %i.ze, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171.preheader.i ], [ %i.zn, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.us.i ], [ %.val53.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i ]
  %.lcssa214.i = phi i8 [ %i.zh, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171.preheader.i ], [ %i.zp, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.us.i ], [ %i.aay, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser8EmitCharEc.exit177.i ]
  %.not.i178.i = icmp eq i8 %.lcssa214.i, 95
  br i1 %.not.i178.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit179.i, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit179.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit171._crit_edge.i
  %i.abe = add nsw i32 %.val53.lcssa.i, 1
  store i32 %i.abe, ptr %i.e, align 8, !tbaa !18
  br label %.critedge51.backedge.i

bb.gg:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i
  %i.abf = load i32, ptr %i.o, align 8, !tbaa !28 ; 3 uses
  %i.abg = icmp eq i32 %i.abf, 256
  br i1 %i.abg, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.abh = add nsw i32 %i.abf, 1
  store i32 %i.abh, ptr %i.o, align 8, !tbaa !28
  %i.abi = sext i32 %i.abf to i64
  %i.abj = getelementptr inbounds i8, ptr %3, i64 %i.abi
  store i8 26, ptr %i.abj, align 1, !tbaa !16
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.backedge.i

bb.gi:                                            ; preds = %.lr.ph
  %i.abk = load i32, ptr %i.p, align 4, !tbaa !19 ; 2 uses
  %i.abl = icmp sgt i32 %i.abk, 0
  br i1 %i.abl, label %bb.gl, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.abm = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.abn = load ptr, ptr %i.c, align 8, !tbaa !14 ; 3 uses
  %i.abo = ptrtoint ptr %i.abm to i64
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = sub i64 %i.abo, %i.abp
  %.not.i4 = icmp ult i64 %i.abq, 5
  br i1 %.not.i4, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.abn, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false)
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  store ptr %i.abr, ptr %i.c, align 8, !tbaa !14
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gi, %bb.gk
  %i.abs = add nsw i32 %i.abk, 1
  store i32 %i.abs, ptr %i.p, align 4, !tbaa !19
  br label %bb.gm

bb.gm:                                            ; preds = %bb.go, %bb.gl
  %i.abt = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.abu = load i32, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr inbounds i8, ptr %i.abt, i64 %i.abv
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !16
  %.not.i180.i = icmp eq i8 %i.abx, 69
  br i1 %.not.i180.i, label %bb.gp, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit181.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit181.i: ; preds = %bb.gm
  %i.aby = icmp eq i32 %i.i, 256
  br i1 %i.aby, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gn

bb.gn:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit181.i
  store i32 %i.g, ptr %i.o, align 8, !tbaa !28
  %i.abz = zext nneg i32 %i.i to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %3, i64 %i.abz
  store i8 27, ptr %i.aca, align 1, !tbaa !16
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !18 ; 2 uses
  %.val52.i = load ptr, ptr %i.b, align 8, !tbaa !13 ; 2 uses
  %i.acb = sext i32 %.val.i to i64
  %i.acc = getelementptr inbounds i8, ptr %.val52.i, i64 %i.acb
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !16
  switch i8 %i.acd, label %.critedge202.preheader.i [
    i8 76, label %bb.gq
    i8 75, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit183.i
  ]

.critedge202.preheader.i:                         ; preds = %bb.gn, %bb.ft, %bb.fo, %bb.es, %bb.eq, %bb.eh, %bb.dy, %bb.dq, %bb.ao, %bb.w, %bb.n
  %.19.ph.i = phi i32 [ %.08.i, %bb.ao ], [ %i.h, %bb.n ], [ %i.h, %bb.fo ], [ %i.h, %bb.eh ], [ %i.h, %bb.dy ], [ %i.h, %bb.dq ], [ %i.h, %bb.ft ], [ %i.h, %bb.w ], [ %.2.i, %bb.es ], [ %.2.i, %bb.eq ], [ %i.h, %bb.gn ] ; 11 uses
  %.val57359.i = load i32, ptr %i.e, align 8, !tbaa !18 ; 3 uses
  %.val58360.i = load ptr, ptr %i.b, align 8, !tbaa !13 ; 3 uses
  %i.ace = sext i32 %.val57359.i to i64           ; 2 uses
  %i.acf = getelementptr inbounds i8, ptr %.val58360.i, i64 %i.ace
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !16 ; 2 uses
  %i.ach = add i8 %i.acg, -97
  %i.aci = icmp ult i8 %i.ach, 26
  br i1 %i.aci, label %.critedge202._crit_edge.i, label %.lr.ph363.i

bb.go:                                            ; preds = %.lr.ph
  br label %bb.gm, !llvm.loop !27

bb.gp:                                            ; preds = %bb.gm
  %i.acj = add nsw i32 %i.abu, 1
  store i32 %i.acj, ptr %i.e, align 8, !tbaa !18
  %i.ack = load i32, ptr %i.p, align 4, !tbaa !19
  %i.acl = add nsw i32 %i.ack, -1
  store i32 %i.acl, ptr %i.p, align 4, !tbaa !19
  br label %.critedge51.backedge.i

bb.gq:                                            ; preds = %bb.gn
  %i.acm = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  %exitcond.not.old.old.old.old.old.old.old.old.old.old.old.i = icmp ne i32 %i.h, 131071
  %or.cond679.not.i = select i1 %i.acm, i1 %exitcond.not.old.old.old.old.old.old.old.old.old.old.old.i, i1 false
  br i1 %or.cond679.not.i, label %.lr.ph335.i.backedge, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit183.i: ; preds = %bb.gn
  %i.acn = add nsw i32 %.val.i, 1                 ; 2 uses
  store i32 %i.acn, ptr %i.e, align 8, !tbaa !18
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit183.i, %bb.bx
  %i.aco = phi i32 [ %.pre482.i.a, %bb.bx ], [ %i.acn, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit183.i ] ; 3 uses
  %i.acp = phi ptr [ %.pre481.i.a, %bb.bx ], [ %.val52.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit183.i ]
  %i.acq = sext i32 %i.aco to i64
  %i.acr = getelementptr inbounds i8, ptr %i.acp, i64 %i.acq
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !16 ; 2 uses
  %.not.i163330.i = icmp eq i8 %i.acs, 66
  br i1 %.not.i163330.i, label %.lr.ph331.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit164.i

bb.gr:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.i
  %i.act = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.act, label %bb.gs, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gs:                                            ; preds = %bb.gr
  %i.acu = load i32, ptr %i.p, align 4, !tbaa !19
  %i.acv = icmp eq i32 %i.acu, 0
  br i1 %i.acv, label %bb.gt, label %.loopexit209.i

bb.gt:                                            ; preds = %bb.gs
  %i.acw = load i32, ptr %i.o, align 8, !tbaa !28 ; 3 uses
  %i.acx = icmp eq i32 %i.acw, 256
  br i1 %i.acx, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.acy = add nsw i32 %i.acw, 1
  store i32 %i.acy, ptr %i.o, align 8, !tbaa !28
  %i.acz = sext i32 %i.acw to i64
  %i.ada = getelementptr inbounds i8, ptr %3, i64 %i.acz
  store i8 28, ptr %i.ada, align 1, !tbaa !16
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit133.backedge.i

.loopexit209.i:                                   ; preds = %.lr.ph, %bb.gs
  %.5.i = phi i32 [ %.08.i, %bb.gs ], [ %i.h, %.lr.ph ]
  %i.adb = load i32, ptr %i.t, align 8, !tbaa !20
  %i.adc = add nsw i32 %i.adb, -1                 ; 2 uses
  store i32 %i.adc, ptr %i.t, align 8, !tbaa !20
  %i.add = sext i32 %i.adc to i64
  %i.ade = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.add
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !21
  store i32 %i.adf, ptr %i.e, align 8, !tbaa !18
  br label %.critedge51.preheader.i

bb.gv:                                            ; preds = %.lr.ph363.i
  %i.adg = add nsw i32 %i.ia, 1
  store i32 %i.adg, ptr %i.e, align 8, !tbaa !18
  %i.adh = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr noundef nonnull align 8 dereferenceable(432) %3)
  br i1 %i.adh, label %bb.gw, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

bb.gw:                                            ; preds = %bb.gv
  %i.adi = load i32, ptr %i.p, align 4, !tbaa !19
  %i.adj = icmp eq i32 %i.adi, 0
  br i1 %i.adj, label %bb.gx, label %.loopexit205.i

bb.gx:                                            ; preds = %bb.gw
  %i.adk = load i32, ptr %i.o, align 8, !tbaa !28 ; 3 uses
  %i.adl = icmp eq i32 %i.adk, 256
  br i1 %i.adl, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.adm = add nsw i32 %i.adk, 1
  store i32 %i.adm, ptr %i.o, align 8, !tbaa !28
  %i.adn = sext i32 %i.adk to i64
  %i.ado = getelementptr inbounds i8, ptr %3, i64 %i.adn
  store i8 29, ptr %i.ado, align 1, !tbaa !16
  br label %.critedge202.backedge.i

.loopexit205.i:                                   ; preds = %.lr.ph, %bb.gw
  %.6.i = phi i32 [ %.19.ph.i, %bb.gw ], [ %i.h, %.lr.ph ]
  %i.adp = load i32, ptr %i.t, align 8, !tbaa !20
  %i.adq = add nsw i32 %i.adp, -1                 ; 2 uses
  store i32 %i.adq, ptr %i.t, align 8, !tbaa !20
  %i.adr = sext i32 %i.adq to i64
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !21
  store i32 %i.adt, ptr %i.e, align 8, !tbaa !18
  br label %.critedge51.preheader.i

.critedge51.preheader.i:                          ; preds = %bb.dh, %bb.df, %switch.lookup631, %bb.bn, %.loopexit205.i, %.loopexit209.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i, %bb.h
  %.7.ph.i = phi i32 [ %.08.i, %bb.h ], [ %.6.i, %.loopexit205.i ], [ %.3.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseRequiredLifetimeEv.exit.i ], [ %.19.ph.i, %switch.lookup631 ], [ %.5.i, %.loopexit209.i ], [ %.19.ph.i, %bb.bn ], [ %.19.ph.i, %bb.df ], [ %.19.ph.i, %bb.dh ] ; 2 uses
  %i.adu = icmp slt i32 %.7.ph.i, 131071
  %i.adv = load i32, ptr %i.o, align 8            ; 2 uses
  %i.adw = icmp sgt i32 %i.adv, 0
  %or.cond = select i1 %i.adu, i1 %i.adw, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZNO4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser5ParseEv.exit

.lr.ph331.i:                                      ; preds = %.preheader.i, %bb.hb
  %i.adx = phi i32 [ %i.aei, %bb.hb ], [ %i.aco, %.preheader.i ]
  %i.ady = add nsw i32 %i.adx, 1
  store i32 %i.ady, ptr %i.e, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc:bb.a
  %i.y = add i8 %i.t, -97
  %i.z = icmp ult i8 %i.y, 26
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i8 %i.t to i32
  %i.ab = add nsw i32 %i.aa, -87
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = sext i8 %i.t to i32
  %i.ad = add nsw i32 %i.ac, -29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i = phi i32 [ %i.x, %bb.d ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = mul nsw i32 %.01529.i.i, 62
  %i.af = add nsw i32 %.0.i.i, %i.ae
  %i.ag = freeze i32 %i.af
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i: ; preds = %bb.h, %.critedge.i.i
  %.116.i.i = phi i32 [ %i.ag, %bb.h ], [ %.01529.i.i, %.critedge.i.i ] ; 3 uses
  %.1.i.i = phi i1 [ %.01430.i.i, %bb.h ], [ true, %.critedge.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !16  ; 3 uses
  %i.aj = and i8 %i.ai, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = add i8 %i.ai, -48
  %i.an = icmp ult i8 %i.am, 10
  %or.cond.i.i = or i1 %i.an, %i.al
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !0

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %i.ao = icmp eq i8 %i.ai, 95
  br i1 %i.ao, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i
  %i.ap = add nsw i32 %i.s, 1
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !18
  br i1 %.1.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i
  %i.aq = add nsw i32 %.116.i.i, 2
  %.inv.inv.i = icmp slt i32 %.116.i.i, -1
  %spec.select.i = select i1 %.inv.inv.i, i32 -1, i32 %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, %.thread.i, %bb.a
  %.02.ph = phi i32 [ 1, %.thread.i ], [ %spec.select.i, %bb.i ], [ -1, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i ], [ 0, %bb.a ]
  %i.ar = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %.02.ph)
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %bb.j
  %.0 = phi i1 [ %i.ar, %bb.j ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser21ParseOptionalLifetimeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.g, 76
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !18
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

.critedge.i:                                      ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !18
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16    ; 3 uses
  %i.u = and i8 %i.t, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %or.cond.i = or i1 %i.y, %i.w
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !0

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %.critedge.i
  %i.z = icmp eq i8 %i.t, 95
  br i1 %i.z, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.aa = add nsw i32 %i.r, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split: ; preds = %bb.c, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i
  %.sink = phi i32 [ %i.aa, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ], [ %i.q, %bb.c ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.g, 71
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !18
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

.critedge.i:                                      ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %i.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !18
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16    ; 3 uses
  %i.u = and i8 %i.t, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %or.cond.i = or i1 %i.y, %i.w
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !0

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %.critedge.i
  %i.z = icmp eq i8 %i.t, 95
  br i1 %i.z, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.aa = add nsw i32 %i.r, 1
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split: ; preds = %bb.c, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i
  %.sink = phi i32 [ %i.aa, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ], [ %i.q, %bb.c ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !18
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %3 = alloca %"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !18   ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16    ; 2 uses
  %.not.i = icmp ne i8 %i.h, 117                  ; 3 uses
  br i1 %.not.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.e, 1                      ; 3 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !18
  %.pre = sext i32 %i.i to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.c, i64 %.pre
  %.pre87 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !16
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i8 [ %i.h, %bb.a ], [ %.pre87, %bb.b ]
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %.val = phi i32 [ %i.e, %bb.a ], [ %i.i, %bb.b ]
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %.pre-phi
  %i.n = add nsw i32 %.val, 1                     ; 4 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !18
  %i.o = load i8, ptr %i.m, align 1, !tbaa !16
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  %.phi.trans.insert88 = sext i32 %i.n to i64     ; 2 uses
  %.phi.trans.insert89 = getelementptr inbounds i8, ptr %i.c, i64 %.phi.trans.insert88 ; 2 uses
  %.pre90 = load i8, ptr %.phi.trans.insert89, align 1, !tbaa !16 ; 3 uses
  br i1 %i.r, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.s = add i8 %.pre90, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %.phi.trans.insert88, %.preheader.i ]
  %i.u = phi ptr [ %i.ac, %bb.d ], [ %.phi.trans.insert89, %.preheader.i ]
  %.018.i = phi i32 [ %i.ab, %bb.d ], [ %i.q, %.preheader.i ] ; 2 uses
  %i.v = icmp slt i32 %.018.i, 214748364
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = mul nsw i32 %.018.i, 10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.x, ptr %i.d, align 8, !tbaa !18
  %i.y = load i8, ptr %i.u, align 1, !tbaa !16
  %i.z = sext i8 %i.y to i32
  %i.aa = add i32 %i.w, -48
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16  ; 2 uses
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %bb.d, %bb.c, %.preheader.i
  %i.ag = phi i8 [ %.pre90, %bb.c ], [ %.pre90, %.preheader.i ], [ %i.ad, %bb.d ]
  %i.ah = phi i32 [ %i.n, %bb.c ], [ %i.n, %.preheader.i ], [ %i.x, %bb.d ] ; 2 uses
  %.053.ph = phi i32 [ 0, %bb.c ], [ %i.q, %.preheader.i ], [ %i.ab, %bb.d ] ; 5 uses
  %.not.i30 = icmp eq i8 %i.ag, 95
  br i1 %.not.i30, label %bb.e, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit31

bb.e:                                             ; preds = %.loopexit
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  store i32 %i.ai, ptr %i.d, align 8, !tbaa !18
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit31

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit31: ; preds = %.loopexit, %bb.e
  %i.aj = phi i32 [ %i.ah, %.loopexit ], [ %i.ai, %bb.e ]
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit31
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.c, i64 %i.ak ; 2 uses
  %i.am = sext i32 %.053.ph to i64
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !34
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !34
  store <2 x ptr> %i.ap, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !34
  %i.aq = tail call noundef ptr @_ZN4absl12lts_2026052618debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE(ptr noundef nonnull byval(%"struct.absl::lts_20260526::debugging_internal::DecodeRustPunycodeOptions") align 8 %3) ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !14
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !18
  %i.as = add i32 %i.ar, %.053.ph
  store i32 %i.as, ptr %i.d, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit31
  %.not23 = icmp eq i8 %1, 0                      ; 2 uses
  br i1 %.not23, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit41.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  %i.av = icmp sgt i32 %i.au, 0                   ; 3 uses
  switch i8 %1, label %bb.p [
    i8 67, label %bb.j
    i8 83, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.av, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14 ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.not.i32 = icmp ult i64 %i.bc, 9
  br i1 %.not.i32, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.az, ptr noundef nonnull align 1 dereferenceable(9) @.str.43, i64 9, i1 false)
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.be, ptr %i.ay, align 8, !tbaa !14
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread

bb.m:                                             ; preds = %bb.i
  br i1 %i.av, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %.not.i34 = icmp ult i64 %i.bl, 6
  br i1 %.not.i34, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bi, ptr noundef nonnull align 1 dereferenceable(6) @.str.44, i64 6, i1 false)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5
  store ptr %i.bn, ptr %i.bh, align 8, !tbaa !14
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread

bb.p:                                             ; preds = %bb.i
  br i1 %i.av, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !14 ; 3 uses
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp slt i64 %i.bu, 2
  br i1 %i.bv, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !14
  store i8 123, ptr %i.br, align 1, !tbaa !16
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !14
  store i8 0, ptr %i.bx, align 1, !tbaa !16
  %.pr = load i32, ptr %i.at, align 4, !tbaa !19
  %i.by = icmp sgt i32 %.pr, 0
  br i1 %i.by, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !14 ; 3 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp slt i64 %i.cd, 2
  br i1 %i.ce, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cf, ptr %i.bq, align 8, !tbaa !14
  store i8 %1, ptr %i.ca, align 1, !tbaa !16
  %i.cg = load ptr, ptr %i.bq, align 8, !tbaa !14
  store i8 0, ptr %i.cg, align 1, !tbaa !16
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread: ; preds = %bb.p, %bb.r, %bb.t, %bb.o, %bb.m, %bb.l, %bb.j
  %i.ch = icmp sgt i32 %.053.ph, 0
  br i1 %i.ch, label %bb.u, label %.critedge28.thread

bb.u:                                             ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !19
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit41.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !14 ; 2 uses
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %.not.i39 = icmp ult i64 %i.cr, 2
  br i1 %.not.i39, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i16 58, ptr %i.co, align 1
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store ptr %i.ct, ptr %i.cn, align 8, !tbaa !14
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit41.thread

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit41.thread: ; preds = %bb.w, %bb.u, %bb.h
  %.not2480 = icmp sgt i32 %.053.ph, 0
  %or.cond83 = select i1 %.not.i, i1 %.not2480, i1 false
  br i1 %or.cond83, label %.lr.ph, label %.critedge28

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit41.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %.pre92 = load ptr, ptr %i.b, align 8, !tbaa !13
  %.pre94 = load i32, ptr %i.d, align 8, !tbaa !18
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.ab
  %.081.a = phi i32 [ %.pre94, %.lr.ph ], [ %5, %bb.ab ] ; 2 uses
  %4 = phi ptr [ %.pre92, %.lr.ph ], [ %6, %bb.ab ] ; 2 uses
  %.081 = phi i32 [ 0, %.lr.ph ], [ %i.ds, %bb.ab ]
  %i.cx = add nsw i32 %.081.a, 1                  ; 2 uses
  store i32 %i.cx, ptr %i.d, align 8, !tbaa !18
  %i.cy = sext i32 %.081.a to i64
  %i.cz = getelementptr inbounds i8, ptr %4, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !16  ; 5 uses
  %i.db = and i8 %i.da, -33
  %i.dc = add i8 %i.db, -91
  %i.dd = icmp ult i8 %i.dc, -26
  %i.de = add i8 %i.da, -58
  %i.df = icmp ult i8 %i.de, -10
  %i.dg = icmp ne i8 %i.da, 95
  %spec.select.i.not77 = and i1 %i.dg, %i.df
  %.not74 = and i1 %i.dd, %spec.select.i.not77
  %i.dh = icmp sgt i8 %i.da, -1
  %or.cond = and i1 %i.dh, %.not74
  br i1 %or.cond, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = load i32, ptr %i.cu, align 4, !tbaa !19
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.dl = load ptr, ptr %i.cw, align 8, !tbaa !14 ; 3 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = icmp slt i64 %i.do, 2
  br i1 %i.dp, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  store ptr %i.dq, ptr %i.cw, align 8, !tbaa !14
  store i8 %i.da, ptr %i.dl, align 1, !tbaa !16
  %i.dr = load ptr, ptr %i.cw, align 8, !tbaa !14
  store i8 0, ptr %i.dr, align 1, !tbaa !16
  %.pre91 = load ptr, ptr %i.b, align 8, !tbaa !13
  %.pre93 = load i32, ptr %i.d, align 8, !tbaa !18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %5 = phi i32 [ %.pre93, %bb.aa ], [ %i.cx, %bb.y ]
  %6 = phi ptr [ %.pre91, %bb.aa ], [ %4, %bb.y ]
  %i.ds = add nuw nsw i32 %.081, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ds, %.053.ph
  br i1 %exitcond.not, label %.critedge28, label %bb.x, !llvm.loop !32

.critedge28:                                      ; preds = %bb.ab, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit41.thread
  br i1 %.not23, label %.critedge, label %.critedge28.thread

.critedge28.thread:                               ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, %.critedge28
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 5 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !19
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.critedge28.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !14 ; 3 uses
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = icmp slt i64 %i.ec, 2
  br i1 %i.ed, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.ee, ptr %i.dy, align 8, !tbaa !14
  store i8 35, ptr %i.dz, align 1, !tbaa !16
  %i.ef = load ptr, ptr %i.dy, align 8, !tbaa !14
  store i8 0, ptr %i.ef, align 1, !tbaa !16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.critedge28.thread
  %i.eg = icmp slt i32 %2, 0
  br i1 %i.eg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.eh = load i32, ptr %i.dt, align 4, !tbaa !19
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !14 ; 3 uses
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = icmp slt i64 %i.ep, 2
  br i1 %i.eq, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.er, ptr %i.el, align 8, !tbaa !14
  store i8 63, ptr %i.em, align 1, !tbaa !16
  %i.es = load ptr, ptr %i.el, align 8, !tbaa !14
  store i8 0, ptr %i.es, align 1, !tbaa !16
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread

bb.ai:                                            ; preds = %bb.ae
  %i.et = icmp eq i32 %2, 0
  br i1 %i.et, label %bb.aj, label %.lr.ph.preheader.i

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load i32, ptr %i.dt, align 4, !tbaa !19
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !14 ; 3 uses
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = icmp slt i64 %i.fc, 2
  br i1 %i.fd, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store ptr %i.fe, ptr %i.ey, align 8, !tbaa !14
  store i8 48, ptr %i.ez, align 1, !tbaa !16
  %i.ff = load ptr, ptr %i.ey, align 8, !tbaa !14
  store i8 0, ptr %i.ff, align 1, !tbaa !16
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46, %.lr.ph.preheader.i
  %.014.i = phi i64 [ %i.fj, %.lr.ph.i46 ], [ 11, %.lr.ph.preheader.i ]
  %.0813.i = phi i32 [ %i.fl, %.lr.ph.i46 ], [ %2, %.lr.ph.preheader.i ] ; 3 uses
  %i.fg = urem i32 %.0813.i, 10
  %i.fh = trunc nuw nsw i32 %i.fg to i8
  %i.fi = or disjoint i8 %i.fh, 48
  %i.fj = add i64 %.014.i, -1                     ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fj
  store i8 %i.fi, ptr %i.fk, align 1, !tbaa !16
  %i.fl = udiv i32 %.0813.i, 10
  %.not.i47 = icmp ult i32 %.0813.i, 10
  br i1 %.not.i47, label %._crit_edge.i, label %.lr.ph.i46, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i46
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fj ; 2 uses
  %i.fn = load i32, ptr %i.dt, align 4, !tbaa !19
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread69, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %i.fp = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fm) #7 ; 2 uses
  %i.fq = add i64 %i.fp, 1                        ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !14 ; 2 uses
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.not.i.i = icmp ult i64 %i.fx, %i.fq
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr nonnull readonly align 1 %i.fm, i64 %i.fq, i1 false)
  %i.fy = load ptr, ptr %i.ft, align 8, !tbaa !14
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp
  store ptr %i.fz, ptr %i.ft, align 8, !tbaa !14
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread69

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread69: ; preds = %._crit_edge.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.critedge

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread: ; preds = %bb.al, %bb.ah, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread69
  %.pr72 = load i32, ptr %i.dt, align 4, !tbaa !19
  %i.ga = icmp sgt i32 %.pr72, 0
  br i1 %i.ga, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !15
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !14 ; 3 uses
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = icmp slt i64 %i.gh, 2
  br i1 %i.gi, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  store ptr %i.gj, ptr %i.gd, align 8, !tbaa !14
  store i8 125, ptr %i.ge, align 1, !tbaa !16
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !14
  store i8 0, ptr %i.gk, align 1, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %bb.z, %bb.x, %bb.af, %bb.aj, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread, %bb.ap, %bb.ak, %bb.ag, %bb.f, %bb.k, %bb.n, %bb.q, %bb.s, %bb.v, %bb.ac, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit, %bb.ao, %.critedge28, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit
  %.6 = phi i1 [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit ], [ false, %bb.ao ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit ], [ true, %bb.aj ], [ false, %bb.s ], [ false, %bb.v ], [ false, %bb.n ], [ false, %bb.k ], [ true, %.critedge28 ], [ false, %bb.z ], [ false, %bb.f ], [ false, %bb.q ], [ true, %bb.af ], [ false, %bb.ac ], [ false, %bb.ak ], [ false, %bb.ag ], [ true, %bb.ap ], [ true, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17EmitDisambiguatorEi.exit.thread ], [ false, %bb.x ], [ false, %.lr.ph.i ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12BeginBackrefEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = sext i32 %i.b to i64                     ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16    ; 3 uses
  %.not.i.i = icmp eq i8 %i.g, 95
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.a
  %i.h = and i8 %i.g, -33
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = add i8 %i.g, -48
  %i.l = icmp ult i8 %i.k, 10
  %or.cond28.i = or i1 %i.l, %i.j
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser12PushPositionEi.exit

bb.b:                                             ; preds = %bb.a
  %i.m = add nsw i32 %i.b, 1                      ; 2 uses
  store i32 %i.m, ptr %i.a, align 8, !tbaa !18
  br label %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser17ParseBase62NumberERi.exit

.critedge.i:                                      ; preds = %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i ], [ %i.e, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %i.n = phi ptr [ %i.ac, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i ], [ %i.f, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %.01430.i = phi i1 [ %.1.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i ], [ false, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %.01529.i = phi i32 [ %.116.i, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i ], [ 0, %_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ] ; 3 uses
end_hunk_1
