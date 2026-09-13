Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_pivco_avx512?download=true
inline.NumInlined: 57
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_PivCoHuffmanDecode = type { ptr, ptr, ptr, ptr }

@ZL_PivCoHuffmanDecode_avx512 = local_unnamed_addr constant %struct.ZL_PivCoHuffmanDecode { ptr @supported, ptr @mergeVectorVector, ptr @mergeConstantVector, ptr @mergeFlatDepth }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i1 @supported(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 4              ; 2 uses
  %i.c = and i64 %i.b, 286689132544
  %or.cond13 = icmp eq i64 %i.c, 286689132544
  br i1 %or.cond13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %i.b, 256
  %i.e = icmp ne i64 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = phi i1 [ %i.e, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal i64 @mergeVectorVector(ptr nofree noundef writeonly captures(none) %0, i64 %1, ptr nofree noundef readonly captures(none) %2, i64 %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = add i64 %7, %5                           ; 6 uses
  %i.b = and i64 %i.a, -256                       ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %bb.a, %bb.e
  %.065.i63 = phi i64 [ %i.bl, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %.062 = phi i64 [ %i.bh, %bb.e ], [ 0, %bb.a ]  ; 2 uses
  %.02061 = phi i64 [ %i.bg, %bb.e ], [ 0, %bb.a ] ; 2 uses
  %i.c = lshr exact i64 %.065.i63, 3
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.065.i63 ; 4 uses
  %.val = load i64, ptr %i.d, align 1             ; 3 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.val) ; 2 uses
  %i.g = xor i64 %.val, -1
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 %.062
  %i.i = bitcast i64 %.val to <64 x i1>
  %i.j = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.h, <64 x i1> %i.i, <64 x i8> zeroinitializer)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %.02061
  %i.l = bitcast i64 %i.g to <64 x i1>
  %i.m = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.k, <64 x i1> %i.l, <64 x i8> zeroinitializer)
  %i.n = or <64 x i8> %i.m, %i.j
  %reass.sub = sub i64 %.02061, %i.f
  %i.o = add i64 %reass.sub, 64                   ; 4 uses
  %i.p = add i64 %i.f, %.062                      ; 4 uses
  store <64 x i8> %i.n, ptr %i.e, align 1, !tbaa !13
  %i.q = icmp ugt i64 %i.p, %7
  br i1 %i.q, label %mergeVectorImpl.exit, label %.thread, !prof !15

.preheader:                                       ; preds = %bb.e, %bb.a
  %.020.lcssa = phi i64 [ 0, %bb.a ], [ %i.bg, %bb.e ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.bh, %bb.e ] ; 2 uses
  %.065.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.bl, %bb.e ] ; 2 uses
  %i.r = icmp ult i64 %.065.i.lcssa, %i.a
  br i1 %i.r, label %.lr.ph, label %mergeVectorImpl.exit

bb.b:                                             ; preds = %.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.1 = load i64, ptr %i.s, align 1           ; 3 uses
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.val.1) ; 2 uses
  %i.u = xor i64 %.val.1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 %i.p
  %i.w = bitcast i64 %.val.1 to <64 x i1>
  %i.x = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.v, <64 x i1> %i.w, <64 x i8> zeroinitializer)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.o
  %i.z = bitcast i64 %i.u to <64 x i1>
  %i.aa = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.y, <64 x i1> %i.z, <64 x i8> zeroinitializer)
  %i.ab = or <64 x i8> %i.aa, %i.x
  %reass.sub.1 = sub i64 %i.o, %i.t
  %i.ac = add i64 %reass.sub.1, 64                ; 4 uses
  %i.ad = add i64 %i.t, %i.p                      ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store <64 x i8> %i.ab, ptr %i.ae, align 1, !tbaa !13
  %i.af = icmp ugt i64 %i.ad, %7
  br i1 %i.af, label %mergeVectorImpl.exit, label %.thread.1, !prof !15

