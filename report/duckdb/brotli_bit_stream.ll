inline.NumInlined: 36
inline.NumDeleted: 20
begin_hunk_0_@_ZN13duckdb_brotli20BrotliStoreMetaBlockEPNS_13MemoryManagerEPKhmmmhhiPK19BrotliEncoderParamsNS_11ContextTypeEPKNS_7CommandEmPKNS_14MetaBlockSplitEPmPh:bb.a
bb.t:                                             ; preds = %bb.s
  %i.hq = add nsw i64 %i.hn, -2                   ; 2 uses
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %i.hs = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hr, i1 true)
  %i.ht = sub nuw nsw i32 30, %i.hs               ; 2 uses
  %i.hu = shl nuw nsw i32 %i.ht, 1
  %i.hv = zext nneg i32 %i.ht to i64
  %i.hw = lshr i64 %i.hq, %i.hv
  %narrow260 = add nuw nsw i32 %i.hu, 2
  %i.hx = zext nneg i32 %narrow260 to i64
  %i.hy = add nuw nsw i64 %i.hw, %i.hx
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.u:                                             ; preds = %bb.s
  %i.hz = icmp ult i32 %.sroa.0.0.copyload, 2114
  br i1 %i.hz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ia = add nsw i32 %.sroa.0.0.copyload, -66
  %i.ib = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ia, i1 true)
  %narrow = sub nuw nsw i32 41, %i.ib
  %i.ic = zext nneg i32 %narrow to i64
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

bb.w:                                             ; preds = %bb.u
  %i.id = icmp ult i32 %.sroa.0.0.copyload, 6210
  br i1 %i.id, label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ie = icmp ult i32 %.sroa.0.0.copyload, 22594
  %..i195 = select i1 %i.ie, i64 22, i64 23
  br label %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit

_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit:  ; preds = %bb.r, %bb.t, %bb.v, %bb.w, %bb.x
  %.0.i = phi i64 [ %..i195, %bb.x ], [ %i.hy, %bb.t ], [ %i.ic, %bb.v ], [ 21, %bb.w ], [ %i.hn, %bb.r ] ; 2 uses
  %i.if = zext i32 %i.hm to i64
  %i.ig = icmp ult i32 %i.hm, 10
  br i1 %i.ig, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %narrow234 = add nuw nsw i32 %i.hm, 65534
  %i.ih = zext nneg i32 %narrow234 to i64
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.z:                                             ; preds = %_ZN13duckdb_brotliL19GetInsertLengthCodeEm.exit
  %i.ii = icmp ult i32 %i.hm, 134
  br i1 %i.ii, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ij = add nsw i64 %i.if, -6                   ; 2 uses
  %i.ik = trunc nuw nsw i64 %i.ij to i32
  %i.il = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ik, i1 true)
  %i.im = sub nuw nsw i32 30, %i.il               ; 2 uses
  %i.in = shl nuw nsw i32 %i.im, 1
  %i.io = zext nneg i32 %i.im to i64
  %i.ip = lshr i64 %i.ij, %i.io
  %narrow261 = add nuw nsw i32 %i.in, 4
  %i.iq = zext nneg i32 %narrow261 to i64
  %i.ir = add nuw nsw i64 %i.ip, %i.iq
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.ab:                                            ; preds = %bb.z
  %i.is = icmp ult i32 %i.hm, 2118
  br i1 %i.is, label %bb.ac, label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

bb.ac:                                            ; preds = %bb.ab
  %i.it = add nsw i32 %i.hm, -70
  %i.iu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.it, i1 true)
  %narrow235 = sub nuw nsw i32 43, %i.iu
  %i.iv = zext nneg i32 %narrow235 to i64
  br label %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit

