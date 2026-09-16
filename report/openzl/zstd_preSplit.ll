Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zstd_preSplit?download=true
inline.NumInlined: 23
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ZSTD_splitBlock_byChunks.hashParams = internal unnamed_addr constant [4 x i32] [i32 8, i32 9, i32 10, i32 10], align 16

; Function Attrs: nounwind uwtable
define i64 @ZSTD_splitBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef initializes((0, 8208)) %3, i64 noundef %4) local_unnamed_addr #0 {
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
  store i64 512, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4096 ; 2 uses
  store i64 512, ptr %i.f, align 8, !tbaa !21
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph48
  %index50 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body49 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph48 ], [ %i.u, %vector.body49 ]
  %vec.phi51 = phi <2 x i64> [ zeroinitializer, %vector.ph48 ], [ %i.v, %vector.body49 ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index50 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %wide.load52 = load <2 x i32>, ptr %i.g, align 4, !tbaa !22
  %wide.load53.a = load <2 x i32>, ptr %i.h, align 4, !tbaa !22
  %i.i = zext <2 x i32> %wide.load52 to <2 x i64>
  %i.j = zext <2 x i32> %wide.load53.a to <2 x i64>
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index50 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.load54.a = load <2 x i32>, ptr %i.k, align 4, !tbaa !22
  %wide.load55.a = load <2 x i32>, ptr %i.l, align 4, !tbaa !22
  %i.m = zext <2 x i32> %wide.load54.a to <2 x i64>
  %i.n = zext <2 x i32> %wide.load55.a to <2 x i64>
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
  br i1 %i.w, label %compareFingerprints.exit.i, label %vector.body49, !llvm.loop !11

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
  store i64 512, ptr %i.ad, align 8, !tbaa !26
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !26
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph58
  %index60 = phi i64 [ 0, %vector.ph58 ], [ %index.next67, %vector.body59 ] ; 3 uses
  %vec.phi61 = phi <2 x i64> [ zeroinitializer, %vector.ph58 ], [ %i.av, %vector.body59 ]
  %vec.phi62 = phi <2 x i64> [ zeroinitializer, %vector.ph58 ], [ %i.aw, %vector.body59 ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index60 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %wide.load63 = load <2 x i32>, ptr %i.af, align 4, !tbaa !22
  %wide.load64 = load <2 x i32>, ptr %i.ag, align 4, !tbaa !22
  %i.ah = zext <2 x i32> %wide.load63 to <2 x i64>
  %i.ai = zext <2 x i32> %wide.load64 to <2 x i64>
  %i.aj = shl nuw nsw <2 x i64> %i.ah, splat (i64 9)
  %i.ak = shl nuw nsw <2 x i64> %i.ai, splat (i64 9)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %wide.load65 = load <2 x i32>, ptr %i.al, align 4, !tbaa !22
  %wide.load66 = load <2 x i32>, ptr %i.am, align 4, !tbaa !22
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
  br i1 %i.ax, label %middle.block68, label %vector.body59, !llvm.loop !12

middle.block68:                                   ; preds = %vector.body59
  %bin.rdx69 = add <2 x i64> %i.aw, %i.av
  %5 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx69) ; 2 uses
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !26
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %i.ay, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %middle.block68
  %index74 = phi i64 [ 0, %middle.block68 ], [ %index.next81, %vector.body73 ] ; 3 uses
  %vec.phi75 = phi <2 x i64> [ zeroinitializer, %middle.block68 ], [ %i.bp, %vector.body73 ]
  %vec.phi76 = phi <2 x i64> [ zeroinitializer, %middle.block68 ], [ %i.bq, %vector.body73 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index74 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %wide.load77 = load <2 x i32>, ptr %i.az, align 4, !tbaa !22
  %wide.load78 = load <2 x i32>, ptr %i.ba, align 4, !tbaa !22
  %i.bb = zext <2 x i32> %wide.load77 to <2 x i64>
  %i.bc = zext <2 x i32> %wide.load78 to <2 x i64>
  %i.bd = shl nuw nsw <2 x i64> %i.bb, splat (i64 9)
  %i.be = shl nuw nsw <2 x i64> %i.bc, splat (i64 9)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index74 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %wide.load79 = load <2 x i32>, ptr %i.bf, align 4, !tbaa !22
  %wide.load80 = load <2 x i32>, ptr %i.bg, align 4, !tbaa !22
  %i.bh = zext <2 x i32> %wide.load79 to <2 x i64>
  %i.bi = zext <2 x i32> %wide.load80 to <2 x i64>
  %i.bj = mul nsw <2 x i64> %broadcast.splat72, %i.bh
  %i.bk = mul nsw <2 x i64> %broadcast.splat72, %i.bi
  %i.bl = sub nsw <2 x i64> %i.bd, %i.bj
  %i.bm = sub nsw <2 x i64> %i.be, %i.bk
  %i.bn = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.bl, i1 true)
  %i.bo = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.bm, i1 true)
  %i.bp = add <2 x i64> %i.bn, %vec.phi75         ; 2 uses
  %i.bq = add <2 x i64> %i.bo, %vec.phi76         ; 2 uses
  %index.next81 = add nuw i64 %index74, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next81, 256
  br i1 %i.br, label %fpDistance.exit28.i, label %vector.body73, !llvm.loop !13

