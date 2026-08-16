inline.NumInlined: 3033
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_ZN5boost5beast4zlib6detail14deflate_stream10build_treeEPNS3_9tree_descE:bb.a
  br i1 %i.et, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i.i
  %i.eu = icmp eq i16 %i.dr, %i.es
  br i1 %i.eu, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i.i

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i.i: ; preds = %bb.o
  %i.ev = load i8, ptr %i.dp, align 1, !tbaa !20
  %i.ew = getelementptr inbounds i8, ptr %i.dg, i64 %i.eq
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !20
  %.not24.i.i = icmp ugt i8 %i.ev, %i.ex
  br i1 %.not24.i.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i.i

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i.i: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i.i, %bb.o
  %i.ey = sext i32 %.01727.i.i to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.ey
  store i32 %i.ep, ptr %i.ez, align 4, !tbaa !178
  %.0.i.i = shl i32 %.1.i.i, 1                    ; 2 uses
  %i.fa = load i32, ptr %i.g, align 4, !tbaa !1067 ; 2 uses
  %.not.i.i = icmp sgt i32 %.0.i.i, %i.fa
  br i1 %.not.i.i, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i.i, label %bb.l, !llvm.loop !1068

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i.i: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i.i
  %.017.lcssa.ph.i.i = phi i32 [ %.1.i.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i.i ], [ %.01727.i.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i.i ], [ %.01727.i.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i.i ]
  %.pre.i.i = sext i32 %.017.lcssa.ph.i.i to i64
  br label %_ZN5boost5beast4zlib6detail14deflate_stream8pqremoveEPKNS3_7ct_dataERi.exit

_ZN5boost5beast4zlib6detail14deflate_stream8pqremoveEPKNS3_7ct_dataERi.exit: ; preds = %bb.k, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i.i ], [ 1, %bb.k ]
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.de, i64 %.pre-phi.i.i
  store i32 %i.dn, ptr %i.fb, align 4, !tbaa !178
  %i.fc = load i32, ptr %i.df, align 4, !tbaa !178 ; 2 uses
  %i.fd = load i32, ptr %i.h, align 8, !tbaa !1072
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %i.h, align 8, !tbaa !1072
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.ff
  store i32 %i.dj, ptr %i.fg, align 4, !tbaa !178
  %i.fh = load i32, ptr %i.h, align 8, !tbaa !1072
  %i.fi = add nsw i32 %i.fh, -1                   ; 2 uses
  store i32 %i.fi, ptr %i.h, align 8, !tbaa !1072
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.fj
  store i32 %i.fc, ptr %i.fk, align 4, !tbaa !178
  %i.fl = sext i32 %i.dj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fl ; 2 uses
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !935
  %i.fo = sext i32 %i.fc to i64                   ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fo ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !935
  %i.fr = add i16 %i.fq, %i.fn
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv92 ; 2 uses
  store i16 %i.fr, ptr %i.fs, align 2, !tbaa !935
  %i.ft = getelementptr inbounds i8, ptr %i.dg, i64 %i.fl
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !20
  %i.fv = getelementptr inbounds i8, ptr %i.dg, i64 %i.fo
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !20
  %. = tail call i8 @llvm.umax.i8(i8 %i.fu, i8 %i.fw)
  %i.fx = add i8 %., 1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv92 ; 2 uses
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !20
  %i.fz = trunc nuw nsw i64 %indvars.iv92 to i32  ; 2 uses
  %i.ga = trunc i64 %indvars.iv92 to i16          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !931
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  store i16 %i.ga, ptr %i.gc, align 2, !tbaa !931
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  store i32 %i.fz, ptr %i.df, align 4, !tbaa !178
  %i.gd = load i32, ptr %i.g, align 4, !tbaa !1067 ; 2 uses
  %.not26.i45 = icmp slt i32 %i.gd, 2
  br i1 %.not26.i45, label %_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit66, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream8pqremoveEPKNS3_7ct_dataERi.exit
  %i.ge = load i16, ptr %i.fs, align 2, !tbaa !935 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54, %.lr.ph.i46
  %i.gf = phi i32 [ %i.gd, %.lr.ph.i46 ], [ %i.hn, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54 ]
  %.028.i47 = phi i32 [ 2, %.lr.ph.i46 ], [ %.0.i55, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54 ] ; 7 uses
  %.01727.i48 = phi i32 [ 1, %.lr.ph.i46 ], [ %.1.i53, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54 ] ; 3 uses
  %i.gg = icmp slt i32 %.028.i47, %i.gf
  br i1 %i.gg, label %bb.q, label %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i49

._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i49: ; preds = %bb.p
  %.pre31.i50 = sext i32 %.028.i47 to i64
  br label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i51