_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit:    ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac
  %.0.i196 = phi i64 [ %i.ih, %bb.y ], [ %i.ir, %bb.aa ], [ %i.iv, %bb.ac ], [ 23, %bb.ab ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli15kBrotliInsExtraE, i64 %.0.i
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3  ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli14kBrotliInsBaseE, i64 %.0.i
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !3
  %i.ja = sub i32 %.sroa.0.0.copyload, %i.iz
  %i.jb = zext i32 %i.ja to i64
  %i.jc = and i64 %.0.i196, 65535                 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli15kBrotliCopyBaseE, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3
  %i.jf = sub i32 %i.hm, %i.je
  %i.jg = zext i32 %i.jf to i64
  %i.jh = zext nneg i32 %i.ix to i64
  %i.ji = shl i64 %i.jg, %i.jh
  %i.jj = or i64 %i.ji, %i.jb
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli16kBrotliCopyExtraE, i64 %i.jc
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3
  %i.jm = add i32 %i.jl, %i.ix
  %i.jn = zext i32 %i.jm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.jo = load i64, ptr %13, align 8, !tbaa !7, !alias.scope !235, !noalias !238 ; 3 uses
  %i.jp = lshr i64 %i.jo, 3
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 %i.jp ; 2 uses
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !9, !alias.scope !238, !noalias !235
  %i.js = zext i8 %i.jr to i64
  %i.jt = and i64 %i.jo, 7
  %i.ju = shl i64 %i.jj, %i.jt
  %i.jv = or i64 %i.ju, %i.js
  store i64 %i.jv, ptr %i.jq, align 1, !noalias !235
  %i.jw = add i64 %i.jo, %i.jn
  store i64 %i.jw, ptr %13, align 8, !tbaa !7, !alias.scope !235, !noalias !238
  %i.jx = load i64, ptr %i.di, align 8, !tbaa !220
  %i.jy = icmp eq i64 %i.jx, 0
  %.not193247 = icmp eq i32 %.sroa.0.0.copyload, 0 ; 2 uses
  br i1 %i.jy, label %.preheader, label %.preheader236

.preheader236:                                    ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  br i1 %.not193247, label %.loopexit, label %.lr.ph244

.preheader:                                       ; preds = %_ZN13duckdb_brotliL17GetCopyLengthCodeEm.exit
  br i1 %.not193247, label %.loopexit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.preheader, %_ZL11StoreSymbolP12BlockEncodermPmPh.exit
  %.1183249 = phi i64 [ %i.nw, %_ZL11StoreSymbolP12BlockEncodermPmPh.exit ], [ %.0182253, %.preheader ] ; 2 uses
  %.0189248 = phi i64 [ %i.nx, %_ZL11StoreSymbolP12BlockEncodermPmPh.exit ], [ %i.hn, %.preheader ]
  %i.jz = and i64 %.1183249, %4
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !9
  %i.kc = zext i8 %i.kb to i64
  %i.kd = load i64, ptr %i.ae, align 8, !tbaa !195 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %bb.ad, label %_ZL11StoreSymbolP12BlockEncodermPmPh.exit

bb.ad:                                            ; preds = %.lr.ph250
  %i.kf = load i64, ptr %i.z, align 8, !tbaa !194
  %i.kg = add i64 %i.kf, 1                        ; 3 uses
  store i64 %i.kg, ptr %i.z, align 8, !tbaa !194
  %i.kh = load ptr, ptr %i.t, align 8, !tbaa !240
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kg
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !3  ; 6 uses
  %i.kk = load ptr, ptr %i.s, align 8, !tbaa !241
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kg
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !9
  %i.kn = zext i32 %i.kj to i64
  store i64 %i.kn, ptr %i.ae, align 8, !tbaa !195
  %i.ko = zext i8 %i.km to i64                    ; 5 uses
  %i.kp = load i64, ptr %i.j, align 8, !tbaa !184
  %i.kq = mul i64 %i.kp, %i.ko
  store i64 %i.kq, ptr %i.af, align 8, !tbaa !242
  %i.kr = load i64, ptr %i.x, align 8, !tbaa !192 ; 2 uses
  %i.ks = add i64 %i.kr, 1
  %i.kt = icmp eq i64 %i.ks, %i.ko
  br i1 %i.kt, label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ku = load i64, ptr %i.y, align 8, !tbaa !193
  %i.kv = icmp eq i64 %i.ku, %i.ko
  %i.kw = add nuw nsw i64 %i.ko, 2
  %i.kx = select i1 %i.kv, i64 0, i64 %i.kw
  br label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i

_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i: ; preds = %bb.ae, %bb.ad
  %i.ky = phi i64 [ %i.kx, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  store i64 %i.kr, ptr %i.y, align 8, !tbaa !193
  store i64 %i.ko, ptr %i.x, align 8, !tbaa !192
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !9
  %i.lb = zext i8 %i.la to i64
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %i.ky
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !35
  %i.le = zext i16 %i.ld to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.lf = load i64, ptr %13, align 8, !tbaa !7, !alias.scope !243, !noalias !246 ; 3 uses
  %i.lg = lshr i64 %i.lf, 3
  %i.lh = getelementptr inbounds nuw i8, ptr %14, i64 %i.lg ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !9, !alias.scope !246, !noalias !243
  %i.lj = zext i8 %i.li to i64
  %i.lk = and i64 %i.lf, 7
  %i.ll = shl nuw nsw i64 %i.le, %i.lk
  %i.lm = or i64 %i.ll, %i.lj
  store i64 %i.lm, ptr %i.lh, align 1, !noalias !243
  %i.ln = add i64 %i.lf, %i.lb                    ; 4 uses
  store i64 %i.ln, ptr %13, align 8, !tbaa !7, !alias.scope !243, !noalias !246
  %i.lo = icmp ugt i32 %i.kj, 176
  %i.lp = icmp ugt i32 %i.kj, 752
  %i.lq = select i1 %i.lp, i64 20, i64 14
  %i.lr = icmp ugt i32 %i.kj, 40
  %i.ls = select i1 %i.lr, i64 7, i64 0
  %i.lt = select i1 %i.lo, i64 %i.lq, i64 %i.ls
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %exitcond.not.i211 = icmp eq i64 %indvars.iv.next.i, 25
  br i1 %exitcond.not.i211, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i, label %bb.ag, !llvm.loop !248

bb.ag:                                            ; preds = %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i, %bb.af
  %indvars.iv.i290 = phi i64 [ %i.lt, %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i ], [ %indvars.iv.next.i, %bb.af ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i290, 1 ; 4 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.next.i
  %i.lv = load i16, ptr %i.lu, align 4, !tbaa !249
  %i.lw = zext i16 %i.lv to i32
  %.not.i.i.i = icmp ult i32 %i.kj, %i.lw
  br i1 %.not.i.i.i, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i, label %bb.af, !llvm.loop !248

_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i:     ; preds = %bb.ag, %bb.af
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i290, %bb.ag ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.i.lcssa ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 2
  %i.lz = load i8, ptr %i.ly, align 2, !tbaa !251
  %i.ma = load i16, ptr %i.lx, align 4, !tbaa !249
  %i.mb = zext i16 %i.ma to i32
  %i.mc = sub i32 %i.kj, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv.i.lcssa
  %i.me = load i8, ptr %i.md, align 1, !tbaa !9
  %i.mf = zext i8 %i.me to i64
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %indvars.iv.i.lcssa
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !35
  %i.mi = zext i16 %i.mh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.mj = lshr i64 %i.ln, 3
  %i.mk = getelementptr inbounds nuw i8, ptr %14, i64 %i.mj ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !9, !alias.scope !255, !noalias !252
  %i.mm = zext i8 %i.ml to i64
  %i.mn = and i64 %i.ln, 7
  %i.mo = shl nuw nsw i64 %i.mi, %i.mn
  %i.mp = or i64 %i.mo, %i.mm
  store i64 %i.mp, ptr %i.mk, align 1, !noalias !252
  %i.mq = add i64 %i.ln, %i.mf                    ; 4 uses
  store i64 %i.mq, ptr %13, align 8, !tbaa !7, !alias.scope !252, !noalias !255
  %i.mr = zext i8 %i.lz to i64
  %i.ms = zext i32 %i.mc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.mt = lshr i64 %i.mq, 3
  %i.mu = getelementptr inbounds nuw i8, ptr %14, i64 %i.mt ; 2 uses
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !9, !alias.scope !260, !noalias !257
  %i.mw = zext i8 %i.mv to i64
  %i.mx = and i64 %i.mq, 7
  %i.my = shl nuw nsw i64 %i.ms, %i.mx
  %i.mz = or i64 %i.my, %i.mw
  store i64 %i.mz, ptr %i.mu, align 1, !noalias !257
  %i.na = add i64 %i.mq, %i.mr
  store i64 %i.na, ptr %13, align 8, !tbaa !7, !alias.scope !257, !noalias !260
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !195
  br label %_ZL11StoreSymbolP12BlockEncodermPmPh.exit

_ZL11StoreSymbolP12BlockEncodermPmPh.exit:        ; preds = %.lr.ph250, %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i
  %i.nb = phi i64 [ %.pre.i, %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i ], [ %i.kd, %.lr.ph250 ]
  %i.nc = add i64 %i.nb, -1
  store i64 %i.nc, ptr %i.ae, align 8, !tbaa !195
  %i.nd = load i64, ptr %i.af, align 8, !tbaa !242
  %i.ne = add i64 %i.nd, %i.kc                    ; 2 uses
  %i.nf = load ptr, ptr %i.gx, align 8, !tbaa !227
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.ne
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !9
  %i.ni = zext i8 %i.nh to i64
  %i.nj = load ptr, ptr %i.ep, align 8, !tbaa !228
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %i.ne
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !35
  %i.nm = zext i16 %i.nl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.nn = load i64, ptr %13, align 8, !tbaa !7, !alias.scope !262, !noalias !265 ; 3 uses
  %i.no = lshr i64 %i.nn, 3
  %i.np = getelementptr inbounds nuw i8, ptr %14, i64 %i.no ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !9, !alias.scope !265, !noalias !262
  %i.nr = zext i8 %i.nq to i64
  %i.ns = and i64 %i.nn, 7
  %i.nt = shl nuw nsw i64 %i.nm, %i.ns
  %i.nu = or i64 %i.nt, %i.nr
  store i64 %i.nu, ptr %i.np, align 1, !noalias !262
  %i.nv = add i64 %i.nn, %i.ni
  store i64 %i.nv, ptr %13, align 8, !tbaa !7, !alias.scope !262, !noalias !265
  %i.nw = add i64 %.1183249, 1                    ; 2 uses
  %i.nx = add nsw i64 %.0189248, -1               ; 2 uses
  %.not193 = icmp eq i64 %i.nx, 0
  br i1 %.not193, label %.loopexit, label %.lr.ph250, !llvm.loop !267

.lr.ph244:                                        ; preds = %.preheader236, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit
  %.1243 = phi i8 [ %i.oi, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit ], [ %.0255, %.preheader236 ] ; 3 uses
  %.1179242 = phi i8 [ %.1243, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit ], [ %.0178254, %.preheader236 ]
  %.2184241 = phi i64 [ %i.sj, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit ], [ %.0182253, %.preheader236 ] ; 2 uses
  %.0188240 = phi i64 [ %i.sk, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit ], [ %i.hn, %.preheader236 ]
  %i.ny = zext i8 %.1243 to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !9
  %i.ob = zext i8 %.1179242 to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !9
  %i.oe = or i8 %i.od, %i.oa
  %i.of = zext i8 %i.oe to i64
  %i.og = and i64 %.2184241, %4
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !9   ; 3 uses
  %i.oj = zext i8 %i.oi to i64
  %i.ok = load ptr, ptr %i.gs, align 8, !tbaa !222
  %i.ol = load i64, ptr %i.ae, align 8, !tbaa !195 ; 2 uses
  %i.om = icmp eq i64 %i.ol, 0
  br i1 %i.om, label %bb.ah, label %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit

bb.ah:                                            ; preds = %.lr.ph244
  %i.on = load i64, ptr %i.z, align 8, !tbaa !194
  %i.oo = add i64 %i.on, 1                        ; 3 uses
  store i64 %i.oo, ptr %i.z, align 8, !tbaa !194
  %i.op = load ptr, ptr %i.t, align 8, !tbaa !240
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.oo
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !3  ; 6 uses
  %i.os = load ptr, ptr %i.s, align 8, !tbaa !241
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.oo
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !9
  %i.ov = zext i32 %i.or to i64
  store i64 %i.ov, ptr %i.ae, align 8, !tbaa !195
  %i.ow = zext i8 %i.ou to i64                    ; 5 uses
  %i.ox = shl nuw nsw i64 %i.ow, 6
  store i64 %i.ox, ptr %i.af, align 8, !tbaa !242
  %i.oy = load i64, ptr %i.x, align 8, !tbaa !192 ; 2 uses
  %i.oz = add i64 %i.oy, 1
  %i.pa = icmp eq i64 %i.oz, %i.ow
  br i1 %i.pa, label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i212, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pb = load i64, ptr %i.y, align 8, !tbaa !193
  %i.pc = icmp eq i64 %i.pb, %i.ow
  %i.pd = add nuw nsw i64 %i.ow, 2
  %i.pe = select i1 %i.pc, i64 0, i64 %i.pd
  br label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i212

_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i212: ; preds = %bb.ai, %bb.ah
  %i.pf = phi i64 [ %i.pe, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  store i64 %i.oy, ptr %i.y, align 8, !tbaa !193
  store i64 %i.ow, ptr %i.x, align 8, !tbaa !192
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !9
  %i.pi = zext i8 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %i.pf
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !35
  %i.pl = zext i16 %i.pk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.pm = load i64, ptr %13, align 8, !tbaa !7, !alias.scope !268, !noalias !271 ; 3 uses
  %i.pn = lshr i64 %i.pm, 3
  %i.po = getelementptr inbounds nuw i8, ptr %14, i64 %i.pn ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !9, !alias.scope !271, !noalias !268
  %i.pq = zext i8 %i.pp to i64
  %i.pr = and i64 %i.pm, 7
  %i.ps = shl nuw nsw i64 %i.pl, %i.pr
  %i.pt = or i64 %i.ps, %i.pq
  store i64 %i.pt, ptr %i.po, align 1, !noalias !268
  %i.pu = add i64 %i.pm, %i.pi                    ; 4 uses
  store i64 %i.pu, ptr %13, align 8, !tbaa !7, !alias.scope !268, !noalias !271
  %i.pv = icmp ugt i32 %i.or, 176
  %i.pw = icmp ugt i32 %i.or, 752
  %i.px = select i1 %i.pw, i64 20, i64 14
  %i.py = icmp ugt i32 %i.or, 40
  %i.pz = select i1 %i.py, i64 7, i64 0
  %i.qa = select i1 %i.pv, i64 %i.px, i64 %i.pz
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  %exitcond.not.i214 = icmp eq i64 %indvars.iv.next.i215, 25
  br i1 %exitcond.not.i214, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i217, label %bb.ak, !llvm.loop !248

bb.ak:                                            ; preds = %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i212, %bb.aj
  %indvars.iv.i213289 = phi i64 [ %i.qa, %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i212 ], [ %indvars.iv.next.i215, %bb.aj ] ; 2 uses
  %indvars.iv.next.i215 = add nuw nsw i64 %indvars.iv.i213289, 1 ; 4 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.next.i215
  %i.qc = load i16, ptr %i.qb, align 4, !tbaa !249
  %i.qd = zext i16 %i.qc to i32
  %.not.i.i.i216 = icmp ult i32 %i.or, %i.qd
  br i1 %.not.i.i.i216, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i217, label %bb.aj, !llvm.loop !248

_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i217:  ; preds = %bb.ak, %bb.aj
  %indvars.iv.i213.lcssa = phi i64 [ %indvars.iv.i213289, %bb.ak ], [ %indvars.iv.next.i215, %bb.aj ] ; 3 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.i213.lcssa ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 2
  %i.qg = load i8, ptr %i.qf, align 2, !tbaa !251
  %i.qh = load i16, ptr %i.qe, align 4, !tbaa !249
  %i.qi = zext i16 %i.qh to i32
  %i.qj = sub i32 %i.or, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv.i213.lcssa
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !9
  %i.qm = zext i8 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.gw, i64 %indvars.iv.i213.lcssa
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !35
  %i.qp = zext i16 %i.qo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.qq = lshr i64 %i.pu, 3
  %i.qr = getelementptr inbounds nuw i8, ptr %14, i64 %i.qq ; 2 uses
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !9, !alias.scope !276, !noalias !273
  %i.qt = zext i8 %i.qs to i64
  %i.qu = and i64 %i.pu, 7
  %i.qv = shl nuw nsw i64 %i.qp, %i.qu
  %i.qw = or i64 %i.qv, %i.qt
  store i64 %i.qw, ptr %i.qr, align 1, !noalias !273
  %i.qx = add i64 %i.pu, %i.qm                    ; 4 uses
  store i64 %i.qx, ptr %13, align 8, !tbaa !7, !alias.scope !273, !noalias !276
  %i.qy = zext i8 %i.qg to i64
  %i.qz = zext i32 %i.qj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.ra = lshr i64 %i.qx, 3
  %i.rb = getelementptr inbounds nuw i8, ptr %14, i64 %i.ra ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !9, !alias.scope !281, !noalias !278
  %i.rd = zext i8 %i.rc to i64
  %i.re = and i64 %i.qx, 7
  %i.rf = shl nuw nsw i64 %i.qz, %i.re
  %i.rg = or i64 %i.rf, %i.rd
  store i64 %i.rg, ptr %i.rb, align 1, !noalias !278
  %i.rh = add i64 %i.qx, %i.qy
  store i64 %i.rh, ptr %13, align 8, !tbaa !7, !alias.scope !278, !noalias !281
  %.pre.i218 = load i64, ptr %i.ae, align 8, !tbaa !195
  br label %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit

_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit: ; preds = %.lr.ph244, %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i217
  %i.ri = phi i64 [ %.pre.i218, %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i217 ], [ %i.ol, %.lr.ph244 ]
  %i.rj = add i64 %i.ri, -1
  store i64 %i.rj, ptr %i.ae, align 8, !tbaa !195
  %i.rk = load i64, ptr %i.af, align 8, !tbaa !242
  %i.rl = getelementptr [4 x i8], ptr %i.ok, i64 %i.rk
  %i.rm = getelementptr [4 x i8], ptr %i.rl, i64 %i.of
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !3
  %i.ro = zext i32 %i.rn to i64
  %i.rp = load i64, ptr %i.j, align 8, !tbaa !184
  %i.rq = mul i64 %i.rp, %i.ro
  %i.rr = add i64 %i.rq, %i.oj                    ; 2 uses
  %i.rs = load ptr, ptr %i.gx, align 8, !tbaa !227
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rr
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !9
  %i.rv = zext i8 %i.ru to i64
  %i.rw = load ptr, ptr %i.ep, align 8, !tbaa !228
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.rw, i64 %i.rr
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !35
  %i.rz = zext i16 %i.ry to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.sa = load i64, ptr %13, align 8, !tbaa !7, !alias.scope !283, !noalias !286 ; 3 uses
  %i.sb = lshr i64 %i.sa, 3
  %i.sc = getelementptr inbounds nuw i8, ptr %14, i64 %i.sb ; 2 uses
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !9, !alias.scope !286, !noalias !283
  %i.se = zext i8 %i.sd to i64
  %i.sf = and i64 %i.sa, 7
  %i.sg = shl nuw nsw i64 %i.rz, %i.sf
  %i.sh = or i64 %i.sg, %i.se
  store i64 %i.sh, ptr %i.sc, align 1, !noalias !283
  %i.si = add i64 %i.sa, %i.rv
  store i64 %i.si, ptr %13, align 8, !tbaa !7, !alias.scope !283, !noalias !286
  %i.sj = add i64 %.2184241, 1                    ; 2 uses
  %i.sk = add nsw i64 %.0188240, -1               ; 2 uses
  %.not192 = icmp eq i64 %i.sk, 0
  br i1 %.not192, label %.loopexit, label %.lr.ph244, !llvm.loop !288

.loopexit:                                        ; preds = %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit, %_ZL11StoreSymbolP12BlockEncodermPmPh.exit, %.preheader236, %.preheader
  %.3185 = phi i64 [ %i.nw, %_ZL11StoreSymbolP12BlockEncodermPmPh.exit ], [ %.0182253, %.preheader ], [ %.0182253, %.preheader236 ], [ %i.sj, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit ]
  %.2180 = phi i8 [ %.0178254, %_ZL11StoreSymbolP12BlockEncodermPmPh.exit ], [ %.0178254, %.preheader ], [ %.0178254, %.preheader236 ], [ %.1243, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit ]
  %.2 = phi i8 [ %.0255, %_ZL11StoreSymbolP12BlockEncodermPmPh.exit ], [ %.0255, %.preheader ], [ %.0255, %.preheader236 ], [ %i.oi, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit ]
  %i.sl = zext nneg i32 %i.hl to i64
  %i.sm = add i64 %.3185, %i.sl                   ; 3 uses
  %.not194 = icmp eq i32 %i.hl, 0
  br i1 %.not194, label %bb.au, label %bb.al

bb.al:                                            ; preds = %.loopexit
  %i.sn = add i64 %i.sm, -2
  %i.so = and i64 %i.sn, %4
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !9   ; 2 uses
  %i.sr = add i64 %i.sm, -1
  %i.ss = and i64 %i.sr, %4
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !9   ; 2 uses
  %i.sv = icmp ugt i16 %.sroa.11.0.copyload, 127
  br i1 %i.sv, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.sw = zext i16 %.sroa.14.0.copyload to i32    ; 2 uses
  %i.sx = and i32 %i.sw, 1023
  %i.sy = zext nneg i32 %i.sx to i64              ; 2 uses
  %i.sz = lshr i32 %i.sw, 10
  %i.ta = zext i32 %.sroa.10.0.copyload to i64
  %i.tb = load i64, ptr %i.ds, align 8, !tbaa !223
  %i.tc = icmp eq i64 %i.tb, 0
  br i1 %i.tc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @_ZL11StoreSymbolP12BlockEncodermPmPh(ptr noundef nonnull %i.l, i64 noundef %i.sy, ptr noundef nonnull %13, ptr noundef nonnull %14)
  %.pre = load i64, ptr %13, align 8, !tbaa !7, !alias.scope !289, !noalias !292
  br label %bb.at

bb.ao:                                            ; preds = %bb.am
  %i.td = zext i16 %.sroa.11.0.copyload to i32    ; 3 uses
  %i.te = lshr i32 %i.td, 6                       ; 2 uses
  %i.tf = and i32 %i.td, 7
  %i.tg = and i32 %i.td, 65344
  %or.cond.i = icmp eq i32 %i.tg, 0
  %i.th = icmp eq i32 %i.te, 4
  %or.cond3.i = or i1 %or.cond.i, %i.th
  %i.ti = icmp eq i32 %i.te, 7
  %or.cond5.i = or i1 %i.ti, %or.cond3.i
  %i.tj = tail call i32 @llvm.umin.i32(i32 %i.tf, i32 3)
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = select i1 %or.cond5.i, i64 %i.tk, i64 3
  %i.tm = load ptr, ptr %i.gy, align 8, !tbaa !225
  %i.tn = load i64, ptr %i.bu, align 8, !tbaa !195 ; 2 uses
  %i.to = icmp eq i64 %i.tn, 0
  br i1 %i.to, label %bb.ap, label %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit226

bb.ap:                                            ; preds = %bb.ao
  %i.tp = load i64, ptr %i.bp, align 8, !tbaa !194
  %i.tq = add i64 %i.tp, 1                        ; 3 uses
  store i64 %i.tq, ptr %i.bp, align 8, !tbaa !194
  %i.tr = load ptr, ptr %i.bj, align 8, !tbaa !240
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.tq
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !3  ; 6 uses
  %i.tu = load ptr, ptr %i.bi, align 8, !tbaa !241
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.tq
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !9
  %i.tx = zext i32 %i.tt to i64
  store i64 %i.tx, ptr %i.bu, align 8, !tbaa !195
  %i.ty = zext i8 %i.tw to i64                    ; 5 uses
  %i.tz = shl nuw nsw i64 %i.ty, 2
  store i64 %i.tz, ptr %i.bv, align 8, !tbaa !242
  %i.ua = load i64, ptr %i.bn, align 8, !tbaa !192 ; 2 uses
  %i.ub = add i64 %i.ua, 1
  %i.uc = icmp eq i64 %i.ub, %i.ty
  br i1 %i.uc, label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i219, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ud = load i64, ptr %i.bo, align 8, !tbaa !193
  %i.ue = icmp eq i64 %i.ud, %i.ty
  %i.uf = add nuw nsw i64 %i.ty, 2
  %i.ug = select i1 %i.ue, i64 0, i64 %i.uf
  br label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i219

_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i219: ; preds = %bb.aq, %bb.ap
  %i.uh = phi i64 [ %i.ug, %bb.aq ], [ 1, %bb.ap ] ; 2 uses
  store i64 %i.ua, ptr %i.bo, align 8, !tbaa !193
  store i64 %i.ty, ptr %i.bn, align 8, !tbaa !192
  %i.ui = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.uh
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !9
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.uh
  %i.um = load i16, ptr %i.ul, align 2, !tbaa !35
  %i.un = zext i16 %i.um to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.uo = load i64, ptr %13, align 8, !tbaa !7, !alias.scope !294, !noalias !297 ; 3 uses
  %i.up = lshr i64 %i.uo, 3
  %i.uq = getelementptr inbounds nuw i8, ptr %14, i64 %i.up ; 2 uses
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !9, !alias.scope !297, !noalias !294
  %i.us = zext i8 %i.ur to i64
  %i.ut = and i64 %i.uo, 7
  %i.uu = shl nuw nsw i64 %i.un, %i.ut
  %i.uv = or i64 %i.uu, %i.us
  store i64 %i.uv, ptr %i.uq, align 1, !noalias !294
  %i.uw = add i64 %i.uo, %i.uk                    ; 4 uses
  store i64 %i.uw, ptr %13, align 8, !tbaa !7, !alias.scope !294, !noalias !297
  %i.ux = icmp ugt i32 %i.tt, 176
  %i.uy = icmp ugt i32 %i.tt, 752
  %i.uz = select i1 %i.uy, i64 20, i64 14
  %i.va = icmp ugt i32 %i.tt, 40
  %i.vb = select i1 %i.va, i64 7, i64 0
  %i.vc = select i1 %i.ux, i64 %i.uz, i64 %i.vb
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %exitcond.not.i221 = icmp eq i64 %indvars.iv.next.i222, 25
  br i1 %exitcond.not.i221, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i224, label %bb.as, !llvm.loop !248

bb.as:                                            ; preds = %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i219, %bb.ar
  %indvars.iv.i220291 = phi i64 [ %i.vc, %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i219 ], [ %indvars.iv.next.i222, %bb.ar ] ; 2 uses
  %indvars.iv.next.i222 = add nuw nsw i64 %indvars.iv.i220291, 1 ; 4 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.next.i222
  %i.ve = load i16, ptr %i.vd, align 4, !tbaa !249
  %i.vf = zext i16 %i.ve to i32
  %.not.i.i.i223 = icmp ult i32 %i.tt, %i.vf
  br i1 %.not.i.i.i223, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i224, label %bb.ar, !llvm.loop !248

_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i224:  ; preds = %bb.as, %bb.ar
  %indvars.iv.i220.lcssa = phi i64 [ %indvars.iv.i220291, %bb.as ], [ %indvars.iv.next.i222, %bb.ar ] ; 3 uses
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.i220.lcssa ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 2
  %i.vi = load i8, ptr %i.vh, align 2, !tbaa !251
  %i.vj = load i16, ptr %i.vg, align 4, !tbaa !249
  %i.vk = zext i16 %i.vj to i32
  %i.vl = sub i32 %i.tt, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.hb, i64 %indvars.iv.i220.lcssa
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !9
  %i.vo = zext i8 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %indvars.iv.i220.lcssa
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !35
  %i.vr = zext i16 %i.vq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.vs = lshr i64 %i.uw, 3
  %i.vt = getelementptr inbounds nuw i8, ptr %14, i64 %i.vs ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !9, !alias.scope !302, !noalias !299
  %i.vv = zext i8 %i.vu to i64
  %i.vw = and i64 %i.uw, 7
  %i.vx = shl nuw nsw i64 %i.vr, %i.vw
  %i.vy = or i64 %i.vx, %i.vv
  store i64 %i.vy, ptr %i.vt, align 1, !noalias !299
  %i.vz = add i64 %i.uw, %i.vo                    ; 4 uses
  store i64 %i.vz, ptr %13, align 8, !tbaa !7, !alias.scope !299, !noalias !302
  %i.wa = zext i8 %i.vi to i64
  %i.wb = zext i32 %i.vl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.wc = lshr i64 %i.vz, 3
  %i.wd = getelementptr inbounds nuw i8, ptr %14, i64 %i.wc ; 2 uses
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !9, !alias.scope !307, !noalias !304
  %i.wf = zext i8 %i.we to i64
  %i.wg = and i64 %i.vz, 7
  %i.wh = shl nuw nsw i64 %i.wb, %i.wg
  %i.wi = or i64 %i.wh, %i.wf
  store i64 %i.wi, ptr %i.wd, align 1, !noalias !304
  %i.wj = add i64 %i.vz, %i.wa
  store i64 %i.wj, ptr %13, align 8, !tbaa !7, !alias.scope !304, !noalias !307
  %.pre.i225 = load i64, ptr %i.bu, align 8, !tbaa !195
  br label %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit226

_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit226: ; preds = %bb.ao, %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i224
  %i.wk = phi i64 [ %.pre.i225, %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i224 ], [ %i.tn, %bb.ao ]
  %i.wl = add i64 %i.wk, -1
  store i64 %i.wl, ptr %i.bu, align 8, !tbaa !195
  %i.wm = load i64, ptr %i.bv, align 8, !tbaa !242
  %i.wn = getelementptr [4 x i8], ptr %i.tm, i64 %i.wm
  %i.wo = getelementptr [4 x i8], ptr %i.wn, i64 %i.tl
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !3
  %i.wq = zext i32 %i.wp to i64
  %i.wr = load i64, ptr %i.l, align 8, !tbaa !184
  %i.ws = mul i64 %i.wr, %i.wq
  %i.wt = add i64 %i.ws, %i.sy                    ; 2 uses
  %i.wu = load ptr, ptr %i.hd, align 8, !tbaa !227
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wt
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !9
  %i.wx = zext i8 %i.ww to i64
  %i.wy = load ptr, ptr %i.gi, align 8, !tbaa !228
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.wy, i64 %i.wt
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !35
  %i.xb = zext i16 %i.xa to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.xc = load i64, ptr %13, align 8, !tbaa !7, !alias.scope !309, !noalias !312 ; 3 uses
  %i.xd = lshr i64 %i.xc, 3
  %i.xe = getelementptr inbounds nuw i8, ptr %14, i64 %i.xd ; 2 uses
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !9, !alias.scope !312, !noalias !309
  %i.xg = zext i8 %i.xf to i64
  %i.xh = and i64 %i.xc, 7
  %i.xi = shl nuw nsw i64 %i.xb, %i.xh
  %i.xj = or i64 %i.xi, %i.xg
  store i64 %i.xj, ptr %i.xe, align 1, !noalias !309
  %i.xk = add i64 %i.xc, %i.wx                    ; 2 uses
  store i64 %i.xk, ptr %13, align 8, !tbaa !7, !alias.scope !309, !noalias !312
  br label %bb.at

bb.at:                                            ; preds = %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit226, %bb.an
  %i.xl = phi i64 [ %i.xk, %_ZL22StoreSymbolWithContextP12BlockEncodermmPKjPmPhm.exit226 ], [ %.pre, %bb.an ] ; 3 uses
  %i.xm = zext nneg i32 %i.sz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.xn = lshr i64 %i.xl, 3
  %i.xo = getelementptr inbounds nuw i8, ptr %14, i64 %i.xn ; 2 uses
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !9, !alias.scope !292, !noalias !289
  %i.xq = zext i8 %i.xp to i64
  %i.xr = and i64 %i.xl, 7
  %i.xs = shl nuw nsw i64 %i.ta, %i.xr
  %i.xt = or i64 %i.xs, %i.xq
  store i64 %i.xt, ptr %i.xo, align 1, !noalias !289
  %i.xu = add i64 %i.xl, %i.xm
  store i64 %i.xu, ptr %13, align 8, !tbaa !7, !alias.scope !289, !noalias !292
  br label %bb.au

bb.au:                                            ; preds = %bb.al, %bb.at, %.loopexit
  %.3181 = phi i8 [ %i.sq, %bb.at ], [ %i.sq, %bb.al ], [ %.2180, %.loopexit ]
  %.3 = phi i8 [ %i.su, %bb.at ], [ %i.su, %bb.al ], [ %.2, %.loopexit ]
  %i.xv = add nuw i64 %.1187252, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.xv, %11
  br i1 %exitcond.not, label %._crit_edge257, label %bb.r, !llvm.loop !314

._crit_edge257:                                   ; preds = %bb.au, %_ZL33BuildAndStoreEntropyCodesDistancePN13duckdb_brotli13MemoryManagerEP12BlockEncoderPKNS_17HistogramDistanceEmmPNS_11HuffmanTreeEPmPh.exit
  %i.xw = getelementptr inbounds nuw i8, ptr %i.j, i64 2840 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !227
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.xx)
  store ptr null, ptr %i.xw, align 8, !tbaa !227
  %i.xy = load ptr, ptr %i.gi, align 8, !tbaa !228
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.xy)
  store ptr null, ptr %i.gi, align 8, !tbaa !228
  %i.xz = getelementptr inbounds nuw i8, ptr %i.j, i64 1888 ; 2 uses
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !227
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.ya)
  store ptr null, ptr %i.xz, align 8, !tbaa !227
  %i.yb = load ptr, ptr %i.fl, align 8, !tbaa !228
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.yb)
  store ptr null, ptr %i.fl, align 8, !tbaa !228
  %i.yc = getelementptr inbounds nuw i8, ptr %i.j, i64 936 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !227
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.yd)
  store ptr null, ptr %i.yc, align 8, !tbaa !227
  %i.ye = load ptr, ptr %i.ep, align 8, !tbaa !228
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.ye)
  store ptr null, ptr %i.ep, align 8, !tbaa !228
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.j)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %._crit_edge257
  %i.yf = load i64, ptr %13, align 8, !tbaa !7
  %i.yg = add i64 %i.yf, 7
  %i.yh = and i64 %i.yg, 4294967288               ; 2 uses
  store i64 %i.yh, ptr %13, align 8, !tbaa !7
  %i.yi = lshr exact i64 %i.yh, 3
  %i.yj = getelementptr inbounds nuw i8, ptr %14, i64 %i.yi
  store i8 0, ptr %i.yj, align 1, !tbaa !9
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge257
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZL30StoreCompressedMetaBlockHeaderimPmPh(i32 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %0 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.b = load i64, ptr %2, align 8, !tbaa !7, !alias.scope !315, !noalias !318 ; 6 uses
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9, !alias.scope !318, !noalias !315
  %i.f = zext i8 %i.e to i64
  %i.g = and i64 %i.b, 7
  %i.h = shl nsw i64 %i.a, %i.g
  %i.i = or i64 %i.h, %i.f
  store i64 %i.i, ptr %i.d, align 1, !noalias !315
  %i.j = add i64 %i.b, 1                          ; 4 uses
  store i64 %i.j, ptr %2, align 8, !tbaa !7, !alias.scope !315, !noalias !318
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9, !alias.scope !323, !noalias !320
  %i.n = zext i8 %i.m to i64
  store i64 %i.n, ptr %i.l, align 1, !noalias !320
  %i.o = add i64 %i.b, 2                          ; 3 uses
  store i64 %i.o, ptr %2, align 8, !tbaa !7, !alias.scope !320, !noalias !323
  %i.p = icmp eq i64 %1, 1
  br i1 %i.p, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = trunc i64 %1 to i32
  %i.r = add i32 %i.q, -1                         ; 2 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = icmp ult i32 %i.r, 32768
  %narrow.i = sub nuw nsw i32 35, %i.s
  %i.u = lshr i32 %narrow.i, 2
  %i.v = zext nneg i32 %i.u to i64
  br i1 %i.t, label %.thread.i, label %_ZL16BrotliEncodeMlenmPmS_S_.exit

.thread.i:                                        ; preds = %bb.c, %bb.b
  br label %_ZL16BrotliEncodeMlenmPmS_S_.exit

_ZL16BrotliEncodeMlenmPmS_S_.exit:                ; preds = %bb.c, %.thread.i
  %i.w = phi i64 [ 4, %.thread.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.x = add nsw i64 %i.w, -4
  %i.y = shl nuw nsw i64 %i.w, 2
  %i.z = add i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.aa = lshr i64 %i.o, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9, !alias.scope !328, !noalias !325
  %i.ad = zext i8 %i.ac to i64
  %i.ae = and i64 %i.o, 7
  %i.af = shl nsw i64 %i.x, %i.ae
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ab, align 1, !noalias !325
  %i.ah = add i64 %i.b, 4                         ; 4 uses
  store i64 %i.ah, ptr %2, align 8, !tbaa !7, !alias.scope !325, !noalias !328
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !9, !alias.scope !330, !noalias !333
  %i.al = zext i8 %i.ak to i64
  %i.am = and i64 %i.ah, 7
  %i.an = shl i64 %i.z, %i.am
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.aj, align 1, !noalias !333
  %i.ap = add i64 %i.y, %i.ah
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  %i.aq = icmp eq i64 %1, 1
  br i1 %i.aq, label %.thread.i14, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ar = trunc i64 %1 to i32
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  %i.at = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 true)
  %i.au = icmp ult i32 %i.as, 32768
  %narrow.i13 = sub nuw nsw i32 35, %i.at
  %i.av = lshr i32 %narrow.i13, 2
  %i.aw = zext nneg i32 %i.av to i64
  br i1 %i.au, label %.thread.i14, label %_ZL16BrotliEncodeMlenmPmS_S_.exit15

.thread.i14:                                      ; preds = %bb.d, %.critedge
  br label %_ZL16BrotliEncodeMlenmPmS_S_.exit15

_ZL16BrotliEncodeMlenmPmS_S_.exit15:              ; preds = %bb.d, %.thread.i14
  %i.ax = phi i64 [ 4, %.thread.i14 ], [ %i.aw, %bb.d ] ; 2 uses
  %i.ay = add nsw i64 %i.ax, -4
  %i.az = shl nuw nsw i64 %i.ax, 2
  %i.ba = add i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.bb = lshr i64 %i.j, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9, !alias.scope !338, !noalias !335
  %i.be = zext i8 %i.bd to i64
  %i.bf = and i64 %i.j, 7
  %i.bg = shl nsw i64 %i.ay, %i.bf
  %i.bh = or i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bc, align 1, !noalias !335
  %i.bi = add i64 %i.b, 3                         ; 4 uses
  store i64 %i.bi, ptr %2, align 8, !tbaa !7, !alias.scope !335, !noalias !338
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9, !alias.scope !343, !noalias !340
  %i.bm = zext i8 %i.bl to i64
  %i.bn = and i64 %i.bi, 7
  %i.bo = shl i64 %i.ba, %i.bn
  %i.bp = or i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bk, align 1, !noalias !340
  %i.bq = add i64 %i.az, %i.bi                    ; 3 uses
  store i64 %i.bq, ptr %2, align 8, !tbaa !7, !alias.scope !340, !noalias !343
  %i.br = lshr i64 %i.bq, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9, !alias.scope !345, !noalias !348
  %i.bu = zext i8 %i.bt to i64
  store i64 %i.bu, ptr %i.bs, align 1, !noalias !348
  %i.bv = add i64 %i.bq, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZL16BrotliEncodeMlenmPmS_S_.exit, %_ZL16BrotliEncodeMlenmPmS_S_.exit15
  %storemerge = phi i64 [ %i.ap, %_ZL16BrotliEncodeMlenmPmS_S_.exit ], [ %i.bv, %_ZL16BrotliEncodeMlenmPmS_S_.exit15 ]
  store i64 %storemerge, ptr %2, align 8, !tbaa !7, !noalias !154
  ret void
}

