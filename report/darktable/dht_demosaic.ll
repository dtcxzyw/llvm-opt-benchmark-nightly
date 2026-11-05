Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dht_demosaic?download=true
inline.NumInlined: 399
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DHT = type { i32, i32, ptr, [3 x i16], [3 x float], ptr, ptr }

$_ZN3DHT10get_hv_grbEiii = comdat any

$_ZN3DHT10get_hv_rbgEiii = comdat any

@_ZN3DHTC1ER6LibRaw = unnamed_addr alias void (ptr, ptr), ptr @_ZN3DHTC2ER6LibRaw
@_ZN3DHTD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3DHTD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3DHTC2ER6LibRaw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 22), (24, 36), (40, 56)) %0, ptr noundef nonnull align 8 dereferenceable(768512) %1) unnamed_addr #0 align 2 {
vector.ph:
  %i.a = alloca [48 x i32], align 16              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !80
  %i.e = zext i16 %i.d to i32
  %i.f = add nuw nsw i32 %i.e, 8                  ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.h = load i16, ptr %i.g, align 2, !tbaa !82   ; 3 uses
  %i.i = zext i16 %i.h to i32
  %i.j = add nuw nsw i32 %i.i, 8                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !83
  %i.l = mul nuw nsw i32 %i.j, %i.f
  %i.m = zext nneg i32 %i.l to i64                ; 5 uses
  %i.n = mul nuw nsw i64 %i.m, 12
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !84
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 1) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.q, ptr %i.r, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 0, ptr %i.t, align 4, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 0, ptr %i.u, align 2, !tbaa !86
  store i16 0, ptr %i.s, align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.y = load <2 x i16>, ptr %i.w, align 2, !tbaa !86
  %i.z = uitofp reassoc nsz arcp contract afn <2 x i16> %i.y to <2 x float> ; 2 uses
  store <2 x float> %i.z, ptr %i.x, align 8, !tbaa !88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !86
  %i.ac = uitofp reassoc nsz arcp contract afn i16 %i.ab to float ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store float %i.ac, ptr %i.ad, align 8, !tbaa !88
  %n.vec = and i64 %i.m, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %index
  store <24 x float> splat (float 5.000000e-01), ptr %i.ae, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.m
  br i1 %cmp.n, label %.preheader43, label %scalar.ph

.preheader43:                                     ; preds = %scalar.ph, %middle.block
  %i.ag = load i16, ptr %i.c, align 4, !tbaa !80
  %.not52 = icmp eq i16 %i.ag, 0
  br i1 %.not52, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader43
  %.not53 = icmp eq i16 %i.h, 0
  %i.ah = zext i16 %i.h to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  br label %bb.a

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store float 5.000000e-01, ptr %i.ao, align 4, !tbaa !88
  store <2 x float> splat (float 5.000000e-01), ptr %i.an, align 4, !tbaa !88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.preheader43, label %scalar.ph, !llvm.loop !101

._crit_edge51.loopexit:                           ; preds = %._crit_edge
  %i.ap = load <2 x float>, ptr %i.x, align 8, !tbaa !88
  %.pre74 = load float, ptr %i.ad, align 8, !tbaa !88
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %._crit_edge51.loopexit, %.preheader43
  %i.aq = phi float [ %.pre74, %._crit_edge51.loopexit ], [ %i.ac, %.preheader43 ]
  %i.ar = phi <2 x float> [ %i.ap, %._crit_edge51.loopexit ], [ %i.z, %.preheader43 ]
  %i.as = fadd reassoc nsz arcp contract afn <2 x float> %i.ar, splat (float 5.000000e-01)
  store <2 x float> %i.as, ptr %i.x, align 8, !tbaa !88
  %i.at = fadd reassoc nsz arcp contract afn float %i.aq, 5.000000e-01
  store float %i.at, ptr %i.ad, align 8, !tbaa !88
  ret void

bb.a:                                             ; preds = %.lr.ph50, %._crit_edge
  %.pre75 = phi ptr [ %1, %.lr.ph50 ], [ %.pre, %._crit_edge ] ; 2 uses
  %indvars.iv69 = phi i64 [ 0, %.lr.ph50 ], [ %indvars.iv.next70, %._crit_edge ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.au = trunc nuw nsw i64 %indvars.iv69 to i32  ; 5 uses
  %i.av = lshr i32 %i.au, 1
  %indvars.iv69.tr = trunc nuw nsw i64 %indvars.iv69 to i32
  %i.aw = shl nuw nsw i32 %indvars.iv69.tr, 1
  %i.ax = and i32 %i.aw, 14
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre75, i64 544
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !92
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZN6LibRaw5COLOREii.exit.thread.us.preheader, label %.split

_ZN6LibRaw5COLOREii.exit.thread.us.preheader:     ; preds = %bb.a
  store <8 x i32> splat (i32 6), ptr %i.a, align 16, !tbaa !107
  store <8 x i32> splat (i32 6), ptr %i.ai, align 16, !tbaa !107
  store <8 x i32> splat (i32 6), ptr %i.aj, align 16, !tbaa !107
  store <8 x i32> splat (i32 6), ptr %i.ak, align 16, !tbaa !107
  store <8 x i32> splat (i32 6), ptr %i.al, align 16, !tbaa !107
  store <8 x i32> splat (i32 6), ptr %i.am, align 16, !tbaa !107
  br label %.preheader

.preheader.loopexit54:                            ; preds = %_ZN6LibRaw5COLOREii.exit.thread
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !93
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit54, %_ZN6LibRaw5COLOREii.exit.thread.us.preheader
  %.pre = phi ptr [ %.pre.pre, %.preheader.loopexit54 ], [ %.pre75, %_ZN6LibRaw5COLOREii.exit.thread.us.preheader ] ; 3 uses
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !87
  %i.bd = mul nuw nsw i64 %indvars.iv69, %i.ah
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  %i.be = trunc i64 %indvars.iv69 to i32
  %i.bf = add i32 %i.be, 4
  br label %bb.h

.split:                                           ; preds = %bb.a, %_ZN6LibRaw5COLOREii.exit.thread
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %_ZN6LibRaw5COLOREii.exit.thread ], [ 0, %bb.a ] ; 5 uses
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !93  ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 544
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !92 ; 4 uses
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit.thread, label %bb.b