fpDistance.exit28.i:                              ; preds = %vector.body73
  %bin.rdx83 = add <2 x i64> %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx83) ; 2 uses
  %i.bt = add i64 %5, 87380
  %i.bu = sub i64 %i.bt, %i.bs
  %i.bv = icmp ult i64 %i.bu, 174761
  %i.bw = icmp ugt i64 %5, %i.bs
  %i.bx = select i1 %i.bw, i64 32768, i64 98304
  %.0.i = select i1 %i.bv, i64 65536, i64 %i.bx
  br label %ZSTD_splitBlock_fromBorders.exit

bb.b:                                             ; preds = %bb.a
  %i.by = add nsw i32 %2, -1                      ; 3 uses
  %i.bz = zext nneg i32 %i.by to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8208) %3, i8 0, i64 8208, i1 false)
  switch i32 %i.by, label %default.switch.case.unreachable.i [
    i32 0, label %call.0.i
    i32 1, label %call.1.i
    i32 2, label %call.2.i
    i32 3, label %call.3.i
  ], !prof !27

default.switch.case.unreachable.i:                ; preds = %bb.b
  unreachable

call.0.i:                                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %3, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.3, %call.0.i
  %.0.i3.i.i = phi i64 [ 0, %call.0.i ], [ %i.dc, %.lr.ph.i.i.3 ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !28
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !22
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 43
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !28
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 86
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !28
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cq ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !22
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !22
  %i.cu = icmp samesign ult i64 %.0.i3.i.i, 8062
  br i1 %i.cu, label %.lr.ph.i.i.3, label %.tail.i

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 129
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !28
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !22
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !22
  %i.dc = add nuw nsw i64 %.0.i3.i.i, 172
  br label %.lr.ph.i.i

call.1.i:                                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %3, i8 0, i64 2048, i1 false)
  br label %.lr.ph.i39.i

