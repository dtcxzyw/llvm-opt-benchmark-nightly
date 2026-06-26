inline.NumInlined: 19
inline.NumDeleted: 4
begin_hunk_0_@_ZN13duckdb_brotli26BrotliCompressFragmentFastEPNS_18BrotliOnePassArenaEPKhmiPimPmPh:bb.a
  %i.bp = zext i8 %i.bo to i64
  %i.bq = and i64 %i.bl, 7
  %i.br = shl nuw nsw i64 1, %i.bq
  %i.bs = or i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.bn, align 1, !noalias !35
  %i.bt = add i64 %.sink75, 9
  %i.bu = and i64 %i.bt, 4294967288
  store i64 %i.bu, ptr %6, align 8, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !7      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !39, !noalias !36
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !36
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !36, !noalias !39
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9, !alias.scope !44, !noalias !41
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !41
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !41, !noalias !44
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !49, !noalias !46
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !46
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !7, !alias.scope !46, !noalias !49
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !54, !noalias !51
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !51
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !7, !alias.scope !51, !noalias !54
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9, !alias.scope !59, !noalias !56
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !56
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !7, !alias.scope !56, !noalias !59
  %i.ap = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !7, !noalias !35 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !66, !noalias !63
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !63
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !63, !noalias !66
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !73, !noalias !70
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !70
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !7, !alias.scope !70, !noalias !73
  %i.ca = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %_ZL10UpdateBitsmjmPh.exit.outer

_ZL10UpdateBitsmjmPh.exit.outer:                  ; preds = %bb.bt, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.ayh, %bb.bt ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awy, %bb.bt ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.aww, %bb.bt ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bt ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bt ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %_ZL10UpdateBitsmjmPh.exit

_ZL10UpdateBitsmjmPh.exit.loopexit:               ; preds = %bb.bc
  br label %_ZL10UpdateBitsmjmPh.exit, !llvm.loop !75

_ZL10UpdateBitsmjmPh.exit:                        ; preds = %_ZL10UpdateBitsmjmPh.exit.loopexit, %_ZL10UpdateBitsmjmPh.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajm, %_ZL10UpdateBitsmjmPh.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajl, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %.7.i, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajk, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ct, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @_ZL13kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !76

bb.c:                                             ; preds = %_ZL10UpdateBitsmjmPh.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread74

.thread74:                                        ; preds = %.thread74.backedge, %bb.c
  %.0340.i = phi i32 [ -1, %bb.c ], [ %.0340.i.be, %.thread74.backedge ]
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ]
  %.1325.i = phi ptr [ %.0324.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ] ; 8 uses
  %.0340.i.fr = freeze i32 %.0340.i               ; 4 uses
  %.0335.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0348.i.in.in.in = load i64, ptr %.0335.i, align 1
  %.0348.i.in.in = mul i64 %.0348.i.in.in.in, 8503243848024064
  %.0348.i.in = lshr i64 %.0348.i.in.in, 55       ; 2 uses
  %i.db = sext i32 %.0340.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0340.i.fr, 0
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !77

