inline.NumInlined: 64
inline.NumDeleted: 29
begin_hunk_0_@OJPEGReadHeaderInfoSec:bb.a
  %i.ca = zext i16 %spec.select.i to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ca
  store ptr %i.cb, ptr %i.af, align 8, !tbaa !100
  %i.cc = sub nuw i16 %i.bt, %spec.select.i
  store i16 %i.cc, ptr %i.ae, align 8, !tbaa !95
  %.not.not.i = icmp ugt i16 %i.bz, %i.bt
  br i1 %.not.not.i, label %bb.x, label %thread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.cd = sub nuw i16 %i.bz, %spec.select.i
  %i.ce = zext i16 %i.cd to i64
  %i.cf = load i64, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %spec.select2122.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ce) ; 2 uses
  %i.cg = load i64, ptr %i.ah, align 8, !tbaa !94
  %i.ch = add i64 %i.cg, %spec.select2122.i
  store i64 %i.ch, ptr %i.ah, align 8, !tbaa !94
  %i.ci = sub nuw i64 %i.cf, %spec.select2122.i
  store i64 %i.ci, ptr %i.ad, align 8, !tbaa !97
  store i8 0, ptr %i.ai, align 8, !tbaa !99
  br label %thread-pre-split
end_hunk_0
begin_hunk_1_@OJPEGReadHeaderInfoSec:bb.a
  %i.ff = zext i16 %spec.select.i.i to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ff
  store ptr %i.fg, ptr %i.ej, align 8, !tbaa !100
  %i.fh = sub nuw i16 %i.ex, %spec.select.i.i
  store i16 %i.fh, ptr %i.ed, align 8, !tbaa !95
  %.not.not.i.i = icmp ugt i16 %i.fe, %i.ex
  br i1 %.not.not.i.i, label %bb.ar, label %thread-pre-split

bb.ar:                                            ; preds = %bb.aq
  %i.fi = sub nuw i16 %i.fe, %spec.select.i.i
  %i.fj = zext i16 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ec, i64 1624 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !97 ; 2 uses
end_hunk_1
begin_hunk_2_@OJPEGReadHeaderInfoSec:bb.a
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !94
  %i.fo = add i64 %i.fn, %spec.select2122.i.i
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !94
  %i.fp = sub nuw i64 %i.fl, %spec.select2122.i.i
  store i64 %i.fp, ptr %i.fk, align 8, !tbaa !97
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ec, i64 1616
  store i8 0, ptr %i.fq, align 8, !tbaa !99
end_hunk_2
begin_hunk_3_@OJPEGReadHeaderInfoSec:bb.a
  %i.gb = phi i16 [ %.pre23.i.i, %._crit_edge.i41.i ], [ %i.fx, %bb.ay ]
  %spec.select.i40.i = tail call i16 @llvm.umin.i16(i16 %.021.i.i, i16 %i.gb) ; 3 uses
  %i.gc = load ptr, ptr %i.ej, align 8, !tbaa !100
  %i.gd = zext nneg i16 %spec.select.i40.i to i64 ; 3 uses
  tail call void @_TIFFmemcpy(ptr noundef %.020.i.i, ptr noundef %i.gc, i64 noundef %i.gd) #13
  %i.ge = load ptr, ptr %i.ej, align 8, !tbaa !100
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
end_hunk_3
begin_hunk_4_@OJPEGReadHeaderInfoSec:bb.a
  %i.gg = load i16, ptr %i.ed, align 8, !tbaa !95
  %i.gh = sub i16 %i.gg, %spec.select.i40.i       ; 2 uses
  store i16 %i.gh, ptr %i.ed, align 8, !tbaa !95
  %i.gi = sub nuw nsw i16 %.021.i.i, %spec.select.i40.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 %i.gd
  %.not.i.i = icmp eq i16 %i.gi, 0
  br i1 %.not.i.i, label %OJPEGReadBlock.exit.i, label %bb.ay