.thread.1:                                        ; preds = %bb.b
  %i.ag = icmp ugt i64 %i.ac, %5
  br i1 %i.ag, label %.thread27, label %bb.c, !prof !16

bb.c:                                             ; preds = %.thread.1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val.2 = load i64, ptr %i.ah, align 1          ; 3 uses
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.val.2) ; 2 uses
  %i.aj = xor i64 %.val.2, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 %i.ad
  %i.al = bitcast i64 %.val.2 to <64 x i1>
  %i.am = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.ak, <64 x i1> %i.al, <64 x i8> zeroinitializer)
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ao = bitcast i64 %i.aj to <64 x i1>
  %i.ap = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.an, <64 x i1> %i.ao, <64 x i8> zeroinitializer)
  %i.aq = or <64 x i8> %i.ap, %i.am
  %reass.sub.2 = sub i64 %i.ac, %i.ai
  %i.ar = add i64 %reass.sub.2, 64                ; 4 uses
  %i.as = add i64 %i.ai, %i.ad                    ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <64 x i8> %i.aq, ptr %i.at, align 1, !tbaa !13
  %i.au = icmp ugt i64 %i.as, %7
  br i1 %i.au, label %mergeVectorImpl.exit, label %.thread.2, !prof !15

.thread.2:                                        ; preds = %bb.c
  %i.av = icmp ugt i64 %i.ar, %5
  br i1 %i.av, label %.thread27, label %bb.d, !prof !16

bb.d:                                             ; preds = %.thread.2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.3 = load i64, ptr %i.aw, align 1          ; 3 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.val.3) ; 2 uses
  %i.ay = xor i64 %.val.3, -1
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 %i.as
  %i.ba = bitcast i64 %.val.3 to <64 x i1>
  %i.bb = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.az, <64 x i1> %i.ba, <64 x i8> zeroinitializer)
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %i.ar
  %i.bd = bitcast i64 %i.ay to <64 x i1>
  %i.be = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.bc, <64 x i1> %i.bd, <64 x i8> zeroinitializer)
  %i.bf = or <64 x i8> %i.be, %i.bb
  %reass.sub.3 = sub i64 %i.ar, %i.ax
  %i.bg = add i64 %reass.sub.3, 64                ; 4 uses
  %i.bh = add i64 %i.ax, %i.as                    ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store <64 x i8> %i.bf, ptr %i.bi, align 1, !tbaa !13
  %i.bj = icmp ugt i64 %i.bh, %7
  br i1 %i.bj, label %mergeVectorImpl.exit, label %.thread.3, !prof !15

.thread.3:                                        ; preds = %bb.d
  %i.bk = icmp ugt i64 %i.bg, %5
  br i1 %i.bk, label %.thread27, label %bb.e, !prof !16

bb.e:                                             ; preds = %.thread.3
  %i.bl = add nuw i64 %.065.i63, 256              ; 3 uses
  %i.bm = icmp ult i64 %i.bl, %i.b
  br i1 %i.bm, label %.preheader41, label %.preheader, !llvm.loop !0

.thread:                                          ; preds = %.preheader41
  %i.bn = icmp ugt i64 %i.o, %5
  br i1 %i.bn, label %.thread27, label %bb.b, !prof !16

.thread27:                                        ; preds = %.thread.3, %.thread.2, %.thread.1, %.thread
  %.lcssa79 = phi i64 [ %i.o, %.thread ], [ %i.ac, %.thread.1 ], [ %i.ar, %.thread.2 ], [ %i.bg, %.thread.3 ]
  %i.bo = sub i64 %i.a, %.lcssa79
  br label %mergeVectorImpl.exit