bb.b:                                             ; preds = %.split
  %i.bj = icmp ult i32 %i.bi, 1000
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bk = trunc nuw nsw i64 %indvars.iv56 to i32
  %i.bl = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.bg, i32 noundef %i.au, i32 noundef %i.bk)
  br label %_ZN6LibRaw5COLOREii.exit

bb.d:                                             ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 381670
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !94 ; 2 uses
  %.not8.i = icmp eq i16 %i.bn, 0
  br i1 %.not8.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 381828
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !95
  %.not.i.i = icmp eq i32 %i.bp, 0
  %i.bq = trunc nuw nsw i64 %indvars.iv56 to i32  ; 4 uses
  br i1 %.not.i.i, label %bb.f, label %_ZN6LibRaw3FCFEii.exit.i

bb.f:                                             ; preds = %bb.e
  %i.br = lshr i32 %i.bq, 1
  br label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.e, %bb.f
  %.sink81 = phi i32 [ %i.br, %bb.f ], [ %i.bq, %bb.e ]
  %.sink = phi i32 [ %i.au, %bb.f ], [ %i.av, %bb.e ]
  %.sink.i.i = phi i32 [ %i.bq, %bb.f ], [ %i.au, %bb.e ]
  %.sink11.i.i = phi i32 [ %i.au, %bb.f ], [ %i.bq, %bb.e ]
  %i.bs = xor i32 %.sink81, -1
  %i.bt = add nsw i32 %.sink, %i.bs
  %i.bu = zext i16 %i.bn to i32
  %i.bv = add i32 %i.bt, %i.bu
  %i.bw = add nuw nsw i32 %.sink.i.i, 1
  %i.bx = lshr i32 %i.bw, 1
  %i.by = add nuw i32 %i.bx, %.sink11.i.i
  %i.bz = shl i32 %i.bv, 1
  %i.ca = and i32 %i.bz, 14
  %i.cb = and i32 %i.by, 1
  %i.cc = or disjoint i32 %i.cb, %i.ca
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = lshr i32 %i.bi, %i.cd
  %i.cf = and i32 %i.ce, 3
  br label %_ZN6LibRaw5COLOREii.exit

bb.g:                                             ; preds = %bb.d
  %i.cg = trunc nuw nsw i64 %indvars.iv56 to i32
  %i.ch = and i32 %i.cg, 1
  %i.ci = or disjoint i32 %i.ch, %i.ax
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = lshr i32 %i.bi, %i.cj
  %i.cl = and i32 %i.ck, 3
  br label %_ZN6LibRaw5COLOREii.exit

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.c, %_ZN6LibRaw3FCFEii.exit.i, %bb.g
  %.0.i = phi i32 [ %i.bl, %bb.c ], [ %i.cl, %bb.g ], [ %i.cf, %_ZN6LibRaw3FCFEii.exit.i ]
  %.0.i.fr = freeze i32 %.0.i                     ; 2 uses
  %i.cm = icmp eq i32 %.0.i.fr, 3
  %spec.select = select i1 %i.cm, i32 1, i32 %.0.i.fr
  br label %_ZN6LibRaw5COLOREii.exit.thread

_ZN6LibRaw5COLOREii.exit.thread:                  ; preds = %_ZN6LibRaw5COLOREii.exit, %.split
  %i.cn = phi i32 [ 6, %.split ], [ %spec.select, %_ZN6LibRaw5COLOREii.exit ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv56
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !107
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next57, 48
  br i1 %exitcond59.not, label %.preheader.loopexit54, label %.split, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.n, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !80
  %i.cr = zext i16 %i.cq to i64
  %i.cs = icmp samesign ult i64 %indvars.iv.next70, %i.cr
  br i1 %i.cs, label %bb.a, label %._crit_edge51.loopexit, !llvm.loop !103

bb.h:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv64 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next65, %bb.n ] ; 4 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv64 to i32
  %i.cu = urem i32 %i.ct, 48
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !107
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv64
  %i.cy = sext i32 %i.cx to i64                   ; 4 uses
  %i.cz = getelementptr inbounds [2 x i8], ptr %gep, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !86 ; 4 uses
  %.not = icmp eq i16 %i.da, 0
  br i1 %.not, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.cy ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !86
  %i.dd = icmp ult i16 %i.dc, %i.da
  br i1 %i.dd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i16 %i.da, ptr %i.db, align 2, !tbaa !86
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.de = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cy ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !88
  %i.dg = uitofp i16 %i.da to float               ; 3 uses
  %i.dh = fcmp reassoc nsz arcp contract afn ogt float %i.df, %i.dg
  br i1 %i.dh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.dg, ptr %i.de, align 4, !tbaa !88
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.dj = load i32, ptr %i.k, align 4, !tbaa !83
  %i.dk = mul nsw i32 %i.dj, %i.bf
  %i.dl = trunc i64 %indvars.iv64 to i32
  %i.dm = add i32 %i.dl, 4
  %i.dn = add nsw i32 %i.dm, %i.dk
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [12 x i8], ptr %i.di, i64 %i.do
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.cy
  store float %i.dg, ptr %i.dq, align 4, !tbaa !88
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %i.ah
  br i1 %exitcond68.not, label %._crit_edge, label %bb.h, !llvm.loop !104
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT9hide_hotsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !96, !align !97 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !82
  %i.e = zext i16 %i.d to i32                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.g = load i16, ptr %i.f, align 4, !tbaa !80
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %._crit_edge284, label %.lr.ph283