.lr.ph.i39.i:                                     ; preds = %.lr.ph.i39.i.1, %call.1.i
  %.0.i3.i40.i = phi i64 [ 0, %call.1.i ], [ %i.dv, %.lr.ph.i39.i.1 ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i40.i
  %.val.i.i = load i16, ptr %i.dd, align 1, !tbaa !30
  %i.de = zext i16 %.val.i.i to i64
  %i.df = mul nuw nsw i64 %i.de, 2654435769
  %i.dg = lshr i64 %i.df, 23
  %i.dh = and i64 %i.dg, 511
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !22
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !22
  %i.dl = icmp samesign ult i64 %.0.i3.i40.i, 8180
  br i1 %i.dl, label %.lr.ph.i39.i.1, label %.tail.i

.lr.ph.i39.i.1:                                   ; preds = %.lr.ph.i39.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i40.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 11
  %.val.i.i.1 = load i16, ptr %i.dn, align 1, !tbaa !30
  %i.do = zext i16 %.val.i.i.1 to i64
  %i.dp = mul nuw nsw i64 %i.do, 2654435769
  %i.dq = lshr i64 %i.dp, 23
  %i.dr = and i64 %i.dq, 511
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !22
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !22
  %i.dv = add nuw nsw i64 %.0.i3.i40.i, 22
  br label %.lr.ph.i39.i

call.2.i:                                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %3, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i41.i

.lr.ph.i41.i:                                     ; preds = %.lr.ph.i41.i.1, %call.2.i
  %.0.i3.i42.i = phi i64 [ 0, %call.2.i ], [ %i.eo, %.lr.ph.i41.i.1 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i42.i
  %.val.i43.i = load i16, ptr %i.dw, align 1, !tbaa !30
  %i.dx = zext i16 %.val.i43.i to i64
  %i.dy = mul nuw nsw i64 %i.dx, 2654435769
  %i.dz = lshr i64 %i.dy, 22
  %i.ea = and i64 %i.dz, 1023
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !22
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !22
  %i.ee = icmp samesign ult i64 %.0.i3.i42.i, 8186
  br i1 %i.ee, label %.lr.ph.i41.i.1, label %.tail.i

.lr.ph.i41.i.1:                                   ; preds = %.lr.ph.i41.i
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i42.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %.val.i43.i.1 = load i16, ptr %i.eg, align 1, !tbaa !30
  %i.eh = zext i16 %.val.i43.i.1 to i64
  %i.ei = mul nuw nsw i64 %i.eh, 2654435769
  %i.ej = lshr i64 %i.ei, 22
  %i.ek = and i64 %i.ej, 1023
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !22
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !22
  %i.eo = add nuw nsw i64 %.0.i3.i42.i, 10
  br label %.lr.ph.i41.i

call.3.i:                                         ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %3, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.1, %call.3.i
  %.0.i3.i45.i = phi i64 [ 0, %call.3.i ], [ %i.fg, %.lr.ph.i44.i.1 ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i45.i
  %.val.i46.i = load i16, ptr %i.ep, align 1, !tbaa !30
  %i.eq = zext i16 %.val.i46.i to i64
  %i.er = mul nuw nsw i64 %i.eq, 2654435769
  %i.es = lshr i64 %i.er, 22
  %i.et = and i64 %i.es, 1023
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !22
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !22
  %exitcond.not.i47.i = icmp eq i64 %.0.i3.i45.i, 8190
  br i1 %exitcond.not.i47.i, label %.tail.i, label %.lr.ph.i44.i.1

.lr.ph.i44.i.1:                                   ; preds = %.lr.ph.i44.i
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i3.i45.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.val.i46.i.1 = load i16, ptr %i.ey, align 1, !tbaa !30
  %i.ez = zext i16 %.val.i46.i.1 to i64
  %i.fa = mul nuw nsw i64 %i.ez, 2654435769
  %i.fb = lshr i64 %i.fa, 22
  %i.fc = and i64 %i.fb, 1023
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !22
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !22
  %i.fg = add nuw nsw i64 %.0.i3.i45.i, 2
  br label %.lr.ph.i44.i

.tail.i:                                          ; preds = %.lr.ph.i44.i, %.lr.ph.i41.i, %.lr.ph.i39.i, %.lr.ph.i.i
  %.sink = phi i64 [ 744, %.lr.ph.i39.i ], [ 190, %.lr.ph.i.i ], [ 1638, %.lr.ph.i41.i ], [ 8191, %.lr.ph.i44.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 4096
  store i64 %.sink, ptr %i.fh, align 8, !tbaa !26
  %i.fi = add i64 %1, -8192                       ; 2 uses
  %.not34.i = icmp ult i64 %i.fi, 8192
  br i1 %.not34.i, label %ZSTD_splitBlock_fromBorders.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.tail.i
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 4104 ; 17 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_splitBlock_byChunks.hashParams, i64 %i.bz
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4096
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8200 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %mergeEvents.exit.i, %.lr.ph.i
  %i.fm = phi i64 [ %.sink, %.lr.ph.i ], [ %i.kc, %mergeEvents.exit.i ] ; 3 uses
  %.036.i = phi i64 [ 8192, %.lr.ph.i ], [ %i.kf, %mergeEvents.exit.i ] ; 3 uses
  %.02435.i = phi i32 [ 3, %.lr.ph.i ], [ %spec.select.i, %mergeEvents.exit.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %.036.i ; 10 uses
  switch i32 %i.by, label %default.switch.case.unreachable28.i [
    i32 0, label %call.029.i
    i32 1, label %call.130.i
    i32 2, label %call.231.i
    i32 3, label %call.332.i
  ], !prof !27

default.switch.case.unreachable28.i:              ; preds = %bb.c
  unreachable

call.029.i:                                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fj, i8 0, i64 1024, i1 false)
  store i64 0, ptr %i.fl, align 8, !tbaa !26
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i.3, %call.029.i
  %.0.i3.i49.i = phi i64 [ 0, %call.029.i ], [ %i.gq, %.lr.ph.i48.i.3 ] ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i49.i
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !28
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !22
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !22
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i49.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 43
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !28
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !22
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !22
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i49.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 86
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !28
  %i.ge = zext i8 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !22
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !22
  %i.gi = icmp samesign ult i64 %.0.i3.i49.i, 8062
  br i1 %i.gi, label %.lr.ph.i48.i.3, label %.tail27.i

.lr.ph.i48.i.3:                                   ; preds = %.lr.ph.i48.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i49.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 129
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !28
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !22
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !22
  %i.gq = add nuw nsw i64 %.0.i3.i49.i, 172
  br label %.lr.ph.i48.i

call.130.i:                                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.fj, i8 0, i64 2048, i1 false)
  br label %.lr.ph.i51.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.i51.i.1, %call.130.i
  %.0.i3.i52.i = phi i64 [ 0, %call.130.i ], [ %i.hj, %.lr.ph.i51.i.1 ] ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i52.i
  %.val.i53.i = load i16, ptr %i.gr, align 1, !tbaa !30
  %i.gs = zext i16 %.val.i53.i to i64
  %i.gt = mul nuw nsw i64 %i.gs, 2654435769
  %i.gu = lshr i64 %i.gt, 23
  %i.gv = and i64 %i.gu, 511
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.gv ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !22
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !22
  %i.gz = icmp samesign ult i64 %.0.i3.i52.i, 8180
  br i1 %i.gz, label %.lr.ph.i51.i.1, label %.tail27.i

.lr.ph.i51.i.1:                                   ; preds = %.lr.ph.i51.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i52.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 11
  %.val.i53.i.1 = load i16, ptr %i.hb, align 1, !tbaa !30
  %i.hc = zext i16 %.val.i53.i.1 to i64
  %i.hd = mul nuw nsw i64 %i.hc, 2654435769
  %i.he = lshr i64 %i.hd, 23
  %i.hf = and i64 %i.he, 511
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hf ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !22
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !22
  %i.hj = add nuw nsw i64 %.0.i3.i52.i, 22
  br label %.lr.ph.i51.i

call.231.i:                                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.fj, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i55.i

.lr.ph.i55.i:                                     ; preds = %.lr.ph.i55.i.1, %call.231.i
  %.0.i3.i56.i = phi i64 [ 0, %call.231.i ], [ %i.ic, %.lr.ph.i55.i.1 ] ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i56.i
  %.val.i57.i = load i16, ptr %i.hk, align 1, !tbaa !30
  %i.hl = zext i16 %.val.i57.i to i64
  %i.hm = mul nuw nsw i64 %i.hl, 2654435769
  %i.hn = lshr i64 %i.hm, 22
  %i.ho = and i64 %i.hn, 1023
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !22
  %i.hr = add i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !22
  %i.hs = icmp samesign ult i64 %.0.i3.i56.i, 8186
  br i1 %i.hs, label %.lr.ph.i55.i.1, label %.tail27.i

.lr.ph.i55.i.1:                                   ; preds = %.lr.ph.i55.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i56.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 5
  %.val.i57.i.1 = load i16, ptr %i.hu, align 1, !tbaa !30
  %i.hv = zext i16 %.val.i57.i.1 to i64
  %i.hw = mul nuw nsw i64 %i.hv, 2654435769
  %i.hx = lshr i64 %i.hw, 22
  %i.hy = and i64 %i.hx, 1023
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !22
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hz, align 4, !tbaa !22
  %i.ic = add nuw nsw i64 %.0.i3.i56.i, 10
  br label %.lr.ph.i55.i

call.332.i:                                       ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4104) %i.fj, i8 0, i64 4104, i1 false)
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.1, %call.332.i
  %.0.i3.i60.i = phi i64 [ 0, %call.332.i ], [ %i.iu, %.lr.ph.i59.i.1 ] ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i60.i
  %.val.i61.i = load i16, ptr %i.id, align 1, !tbaa !30
  %i.ie = zext i16 %.val.i61.i to i64
  %i.if = mul nuw nsw i64 %i.ie, 2654435769
  %i.ig = lshr i64 %i.if, 22
  %i.ih = and i64 %i.ig, 1023
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !22
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !22
  %exitcond.not.i62.i = icmp eq i64 %.0.i3.i60.i, 8190
  br i1 %exitcond.not.i62.i, label %.tail27.i, label %.lr.ph.i59.i.1

.lr.ph.i59.i.1:                                   ; preds = %.lr.ph.i59.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0.i3.i60.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 1
  %.val.i61.i.1 = load i16, ptr %i.im, align 1, !tbaa !30
  %i.in = zext i16 %.val.i61.i.1 to i64
  %i.io = mul nuw nsw i64 %i.in, 2654435769
  %i.ip = lshr i64 %i.io, 22
  %i.iq = and i64 %i.ip, 1023
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !22
  %i.it = add i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !22
  %i.iu = add nuw nsw i64 %.0.i3.i60.i, 2
  br label %.lr.ph.i59.i

.tail27.i:                                        ; preds = %.lr.ph.i59.i, %.lr.ph.i55.i, %.lr.ph.i51.i, %.lr.ph.i48.i
  %.sink.i = phi i64 [ 744, %.lr.ph.i51.i ], [ 190, %.lr.ph.i48.i ], [ 1638, %.lr.ph.i55.i ], [ 8191, %.lr.ph.i59.i ] ; 4 uses
  store i64 %.sink.i, ptr %i.fl, align 8, !tbaa !26
  %i.iv = load i32, ptr %i.fk, align 4, !tbaa !22
  %i.iw = zext nneg i32 %i.iv to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.tail27.i
  %.012.i.i.i11 = phi i64 [ 0, %.tail27.i ], [ %i.ji, %bb.d ] ; 3 uses
  %.01011.i.i.i12 = phi i64 [ 0, %.tail27.i ], [ %i.jh, %bb.d ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.012.i.i.i11
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !22
  %i.iz = zext i32 %i.iy to i64
  %i.ja = mul nuw nsw i64 %.sink.i, %i.iz
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %.012.i.i.i11
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !22
  %i.jd = zext i32 %i.jc to i64
  %i.je = mul nsw i64 %i.fm, %i.jd
  %i.jf = sub nsw i64 %i.ja, %i.je
  %i.jg = tail call range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.jf, i1 true)
  %i.jh = add i64 %i.jg, %.01011.i.i.i12          ; 2 uses
  %i.ji = add i64 %.012.i.i.i11, 1                ; 2 uses
  %.0.highbits.i.i.i = lshr i64 %i.ji, %i.iw
  %i.jj = icmp eq i64 %.0.highbits.i.i.i, 0
  br i1 %i.jj, label %bb.d, label %compareFingerprints.exit.i13, !llvm.loop !14

compareFingerprints.exit.i13:                     ; preds = %bb.d
  %i.jk = add nsw i32 %.02435.i, 14
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul i64 %i.fm, %i.jl
  %i.jn = mul i64 %i.jm, %.sink.i
  %i.jo = lshr i64 %i.jn, 4
  %.not33.i = icmp ult i64 %i.jh, %i.jo
  br i1 %.not33.i, label %vector.body, label %ZSTD_splitBlock_fromBorders.exit

vector.body:                                      ; preds = %compareFingerprints.exit.i13, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %compareFingerprints.exit.i13 ] ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load = load <4 x i32>, ptr %i.jp, align 4, !tbaa !22
  %wide.load45 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !22
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %wide.load46 = load <4 x i32>, ptr %i.jr, align 4, !tbaa !22
  %wide.load47 = load <4 x i32>, ptr %i.js, align 4, !tbaa !22
  %i.jt = add <4 x i32> %wide.load46, %wide.load
  %i.ju = add <4 x i32> %wide.load47, %wide.load45
  store <4 x i32> %i.jt, ptr %i.jr, align 4, !tbaa !22
  store <4 x i32> %i.ju, ptr %i.js, align 4, !tbaa !22
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %index.next ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !22
  %wide.load45.1 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !22
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index.next ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load46.1 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !22
  %wide.load47.1 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !22
  %i.jz = add <4 x i32> %wide.load46.1, %wide.load.1
  %i.ka = add <4 x i32> %wide.load47.1, %wide.load45.1
  store <4 x i32> %i.jz, ptr %i.jx, align 4, !tbaa !22
  store <4 x i32> %i.ka, ptr %i.jy, align 4, !tbaa !22
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.kb = icmp eq i64 %index.next.1, 1024
  br i1 %i.kb, label %mergeEvents.exit.i, label %vector.body, !llvm.loop !15