bb.f:                                             ; preds = %.thread34
  %i.bp = add i64 %.166.i68, 64                   ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.a
  br i1 %i.bq, label %.lr.ph, label %mergeVectorImpl.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.preheader, %bb.f
  %.166.i68 = phi i64 [ %i.bp, %bb.f ], [ %.065.i.lcssa, %.preheader ] ; 4 uses
  %.167 = phi i64 [ %i.cq, %bb.f ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12166 = phi i64 [ %i.cv, %bb.f ], [ %.020.lcssa, %.preheader ] ; 2 uses
  %i.br = sub nuw i64 %i.a, %.166.i68             ; 2 uses
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.br, i64 64) ; 3 uses
  %i.bt = icmp ugt i64 %i.br, 63
  %notmask.i = shl nsw i64 -1, %i.bs
  %i.bu = xor i64 %notmask.i, -1
  %i.bv = select i1 %i.bt, i64 -1, i64 %i.bu      ; 3 uses
  %i.bw = add nuw nsw i64 %i.bs, 7
  %i.bx = lshr i64 %i.bw, 3                       ; 2 uses
  %.not.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i, label %ZL_readLE64_N.exit, label %ZL_readLE64_N.exit.loopexit

ZL_readLE64_N.exit.loopexit:                      ; preds = %.lr.ph
  %i.by = lshr exact i64 %.166.i68, 3
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by
  %trip.count.minus.1 = add nsw i64 %i.bx, -1
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ca = icmp uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 2 uses
  %wide.masked.load = tail call <8 x i8> @llvm.masked.load.v8i8.p0(ptr align 1 %i.bz, <8 x i1> %i.ca, <8 x i8> poison), !tbaa !13
  %i.cb = zext <8 x i8> %wide.masked.load to <8 x i64>
  %i.cc = shl nuw <8 x i64> %i.cb, <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.cd = select <8 x i1> %i.ca, <8 x i64> %i.cc, <8 x i64> zeroinitializer
  %i.ce = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.cd)
  br label %ZL_readLE64_N.exit

ZL_readLE64_N.exit:                               ; preds = %ZL_readLE64_N.exit.loopexit, %.lr.ph
  %.08.lcssa.i = phi i64 [ 0, %.lr.ph ], [ %i.ce, %ZL_readLE64_N.exit.loopexit ] ; 2 uses
  %i.cf = and i64 %.08.lcssa.i, %i.bv             ; 2 uses
  %i.cg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cf) ; 2 uses
  %i.ch = xor i64 %.08.lcssa.i, -1
  %i.ci = and i64 %i.bv, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 %.167
  %i.ck = bitcast i64 %i.cf to <64 x i1>
  %i.cl = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.cj, <64 x i1> %i.ck, <64 x i8> zeroinitializer)
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 %.12166
  %i.cn = bitcast i64 %i.ci to <64 x i1>
  %i.co = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.cm, <64 x i1> %i.cn, <64 x i8> zeroinitializer)
  %i.cp = or <64 x i8> %i.co, %i.cl
  %i.cq = add i64 %i.cg, %.167                    ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %.166.i68
  %i.cs = bitcast i64 %i.bv to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.cp, ptr align 1 %i.cr, <64 x i1> %i.cs)
  %i.ct = icmp ugt i64 %i.cq, %7
  br i1 %i.ct, label %mergeVectorImpl.exit, label %.thread34, !prof !15

.thread34:                                        ; preds = %ZL_readLE64_N.exit
  %i.cu = sub nsw i64 %i.bs, %i.cg
  %i.cv = add i64 %i.cu, %.12166                  ; 3 uses
  %i.cw = icmp ugt i64 %i.cv, %5
  br i1 %i.cw, label %.thread38, label %bb.f, !prof !16

.thread38:                                        ; preds = %.thread34
  %i.cx = sub i64 %i.a, %i.cv
  br label %mergeVectorImpl.exit

mergeVectorImpl.exit:                             ; preds = %.preheader41, %bb.b, %bb.c, %bb.d, %bb.f, %ZL_readLE64_N.exit, %.preheader, %.thread27, %.thread38
  %.6.i = phi i64 [ %i.bo, %.thread27 ], [ %.0.lcssa, %.preheader ], [ %i.cx, %.thread38 ], [ %i.cq, %bb.f ], [ %i.cq, %ZL_readLE64_N.exit ], [ %i.ad, %bb.b ], [ %i.p, %.preheader41 ], [ %i.bh, %bb.d ], [ %i.as, %bb.c ]
  ret i64 %.6.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite) uwtable