.lr.ph283:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

._crit_edge284:                                   ; preds = %._crit_edge280, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph283, %._crit_edge280
  %indvars.iv = phi i64 [ 0, %.lr.ph283 ], [ %indvars.iv.next, %._crit_edge280 ] ; 23 uses
  %i.k = phi ptr [ %i.b, %.lr.ph283 ], [ %i.mn, %._crit_edge280 ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load i32, ptr %i.l, align 8, !tbaa !92   ; 4 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit266, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i32 %i.m, 1000
  br i1 %i.n, label %_ZN6LibRaw5COLOREii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 381670
  %i.p = load i16, ptr %i.o, align 2, !tbaa !94   ; 2 uses
  %.not8.i = icmp eq i16 %i.p, 0
  br i1 %.not8.i, label %bb.e, label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 381828
  %i.r = load i32, ptr %i.q, align 4, !tbaa !95
  %.not.i.i = icmp ne i32 %i.r, 0                 ; 2 uses
  %i.s = zext i1 %.not.i.i to i32
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %.sink13.i.i.v = lshr i32 %i.t, %i.s
  %i.u = zext i16 %i.p to i32
  %.sink13.i.i = add nsw i32 %i.u, -1
  %i.v = add nuw nsw i32 %.sink13.i.i, %.sink13.i.i.v
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = add nuw nsw i32 %i.w, 1
  %i.y = lshr i32 %i.x, 1
  %i.z = select i1 %.not.i.i, i32 %i.y, i32 %i.t
  %i.aa = shl nuw nsw i32 %i.v, 1
  %i.ab = and i32 %i.aa, 14
  %i.ac = and i32 %i.z, 1
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = shl nuw nsw i32 %i.ad, 1
  br label %.thread

bb.e:                                             ; preds = %bb.d
  %indvars.iv.tr = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = shl nuw nsw i32 %indvars.iv.tr, 2
  %i.ag = and i32 %i.af, 28
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZN6LibRaw3FCFEii.exit.i
  %.sink = phi i32 [ %i.ag, %bb.e ], [ %i.ae, %_ZN6LibRaw3FCFEii.exit.i ]
  %i.ah = lshr i32 %i.m, %.sink                   ; 2 uses
  %i.ai = and i32 %i.ah, 1
  br label %bb.h

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.c
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.k, i32 noundef %i.aj, i32 noundef 0) ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !93  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 544
  %.pre296 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !92 ; 3 uses
  %i.al = and i32 %i.ak, 1                        ; 4 uses
  %.not.i258 = icmp eq i32 %.pre296, 0
  br i1 %.not.i258, label %_ZN6LibRaw5COLOREii.exit266, label %bb.f

bb.f:                                             ; preds = %_ZN6LibRaw5COLOREii.exit
  %i.am = icmp ult i32 %.pre296, 1000
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %.pre, i32 noundef %i.an, i32 noundef %i.al)
  br label %_ZN6LibRaw5COLOREii.exit266

