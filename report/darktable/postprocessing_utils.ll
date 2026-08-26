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
  %.077 = select nsz i1 %i.a, float 8.000000e+00, float %1 ; 2 uses
  %i.b = fcmp reassoc nsz arcp contract afn olt float %.077, 2.500000e-01
  %.1 = select nsz i1 %i.b, float 2.500000e-01, float %.077 ; 7 uses
  %i.c = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef 131072) ; 9 uses
  %i.d = fcmp reassoc nsz arcp contract afn ugt float %.1, 1.000000e+00
  br i1 %i.d, label %vector.ph115, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %broadcast.splatinsert = insertelement <16 x float> poison, float %.1, i64 0
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
  %i.v = tail call reassoc ninf nsz arcp contract afn float @llvm.log.f32(float %.1)
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
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %.1
  %i.af = fmul reassoc nsz arcp contract afn float %.1, 6.553500e+04
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, -6.553500e+04
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %2, 0.000000e+00
  %.078 = select nsz i1 %i.ah, float 0.000000e+00, float %2 ; 2 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt float %.078, 1.000000e+00
  %.179 = select nsz i1 %i.ai, float 1.000000e+00, float %.078
  %i.aj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %.179
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ag, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, 6.553500e+04 ; 2 uses
  %i.am = fadd reassoc nsz arcp contract afn float %reass.mul, %i.al
  %i.an = fadd reassoc nsz arcp contract afn float %reass.mul92, 6.553500e+04
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %.neg87
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.am, %i.ao ; 2 uses
  %i.aq = fsub reassoc nsz arcp contract afn float %.1, %i.ap
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ac, %i.aq
  %broadcast.splatinsert116 = insertelement <16 x float> poison, float %i.z, i64 0
  %broadcast.splat117 = shufflevector <16 x float> %broadcast.splatinsert116, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <16 x float> poison, float %i.al, i64 0
  %broadcast.splat119 = shufflevector <16 x float> %broadcast.splatinsert118, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <16 x float> poison, float %i.ap, i64 0
  %broadcast.splat121 = shufflevector <16 x float> %broadcast.splatinsert120, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert122 = insertelement <16 x float> poison, float %i.ar, i64 0
  %broadcast.splat123 = shufflevector <16 x float> %broadcast.splatinsert122, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <16 x float> poison, float %.1, i64 0
  %broadcast.splat125 = shufflevector <16 x float> %broadcast.splatinsert124, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph115
  %index127 = phi i64 [ 0, %vector.ph115 ], [ %index.next130, %vector.body126 ] ; 2 uses
  %vec.ind128 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph115 ], [ %vec.ind.next131, %vector.body126 ] ; 2 uses
  %vec.ind129 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph115 ], [ %vec.ind.next132, %vector.body126 ] ; 2 uses
  %i.as = uitofp nneg <16 x i32> %vec.ind128 to <16 x float> ; 3 uses
  %i.at = fcmp reassoc nsz arcp contract afn ogt <16 x float> %broadcast.splat117, %i.as
  %i.au = tail call reassoc nsz arcp contract afn <16 x float> @llvm.pow.v16f32(<16 x float> %i.as, <16 x float> splat (float f0x3EAAAAAB))
  %i.av = fadd reassoc nnan nsz arcp contract afn <16 x float> %i.au, splat (float f0xC22144E3)
  %i.aw = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat123, %i.av
  %i.ax = add <16 x i32> %vec.ind129, splat (i32 -65535)
  %i.ay = sitofp <16 x i32> %i.ax to <16 x float>
  %i.az = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat121, %i.ay
  %i.ba = fadd reassoc nsz arcp contract afn <16 x float> %i.aw, %broadcast.splat119
  %i.bb = fadd reassoc nsz arcp contract afn <16 x float> %i.az, %i.ba ; 3 uses
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
end_hunk_0
