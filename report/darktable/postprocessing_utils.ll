Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_utils?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw7exp_befEff(ptr noundef nonnull align 8 dereferenceable(768512) %0, float noundef %1, float noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn ogt float %1, 8.000000e+00
  %.080 = select nsz i1 %i.a, float 8.000000e+00, float %1 ; 2 uses
  %i.b = fcmp reassoc nsz arcp contract afn olt float %.080, 2.500000e-01
  %.181 = select nsz i1 %i.b, float 2.500000e-01, float %.080 ; 7 uses
  %i.c = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 131072) ; 9 uses
  %i.d = fcmp reassoc nsz arcp contract afn ugt float %.181, 1.000000e+00
  br i1 %i.d, label %vector.ph115, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.181, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <16 x i32> %vec.ind, splat (i32 16)
  %step.add.2 = add <16 x i32> %vec.ind, splat (i32 32)
  %step.add.3 = add <16 x i32> %vec.ind, splat (i32 48)
  %i.e = uitofp nneg <16 x i32> %vec.ind to <16 x float>
  %i.f = uitofp nneg <16 x i32> %step.add to <16 x float>
  %i.g = uitofp nneg <16 x i32> %step.add.2 to <16 x float>
  %i.h = uitofp nneg <16 x i32> %step.add.3 to <16 x float>
  %i.i = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat, %i.e
  %i.j = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat, %i.f
  %i.k = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat, %i.g
  %i.l = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat, %i.h
  %i.m = fptoui <16 x float> %i.i to <16 x i16>
  %i.n = fptoui <16 x float> %i.j to <16 x i16>
  %i.o = fptoui <16 x float> %i.k to <16 x i16>
  %i.p = fptoui <16 x float> %i.l to <16 x i16>
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store <16 x i16> %i.m, ptr %i.q, align 2, !tbaa !11
  store <16 x i16> %i.n, ptr %i.r, align 2, !tbaa !11
  store <16 x i16> %i.o, ptr %i.s, align 2, !tbaa !11
  store <16 x i16> %i.p, ptr %i.t, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 64)
  %i.u = icmp eq i64 %index.next, 65536
  br i1 %i.u, label %.loopexit, label %vector.body, !llvm.loop !13

vector.ph115:                                     ; preds = %bb.a
  %i.v = tail call reassoc ninf nsz arcp contract afn float @llvm.log.f32(float %.181)
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, -2.885390e+00
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.w)
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, 6.553600e+04
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, -1.000000e+00 ; 4 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.z ; 2 uses
  %i.ab = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aa, float f0x3EAAAAAB)
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, 3.000000e+00
  %reass.mul92 = fmul reassoc nsz arcp contract afn float %i.z, 2.000000e+00 ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.aa, 6.553500e+04
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float f0x3EAAAAAB)
  %.neg87 = fmul reassoc nsz arcp contract afn float %i.ae, -3.000000e+00 ; 2 uses
  %reass.add = fadd reassoc nsz arcp contract afn float %reass.mul92, %.neg87
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %.181
  %i.af = fmul reassoc nsz arcp contract afn float %.181, 6.553500e+04
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, -6.553500e+04
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %2, 0.000000e+00
  %.079 = select nsz i1 %i.ah, float 0.000000e+00, float %2 ; 2 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %.079, 1.000000e+00
  %.1 = select nsz i1 %i.ai, float 1.000000e+00, float %.079
  %i.aj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.1
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ag, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, 6.553500e+04 ; 2 uses
  %i.am = fadd reassoc nsz arcp contract afn float %reass.mul, %i.al
  %i.an = fadd reassoc nsz arcp contract afn float %reass.mul92, 6.553500e+04
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %.neg87
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.am, %i.ao ; 2 uses
  %i.aq = fsub reassoc nsz arcp contract afn float %.181, %i.ap
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ac, %i.aq
  %broadcast.splatinsert116 = insertelement <16 x float> poison, float %i.z, i64 0
  %broadcast.splat117 = shufflevector <16 x float> %broadcast.splatinsert116, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <16 x float> poison, float %i.al, i64 0
  %broadcast.splat119 = shufflevector <16 x float> %broadcast.splatinsert118, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <16 x float> poison, float %i.ap, i64 0
  %broadcast.splat121 = shufflevector <16 x float> %broadcast.splatinsert120, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert122 = insertelement <16 x float> poison, float %i.ar, i64 0
  %broadcast.splat123 = shufflevector <16 x float> %broadcast.splatinsert122, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <16 x float> poison, float %.181, i64 0
  %broadcast.splat125 = shufflevector <16 x float> %broadcast.splatinsert124, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph115
  %index127 = phi i64 [ 0, %vector.ph115 ], [ %index.next130, %vector.body126 ] ; 2 uses
  %vec.ind128 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph115 ], [ %vec.ind.next131, %vector.body126 ] ; 2 uses
  %vec.ind129 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph115 ], [ %vec.ind.next132, %vector.body126 ] ; 2 uses
  %i.as = uitofp nneg <16 x i32> %vec.ind128 to <16 x float> ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt <16 x float> %broadcast.splat117, %i.as
  %i.au = tail call reassoc nsz arcp contract afn <16 x float> @llvm.pow.v16f32(<16 x float> %i.as, <16 x float> splat (float f0x3EAAAAAB))
  %i.av = fadd reassoc nsz arcp contract afn <16 x float> %i.au, splat (float f0xC22144E3)
  %i.aw = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat123, %i.av
  %i.ax = add <16 x i32> %vec.ind129, splat (i32 -65535)
  %i.ay = sitofp <16 x i32> %i.ax to <16 x float>
  %i.az = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat121, %i.ay
  %i.ba = fadd reassoc nsz arcp contract afn <16 x float> %i.az, %broadcast.splat119
  %i.bb = fadd reassoc nsz arcp contract afn <16 x float> %i.ba, %i.aw ; 3 uses
  %i.bc = fcmp reassoc nsz arcp contract afn olt <16 x float> %i.bb, zeroinitializer
  %i.bd = fcmp reassoc nsz arcp contract afn oge <16 x float> %i.bb, splat (float 6.553500e+04)
  %i.be = select <16 x i1> %i.bd, <16 x float> splat (float 6.553500e+04), <16 x float> %i.bb
  %i.bf = fptoui <16 x float> %i.be to <16 x i16>
  %i.bg = select <16 x i1> %i.bc, <16 x i16> zeroinitializer, <16 x i16> %i.bf
  %i.bh = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat125, %i.as
  %i.bi = fptoui <16 x float> %i.bh to <16 x i16>
  %predphi = select <16 x i1> %i.at, <16 x i16> %i.bi, <16 x i16> %i.bg
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index127
  store <16 x i16> %predphi, ptr %i.bj, align 2, !tbaa !11
  %index.next130 = add nuw i64 %index127, 16      ; 2 uses
  %vec.ind.next131 = add <16 x i32> %vec.ind128, splat (i32 16)
  %vec.ind.next132 = add <16 x i32> %vec.ind129, splat (i32 16)
  %i.bk = icmp eq i64 %index.next130, 65536
  br i1 %i.bk, label %.loopexit, label %vector.body126, !llvm.loop !17