bb.h:                                             ; preds = %.thread, %bb.f
  %i.ap = phi i32 [ %i.m, %.thread ], [ %.pre296, %bb.f ] ; 2 uses
  %i.aq = phi ptr [ %i.k, %.thread ], [ %.pre, %bb.f ] ; 2 uses
  %.0.i321326 = phi i32 [ %i.ah, %.thread ], [ %i.ak, %bb.f ]
  %i.ar = phi i32 [ %i.ai, %.thread ], [ %i.al, %bb.f ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 381670
  %i.at = load i16, ptr %i.as, align 2, !tbaa !94 ; 2 uses
  %.not8.i259 = icmp eq i16 %i.at, 0
  br i1 %.not8.i259, label %bb.i, label %_ZN6LibRaw3FCFEii.exit.i261

_ZN6LibRaw3FCFEii.exit.i261:                      ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 381828
  %i.av = load i32, ptr %i.au, align 4, !tbaa !95
  %.not.i.i260 = icmp eq i32 %i.av, 0             ; 3 uses
  %i.aw = xor i32 %i.ar, -1
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ay = lshr i32 %i.ax, 1
  %i.az = add nsw i32 %i.ay, %i.aw
  %i.ba = trunc nuw nsw i64 %indvars.iv to i32
  %i.bb = add nsw i32 %i.ba, -1
  %.sink13.i.i262 = select i1 %.not.i.i260, i32 %i.bb, i32 %i.az
  %.sink.i.i263 = select i1 %.not.i.i260, i32 %i.ar, i32 %i.ax
  %.sink11.i.i264 = select i1 %.not.i.i260, i32 %i.ax, i32 %.0.i321326
  %i.bc = zext i16 %i.at to i32
  %i.bd = add nsw i32 %.sink13.i.i262, %i.bc
  %i.be = add nuw nsw i32 %.sink.i.i263, 1
  %i.bf = lshr i32 %i.be, 1
  %i.bg = add i32 %i.bf, %.sink11.i.i264
  %i.bh = shl nsw i32 %i.bd, 1
  %i.bi = and i32 %i.bh, 14
  %i.bj = and i32 %i.bg, 1
  %i.bk = or disjoint i32 %i.bj, %i.bi
  %i.bl = shl nuw nsw i32 %i.bk, 1
  %i.bm = lshr i32 %i.ap, %i.bl
  %i.bn = and i32 %i.bm, 3
  br label %_ZN6LibRaw5COLOREii.exit266

bb.i:                                             ; preds = %bb.h
  %indvars.iv.tr318 = trunc nuw nsw i64 %indvars.iv to i32
  %i.bo = shl nuw nsw i32 %indvars.iv.tr318, 1
  %i.bp = and i32 %i.bo, 14
  %i.bq = or disjoint i32 %i.ar, %i.bp
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = lshr i32 %i.ap, %i.br
  %i.bt = and i32 %i.bs, 3
  br label %_ZN6LibRaw5COLOREii.exit266

_ZN6LibRaw5COLOREii.exit266:                      ; preds = %bb.b, %_ZN6LibRaw5COLOREii.exit, %bb.g, %_ZN6LibRaw3FCFEii.exit.i261, %bb.i
  %i.bu = phi i32 [ %i.al, %bb.g ], [ %i.al, %_ZN6LibRaw5COLOREii.exit ], [ %i.ar, %_ZN6LibRaw3FCFEii.exit.i261 ], [ %i.ar, %bb.i ], [ 0, %bb.b ] ; 3 uses
  %.0.i265 = phi i32 [ %i.ao, %bb.g ], [ 6, %_ZN6LibRaw5COLOREii.exit ], [ %i.bn, %_ZN6LibRaw3FCFEii.exit.i261 ], [ %i.bt, %bb.i ], [ 6, %bb.b ] ; 3 uses
  %i.bv = icmp samesign ult i32 %i.bu, %i.e
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6LibRaw5COLOREii.exit266
  %i.bw = add nuw nsw i64 %indvars.iv, 4          ; 2 uses
  %i.bx = sext i32 %.0.i265 to i64                ; 14 uses
  %i.by = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.bz = add nuw nsw i64 %indvars.iv, 6          ; 3 uses
  %i.ca = add nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.cb = add nuw nsw i64 %indvars.iv, 5          ; 3 uses
  %.pre297 = load ptr, ptr %i.h, align 8, !tbaa !84
  %.pre298 = load i32, ptr %i.i, align 4, !tbaa !83
  %i.cc = trunc nuw nsw i64 %i.bw to i32          ; 2 uses
  %i.cd = trunc nuw nsw i64 %i.by to i32
  %i.ce = trunc nuw nsw i64 %i.bz to i32
  %i.cf = trunc nuw nsw i64 %i.ca to i32
  %i.cg = trunc nuw nsw i64 %i.cb to i32
  %i.ch = trunc nuw nsw i64 %i.by to i32
  %i.ci = trunc nuw nsw i64 %i.bz to i32
  %i.cj = trunc nuw nsw i64 %i.ca to i32
  %i.ck = trunc nuw nsw i64 %i.cb to i32
  %i.cl = trunc i64 %indvars.iv to i32
  %i.cm = add i32 %i.cl, 2
  %i.cn = trunc i64 %i.bw to i32
  %i.co = trunc i64 %indvars.iv to i32
  %i.cp = add i32 %i.co, 6
  %i.cq = trunc nuw nsw i64 %i.by to i32
  %i.cr = trunc nuw nsw i64 %i.ca to i32
  %i.cs = trunc nuw nsw i64 %i.bz to i32
  %i.ct = trunc nuw nsw i64 %i.cb to i32
  br label %bb.j

._crit_edge:                                      ; preds = %bb.aa, %_ZN6LibRaw5COLOREii.exit266
  %i.cu = xor i32 %i.bu, 1                        ; 2 uses
  %i.cv = icmp samesign ult i32 %i.cu, %i.e
  br i1 %i.cv, label %.lr.ph279, label %._crit_edge280

.lr.ph279:                                        ; preds = %._crit_edge
  %i.cw = add nuw nsw i64 %indvars.iv, 4          ; 2 uses
  %i.cx = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.cy = add nuw nsw i64 %indvars.iv, 6          ; 3 uses
  %i.cz = sext i32 %.0.i265 to i64                ; 6 uses
  %i.da = add nuw nsw i64 %indvars.iv, 3          ; 3 uses
  %i.db = xor i32 %.0.i265, 2
  %i.dc = sext i32 %i.db to i64                   ; 6 uses
  %i.dd = add nuw nsw i64 %indvars.iv, 5          ; 3 uses
  %.pre302 = load ptr, ptr %i.h, align 8, !tbaa !84
  %.pre303 = load i32, ptr %i.i, align 4, !tbaa !83
  %i.de = trunc nuw nsw i64 %i.cw to i32          ; 2 uses
  %i.df = trunc nuw nsw i64 %i.cx to i32
  %i.dg = trunc nuw nsw i64 %i.cy to i32
  %i.dh = trunc nuw nsw i64 %i.da to i32
  %i.di = trunc nuw nsw i64 %i.dd to i32
  %i.dj = trunc nuw nsw i64 %i.cx to i32
  %i.dk = trunc nuw nsw i64 %i.cy to i32
  %i.dl = trunc nuw nsw i64 %i.da to i32
  %i.dm = trunc nuw nsw i64 %i.dd to i32
  %i.dn = trunc i64 %indvars.iv to i32
  %i.do = add i32 %i.dn, 2
  %i.dp = trunc i64 %i.cw to i32
  %i.dq = trunc i64 %indvars.iv to i32
  %i.dr = add i32 %i.dq, 6
  %i.ds = trunc nuw nsw i64 %i.cx to i32
  %i.dt = trunc nuw nsw i64 %i.da to i32
  %i.du = trunc nuw nsw i64 %i.cy to i32
  %i.dv = trunc nuw nsw i64 %i.dd to i32
  br label %bb.ab

bb.j:                                             ; preds = %.lr.ph, %bb.aa
  %i.dw = phi i32 [ %.pre298, %.lr.ph ], [ %i.mj, %bb.aa ] ; 21 uses
  %i.dx = phi ptr [ %.pre297, %.lr.ph ], [ %i.mk, %bb.aa ] ; 26 uses
  %.0252272 = phi i32 [ %i.bu, %.lr.ph ], [ %i.ml, %bb.aa ] ; 12 uses
  %i.dy = add nuw nsw i32 %.0252272, 4            ; 17 uses
  %i.dz = mul nsw i32 %i.dw, %i.cc                ; 8 uses
  %i.ea = add nsw i32 %i.dz, %i.dy
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.eb
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.bx
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !88 ; 19 uses
  %i.ef = add nuw nsw i32 %.0252272, 6            ; 2 uses
  %i.eg = add nsw i32 %i.dz, %i.ef
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.bx
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !88 ; 2 uses
  %i.el = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %i.ek
  br i1 %i.el, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.em = add nuw nsw i32 %.0252272, 2
  %i.en = add nsw i32 %i.em, %i.dz
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.eo
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ep, i64 %i.bx
  %i.er = load float, ptr %i.eq, align 4, !tbaa !88
  %i.es = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %i.er
  br i1 %i.es, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.et = mul nsw i32 %i.dw, %i.cd
  %i.eu = add nsw i32 %i.et, %i.dy
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.bx
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !88
  %i.ez = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %i.ey
  br i1 %i.ez, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.fa = mul nsw i32 %i.dw, %i.ce
  %i.fb = add nsw i32 %i.fa, %i.dy
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.fc
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.bx
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !88
  %i.fg = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %i.ff
  br i1 %i.fg, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.fh = add nuw nsw i32 %.0252272, 5
  %i.fi = add nsw i32 %i.fh, %i.dz
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !88
  %i.fn = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %i.fm
  br i1 %i.fn, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.fo = add nuw nsw i32 %.0252272, 3
  %i.fp = add nsw i32 %i.fo, %i.dz
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !88
  %i.fu = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %i.ft
  br i1 %i.fu, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fv = mul nsw i32 %i.dw, %i.cf
  %i.fw = add nsw i32 %i.fv, %i.dy
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !88
  %i.gb = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %i.ga
  br i1 %i.gb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gc = mul nsw i32 %i.dw, %i.cg
  %i.gd = add nsw i32 %i.gc, %i.dy
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !88
  %i.gi = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %i.gh
  br i1 %i.gi, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.gj = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.ek
  br i1 %i.gj, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.gk = add nuw nsw i32 %.0252272, 2
  %i.gl = add nsw i32 %i.gk, %i.dz
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.gm
  %i.go = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.bx
  %i.gp = load float, ptr %i.go, align 4, !tbaa !88
  %i.gq = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.gp
  br i1 %i.gq, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.gr = mul nsw i32 %i.dw, %i.ch
  %i.gs = add nsw i32 %i.gr, %i.dy
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.gt
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.bx
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !88
  %i.gx = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.gw
  br i1 %i.gx, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.gy = mul nsw i32 %i.dw, %i.ci
  %i.gz = add nsw i32 %i.gy, %i.dy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.ha
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.bx
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !88
  %i.he = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.hd
  br i1 %i.he, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.hf = add nuw nsw i32 %.0252272, 5
  %i.hg = add nsw i32 %i.hf, %i.dz
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !88
  %i.hl = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.hk
  br i1 %i.hl, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.hm = add nuw nsw i32 %.0252272, 3
  %i.hn = add nsw i32 %i.hm, %i.dz
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !88
  %i.hs = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.hr
  br i1 %i.hs, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ht = mul nsw i32 %i.dw, %i.cj
  %i.hu = add nsw i32 %i.ht, %i.dy
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !88
  %i.hz = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.hy
  br i1 %i.hz, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ia = mul nsw i32 %i.dw, %i.ck
  %i.ib = add nsw i32 %i.ia, %i.dy
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [12 x i8], ptr %i.dx, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load float, ptr %i.ie, align 4, !tbaa !88
  %i.ig = fcmp reassoc nsz arcp contract afn olt float %i.ee, %i.if
  br i1 %i.ig, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.q, %bb.y
  %invariant.gep = getelementptr [4 x i8], ptr %i.dx, i64 %i.bx ; 5 uses
  %i.ih = mul i32 %i.cm, %i.dw
  %i.ii = mul i32 %i.dw, %i.cn
  %i.ij = add i32 %i.ih, %i.dy                    ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %gep.1 = getelementptr [12 x i8], ptr %invariant.gep, i64 %i.ik
  %i.il = load float, ptr %gep.1, align 4, !tbaa !88
  %i.im = add nsw i32 %i.ii, %i.dy
  %i.in = insertelement <4 x i32> poison, i32 %i.ij, i64 0
  %i.io = insertelement <4 x i32> %i.in, i32 %i.im, i64 1
  %i.ip = shufflevector <4 x i32> %i.io, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.iq = add <4 x i32> %i.ip, <i32 -2, i32 2, i32 -2, i32 2>
  %i.ir = sext <4 x i32> %i.iq to <4 x i64>
  %i.is = getelementptr [12 x i8], ptr %invariant.gep, <4 x i64> %i.ir
  %i.it = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.is, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !88
  %i.iu = mul i32 %i.cp, %i.dw
  %i.iv = add i32 %i.iu, %i.dy                    ; 3 uses
  %i.iw = add i32 %i.iv, -2
  %i.ix = sext i32 %i.iw to i64
  %gep.2289 = getelementptr [12 x i8], ptr %invariant.gep, i64 %i.ix
  %i.iy = load float, ptr %gep.2289, align 4, !tbaa !88
  %i.iz = sext i32 %i.iv to i64
  %gep.1.2 = getelementptr [12 x i8], ptr %invariant.gep, i64 %i.iz
  %i.ja = load float, ptr %gep.1.2, align 4, !tbaa !88
  %i.jb = add i32 %i.iv, 2
  %i.jc = sext i32 %i.jb to i64
  %gep.2.2 = getelementptr [12 x i8], ptr %invariant.gep, i64 %i.jc
  %i.jd = load float, ptr %gep.2.2, align 4, !tbaa !88
end_hunk_0
begin_hunk_1_@_ZN3DHT9hide_hotsEv:bb.a
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !88
  %i.qv = fcmp reassoc nsz arcp contract afn olt float %i.na, %i.qu
  br i1 %i.qv, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.qw = mul nsw i32 %i.ms, %i.dm
  %i.qx = add nsw i32 %i.qw, %i.mu
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.qy
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.dc
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !88
  %i.rc = fcmp reassoc nsz arcp contract afn olt float %i.na, %i.rb
  br i1 %i.rc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.ai, %bb.aq
  %i.rd = mul i32 %i.do, %i.ms
  %i.re = add i32 %i.rd, %i.mu                    ; 3 uses
  %i.rf = add i32 %i.re, -2
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !88
  %i.rk = sext i32 %i.re to i64
  %i.rl = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !88
  %i.ro = fadd reassoc nsz arcp contract afn float %i.rn, %i.rj
  %i.rp = add i32 %i.re, 2
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !88
  %i.ru = fadd reassoc nsz arcp contract afn float %i.rt, %i.ro
  %i.rv = mul i32 %i.ms, %i.dp
  %i.rw = add nsw i32 %i.rv, %i.mu                ; 2 uses
  %i.rx = add i32 %i.rw, -2
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !88
  %i.sc = fadd reassoc nsz arcp contract afn float %i.sb, %i.ru
  %i.sd = add i32 %i.rw, 2
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !88
  %i.si = fadd reassoc nsz arcp contract afn float %i.sh, %i.sc
  %i.sj = mul i32 %i.dr, %i.ms
  %i.sk = add i32 %i.sj, %i.mu                    ; 3 uses
  %i.sl = add i32 %i.sk, -2
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %i.sp = load float, ptr %i.so, align 4, !tbaa !88
  %i.sq = fadd reassoc nsz arcp contract afn float %i.sp, %i.si
  %i.sr = sext i32 %i.sk to i64
  %i.ss = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  %i.su = load float, ptr %i.st, align 4, !tbaa !88
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, %i.sq
  %i.sw = add i32 %i.sk, 2
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [12 x i8], ptr %i.mt, i64 %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !88
  %i.tb = fadd reassoc nsz arcp contract afn float %i.ta, %i.sv
  %i.tc = fmul reassoc nsz arcp contract afn float %i.tb, 1.250000e-01 ; 3 uses
  %i.td = fcmp reassoc nsz arcp contract afn ogt float %i.na, %i.tc
  %i.te = fdiv reassoc nsz arcp contract afn float %i.na, %i.tc
  %i.tf = fdiv reassoc nsz arcp contract afn float %i.tc, %i.na
  %i.tg = select reassoc nsz arcp contract afn i1 %i.td, float %i.te, float %i.tf
  %i.th = fcmp reassoc nsz arcp contract afn ogt float %i.tg, 6.400000e+01
  br i1 %i.th, label %.sink.split329, label %bb.as

.sink.split329:                                   ; preds = %bb.ar
  %i.ti = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.tj = getelementptr inbounds i8, ptr %i.ti, i64 %i.mx ; 2 uses
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !98
  %i.tl = or i8 %i.tk, 64
  store i8 %i.tl, ptr %i.tj, align 1, !tbaa !98
  %i.tm = load ptr, ptr %i.h, align 8, !tbaa !84  ; 10 uses
  %i.tn = load i32, ptr %i.i, align 4, !tbaa !83  ; 6 uses
  %i.to = mul nsw i32 %i.tn, %i.ds
  %i.tp = add nsw i32 %i.to, %i.mu
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !88 ; 2 uses
  %i.tu = mul nsw i32 %i.tn, %i.dt
  %i.tv = add nsw i32 %i.tu, %i.mu
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.tw
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tx, i64 %i.dc
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !88
  %i.ua = mul nsw i32 %i.tn, %i.du
  %i.ub = add nsw i32 %i.ua, %i.mu
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.uc
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !88 ; 2 uses
  %i.ug = mul nsw i32 %i.tn, %i.dv
  %i.uh = add nsw i32 %i.ug, %i.mu
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.ui
  %i.uk = getelementptr inbounds [4 x i8], ptr %i.uj, i64 %i.dc
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !88
  %i.um = add nuw nsw i32 %.0246277, 2
  %i.un = mul nsw i32 %i.tn, %i.de                ; 5 uses
  %i.uo = add nsw i32 %i.um, %i.un
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.us = load float, ptr %i.ur, align 4, !tbaa !88 ; 2 uses
  %i.ut = add nuw nsw i32 %.0246277, 3
  %i.uu = add nsw i32 %i.ut, %i.un
  %i.uv = sext i32 %i.uu to i64
  %i.uw = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.uv
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.cz
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !88
  %i.uz = add nsw i32 %i.un, %i.nb
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !88 ; 2 uses
  %i.ve = add nuw nsw i32 %.0246277, 5
  %i.vf = add nsw i32 %i.ve, %i.un
  %i.vg = sext i32 %i.vf to i64
  %i.vh = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.vg
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vh, i64 %i.cz
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !88
  %i.vk = insertelement <2 x float> poison, float %i.tz, i64 0
  %i.vl = insertelement <2 x float> %i.vk, float %i.uy, i64 1
  %i.vm = insertelement <2 x float> poison, float %i.tt, i64 0
  %i.vn = insertelement <2 x float> %i.vm, float %i.us, i64 1
  %i.vo = fmul reassoc nsz arcp contract afn <2 x float> %i.vl, %i.vn ; 3 uses
  %i.vp = insertelement <2 x float> poison, float %i.ul, i64 0
  %i.vq = insertelement <2 x float> %i.vp, float %i.vj, i64 1
  %i.vr = insertelement <2 x float> poison, float %i.uf, i64 0
  %i.vs = insertelement <2 x float> %i.vr, float %i.vd, i64 1
  %i.vt = fmul reassoc nsz arcp contract afn <2 x float> %i.vq, %i.vs ; 3 uses
  %i.vu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vo, %i.vt
  %i.vv = fdiv reassoc nsz arcp contract afn <2 x float> %i.vo, %i.vt
  %i.vw = fdiv reassoc nsz arcp contract afn <2 x float> %i.vt, %i.vo
  %i.vx = select <2 x i1> %i.vu, <2 x float> %i.vv, <2 x float> %i.vw ; 2 uses
  %shift335 = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vy = fcmp ogt <2 x float> %i.vx, %shift335
  %i.vz = extractelement <2 x i1> %i.vy, i64 0
  %i.wa = add nsw i32 %i.un, %i.mu
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [12 x i8], ptr %i.tm, i64 %i.wb
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.we = fadd reassoc nsz arcp contract afn float %i.uf, %i.tt
  %i.wf = fadd reassoc nsz arcp contract afn float %i.vd, %i.us
  %.sink331 = select i1 %i.vz, float %i.wf, float %i.we
  %i.wg = fmul reassoc nsz arcp contract afn float %.sink331, 5.000000e-01
  store float %i.wg, ptr %i.wd, align 4, !tbaa !88
  br label %bb.as

bb.as:                                            ; preds = %.sink.split329, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.wh = phi i32 [ %i.ms, %bb.ar ], [ %i.ms, %bb.ak ], [ %i.ms, %bb.aj ], [ %i.ms, %bb.aq ], [ %i.ms, %bb.ap ], [ %i.ms, %bb.ao ], [ %i.ms, %bb.an ], [ %i.ms, %bb.am ], [ %i.ms, %bb.al ], [ %i.tn, %.sink.split329 ]
  %i.wi = phi ptr [ %i.mt, %bb.ar ], [ %i.mt, %bb.ak ], [ %i.mt, %bb.aj ], [ %i.mt, %bb.aq ], [ %i.mt, %bb.ap ], [ %i.mt, %bb.ao ], [ %i.mt, %bb.an ], [ %i.mt, %bb.am ], [ %i.mt, %bb.al ], [ %i.tm, %.sink.split329 ]
  %i.wj = add nuw nsw i32 %.0246277, 2            ; 2 uses
  %i.wk = icmp samesign ult i32 %i.wj, %i.e
  br i1 %i.wk, label %bb.ab, label %._crit_edge280, !llvm.loop !111
}

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT12restore_hotsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !96, !align !97 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !82   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i16, ptr %i.e, align 4, !tbaa !80
  %.not25 = icmp eq i16 %i.f, 0
  br i1 %.not25, label %._crit_edge24.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not26 = icmp eq i16 %i.d, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %.not26, label %._crit_edge24.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.j = zext i16 %i.d to i64                     ; 2 uses
  %.pre.pre = load i32, ptr %i.h, align 4, !tbaa !83
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.pre = phi i32 [ %.pre.pre, %.preheader.preheader ], [ %.pre34, %._crit_edge ] ; 3 uses
  %i.k = phi ptr [ %i.b, %.preheader.preheader ], [ %i.cg, %._crit_edge ] ; 3 uses
  %indvars.iv28 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next29, %._crit_edge ] ; 5 uses
  %i.l = trunc nuw nsw i64 %indvars.iv28 to i32   ; 5 uses
  %i.m = lshr i32 %i.l, 1
  %indvars.iv28.tr = trunc nuw nsw i64 %indvars.iv28 to i32
  %i.n = shl nuw nsw i32 %indvars.iv28.tr, 1
  %i.o = and i32 %i.n, 14
  %i.p = mul nuw nsw i64 %indvars.iv28, %i.j
  %i.q = trunc i64 %indvars.iv28 to i32
  %i.r = add i32 %i.q, 4                          ; 2 uses
  br label %bb.b