.split.us.preheader:                              ; preds = %.thread74
  %.0348.i = trunc nuw nsw i64 %.0348.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us205
  %.0359.i.us = phi ptr [ %i.di, %.loopexit.split.us205 ], [ %.0335.i, %.split.us.preheader ] ; 2 uses
  %.0353.i.us = phi i32 [ %i.dj, %.loopexit.split.us205 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1349.i.us = phi i32 [ %7, %.loopexit.split.us205 ], [ %.0348.i, %.split.us.preheader ]
  %i.de = lshr i32 %.0353.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0359.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !78

.lr.ph186.us:                                     ; preds = %.split.us, %.critedge.backedge.us211
  %i.di = phi ptr [ %i.eo, %.critedge.backedge.us211 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in276 = phi i32 [ %i.dj, %.critedge.backedge.us211 ], [ %.0353.i.us, %.split.us ]
  %.2350.i184.us195 = phi i32 [ %7, %.critedge.backedge.us211 ], [ %.1349.i.us, %.split.us ] ; 2 uses
  %.1360.i183.us196 = phi ptr [ %i.di, %.critedge.backedge.us211 ], [ %.0359.i.us, %.split.us ] ; 8 uses
  %i.dj = add i32 %.in276, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 55
  %7 = trunc nuw nsw i64 %i.dl to i32             ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.1360.i183.us196, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dm, align 1
  %i.dn = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dn, label %_ZL7IsMatchPKhS0_.exit7.us200, label %_ZL7IsMatchPKhS0_.exit7.thread.us201

_ZL7IsMatchPKhS0_.exit7.us200:                    ; preds = %.lr.ph186.us
  %i.do = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !9
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.d, label %_ZL7IsMatchPKhS0_.exit7.thread.us201, !prof !77

_ZL7IsMatchPKhS0_.exit7.thread.us201:             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200, %.lr.ph186.us
  %8 = zext nneg i32 %.2350.i184.us195 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv ; 3 uses
  %i.dx = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.dy = sub i64 %i.dx, %i.ca
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !3
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dw, align 1
  %i.ea = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ea, label %_ZL7IsMatchPKhS0_.exit.us204, label %.critedge.backedge.us211

_ZL7IsMatchPKhS0_.exit.us204:                     ; preds = %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.eb = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %.not277 = icmp eq i8 %i.ec, %i.ee
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !79

bb.d:                                             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200
  %i.ef = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.eg = sub i64 %i.ef, %i.ca
  %i.eh = trunc i64 %i.eg to i32
  %9 = zext nneg i32 %.2350.i184.us195 to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %9
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ef, %bb.d ], [ %i.dx, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dm, %bb.d ], [ %i.dw, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %i.ej = ptrtoint ptr %.4365.i65.us to i64
  %i.ek = sub i64 %.pre-phi, %i.ej                ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 262128
  br i1 %i.el, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.em = lshr i32 %i.dj, 5
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.en ; 2 uses
  %i.ep = icmp ugt ptr %i.eo, %i.cy
  br i1 %i.ep, label %.thread101, label %.lr.ph186.us, !prof !80, !llvm.loop !81

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.eu, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ev, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.ex, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.eq = lshr i32 %.0353.i, 5
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.er ; 2 uses
  %i.et = icmp ugt ptr %i.es, %i.cy
  br i1 %i.et, label %.thread101, label %.lr.ph186, !prof !78

.lr.ph186:                                        ; preds = %.split, %.critedge.backedge.us
  %i.eu = phi ptr [ %i.fm, %.critedge.backedge.us ], [ %i.es, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ev, %.critedge.backedge.us ], [ %.0353.i, %.split ]
  %.2350.i184.us = phi i64 [ %i.ex, %.critedge.backedge.us ], [ %.1349.i, %.split ]
  %.1360.i183.us = phi ptr [ %i.eu, %.critedge.backedge.us ], [ %.0359.i, %.split ] ; 4 uses
  %i.ev = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.eu, align 1
  %i.ew = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ex = lshr i64 %i.ew, 55                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2350.i184.us ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %1, i64 %i.fa ; 4 uses
  %i.fc = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fd = sub i64 %i.fc, %i.ca
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !3
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fb, align 1
  %i.ff = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.ff, label %_ZL7IsMatchPKhS0_.exit.us, label %.critedge.backedge.us

_ZL7IsMatchPKhS0_.exit.us:                        ; preds = %.lr.ph186
  %i.fg = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %.not275 = icmp eq i8 %i.fh, %i.fj
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !79

.critedge.backedge.us:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us, %.lr.ph186
  %i.fk = lshr i32 %i.ev, 5
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fl ; 2 uses
  %i.fn = icmp ugt ptr %i.fm, %i.cy
  br i1 %i.fn, label %.thread101, label %.lr.ph186, !prof !80, !llvm.loop !81

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_.exit.us
  %i.fo = ptrtoint ptr %i.fb to i64
  %i.fp = sub i64 %i.fc, %i.fo                    ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, 262128
  br i1 %i.fq, label %.split, label %.split215.us

.split215.us:                                     ; preds = %.loopexit.split.us, %.loopexit.split.us205
  %.us-phi216 = phi i64 [ %.pre-phi, %.loopexit.split.us205 ], [ %i.fc, %.loopexit.split.us ] ; 5 uses
  %.us-phi217 = phi ptr [ %.4365.i65.us, %.loopexit.split.us205 ], [ %i.fb, %.loopexit.split.us ]
  %.us-phi219 = phi i64 [ %i.ek, %.loopexit.split.us205 ], [ %i.fp, %.loopexit.split.us ] ; 2 uses
  %.us-phi220 = phi ptr [ %.1360.i183.us196, %.loopexit.split.us205 ], [ %.1360.i183.us, %.loopexit.split.us ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.us-phi217, i64 5 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.us-phi220, i64 5 ; 2 uses
  %i.ft = sub i64 %i.da, %.us-phi216              ; 3 uses
  %i.fu = icmp ugt i64 %i.ft, 7
  br i1 %i.fu, label %.lr.ph227, label %.preheader135

.preheader135:                                    ; preds = %bb.f, %.split215.us
  %.027.i11.lcssa = phi i64 [ %i.ft, %.split215.us ], [ %i.gh, %bb.f ] ; 8 uses
  %.025.i12.lcssa = phi ptr [ %i.fs, %.split215.us ], [ %i.gf, %bb.f ] ; 7 uses
  %.022.i13.lcssa = phi ptr [ %i.fr, %.split215.us ], [ %i.gg, %bb.f ] ; 10 uses
  %.not.i18231 = icmp eq i64 %.027.i11.lcssa, 0
  br i1 %.not.i18231, label %.critedge.i19, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %.preheader135
  %scevgep = getelementptr i8, ptr %.022.i13.lcssa, i64 %.027.i11.lcssa ; 7 uses
  %i.fv = load i8, ptr %.022.i13.lcssa, align 1, !tbaa !9
  %i.fw = load i8, ptr %.025.i12.lcssa, align 1, !tbaa !9
  %i.fx = icmp eq i8 %i.fv, %i.fw
  br i1 %i.fx, label %bb.g, label %.critedge.i19

.lr.ph227:                                        ; preds = %.split215.us, %bb.f
  %.022.i13225 = phi ptr [ %i.gg, %bb.f ], [ %i.fr, %.split215.us ] ; 3 uses
  %.025.i12224 = phi ptr [ %i.gf, %bb.f ], [ %i.fs, %.split215.us ] ; 2 uses
  %.027.i11223 = phi i64 [ %i.gh, %bb.f ], [ %i.ft, %.split215.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i12224, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i13225, align 1 ; 2 uses
  %.not30.i21 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph227
  %i.fy = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.fz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fy, i1 true)
  %i.ga = ptrtoint ptr %.022.i13225 to i64
  %i.gb = ptrtoint ptr %i.fr to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = lshr i64 %i.fz, 3
  %i.ge = add i64 %i.gc, %i.gd
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit24

bb.f:                                             ; preds = %.lr.ph227
  %i.gf = getelementptr inbounds nuw i8, ptr %.025.i12224, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.022.i13225, i64 8 ; 2 uses
  %i.gh = add i64 %.027.i11223, -8                ; 3 uses
  %i.gi = icmp ugt i64 %i.gh, 7
  br i1 %i.gi, label %.lr.ph227, label %.preheader135, !llvm.loop !82

bb.g:                                             ; preds = %.lr.ph235.preheader
  %.not.i18 = icmp eq i64 %.027.i11.lcssa, 1
  br i1 %.not.i18, label %.critedge.i19, label %.lr.ph235.1

.lr.ph235.1:                                      ; preds = %bb.g
  %i.gj = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 1
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !9
  %i.gn = icmp eq i8 %i.gl, %i.gm
  br i1 %i.gn, label %bb.h, label %.critedge.i19

bb.h:                                             ; preds = %.lr.ph235.1
  %.not.i18.1 = icmp eq i64 %.027.i11.lcssa, 2
  br i1 %.not.i18.1, label %.critedge.i19, label %.lr.ph235.2

.lr.ph235.2:                                      ; preds = %bb.h
  %i.go = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 2
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gs = icmp eq i8 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %.critedge.i19

bb.i:                                             ; preds = %.lr.ph235.2
  %.not.i18.2 = icmp eq i64 %.027.i11.lcssa, 3
  br i1 %.not.i18.2, label %.critedge.i19, label %.lr.ph235.3

.lr.ph235.3:                                      ; preds = %bb.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 3
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gx = icmp eq i8 %i.gv, %i.gw
  br i1 %i.gx, label %bb.j, label %.critedge.i19

bb.j:                                             ; preds = %.lr.ph235.3
  %.not.i18.3 = icmp eq i64 %.027.i11.lcssa, 4
  br i1 %.not.i18.3, label %.critedge.i19, label %.lr.ph235.4

.lr.ph235.4:                                      ; preds = %bb.j
  %i.gy = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 4
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !9
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.hc = icmp eq i8 %i.ha, %i.hb
  br i1 %i.hc, label %bb.k, label %.critedge.i19

bb.k:                                             ; preds = %.lr.ph235.4
  %.not.i18.4 = icmp eq i64 %.027.i11.lcssa, 5
  br i1 %.not.i18.4, label %.critedge.i19, label %.lr.ph235.5

.lr.ph235.5:                                      ; preds = %bb.k
  %i.hd = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 5 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 5
  %i.hf = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !9
  %i.hh = icmp eq i8 %i.hf, %i.hg
  br i1 %i.hh, label %bb.l, label %.critedge.i19

bb.l:                                             ; preds = %.lr.ph235.5
  %.not.i18.5 = icmp eq i64 %.027.i11.lcssa, 6
  br i1 %.not.i18.5, label %.critedge.i19, label %.lr.ph235.6

.lr.ph235.6:                                      ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 6 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 6
  %i.hk = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !9
  %i.hm = icmp eq i8 %i.hk, %i.hl
  %spec.select = select i1 %i.hm, ptr %scevgep, ptr %i.hi
  br label %.critedge.i19

.critedge.i19:                                    ; preds = %.lr.ph235.6, %bb.g, %.lr.ph235.preheader, %.lr.ph235.1, %bb.h, %.lr.ph235.2, %bb.i, %.lr.ph235.3, %bb.j, %.lr.ph235.4, %bb.k, %.lr.ph235.5, %bb.l, %.preheader135
  %.224.i17.lcssa = phi ptr [ %.022.i13.lcssa, %.preheader135 ], [ %.022.i13.lcssa, %.lr.ph235.preheader ], [ %scevgep, %bb.g ], [ %i.gj, %.lr.ph235.1 ], [ %scevgep, %bb.h ], [ %i.go, %.lr.ph235.2 ], [ %scevgep, %bb.i ], [ %i.gt, %.lr.ph235.3 ], [ %scevgep, %bb.j ], [ %i.gy, %.lr.ph235.4 ], [ %scevgep, %bb.k ], [ %i.hd, %.lr.ph235.5 ], [ %scevgep, %bb.l ], [ %spec.select, %.lr.ph235.6 ]
  %i.hn = ptrtoint ptr %.224.i17.lcssa to i64
  %i.ho = ptrtoint ptr %i.fr to i64
  %i.hp = sub i64 %i.hn, %i.ho
end_hunk_0
begin_hunk_1_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
bb.bu:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bv, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit: ; preds = %bb.bu, %bb.bv
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !7      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !376, !noalias !373
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !373
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !373, !noalias !376
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9, !alias.scope !381, !noalias !378
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !378
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !378, !noalias !381
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !386, !noalias !383
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !383
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !7, !alias.scope !383, !noalias !386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !391, !noalias !388
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !388
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !7, !alias.scope !388, !noalias !391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9, !alias.scope !396, !noalias !393
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !393
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !7, !alias.scope !393, !noalias !396
  %i.ap = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !7, !noalias !35 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !401, !noalias !398
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !398
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !398, !noalias !401
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !406)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !406, !noalias !403
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !403
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !7, !alias.scope !403, !noalias !406
  %i.ca = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %_ZL10UpdateBitsmjmPh.exit.outer

_ZL10UpdateBitsmjmPh.exit.outer:                  ; preds = %bb.bt, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.ayh, %bb.bt ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awy, %bb.bt ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.aww, %bb.bt ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bt ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bt ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %_ZL10UpdateBitsmjmPh.exit

_ZL10UpdateBitsmjmPh.exit.loopexit:               ; preds = %bb.bc
  br label %_ZL10UpdateBitsmjmPh.exit, !llvm.loop !75

_ZL10UpdateBitsmjmPh.exit:                        ; preds = %_ZL10UpdateBitsmjmPh.exit.loopexit, %_ZL10UpdateBitsmjmPh.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajm, %_ZL10UpdateBitsmjmPh.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajl, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %.7.i, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajk, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ct, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @_ZL13kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !76

bb.c:                                             ; preds = %_ZL10UpdateBitsmjmPh.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread74

.thread74:                                        ; preds = %.thread74.backedge, %bb.c
  %.0340.i = phi i32 [ -1, %bb.c ], [ %.0340.i.be, %.thread74.backedge ]
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ]
  %.1325.i = phi ptr [ %.0324.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ] ; 8 uses
  %.0340.i.fr = freeze i32 %.0340.i               ; 4 uses
  %.0335.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0348.i.in.in.in = load i64, ptr %.0335.i, align 1
  %.0348.i.in.in = mul i64 %.0348.i.in.in.in, 8503243848024064
  %.0348.i.in = lshr i64 %.0348.i.in.in, 53       ; 2 uses
  %i.db = sext i32 %.0340.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0340.i.fr, 0
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !77

.split.us.preheader:                              ; preds = %.thread74
  %.0348.i = trunc nuw nsw i64 %.0348.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us205
  %.0359.i.us = phi ptr [ %i.di, %.loopexit.split.us205 ], [ %.0335.i, %.split.us.preheader ] ; 2 uses
  %.0353.i.us = phi i32 [ %i.dj, %.loopexit.split.us205 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1349.i.us = phi i32 [ %7, %.loopexit.split.us205 ], [ %.0348.i, %.split.us.preheader ]
  %i.de = lshr i32 %.0353.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0359.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !78

.lr.ph186.us:                                     ; preds = %.split.us, %.critedge.backedge.us211
  %i.di = phi ptr [ %i.eo, %.critedge.backedge.us211 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in276 = phi i32 [ %i.dj, %.critedge.backedge.us211 ], [ %.0353.i.us, %.split.us ]
  %.2350.i184.us195 = phi i32 [ %7, %.critedge.backedge.us211 ], [ %.1349.i.us, %.split.us ] ; 2 uses
  %.1360.i183.us196 = phi ptr [ %i.di, %.critedge.backedge.us211 ], [ %.0359.i.us, %.split.us ] ; 8 uses
  %i.dj = add i32 %.in276, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 53
  %7 = trunc nuw nsw i64 %i.dl to i32             ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.1360.i183.us196, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dm, align 1
  %i.dn = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dn, label %_ZL7IsMatchPKhS0_.exit7.us200, label %_ZL7IsMatchPKhS0_.exit7.thread.us201

_ZL7IsMatchPKhS0_.exit7.us200:                    ; preds = %.lr.ph186.us
  %i.do = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !9
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.d, label %_ZL7IsMatchPKhS0_.exit7.thread.us201, !prof !77

_ZL7IsMatchPKhS0_.exit7.thread.us201:             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200, %.lr.ph186.us
  %8 = zext nneg i32 %.2350.i184.us195 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv ; 3 uses
  %i.dx = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.dy = sub i64 %i.dx, %i.ca
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !3
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dw, align 1
  %i.ea = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ea, label %_ZL7IsMatchPKhS0_.exit.us204, label %.critedge.backedge.us211

_ZL7IsMatchPKhS0_.exit.us204:                     ; preds = %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.eb = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %.not277 = icmp eq i8 %i.ec, %i.ee
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !79

bb.d:                                             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200
  %i.ef = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.eg = sub i64 %i.ef, %i.ca
  %i.eh = trunc i64 %i.eg to i32
  %9 = zext nneg i32 %.2350.i184.us195 to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %9
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ef, %bb.d ], [ %i.dx, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dm, %bb.d ], [ %i.dw, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %i.ej = ptrtoint ptr %.4365.i65.us to i64
  %i.ek = sub i64 %.pre-phi, %i.ej                ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 262128
  br i1 %i.el, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.em = lshr i32 %i.dj, 5
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.en ; 2 uses
  %i.ep = icmp ugt ptr %i.eo, %i.cy
  br i1 %i.ep, label %.thread101, label %.lr.ph186.us, !prof !80, !llvm.loop !81

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.eu, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ev, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.ex, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.eq = lshr i32 %.0353.i, 5
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.er ; 2 uses
  %i.et = icmp ugt ptr %i.es, %i.cy
  br i1 %i.et, label %.thread101, label %.lr.ph186, !prof !78

.lr.ph186:                                        ; preds = %.split, %.critedge.backedge.us
  %i.eu = phi ptr [ %i.fm, %.critedge.backedge.us ], [ %i.es, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ev, %.critedge.backedge.us ], [ %.0353.i, %.split ]
  %.2350.i184.us = phi i64 [ %i.ex, %.critedge.backedge.us ], [ %.1349.i, %.split ]
  %.1360.i183.us = phi ptr [ %i.eu, %.critedge.backedge.us ], [ %.0359.i, %.split ] ; 4 uses
  %i.ev = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.eu, align 1
  %i.ew = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ex = lshr i64 %i.ew, 53                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2350.i184.us ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %1, i64 %i.fa ; 4 uses
  %i.fc = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fd = sub i64 %i.fc, %i.ca
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !3
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fb, align 1
  %i.ff = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.ff, label %_ZL7IsMatchPKhS0_.exit.us, label %.critedge.backedge.us

_ZL7IsMatchPKhS0_.exit.us:                        ; preds = %.lr.ph186
  %i.fg = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %.not275 = icmp eq i8 %i.fh, %i.fj
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !79

.critedge.backedge.us:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us, %.lr.ph186
  %i.fk = lshr i32 %i.ev, 5
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fl ; 2 uses
  %i.fn = icmp ugt ptr %i.fm, %i.cy
  br i1 %i.fn, label %.thread101, label %.lr.ph186, !prof !80, !llvm.loop !81

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_.exit.us
  %i.fo = ptrtoint ptr %i.fb to i64
  %i.fp = sub i64 %i.fc, %i.fo                    ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, 262128
  br i1 %i.fq, label %.split, label %.split215.us

.split215.us:                                     ; preds = %.loopexit.split.us, %.loopexit.split.us205
  %.us-phi216 = phi i64 [ %.pre-phi, %.loopexit.split.us205 ], [ %i.fc, %.loopexit.split.us ] ; 5 uses
  %.us-phi217 = phi ptr [ %.4365.i65.us, %.loopexit.split.us205 ], [ %i.fb, %.loopexit.split.us ]
  %.us-phi219 = phi i64 [ %i.ek, %.loopexit.split.us205 ], [ %i.fp, %.loopexit.split.us ] ; 2 uses
  %.us-phi220 = phi ptr [ %.1360.i183.us196, %.loopexit.split.us205 ], [ %.1360.i183.us, %.loopexit.split.us ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.us-phi217, i64 5 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.us-phi220, i64 5 ; 2 uses
  %i.ft = sub i64 %i.da, %.us-phi216              ; 3 uses
  %i.fu = icmp ugt i64 %i.ft, 7
  br i1 %i.fu, label %.lr.ph227, label %.preheader135

.preheader135:                                    ; preds = %bb.f, %.split215.us
  %.027.i11.lcssa = phi i64 [ %i.ft, %.split215.us ], [ %i.gh, %bb.f ] ; 8 uses
  %.025.i12.lcssa = phi ptr [ %i.fs, %.split215.us ], [ %i.gf, %bb.f ] ; 7 uses
  %.022.i13.lcssa = phi ptr [ %i.fr, %.split215.us ], [ %i.gg, %bb.f ] ; 10 uses
  %.not.i18231 = icmp eq i64 %.027.i11.lcssa, 0
  br i1 %.not.i18231, label %.critedge.i19, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %.preheader135
  %scevgep = getelementptr i8, ptr %.022.i13.lcssa, i64 %.027.i11.lcssa ; 7 uses
  %i.fv = load i8, ptr %.022.i13.lcssa, align 1, !tbaa !9
  %i.fw = load i8, ptr %.025.i12.lcssa, align 1, !tbaa !9
  %i.fx = icmp eq i8 %i.fv, %i.fw
  br i1 %i.fx, label %bb.g, label %.critedge.i19

.lr.ph227:                                        ; preds = %.split215.us, %bb.f
  %.022.i13225 = phi ptr [ %i.gg, %bb.f ], [ %i.fr, %.split215.us ] ; 3 uses
  %.025.i12224 = phi ptr [ %i.gf, %bb.f ], [ %i.fs, %.split215.us ] ; 2 uses
  %.027.i11223 = phi i64 [ %i.gh, %bb.f ], [ %i.ft, %.split215.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i12224, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i13225, align 1 ; 2 uses
  %.not30.i21 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph227
  %i.fy = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.fz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fy, i1 true)
  %i.ga = ptrtoint ptr %.022.i13225 to i64
  %i.gb = ptrtoint ptr %i.fr to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = lshr i64 %i.fz, 3
  %i.ge = add i64 %i.gc, %i.gd
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit24

bb.f:                                             ; preds = %.lr.ph227
  %i.gf = getelementptr inbounds nuw i8, ptr %.025.i12224, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.022.i13225, i64 8 ; 2 uses
  %i.gh = add i64 %.027.i11223, -8                ; 3 uses
  %i.gi = icmp ugt i64 %i.gh, 7
  br i1 %i.gi, label %.lr.ph227, label %.preheader135, !llvm.loop !82

bb.g:                                             ; preds = %.lr.ph235.preheader
  %.not.i18 = icmp eq i64 %.027.i11.lcssa, 1
  br i1 %.not.i18, label %.critedge.i19, label %.lr.ph235.1

.lr.ph235.1:                                      ; preds = %bb.g
  %i.gj = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 1
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !9
  %i.gn = icmp eq i8 %i.gl, %i.gm
  br i1 %i.gn, label %bb.h, label %.critedge.i19

bb.h:                                             ; preds = %.lr.ph235.1
  %.not.i18.1 = icmp eq i64 %.027.i11.lcssa, 2
  br i1 %.not.i18.1, label %.critedge.i19, label %.lr.ph235.2

.lr.ph235.2:                                      ; preds = %bb.h
  %i.go = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 2
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gs = icmp eq i8 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %.critedge.i19

bb.i:                                             ; preds = %.lr.ph235.2
  %.not.i18.2 = icmp eq i64 %.027.i11.lcssa, 3
  br i1 %.not.i18.2, label %.critedge.i19, label %.lr.ph235.3

.lr.ph235.3:                                      ; preds = %bb.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 3
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gx = icmp eq i8 %i.gv, %i.gw
  br i1 %i.gx, label %bb.j, label %.critedge.i19

bb.j:                                             ; preds = %.lr.ph235.3
  %.not.i18.3 = icmp eq i64 %.027.i11.lcssa, 4
  br i1 %.not.i18.3, label %.critedge.i19, label %.lr.ph235.4

.lr.ph235.4:                                      ; preds = %bb.j
  %i.gy = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 4
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !9
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.hc = icmp eq i8 %i.ha, %i.hb
  br i1 %i.hc, label %bb.k, label %.critedge.i19

bb.k:                                             ; preds = %.lr.ph235.4
  %.not.i18.4 = icmp eq i64 %.027.i11.lcssa, 5
  br i1 %.not.i18.4, label %.critedge.i19, label %.lr.ph235.5

.lr.ph235.5:                                      ; preds = %bb.k
  %i.hd = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 5 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 5
  %i.hf = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !9
  %i.hh = icmp eq i8 %i.hf, %i.hg
  br i1 %i.hh, label %bb.l, label %.critedge.i19

bb.l:                                             ; preds = %.lr.ph235.5
  %.not.i18.5 = icmp eq i64 %.027.i11.lcssa, 6
  br i1 %.not.i18.5, label %.critedge.i19, label %.lr.ph235.6

.lr.ph235.6:                                      ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 6 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 6
  %i.hk = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !9
  %i.hm = icmp eq i8 %i.hk, %i.hl
  %spec.select = select i1 %i.hm, ptr %scevgep, ptr %i.hi
  br label %.critedge.i19

.critedge.i19:                                    ; preds = %.lr.ph235.6, %bb.g, %.lr.ph235.preheader, %.lr.ph235.1, %bb.h, %.lr.ph235.2, %bb.i, %.lr.ph235.3, %bb.j, %.lr.ph235.4, %bb.k, %.lr.ph235.5, %bb.l, %.preheader135
  %.224.i17.lcssa = phi ptr [ %.022.i13.lcssa, %.preheader135 ], [ %.022.i13.lcssa, %.lr.ph235.preheader ], [ %scevgep, %bb.g ], [ %i.gj, %.lr.ph235.1 ], [ %scevgep, %bb.h ], [ %i.go, %.lr.ph235.2 ], [ %scevgep, %bb.i ], [ %i.gt, %.lr.ph235.3 ], [ %scevgep, %bb.j ], [ %i.gy, %.lr.ph235.4 ], [ %scevgep, %bb.k ], [ %i.hd, %.lr.ph235.5 ], [ %scevgep, %bb.l ], [ %spec.select, %.lr.ph235.6 ]
  %i.hn = ptrtoint ptr %.224.i17.lcssa to i64
  %i.ho = ptrtoint ptr %i.fr to i64
  %i.hp = sub i64 %i.hn, %i.ho
end_hunk_1
begin_hunk_2_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
bb.bu:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bv, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit: ; preds = %bb.bu, %bb.bv
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !7      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !693, !noalias !690
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !690
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !690, !noalias !693
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9, !alias.scope !698, !noalias !695
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !695
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !695, !noalias !698
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !703, !noalias !700
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !700
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !7, !alias.scope !700, !noalias !703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !708, !noalias !705
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !705
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !7, !alias.scope !705, !noalias !708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9, !alias.scope !713, !noalias !710
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !710
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !7, !alias.scope !710, !noalias !713
  %i.ap = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !7, !noalias !35 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !718, !noalias !715
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !715
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !715, !noalias !718
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !723, !noalias !720
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !720
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !7, !alias.scope !720, !noalias !723
  %i.ca = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %_ZL10UpdateBitsmjmPh.exit.outer

_ZL10UpdateBitsmjmPh.exit.outer:                  ; preds = %bb.bt, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.ayh, %bb.bt ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awy, %bb.bt ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.aww, %bb.bt ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bt ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bt ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %_ZL10UpdateBitsmjmPh.exit

_ZL10UpdateBitsmjmPh.exit.loopexit:               ; preds = %bb.bc
  br label %_ZL10UpdateBitsmjmPh.exit, !llvm.loop !75

_ZL10UpdateBitsmjmPh.exit:                        ; preds = %_ZL10UpdateBitsmjmPh.exit.loopexit, %_ZL10UpdateBitsmjmPh.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajm, %_ZL10UpdateBitsmjmPh.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajl, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %.7.i, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajk, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ct, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @_ZL13kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !76

bb.c:                                             ; preds = %_ZL10UpdateBitsmjmPh.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread74

.thread74:                                        ; preds = %.thread74.backedge, %bb.c
  %.0340.i = phi i32 [ -1, %bb.c ], [ %.0340.i.be, %.thread74.backedge ]
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ]
  %.1325.i = phi ptr [ %.0324.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ] ; 8 uses
  %.0340.i.fr = freeze i32 %.0340.i               ; 4 uses
  %.0335.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0348.i.in.in.in = load i64, ptr %.0335.i, align 1
  %.0348.i.in.in = mul i64 %.0348.i.in.in.in, 8503243848024064
  %.0348.i.in = lshr i64 %.0348.i.in.in, 51       ; 2 uses
  %i.db = sext i32 %.0340.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0340.i.fr, 0
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !77

.split.us.preheader:                              ; preds = %.thread74
  %.0348.i = trunc nuw nsw i64 %.0348.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us205
  %.0359.i.us = phi ptr [ %i.di, %.loopexit.split.us205 ], [ %.0335.i, %.split.us.preheader ] ; 2 uses
  %.0353.i.us = phi i32 [ %i.dj, %.loopexit.split.us205 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1349.i.us = phi i32 [ %7, %.loopexit.split.us205 ], [ %.0348.i, %.split.us.preheader ]
  %i.de = lshr i32 %.0353.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0359.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !78

.lr.ph186.us:                                     ; preds = %.split.us, %.critedge.backedge.us211
  %i.di = phi ptr [ %i.eo, %.critedge.backedge.us211 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in276 = phi i32 [ %i.dj, %.critedge.backedge.us211 ], [ %.0353.i.us, %.split.us ]
  %.2350.i184.us195 = phi i32 [ %7, %.critedge.backedge.us211 ], [ %.1349.i.us, %.split.us ] ; 2 uses
  %.1360.i183.us196 = phi ptr [ %i.di, %.critedge.backedge.us211 ], [ %.0359.i.us, %.split.us ] ; 8 uses
  %i.dj = add i32 %.in276, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 51
  %7 = trunc nuw nsw i64 %i.dl to i32             ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.1360.i183.us196, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dm, align 1
  %i.dn = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dn, label %_ZL7IsMatchPKhS0_.exit7.us200, label %_ZL7IsMatchPKhS0_.exit7.thread.us201

_ZL7IsMatchPKhS0_.exit7.us200:                    ; preds = %.lr.ph186.us
  %i.do = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !9
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.d, label %_ZL7IsMatchPKhS0_.exit7.thread.us201, !prof !77

_ZL7IsMatchPKhS0_.exit7.thread.us201:             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200, %.lr.ph186.us
  %8 = zext nneg i32 %.2350.i184.us195 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv ; 3 uses
  %i.dx = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.dy = sub i64 %i.dx, %i.ca
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !3
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dw, align 1
  %i.ea = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ea, label %_ZL7IsMatchPKhS0_.exit.us204, label %.critedge.backedge.us211

_ZL7IsMatchPKhS0_.exit.us204:                     ; preds = %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.eb = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %.not277 = icmp eq i8 %i.ec, %i.ee
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !79

bb.d:                                             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200
  %i.ef = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.eg = sub i64 %i.ef, %i.ca
  %i.eh = trunc i64 %i.eg to i32
  %9 = zext nneg i32 %.2350.i184.us195 to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %9
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ef, %bb.d ], [ %i.dx, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dm, %bb.d ], [ %i.dw, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %i.ej = ptrtoint ptr %.4365.i65.us to i64
  %i.ek = sub i64 %.pre-phi, %i.ej                ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 262128
  br i1 %i.el, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.em = lshr i32 %i.dj, 5
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.en ; 2 uses
  %i.ep = icmp ugt ptr %i.eo, %i.cy
  br i1 %i.ep, label %.thread101, label %.lr.ph186.us, !prof !80, !llvm.loop !81

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.eu, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ev, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.ex, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.eq = lshr i32 %.0353.i, 5
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.er ; 2 uses
  %i.et = icmp ugt ptr %i.es, %i.cy
  br i1 %i.et, label %.thread101, label %.lr.ph186, !prof !78

.lr.ph186:                                        ; preds = %.split, %.critedge.backedge.us
  %i.eu = phi ptr [ %i.fm, %.critedge.backedge.us ], [ %i.es, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ev, %.critedge.backedge.us ], [ %.0353.i, %.split ]
  %.2350.i184.us = phi i64 [ %i.ex, %.critedge.backedge.us ], [ %.1349.i, %.split ]
  %.1360.i183.us = phi ptr [ %i.eu, %.critedge.backedge.us ], [ %.0359.i, %.split ] ; 4 uses
  %i.ev = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.eu, align 1
  %i.ew = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ex = lshr i64 %i.ew, 51                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2350.i184.us ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %1, i64 %i.fa ; 4 uses
  %i.fc = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fd = sub i64 %i.fc, %i.ca
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !3
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fb, align 1
  %i.ff = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.ff, label %_ZL7IsMatchPKhS0_.exit.us, label %.critedge.backedge.us

_ZL7IsMatchPKhS0_.exit.us:                        ; preds = %.lr.ph186
  %i.fg = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %.not275 = icmp eq i8 %i.fh, %i.fj
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !79

.critedge.backedge.us:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us, %.lr.ph186
  %i.fk = lshr i32 %i.ev, 5
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fl ; 2 uses
  %i.fn = icmp ugt ptr %i.fm, %i.cy
  br i1 %i.fn, label %.thread101, label %.lr.ph186, !prof !80, !llvm.loop !81

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_.exit.us
  %i.fo = ptrtoint ptr %i.fb to i64
  %i.fp = sub i64 %i.fc, %i.fo                    ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, 262128
  br i1 %i.fq, label %.split, label %.split215.us

.split215.us:                                     ; preds = %.loopexit.split.us, %.loopexit.split.us205
  %.us-phi216 = phi i64 [ %.pre-phi, %.loopexit.split.us205 ], [ %i.fc, %.loopexit.split.us ] ; 5 uses
  %.us-phi217 = phi ptr [ %.4365.i65.us, %.loopexit.split.us205 ], [ %i.fb, %.loopexit.split.us ]
  %.us-phi219 = phi i64 [ %i.ek, %.loopexit.split.us205 ], [ %i.fp, %.loopexit.split.us ] ; 2 uses
  %.us-phi220 = phi ptr [ %.1360.i183.us196, %.loopexit.split.us205 ], [ %.1360.i183.us, %.loopexit.split.us ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.us-phi217, i64 5 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.us-phi220, i64 5 ; 2 uses
  %i.ft = sub i64 %i.da, %.us-phi216              ; 3 uses
  %i.fu = icmp ugt i64 %i.ft, 7
  br i1 %i.fu, label %.lr.ph227, label %.preheader135

.preheader135:                                    ; preds = %bb.f, %.split215.us
  %.027.i11.lcssa = phi i64 [ %i.ft, %.split215.us ], [ %i.gh, %bb.f ] ; 8 uses
  %.025.i12.lcssa = phi ptr [ %i.fs, %.split215.us ], [ %i.gf, %bb.f ] ; 7 uses
  %.022.i13.lcssa = phi ptr [ %i.fr, %.split215.us ], [ %i.gg, %bb.f ] ; 10 uses
  %.not.i18231 = icmp eq i64 %.027.i11.lcssa, 0
  br i1 %.not.i18231, label %.critedge.i19, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %.preheader135
  %scevgep = getelementptr i8, ptr %.022.i13.lcssa, i64 %.027.i11.lcssa ; 7 uses
  %i.fv = load i8, ptr %.022.i13.lcssa, align 1, !tbaa !9
  %i.fw = load i8, ptr %.025.i12.lcssa, align 1, !tbaa !9
  %i.fx = icmp eq i8 %i.fv, %i.fw
  br i1 %i.fx, label %bb.g, label %.critedge.i19

.lr.ph227:                                        ; preds = %.split215.us, %bb.f
  %.022.i13225 = phi ptr [ %i.gg, %bb.f ], [ %i.fr, %.split215.us ] ; 3 uses
  %.025.i12224 = phi ptr [ %i.gf, %bb.f ], [ %i.fs, %.split215.us ] ; 2 uses
  %.027.i11223 = phi i64 [ %i.gh, %bb.f ], [ %i.ft, %.split215.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i12224, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i13225, align 1 ; 2 uses
  %.not30.i21 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph227
  %i.fy = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.fz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fy, i1 true)
  %i.ga = ptrtoint ptr %.022.i13225 to i64
  %i.gb = ptrtoint ptr %i.fr to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = lshr i64 %i.fz, 3
  %i.ge = add i64 %i.gc, %i.gd
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit24

bb.f:                                             ; preds = %.lr.ph227
  %i.gf = getelementptr inbounds nuw i8, ptr %.025.i12224, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.022.i13225, i64 8 ; 2 uses
  %i.gh = add i64 %.027.i11223, -8                ; 3 uses
  %i.gi = icmp ugt i64 %i.gh, 7
  br i1 %i.gi, label %.lr.ph227, label %.preheader135, !llvm.loop !82

bb.g:                                             ; preds = %.lr.ph235.preheader
  %.not.i18 = icmp eq i64 %.027.i11.lcssa, 1
  br i1 %.not.i18, label %.critedge.i19, label %.lr.ph235.1

.lr.ph235.1:                                      ; preds = %bb.g
  %i.gj = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 1
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !9
  %i.gn = icmp eq i8 %i.gl, %i.gm
  br i1 %i.gn, label %bb.h, label %.critedge.i19

bb.h:                                             ; preds = %.lr.ph235.1
  %.not.i18.1 = icmp eq i64 %.027.i11.lcssa, 2
  br i1 %.not.i18.1, label %.critedge.i19, label %.lr.ph235.2

.lr.ph235.2:                                      ; preds = %bb.h
  %i.go = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 2
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gs = icmp eq i8 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %.critedge.i19

bb.i:                                             ; preds = %.lr.ph235.2
  %.not.i18.2 = icmp eq i64 %.027.i11.lcssa, 3
  br i1 %.not.i18.2, label %.critedge.i19, label %.lr.ph235.3

.lr.ph235.3:                                      ; preds = %bb.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 3
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gx = icmp eq i8 %i.gv, %i.gw
  br i1 %i.gx, label %bb.j, label %.critedge.i19

bb.j:                                             ; preds = %.lr.ph235.3
  %.not.i18.3 = icmp eq i64 %.027.i11.lcssa, 4
  br i1 %.not.i18.3, label %.critedge.i19, label %.lr.ph235.4

.lr.ph235.4:                                      ; preds = %bb.j
  %i.gy = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 4
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !9
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.hc = icmp eq i8 %i.ha, %i.hb
  br i1 %i.hc, label %bb.k, label %.critedge.i19

bb.k:                                             ; preds = %.lr.ph235.4
  %.not.i18.4 = icmp eq i64 %.027.i11.lcssa, 5
  br i1 %.not.i18.4, label %.critedge.i19, label %.lr.ph235.5

.lr.ph235.5:                                      ; preds = %bb.k
  %i.hd = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 5 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 5
  %i.hf = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !9
  %i.hh = icmp eq i8 %i.hf, %i.hg
  br i1 %i.hh, label %bb.l, label %.critedge.i19

bb.l:                                             ; preds = %.lr.ph235.5
  %.not.i18.5 = icmp eq i64 %.027.i11.lcssa, 6
  br i1 %.not.i18.5, label %.critedge.i19, label %.lr.ph235.6

.lr.ph235.6:                                      ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 6 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 6
  %i.hk = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !9
  %i.hm = icmp eq i8 %i.hk, %i.hl
  %spec.select = select i1 %i.hm, ptr %scevgep, ptr %i.hi
  br label %.critedge.i19

.critedge.i19:                                    ; preds = %.lr.ph235.6, %bb.g, %.lr.ph235.preheader, %.lr.ph235.1, %bb.h, %.lr.ph235.2, %bb.i, %.lr.ph235.3, %bb.j, %.lr.ph235.4, %bb.k, %.lr.ph235.5, %bb.l, %.preheader135
  %.224.i17.lcssa = phi ptr [ %.022.i13.lcssa, %.preheader135 ], [ %.022.i13.lcssa, %.lr.ph235.preheader ], [ %scevgep, %bb.g ], [ %i.gj, %.lr.ph235.1 ], [ %scevgep, %bb.h ], [ %i.go, %.lr.ph235.2 ], [ %scevgep, %bb.i ], [ %i.gt, %.lr.ph235.3 ], [ %scevgep, %bb.j ], [ %i.gy, %.lr.ph235.4 ], [ %scevgep, %bb.k ], [ %i.hd, %.lr.ph235.5 ], [ %scevgep, %bb.l ], [ %spec.select, %.lr.ph235.6 ]
  %i.hn = ptrtoint ptr %.224.i17.lcssa to i64
  %i.ho = ptrtoint ptr %i.fr to i64
  %i.hp = sub i64 %i.hn, %i.ho
end_hunk_2
begin_hunk_3_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
bb.bu:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bv, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit: ; preds = %bb.bu, %bb.bv
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !7      ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !alias.scope !1010, !noalias !1007
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !1007
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !7, !alias.scope !1007, !noalias !1010
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9, !alias.scope !1015, !noalias !1012
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !1012
  store i64 %i.g, ptr %5, align 8, !tbaa !7, !alias.scope !1012, !noalias !1015
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !alias.scope !1020, !noalias !1017
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !1017
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !7, !alias.scope !1017, !noalias !1020
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9, !alias.scope !1025, !noalias !1022
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !1022
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !7, !alias.scope !1022, !noalias !1025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9, !alias.scope !1030, !noalias !1027
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !1027
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !7, !alias.scope !1027, !noalias !1030
  %i.ap = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre360 = load i64, ptr %5, align 8, !tbaa !7, !noalias !35 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre360, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0347.i182 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0347.i182, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !1035, !noalias !1032
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !1032
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !7, !alias.scope !1032, !noalias !1035
  %i.bh = add i64 %.0347.i182, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !61 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre360, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa180 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa180, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa180, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !9, !alias.scope !1040, !noalias !1037
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !1037
  %i.bz = add i64 %i.bl, %i.bm
  store i64 %i.bz, ptr %5, align 8, !tbaa !7, !alias.scope !1037, !noalias !1040
  %i.ca = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 831 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1022 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1404 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 830 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 829 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1018 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 807 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 974 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1308 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 3 uses
  br label %_ZL10UpdateBitsmjmPh.exit.outer

_ZL10UpdateBitsmjmPh.exit.outer:                  ; preds = %bb.bt, %._crit_edge
  %.0334.i.ph = phi i64 [ %i.ayh, %bb.bt ], [ %i.ap, %._crit_edge ]
  %.0333.i.ph = phi i64 [ %i.awy, %bb.bt ], [ %i.g, %._crit_edge ] ; 3 uses
  %.0332.i.ph = phi i64 [ %i.aww, %bb.bt ], [ %i.e, %._crit_edge ] ; 2 uses
  %.0330.i.ph = phi ptr [ %.8.i, %bb.bt ], [ %1, %._crit_edge ] ; 5 uses
  %.0318.i.ph = phi i64 [ %.5323.i, %bb.bt ], [ %2, %._crit_edge ]
  %i.cr = ptrtoint ptr %.0330.i.ph to i64         ; 2 uses
  %i.cs = icmp ult i64 %.0334.i.ph, 981           ; 2 uses
  br label %_ZL10UpdateBitsmjmPh.exit

_ZL10UpdateBitsmjmPh.exit.loopexit:               ; preds = %bb.bc
  br label %_ZL10UpdateBitsmjmPh.exit, !llvm.loop !75

_ZL10UpdateBitsmjmPh.exit:                        ; preds = %_ZL10UpdateBitsmjmPh.exit.loopexit, %_ZL10UpdateBitsmjmPh.exit.outer
  %.0332.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajm, %_ZL10UpdateBitsmjmPh.exit.loopexit ]
  %.0331.i = phi i64 [ %.0332.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajl, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 6 uses
  %.0324.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %.7.i, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 2 uses
  %.0318.i = phi i64 [ %.0318.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ajk, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 3 uses
  %.0.i = phi ptr [ %.0330.i.ph, %_ZL10UpdateBitsmjmPh.exit.outer ], [ %i.ct, %_ZL10UpdateBitsmjmPh.exit.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 16 dereferenceable(512) @_ZL13kCmdHistoSeed, i64 512, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.0331.i ; 14 uses
  %i.cu = icmp samesign ugt i64 %.0331.i, 15
  br i1 %i.cu, label %bb.c, label %.thread101, !prof !76

bb.c:                                             ; preds = %_ZL10UpdateBitsmjmPh.exit
  %i.cv = add nsw i64 %.0331.i, -5
  %i.cw = add i64 %.0318.i, -16
  %i.cx = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 range(i64 -15, -16) %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.cx ; 6 uses
  %i.cz = ptrtoint ptr %i.ct to i64
  %i.da = add i64 %i.cz, -5                       ; 2 uses
  br label %.thread74

.thread74:                                        ; preds = %.thread74.backedge, %bb.c
  %.0340.i = phi i32 [ -1, %bb.c ], [ %.0340.i.be, %.thread74.backedge ]
  %.0.i.pn = phi ptr [ %.0.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ]
  %.1325.i = phi ptr [ %.0324.i, %bb.c ], [ %.1325.i.be, %.thread74.backedge ] ; 8 uses
  %.0340.i.fr = freeze i32 %.0340.i               ; 4 uses
  %.0335.i = getelementptr inbounds nuw i8, ptr %.0.i.pn, i64 1 ; 3 uses
  %.0348.i.in.in.in = load i64, ptr %.0335.i, align 1
  %.0348.i.in.in = mul i64 %.0348.i.in.in.in, 8503243848024064
  %.0348.i.in = lshr i64 %.0348.i.in.in, 49       ; 2 uses
  %i.db = sext i32 %.0340.i.fr to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = icmp sgt i32 %.0340.i.fr, 0
  br i1 %i.dd, label %.split.us.preheader, label %.split, !prof !77

.split.us.preheader:                              ; preds = %.thread74
  %.0348.i = trunc nuw nsw i64 %.0348.i.in to i32
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.split.us205
  %.0359.i.us = phi ptr [ %i.di, %.loopexit.split.us205 ], [ %.0335.i, %.split.us.preheader ] ; 2 uses
  %.0353.i.us = phi i32 [ %i.dj, %.loopexit.split.us205 ], [ 32, %.split.us.preheader ] ; 2 uses
  %.1349.i.us = phi i32 [ %7, %.loopexit.split.us205 ], [ %.0348.i, %.split.us.preheader ]
  %i.de = lshr i32 %.0353.i.us, 5
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.0359.i.us, i64 %i.df ; 2 uses
  %i.dh = icmp ugt ptr %i.dg, %i.cy
  br i1 %i.dh, label %.thread101, label %.lr.ph186.us, !prof !78

.lr.ph186.us:                                     ; preds = %.split.us, %.critedge.backedge.us211
  %i.di = phi ptr [ %i.eo, %.critedge.backedge.us211 ], [ %i.dg, %.split.us ] ; 4 uses
  %.in276 = phi i32 [ %i.dj, %.critedge.backedge.us211 ], [ %.0353.i.us, %.split.us ]
  %.2350.i184.us195 = phi i32 [ %7, %.critedge.backedge.us211 ], [ %.1349.i.us, %.split.us ] ; 2 uses
  %.1360.i183.us196 = phi ptr [ %i.di, %.critedge.backedge.us211 ], [ %.0359.i.us, %.split.us ] ; 8 uses
  %i.dj = add i32 %.in276, 1                      ; 3 uses
  %.0.copyload.i41.us197 = load i64, ptr %i.di, align 1
  %i.dk = mul i64 %.0.copyload.i41.us197, 8503243848024064
  %i.dl = lshr i64 %i.dk, 49
  %7 = trunc nuw nsw i64 %i.dl to i32             ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.1360.i183.us196, i64 %i.dc ; 3 uses
  %.0.copyload.i47.us198 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i46.us199 = load i32, ptr %i.dm, align 1
  %i.dn = icmp eq i32 %.0.copyload.i47.us198, %.0.copyload.i46.us199
  br i1 %i.dn, label %_ZL7IsMatchPKhS0_.exit7.us200, label %_ZL7IsMatchPKhS0_.exit7.thread.us201

_ZL7IsMatchPKhS0_.exit7.us200:                    ; preds = %.lr.ph186.us
  %i.do = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !9
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.d, label %_ZL7IsMatchPKhS0_.exit7.thread.us201, !prof !77

_ZL7IsMatchPKhS0_.exit7.thread.us201:             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200, %.lr.ph186.us
  %8 = zext nneg i32 %.2350.i184.us195 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %8 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %1, i64 %i.dv ; 3 uses
  %i.dx = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.dy = sub i64 %i.dx, %i.ca
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dt, align 4, !tbaa !3
  %.0.copyload.i51.us202 = load i32, ptr %.1360.i183.us196, align 1
  %.0.copyload.i50.us203 = load i32, ptr %i.dw, align 1
  %i.ea = icmp eq i32 %.0.copyload.i51.us202, %.0.copyload.i50.us203
  br i1 %i.ea, label %_ZL7IsMatchPKhS0_.exit.us204, label %.critedge.backedge.us211

_ZL7IsMatchPKhS0_.exit.us204:                     ; preds = %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.eb = getelementptr inbounds nuw i8, ptr %.1360.i183.us196, i64 4
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !9
  %.not277 = icmp eq i8 %i.ec, %i.ee
  br i1 %.not277, label %.loopexit.split.us205, label %.critedge.backedge.us211, !prof !79

bb.d:                                             ; preds = %_ZL7IsMatchPKhS0_.exit7.us200
  %i.ef = ptrtoint ptr %.1360.i183.us196 to i64   ; 2 uses
  %i.eg = sub i64 %i.ef, %i.ca
  %i.eh = trunc i64 %i.eg to i32
  %9 = zext nneg i32 %.2350.i184.us195 to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %9
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  br label %.loopexit.split.us205

.loopexit.split.us205:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %bb.d
  %.pre-phi = phi i64 [ %i.ef, %bb.d ], [ %i.dx, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %.4365.i65.us = phi ptr [ %i.dm, %bb.d ], [ %i.dw, %_ZL7IsMatchPKhS0_.exit.us204 ] ; 2 uses
  %i.ej = ptrtoint ptr %.4365.i65.us to i64
  %i.ek = sub i64 %.pre-phi, %i.ej                ; 2 uses
  %i.el = icmp sgt i64 %i.ek, 262128
  br i1 %i.el, label %.split.us, label %.split215.us

.critedge.backedge.us211:                         ; preds = %_ZL7IsMatchPKhS0_.exit.us204, %_ZL7IsMatchPKhS0_.exit7.thread.us201
  %i.em = lshr i32 %i.dj, 5
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.en ; 2 uses
  %i.ep = icmp ugt ptr %i.eo, %i.cy
  br i1 %i.ep, label %.thread101, label %.lr.ph186.us, !prof !80, !llvm.loop !81

.split:                                           ; preds = %.thread74, %.loopexit.split.us
  %.0359.i = phi ptr [ %i.eu, %.loopexit.split.us ], [ %.0335.i, %.thread74 ] ; 2 uses
  %.0353.i = phi i32 [ %i.ev, %.loopexit.split.us ], [ 32, %.thread74 ] ; 2 uses
  %.1349.i = phi i64 [ %i.ex, %.loopexit.split.us ], [ %.0348.i.in, %.thread74 ]
  %i.eq = lshr i32 %.0353.i, 5
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.0359.i, i64 %i.er ; 2 uses
  %i.et = icmp ugt ptr %i.es, %i.cy
  br i1 %i.et, label %.thread101, label %.lr.ph186, !prof !78

.lr.ph186:                                        ; preds = %.split, %.critedge.backedge.us
  %i.eu = phi ptr [ %i.fm, %.critedge.backedge.us ], [ %i.es, %.split ] ; 4 uses
  %.in = phi i32 [ %i.ev, %.critedge.backedge.us ], [ %.0353.i, %.split ]
  %.2350.i184.us = phi i64 [ %i.ex, %.critedge.backedge.us ], [ %.1349.i, %.split ]
  %.1360.i183.us = phi ptr [ %i.eu, %.critedge.backedge.us ], [ %.0359.i, %.split ] ; 4 uses
  %i.ev = add i32 %.in, 1                         ; 3 uses
  %.0.copyload.i41.us = load i64, ptr %i.eu, align 1
  %i.ew = mul i64 %.0.copyload.i41.us, 8503243848024064
  %i.ex = lshr i64 %i.ew, 49                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.2350.i184.us ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %1, i64 %i.fa ; 4 uses
  %i.fc = ptrtoint ptr %.1360.i183.us to i64      ; 3 uses
  %i.fd = sub i64 %i.fc, %i.ca
  %i.fe = trunc i64 %i.fd to i32
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !3
  %.0.copyload.i51.us = load i32, ptr %.1360.i183.us, align 1
  %.0.copyload.i50.us = load i32, ptr %i.fb, align 1
  %i.ff = icmp eq i32 %.0.copyload.i51.us, %.0.copyload.i50.us
  br i1 %i.ff, label %_ZL7IsMatchPKhS0_.exit.us, label %.critedge.backedge.us

_ZL7IsMatchPKhS0_.exit.us:                        ; preds = %.lr.ph186
  %i.fg = getelementptr inbounds nuw i8, ptr %.1360.i183.us, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9
  %.not275 = icmp eq i8 %i.fh, %i.fj
  br i1 %.not275, label %.loopexit.split.us, label %.critedge.backedge.us, !prof !79

.critedge.backedge.us:                            ; preds = %_ZL7IsMatchPKhS0_.exit.us, %.lr.ph186
  %i.fk = lshr i32 %i.ev, 5
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.fl ; 2 uses
  %i.fn = icmp ugt ptr %i.fm, %i.cy
  br i1 %i.fn, label %.thread101, label %.lr.ph186, !prof !80, !llvm.loop !81

.loopexit.split.us:                               ; preds = %_ZL7IsMatchPKhS0_.exit.us
  %i.fo = ptrtoint ptr %i.fb to i64
  %i.fp = sub i64 %i.fc, %i.fo                    ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, 262128
  br i1 %i.fq, label %.split, label %.split215.us

.split215.us:                                     ; preds = %.loopexit.split.us, %.loopexit.split.us205
  %.us-phi216 = phi i64 [ %.pre-phi, %.loopexit.split.us205 ], [ %i.fc, %.loopexit.split.us ] ; 5 uses
  %.us-phi217 = phi ptr [ %.4365.i65.us, %.loopexit.split.us205 ], [ %i.fb, %.loopexit.split.us ]
  %.us-phi219 = phi i64 [ %i.ek, %.loopexit.split.us205 ], [ %i.fp, %.loopexit.split.us ] ; 2 uses
  %.us-phi220 = phi ptr [ %.1360.i183.us196, %.loopexit.split.us205 ], [ %.1360.i183.us, %.loopexit.split.us ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.us-phi217, i64 5 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.us-phi220, i64 5 ; 2 uses
  %i.ft = sub i64 %i.da, %.us-phi216              ; 3 uses
  %i.fu = icmp ugt i64 %i.ft, 7
  br i1 %i.fu, label %.lr.ph227, label %.preheader135

.preheader135:                                    ; preds = %bb.f, %.split215.us
  %.027.i11.lcssa = phi i64 [ %i.ft, %.split215.us ], [ %i.gh, %bb.f ] ; 8 uses
  %.025.i12.lcssa = phi ptr [ %i.fs, %.split215.us ], [ %i.gf, %bb.f ] ; 7 uses
  %.022.i13.lcssa = phi ptr [ %i.fr, %.split215.us ], [ %i.gg, %bb.f ] ; 10 uses
  %.not.i18231 = icmp eq i64 %.027.i11.lcssa, 0
  br i1 %.not.i18231, label %.critedge.i19, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %.preheader135
  %scevgep = getelementptr i8, ptr %.022.i13.lcssa, i64 %.027.i11.lcssa ; 7 uses
  %i.fv = load i8, ptr %.022.i13.lcssa, align 1, !tbaa !9
  %i.fw = load i8, ptr %.025.i12.lcssa, align 1, !tbaa !9
  %i.fx = icmp eq i8 %i.fv, %i.fw
  br i1 %i.fx, label %bb.g, label %.critedge.i19

.lr.ph227:                                        ; preds = %.split215.us, %bb.f
  %.022.i13225 = phi ptr [ %i.gg, %bb.f ], [ %i.fr, %.split215.us ] ; 3 uses
  %.025.i12224 = phi ptr [ %i.gf, %bb.f ], [ %i.fs, %.split215.us ] ; 2 uses
  %.027.i11223 = phi i64 [ %i.gh, %bb.f ], [ %i.ft, %.split215.us ]
  %.0.copyload.i37 = load i64, ptr %.025.i12224, align 1 ; 2 uses
  %.0.copyload.i = load i64, ptr %.022.i13225, align 1 ; 2 uses
  %.not30.i21 = icmp eq i64 %.0.copyload.i37, %.0.copyload.i
  br i1 %.not30.i21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph227
  %i.fy = xor i64 %.0.copyload.i, %.0.copyload.i37
  %i.fz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fy, i1 true)
  %i.ga = ptrtoint ptr %.022.i13225 to i64
  %i.gb = ptrtoint ptr %i.fr to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = lshr i64 %i.fz, 3
  %i.ge = add i64 %i.gc, %i.gd
  br label %_ZN13duckdb_brotliL24FindMatchLengthWithLimitEPKhS1_m.exit24

bb.f:                                             ; preds = %.lr.ph227
  %i.gf = getelementptr inbounds nuw i8, ptr %.025.i12224, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.022.i13225, i64 8 ; 2 uses
  %i.gh = add i64 %.027.i11223, -8                ; 3 uses
  %i.gi = icmp ugt i64 %i.gh, 7
  br i1 %i.gi, label %.lr.ph227, label %.preheader135, !llvm.loop !82

bb.g:                                             ; preds = %.lr.ph235.preheader
  %.not.i18 = icmp eq i64 %.027.i11.lcssa, 1
  br i1 %.not.i18, label %.critedge.i19, label %.lr.ph235.1

.lr.ph235.1:                                      ; preds = %bb.g
  %i.gj = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 1
  %i.gl = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !9
  %i.gn = icmp eq i8 %i.gl, %i.gm
  br i1 %i.gn, label %bb.h, label %.critedge.i19

bb.h:                                             ; preds = %.lr.ph235.1
  %.not.i18.1 = icmp eq i64 %.027.i11.lcssa, 2
  br i1 %.not.i18.1, label %.critedge.i19, label %.lr.ph235.2

.lr.ph235.2:                                      ; preds = %bb.h
  %i.go = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 2 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 2
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !9
  %i.gr = load i8, ptr %i.gp, align 1, !tbaa !9
  %i.gs = icmp eq i8 %i.gq, %i.gr
  br i1 %i.gs, label %bb.i, label %.critedge.i19

bb.i:                                             ; preds = %.lr.ph235.2
  %.not.i18.2 = icmp eq i64 %.027.i11.lcssa, 3
  br i1 %.not.i18.2, label %.critedge.i19, label %.lr.ph235.3

.lr.ph235.3:                                      ; preds = %bb.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 3 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 3
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !9
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !9
  %i.gx = icmp eq i8 %i.gv, %i.gw
  br i1 %i.gx, label %bb.j, label %.critedge.i19

bb.j:                                             ; preds = %.lr.ph235.3
  %.not.i18.3 = icmp eq i64 %.027.i11.lcssa, 4
  br i1 %.not.i18.3, label %.critedge.i19, label %.lr.ph235.4

.lr.ph235.4:                                      ; preds = %bb.j
  %i.gy = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 4 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 4
  %i.ha = load i8, ptr %i.gy, align 1, !tbaa !9
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.hc = icmp eq i8 %i.ha, %i.hb
  br i1 %i.hc, label %bb.k, label %.critedge.i19

bb.k:                                             ; preds = %.lr.ph235.4
  %.not.i18.4 = icmp eq i64 %.027.i11.lcssa, 5
  br i1 %.not.i18.4, label %.critedge.i19, label %.lr.ph235.5

.lr.ph235.5:                                      ; preds = %bb.k
  %i.hd = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 5 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 5
  %i.hf = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hg = load i8, ptr %i.he, align 1, !tbaa !9
  %i.hh = icmp eq i8 %i.hf, %i.hg
  br i1 %i.hh, label %bb.l, label %.critedge.i19

bb.l:                                             ; preds = %.lr.ph235.5
  %.not.i18.5 = icmp eq i64 %.027.i11.lcssa, 6
  br i1 %.not.i18.5, label %.critedge.i19, label %.lr.ph235.6

.lr.ph235.6:                                      ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw i8, ptr %.022.i13.lcssa, i64 6 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.025.i12.lcssa, i64 6
  %i.hk = load i8, ptr %i.hi, align 1, !tbaa !9
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !9
  %i.hm = icmp eq i8 %i.hk, %i.hl
  %spec.select = select i1 %i.hm, ptr %scevgep, ptr %i.hi
  br label %.critedge.i19

.critedge.i19:                                    ; preds = %.lr.ph235.6, %bb.g, %.lr.ph235.preheader, %.lr.ph235.1, %bb.h, %.lr.ph235.2, %bb.i, %.lr.ph235.3, %bb.j, %.lr.ph235.4, %bb.k, %.lr.ph235.5, %bb.l, %.preheader135
  %.224.i17.lcssa = phi ptr [ %.022.i13.lcssa, %.preheader135 ], [ %.022.i13.lcssa, %.lr.ph235.preheader ], [ %scevgep, %bb.g ], [ %i.gj, %.lr.ph235.1 ], [ %scevgep, %bb.h ], [ %i.go, %.lr.ph235.2 ], [ %scevgep, %bb.i ], [ %i.gt, %.lr.ph235.3 ], [ %scevgep, %bb.j ], [ %i.gy, %.lr.ph235.4 ], [ %scevgep, %bb.k ], [ %i.hd, %.lr.ph235.5 ], [ %scevgep, %bb.l ], [ %spec.select, %.lr.ph235.6 ]
  %i.hn = ptrtoint ptr %.224.i17.lcssa to i64
  %i.ho = ptrtoint ptr %i.fr to i64
  %i.hp = sub i64 %i.hn, %i.ho
end_hunk_3