end_hunk_4
begin_hunk_5_@OJPEGReadHeaderInfoSec:bb.a
  %i.hu = zext i16 %spec.select.i.i97 to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hu
  store ptr %i.hv, ptr %i.gy, align 8, !tbaa !100
  %i.hw = sub nuw i16 %i.hm, %spec.select.i.i97
  store i16 %i.hw, ptr %i.gs, align 8, !tbaa !95
  %.not.not.i.i98 = icmp ugt i16 %i.ht, %i.hm
  br i1 %.not.not.i.i98, label %bb.bp, label %thread-pre-split

bb.bp:                                            ; preds = %bb.bo
  %i.hx = sub nuw i16 %i.ht, %spec.select.i.i97
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gr, i64 1624 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !97 ; 2 uses
end_hunk_5
begin_hunk_6_@OJPEGReadHeaderInfoSec:bb.a
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !94
  %i.id = add i64 %i.ic, %spec.select2122.i.i100
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !94
  %i.ie = sub nuw i64 %i.ia, %spec.select2122.i.i100
  store i64 %i.ie, ptr %i.hz, align 8, !tbaa !97
  %i.if = getelementptr inbounds nuw i8, ptr %i.gr, i64 1616
  store i8 0, ptr %i.if, align 8, !tbaa !99
end_hunk_6
begin_hunk_7_@OJPEGReadHeaderInfoSec:bb.a
  %i.ja = load i16, ptr %i.gs, align 8, !tbaa !95
  %i.jb = sub i16 %i.ja, %spec.select.i60.i       ; 2 uses
  store i16 %i.jb, ptr %i.gs, align 8, !tbaa !95
  %i.jc = sub nuw i16 %.021.i.i101, %spec.select.i60.i ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.020.i.i102, i64 %i.ix
  %.not.i.i103 = icmp eq i16 %i.jc, 0
  br i1 %.not.i.i103, label %OJPEGReadBlock.exit.i104, label %bb.bt
end_hunk_7
begin_hunk_8_@OJPEGReadSkip:bb.a
  %i.e = zext i16 %spec.select to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store ptr %i.f, ptr %i.c, align 8, !tbaa !100
  %i.g = sub nuw i16 %i.b, %spec.select
  store i16 %i.g, ptr %i.a, align 8, !tbaa !95
  %.not.not = icmp ugt i16 %1, %i.b
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i16 %1, %spec.select
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !97   ; 2 uses
end_hunk_8
begin_hunk_9_@OJPEGReadSkip:bb.a
  %i.m = load i64, ptr %i.l, align 8, !tbaa !94
  %i.n = add i64 %i.m, %spec.select2122
  store i64 %i.n, ptr %i.l, align 8, !tbaa !94
  %i.o = sub nuw i64 %i.k, %spec.select2122
  store i64 %i.o, ptr %i.j, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i8 0, ptr %i.p, align 8, !tbaa !99
end_hunk_9
begin_hunk_10_@OJPEGReadHeaderInfoSecStreamSos:bb.a
  %i.bw = zext nneg i16 %spec.select.i to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  store ptr %i.bx, ptr %i.l, align 8, !tbaa !100
  %i.by = sub nuw i16 %i.bv, %spec.select.i
  store i16 %i.by, ptr %i.f, align 8, !tbaa !95
  %.not.not.i = icmp ult i16 %i.bv, 3
  br i1 %.not.not.i, label %bb.r, label %OJPEGReadSkip.exit
end_hunk_10
begin_hunk_11_@OJPEGReadHeaderInfoSecStreamSos:bb.a
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !94
  %i.cf = add i64 %i.ce, %spec.select2122.i
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !94
  %i.cg = sub nuw i64 %i.cc, %spec.select2122.i
  store i64 %i.cg, ptr %i.cb, align 8, !tbaa !97
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store i8 0, ptr %i.ch, align 8, !tbaa !99
end_hunk_11