._crit_edge24.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.j
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.t = load i16, ptr %i.s, align 4, !tbaa !80
  %i.u = zext i16 %i.t to i64
  %i.v = icmp samesign ult i64 %indvars.iv.next29, %i.u
  br i1 %i.v, label %.preheader, label %._crit_edge24.split, !llvm.loop !112

bb.b:                                             ; preds = %.preheader, %bb.j
  %.pre35 = phi i32 [ %.pre, %.preheader ], [ %.pre34, %bb.j ] ; 4 uses
  %i.w = phi ptr [ %i.k, %.preheader ], [ %i.cg, %bb.j ] ; 4 uses
  %i.x = phi i32 [ %.pre, %.preheader ], [ %i.ch, %bb.j ] ; 4 uses
  %i.y = phi ptr [ %i.k, %.preheader ], [ %i.ci, %bb.j ] ; 4 uses
  %i.z = phi ptr [ %i.k, %.preheader ], [ %i.cj, %bb.j ] ; 5 uses
  %i.aa = phi i32 [ %.pre, %.preheader ], [ %i.ck, %bb.j ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.ac = mul nsw i32 %i.aa, %i.r
  %i.ad = trunc i64 %indvars.iv to i32
  %i.ae = add i32 %i.ad, 4                        ; 2 uses
  %i.af = add nsw i32 %i.ac, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ab, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !98
  %i.aj = and i8 %i.ai, 64
  %.not = icmp eq i8 %i.aj, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 544
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !92 ; 4 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = icmp ult i32 %i.al, 1000
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.z, i32 noundef %i.l, i32 noundef %i.an)
  %.pre31 = load ptr, ptr %i.a, align 8, !tbaa !93 ; 2 uses
  %.pre32 = load i32, ptr %i.h, align 4, !tbaa !83 ; 2 uses
  br label %_ZN6LibRaw5COLOREii.exit