mergeEvents.exit.i:                               ; preds = %vector.body
  %i.kc = add i64 %.sink.i, %i.fm                 ; 2 uses
  store i64 %i.kc, ptr %6, align 8, !tbaa !26
  %i.kd = icmp sgt i32 %.02435.i, 0
  %i.ke = sext i1 %i.kd to i32
  %spec.select.i = add nsw i32 %.02435.i, %i.ke
  %i.kf = add i64 %.036.i, 8192                   ; 2 uses
  %.not.i = icmp ugt i64 %i.kf, %i.fi
  br i1 %.not.i, label %ZSTD_splitBlock_fromBorders.exit, label %bb.c, !llvm.loop !16

ZSTD_splitBlock_fromBorders.exit:                 ; preds = %mergeEvents.exit.i, %compareFingerprints.exit.i13, %.tail.i, %fpDistance.exit28.i, %compareFingerprints.exit.i
  %.0 = phi i64 [ %1, %compareFingerprints.exit.i ], [ %.0.i, %fpDistance.exit28.i ], [ %1, %.tail.i ], [ %1, %mergeEvents.exit.i ], [ %.036.i, %compareFingerprints.exit.i13 ]
  ret i64 %.0
}

declare void @HIST_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, !23, !24, !25}
!12 = distinct !{!12, !23, !24, !25}
!13 = distinct !{!13, !23, !24, !25}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !23, !24, !25}
!16 = distinct !{!16, !23}
!17 = !{!"long", !7, i64 0}
!18 = !{!"", !7, i64 0, !17, i64 4096}
!19 = !{!"", !18, i64 0, !18, i64 4104}
!20 = !{!19, !17, i64 8200}
!21 = !{!19, !17, i64 4096}
!22 = !{!8, !8, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!18, !17, i64 4096}
!27 = !{!"unknown", !"jump-table-to-switch"}
!28 = !{!7, !7, i64 0}
!29 = !{!"short", !7, i64 0}
!30 = !{!29, !29, i64 0}
end_hunk_0