define internal i64 @mergeConstantVector(ptr nofree noundef writeonly captures(none) %0, i64 %1, ptr nofree noundef readonly captures(none) %2, i64 %3, i8 noundef zeroext %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = add i64 %7, %5                           ; 4 uses
  %i.b = insertelement <64 x i8> poison, i8 %4, i64 0
  %i.c = shufflevector <64 x i8> %i.b, <64 x i8> poison, <64 x i32> zeroinitializer ; 5 uses
  %i.d = and i64 %i.a, -256                       ; 2 uses
  %.not39 = icmp eq i64 %i.d, 0
  br i1 %.not39, label %.preheader, label %.preheader19

.preheader19:                                     ; preds = %bb.a, %bb.e
  %.065.i31 = phi i64 [ %i.ai, %bb.e ], [ 0, %bb.a ] ; 3 uses
  %.029 = phi i64 [ %i.ag, %bb.e ], [ 0, %bb.a ]  ; 2 uses
  %i.e = lshr exact i64 %.065.i31, 3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.e ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.065.i31 ; 4 uses
  %.val = load i64, ptr %i.f, align 1             ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.val)
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %.029
  %i.j = bitcast i64 %.val to <64 x i1>
  %i.k = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.i, <64 x i1> %i.j, <64 x i8> %i.c)
  %i.l = add i64 %i.h, %.029                      ; 4 uses
  store <64 x i8> %i.k, ptr %i.g, align 1, !tbaa !13
  %.not18 = icmp ugt i64 %i.l, %7
  br i1 %.not18, label %mergeVectorImpl.exit, label %bb.b

.preheader:                                       ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.e ] ; 2 uses
  %.065.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.ai, %bb.e ] ; 2 uses
  %i.m = icmp ult i64 %.065.i.lcssa, %i.a
  br i1 %i.m, label %.lr.ph, label %mergeVectorImpl.exit

bb.b:                                             ; preds = %.preheader19
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.1 = load i64, ptr %i.n, align 1           ; 2 uses
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.val.1)
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.l
  %i.q = bitcast i64 %.val.1 to <64 x i1>
  %i.r = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.p, <64 x i1> %i.q, <64 x i8> %i.c)
  %i.s = add i64 %i.o, %i.l                       ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store <64 x i8> %i.r, ptr %i.t, align 1, !tbaa !13
  %.not18.1 = icmp ugt i64 %i.s, %7
  br i1 %.not18.1, label %mergeVectorImpl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val.2 = load i64, ptr %i.u, align 1           ; 2 uses
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.val.2)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 %i.s
  %i.x = bitcast i64 %.val.2 to <64 x i1>
  %i.y = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.w, <64 x i1> %i.x, <64 x i8> %i.c)
  %i.z = add i64 %i.v, %i.s                       ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store <64 x i8> %i.y, ptr %i.aa, align 1, !tbaa !13
  %.not18.2 = icmp ugt i64 %i.z, %7
  br i1 %.not18.2, label %mergeVectorImpl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.val.3 = load i64, ptr %i.ab, align 1          ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.val.3)
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 %i.z
  %i.ae = bitcast i64 %.val.3 to <64 x i1>
  %i.af = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.ad, <64 x i1> %i.ae, <64 x i8> %i.c)
  %i.ag = add i64 %i.ac, %i.z                     ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  store <64 x i8> %i.af, ptr %i.ah, align 1, !tbaa !13
  %.not18.3 = icmp ugt i64 %i.ag, %7
  br i1 %.not18.3, label %mergeVectorImpl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = add nuw i64 %.065.i31, 256              ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %i.d
  br i1 %i.aj, label %.preheader19, label %.preheader, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader, %ZL_readLE64_N.exit
  %.166.i36 = phi i64 [ %i.bg, %ZL_readLE64_N.exit ], [ %.065.i.lcssa, %.preheader ] ; 4 uses
  %.134 = phi i64 [ %i.bd, %ZL_readLE64_N.exit ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %i.ak = sub nuw i64 %i.a, %.166.i36             ; 2 uses
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 64) ; 2 uses
  %i.am = icmp ugt i64 %i.ak, 63
  %notmask.i = shl nsw i64 -1, %i.al
  %i.an = xor i64 %notmask.i, -1
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an      ; 2 uses
  %i.ap = add nuw nsw i64 %i.al, 7
  %i.aq = lshr i64 %i.ap, 3                       ; 2 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %ZL_readLE64_N.exit, label %ZL_readLE64_N.exit.loopexit

