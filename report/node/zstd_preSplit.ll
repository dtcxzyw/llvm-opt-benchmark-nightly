inline.NumInlined: 23
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef initializes((0, 8208)) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %vector.ph48, label %bb.b

vector.ph48:                                      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  tail call void @HIST_add(ptr noundef nonnull %3, ptr noundef %0, i64 noundef 512) #5
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4104 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -512
  tail call void @HIST_add(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i64 noundef 512) #5
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8200 ; 2 uses
  store i64 512, ptr %i.e, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4096 ; 2 uses
  store i64 512, ptr %i.f, align 8, !tbaa !13
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph48
  %index50 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body49 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph48 ], [ %i.u, %vector.body49 ]
  %vec.phi51 = phi <2 x i64> [ zeroinitializer, %vector.ph48 ], [ %i.v, %vector.body49 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index50 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load52 = load <2 x i32>, ptr %i.g, align 4, !tbaa !5
  %wide.load53 = load <2 x i32>, ptr %i.h, align 4, !tbaa !5
  %i.i = zext <2 x i32> %wide.load52 to <2 x i64>
  %i.j = zext <2 x i32> %wide.load53 to <2 x i64>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index50 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load54 = load <2 x i32>, ptr %i.k, align 4, !tbaa !5
  %wide.load55 = load <2 x i32>, ptr %i.l, align 4, !tbaa !5
  %i.m = zext <2 x i32> %wide.load54 to <2 x i64>
  %i.n = zext <2 x i32> %wide.load55 to <2 x i64>
  %i.o = sub nsw <2 x i64> %i.i, %i.m
  %i.p = sub nsw <2 x i64> %i.j, %i.n
  %i.q = shl nsw <2 x i64> %i.o, splat (i64 9)
  %i.r = shl nsw <2 x i64> %i.p, splat (i64 9)
  %i.s = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.q, i1 true)
  %i.t = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.r, i1 true)
  %i.u = add <2 x i64> %i.s, %vec.phi             ; 2 uses
  %i.v = add <2 x i64> %i.t, %vec.phi51           ; 2 uses
  %index.next56 = add nuw i64 %index50, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next56, 256
  br i1 %i.w, label %compareFingerprints.exit.i, label %vector.body49, !llvm.loop !14

compareFingerprints.exit.i:                       ; preds = %vector.body49
  %bin.rdx = add <2 x i64> %i.v, %i.u
  %i.x = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.y = icmp ult i64 %i.x, 229376
  br i1 %i.y, label %ZSTD_splitBlock_fromBorders.exit, label %vector.ph58

vector.ph58:                                      ; preds = %compareFingerprints.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 2048 ; 3 uses
  %i.aa = lshr i64 %1, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -256
  tail call void @HIST_add(ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac, i64 noundef 512) #5
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 6144
  store i64 512, ptr %i.ad, align 8, !tbaa !18
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !18
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph58
  %index60 = phi i64 [ 0, %vector.ph58 ], [ %index.next67, %vector.body59 ] ; 3 uses
  %vec.phi61 = phi <2 x i64> [ zeroinitializer, %vector.ph58 ], [ %i.av, %vector.body59 ]
  %vec.phi62 = phi <2 x i64> [ zeroinitializer, %vector.ph58 ], [ %i.aw, %vector.body59 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index60 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %wide.load63 = load <2 x i32>, ptr %i.af, align 4, !tbaa !5
  %wide.load64 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !5
  %i.ah = zext <2 x i32> %wide.load63 to <2 x i64>
  %i.ai = zext <2 x i32> %wide.load64 to <2 x i64>
  %i.aj = shl nuw nsw <2 x i64> %i.ah, splat (i64 9)
  %i.ak = shl nuw nsw <2 x i64> %i.ai, splat (i64 9)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %wide.load65 = load <2 x i32>, ptr %i.al, align 4, !tbaa !5
  %wide.load66 = load <2 x i32>, ptr %i.am, align 4, !tbaa !5
  %i.an = zext <2 x i32> %wide.load65 to <2 x i64>
  %i.ao = zext <2 x i32> %wide.load66 to <2 x i64>
  %i.ap = mul nsw <2 x i64> %broadcast.splat, %i.an
  %i.aq = mul nsw <2 x i64> %broadcast.splat, %i.ao
  %i.ar = sub nsw <2 x i64> %i.aj, %i.ap
  %i.as = sub nsw <2 x i64> %i.ak, %i.aq
  %i.at = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.ar, i1 true)
  %i.au = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.as, i1 true)
  %i.av = add <2 x i64> %i.at, %vec.phi61         ; 2 uses
  %i.aw = add <2 x i64> %i.au, %vec.phi62         ; 2 uses
  %index.next67 = add nuw i64 %index60, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next67, 256
  br i1 %i.ax, label %middle.block68, label %vector.body59, !llvm.loop !19