bb.f:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 381670
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !94 ; 2 uses
  %.not8.i = icmp eq i16 %i.aq, 0
  br i1 %.not8.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 381828
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !95
  %.not.i.i = icmp eq i32 %i.as, 0
  %i.at = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  br i1 %.not.i.i, label %bb.h, label %_ZN6LibRaw3FCFEii.exit.i

bb.h:                                             ; preds = %bb.g
  %i.au = lshr i32 %i.at, 1
  br label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.g, %bb.h
  %.sink39 = phi i32 [ %i.au, %bb.h ], [ %i.at, %bb.g ]
  %.sink = phi i32 [ %i.l, %bb.h ], [ %i.m, %bb.g ]
  %.sink.i.i = phi i32 [ %i.at, %bb.h ], [ %i.l, %bb.g ]
  %.sink11.i.i = phi i32 [ %i.l, %bb.h ], [ %i.at, %bb.g ]
  %i.av = xor i32 %.sink39, -1
  %i.aw = add nsw i32 %.sink, %i.av
  %i.ax = zext i16 %i.aq to i32
  %i.ay = add i32 %i.aw, %i.ax
  %i.az = add nuw nsw i32 %.sink.i.i, 1
  %i.ba = lshr i32 %i.az, 1
  %i.bb = add nuw i32 %i.ba, %.sink11.i.i
  %i.bc = shl i32 %i.ay, 1
  %i.bd = and i32 %i.bc, 14
  %i.be = and i32 %i.bb, 1
  %i.bf = or disjoint i32 %i.be, %i.bd
  %i.bg = shl nuw nsw i32 %i.bf, 1
  %i.bh = lshr i32 %i.al, %i.bg
  %i.bi = and i32 %i.bh, 3
  br label %_ZN6LibRaw5COLOREii.exit