ZL_readLE64_N.exit.loopexit:                      ; preds = %.lr.ph
  %i.ar = lshr exact i64 %.166.i36, 3
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  %trip.count.minus.1 = add nsw i64 %i.aq, -1
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.at = icmp uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 2 uses
  %wide.masked.load = tail call <8 x i8> @llvm.masked.load.v8i8.p0(ptr align 1 %i.as, <8 x i1> %i.at, <8 x i8> poison), !tbaa !13
  %i.au = zext <8 x i8> %wide.masked.load to <8 x i64>
  %i.av = shl nuw <8 x i64> %i.au, <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.aw = select <8 x i1> %i.at, <8 x i64> %i.av, <8 x i64> zeroinitializer
  %i.ax = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.aw)
  %i.ay = and i64 %i.ax, %i.ao
  br label %ZL_readLE64_N.exit

ZL_readLE64_N.exit:                               ; preds = %ZL_readLE64_N.exit.loopexit, %.lr.ph
  %.08.lcssa.i = phi i64 [ 0, %.lr.ph ], [ %i.ay, %ZL_readLE64_N.exit.loopexit ] ; 2 uses
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.08.lcssa.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %.134
  %i.bb = bitcast i64 %.08.lcssa.i to <64 x i1>
  %i.bc = tail call <64 x i8> @llvm.masked.expandload.v64i8.p0(ptr %i.ba, <64 x i1> %i.bb, <64 x i8> %i.c)
  %i.bd = add i64 %i.az, %.134                    ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.166.i36
  %i.bf = bitcast i64 %i.ao to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bc, ptr align 1 %i.be, <64 x i1> %i.bf)
  %.not = icmp ule i64 %i.bd, %7
  %i.bg = add i64 %.166.i36, 64                   ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.a
  %or.cond = and i1 %.not, %i.bh
  br i1 %or.cond, label %.lr.ph, label %mergeVectorImpl.exit, !llvm.loop !1