.loopexit:                                        ; preds = %vector.body, %vector.body126
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.bn = load i16, ptr %i.bl, align 4, !tbaa !18
  %i.bo = zext i16 %i.bn to i32
  %i.bp = load i16, ptr %i.bm, align 2, !tbaa !80
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul nuw nsw i32 %i.bq, %i.bo
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !81
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.loopexit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 153092 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !82 ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 65536
  br i1 %i.bw, label %bb.c, label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv107 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next108, %bb.b ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv107 ; 5 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !11
  %i.bz = zext i16 %i.by to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !11
  store i16 %i.cb, ptr %i.bx, align 2, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !11
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !11
  store i16 %i.cg, ptr %i.cc, align 2, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !11
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !11
  store i16 %i.cl, ptr %i.ch, align 2, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 6 ; 2 uses
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !11
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !11
  store i16 %i.cq, ptr %i.cm, align 2, !tbaa !11
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.cr = load i16, ptr %i.bl, align 4, !tbaa !18
  %i.cs = zext i16 %i.cr to i64
  %i.ct = load i16, ptr %i.bm, align 2, !tbaa !80
  %i.cu = zext i16 %i.ct to i64
  %i.cv = mul nuw nsw i64 %i.cu, %i.cs
  %i.cw = icmp samesign ult i64 %indvars.iv.next108, %i.cv
  br i1 %i.cw, label %bb.b, label %._crit_edge, !llvm.loop !83