bb.q:                                             ; preds = %bb.p
  %i.gh = or disjoint i32 %.028.i47, 1            ; 2 uses
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !178
  %i.gl = sext i32 %.028.i47 to i64               ; 3 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !178
  %i.go = sext i32 %i.gk to i64                   ; 2 uses
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !935 ; 2 uses
  %i.gr = sext i32 %i.gn to i64                   ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !935 ; 2 uses
  %i.gu = icmp ult i16 %i.gq, %i.gt
  br i1 %i.gu, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i65, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gv = icmp eq i16 %i.gq, %i.gt
  br i1 %i.gv, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i63, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i51

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i63: ; preds = %bb.r
  %i.gw = getelementptr inbounds i8, ptr %i.dg, i64 %i.go
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !20
  %i.gy = getelementptr inbounds i8, ptr %i.dg, i64 %i.gr
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !20
  %i.ha = icmp ule i8 %i.gx, %i.gz
  %cond.fr.i64 = freeze i1 %i.ha
  br i1 %cond.fr.i64, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i65, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i51

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i65: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i63, %bb.q
  br label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i51

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i51: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i65, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i63, %bb.r, %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i49
  %.pre-phi32.i52 = phi i64 [ %.pre31.i50, %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i49 ], [ %i.gl, %bb.r ], [ %i.gi, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i65 ], [ %i.gl, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i63 ]
  %.1.i53 = phi i32 [ %.028.i47, %._ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21_crit_edge.i49 ], [ %.028.i47, %bb.r ], [ %i.gh, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread.i65 ], [ %.028.i47, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.i63 ] ; 3 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.de, i64 %.pre-phi32.i52
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !178 ; 2 uses
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !935 ; 2 uses
  %i.hg = icmp ult i16 %i.ge, %i.hf
  br i1 %i.hg, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i57, label %bb.s

bb.s:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i51
  %i.hh = icmp eq i16 %i.ge, %i.hf
  br i1 %i.hh, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i61, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i61: ; preds = %bb.s
  %i.hi = load i8, ptr %i.fy, align 1, !tbaa !20
  %i.hj = getelementptr inbounds i8, ptr %i.dg, i64 %i.hd
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !20
  %.not24.i62 = icmp ugt i8 %i.hi, %i.hk
  br i1 %.not24.i62, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i57

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i61, %bb.s
  %i.hl = sext i32 %.01727.i48 to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.hl
  store i32 %i.hc, ptr %i.hm, align 4, !tbaa !178
  %.0.i55 = shl i32 %.1.i53, 1                    ; 2 uses
  %i.hn = load i32, ptr %i.g, align 4, !tbaa !1067 ; 2 uses
  %.not.i56 = icmp sgt i32 %.0.i55, %i.hn
  br i1 %.not.i56, label %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i57, label %bb.p, !llvm.loop !1068

_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i57: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i61, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i51
  %.017.lcssa.ph.i58 = phi i32 [ %.1.i53, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread23.i54 ], [ %.01727.i48, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.i61 ], [ %.01727.i48, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit.thread21.i51 ]
  %.pre.i59 = sext i32 %.017.lcssa.ph.i58 to i64
  br label %_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit66

_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit66: ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream8pqremoveEPKNS3_7ct_dataERi.exit, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i57
  %.pre-phi.i60 = phi i64 [ %.pre.i59, %_ZN5boost5beast4zlib6detail14deflate_stream7smallerEPKNS3_7ct_dataEii.exit19.thread.loopexit.i57 ], [ 1, %_ZN5boost5beast4zlib6detail14deflate_stream8pqremoveEPKNS3_7ct_dataERi.exit ]
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.de, i64 %.pre-phi.i60
  store i32 %i.fz, ptr %i.ho, align 4, !tbaa !178
  %i.hp = load i32, ptr %i.g, align 4, !tbaa !1067 ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, 1
  br i1 %i.hq, label %bb.k, label %bb.t, !llvm.loop !1081