mergeVectorImpl.exit:                             ; preds = %.preheader19, %bb.b, %bb.c, %bb.d, %ZL_readLE64_N.exit, %.preheader
  %.6.i = phi i64 [ %.0.lcssa, %.preheader ], [ %i.bd, %ZL_readLE64_N.exit ], [ %i.s, %bb.b ], [ %i.l, %.preheader19 ], [ %i.ag, %bb.d ], [ %i.z, %bb.c ]
  ret i64 %.6.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mergeFlatDepth(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 %2, ptr nofree noundef readonly captures(none) %3, i64 %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  switch i64 %5, label %bb.t [
    i64 1, label %bb.b
    i64 2, label %bb.d
    i64 3, label %bb.f
    i64 4, label %bb.h
    i64 5, label %bb.k
    i64 6, label %bb.n
    i64 7, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load i8, ptr %6, align 1, !tbaa !13
  %i.a = getelementptr i8, ptr %6, i64 1
  %.val40 = load i8, ptr %i.a, align 1, !tbaa !13
  %i.b = insertelement <64 x i8> poison, i8 %.val, i64 0
  %i.c = shufflevector <64 x i8> %i.b, <64 x i8> poison, <64 x i32> zeroinitializer ; 2 uses
  %i.d = insertelement <64 x i8> poison, i8 %.val40, i64 0
  %i.e = shufflevector <64 x i8> %i.d, <64 x i8> poison, <64 x i32> zeroinitializer ; 2 uses
  %.not2.i = icmp ult i64 %1, 64
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.f = phi i64 [ %i.k, %.lr.ph.i ], [ 64, %bb.b ] ; 3 uses
  %.03.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.g = lshr exact i64 %.03.i, 3
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  %.val1.i = load <64 x i1>, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.03.i
  %i.j = select <64 x i1> %.val1.i, <64 x i8> %i.e, <64 x i8> %i.c
  store <64 x i8> %i.j, ptr %i.i, align 1, !tbaa !13
  %i.k = add i64 %i.f, 64                         ; 2 uses
  %.not.i = icmp ugt i64 %i.k, %1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.f, %.lr.ph.i ] ; 4 uses
  %i.l = icmp ult i64 %.0.lcssa.i, %1
  br i1 %i.l, label %bb.c, label %mergeFlatDepth1.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = sub nuw i64 %1, %.0.lcssa.i              ; 3 uses
  %i.n = lshr exact i64 %.0.lcssa.i, 3
  %i.o = add i64 %i.m, 7                          ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = icmp ugt i64 %i.m, 63
  %notmask.i.i = shl nsw i64 -1, %i.m
  %i.r = xor i64 %notmask.i.i, -1
  %i.s = select i1 %i.q, i64 -1, i64 %i.r         ; 2 uses
  %i.t = icmp ugt i64 %i.o, 511
  %notmask.i31.i = shl nsw i64 -1, %i.p
  %i.u = trunc i64 %notmask.i31.i to i16
  %i.v = xor i16 %i.u, -1
  %i.w = select i1 %i.t, i16 -1, i16 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.n
  %i.y = bitcast i16 %i.w to <16 x i1>
  %i.z = tail call <16 x i8> @llvm.masked.load.v16i8.p0(ptr readonly align 1 %i.x, <16 x i1> %i.y, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.aa = bitcast <16 x i8> %i.z to <2 x i64>
  %i.ab = extractelement <2 x i64> %i.aa, i64 0
  %i.ac = and i64 %i.ab, %i.s
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  %i.ae = bitcast i64 %i.ac to <64 x i1>
  %i.af = select <64 x i1> %i.ae, <64 x i8> %i.e, <64 x i8> %i.c
  %i.ag = bitcast i64 %i.s to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.af, ptr align 1 %i.ad, <64 x i1> %i.ag)
  br label %mergeFlatDepth1.exit

bb.d:                                             ; preds = %bb.a
  %i.ah = load <4 x i8>, ptr %6, align 1, !tbaa !13
  %i.ai = shufflevector <4 x i8> %i.ah, <4 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.63.vec.insert.i114 = shufflevector <64 x i8> %i.ai, <64 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 16, i32 17, i32 18, i32 19, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 32, i32 33, i32 34, i32 35, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 48, i32 49, i32 50, i32 51, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127> ; 2 uses
  %.not.i14.i = icmp ult i64 %1, 64
  br i1 %.not.i14.i, label %._crit_edge.i42, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.d, %.lr.ph.i41
  %i.aj = phi i64 [ %i.as, %.lr.ph.i41 ], [ 64, %bb.d ] ; 3 uses
  %.0.i15.i = phi i64 [ %i.aj, %.lr.ph.i41 ], [ 0, %bb.d ] ; 2 uses
  %i.ak = lshr exact i64 %.0.i15.i, 2
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak
  %i.am = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %i.al, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, <64 x i8> poison)
  %i.an = shufflevector <64 x i8> %i.am, <64 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 1, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 2, i32 3, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 4, i32 5, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 6, i32 7, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 8, i32 9, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 10, i32 11, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 12, i32 13, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 14, i32 15, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.ao = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14>, <64 x i8> %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i15.i
  %i.aq = and <64 x i8> %i.ao, splat (i8 3)
  %i.ar = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %.sroa.0.63.vec.insert.i114, <64 x i8> %i.aq)
  store <64 x i8> %i.ar, ptr %i.ap, align 1, !tbaa !13
  %i.as = add i64 %i.aj, 64                       ; 2 uses
  %.not.i.i = icmp ugt i64 %i.as, %1
  br i1 %.not.i.i, label %._crit_edge.i42, label %.lr.ph.i41, !llvm.loop !18