bb.c:                                             ; preds = %._crit_edge
  %i.cx = zext nneg i32 %i.bv to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !11
  %i.da = zext i16 %i.cz to i32
  store i32 %i.da, ptr %i.bu, align 4, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !84 ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 65536
  br i1 %i.dd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !11
  %i.dh = zext i16 %i.dg to i32
  store i32 %i.dh, ptr %i.db, align 8, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.c)
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #2

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw19convert_to_rgb_loopEPA4_f(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381672 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(131072) %i.b, i8 0, i64 131072, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381660
  %i.d = load i32, ptr %i.c, align 4, !tbaa !86
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i16, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.i = zext i16 %i.h to i32
  %.not137 = icmp eq i16 %i.h, 0
  br i1 %.not137, label %.loopexit, label %.preheader113.lr.ph

.preheader113.lr.ph:                              ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.k = load i16, ptr %i.j, align 2, !tbaa !80   ; 3 uses
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %.not138 = icmp eq i16 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 4 uses
  br i1 %.not138, label %.loopexit, label %.preheader113.lr.ph.split

.preheader113.lr.ph.split:                        ; preds = %.preheader113.lr.ph
  %i.n = load i32, ptr %i.m, align 4, !tbaa !87   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.preheader113.preheader, label %.loopexit

.preheader113.preheader:                          ; preds = %.preheader113.lr.ph.split
  %i.p = add nsw i32 %i.l, -1                     ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %xtraiter = and i32 %i.l, 1
  %i.s = icmp eq i32 %i.p, 0
  %unroll_iter = and i32 %i.l, 65534
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod190 = trunc i16 %i.k to i1
  %i.t = load ptr, ptr %i.a, align 8
  br label %.preheader113

.preheader113:                                    ; preds = %.preheader113.preheader, %._crit_edge118
  %i.u = phi i32 [ %i.br, %._crit_edge118 ], [ %i.n, %.preheader113.preheader ] ; 3 uses
  %i.v = phi i32 [ %i.bs, %._crit_edge118 ], [ %i.n, %.preheader113.preheader ] ; 2 uses
  %.0120 = phi ptr [ %.us-phi, %._crit_edge118 ], [ %i.f, %.preheader113.preheader ] ; 3 uses
  %.0100119 = phi i32 [ %i.bt, %._crit_edge118 ], [ 0, %.preheader113.preheader ]
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader112.preheader, label %.preheader112.us.preheader

.preheader112.preheader:                          ; preds = %.preheader113
  br i1 %i.s, label %.preheader112.epil.preheader, label %.preheader112.preheader.new

.preheader112.preheader.new:                      ; preds = %.preheader112.preheader
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = load ptr, ptr %i.a, align 8
  br label %.preheader112

.preheader112.us.preheader:                       ; preds = %.preheader113
  %i.z = getelementptr i8, ptr %.0120, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.z, i64 8
  br label %._crit_edge118

.preheader112:                                    ; preds = %._crit_edge.1, %.preheader112.preheader.new
  %i.aa = phi i32 [ %i.u, %.preheader112.preheader.new ], [ %i.bb, %._crit_edge.1 ] ; 2 uses
  %.1117 = phi ptr [ %.0120, %.preheader112.preheader.new ], [ %i.bc, %._crit_edge.1 ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader112.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader112, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader112 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [32768 x i8], ptr %i.x, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.1117, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !11
  %i.af = lshr i16 %i.ae, 3
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !88
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !88
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !87  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %.preheader112
  %i.an = phi i32 [ %i.aa, %.preheader112 ], [ %i.ak, %.lr.ph ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1117, i64 8
  %i.ap = icmp sgt i32 %i.an, 0
  br i1 %i.ap, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %.lr.ph.1 ], [ 0, %._crit_edge ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [32768 x i8], ptr %i.y, i64 %indvars.iv.1
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.1
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !11
  %i.at = lshr i16 %i.as, 3
  %i.au = zext nneg i16 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !88
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !88
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.ay = load i32, ptr %i.m, align 4, !tbaa !87  ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next.1, %i.az
  br i1 %i.ba, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !89

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %i.bb = phi i32 [ %i.an, %._crit_edge ], [ %i.ay, %.lr.ph.1 ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.1117, i64 16 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge118.loopexit.unr-lcssa, label %.preheader112, !llvm.loop !90

._crit_edge118.loopexit.unr-lcssa:                ; preds = %._crit_edge.1
  br i1 %lcmp.mod.not, label %._crit_edge118, label %.preheader112.epil.preheader

.preheader112.epil.preheader:                     ; preds = %._crit_edge118.loopexit.unr-lcssa, %.preheader112.preheader
  %.epil.init = phi i32 [ %i.u, %.preheader112.preheader ], [ %i.bb, %._crit_edge118.loopexit.unr-lcssa ] ; 2 uses
  %.1117.epil.init = phi ptr [ %.0120, %.preheader112.preheader ], [ %i.bc, %._crit_edge118.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod190)
  %i.bd = icmp sgt i32 %.epil.init, 0
  br i1 %i.bd, label %.lr.ph.epil, label %._crit_edge.epil

.lr.ph.epil:                                      ; preds = %.preheader112.epil.preheader, %.lr.ph.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ 0, %.preheader112.epil.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw [32768 x i8], ptr %i.t, i64 %indvars.iv.epil
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.1117.epil.init, i64 %indvars.iv.epil
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !11
  %i.bh = lshr i16 %i.bg, 3
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !88
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !88
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1 ; 2 uses
  %i.bm = load i32, ptr %i.m, align 4, !tbaa !87  ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next.epil, %i.bn
  br i1 %i.bo, label %.lr.ph.epil, label %._crit_edge.epil, !llvm.loop !89

._crit_edge.epil:                                 ; preds = %.lr.ph.epil, %.preheader112.epil.preheader
  %i.bp = phi i32 [ %.epil.init, %.preheader112.epil.preheader ], [ %i.bm, %.lr.ph.epil ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1117.epil.init, i64 8
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %._crit_edge.epil, %._crit_edge118.loopexit.unr-lcssa, %.preheader112.us.preheader
  %i.br = phi i32 [ %i.u, %.preheader112.us.preheader ], [ %i.bb, %._crit_edge118.loopexit.unr-lcssa ], [ %i.bp, %._crit_edge.epil ]
  %i.bs = phi i32 [ %i.v, %.preheader112.us.preheader ], [ %i.bb, %._crit_edge118.loopexit.unr-lcssa ], [ %i.bp, %._crit_edge.epil ]
  %.us-phi = phi ptr [ %scevgep, %.preheader112.us.preheader ], [ %i.bc, %._crit_edge118.loopexit.unr-lcssa ], [ %i.bq, %._crit_edge.epil ]
  %i.bt = add nuw nsw i32 %.0100119, 1            ; 2 uses
  %exitcond152.not = icmp eq i32 %i.bt, %i.i
  br i1 %exitcond152.not, label %.loopexit, label %.preheader113, !llvm.loop !92

bb.c:                                             ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !87
  switch i32 %i.bv, label %.loopexit [
    i32 3, label %bb.d
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !18 ; 2 uses
  %.not141 = icmp eq i16 %i.bx, 0
  br i1 %.not141, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ce = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32768
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 65536
  %.pre154 = load i16, ptr %i.bz, align 2, !tbaa !80
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge133
  %i.ch = phi i16 [ %i.bx, %.preheader.lr.ph ], [ %i.es, %._crit_edge133 ]
  %i.ci = phi i16 [ %.pre154, %.preheader.lr.ph ], [ %i.et, %._crit_edge133 ]
  %.2136 = phi ptr [ %i.by, %.preheader.lr.ph ], [ %.3.lcssa, %._crit_edge133 ] ; 2 uses
  %.1101135 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.eu, %._crit_edge133 ]
  %.not142 = icmp eq i16 %i.ci, 0
  br i1 %.not142, label %._crit_edge133, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  %i.cj = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %1, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !93 ; 3 uses
  %i.ck = shufflevector <5 x float> %i.cj, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cl = load <2 x float>, ptr %i.ca, align 4, !tbaa !93 ; 2 uses
  %i.cm = load float, ptr %i.cb, align 4, !tbaa !93
  %i.cn = load float, ptr %i.cc, align 4, !tbaa !93
  %i.co = load float, ptr %i.cd, align 4, !tbaa !93
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.ck, <4 x float> %i.cp, <2 x i32> <i32 0, i32 4>
  %i.cr = shufflevector <5 x float> %i.cj, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.cs = shufflevector <2 x float> %i.cl, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.ct = shufflevector <5 x float> %i.cj, <5 x float> %i.cs, <2 x i32> <i32 2, i32 6>
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph132, %bb.e
  %.3131 = phi ptr [ %.2136, %.lr.ph132 ], [ %i.eo, %bb.e ] ; 4 uses
  %.198130 = phi i32 [ 0, %.lr.ph132 ], [ %i.en, %bb.e ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.3131, i64 4 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !11
  %i.cw = uitofp i16 %i.cv to float               ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.co, %i.cw
  %i.cy = load <2 x i16>, ptr %.3131, align 2, !tbaa !11
  %i.cz = uitofp <2 x i16> %i.cy to <2 x float>   ; 4 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, %i.da
  %i.dc = fmul reassoc nsz arcp contract afn <2 x float> %i.cq, %i.cz
  %i.dd = fadd reassoc nsz arcp contract afn <2 x float> %i.dc, %i.db
  %i.de = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.df
  %i.dh = fadd reassoc nsz arcp contract afn <2 x float> %i.dd, %i.dg
  %i.di = extractelement <2 x float> %i.cz, i64 0
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cm, %i.di
  %i.dk = extractelement <2 x float> %i.cz, i64 1
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cn, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.dj
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.cx
  %i.do = fptosi <2 x float> %i.dh to <2 x i32>
  %i.dp = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.do, <2 x i32> zeroinitializer)
  %i.dq = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.dp, <2 x i32> splat (i32 65535))
  %i.dr = trunc nuw <2 x i32> %i.dq to <2 x i16>  ; 3 uses
  store <2 x i16> %i.dr, ptr %.3131, align 2, !tbaa !11
  %i.ds = fptosi float %i.dn to i32
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 0)
  %i.du = tail call i32 @llvm.umin.i32(i32 %i.dt, i32 65535)
  %i.dv = trunc nuw i32 %i.du to i16              ; 2 uses
  store i16 %i.dv, ptr %i.cu, align 2, !tbaa !11
  %i.dw = extractelement <2 x i16> %i.dr, i64 0
  %i.dx = lshr i16 %i.dw, 3
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !88
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !88
  %i.ec = extractelement <2 x i16> %i.dr, i64 1
  %i.ed = lshr i16 %i.ec, 3
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !88
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !88
  %i.ei = lshr i16 %i.dv, 3
  %i.ej = zext nneg i16 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !88
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !88
  %i.en = add nuw nsw i32 %.198130, 1             ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.3131, i64 8 ; 2 uses
  %i.ep = load i16, ptr %i.bz, align 2, !tbaa !80 ; 2 uses
  %i.eq = zext i16 %i.ep to i32
  %i.er = icmp samesign ult i32 %i.en, %i.eq
  br i1 %i.er, label %bb.e, label %._crit_edge133.loopexit, !llvm.loop !94

._crit_edge133.loopexit:                          ; preds = %bb.e
  %.pre155 = load i16, ptr %i.bw, align 4, !tbaa !18
  br label %._crit_edge133

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit, %.preheader
  %i.es = phi i16 [ %i.ch, %.preheader ], [ %.pre155, %._crit_edge133.loopexit ] ; 2 uses
  %i.et = phi i16 [ 0, %.preheader ], [ %i.ep, %._crit_edge133.loopexit ]
  %.3.lcssa = phi ptr [ %.2136, %.preheader ], [ %i.eo, %._crit_edge133.loopexit ]
  %i.eu = add nuw nsw i32 %.1101135, 1            ; 2 uses
  %i.ev = zext i16 %i.es to i32
  %i.ew = icmp samesign ult i32 %i.eu, %i.ev
  br i1 %i.ew, label %.preheader, label %.loopexit, !llvm.loop !95

bb.f:                                             ; preds = %bb.c
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 4, !tbaa !18 ; 2 uses
  %.not139 = icmp eq i16 %i.ey, 0
  br i1 %.not139, label %.loopexit, label %.preheader110.lr.ph

.preheader110.lr.ph:                              ; preds = %bb.f
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fe = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32768
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 65536
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 98304
  %.pre = load i16, ptr %i.fa, align 2, !tbaa !80
  br label %.preheader110

.preheader110:                                    ; preds = %.preheader110.lr.ph, %._crit_edge126
  %i.fi = phi i16 [ %i.ey, %.preheader110.lr.ph ], [ %i.hn, %._crit_edge126 ]
  %i.fj = phi i16 [ %.pre, %.preheader110.lr.ph ], [ %i.ho, %._crit_edge126 ]
  %.4129 = phi ptr [ %i.ez, %.preheader110.lr.ph ], [ %.5.lcssa, %._crit_edge126 ] ; 2 uses
  %.2102128 = phi i32 [ 0, %.preheader110.lr.ph ], [ %i.hp, %._crit_edge126 ]
  %.not140 = icmp eq i16 %i.fj, 0
  br i1 %.not140, label %._crit_edge126, label %.lr.ph125

.lr.ph125:                                        ; preds = %.preheader110
  %2 = load <8 x float>, ptr %1, align 4, !tbaa !93 ; 4 uses
  %i.fk = load float, ptr %i.fb, align 4, !tbaa !93
  %i.fl = load float, ptr %i.fc, align 4, !tbaa !93
  %i.fm = load <2 x float>, ptr %i.fd, align 4, !tbaa !93
  %i.fn = shufflevector <8 x float> %2, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %3 = shufflevector <8 x float> %2, <8 x float> poison, <2 x i32> <i32 1, i32 4>
  %4 = shufflevector <8 x float> %2, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %5 = shufflevector <8 x float> %2, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph125, %bb.g
  %.5124 = phi ptr [ %.4129, %.lr.ph125 ], [ %i.hj, %bb.g ] ; 5 uses
  %.299123 = phi i32 [ 0, %.lr.ph125 ], [ %i.hi, %bb.g ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.5124, i64 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.5124, i64 6
  %6 = load i16, ptr %i.fp, align 2, !tbaa !11
  %i.fq = load <2 x i16>, ptr %i.fo, align 2, !tbaa !11
  %7 = uitofp <2 x i16> %i.fq to <2 x float>      ; 3 uses
  %8 = fmul reassoc nsz arcp contract afn <2 x float> %i.fm, %7 ; 2 uses
  %i.fr = load <2 x i16>, ptr %.5124, align 2, !tbaa !11
  %i.fs = uitofp <2 x i16> %i.fr to <2 x float>   ; 4 uses
  %9 = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %10 = fmul reassoc nsz arcp contract afn <2 x float> %3, %9
  %11 = fmul reassoc nsz arcp contract afn <2 x float> %i.fn, %i.fs
  %12 = fadd reassoc nsz arcp contract afn <2 x float> %11, %10
  %13 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul reassoc nsz arcp contract afn <2 x float> %4, %13
  %14 = fadd reassoc nsz arcp contract afn <2 x float> %12, %i.ft
  %15 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %16 = fmul reassoc nsz arcp contract afn <2 x float> %5, %15
  %i.fu = fadd reassoc nsz arcp contract afn <2 x float> %14, %16
  %i.fv = extractelement <2 x float> %i.fs, i64 0
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fk, %i.fv
  %i.fx = extractelement <2 x float> %i.fs, i64 1
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fl, %i.fx
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, %i.fw
  %i.ga = extractelement <2 x float> %8, i64 0
  %i.gb = fadd reassoc nsz arcp contract afn float %i.fz, %i.ga
  %i.gc = extractelement <2 x float> %8, i64 1
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gb, %i.gc
  %i.ge = fptosi <2 x float> %i.fu to <2 x i32>
  %i.gf = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ge, <2 x i32> zeroinitializer)
  %i.gg = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.gf, <2 x i32> splat (i32 65535))
  %i.gh = trunc nuw <2 x i32> %i.gg to <2 x i16>  ; 3 uses
  store <2 x i16> %i.gh, ptr %.5124, align 2, !tbaa !11
  %i.gi = fptosi float %i.gd to i32
  %i.gj = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 65535)
  %i.gl = trunc nuw i32 %i.gk to i16              ; 2 uses
  store i16 %i.gl, ptr %i.fo, align 2, !tbaa !11
  %i.gm = extractelement <2 x i16> %i.gh, i64 0
  %i.gn = lshr i16 %i.gm, 3
  %i.go = zext nneg i16 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !88
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !88
  %i.gs = extractelement <2 x i16> %i.gh, i64 1
  %i.gt = lshr i16 %i.gs, 3
  %i.gu = zext nneg i16 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !88
  %i.gx = add nsw i32 %i.gw, 1
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !88
  %i.gy = lshr i16 %i.gl, 3
  %i.gz = zext nneg i16 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.gz ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !88
  %i.hc = add nsw i32 %i.hb, 1
  store i32 %i.hc, ptr %i.ha, align 4, !tbaa !88
  %i.hd = lshr i16 %6, 3
  %i.he = zext nneg i16 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.he ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !88
  %i.hh = add nsw i32 %i.hg, 1
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !88
  %i.hi = add nuw nsw i32 %.299123, 1             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.5124, i64 8 ; 2 uses
  %i.hk = load i16, ptr %i.fa, align 2, !tbaa !80 ; 2 uses
  %i.hl = zext i16 %i.hk to i32
  %i.hm = icmp samesign ult i32 %i.hi, %i.hl
  br i1 %i.hm, label %bb.g, label %._crit_edge126.loopexit, !llvm.loop !96

._crit_edge126.loopexit:                          ; preds = %bb.g
  %.pre153 = load i16, ptr %i.ex, align 4, !tbaa !18
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit, %.preheader110
  %i.hn = phi i16 [ %i.fi, %.preheader110 ], [ %.pre153, %._crit_edge126.loopexit ] ; 2 uses
  %i.ho = phi i16 [ 0, %.preheader110 ], [ %i.hk, %._crit_edge126.loopexit ]
  %.5.lcssa = phi ptr [ %.4129, %.preheader110 ], [ %i.hj, %._crit_edge126.loopexit ]
  %i.hp = add nuw nsw i32 %.2102128, 1            ; 2 uses
  %i.hq = zext i16 %i.hn to i32
  %i.hr = icmp samesign ult i32 %i.hp, %i.hq
  br i1 %i.hr, label %.preheader110, label %.loopexit, !llvm.loop !97

.loopexit:                                        ; preds = %._crit_edge118, %._crit_edge126, %._crit_edge133, %.preheader113.lr.ph.split, %bb.b, %.preheader113.lr.ph, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw17scale_colors_loopEPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i16, ptr %i.b, align 4, !tbaa !98
  %i.d = zext i16 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 5 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !99
  %i.g = zext i16 %i.f to i32
  %i.h = mul nuw i32 %i.g, %i.d                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136688
  %i.k = load i32, ptr %i.j, align 8, !tbaa !88   ; 5 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.m = load i32, ptr %i.l, align 4, !tbaa !88   ; 9 uses
  %.not63 = icmp eq i32 %i.m, 0
  br i1 %.not63, label %bb.k, label %.preheader76

.preheader76:                                     ; preds = %bb.b
  %.not84 = icmp eq i32 %i.h, 0
  br i1 %.not84, label %.loopexit, label %.preheader75.lr.ph

.preheader75.lr.ph:                               ; preds = %.preheader76
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !81
  %wide.trip.count = zext i32 %i.h to i64
  %i.o = load i32, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader75.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11   ; 2 uses
  %.not69 = icmp eq i16 %i.z, 0
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader75
  %i.aa = zext i16 %i.z to i32
  %i.ab = load i16, ptr %i.e, align 2, !tbaa !99
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ae = udiv i32 %i.ad, %i.ac
  %i.af = urem i32 %i.ae, %i.k
  %i.ag = mul i32 %i.af, %i.m
  %i.ah = add i32 %i.ag, 6
  %i.ai = urem i32 %i.ad, %i.ac
  %i.aj = urem i32 %i.ai, %i.m
  %i.ak = add i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  %i.ao = add i32 %i.an, %i.o
  %i.ap = sub i32 %i.aa, %i.ao
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %i.ap to float
  %i.ar = load float, ptr %1, align 4, !tbaa !93
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.aq
  %i.at = fptosi float %i.as to i32
  %i.au = tail call i32 @llvm.smax.i32(i32 %i.at, i32 0)
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.au, i32 65535)
  %i.aw = trunc nuw i32 %i.av to i16
  store i16 %i.aw, ptr %i.y, align 2, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.preheader75, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !11 ; 2 uses
  %.not69.1 = icmp eq i16 %i.ay, 0
  br i1 %.not69.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = zext i16 %i.ay to i32
  %i.ba = load i16, ptr %i.e, align 2, !tbaa !99
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bd = udiv i32 %i.bc, %i.bb
  %i.be = urem i32 %i.bd, %i.k
  %i.bf = mul i32 %i.be, %i.m
  %i.bg = add i32 %i.bf, 6
  %i.bh = urem i32 %i.bc, %i.bb
  %i.bi = urem i32 %i.bh, %i.m
  %i.bj = add i32 %i.bg, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !88
  %i.bn = add i32 %i.bm, %i.q
  %i.bo = sub i32 %i.az, %i.bn
  %i.bp = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.bq = load float, ptr %i.r, align 4, !tbaa !93
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bp
  %i.bs = fptosi float %i.br to i32
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 65535)
  %i.bv = trunc nuw i32 %i.bu to i16
  store i16 %i.bv, ptr %i.ax, align 2, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !11 ; 2 uses
  %.not69.2 = icmp eq i16 %i.bx, 0
  br i1 %.not69.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = zext i16 %i.bx to i32
  %i.bz = load i16, ptr %i.e, align 2, !tbaa !99
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cc = udiv i32 %i.cb, %i.ca
  %i.cd = urem i32 %i.cc, %i.k
  %i.ce = mul i32 %i.cd, %i.m
  %i.cf = add i32 %i.ce, 6
  %i.cg = urem i32 %i.cb, %i.ca
  %i.ch = urem i32 %i.cg, %i.m
  %i.ci = add i32 %i.cf, %i.ch
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !88
  %i.cm = add i32 %i.cl, %i.t
  %i.cn = sub i32 %i.by, %i.cm
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to float
  %i.cp = load float, ptr %i.u, align 4, !tbaa !93
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, %i.co
  %i.cr = fptosi float %i.cq to i32
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.cr, i32 0)
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 65535)
  %i.cu = trunc nuw i32 %i.ct to i16
  store i16 %i.cu, ptr %i.bw, align 2, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 6 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !11 ; 2 uses
  %.not69.3 = icmp eq i16 %i.cw, 0
  br i1 %.not69.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = zext i16 %i.cw to i32
  %i.cy = load i16, ptr %i.e, align 2, !tbaa !99
  %i.cz = zext i16 %i.cy to i32                   ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.db = udiv i32 %i.da, %i.cz
  %i.dc = urem i32 %i.db, %i.k
  %i.dd = mul i32 %i.dc, %i.m
  %i.de = add i32 %i.dd, 6
  %i.df = urem i32 %i.da, %i.cz
  %i.dg = urem i32 %i.df, %i.m
  %i.dh = add i32 %i.de, %i.dg
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !88
  %i.dl = add i32 %i.dk, %i.w
  %i.dm = sub i32 %i.cx, %i.dl
  %i.dn = sitofp reassoc nsz arcp contract afn i32 %i.dm to float
  %i.do = load float, ptr %i.x, align 4, !tbaa !93
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dn
end_hunk_0
begin_hunk_1_@_ZN6LibRaw17scale_colors_loopEPf:bb.a
.preheader72:                                     ; preds = %bb.k
  br i1 %.not86, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader72
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %wide.trip.count107 = zext i32 %i.h to i64      ; 3 uses
  %i.ea = load <4 x float>, ptr %1, align 4, !tbaa !93 ; 5 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph
  %n.vec = and i64 %wide.trip.count107, 4294967288 ; 3 uses
  %broadcast.splat = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat129 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat131 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat133 = shufflevector <4 x float> %i.ea, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 2 uses
  %wide.vec = load <32 x i16>, ptr %i.eb, align 2, !tbaa !11 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec134 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec135 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec136 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.ec = uitofp <8 x i16> %strided.vec to <8 x float>
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat, %i.ec
  %i.ee = uitofp <8 x i16> %strided.vec134 to <8 x float>
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat129, %i.ee
  %i.eg = uitofp <8 x i16> %strided.vec135 to <8 x float>
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat131, %i.eg
  %i.ei = uitofp <8 x i16> %strided.vec136 to <8 x float>
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat133, %i.ei
  %i.ek = shufflevector <8 x float> %i.ed, <8 x float> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.el = fptosi <16 x float> %i.ek to <16 x i32>
  %i.em = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.el, <16 x i32> zeroinitializer)
  %i.en = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.em, <16 x i32> splat (i32 65535))
  %i.eo = trunc nuw <16 x i32> %i.en to <16 x i16>
  %i.ep = shufflevector <8 x float> %i.eh, <8 x float> %i.ej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eq = fptosi <16 x float> %i.ep to <16 x i32>
  %i.er = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.eq, <16 x i32> zeroinitializer)
  %i.es = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.er, <16 x i32> splat (i32 65535))
  %i.et = trunc nuw <16 x i32> %i.es to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.eo, <16 x i16> %i.et, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.eb, align 2, !tbaa !11
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph, %middle.block
  %indvars.iv104.ph = phi i64 [ 0, %.preheader.lr.ph ], [ %n.vec, %middle.block ]
  br label %.preheader