bb.t:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream10pqdownheapEPKNS3_7ct_dataEi.exit66
  %i.hr = load i32, ptr %i.df, align 4, !tbaa !178
  %i.hs = load i32, ptr %i.h, align 8, !tbaa !1072
  %i.ht = add nsw i32 %i.hs, -1                   ; 2 uses
  store i32 %i.ht, ptr %i.h, align 8, !tbaa !1072
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.hu
  store i32 %i.hr, ptr %i.hv, align 4, !tbaa !178
  tail call void @_ZN5boost5beast4zlib6detail14deflate_stream10gen_bitlenEPNS3_9tree_descE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull %1)
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 2968
  tail call void @_ZN5boost5beast4zlib6detail14deflate_stream9gen_codesEPNS3_7ct_dataEiPt(ptr noundef nonnull %i.a, i32 noundef %.2.lcssa, ptr noundef nonnull %i.hw)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !931  ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr [4 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 6
  store i16 -1, ptr %i.e, align 2, !tbaa !931
  %.not43 = icmp slt i32 %2, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = icmp eq i16 %i.b, 0                      ; 2 uses
  %spec.select41 = select i1 %i.f, i32 3, i32 4
  %spec.select = select i1 %i.f, i32 138, i32 7
  %i.g = zext i16 %i.b to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2804 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2812 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2808 ; 2 uses
  %i.l = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ]
  %.149 = phi i32 [ %spec.select41, %.lr.ph ], [ %.2, %bb.n ] ; 2 uses
  %.12848 = phi i32 [ %spec.select, %.lr.ph ], [ %.229, %bb.n ] ; 2 uses
  %.03047 = phi i16 [ 0, %.lr.ph ], [ %.131, %bb.n ]
  %.03246 = phi i32 [ %i.g, %.lr.ph ], [ %i.p, %bb.n ] ; 7 uses
  %.03444 = phi i32 [ -1, %.lr.ph ], [ %.135, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = load i16, ptr %i.n, align 2, !tbaa !931  ; 2 uses
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = add i16 %.03047, 1                       ; 4 uses
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = icmp sgt i32 %.12848, %i.r
  %i.t = icmp eq i32 %.03246, %i.p                ; 3 uses
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp sgt i32 %.149, %i.r
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = zext nneg i32 %.03246 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 4, !tbaa !935
  %i.y = add i16 %i.x, %i.q
  store i16 %i.y, ptr %i.w, align 4, !tbaa !935
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %.not39 = icmp eq i32 %.03246, 0
  br i1 %.not39, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not40 = icmp eq i32 %.03246, %.03444
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %.03246 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.z ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !935
  %i.ac = add i16 %i.ab, 1
  store i16 %i.ac, ptr %i.aa, align 4, !tbaa !935
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = load i16, ptr %i.i, align 4, !tbaa !935
  %i.ae = add i16 %i.ad, 1
  store i16 %i.ae, ptr %i.i, align 4, !tbaa !935
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.af = icmp ult i16 %i.q, 11
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = load i16, ptr %i.k, align 8, !tbaa !935
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.k, align 8, !tbaa !935
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ai = load i16, ptr %i.j, align 4, !tbaa !935
  %i.aj = add i16 %i.ai, 1
  store i16 %i.aj, ptr %i.j, align 4, !tbaa !935
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.j, %bb.k, %bb.h
  %i.ak = icmp eq i16 %i.o, 0
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %. = select i1 %i.t, i32 6, i32 7
  %.42 = select i1 %i.t, i32 3, i32 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.b
  %.135 = phi i32 [ %.03444, %bb.b ], [ %.03246, %bb.l ], [ %.03246, %bb.m ]
  %.131 = phi i16 [ %i.q, %bb.b ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.229 = phi i32 [ %.12848, %bb.b ], [ 138, %bb.l ], [ %., %bb.m ]
  %.2 = phi i32 [ %.149, %bb.b ], [ 3, %bb.l ], [ %.42, %bb.m ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1082

._crit_edge:                                      ; preds = %bb.n, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5boost5beast4zlib6detail14deflate_stream9send_treeEPNS3_7ct_dataEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5928) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #35 align 2 {
bb.a:
  %.not60 = icmp slt i32 %2, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !931  ; 2 uses
  %i.c = icmp eq i16 %i.b, 0                      ; 2 uses
  %spec.select46 = select i1 %i.c, i32 3, i32 4
  %spec.select = select i1 %i.c, i32 138, i32 7
  %i.d = zext i16 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5916 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 32 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2804
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2814
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %i.p = add nuw nsw i32 %2, 1
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ]
  %.167 = phi i32 [ %spec.select46, %.lr.ph ], [ %.2, %bb.ac ] ; 2 uses
  %.13066 = phi i32 [ %spec.select, %.lr.ph ], [ %.231, %bb.ac ] ; 2 uses
  %.03265 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.ac ] ; 5 uses
  %.03563 = phi i32 [ %i.d, %.lr.ph ], [ %i.t, %bb.ac ] ; 7 uses
  %.03761 = phi i32 [ -1, %.lr.ph ], [ %.138, %bb.ac ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !931  ; 2 uses
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = add nsw i32 %.03265, 1                   ; 5 uses
  %i.v = icmp slt i32 %i.u, %.13066
  %i.w = icmp eq i32 %.03563, %i.t                ; 3 uses
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp slt i32 %i.u, %.167
  br i1 %i.x, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.y = zext nneg i32 %.03563 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %.pre77 = load i32, ptr %i.f, align 8, !tbaa !998
  %.pre78 = load i16, ptr %i.g, align 4, !tbaa !999
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit
  %i.ab = phi i16 [ %.sink, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit ], [ %.pre78, %.preheader ]
  %i.ac = phi i32 [ %storemerge.i.i, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit ], [ %.pre77, %.preheader ] ; 3 uses
  %.133 = phi i32 [ %i.bg, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit ], [ %i.u, %.preheader ]
  %i.ad = load i16, ptr %i.z, align 4, !tbaa !935
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = load i16, ptr %i.aa, align 2, !tbaa !931
  %i.ag = zext i16 %i.af to i32                   ; 3 uses
  %i.ah = sub nsw i32 16, %i.ag
  %i.ai = icmp sgt i32 %i.ac, %i.ah
  %i.aj = shl i32 %i.ae, %i.ac
  %i.ak = trunc i32 %i.aj to i16
  %i.al = or i16 %i.ab, %i.ak                     ; 3 uses
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = trunc i16 %i.al to i8
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.ao = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.i, align 8, !tbaa !983
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  store i8 %i.am, ptr %i.ar, align 1, !tbaa !20
  %i.as = lshr i16 %i.al, 8
  %i.at = trunc nuw i16 %i.as to i8
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.av = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.i, align 8, !tbaa !983
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  store i8 %i.at, ptr %i.ay, align 1, !tbaa !20
  %i.az = load i32, ptr %i.f, align 8, !tbaa !998 ; 2 uses
  %i.ba = sub nsw i32 16, %i.az
  %i.bb = lshr i32 %i.ae, %i.ba
  %i.bc = trunc nuw i32 %i.bb to i16
  %i.bd = add nsw i32 %i.ag, -16
  %i.be = add nsw i32 %i.bd, %i.az
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit

bb.f:                                             ; preds = %bb.d
  %i.bf = add nsw i32 %i.ac, %i.ag
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit

_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit: ; preds = %bb.e, %bb.f
  %.sink = phi i16 [ %i.bc, %bb.e ], [ %i.al, %bb.f ] ; 2 uses
  %storemerge.i.i = phi i32 [ %i.be, %bb.e ], [ %i.bf, %bb.f ] ; 2 uses
  store i16 %.sink, ptr %i.g, align 4, !tbaa !999
  store i32 %storemerge.i.i, ptr %i.f, align 8, !tbaa !998
  %i.bg = add nsw i32 %.133, -1                   ; 2 uses
  %.not45 = icmp eq i32 %i.bg, 0
  br i1 %.not45, label %.loopexit, label %bb.d, !llvm.loop !1083

bb.g:                                             ; preds = %bb.c
  %.not43 = icmp eq i32 %.03563, 0
  %i.bh = load i32, ptr %i.f, align 8, !tbaa !998 ; 10 uses
  %i.bi = load i16, ptr %i.g, align 4, !tbaa !999 ; 4 uses
  br i1 %.not43, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not44 = icmp eq i32 %.03563, %.03761
  br i1 %.not44, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = zext nneg i32 %.03563 to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bj ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !935
  %i.bm = zext i16 %i.bl to i32                   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !931
  %i.bp = zext i16 %i.bo to i32                   ; 3 uses
  %i.bq = sub nsw i32 16, %i.bp
  %i.br = icmp sgt i32 %i.bh, %i.bq
  %i.bs = shl i32 %i.bm, %i.bh
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = or i16 %i.bi, %i.bt                     ; 3 uses
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = trunc i16 %i.bu to i8
  %i.bw = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.bx = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.i, align 8, !tbaa !983
  %i.bz = zext i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  store i8 %i.bv, ptr %i.ca, align 1, !tbaa !20
  %i.cb = lshr i16 %i.bu, 8
  %i.cc = trunc nuw i16 %i.cb to i8
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.ce = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.i, align 8, !tbaa !983
  %i.cg = zext i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  store i8 %i.cc, ptr %i.ch, align 1, !tbaa !20
  %i.ci = load i32, ptr %i.f, align 8, !tbaa !998 ; 2 uses
  %i.cj = sub nsw i32 16, %i.ci
  %i.ck = lshr i32 %i.bm, %i.cj
  %i.cl = trunc nuw i32 %i.ck to i16
  %i.cm = add nsw i32 %i.bp, -16
  %i.cn = add nsw i32 %i.cm, %i.ci
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit49

bb.k:                                             ; preds = %bb.i
  %i.co = add nsw i32 %i.bh, %i.bp
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit49

_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit49: ; preds = %bb.j, %bb.k
  %.sink69 = phi i16 [ %i.cl, %bb.j ], [ %i.bu, %bb.k ] ; 2 uses
  %storemerge.i.i48 = phi i32 [ %i.cn, %bb.j ], [ %i.co, %bb.k ] ; 2 uses
  store i16 %.sink69, ptr %i.g, align 4, !tbaa !999
  store i32 %storemerge.i.i48, ptr %i.f, align 8, !tbaa !998
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit49, %bb.h
  %i.cp = phi i16 [ %.sink69, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit49 ], [ %i.bi, %bb.h ]
  %i.cq = phi i32 [ %storemerge.i.i48, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit49 ], [ %i.bh, %bb.h ] ; 3 uses
  %.234 = phi i32 [ %.03265, %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit49 ], [ %i.u, %bb.h ]
  %i.cr = load i16, ptr %i.j, align 4, !tbaa !935
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = load i16, ptr %i.k, align 2, !tbaa !931
  %i.cu = zext i16 %i.ct to i32                   ; 3 uses
  %i.cv = sub nsw i32 16, %i.cu
  %i.cw = icmp sgt i32 %i.cq, %i.cv
  %i.cx = shl i32 %i.cs, %i.cq
  %i.cy = trunc i32 %i.cx to i16
  %i.cz = or i16 %i.cp, %i.cy                     ; 3 uses
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = trunc i16 %i.cz to i8
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.dc = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.i, align 8, !tbaa !983
  %i.de = zext i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  store i8 %i.da, ptr %i.df, align 1, !tbaa !20
  %i.dg = lshr i16 %i.cz, 8
  %i.dh = trunc nuw i16 %i.dg to i8
  %i.di = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.dj = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.i, align 8, !tbaa !983
  %i.dl = zext i32 %i.dj to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl
  store i8 %i.dh, ptr %i.dm, align 1, !tbaa !20
  %i.dn = load i32, ptr %i.f, align 8, !tbaa !998 ; 2 uses
  %i.do = sub nsw i32 16, %i.dn
  %i.dp = lshr i32 %i.cs, %i.do
  %i.dq = trunc nuw i32 %i.dp to i16
  %i.dr = add nsw i32 %i.cu, -16
  %i.ds = add nsw i32 %i.dr, %i.dn
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit51

bb.n:                                             ; preds = %bb.l
  %i.dt = add nsw i32 %i.cq, %i.cu
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit51

_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit51: ; preds = %bb.m, %bb.n
  %i.du = phi i16 [ %i.dq, %bb.m ], [ %i.cz, %bb.n ] ; 2 uses
  %storemerge.i.i50 = phi i32 [ %i.ds, %bb.m ], [ %i.dt, %bb.n ] ; 5 uses
  store i32 %storemerge.i.i50, ptr %i.f, align 8, !tbaa !998
  %i.dv = add nsw i32 %.234, -3                   ; 3 uses
  %i.dw = icmp sgt i32 %storemerge.i.i50, 14
  br i1 %i.dw, label %bb.o, label %bb.p
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4zlib6detail14deflate_stream9send_treeEPNS3_7ct_dataEi:bb.a
  %i.fq = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr %i.i, align 8, !tbaa !983
  %i.fs = zext i32 %i.fq to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fs
  store i8 %i.fo, ptr %i.ft, align 1, !tbaa !20
  %i.fu = load i32, ptr %i.f, align 8, !tbaa !998 ; 2 uses
  %i.fv = sub nsw i32 16, %i.fu
  %i.fw = lshr i32 %i.ez, %i.fv
  %i.fx = trunc nuw i32 %i.fw to i16
  %i.fy = add nsw i32 %i.fb, -16
  %i.fz = add nsw i32 %i.fy, %i.fu
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit53

bb.t:                                             ; preds = %bb.r
  %i.ga = add nsw i32 %i.bh, %i.fb
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit53

_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit53: ; preds = %bb.s, %bb.t
  %i.gb = phi i16 [ %i.fx, %bb.s ], [ %i.fg, %bb.t ] ; 2 uses
  %storemerge.i.i52 = phi i32 [ %i.fz, %bb.s ], [ %i.ga, %bb.t ] ; 5 uses
  store i32 %storemerge.i.i52, ptr %i.f, align 8, !tbaa !998
  %i.gc = add nsw i32 %.03265, -2                 ; 3 uses
  %i.gd = icmp sgt i32 %storemerge.i.i52, 13
  br i1 %i.gd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit53
  %i.ge = and i32 %i.gc, 65535
  %i.gf = shl i32 %i.gc, %storemerge.i.i52
  %i.gg = trunc i32 %i.gf to i16
  %i.gh = or i16 %i.gb, %i.gg                     ; 2 uses
  %i.gi = trunc i16 %i.gh to i8
  %i.gj = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.gk = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr %i.i, align 8, !tbaa !983
  %i.gm = zext i32 %i.gk to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gm
  store i8 %i.gi, ptr %i.gn, align 1, !tbaa !20
  %i.go = lshr i16 %i.gh, 8
  %i.gp = trunc nuw i16 %i.go to i8
  %i.gq = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.gr = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr %i.i, align 8, !tbaa !983
  %i.gt = zext i32 %i.gr to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gt
  store i8 %i.gp, ptr %i.gu, align 1, !tbaa !20
  %i.gv = load i32, ptr %i.f, align 8, !tbaa !998 ; 2 uses
  %i.gw = sub nsw i32 16, %i.gv
  %i.gx = lshr i32 %i.ge, %i.gw
  %i.gy = trunc nuw i32 %i.gx to i16
  %i.gz = add nsw i32 %i.gv, -13
  br label %.loopexit.sink.split

bb.v:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit53
  %i.ha = shl i32 %i.gc, %storemerge.i.i52
  %i.hb = trunc i32 %i.ha to i16
  %i.hc = or i16 %i.gb, %i.hb
  %i.hd = add nsw i32 %storemerge.i.i52, 3
  br label %.loopexit.sink.split

bb.w:                                             ; preds = %bb.q
  %i.he = load i16, ptr %i.l, align 4, !tbaa !935
  %i.hf = zext i16 %i.he to i32                   ; 2 uses
  %i.hg = load i16, ptr %i.m, align 2, !tbaa !931
  %i.hh = zext i16 %i.hg to i32                   ; 3 uses
  %i.hi = sub nsw i32 16, %i.hh
  %i.hj = icmp sgt i32 %i.bh, %i.hi
  %i.hk = shl i32 %i.hf, %i.bh
  %i.hl = trunc i32 %i.hk to i16
  %i.hm = or i16 %i.bi, %i.hl                     ; 3 uses
  br i1 %i.hj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hn = trunc i16 %i.hm to i8
  %i.ho = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.hp = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.i, align 8, !tbaa !983
  %i.hr = zext i32 %i.hp to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hr
  store i8 %i.hn, ptr %i.hs, align 1, !tbaa !20
  %i.ht = lshr i16 %i.hm, 8
  %i.hu = trunc nuw i16 %i.ht to i8
  %i.hv = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.hw = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr %i.i, align 8, !tbaa !983
  %i.hy = zext i32 %i.hw to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  store i8 %i.hu, ptr %i.hz, align 1, !tbaa !20
  %i.ia = load i32, ptr %i.f, align 8, !tbaa !998 ; 2 uses
  %i.ib = sub nsw i32 16, %i.ia
  %i.ic = lshr i32 %i.hf, %i.ib
  %i.id = trunc nuw i32 %i.ic to i16
  %i.ie = add nsw i32 %i.hh, -16
  %i.if = add nsw i32 %i.ie, %i.ia
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit57

bb.y:                                             ; preds = %bb.w
  %i.ig = add nsw i32 %i.bh, %i.hh
  br label %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit57

_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit57: ; preds = %bb.x, %bb.y
  %i.ih = phi i16 [ %i.id, %bb.x ], [ %i.hm, %bb.y ] ; 2 uses
  %storemerge.i.i56 = phi i32 [ %i.if, %bb.x ], [ %i.ig, %bb.y ] ; 5 uses
  store i32 %storemerge.i.i56, ptr %i.f, align 8, !tbaa !998
  %i.ii = add nsw i32 %.03265, -10                ; 3 uses
  %i.ij = icmp sgt i32 %storemerge.i.i56, 9
  br i1 %i.ij, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit57
  %i.ik = and i32 %i.ii, 65535
  %i.il = shl i32 %i.ii, %storemerge.i.i56
  %i.im = trunc i32 %i.il to i16
  %i.in = or i16 %i.ih, %i.im                     ; 2 uses
  %i.io = trunc i16 %i.in to i8
  %i.ip = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.iq = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.i, align 8, !tbaa !983
  %i.is = zext i32 %i.iq to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.is
  store i8 %i.io, ptr %i.it, align 1, !tbaa !20
  %i.iu = lshr i16 %i.in, 8
  %i.iv = trunc nuw i16 %i.iu to i8
  %i.iw = load ptr, ptr %i.h, align 8, !tbaa !1000
  %i.ix = load i32, ptr %i.i, align 8, !tbaa !983 ; 2 uses
  %i.iy = add i32 %i.ix, 1
  store i32 %i.iy, ptr %i.i, align 8, !tbaa !983
  %i.iz = zext i32 %i.ix to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iz
  store i8 %i.iv, ptr %i.ja, align 1, !tbaa !20
  %i.jb = load i32, ptr %i.f, align 8, !tbaa !998 ; 2 uses
  %i.jc = sub nsw i32 16, %i.jb
  %i.jd = lshr i32 %i.ik, %i.jc
  %i.je = trunc nuw i32 %i.jd to i16
  %i.jf = add nsw i32 %i.jb, -9
  br label %.loopexit.sink.split

bb.aa:                                            ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit57
  %i.jg = shl i32 %i.ii, %storemerge.i.i56
  %i.jh = trunc i32 %i.jg to i16
  %i.ji = or i16 %i.ih, %i.jh
  %i.jj = add nsw i32 %storemerge.i.i56, 7
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.aa, %bb.z, %bb.v, %bb.u, %bb.p, %bb.o
  %.sink73.sink = phi i16 [ %i.ev, %bb.p ], [ %i.hc, %bb.v ], [ %i.er, %bb.o ], [ %i.gy, %bb.u ], [ %i.je, %bb.z ], [ %i.ji, %bb.aa ]
  %storemerge.i54.sink = phi i32 [ %i.ew, %bb.p ], [ %i.hd, %bb.v ], [ %i.es, %bb.o ], [ %i.gz, %bb.u ], [ %i.jf, %bb.z ], [ %i.jj, %bb.aa ]
  store i16 %.sink73.sink, ptr %i.g, align 4, !tbaa !999
  store i32 %storemerge.i54.sink, ptr %i.f, align 8, !tbaa !998
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9send_codeEiPKNS3_7ct_dataE.exit, %.loopexit.sink.split
  %i.jk = icmp eq i16 %i.s, 0
  br i1 %i.jk, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %. = select i1 %i.w, i32 6, i32 7
  %.47 = select i1 %i.w, i32 3, i32 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit, %bb.b
  %.138 = phi i32 [ %.03761, %bb.b ], [ %.03563, %.loopexit ], [ %.03563, %bb.ab ]
  %.3 = phi i32 [ %i.u, %bb.b ], [ 0, %.loopexit ], [ 0, %bb.ab ]
  %.231 = phi i32 [ %.13066, %bb.b ], [ 138, %.loopexit ], [ %., %bb.ab ]
  %.2 = phi i32 [ %.167, %bb.b ], [ 3, %.loopexit ], [ %.47, %bb.ab ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1084

._crit_edge:                                      ; preds = %bb.ac, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 2, 19) i32 @_ZN5boost5beast4zlib6detail14deflate_stream13build_bl_treeEv(ptr noundef nonnull align 8 dereferenceable(5928) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1085 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 206
  %i.e = load i16, ptr %i.d, align 2, !tbaa !931  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr [4 x i8], ptr %i.a, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 6
  store i16 -1, ptr %i.h, align 2, !tbaa !931
  %.not43.i = icmp slt i32 %i.c, 0
  br i1 %.not43.i, label %_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = icmp eq i16 %i.e, 0                      ; 2 uses
  %spec.select41.i = select i1 %i.i, i32 3, i32 4
  %spec.select.i = select i1 %i.i, i32 138, i32 7
  %i.j = zext i16 %i.e to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2804 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2812 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2808 ; 2 uses
  %i.o = add nuw nsw i32 %i.c, 1
  %wide.trip.count.i = zext nneg i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ]
  %.149.i = phi i32 [ %spec.select41.i, %.lr.ph.i ], [ %.2.i, %bb.n ] ; 2 uses
  %.12848.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.229.i, %bb.n ] ; 2 uses
  %.03047.i = phi i16 [ 0, %.lr.ph.i ], [ %.131.i, %bb.n ]
  %.03246.i = phi i32 [ %i.j, %.lr.ph.i ], [ %i.s, %bb.n ] ; 7 uses
  %.03444.i = phi i32 [ -1, %.lr.ph.i ], [ %.135.i, %bb.n ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !931  ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = add i16 %.03047.i, 1                     ; 4 uses
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = icmp sgt i32 %.12848.i, %i.u
  %i.w = icmp eq i32 %.03246.i, %i.s              ; 3 uses
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %.149.i, %i.u
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = zext nneg i32 %.03246.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !935
  %i.ab = add i16 %i.aa, %i.t
  store i16 %i.ab, ptr %i.z, align 4, !tbaa !935
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %.not39.i = icmp eq i32 %.03246.i, 0
  br i1 %.not39.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not40.i = icmp eq i32 %.03246.i, %.03444.i
  br i1 %.not40.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = zext nneg i32 %.03246.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ac ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !935
  %i.af = add i16 %i.ae, 1
  store i16 %i.af, ptr %i.ad, align 4, !tbaa !935
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = load i16, ptr %i.l, align 4, !tbaa !935
  %i.ah = add i16 %i.ag, 1
  store i16 %i.ah, ptr %i.l, align 4, !tbaa !935
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.ai = icmp ult i16 %i.t, 11
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = load i16, ptr %i.n, align 8, !tbaa !935
  %i.ak = add i16 %i.aj, 1
  store i16 %i.ak, ptr %i.n, align 8, !tbaa !935
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = load i16, ptr %i.m, align 4, !tbaa !935
  %i.am = add i16 %i.al, 1
  store i16 %i.am, ptr %i.m, align 4, !tbaa !935
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.d
  %i.an = icmp eq i16 %i.r, 0
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %..i = select i1 %i.w, i32 6, i32 7
  %.42.i = select i1 %i.w, i32 3, i32 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.b
  %.135.i = phi i32 [ %.03444.i, %bb.b ], [ %.03246.i, %bb.l ], [ %.03246.i, %bb.m ]
  %.131.i = phi i16 [ %i.t, %bb.b ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.229.i = phi i32 [ %.12848.i, %bb.b ], [ 138, %bb.l ], [ %..i, %bb.m ]
  %.2.i = phi i32 [ %.149.i, %bb.b ], [ 3, %bb.l ], [ %.42.i, %bb.m ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit, label %bb.b, !llvm.loop !1082

_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit: ; preds = %bb.n, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1086 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2498
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !931 ; 2 uses
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr [4 x i8], ptr %i.ao, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 6
  store i16 -1, ptr %i.av, align 2, !tbaa !931
  %.not43.i5 = icmp slt i32 %i.aq, 0
  br i1 %.not43.i5, label %_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit27, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit
  %i.aw = icmp eq i16 %i.as, 0                    ; 2 uses
  %spec.select41.i7 = select i1 %i.aw, i32 3, i32 4
  %spec.select.i8 = select i1 %i.aw, i32 138, i32 7
  %i.ax = zext i16 %i.as to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2740 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2804 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2812 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2808 ; 2 uses
  %i.bc = add nuw nsw i32 %i.aq, 1
  %wide.trip.count.i9 = zext nneg i32 %i.bc to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.aa, %.lr.ph.i6
  %indvars.iv.i10 = phi i64 [ 0, %.lr.ph.i6 ], [ %indvars.iv.next.i16, %bb.aa ]
  %.149.i11 = phi i32 [ %spec.select41.i7, %.lr.ph.i6 ], [ %.2.i25, %bb.aa ] ; 2 uses
  %.12848.i12 = phi i32 [ %spec.select.i8, %.lr.ph.i6 ], [ %.229.i24, %bb.aa ] ; 2 uses
  %.03047.i13 = phi i16 [ 0, %.lr.ph.i6 ], [ %.131.i23, %bb.aa ]
  %.03246.i14 = phi i32 [ %i.ax, %.lr.ph.i6 ], [ %i.bg, %bb.aa ] ; 7 uses
  %.03444.i15 = phi i32 [ -1, %.lr.ph.i6 ], [ %.135.i22, %bb.aa ] ; 2 uses
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i10, 1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !931 ; 2 uses
  %i.bg = zext i16 %i.bf to i32                   ; 2 uses
  %i.bh = add i16 %.03047.i13, 1                  ; 4 uses
  %i.bi = zext i16 %i.bh to i32                   ; 2 uses
  %i.bj = icmp sgt i32 %.12848.i12, %i.bi
  %i.bk = icmp eq i32 %.03246.i14, %i.bg          ; 3 uses
  %or.cond.i17 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.i17, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = icmp sgt i32 %.149.i11, %i.bi
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = zext nneg i32 %.03246.i14 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bm ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !935
  %i.bp = add i16 %i.bo, %i.bh
  store i16 %i.bp, ptr %i.bn, align 4, !tbaa !935
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %.not39.i18 = icmp eq i32 %.03246.i14, 0
  br i1 %.not39.i18, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not40.i19 = icmp eq i32 %.03246.i14, %.03444.i15
  br i1 %.not40.i19, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = zext nneg i32 %.03246.i14 to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bq ; 2 uses
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !935
  %i.bt = add i16 %i.bs, 1
  store i16 %i.bt, ptr %i.br, align 4, !tbaa !935
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bu = load i16, ptr %i.az, align 4, !tbaa !935
  %i.bv = add i16 %i.bu, 1
  store i16 %i.bv, ptr %i.az, align 4, !tbaa !935
  br label %bb.y

bb.v:                                             ; preds = %bb.r
  %i.bw = icmp ult i16 %i.bh, 11
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bx = load i16, ptr %i.bb, align 8, !tbaa !935
  %i.by = add i16 %i.bx, 1
  store i16 %i.by, ptr %i.bb, align 8, !tbaa !935
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bz = load i16, ptr %i.ba, align 4, !tbaa !935
  %i.ca = add i16 %i.bz, 1
  store i16 %i.ca, ptr %i.ba, align 4, !tbaa !935
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.q
  %i.cb = icmp eq i16 %i.bf, 0
  br i1 %i.cb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i20 = select i1 %i.bk, i32 6, i32 7
  %.42.i21 = select i1 %i.bk, i32 3, i32 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.o
  %.135.i22 = phi i32 [ %.03444.i15, %bb.o ], [ %.03246.i14, %bb.y ], [ %.03246.i14, %bb.z ]
  %.131.i23 = phi i16 [ %i.bh, %bb.o ], [ 0, %bb.y ], [ 0, %bb.z ]
  %.229.i24 = phi i32 [ %.12848.i12, %bb.o ], [ 138, %bb.y ], [ %..i20, %bb.z ]
  %.2.i25 = phi i32 [ %.149.i11, %bb.o ], [ 3, %bb.y ], [ %.42.i21, %bb.z ]
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i16, %wide.trip.count.i9
  br i1 %exitcond.not.i26, label %_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit27, label %bb.o, !llvm.loop !1082

_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit27: ; preds = %bb.aa, %_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2944
  tail call void @_ZN5boost5beast4zlib6detail14deflate_stream10build_treeEPNS3_9tree_descE(ptr noundef nonnull align 8 dereferenceable(5928) %0, ptr noundef nonnull %i.cc)
  %i.cd = load ptr, ptr %0, align 8, !tbaa !1018, !nonnull !137, !align !138 ; 16 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !20
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2742
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !931
  %.not = icmp eq i16 %i.cj, 0
  br i1 %.not, label %bb.ab, label %bb.aq

bb.ab:                                            ; preds = %_ZN5boost5beast4zlib6detail14deflate_stream9scan_treeEPNS3_7ct_dataEi.exit27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 95
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !20
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2742
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !931
  %.not.1 = icmp eq i16 %i.cp, 0
  br i1 %.not.1, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 94
  %i.cr = load i8, ptr %i.cq, align 2, !tbaa !20
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2742
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !931
  %.not.2 = icmp eq i16 %i.cv, 0
  br i1 %.not.2, label %bb.ad, label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cd, i64 93
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !20
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2742
  %i.db = load i16, ptr %i.da, align 2, !tbaa !931
  %.not.3 = icmp eq i16 %i.db, 0
  br i1 %.not.3, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cd, i64 92
  %i.dd = load i8, ptr %i.dc, align 4, !tbaa !20
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2742
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !931
  %.not.4 = icmp eq i16 %i.dh, 0
  br i1 %.not.4, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.cd, i64 91
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !20
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2742
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !931
  %.not.5 = icmp eq i16 %i.dn, 0
  br i1 %.not.5, label %bb.ag, label %bb.aq

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr inbounds nuw i8, ptr %i.cd, i64 90
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !20
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2742
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !931
  %.not.6 = icmp eq i16 %i.dt, 0
  br i1 %.not.6, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 89
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !20
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2742
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !931
  %.not.7 = icmp eq i16 %i.dz, 0
  br i1 %.not.7, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cd, i64 88
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !20
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2742
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !931
  %.not.8 = icmp eq i16 %i.ef, 0
  br i1 %.not.8, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cd, i64 87
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !20
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2742
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !931
  %.not.9 = icmp eq i16 %i.el, 0
  br i1 %.not.9, label %bb.ak, label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %i.cd, i64 86
  %i.en = load i8, ptr %i.em, align 2, !tbaa !20
  %i.eo = zext i8 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2742
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !931
  %.not.10 = icmp eq i16 %i.er, 0
  br i1 %.not.10, label %bb.al, label %bb.aq
end_hunk_1