._crit_edge.i42:                                  ; preds = %.lr.ph.i41, %bb.d
  %.0.i.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.aj, %.lr.ph.i41 ] ; 4 uses
  %i.at = icmp ult i64 %.0.i.lcssa.i, %1
  br i1 %i.at, label %bb.e, label %mergeFlatDepth1.exit

bb.e:                                             ; preds = %._crit_edge.i42
  %i.au = sub nuw i64 %1, %.0.i.lcssa.i           ; 3 uses
  %i.av = lshr exact i64 %.0.i.lcssa.i, 2
  %i.aw = shl i64 %i.au, 1
  %i.ax = add i64 %i.aw, 6                        ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.av
  %i.ba = icmp ugt i64 %i.ax, 511
  %notmask.i.i43 = shl nsw i64 -1, %i.ay
  %i.bb = xor i64 %notmask.i.i43, -1
  %i.bc = select i1 %i.ba, i64 -1, i64 %i.bb
  %i.bd = bitcast i64 %i.bc to <64 x i1>
  %i.be = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %i.az, <64 x i1> %i.bd, <64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.bf = shufflevector <64 x i8> %i.be, <64 x i8> <i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 1, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 2, i32 3, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 4, i32 5, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 6, i32 7, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 8, i32 9, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 10, i32 11, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 12, i32 13, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 14, i32 15, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.bg = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14, i8 0, i8 2, i8 4, i8 6, i8 8, i8 10, i8 12, i8 14>, <64 x i8> %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.lcssa.i
  %i.bi = icmp ugt i64 %i.au, 63
  %notmask.i7.i = shl nsw i64 -1, %i.au
  %i.bj = xor i64 %notmask.i7.i, -1
  %i.bk = select i1 %i.bi, i64 -1, i64 %i.bj
  %i.bl = and <64 x i8> %i.bg, splat (i8 3)
  %i.bm = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %.sroa.0.63.vec.insert.i114, <64 x i8> %i.bl)
  %i.bn = bitcast i64 %i.bk to <64 x i1>
  tail call void @llvm.masked.store.v64i8.p0(<64 x i8> %i.bm, ptr align 1 %i.bh, <64 x i1> %i.bn)
  br label %mergeFlatDepth1.exit