bb.l:                                             ; preds = %bb.k
  br i1 %.not86, label %.loopexit, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %bb.l
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !81
  %wide.trip.count98 = zext i32 %i.h to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 136676
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 136680
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136684
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fc = load i32, ptr %i.ew, align 4
  %i.fd = load i32, ptr %i.ey, align 8
  %i.fe = load i32, ptr %i.fa, align 4
  br label %.preheader73

.preheader73:                                     ; preds = %.preheader73.lr.ph, %bb.t
  %indvars.iv95 = phi i64 [ 0, %.preheader73.lr.ph ], [ %indvars.iv.next96, %bb.t ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv95 ; 5 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !11 ; 2 uses
  %.not68 = icmp eq i16 %i.fg, 0
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader73
  %i.fh = zext i16 %i.fg to i32
  %i.fi = sub i32 %i.fh, %i.dv
  %i.fj = sitofp reassoc nsz arcp contract afn i32 %i.fi to float
  %i.fk = load float, ptr %1, align 4, !tbaa !93
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.fj
  %i.fm = fptosi float %i.fl to i32
  %i.fn = tail call i32 @llvm.smax.i32(i32 %i.fm, i32 0)
  %i.fo = tail call i32 @llvm.umin.i32(i32 %i.fn, i32 65535)
  %i.fp = trunc nuw i32 %i.fo to i16
  store i16 %i.fp, ptr %i.ff, align 2, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %.preheader73, %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ff, i64 2 ; 2 uses
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !11 ; 2 uses
  %.not68.1 = icmp eq i16 %i.fr, 0
  br i1 %.not68.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fs = zext i16 %i.fr to i32
  %i.ft = sub i32 %i.fs, %i.fc
  %i.fu = sitofp reassoc nsz arcp contract afn i32 %i.ft to float
  %i.fv = load float, ptr %i.ex, align 4, !tbaa !93
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.fu
  %i.fx = fptosi float %i.fw to i32
  %i.fy = tail call i32 @llvm.smax.i32(i32 %i.fx, i32 0)
  %i.fz = tail call i32 @llvm.umin.i32(i32 %i.fy, i32 65535)
  %i.ga = trunc nuw i32 %i.fz to i16
  store i16 %i.ga, ptr %i.fq, align 2, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !11 ; 2 uses
  %.not68.2 = icmp eq i16 %i.gc, 0
  br i1 %.not68.2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gd = zext i16 %i.gc to i32
  %i.ge = sub i32 %i.gd, %i.fd
  %i.gf = sitofp reassoc nsz arcp contract afn i32 %i.ge to float
  %i.gg = load float, ptr %i.ez, align 4, !tbaa !93
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, %i.gf
  %i.gi = fptosi float %i.gh to i32
  %i.gj = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %i.gk = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 65535)
  %i.gl = trunc nuw i32 %i.gk to i16
  store i16 %i.gl, ptr %i.gb, align 2, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ff, i64 6 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !11 ; 2 uses
  %.not68.3 = icmp eq i16 %i.gn, 0
  br i1 %.not68.3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.go = zext i16 %i.gn to i32
  %i.gp = sub i32 %i.go, %i.fe
  %i.gq = sitofp reassoc nsz arcp contract afn i32 %i.gp to float
  %i.gr = load float, ptr %i.fb, align 4, !tbaa !93
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, %i.gq
  %i.gt = fptosi float %i.gs to i32
  %i.gu = tail call i32 @llvm.smax.i32(i32 %i.gt, i32 0)
  %i.gv = tail call i32 @llvm.umin.i32(i32 %i.gu, i32 65535)
  %i.gw = trunc nuw i32 %i.gv to i16
  store i16 %i.gw, ptr %i.gm, align 2, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %.loopexit, label %.preheader73, !llvm.loop !102

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.preheader ], [ %indvars.iv104.ph, %.preheader.preheader ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv104 ; 2 uses
  %i.gy = load <4 x i16>, ptr %i.gx, align 2, !tbaa !11
  %i.gz = uitofp <4 x i16> %i.gy to <4 x float>
  %i.ha = fmul reassoc nsz arcp contract afn <4 x float> %i.ea, %i.gz
  %i.hb = fptosi <4 x float> %i.ha to <4 x i32>
  %i.hc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hb, <4 x i32> zeroinitializer)
  %i.hd = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hc, <4 x i32> splat (i32 65535))
  %i.he = trunc nuw <4 x i32> %i.hd to <4 x i16>
  store <4 x i16> %i.he, ptr %i.gx, align 2, !tbaa !11
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count107
  br i1 %exitcond108.not, label %.loopexit, label %.preheader, !llvm.loop !103