middle.block68:                                   ; preds = %vector.body59
  %bin.rdx69 = add <2 x i64> %i.aw, %i.av
  %i.ay = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx69) ; 2 uses
  %i.az = load i64, ptr %i.e, align 8, !tbaa !18
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %middle.block68
  %index74 = phi i64 [ 0, %middle.block68 ], [ %index.next81, %vector.body73 ] ; 3 uses
  %vec.phi75 = phi <2 x i64> [ zeroinitializer, %middle.block68 ], [ %i.bq, %vector.body73 ]
  %vec.phi76 = phi <2 x i64> [ zeroinitializer, %middle.block68 ], [ %i.br, %vector.body73 ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index74 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %wide.load77 = load <2 x i32>, ptr %i.ba, align 4, !tbaa !5
  %wide.load78 = load <2 x i32>, ptr %i.bb, align 4, !tbaa !5
  %i.bc = zext <2 x i32> %wide.load77 to <2 x i64>
  %i.bd = zext <2 x i32> %wide.load78 to <2 x i64>
  %i.be = shl nuw nsw <2 x i64> %i.bc, splat (i64 9)
  %i.bf = shl nuw nsw <2 x i64> %i.bd, splat (i64 9)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index74 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %wide.load79 = load <2 x i32>, ptr %i.bg, align 4, !tbaa !5
  %wide.load80 = load <2 x i32>, ptr %i.bh, align 4, !tbaa !5
  %i.bi = zext <2 x i32> %wide.load79 to <2 x i64>
  %i.bj = zext <2 x i32> %wide.load80 to <2 x i64>
  %i.bk = mul nsw <2 x i64> %broadcast.splat72, %i.bi
  %i.bl = mul nsw <2 x i64> %broadcast.splat72, %i.bj
  %i.bm = sub nsw <2 x i64> %i.be, %i.bk
  %i.bn = sub nsw <2 x i64> %i.bf, %i.bl
  %i.bo = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.bm, i1 true)
  %i.bp = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.bn, i1 true)
  %i.bq = add <2 x i64> %i.bo, %vec.phi75         ; 2 uses
  %i.br = add <2 x i64> %i.bp, %vec.phi76         ; 2 uses
  %index.next81 = add nuw i64 %index74, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next81, 256
  br i1 %i.bs, label %fpDistance.exit28.i, label %vector.body73, !llvm.loop !20

fpDistance.exit28.i:                              ; preds = %vector.body73
  %bin.rdx83 = add <2 x i64> %i.br, %i.bq
  %i.bt = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx83) ; 2 uses
  %i.bu = add i64 %i.ay, 87380
  %i.bv = sub i64 %i.bu, %i.bt
  %i.bw = icmp ult i64 %i.bv, 174761
  %i.bx = icmp ugt i64 %i.ay, %i.bt
  %i.by = select i1 %i.bx, i64 32768, i64 98304
  %.0.i = select i1 %i.bw, i64 65536, i64 %i.by
  br label %ZSTD_splitBlock_fromBorders.exit

bb.b:                                             ; preds = %bb.a
  %i.bz = add nsw i32 %2, -1                      ; 3 uses
  %5 = zext nneg i32 %i.bz to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  switch i32 %i.bz, label %default.switch.case.unreachable.i [
    i32 0, label %call.0.i
    i32 1, label %call.1.i
    i32 2, label %call.2.i
    i32 3, label %call.3.i
  ], !prof !21

default.switch.case.unreachable.i:                ; preds = %bb.b
  unreachable