declare noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL36BuildAndStoreBlockSwitchEntropyCodesP12BlockEncoderPN13duckdb_brotli11HuffmanTreeEPmPh(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [258 x i32], align 16             ; 5 uses
  %i.b = alloca [26 x i32], align 16              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !241  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !191  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !188  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.l = add i64 %i.j, 2                          ; 3 uses
  %i.m = shl i64 %i.l, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.m, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  %.not37.i = icmp eq i64 %i.h, 0
  br i1 %.not37.i, label %._crit_edge.i, label %_ZL17NextBlockTypeCodeP23BlockTypeCodeCalculatorh.exit.i

_ZL17NextBlockTypeCodeP23BlockTypeCodeCalculatorh.exit.i: ; preds = %bb.a, %_ZL21BlockLengthPrefixCodej.exit.i
  %.036.i = phi i64 [ %i.an, %_ZL21BlockLengthPrefixCodej.exit.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.0.035.i = phi i64 [ %i.p, %_ZL21BlockLengthPrefixCodej.exit.i ], [ 1, %bb.a ] ; 2 uses
  %.sroa.6.034.i = phi i64 [ %.sroa.0.035.i, %_ZL21BlockLengthPrefixCodej.exit.i ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.036.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i64                      ; 4 uses
  %.not.i = icmp eq i64 %.036.i, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL17NextBlockTypeCodeP23BlockTypeCodeCalculatorh.exit.i
  %i.q = add nuw nsw i64 %.sroa.0.035.i, 1
  %i.r = icmp eq i64 %i.q, %i.p
  %i.s = icmp eq i64 %.sroa.6.034.i, %i.p
  %i.t = add nuw nsw i64 %i.p, 2
  %i.u = select i1 %i.s, i64 0, i64 %i.t
  %i.v = select i1 %i.r, i64 1, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZL17NextBlockTypeCodeP23BlockTypeCodeCalculatorh.exit.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.036.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 4 uses
  %i.ab = icmp ugt i32 %i.aa, 176
  %i.ac = icmp ugt i32 %i.aa, 752
  %i.ad = select i1 %i.ac, i64 20, i64 14
  %i.ae = icmp ugt i32 %i.aa, 40
  %i.af = select i1 %i.ae, i64 7, i64 0
  %i.ag = select i1 %i.ab, i64 %i.ad, i64 %i.af
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 25
  br i1 %exitcond.not.i, label %_ZL21BlockLengthPrefixCodej.exit.i, label %bb.e, !llvm.loop !248

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.i10 = phi i64 [ %i.ag, %bb.c ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i10, 1 ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.next.i
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !249
  %i.aj = zext i16 %i.ai to i32
  %.not.i.i = icmp ult i32 %i.aa, %i.aj
  br i1 %.not.i.i, label %_ZL21BlockLengthPrefixCodej.exit.i, label %bb.d, !llvm.loop !248

_ZL21BlockLengthPrefixCodej.exit.i:               ; preds = %bb.e, %bb.d
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i10, %bb.e ], [ %indvars.iv.next.i, %bb.d ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.lcssa ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !3
  %i.an = add nuw i64 %.036.i, 1                  ; 2 uses
  %exitcond39.not.i = icmp eq i64 %i.an, %i.h
  br i1 %exitcond39.not.i, label %._crit_edge.i, label %_ZL17NextBlockTypeCodeP23BlockTypeCodeCalculatorh.exit.i, !llvm.loop !350

._crit_edge.i:                                    ; preds = %_ZL21BlockLengthPrefixCodej.exit.i, %bb.a
  %i.ao = add i64 %i.j, -1                        ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZL16StoreVarLenUint8mPmPh.exit.thread.i, label %_ZL16StoreVarLenUint8mPmPh.exit.i

_ZL16StoreVarLenUint8mPmPh.exit.thread.i:         ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.aq = load i64, ptr %2, align 8, !tbaa !7, !alias.scope !351, !noalias !354 ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.ar ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9, !alias.scope !354, !noalias !351
  %i.au = zext i8 %i.at to i64
  store i64 %i.au, ptr %i.as, align 1, !noalias !351
  %i.av = add i64 %i.aq, 1
  br label %.sink.split.i

_ZL16StoreVarLenUint8mPmPh.exit.i:                ; preds = %._crit_edge.i
  %i.aw = trunc i64 %i.ao to i32
  %i.ax = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aw, i1 true)
  %i.ay = xor i32 %i.ax, 31
  %i.az = zext nneg i32 %i.ay to i64              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.ba = load i64, ptr %2, align 8, !tbaa !7, !alias.scope !356, !noalias !359 ; 4 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9, !alias.scope !359, !noalias !356
  %i.be = zext i8 %i.bd to i64
  %i.bf = and i64 %i.ba, 7
  %i.bg = shl nuw nsw i64 1, %i.bf
  %i.bh = or i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bc, align 1, !noalias !356
  %i.bi = add i64 %i.ba, 1                        ; 3 uses
  store i64 %i.bi, ptr %2, align 8, !tbaa !7, !alias.scope !356, !noalias !359
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 %i.bj ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !9, !alias.scope !364, !noalias !361
  %i.bm = zext i8 %i.bl to i64
  %i.bn = and i64 %i.bi, 7
  %i.bo = shl nuw nsw i64 %i.az, %i.bn
  %i.bp = or i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bk, align 1, !noalias !361
  %i.bq = add i64 %i.ba, 4                        ; 4 uses
  store i64 %i.bq, ptr %2, align 8, !tbaa !7, !alias.scope !361, !noalias !364
  %.neg.i.i = shl nsw i64 -1, %i.az
  %i.br = add i64 %.neg.i.i, %i.ao
  %i.bs = lshr i64 %i.bq, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !366, !noalias !369
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bq, 7
  %i.bx = shl i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !369
  %i.bz = add i64 %i.bq, %i.az
  store i64 %i.bz, ptr %2, align 8, !tbaa !7, !noalias !154
  %i.ca = icmp ugt i64 %i.j, 1
  br i1 %i.ca, label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i, label %_ZL27BuildAndStoreBlockSplitCodePKhPKjmmPN13duckdb_brotli11HuffmanTreeEP14BlockSplitCodePmPh.exit

_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i: ; preds = %_ZL16StoreVarLenUint8mPmPh.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 314
  call fastcc void @_ZL24BuildAndStoreHuffmanTreePKjmmPN13duckdb_brotli11HuffmanTreeEPhPtPmS4_(ptr noundef nonnull %i.a, i64 noundef %i.l, i64 noundef %i.l, ptr noundef %1, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.cc, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  call fastcc void @_ZL24BuildAndStoreHuffmanTreePKjmmPN13duckdb_brotli11HuffmanTreeEPhPtPmS4_(ptr noundef nonnull %i.b, i64 noundef 26, i64 noundef 26, ptr noundef %1, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.ce, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %i.cf = load i32, ptr %i.f, align 4, !tbaa !3   ; 5 uses
  %i.cg = load i8, ptr %i.d, align 1, !tbaa !9
  %i.ch = zext i8 %i.cg to i64
  %i.ci = load i64, ptr %i.k, align 8, !tbaa !192
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !193
  store i64 %i.ch, ptr %i.k, align 8, !tbaa !192
  %i.ck = icmp ugt i32 %i.cf, 176
  %i.cl = icmp ugt i32 %i.cf, 752
  %i.cm = select i1 %i.cl, i64 20, i64 14
  %i.cn = icmp ugt i32 %i.cf, 40
  %i.co = select i1 %i.cn, i64 7, i64 0
  %i.cp = select i1 %i.ck, i64 %i.cm, i64 %i.co
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %exitcond43.not.i = icmp eq i64 %indvars.iv.next41.i, 25
  br i1 %exitcond43.not.i, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i, label %bb.g, !llvm.loop !248

bb.g:                                             ; preds = %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i, %bb.f
  %indvars.iv40.i11 = phi i64 [ %i.cp, %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit.i ], [ %indvars.iv.next41.i, %bb.f ] ; 2 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i11, 1 ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.next41.i
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !249
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i = icmp ult i32 %i.cf, %i.cs
  br i1 %.not.i.i.i, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i, label %bb.f, !llvm.loop !248

_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i:     ; preds = %bb.g, %bb.f
  %indvars.iv40.i.lcssa = phi i64 [ %indvars.iv40.i11, %bb.g ], [ %indvars.iv.next41.i, %bb.f ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv40.i.lcssa ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !251
  %i.cw = load i16, ptr %i.ct, align 4, !tbaa !249
  %i.cx = zext i16 %i.cw to i32
  %i.cy = sub i32 %i.cf, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv40.i.lcssa
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv40.i.lcssa
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !35
  %i.de = zext i16 %i.dd to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.df = load i64, ptr %2, align 8, !tbaa !7, !alias.scope !371, !noalias !374 ; 3 uses
  %i.dg = lshr i64 %i.df, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 %i.dg ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9, !alias.scope !374, !noalias !371
  %i.dj = zext i8 %i.di to i64
  %i.dk = and i64 %i.df, 7
  %i.dl = shl nuw nsw i64 %i.de, %i.dk
  %i.dm = or i64 %i.dl, %i.dj
  store i64 %i.dm, ptr %i.dh, align 1, !noalias !371
  %i.dn = add i64 %i.df, %i.db                    ; 4 uses
  store i64 %i.dn, ptr %2, align 8, !tbaa !7, !alias.scope !371, !noalias !374
  %i.do = zext i8 %i.cv to i64
  %i.dp = zext i32 %i.cy to i64
  %i.dq = lshr i64 %i.dn, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 %i.dq ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9, !alias.scope !376, !noalias !379
  %i.dt = zext i8 %i.ds to i64
  %i.du = and i64 %i.dn, 7
  %i.dv = shl nuw nsw i64 %i.dp, %i.du
  %i.dw = or i64 %i.dv, %i.dt
  store i64 %i.dw, ptr %i.dr, align 1, !noalias !379
  %i.dx = add i64 %i.dn, %i.do
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i, %_ZL16StoreVarLenUint8mPmPh.exit.thread.i
  %.sink.i = phi i64 [ %i.av, %_ZL16StoreVarLenUint8mPmPh.exit.thread.i ], [ %i.dx, %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit.i ]
  store i64 %.sink.i, ptr %2, align 8, !tbaa !7, !noalias !154
  br label %_ZL27BuildAndStoreBlockSplitCodePKhPKjmmPN13duckdb_brotli11HuffmanTreeEP14BlockSplitCodePmPh.exit

_ZL27BuildAndStoreBlockSplitCodePKhPKjmmPN13duckdb_brotli11HuffmanTreeEP14BlockSplitCodePmPh.exit: ; preds = %_ZL16StoreVarLenUint8mPmPh.exit.i, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22StoreTrivialContextMapP21EncodeContextMapArenammPN13duckdb_brotli11HuffmanTreeEPmPh(ptr noundef %0, i64 noundef %1, i64 noundef range(i64 2, 7) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %1, -1                           ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_ZL16StoreVarLenUint8mPmPh.exit.thread, label %_ZL16StoreVarLenUint8mPmPh.exit

_ZL16StoreVarLenUint8mPmPh.exit.thread:           ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.c = load i64, ptr %4, align 8, !tbaa !7, !alias.scope !381, !noalias !384 ; 2 uses
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 %i.d ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9, !alias.scope !384, !noalias !381
  %i.g = zext i8 %i.f to i64
  store i64 %i.g, ptr %i.e, align 1, !noalias !381
  %i.h = add i64 %i.c, 1
  br label %.sink.split

_ZL16StoreVarLenUint8mPmPh.exit:                  ; preds = %bb.a
  %i.i = trunc i64 %i.a to i32
  %i.j = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.i, i1 true)
  %i.k = xor i32 %i.j, 31
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.m = load i64, ptr %4, align 8, !tbaa !7, !alias.scope !386, !noalias !389 ; 4 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9, !alias.scope !389, !noalias !386
  %i.q = zext i8 %i.p to i64
  %i.r = and i64 %i.m, 7
  %i.s = shl nuw nsw i64 1, %i.r
  %i.t = or i64 %i.s, %i.q
  store i64 %i.t, ptr %i.o, align 1, !noalias !386
  %i.u = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.u, ptr %4, align 8, !tbaa !7, !alias.scope !386, !noalias !389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.v = lshr i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9, !alias.scope !394, !noalias !391
  %i.y = zext i8 %i.x to i64
  %i.z = and i64 %i.u, 7
  %i.aa = shl nuw nsw i64 %i.l, %i.z
  %i.ab = or i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.w, align 1, !noalias !391
  %i.ac = add i64 %i.m, 4                         ; 4 uses
  store i64 %i.ac, ptr %4, align 8, !tbaa !7, !alias.scope !391, !noalias !394
  %.neg.i = shl nsw i64 -1, %i.l
  %i.ad = add i64 %.neg.i, %i.a
  %i.ae = lshr i64 %i.ac, 3
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9, !alias.scope !396, !noalias !399
  %i.ah = zext i8 %i.ag to i64
  %i.ai = and i64 %i.ac, 7
  %i.aj = shl i64 %i.ad, %i.ai
  %i.ak = or i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.af, align 1, !noalias !399
  %i.al = add i64 %i.ac, %i.l
  store i64 %i.al, ptr %4, align 8, !tbaa !7, !noalias !154
  %i.am = icmp ugt i64 %1, 1
  br i1 %i.am, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZL16StoreVarLenUint8mPmPh.exit
  %i.an = add nsw i64 %2, -1                      ; 8 uses
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %notmask = shl nsw i32 -1, %i.ao
  %i.ap = xor i32 %notmask, -1
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = add i64 %i.an, %1                       ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 4 uses
  %i.au = shl i64 %i.ar, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.au, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.av = load i64, ptr %4, align 8, !tbaa !7, !alias.scope !401, !noalias !404 ; 4 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9, !alias.scope !404, !noalias !401
  %i.az = zext i8 %i.ay to i64
  %i.ba = and i64 %i.av, 7
  %i.bb = shl nuw nsw i64 1, %i.ba
  %i.bc = or i64 %i.bb, %i.az
  store i64 %i.bc, ptr %i.ax, align 1, !noalias !401
  %i.bd = add i64 %i.av, 1                        ; 3 uses
  store i64 %i.bd, ptr %4, align 8, !tbaa !7, !alias.scope !401, !noalias !404
  %i.be = add nsw i64 %2, -2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.bf = lshr i64 %i.bd, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9, !alias.scope !409, !noalias !406
  %i.bi = zext i8 %i.bh to i64
  %i.bj = and i64 %i.bd, 7
  %i.bk = shl nuw nsw i64 %i.be, %i.bj
  %i.bl = or i64 %i.bk, %i.bi
  store i64 %i.bl, ptr %i.bg, align 1, !noalias !406
  %i.bm = add i64 %i.av, 5
  store i64 %i.bm, ptr %4, align 8, !tbaa !7, !alias.scope !406, !noalias !409
  %i.bn = trunc i64 %1 to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !3
  store i32 1, ptr %0, align 4, !tbaa !3
  %i.bp = icmp ult i64 %2, %i.ar
  br i1 %i.bp, label %.lr.ph.preheader, label %.peel.next

.lr.ph.preheader:                                 ; preds = %bb.b
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.a, -8                       ; 3 uses
  %i.bq = or disjoint i64 %2, %n.vec
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> splat (i32 1), ptr %i.bs, align 4, !tbaa !3
  store <4 x i32> splat (i32 1), ptr %i.bt, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.peel.next, label %.lr.ph.preheader72

.lr.ph.preheader72:                               ; preds = %.lr.ph.preheader, %middle.block
  %.062.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader72, %.lr.ph
  %.062 = phi i64 [ %i.bw, %.lr.ph ], [ %.062.ph, %.lr.ph.preheader72 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.062
  store i32 1, ptr %i.bv, align 4, !tbaa !3
  %i.bw = add nuw i64 %.062, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.ar
  br i1 %exitcond.not, label %.peel.next, label %.lr.ph, !llvm.loop !414

.peel.next:                                       ; preds = %.lr.ph, %middle.block, %bb.b
  tail call fastcc void @_ZL24BuildAndStoreHuffmanTreePKjmmPN13duckdb_brotli11HuffmanTreeEPhPtPmS4_(ptr noundef nonnull %0, i64 noundef %i.ar, i64 noundef %i.ar, ptr noundef %3, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.an ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.an ; 2 uses
  %i.bz = load i8, ptr %i.as, align 4, !tbaa !9
  %i.ca = zext i8 %i.bz to i64
  %i.cb = load i16, ptr %i.at, align 4, !tbaa !35
  %i.cc = zext i16 %i.cb to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.cd = load i64, ptr %4, align 8, !tbaa !7, !alias.scope !415, !noalias !418 ; 3 uses
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9, !alias.scope !418, !noalias !415
  %i.ch = zext i8 %i.cg to i64
  %i.ci = and i64 %i.cd, 7
  %i.cj = shl nuw nsw i64 %i.cc, %i.ci
end_hunk_0
begin_hunk_1_@_ZL16EncodeContextMapPN13duckdb_brotli13MemoryManagerEP21EncodeContextMapArenaPKjmmPNS_11HuffmanTreeEPmPh:bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 %i.fj ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !9, !alias.scope !495, !noalias !492
  %i.fm = zext i8 %i.fl to i64
  %i.fn = and i64 %i.fi, 7
  %i.fo = shl nuw nsw i64 %i.fh, %i.fn
  %i.fp = or i64 %i.fo, %i.fm
  store i64 %i.fp, ptr %i.fk, align 1, !noalias !492
  %i.fq = add i64 %i.fi, 1                        ; 3 uses
  store i64 %i.fq, ptr %6, align 8, !tbaa !7, !alias.scope !492, !noalias !495
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.fr = add nsw i32 %i.da, -1
  %i.fs = zext i32 %i.fr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.ft = lshr i64 %i.fq, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 %i.ft ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9, !alias.scope !500, !noalias !497
  %i.fw = zext i8 %i.fv to i64
  %i.fx = and i64 %i.fq, 7
  %i.fy = shl nuw nsw i64 %i.fs, %i.fx
  %i.fz = or i64 %i.fy, %i.fw
  store i64 %i.fz, ptr %i.fu, align 1, !noalias !497
  %i.ga = add i64 %i.fi, 5
  store i64 %i.ga, ptr %6, align 8, !tbaa !7, !alias.scope !497, !noalias !500
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.gb = zext nneg i32 %i.da to i64
  %i.gc = add i64 %4, %i.gb                       ; 2 uses
  tail call fastcc void @_ZL24BuildAndStoreHuffmanTreePKjmmPN13duckdb_brotli11HuffmanTreeEPhPtPmS4_(ptr noundef nonnull %1, i64 noundef %i.gc, i64 noundef %i.gc, ptr noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.pre98 = load i64, ptr %6, align 8, !tbaa !7, !noalias !154 ; 2 uses
  br i1 %.not86, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.k, %bb.m
  %i.gd = phi i64 [ %i.hh, %bb.m ], [ %.pre98, %bb.k ] ; 3 uses
  %.182 = phi i64 [ %i.hi, %bb.m ], [ 0, %bb.k ]  ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.182
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3  ; 2 uses
  %i.gg = and i32 %i.gf, 511                      ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64              ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !9
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.gh
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !35
  %i.gn = zext i16 %i.gm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.go = lshr i64 %i.gd, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !9, !alias.scope !505, !noalias !502
  %i.gr = zext i8 %i.gq to i64
  %i.gs = and i64 %i.gd, 7
  %i.gt = shl nuw nsw i64 %i.gn, %i.gs
  %i.gu = or i64 %i.gt, %i.gr
  store i64 %i.gu, ptr %i.gp, align 1, !noalias !502
  %i.gv = add i64 %i.gd, %i.gk                    ; 5 uses
  store i64 %i.gv, ptr %6, align 8, !tbaa !7, !alias.scope !502, !noalias !505
  %i.gw = add nsw i32 %i.gg, -1
  %or.cond.not = icmp ult i32 %i.gw, %i.da
  br i1 %or.cond.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph84
  %i.gx = lshr i32 %i.gf, 9
  %i.gy = zext nneg i32 %i.gx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.gz = lshr i64 %i.gv, 3
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 %i.gz ; 2 uses
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !9, !alias.scope !510, !noalias !507
  %i.hc = zext i8 %i.hb to i64
  %i.hd = and i64 %i.gv, 7
  %i.he = shl nuw nsw i64 %i.gy, %i.hd
  %i.hf = or i64 %i.he, %i.hc
  store i64 %i.hf, ptr %i.ha, align 1, !noalias !507
  %i.hg = add i64 %i.gv, %i.gh                    ; 2 uses
  store i64 %i.hg, ptr %6, align 8, !tbaa !7, !alias.scope !507, !noalias !510
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph84
  %i.hh = phi i64 [ %i.hg, %bb.l ], [ %i.gv, %.lr.ph84 ] ; 2 uses
  %i.hi = add nuw i64 %.182, 1                    ; 2 uses
  %exitcond97.not = icmp eq i64 %i.hi, %.172
  br i1 %exitcond97.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !512

._crit_edge85:                                    ; preds = %bb.m, %bb.k
  %i.hj = phi i64 [ %.pre98, %bb.k ], [ %i.hh, %bb.m ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.hk = lshr i64 %i.hj, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 %i.hk ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9, !alias.scope !516, !noalias !513
  %i.hn = zext i8 %i.hm to i64
  %i.ho = and i64 %i.hj, 7
  %i.hp = shl nuw nsw i64 1, %i.ho
  %i.hq = or i64 %i.hp, %i.hn
  store i64 %i.hq, ptr %i.hl, align 1, !noalias !513
  %i.hr = add i64 %i.hj, 1
  store i64 %i.hr, ptr %6, align 8, !tbaa !7, !alias.scope !513, !noalias !516
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.aq)
  br label %bb.n

bb.n:                                             ; preds = %_ZL16StoreVarLenUint8mPmPh.exit.thread, %._crit_edge85
  ret void
}

declare void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZL11StoreSymbolP12BlockEncodermPmPh(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 65536) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !194
  %i.f = add i64 %i.e, 1                          ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !240
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i32 %i.j to i64
  store i64 %i.o, ptr %i.a, align 8, !tbaa !195
  %i.p = zext i8 %i.n to i64                      ; 5 uses
  %i.q = load i64, ptr %0, align 8, !tbaa !184
  %i.r = mul i64 %i.q, %i.p
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %i.r, ptr %i.s, align 8, !tbaa !242
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !192  ; 2 uses
  %i.v = add i64 %i.u, 1
  %i.w = icmp eq i64 %i.v, %i.p
  br i1 %i.w, label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !193
  %i.z = icmp eq i64 %i.y, %i.p
  %i.aa = add nuw nsw i64 %i.p, 2
  %i.ab = select i1 %i.z, i64 0, i64 %i.aa
  br label %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit

_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit: ; preds = %bb.b, %bb.c
  %i.ac = phi i64 [ %i.ab, %bb.c ], [ 1, %bb.b ]  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.u, ptr %i.ad, align 8, !tbaa !193
  store i64 %i.p, ptr %i.t, align 8, !tbaa !192
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 314
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ac
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !35
  %i.al = zext i16 %i.ak to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.am = load i64, ptr %2, align 8, !tbaa !7, !alias.scope !518, !noalias !521 ; 3 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9, !alias.scope !521, !noalias !518
  %i.aq = zext i8 %i.ap to i64
  %i.ar = and i64 %i.am, 7
  %i.as = shl nuw nsw i64 %i.al, %i.ar
  %i.at = or i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ao, align 1, !noalias !518
  %i.au = add i64 %i.am, %i.ah                    ; 4 uses
  store i64 %i.au, ptr %2, align 8, !tbaa !7, !alias.scope !518, !noalias !521
  %i.av = icmp ugt i32 %i.j, 176
  %i.aw = icmp ugt i32 %i.j, 752
  %i.ax = select i1 %i.aw, i64 20, i64 14
  %i.ay = icmp ugt i32 %i.j, 40
  %i.az = select i1 %i.ay, i64 7, i64 0
  %i.ba = select i1 %i.av, i64 %i.ax, i64 %i.az
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %exitcond.not = icmp eq i64 %indvars.iv.next, 25
  br i1 %exitcond.not, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit, label %bb.e, !llvm.loop !248

bb.e:                                             ; preds = %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit, %bb.d
  %indvars.iv28 = phi i64 [ %i.ba, %_ZL16StoreBlockSwitchP14BlockSplitCodejhiPmPh.exit ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv28, 1 ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.next
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !249
  %i.bd = zext i16 %i.bc to i32
  %.not.i.i = icmp ult i32 %i.j, %i.bd
  br i1 %.not.i.i, label %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit, label %bb.d, !llvm.loop !248

_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit:       ; preds = %bb.d, %bb.e
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv28, %bb.e ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @_ZN13duckdb_brotli24_kBrotliPrefixCodeRangesE, i64 %indvars.iv.lcssa ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !251
  %i.bh = load i16, ptr %i.be, align 4, !tbaa !249
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub i32 %i.j, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 830
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.lcssa
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv.lcssa
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !35
  %i.br = zext i16 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.bs = lshr i64 %i.au, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !526, !noalias !523
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.au, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !523
  %i.bz = add i64 %i.au, %i.bn                    ; 4 uses
  store i64 %i.bz, ptr %2, align 8, !tbaa !7, !alias.scope !523, !noalias !526
  %i.ca = zext i8 %i.bg to i64
  %i.cb = zext i32 %i.bj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.cc = lshr i64 %i.bz, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9, !alias.scope !531, !noalias !528
  %i.cf = zext i8 %i.ce to i64
  %i.cg = and i64 %i.bz, 7
  %i.ch = shl nuw nsw i64 %i.cb, %i.cg
  %i.ci = or i64 %i.ch, %i.cf
  store i64 %i.ci, ptr %i.cd, align 1, !noalias !528
  %i.cj = add i64 %i.bz, %i.ca
  store i64 %i.cj, ptr %2, align 8, !tbaa !7, !alias.scope !528, !noalias !531
  %.pre = load i64, ptr %i.a, align 8, !tbaa !195
  br label %bb.f

bb.f:                                             ; preds = %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit, %bb.a
  %i.ck = phi i64 [ %.pre, %_ZL24GetBlockLengthPrefixCodejPmPjS0_.exit ], [ %i.b, %bb.a ]
  %i.cl = add i64 %i.ck, -1
  store i64 %i.cl, ptr %i.a, align 8, !tbaa !195
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !242
  %i.co = add i64 %i.cn, %1                       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !227
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !9
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !228
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.co
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !35
  %i.cy = zext i16 %i.cx to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.cz = load i64, ptr %2, align 8, !tbaa !7, !alias.scope !533, !noalias !536 ; 3 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9, !alias.scope !536, !noalias !533
  %i.dd = zext i8 %i.dc to i64
  %i.de = and i64 %i.cz, 7
  %i.df = shl nuw nsw i64 %i.cy, %i.de
  %i.dg = or i64 %i.df, %i.dd
  store i64 %i.dg, ptr %i.db, align 1, !noalias !533
  %i.dh = add i64 %i.cz, %i.ct
  store i64 %i.dh, ptr %2, align 8, !tbaa !7, !alias.scope !533, !noalias !536
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_brotli27BrotliStoreMetaBlockTrivialEPNS_13MemoryManagerEPKhmmmiPK19BrotliEncoderParamsPKNS_7CommandEmPmPh(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 20640) ; 21 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.c = load i32, ptr %i.b, align 8, !tbaa !156
  tail call fastcc void @_ZL30StoreCompressedMetaBlockHeaderimPmPh(i32 noundef %5, i64 noundef %3, ptr noundef %9, ptr noundef %10)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1024 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.a, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.e, align 8, !tbaa !538
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1040 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3856
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.f, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.h, align 8, !tbaa !541
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3872 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 6048
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.i, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.k, align 8, !tbaa !543
  %.not32.i = icmp eq i64 %8, 0
  br i1 %.not32.i, label %_ZL15BuildHistogramsPKhmmPKN13duckdb_brotli7CommandEmPNS1_16HistogramLiteralEPNS1_16HistogramCommandEPNS1_17HistogramDistanceE.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.a, %bb.c
  %i.l = phi i64 [ %i.bk, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %.promoted.i = phi i64 [ %.promoted.i55, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.m = phi i64 [ %i.s, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.01926.i = phi i64 [ %i.bb, %bb.c ], [ %2, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.m ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 4, !tbaa !3 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !3
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.621.0.copyload.i = load i16, ptr %.sroa.621.0..sroa_idx.i, align 4, !tbaa !35 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %.sroa.8.0.copyload.i = load i16, ptr %.sroa.8.0..sroa_idx.i, align 2, !tbaa !35
  %i.o = zext i16 %.sroa.621.0.copyload.i to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !3
  %i.s = add nuw i64 %i.m, 1                      ; 3 uses
  store i64 %i.s, ptr %i.g, align 8, !tbaa !545
  %.not23.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph29.i
  %i.t = zext i32 %.sroa.0.0.copyload.i to i64    ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.u = and i64 %.01926.i, %4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !3
  %i.ab = add i64 %.promoted.i, 1                 ; 3 uses
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !546
  %i.ac = add i64 %.01926.i, 1                    ; 2 uses
  %i.ad = add nsw i64 %i.t, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.lcssa60.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %.025.i.unr = phi i64 [ %i.t, %.lr.ph.i ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %.124.i.unr = phi i64 [ %.01926.i, %.lr.ph.i ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %i.ae = icmp eq i32 %.sroa.0.0.copyload.i, 1
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %i.af = phi i64 [ %i.aw, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %.025.i = phi i64 [ %i.ay, %.lr.ph.i.new ], [ %.025.i.unr, %.prol.loopexit ]
  %.124.i = phi i64 [ %i.ax, %.lr.ph.i.new ], [ %.124.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ag = and i64 %.124.i, %4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !3
  %i.an = add i64 %i.af, 1
  store i64 %i.an, ptr %i.d, align 8, !tbaa !546
  %i.ao = add i64 %.124.i, 1
  %i.ap = and i64 %i.ao, %4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !3
  %i.aw = add i64 %i.af, 2                        ; 3 uses
  store i64 %i.aw, ptr %i.d, align 8, !tbaa !546
  %i.ax = add i64 %.124.i, 2                      ; 2 uses
  %i.ay = add nsw i64 %.025.i, -2                 ; 2 uses
  %.not.i.1 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.1, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !547

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %.lr.ph29.i
  %.promoted.i55 = phi i64 [ %.promoted.i, %.lr.ph29.i ], [ %.lcssa60.unr, %.prol.loopexit ], [ %i.aw, %.lr.ph.i.new ]
  %.1.lcssa.i = phi i64 [ %.01926.i, %.lr.ph29.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ax, %.lr.ph.i.new ]
  %i.az = and i32 %.sroa.4.0.copyload.i, 33554431 ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = add i64 %.1.lcssa.i, %i.ba
  %i.bc = icmp ne i32 %i.az, 0
  %i.bd = icmp ugt i16 %.sroa.621.0.copyload.i, 127
  %or.cond.i = and i1 %i.bc, %i.bd
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i
  %i.be = and i16 %.sroa.8.0.copyload.i, 1023
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !3
  %i.bj = add i64 %i.l, 1                         ; 2 uses
  store i64 %i.bj, ptr %i.j, align 8, !tbaa !548
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.bk = phi i64 [ %i.bj, %bb.b ], [ %i.l, %._crit_edge.i ]
  %exitcond.not.i = icmp eq i64 %i.s, %8
  br i1 %exitcond.not.i, label %_ZL15BuildHistogramsPKhmmPKN13duckdb_brotli7CommandEmPNS1_16HistogramLiteralEPNS1_16HistogramCommandEPNS1_17HistogramDistanceE.exit, label %.lr.ph29.i, !llvm.loop !549

_ZL15BuildHistogramsPKhmmPKN13duckdb_brotli7CommandEmPNS1_16HistogramLiteralEPNS1_16HistogramCommandEPNS1_17HistogramDistanceE.exit: ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
end_hunk_1