.loopexit:                                        ; preds = %bb.j, %bb.t, %.preheader, %middle.block, %.preheader76, %bb.l, %.preheader72
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.pow.v16f32(<16 x float>, <16 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !9, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14, !15, !16}
!18 = !{!19, !12, i64 20}
!19 = !{!"_ZTS6LibRaw", !20, i64 8, !66, i64 381584, !67, i64 381592, !9, i64 384344, !77, i64 433496, !77, i64 433504, !9, i64 433512, !78, i64 768232, !79, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !22, i64 768448, !22, i64 768456, !22, i64 768464, !58, i64 768472, !22, i64 768480, !22, i64 768488, !22, i64 768496, !22, i64 768504}
!20 = !{!"_ZTS13libraw_data_t", !21, i64 0, !23, i64 8, !25, i64 192, !27, i64 632, !33, i64 1928, !49, i64 5088, !50, i64 5232, !51, i64 5536, !8, i64 5584, !8, i64 5588, !54, i64 5592, !57, i64 192680, !60, i64 193480, !62, i64 193504, !63, i64 193768, !22, i64 381568}
!21 = !{!"p1 short", !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
!23 = !{!"_ZTS20libraw_image_sizes_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !8, i64 16, !24, i64 24, !8, i64 32, !9, i64 36, !12, i64 164, !9, i64 166}
!24 = !{!"double", !9, i64 0}
!25 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !8, i64 428, !26, i64 432}
!26 = !{!"p1 omnipotent char", !22, i64 0}
!27 = !{!"_ZTS17libraw_lensinfo_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !12, i64 532, !29, i64 536, !30, i64 544, !31, i64 560}
!28 = !{!"float", !9, i64 0}
!29 = !{!"_ZTS18libraw_nikonlens_t", !28, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!30 = !{!"_ZTS16libraw_dnglens_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12}
!31 = !{!"_ZTS24libraw_makernotes_lens_t", !32, i64 0, !9, i64 8, !12, i64 136, !12, i64 138, !32, i64 144, !12, i64 152, !12, i64 154, !9, i64 156, !12, i64 220, !9, i64 222, !9, i64 238, !28, i64 256, !28, i64 260, !28, i64 264, !28, i64 268, !28, i64 272, !28, i64 276, !28, i64 280, !28, i64 284, !28, i64 288, !28, i64 292, !28, i64 296, !28, i64 300, !28, i64 304, !28, i64 308, !28, i64 312, !32, i64 320, !9, i64 328, !32, i64 456, !9, i64 464, !32, i64 592, !9, i64 600, !12, i64 728, !28, i64 732}
!32 = !{!"long long", !9, i64 0}
!33 = !{!"_ZTS19libraw_makernotes_t", !34, i64 0, !36, i64 168, !38, i64 464, !39, i64 848, !40, i64 1200, !41, i64 1664, !42, i64 1848, !43, i64 2092, !44, i64 2160, !45, i64 2196, !46, i64 2648, !47, i64 2720, !48, i64 2856}
!34 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16, !8, i64 32, !9, i64 36, !12, i64 52, !12, i64 54, !9, i64 56, !12, i64 58, !12, i64 60, !12, i64 62, !12, i64 64, !12, i64 66, !12, i64 68, !12, i64 70, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !8, i64 84, !28, i64 88, !12, i64 92, !12, i64 94, !12, i64 96, !12, i64 98, !8, i64 100, !12, i64 104, !8, i64 108, !8, i64 112, !12, i64 116, !8, i64 120, !35, i64 124, !35, i64 132, !35, i64 140, !35, i64 148, !35, i64 156, !9, i64 164}
!35 = !{!"_ZTS13libraw_area_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6}
!36 = !{!"_ZTS25libraw_nikon_makernotes_t", !24, i64 0, !12, i64 8, !12, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !12, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !9, i64 160, !9, i64 162, !12, i64 170, !37, i64 172, !12, i64 180, !12, i64 182, !12, i64 184, !8, i64 188, !9, i64 192, !9, i64 212, !8, i64 232, !9, i64 236, !8, i64 248, !26, i64 256, !12, i64 264, !12, i64 266, !9, i64 268, !12, i64 270, !24, i64 272, !24, i64 280, !24, i64 288}
!37 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6}
!38 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !24, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !9, i64 168, !9, i64 200, !8, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!39 = !{!"_ZTS18libraw_fuji_info_t", !28, i64 0, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !9, i64 20, !9, i64 53, !28, i64 88, !12, i64 92, !12, i64 94, !9, i64 96, !12, i64 100, !8, i64 104, !8, i64 108, !12, i64 112, !9, i64 114, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !12, i64 128, !8, i64 132, !12, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !8, i64 164, !12, i64 168, !8, i64 172, !12, i64 176, !9, i64 178, !9, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !9, i64 336, !8, i64 344}
!40 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !12, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !9, i64 64, !9, i64 72, !12, i64 82, !9, i64 84, !12, i64 88, !12, i64 90, !9, i64 92, !9, i64 352, !12, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !12, i64 416, !12, i64 418, !12, i64 420, !12, i64 422, !24, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !8, i64 452, !12, i64 456, !12, i64 458}
!41 = !{!"_ZTS18libraw_sony_info_t", !12, i64 0, !9, i64 2, !9, i64 3, !8, i64 4, !9, i64 8, !8, i64 12, !9, i64 16, !9, i64 17, !12, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !12, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !12, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !12, i64 54, !8, i64 56, !12, i64 60, !9, i64 62, !12, i64 66, !12, i64 68, !12, i64 70, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !8, i64 80, !28, i64 84, !12, i64 88, !8, i64 92, !8, i64 96, !12, i64 100, !9, i64 102, !8, i64 124, !12, i64 128, !8, i64 132, !9, i64 136, !9, i64 137, !12, i64 138, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !8, i64 156, !12, i64 160, !9, i64 162, !28, i64 180}
!42 = !{!"_ZTS25libraw_kodak_makernotes_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !12, i64 228, !12, i64 230, !12, i64 232, !12, i64 234, !28, i64 236, !28, i64 240}
!43 = !{!"_ZTS29libraw_panasonic_makernotes_t", !12, i64 0, !12, i64 2, !9, i64 4, !8, i64 36, !28, i64 40, !9, i64 44, !12, i64 56, !12, i64 58, !8, i64 60, !8, i64 64}
!44 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !12, i64 12, !8, i64 16, !8, i64 20, !12, i64 24, !9, i64 26, !12, i64 30, !9, i64 32, !9, i64 33, !12, i64 34}
!45 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!46 = !{!"_ZTS25libraw_ricoh_makernotes_t", !12, i64 0, !9, i64 4, !9, i64 12, !12, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !24, i64 56, !24, i64 64}
!47 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !24, i64 88, !8, i64 96, !9, i64 100}
!48 = !{!"_ZTS24libraw_metadata_common_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !28, i64 52, !28, i64 56, !28, i64 60, !12, i64 64, !9, i64 66, !28, i64 196, !9, i64 200, !8, i64 296}
!49 = !{!"_ZTS21libraw_shootinginfo_t", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !12, i64 12, !9, i64 14, !9, i64 78}
!50 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !28, i64 128, !28, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !26, i64 168, !26, i64 176, !26, i64 184, !26, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !9, i64 224, !8, i64 240, !8, i64 244, !28, i64 248, !28, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !28, i64 288, !28, i64 292, !8, i64 296, !8, i64 300}
!51 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !28, i64 28, !9, i64 32, !52, i64 40}
!52 = !{!"p2 omnipotent char", !53, i64 0}
!53 = !{!"any p2 pointer", !22, i64 0}
!54 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !9, i64 147500, !28, i64 147516, !28, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !55, i64 147876, !28, i64 147912, !28, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !22, i64 148264, !8, i64 148272, !9, i64 148276, !9, i64 148308, !56, i64 148648, !9, i64 181624, !9, i64 185720, !8, i64 187000, !9, i64 187004, !8, i64 187076, !8, i64 187080}
!55 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !28, i64 32}
!56 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !9, i64 4, !8, i64 16420, !9, i64 16424, !28, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !8, i64 32884, !9, i64 32888, !9, i64 32904, !28, i64 32920, !28, i64 32924, !9, i64 32928}
!57 = !{!"_ZTS17libraw_imgother_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !58, i64 16, !8, i64 24, !9, i64 28, !59, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!58 = !{!"long", !9, i64 0}
!59 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !28, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!60 = !{!"_ZTS18libraw_thumbnail_t", !61, i64 0, !12, i64 4, !12, i64 6, !8, i64 8, !8, i64 12, !26, i64 16}
!61 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!62 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !9, i64 8}
!63 = !{!"_ZTS16libraw_rawdata_t", !22, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !64, i64 32, !64, i64 40, !64, i64 48, !21, i64 56, !21, i64 64, !25, i64 72, !23, i64 512, !65, i64 696, !54, i64 712}
!64 = !{!"p1 float", !22, i64 0}
!65 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 12, !12, i64 14}
!66 = !{!"p1 _ZTS10LibRaw_TLS", !22, i64 0}
!67 = !{!"_ZTS22libraw_internal_data_t", !68, i64 0, !65, i64 64, !71, i64 80, !73, i64 96, !74, i64 136}
!68 = !{!"_ZTS15internal_data_t", !69, i64 0, !70, i64 8, !8, i64 16, !26, i64 24, !32, i64 32, !32, i64 40, !9, i64 48}
!69 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !22, i64 0}
!70 = !{!"p1 _ZTS8_IO_FILE", !22, i64 0}
!71 = !{!"_ZTS13output_data_t", !72, i64 0, !72, i64 8}
!72 = !{!"p1 int", !22, i64 0}
!73 = !{!"_ZTS15identify_data_t", !8, i64 0, !32, i64 8, !32, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!74 = !{!"_ZTS15unpacker_data_t", !12, i64 0, !9, i64 2, !9, i64 10, !8, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64, !32, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !75, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !32, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !76, i64 192, !9, i64 440, !8, i64 2488, !8, i64 2492, !12, i64 2496, !12, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !9, i64 2528, !12, i64 2608}
!75 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!76 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !12, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !12, i64 148, !12, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!77 = !{!"p1 _ZTS6decode", !22, i64 0}
!78 = !{!"_ZTS13libraw_memmgr", !53, i64 0, !8, i64 8}
!79 = !{!"_ZTS18libraw_callbacks_t", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !22, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !22, i64 136, !22, i64 144}
!80 = !{!19, !12, i64 22}
!81 = !{!19, !21, i64 8}
!82 = !{!19, !8, i64 153092}
!83 = distinct !{!83, !14}
!84 = !{!19, !8, i64 153096}
!85 = !{!19, !72, i64 381672}
!86 = !{!19, !8, i64 381660}
!87 = !{!19, !8, i64 540}
!88 = !{!8, !8, i64 0}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14, !91}
!91 = !{!"llvm.loop.unswitch.partial.disable"}
!92 = distinct !{!92, !14, !91}
!93 = !{!28, !28, i64 0}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14}
!98 = !{!19, !12, i64 28}
!99 = !{!19, !12, i64 30}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14, !15, !16}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14, !16, !15}
end_hunk_1