bb.i:                                             ; preds = %bb.f
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = and i32 %i.bj, 1
  %i.bl = or disjoint i32 %i.bk, %i.o
  %i.bm = shl nuw nsw i32 %i.bl, 1
  %i.bn = lshr i32 %i.al, %i.bm
  %i.bo = and i32 %i.bn, 3
  br label %_ZN6LibRaw5COLOREii.exit

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.c, %bb.e, %_ZN6LibRaw3FCFEii.exit.i, %bb.i
  %.pre33 = phi i32 [ %.pre32, %bb.e ], [ %.pre35, %bb.c ], [ %.pre35, %_ZN6LibRaw3FCFEii.exit.i ], [ %.pre35, %bb.i ]
  %i.bp = phi ptr [ %.pre31, %bb.e ], [ %i.w, %bb.c ], [ %i.w, %_ZN6LibRaw3FCFEii.exit.i ], [ %i.w, %bb.i ]
  %i.bq = phi i32 [ %.pre32, %bb.e ], [ %i.x, %bb.c ], [ %i.x, %_ZN6LibRaw3FCFEii.exit.i ], [ %i.x, %bb.i ] ; 3 uses
  %i.br = phi ptr [ %.pre31, %bb.e ], [ %i.y, %bb.c ], [ %i.y, %_ZN6LibRaw3FCFEii.exit.i ], [ %i.y, %bb.i ] ; 3 uses
  %.0.i = phi i32 [ %i.ao, %bb.e ], [ 6, %bb.c ], [ %i.bi, %_ZN6LibRaw3FCFEii.exit.i ], [ %i.bo, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !87
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.p
  %i.bw = sext i32 %.0.i to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !86
  %i.bz = uitofp reassoc nsz arcp contract afn i16 %i.by to float
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.cb = mul nsw i32 %i.bq, %i.r
  %i.cc = add nsw i32 %i.cb, %i.ae
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [12 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.bw
  store float %i.bz, ptr %i.cf, align 4, !tbaa !88
  br label %bb.j

bb.j:                                             ; preds = %_ZN6LibRaw5COLOREii.exit, %bb.b
  %.pre34 = phi i32 [ %.pre33, %_ZN6LibRaw5COLOREii.exit ], [ %.pre35, %bb.b ] ; 2 uses
  %i.cg = phi ptr [ %i.bp, %_ZN6LibRaw5COLOREii.exit ], [ %i.w, %bb.b ] ; 3 uses
  %i.ch = phi i32 [ %i.bq, %_ZN6LibRaw5COLOREii.exit ], [ %i.x, %bb.b ]
  %i.ci = phi ptr [ %i.br, %_ZN6LibRaw5COLOREii.exit ], [ %i.y, %bb.b ]
  %i.cj = phi ptr [ %i.br, %_ZN6LibRaw5COLOREii.exit ], [ %i.z, %bb.b ]
  %i.ck = phi i32 [ %i.bq, %_ZN6LibRaw5COLOREii.exit ], [ %i.aa, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !113
}

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT14make_diag_dirsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !96, !align !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i16, ptr %i.c, align 4, !tbaa !80
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.e = icmp eq i16 %i.i, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph9

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.067 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN3DHT15make_diag_dlineEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.067)
  %i.f = add nuw nsw i32 %.067, 1                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !96, !align !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i16, ptr %i.h, align 4, !tbaa !80   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = icmp samesign ult i32 %i.f, %i.j
  br i1 %i.k, label %.lr.ph, label %.preheader, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph9, %bb.a, %.preheader
  ret void

.lr.ph9:                                          ; preds = %.preheader, %.lr.ph9
  %.08 = phi i32 [ %i.l, %.lr.ph9 ], [ 0, %.preheader ] ; 2 uses
  tail call void @_ZN3DHT17refine_idiag_dirsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.08)
  %i.l = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !96, !align !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i16, ptr %i.n, align 4, !tbaa !80
  %i.p = zext i16 %i.o to i32
  %i.q = icmp samesign ult i32 %i.l, %i.p
  br i1 %i.q, label %.lr.ph9, label %._crit_edge, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT15make_diag_dlineEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93, !nonnull !96, !align !97 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !82   ; 2 uses
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !92   ; 4 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.g, 1000
  br i1 %i.h, label %_ZN6LibRaw5COLOREii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 381670
  %i.j = load i16, ptr %i.i, align 2, !tbaa !94   ; 2 uses
  %.not8.i = icmp eq i16 %i.j, 0
  br i1 %.not8.i, label %bb.d, label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 381828
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %.not.i.i = icmp ne i32 %i.l, 0                 ; 2 uses
end_hunk_1