bb.f:                                             ; preds = %bb.a
  %i.bo = load <8 x i8>, ptr %6, align 1, !tbaa !13
  %i.bp = shufflevector <8 x i8> %i.bo, <8 x i8> poison, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0.63.vec.insert.i44115 = shufflevector <64 x i8> %i.bp, <64 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 127> ; 2 uses
  %.not.i14.i45 = icmp ult i64 %1, 64
  br i1 %.not.i14.i45, label %._crit_edge.i49, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.f, %.lr.ph.i46
  %i.bq = phi i64 [ %i.ca, %.lr.ph.i46 ], [ 64, %bb.f ] ; 3 uses
  %.0.i15.i47 = phi i64 [ %i.bq, %.lr.ph.i46 ], [ 0, %bb.f ] ; 2 uses
  %i.br = lshr exact i64 %.0.i15.i47, 3
  %i.bs = mul nuw nsw i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs
  %i.bu = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %i.bt, <64 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, <64 x i8> poison)
  %i.bv = shufflevector <64 x i8> %i.bu, <64 x i8> <i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 1, i32 2, i32 67, i32 68, i32 69, i32 70, i32 71, i32 3, i32 4, i32 5, i32 75, i32 76, i32 77, i32 78, i32 79, i32 6, i32 7, i32 8, i32 83, i32 84, i32 85, i32 86, i32 87, i32 9, i32 10, i32 11, i32 91, i32 92, i32 93, i32 94, i32 95, i32 12, i32 13, i32 14, i32 99, i32 100, i32 101, i32 102, i32 103, i32 15, i32 16, i32 17, i32 107, i32 108, i32 109, i32 110, i32 111, i32 18, i32 19, i32 20, i32 115, i32 116, i32 117, i32 118, i32 119, i32 21, i32 22, i32 23, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.bw = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21>, <64 x i8> %i.bv)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i15.i47
  %i.by = and <64 x i8> %i.bw, splat (i8 7)
  %i.bz = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> %.sroa.0.63.vec.insert.i44115, <64 x i8> %i.by)
  store <64 x i8> %i.bz, ptr %i.bx, align 1, !tbaa !13
  %i.ca = add i64 %i.bq, 64                       ; 2 uses
  %.not.i.i48 = icmp ugt i64 %i.ca, %1
  br i1 %.not.i.i48, label %._crit_edge.i49, label %.lr.ph.i46, !llvm.loop !18

._crit_edge.i49:                                  ; preds = %.lr.ph.i46, %bb.f
  %.0.i.lcssa.i50 = phi i64 [ 0, %bb.f ], [ %i.bq, %.lr.ph.i46 ] ; 4 uses
  %i.cb = icmp ult i64 %.0.i.lcssa.i50, %1
  br i1 %i.cb, label %bb.g, label %mergeFlatDepth1.exit

bb.g:                                             ; preds = %._crit_edge.i49
  %i.cc = sub nuw i64 %1, %.0.i.lcssa.i50         ; 3 uses
  %i.cd = lshr exact i64 %.0.i.lcssa.i50, 3
  %i.ce = mul nuw nsw i64 %i.cd, 3
  %i.cf = mul i64 %i.cc, 3
  %i.cg = add i64 %i.cf, 7                        ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %i.ce
  %i.cj = icmp ugt i64 %i.cg, 511
  %notmask.i.i51 = shl nsw i64 -1, %i.ch
  %i.ck = xor i64 %notmask.i.i51, -1
  %i.cl = select i1 %i.cj, i64 -1, i64 %i.ck
  %i.cm = bitcast i64 %i.cl to <64 x i1>
  %i.cn = tail call <64 x i8> @llvm.masked.load.v64i8.p0(ptr readonly align 1 %i.ci, <64 x i1> %i.cm, <64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>)
  %i.co = shufflevector <64 x i8> %i.cn, <64 x i8> <i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0>, <64 x i32> <i32 0, i32 1, i32 2, i32 67, i32 68, i32 69, i32 70, i32 71, i32 3, i32 4, i32 5, i32 75, i32 76, i32 77, i32 78, i32 79, i32 6, i32 7, i32 8, i32 83, i32 84, i32 85, i32 86, i32 87, i32 9, i32 10, i32 11, i32 91, i32 92, i32 93, i32 94, i32 95, i32 12, i32 13, i32 14, i32 99, i32 100, i32 101, i32 102, i32 103, i32 15, i32 16, i32 17, i32 107, i32 108, i32 109, i32 110, i32 111, i32 18, i32 19, i32 20, i32 115, i32 116, i32 117, i32 118, i32 119, i32 21, i32 22, i32 23, i32 123, i32 124, i32 125, i32 126, i32 127>
  %i.cp = tail call <64 x i8> @llvm.x86.avx512.pmultishift.qb.512(<64 x i8> <i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21, i8 0, i8 3, i8 6, i8 9, i8 12, i8 15, i8 18, i8 21>, <64 x i8> %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i.lcssa.i50
  %i.cr = icmp ugt i64 %i.cc, 63
  %notmask.i7.i52 = shl nsw i64 -1, %i.cc
end_hunk_0