call.0.i:                                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.3, %call.0.i
  %.0.i3.i.i = phi i64 [ 0, %call.0.i ], [ %i.dc, %.lr.ph.i.i.3 ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !22
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !5
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !5
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 43
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !22
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !5
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !5
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 86
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !22
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !5
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !5
  %i.cu = icmp samesign ult i64 %.0.i3.i.i, 8062
  br i1 %i.cu, label %.lr.ph.i.i.3, label %.tail.i

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 129
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !22
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !5
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !5
  %i.dc = add nuw nsw i64 %.0.i3.i.i, 172
  br label %.lr.ph.i.i

call.1.i:                                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %3, i8 0, i64 2048, i1 false)
  br label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %.lr.ph.i39.i.1, %call.1.i
  %.0.i3.i40.i = phi i64 [ 0, %call.1.i ], [ %i.dv, %.lr.ph.i39.i.1 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i40.i
  %.val.i.i = load i16, ptr %i.dd, align 1, !tbaa !23
  %i.de = zext i16 %.val.i.i to i64
  %i.df = mul nuw nsw i64 %i.de, 2654435769
  %i.dg = lshr i64 %i.df, 23
  %i.dh = and i64 %i.dg, 511
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !5
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !5
  %i.dl = icmp samesign ult i64 %.0.i3.i40.i, 8180
  br i1 %i.dl, label %.lr.ph.i39.i.1, label %.tail.i

.lr.ph.i39.i.1:                                   ; preds = %.lr.ph.i39.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i40.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  %.val.i.i.1 = load i16, ptr %i.dn, align 1, !tbaa !23
  %i.do = zext i16 %.val.i.i.1 to i64
  %i.dp = mul nuw nsw i64 %i.do, 2654435769
  %i.dq = lshr i64 %i.dp, 23
  %i.dr = and i64 %i.dq, 511
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !5
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !5
  %i.dv = add nuw nsw i64 %.0.i3.i40.i, 22
  br label %.lr.ph.i39.i

call.2.i:                                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %3, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i41.i.1, %call.2.i
  %.0.i3.i42.i = phi i64 [ 0, %call.2.i ], [ %i.eo, %.lr.ph.i41.i.1 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i42.i
  %.val.i43.i = load i16, ptr %i.dw, align 1, !tbaa !23
  %i.dx = zext i16 %.val.i43.i to i64
  %i.dy = mul nuw nsw i64 %i.dx, 2654435769
  %i.dz = lshr i64 %i.dy, 22
  %i.ea = and i64 %i.dz, 1023
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !5
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !5
  %i.ee = icmp samesign ult i64 %.0.i3.i42.i, 8186
  br i1 %i.ee, label %.lr.ph.i41.i.1, label %.tail.i

.lr.ph.i41.i.1:                                   ; preds = %.lr.ph.i41.i
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i42.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %.val.i43.i.1 = load i16, ptr %i.eg, align 1, !tbaa !23
  %i.eh = zext i16 %.val.i43.i.1 to i64
  %i.ei = mul nuw nsw i64 %i.eh, 2654435769
  %i.ej = lshr i64 %i.ei, 22
  %i.ek = and i64 %i.ej, 1023
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !5
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !5
  %i.eo = add nuw nsw i64 %.0.i3.i42.i, 10
  br label %.lr.ph.i41.i

call.3.i:                                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %3, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.1, %call.3.i
  %.0.i3.i45.i = phi i64 [ 0, %call.3.i ], [ %i.fg, %.lr.ph.i44.i.1 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i45.i
  %.val.i46.i = load i16, ptr %i.ep, align 1, !tbaa !23
  %i.eq = zext i16 %.val.i46.i to i64
  %i.er = mul nuw nsw i64 %i.eq, 2654435769
  %i.es = lshr i64 %i.er, 22
  %i.et = and i64 %i.es, 1023
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !5
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !5
  %exitcond.not.i47.i = icmp eq i64 %.0.i3.i45.i, 8190
  br i1 %exitcond.not.i47.i, label %.tail.i, label %.lr.ph.i44.i.1

.lr.ph.i44.i.1:                                   ; preds = %.lr.ph.i44.i
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i45.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.val.i46.i.1 = load i16, ptr %i.ey, align 1, !tbaa !23
  %i.ez = zext i16 %.val.i46.i.1 to i64
  %i.fa = mul nuw nsw i64 %i.ez, 2654435769
  %i.fb = lshr i64 %i.fa, 22
  %i.fc = and i64 %i.fb, 1023
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !5
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !5
  %i.fg = add nuw nsw i64 %.0.i3.i45.i, 2
  br label %.lr.ph.i44.i

.tail.i:                                          ; preds = %.lr.ph.i44.i, %.lr.ph.i41.i, %.lr.ph.i39.i, %.lr.ph.i.i
  %.sink = phi i64 [ 744, %.lr.ph.i39.i ], [ 190, %.lr.ph.i.i ], [ 1638, %.lr.ph.i41.i ], [ 8191, %.lr.ph.i44.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 %.sink, ptr %i.fh, align 8, !tbaa !18
  %i.fi = add i64 %1, -8192                       ; 2 uses
  %.not34.i = icmp ult i64 %i.fi, 8192
  br i1 %.not34.i, label %ZSTD_splitBlock_fromBorders.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.tail.i
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 4104 ; 17 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 %5
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8200 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %mergeEvents.exit.i, %.lr.ph.i
  %i.fn = phi i64 [ %.sink, %.lr.ph.i ], [ %i.kd, %mergeEvents.exit.i ] ; 3 uses
  %.036.i = phi i64 [ 8192, %.lr.ph.i ], [ %i.kg, %mergeEvents.exit.i ] ; 3 uses
  %.02435.i = phi i32 [ 3, %.lr.ph.i ], [ %spec.select.i, %mergeEvents.exit.i ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %.036.i ; 10 uses
  switch i32 %i.bz, label %default.switch.case.unreachable28.i [
    i32 0, label %call.029.i
    i32 1, label %call.130.i
    i32 2, label %call.231.i
    i32 3, label %call.332.i
  ], !prof !21

default.switch.case.unreachable28.i:              ; preds = %bb.c
  unreachable

call.029.i:                                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fj, i8 0, i64 1024, i1 false)
  store i64 0, ptr %i.fm, align 8, !tbaa !18
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i.3, %call.029.i
  %.0.i3.i49.i = phi i64 [ 0, %call.029.i ], [ %i.gr, %.lr.ph.i48.i.3 ] ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i49.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !22
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fr ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !5
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i49.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 43
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !22
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !5
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !5
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i49.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 86
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !22
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.gf ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !5
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !5
  %i.gj = icmp samesign ult i64 %.0.i3.i49.i, 8062
  br i1 %i.gj, label %.lr.ph.i48.i.3, label %.tail27.i

.lr.ph.i48.i.3:                                   ; preds = %.lr.ph.i48.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i49.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 129
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !22
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !5
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !5
  %i.gr = add nuw nsw i64 %.0.i3.i49.i, 172
  br label %.lr.ph.i48.i

call.130.i:                                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.fj, i8 0, i64 2048, i1 false)
  br label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.i51.i.1, %call.130.i
  %.0.i3.i52.i = phi i64 [ 0, %call.130.i ], [ %i.hk, %.lr.ph.i51.i.1 ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i52.i
  %.val.i53.i = load i16, ptr %i.gs, align 1, !tbaa !23
  %i.gt = zext i16 %.val.i53.i to i64
  %i.gu = mul nuw nsw i64 %i.gt, 2654435769
  %i.gv = lshr i64 %i.gu, 23
  %i.gw = and i64 %i.gv, 511
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !5
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !5
  %i.ha = icmp samesign ult i64 %.0.i3.i52.i, 8180
  br i1 %i.ha, label %.lr.ph.i51.i.1, label %.tail27.i

.lr.ph.i51.i.1:                                   ; preds = %.lr.ph.i51.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i52.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 11
  %.val.i53.i.1 = load i16, ptr %i.hc, align 1, !tbaa !23
  %i.hd = zext i16 %.val.i53.i.1 to i64
  %i.he = mul nuw nsw i64 %i.hd, 2654435769
  %i.hf = lshr i64 %i.he, 23
  %i.hg = and i64 %i.hf, 511
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !5
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !5
  %i.hk = add nuw nsw i64 %.0.i3.i52.i, 22
  br label %.lr.ph.i51.i

call.231.i:                                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.fj, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i55.i

.lr.ph.i55.i:                                     ; preds = %.lr.ph.i55.i.1, %call.231.i
  %.0.i3.i56.i = phi i64 [ 0, %call.231.i ], [ %i.id, %.lr.ph.i55.i.1 ] ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i56.i
  %.val.i57.i = load i16, ptr %i.hl, align 1, !tbaa !23
  %i.hm = zext i16 %.val.i57.i to i64
  %i.hn = mul nuw nsw i64 %i.hm, 2654435769
  %i.ho = lshr i64 %i.hn, 22
  %i.hp = and i64 %i.ho, 1023
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hp ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !5
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !5
  %i.ht = icmp samesign ult i64 %.0.i3.i56.i, 8186
  br i1 %i.ht, label %.lr.ph.i55.i.1, label %.tail27.i

.lr.ph.i55.i.1:                                   ; preds = %.lr.ph.i55.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i56.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 5
  %.val.i57.i.1 = load i16, ptr %i.hv, align 1, !tbaa !23
  %i.hw = zext i16 %.val.i57.i.1 to i64
  %i.hx = mul nuw nsw i64 %i.hw, 2654435769
  %i.hy = lshr i64 %i.hx, 22
  %i.hz = and i64 %i.hy, 1023
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !5
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !5
  %i.id = add nuw nsw i64 %.0.i3.i56.i, 10
  br label %.lr.ph.i55.i

call.332.i:                                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.fj, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.1, %call.332.i
  %.0.i3.i60.i = phi i64 [ 0, %call.332.i ], [ %i.iv, %.lr.ph.i59.i.1 ] ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i60.i
  %.val.i61.i = load i16, ptr %i.ie, align 1, !tbaa !23
  %i.if = zext i16 %.val.i61.i to i64
  %i.ig = mul nuw nsw i64 %i.if, 2654435769
  %i.ih = lshr i64 %i.ig, 22
  %i.ii = and i64 %i.ih, 1023
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !5
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !5
  %exitcond.not.i62.i = icmp eq i64 %.0.i3.i60.i, 8190
  br i1 %exitcond.not.i62.i, label %.tail27.i, label %.lr.ph.i59.i.1

.lr.ph.i59.i.1:                                   ; preds = %.lr.ph.i59.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.i3.i60.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %.val.i61.i.1 = load i16, ptr %i.in, align 1, !tbaa !23
  %i.io = zext i16 %.val.i61.i.1 to i64
  %i.ip = mul nuw nsw i64 %i.io, 2654435769
  %i.iq = lshr i64 %i.ip, 22
  %i.ir = and i64 %i.iq, 1023
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !5
  %i.iu = add i32 %i.it, 1
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !5
  %i.iv = add nuw nsw i64 %.0.i3.i60.i, 2
  br label %.lr.ph.i59.i

.tail27.i:                                        ; preds = %.lr.ph.i59.i, %.lr.ph.i55.i, %.lr.ph.i51.i, %.lr.ph.i48.i
  %.sink.i = phi i64 [ 744, %.lr.ph.i51.i ], [ 190, %.lr.ph.i48.i ], [ 1638, %.lr.ph.i55.i ], [ 8191, %.lr.ph.i59.i ] ; 4 uses
  store i64 %.sink.i, ptr %i.fm, align 8, !tbaa !18
  %i.iw = load i32, ptr %i.fk, align 4, !tbaa !5
  %i.ix = zext nneg i32 %i.iw to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.tail27.i
  %.012.i.i.i11 = phi i64 [ 0, %.tail27.i ], [ %i.jj, %bb.d ] ; 3 uses
  %.01011.i.i.i12 = phi i64 [ 0, %.tail27.i ], [ %i.ji, %bb.d ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.012.i.i.i11
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !5
  %i.ja = zext i32 %i.iz to i64
  %i.jb = mul nuw nsw i64 %.sink.i, %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %.012.i.i.i11
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !5
  %i.je = zext i32 %i.jd to i64
  %i.jf = mul nsw i64 %i.fn, %i.je
  %i.jg = sub nsw i64 %i.jb, %i.jf
  %i.jh = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.jg, i1 true)
  %i.ji = add i64 %i.jh, %.01011.i.i.i12          ; 2 uses
  %i.jj = add i64 %.012.i.i.i11, 1                ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.jj, %i.ix
  %i.jk = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.jk, label %bb.d, label %compareFingerprints.exit.i13, !llvm.loop !25

compareFingerprints.exit.i13:                     ; preds = %bb.d
  %i.jl = add nsw i32 %.02435.i, 14
  %i.jm = sext i32 %i.jl to i64
  %i.jn = mul i64 %i.fn, %i.jm
  %i.jo = mul i64 %i.jn, %.sink.i
  %i.jp = lshr i64 %i.jo, 4
  %.not33.i = icmp ult i64 %i.ji, %i.jp
  br i1 %.not33.i, label %vector.body, label %ZSTD_splitBlock_fromBorders.exit
end_hunk_0
