Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx2?download=true
inline.NumInlined: 86
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 79
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }

$__clang_call_terminate = comdat any

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn45convolution_transform_kernel_packed_int8_avx2ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i32 %5, %4                           ; 59 uses
  %i.b = icmp sgt i32 %3, 7
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 7                       ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i32 %2, 3
  %i.e = lshr i32 %2, 1
  %i.f = and i32 %i.e, 3
  %i.g = and i32 %2, 1
  %i.h = add nuw nsw i32 %i.g, %i.d
  %i.i = add nuw nsw i32 %i.h, %i.f
  %i.j = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.l = lshr <4 x i32> %i.k, <i32 0, i32 2, i32 1, i32 3>
  %i.m = and <4 x i32> %i.l, <i32 1, i32 1, i32 1, i32 -1>
  %i.n = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.m)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.i, i32 noundef %i.n, i64 noundef 64, i32 noundef 64, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.o = icmp sgt i32 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = lshr i32 %2, 1
  %i.q = sub nuw nsw i32 %2, %i.p
  %i.r = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.s = shufflevector <4 x i32> %i.r, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.t = lshr <4 x i32> %i.s, <i32 0, i32 2, i32 1, i32 3>
  %i.u = and <4 x i32> %i.t, <i32 1, i32 1, i32 1, i32 -1>
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.u)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.q, i32 noundef %i.v, i64 noundef 16, i32 noundef 16, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %i.w = insertelement <4 x i32> poison, i32 %3, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = lshr <4 x i32> %i.x, <i32 0, i32 2, i32 1, i32 3>
  %i.z = and <4 x i32> %i.y, <i32 1, i32 1, i32 1, i32 -1>
  %i.aa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.z)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %i.aa, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i

bb.g:                                             ; preds = %bb.a
  %i.ab = icmp sgt i32 %3, 3
  br i1 %i.ab, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp sgt i32 %2, 7
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = lshr i32 %2, 3
  %i.ae = lshr i32 %2, 1
  %i.af = and i32 %i.ae, 3
  %i.ag = and i32 %2, 1
  %i.ah = add nuw nsw i32 %i.ag, %i.ad
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = lshr i32 %3, 1
  %i.ak = and i32 %i.aj, 1
  %i.al = and i32 %3, 1
  %i.am = add nuw nsw i32 %i.al, 1
  %i.an = add nuw nsw i32 %i.am, %i.ak
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.ai, i32 noundef %i.an, i64 noundef 32, i32 noundef 32, ptr noundef null)
  br label %.preheader747.i

bb.j:                                             ; preds = %bb.h
  %i.ao = icmp sgt i32 %2, 1
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = lshr i32 %2, 1
  %i.aq = sub nuw nsw i32 %2, %i.ap
  %i.ar = lshr i32 %3, 1
  %i.as = and i32 %i.ar, 1
  %i.at = and i32 %3, 1
  %i.au = add nuw nsw i32 %i.at, 1
  %i.av = add nuw nsw i32 %i.au, %i.as
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.aq, i32 noundef %i.av, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %.preheader747.i

bb.l:                                             ; preds = %bb.j
  %i.aw = lshr i32 %3, 1
  %i.ax = and i32 %i.aw, 1
  %i.ay = and i32 %3, 1
  %i.az = add nuw nsw i32 %i.ay, 1
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %i.ba, i64 noundef 4, i32 noundef 4, ptr noundef null)
  br label %.preheader747.i

bb.m:                                             ; preds = %bb.g
  %i.bb = icmp sgt i32 %3, 1
  %i.bc = icmp sgt i32 %2, 7                      ; 2 uses
  br i1 %i.bb, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = lshr i32 %2, 3
  %i.be = lshr i32 %2, 1
  %i.bf = and i32 %i.be, 3
  %i.bg = and i32 %2, 1
  %i.bh = add nuw nsw i32 %i.bg, %i.bd
  %i.bi = add nuw nsw i32 %i.bh, %i.bf
  %i.bj = and i32 %3, 1
  %i.bk = add nuw nsw i32 %i.bj, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.bi, i32 noundef %i.bk, i64 noundef 16, i32 noundef 16, ptr noundef null)
  br label %.preheader747.i

bb.p:                                             ; preds = %bb.n
  %i.bl = icmp sgt i32 %2, 1
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = lshr i32 %2, 1
  %i.bn = sub nuw nsw i32 %2, %i.bm
  %i.bo = and i32 %3, 1
  %i.bp = add nuw nsw i32 %i.bo, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.bn, i32 noundef %i.bp, i64 noundef 4, i32 noundef 4, ptr noundef null)
  br label %.preheader747.i

bb.r:                                             ; preds = %bb.p
  %i.bq = and i32 %3, 1
  %i.br = add nuw nsw i32 %i.bq, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %i.br, i64 noundef 2, i32 noundef 2, ptr noundef null)
  br label %.preheader747.i

bb.s:                                             ; preds = %bb.m
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = lshr i32 %2, 3
  %i.bt = lshr i32 %2, 1
  %i.bu = and i32 %i.bt, 3
  %i.bv = and i32 %2, 1
  %i.bw = add nuw nsw i32 %i.bv, %i.bs
  %i.bx = add nuw nsw i32 %i.bw, %i.bu
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.bx, i32 noundef %3, i64 noundef 8, i32 noundef 8, ptr noundef null)
  br label %.preheader747.i

bb.u:                                             ; preds = %bb.s
  %i.by = icmp sgt i32 %2, 1
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bz = lshr i32 %2, 1
  %i.ca = sub nuw nsw i32 %2, %i.bz
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %i.ca, i32 noundef %3, i64 noundef 2, i32 noundef 2, ptr noundef null)
  br label %.preheader747.i

bb.w:                                             ; preds = %bb.u
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %3, i64 noundef 1, i32 noundef 1, ptr noundef null)
  br label %.preheader747.i

_ZN4ncnn3MatD2Ev.exit650.lr.ph.i:                 ; preds = %bb.f, %bb.e, %bb.c
  %i.cb = mul i32 %i.a, %2                        ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = icmp sgt i32 %i.a, 0                    ; 2 uses
  %i.cf = sext i32 %i.a to i64                    ; 32 uses
  %i.cg = shl i32 %i.a, 1                         ; 2 uses
  %6 = zext nneg i32 %i.cg to i64                 ; 24 uses
  %i.ch = shl i32 %i.a, 3
  %i.ci = sext i32 %i.ch to i64                   ; 8 uses
  %i.cj = add nsw i32 %i.cb, %i.a
  %i.ck = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.a, i64 1
  %i.cl = insertelement <4 x i32> %i.ck, i32 %i.cb, i64 2
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.cj, i64 3 ; 2 uses
  %i.cn = shl nsw i32 %i.cb, 1
  %i.co = insertelement <4 x i32> poison, i32 %i.cn, i64 0
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cq = add <4 x i32> %i.cp, %i.cm
  %i.cr = shufflevector <4 x i32> %i.cm, <4 x i32> %i.cq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %7 = sext i32 %i.cg to i64                      ; 2 uses
  %i.cs = insertelement <8 x i32> poison, i32 %i.cb, i64 0
  %i.ct = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cu = mul <8 x i32> %i.ct, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.cv = icmp slt i32 %i.a, 1
  %i.cw = and i32 %2, -8
  %i.cx = zext nneg i32 %3 to i64
  %wide.trip.count.i = zext i32 %i.a to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cy = icmp eq i32 %i.a, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod248 = trunc i32 %i.a to i1
  br label %_ZN4ncnn3MatD2Ev.exit650.i

.preheader747.loopexit.i:                         ; preds = %._crit_edge800.split.i
  %i.cz = trunc nuw nsw i64 %indvars.iv.next1032.i to i32
  br label %.preheader747.i

.preheader747.i:                                  ; preds = %.preheader747.loopexit.i, %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.o, %bb.l, %bb.k, %bb.i
  %.0539.lcssa.i = phi i32 [ %i.cz, %.preheader747.loopexit.i ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.q ] ; 4 uses
  %i.da = or disjoint i32 %.0539.lcssa.i, 3
  %i.db = icmp slt i32 %i.da, %3
  br i1 %i.db, label %_ZN4ncnn3MatD2Ev.exit649.lr.ph.i, label %.preheader743.i

_ZN4ncnn3MatD2Ev.exit649.lr.ph.i:                 ; preds = %.preheader747.i
  %i.dc = mul i32 %i.a, %2                        ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = icmp sgt i32 %2, 7
  %i.dg = icmp sgt i32 %i.a, 0                    ; 2 uses
  %i.dh = sext i32 %i.a to i64                    ; 16 uses
  %i.di = shl i32 %i.a, 1                         ; 2 uses
  %8 = zext nneg i32 %i.di to i64                 ; 12 uses
  %i.dj = shl i32 %i.a, 3
  %i.dk = sext i32 %i.dj to i64                   ; 4 uses
  %i.dl = add nsw i32 %i.dc, %i.a
  %i.dm = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.a, i64 1
  %i.dn = insertelement <4 x i32> %i.dm, i32 %i.dc, i64 2
  %i.do = insertelement <4 x i32> %i.dn, i32 %i.dl, i64 3 ; 2 uses
  %i.dp = shl nsw i32 %i.dc, 1
  %i.dq = insertelement <4 x i32> poison, i32 %i.dp, i64 0
  %i.dr = shufflevector <4 x i32> %i.dq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ds = add <4 x i32> %i.dr, %i.do
  %i.dt = shufflevector <4 x i32> %i.do, <4 x i32> %i.ds, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %9 = sext i32 %i.di to i64
  %i.du = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %i.dv = shufflevector <4 x i32> %i.du, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dw = mul <4 x i32> %i.dv, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.dx = icmp slt i32 %i.a, 1
  %i.dy = and i32 %2, -8
  %i.dz = zext nneg i32 %.0539.lcssa.i to i64
  %i.ea = add i32 %.0539.lcssa.i, 3
  %i.eb = sext i32 %3 to i64
  %wide.trip.count1042.i = zext i32 %i.a to i64   ; 6 uses
  %invariant.op.i = add nsw i64 %i.eb, -3
  %i.ec = add nsw i64 %wide.trip.count1042.i, -1  ; 2 uses
  %xtraiter250 = and i64 %wide.trip.count1042.i, 1
  %i.ed = icmp eq i64 %i.ec, 0
  %unroll_iter254 = and i64 %wide.trip.count1042.i, 2147483646
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  %lcmp.mod253 = trunc i32 %i.a to i1
  %xtraiter257 = and i64 %wide.trip.count1042.i, 3 ; 3 uses
  %i.ee = icmp ult i64 %i.ec, 3
  %unroll_iter261 = and i64 %wide.trip.count1042.i, 2147483644
  %lcmp.mod258.not = icmp eq i64 %xtraiter257, 0
  %lcmp.mod260 = icmp ne i64 %xtraiter257, 0
  br label %_ZN4ncnn3MatD2Ev.exit649.i

_ZN4ncnn3MatD2Ev.exit650.i:                       ; preds = %._crit_edge800.split.i, %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i
  %indvars.iv1031.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit650.lr.ph.i ], [ %indvars.iv.next1032.i, %._crit_edge800.split.i ] ; 3 uses
  %i.ef = load ptr, ptr %0, align 8, !tbaa !9     ; 8 uses
  %i.eg = trunc i64 %indvars.iv1031.i to i32      ; 8 uses
  %i.eh = mul i32 %i.cb, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei ; 2 uses
  %i.ek = or disjoint i32 %i.eg, 4
  %i.el = mul i32 %i.ek, %i.cb
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ef, i64 %i.em ; 2 uses
  %i.eo = lshr exact i64 %indvars.iv1031.i, 3
  %i.ep = load ptr, ptr %1, align 8, !tbaa !9, !noalias !15
  %i.eq = load i64, ptr %i.cc, align 8, !tbaa !18, !noalias !15
  %i.er = mul i64 %i.eq, %i.eo
  %i.es = load i64, ptr %i.cd, align 8, !tbaa !19, !noalias !15
  %i.et = mul i64 %i.er, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.et ; 2 uses
  br i1 %i.c, label %.preheader748.lr.ph.i, label %.preheader750.i

.preheader748.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit650.i
  br i1 %i.ce, label %.preheader748.us.preheader.i, label %._crit_edge800.split.i

.preheader748.us.preheader.i:                     ; preds = %.preheader748.lr.ph.i
  %i.ev = or disjoint i32 %i.eg, 1
  %i.ew = mul i32 %i.ev, %i.cb
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ef, i64 %i.ex
  %i.ez = or disjoint i32 %i.eg, 2
  %i.fa = mul i32 %i.ez, %i.cb
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ef, i64 %i.fb
  %i.fd = or disjoint i32 %i.eg, 3
  %i.fe = mul i32 %i.fd, %i.cb
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds i8, ptr %i.ef, i64 %i.ff
  %i.fh = or disjoint i32 %i.eg, 5
  %i.fi = mul i32 %i.fh, %i.cb
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %i.ef, i64 %i.fj
  %i.fl = or disjoint i32 %i.eg, 6
  %i.fm = mul i32 %i.fl, %i.cb
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.ef, i64 %i.fn
  %i.fp = or disjoint i32 %i.eg, 7
  %i.fq = mul i32 %i.fp, %i.cb
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.ef, i64 %i.fr
  br label %.preheader748.us.i

.preheader748.us.i:                               ; preds = %._crit_edge.us.i, %.preheader748.us.preheader.i
  %.0541772.us.i = phi ptr [ %i.nd, %._crit_edge.us.i ], [ %i.ej, %.preheader748.us.preheader.i ] ; 2 uses
  %.0543771.us.i = phi ptr [ %i.ne, %._crit_edge.us.i ], [ %i.ey, %.preheader748.us.preheader.i ] ; 2 uses
  %.0554770.us.i = phi ptr [ %i.nf, %._crit_edge.us.i ], [ %i.fc, %.preheader748.us.preheader.i ] ; 2 uses
  %.0555769.us.i = phi ptr [ %i.ng, %._crit_edge.us.i ], [ %i.fg, %.preheader748.us.preheader.i ] ; 2 uses
  %.0557768.us.i = phi ptr [ %i.nh, %._crit_edge.us.i ], [ %i.en, %.preheader748.us.preheader.i ] ; 2 uses
  %.0560767.us.i = phi ptr [ %i.ni, %._crit_edge.us.i ], [ %i.fk, %.preheader748.us.preheader.i ] ; 2 uses
  %.0561766.us.i = phi ptr [ %i.nj, %._crit_edge.us.i ], [ %i.fo, %.preheader748.us.preheader.i ] ; 2 uses
  %.0562765.us.i = phi ptr [ %i.nk, %._crit_edge.us.i ], [ %i.fs, %.preheader748.us.preheader.i ] ; 2 uses
  %.0563764.us.i = phi ptr [ %i.nc, %._crit_edge.us.i ], [ %i.eu, %.preheader748.us.preheader.i ]
  %.0569763.us.i = phi i32 [ %i.nl, %._crit_edge.us.i ], [ 0, %.preheader748.us.preheader.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader748.us.i
  %indvars.iv1016.i = phi i64 [ 0, %.preheader748.us.i ], [ %indvars.iv.next1017.i, %bb.x ] ; 9 uses
  %.1564762.us.i = phi ptr [ %.0563764.us.i, %.preheader748.us.i ], [ %i.nc, %bb.x ] ; 65 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0541772.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0543771.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0554770.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0555769.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0557768.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0560767.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0561766.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0562765.us.i, i64 %indvars.iv1016.i ; 3 uses
  %i.gb = load i8, ptr %i.ft, align 1, !tbaa !20
  store i8 %i.gb, ptr %.1564762.us.i, align 1, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.cf
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 1
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !20
  %i.gf = load i8, ptr %i.fu, align 1, !tbaa !20
  %i.gg = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 2
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.cf
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !20
  %i.gj = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 3
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !20
  %i.gk = load i8, ptr %i.fv, align 1, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 4
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !20
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.cf
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 5
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !20
  %i.gp = load i8, ptr %i.fw, align 1, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 6
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !20
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.cf
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !20
  %i.gt = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 7
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !20
  %i.gu = load i8, ptr %i.fx, align 1, !tbaa !20
  %i.gv = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 8
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !20
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.cf
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !20
  %i.gy = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 9
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !20
  %i.gz = load i8, ptr %i.fy, align 1, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 10
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.cf
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !20
  %i.hd = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 11
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !20
  %i.he = load i8, ptr %i.fz, align 1, !tbaa !20
  %i.hf = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 12
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !20
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.cf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 13
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !20
  %i.hj = load i8, ptr %i.ga, align 1, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 14
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !20
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.cf
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !20
  %i.hn = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 15
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ft, i64 %6 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fu, i64 %6 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fv, i64 %6 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fw, i64 %6 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fx, i64 %6 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fy, i64 %6 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fz, i64 %6 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ga, i64 %6 ; 3 uses
  %i.hx = load i8, ptr %i.hp, align 1, !tbaa !20
  store i8 %i.hx, ptr %i.ho, align 1, !tbaa !20
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.cf
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !20
  %i.ia = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 17
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !20
  %i.ib = load i8, ptr %i.hq, align 1, !tbaa !20
  %i.ic = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 18
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.cf
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !20
  %i.if = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 19
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !20
  %i.ig = load i8, ptr %i.hr, align 1, !tbaa !20
  %i.ih = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 20
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !20
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.cf
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !20
  %i.ik = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 21
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !20
  %i.il = load i8, ptr %i.hs, align 1, !tbaa !20
  %i.im = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 22
  store i8 %i.il, ptr %i.im, align 1, !tbaa !20
  %i.in = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.cf
  %i.io = load i8, ptr %i.in, align 1, !tbaa !20
  %i.ip = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 23
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !20
  %i.iq = load i8, ptr %i.ht, align 1, !tbaa !20
  %i.ir = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 24
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !20
  %i.is = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.cf
  %i.it = load i8, ptr %i.is, align 1, !tbaa !20
  %i.iu = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 25
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !20
  %i.iv = load i8, ptr %i.hu, align 1, !tbaa !20
  %i.iw = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 26
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !20
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.cf
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZN4ncnn45convolution_transform_kernel_packed_int8_avx2ERKNS_3MatERS0_iiii:bb.a
  %i.jf = load i8, ptr %i.hw, align 1, !tbaa !20
  %i.jg = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 30
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !20
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.cf
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !20
  %i.jj = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 31
  store i8 %i.ji, ptr %i.jj, align 1, !tbaa !20
  %i.jk = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hp, i64 %6 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hq, i64 %6 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hr, i64 %6 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hs, i64 %6 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ht, i64 %6 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hu, i64 %6 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hv, i64 %6 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.hw, i64 %6 ; 3 uses
  %i.jt = load i8, ptr %i.jl, align 1, !tbaa !20
  store i8 %i.jt, ptr %i.jk, align 1, !tbaa !20
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.cf
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !20
  %i.jw = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 33
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !20
  %i.jx = load i8, ptr %i.jm, align 1, !tbaa !20
  %i.jy = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 34
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !20
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.cf
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !20
  %i.kb = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 35
  store i8 %i.ka, ptr %i.kb, align 1, !tbaa !20
  %i.kc = load i8, ptr %i.jn, align 1, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 36
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !20
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.cf
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !20
  %i.kg = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 37
  store i8 %i.kf, ptr %i.kg, align 1, !tbaa !20
  %i.kh = load i8, ptr %i.jo, align 1, !tbaa !20
  %i.ki = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 38
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !20
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.cf
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !20
  %i.kl = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 39
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !20
  %i.km = load i8, ptr %i.jp, align 1, !tbaa !20
  %i.kn = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 40
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !20
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.cf
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !20
  %i.kq = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 41
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !20
  %i.kr = load i8, ptr %i.jq, align 1, !tbaa !20
  %i.ks = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 42
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !20
  %i.kt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.cf
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !20
  %i.kv = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 43
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !20
  %i.kw = load i8, ptr %i.jr, align 1, !tbaa !20
  %i.kx = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 44
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !20
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.cf
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !20
  %i.la = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 45
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !20
  %i.lb = load i8, ptr %i.js, align 1, !tbaa !20
  %i.lc = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 46
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !20
  %i.ld = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.cf
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !20
  %i.lf = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 47
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !20
  %i.lg = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 48
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jl, i64 %6 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.jm, i64 %6 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jn, i64 %6 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jo, i64 %6 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.jp, i64 %6 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.jq, i64 %6 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jr, i64 %6 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.js, i64 %6 ; 2 uses
  %i.lp = load i8, ptr %i.lh, align 1, !tbaa !20
  store i8 %i.lp, ptr %i.lg, align 1, !tbaa !20
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.cf
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !20
  %i.ls = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 49
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !20
  %i.lt = load i8, ptr %i.li, align 1, !tbaa !20
  %i.lu = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 50
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !20
  %i.lv = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.cf
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !20
  %i.lx = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 51
  store i8 %i.lw, ptr %i.lx, align 1, !tbaa !20
  %i.ly = load i8, ptr %i.lj, align 1, !tbaa !20
  %i.lz = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 52
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !20
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.cf
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !20
  %i.mc = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 53
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !20
  %i.md = load i8, ptr %i.lk, align 1, !tbaa !20
  %i.me = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 54
  store i8 %i.md, ptr %i.me, align 1, !tbaa !20
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.cf
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !20
  %i.mh = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 55
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !20
  %i.mi = load i8, ptr %i.ll, align 1, !tbaa !20
  %i.mj = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 56
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !20
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.cf
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !20
  %i.mm = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 57
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !20
  %i.mn = load i8, ptr %i.lm, align 1, !tbaa !20
  %i.mo = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 58
  store i8 %i.mn, ptr %i.mo, align 1, !tbaa !20
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.cf
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !20
  %i.mr = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 59
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !20
  %i.ms = load i8, ptr %i.ln, align 1, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 60
  store i8 %i.ms, ptr %i.mt, align 1, !tbaa !20
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.cf
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !20
  %i.mw = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 61
  store i8 %i.mv, ptr %i.mw, align 1, !tbaa !20
  %i.mx = load i8, ptr %i.lo, align 1, !tbaa !20
  %i.my = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 62
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !20
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.cf
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !20
  %i.nb = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 63
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !20
  %i.nc = getelementptr inbounds nuw i8, ptr %.1564762.us.i, i64 64 ; 3 uses
  %indvars.iv.next1017.i = add nuw nsw i64 %indvars.iv1016.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next1017.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.x, !llvm.loop !21

._crit_edge.us.i:                                 ; preds = %bb.x
  %i.nd = getelementptr inbounds nuw i8, ptr %.0541772.us.i, i64 %i.ci ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.0543771.us.i, i64 %i.ci
  %i.nf = getelementptr inbounds nuw i8, ptr %.0554770.us.i, i64 %i.ci
  %i.ng = getelementptr inbounds nuw i8, ptr %.0555769.us.i, i64 %i.ci
  %i.nh = getelementptr inbounds nuw i8, ptr %.0557768.us.i, i64 %i.ci ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.0560767.us.i, i64 %i.ci
  %i.nj = getelementptr inbounds nuw i8, ptr %.0561766.us.i, i64 %i.ci
  %i.nk = getelementptr inbounds nuw i8, ptr %.0562765.us.i, i64 %i.ci
  %i.nl = add nuw nsw i32 %.0569763.us.i, 8       ; 2 uses
  %i.nm = or disjoint i32 %i.nl, 7
  %i.nn = icmp slt i32 %i.nm, %2
  br i1 %i.nn, label %.preheader748.us.i, label %.preheader750.i, !llvm.loop !23

.preheader750.i:                                  ; preds = %._crit_edge.us.i, %_ZN4ncnn3MatD2Ev.exit650.i
  %.0569.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit650.i ], [ %i.cw, %._crit_edge.us.i ] ; 3 uses
  %.0563.lcssa.i = phi ptr [ %i.eu, %_ZN4ncnn3MatD2Ev.exit650.i ], [ %i.nc, %._crit_edge.us.i ] ; 2 uses
  %.0557.lcssa.i = phi ptr [ %i.en, %_ZN4ncnn3MatD2Ev.exit650.i ], [ %i.nh, %._crit_edge.us.i ]
  %.0541.lcssa.i = phi ptr [ %i.ej, %_ZN4ncnn3MatD2Ev.exit650.i ], [ %i.nd, %._crit_edge.us.i ] ; 2 uses
  %i.no = or disjoint i32 %.0569.lcssa.i, 1
  %i.np = icmp slt i32 %i.no, %2
  br i1 %i.np, label %.lr.ph786.i, label %.preheader749.i

.lr.ph786.i:                                      ; preds = %.preheader750.i
  br i1 %i.ce, label %.lr.ph.us.i, label %._crit_edge800.split.i

.lr.ph.us.i:                                      ; preds = %.lr.ph786.i, %._crit_edge.us790.i
  %.1542785.us.i = phi ptr [ %i.oi, %._crit_edge.us790.i ], [ %.0541.lcssa.i, %.lr.ph786.i ] ; 2 uses
  %.1558784.us.i = phi ptr [ %i.oj, %._crit_edge.us790.i ], [ %.0557.lcssa.i, %.lr.ph786.i ] ; 2 uses
  %.3566783.us.i = phi ptr [ %i.oh, %._crit_edge.us790.i ], [ %.0563.lcssa.i, %.lr.ph786.i ]
  %.1570782.us.i = phi i32 [ %i.ok, %._crit_edge.us790.i ], [ %.0569.lcssa.i, %.lr.ph786.i ]
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.us.i
  %indvars.iv1020.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next1021.i, %bb.y ] ; 3 uses
  %.4567781.us.i = phi ptr [ %.3566783.us.i, %.lr.ph.us.i ], [ %i.oh, %bb.y ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.1542785.us.i, i64 %indvars.iv1020.i
  %i.nr = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.nq, <8 x i32> %i.cr, <8 x i32> splat (i32 -1), i8 1)
  %i.ns = bitcast <8 x i32> %i.nr to <32 x i8>
  %i.nt = shufflevector <32 x i8> %i.ns, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.1558784.us.i, i64 %indvars.iv1020.i
  %i.nv = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.nu, <8 x i32> %i.cr, <8 x i32> splat (i32 -1), i8 1)
  %i.nw = bitcast <8 x i32> %i.nv to <32 x i8>
  %i.nx = shufflevector <32 x i8> %i.nw, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.ny = bitcast <32 x i8> %i.nt to <8 x i32>
  %i.nz = bitcast <32 x i8> %i.nt to <8 x i32>
  %i.oa = shufflevector <8 x i32> %i.ny, <8 x i32> %i.nz, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.ob = bitcast <4 x i32> %i.oa to <2 x i64>
  %i.oc = bitcast <32 x i8> %i.nx to <8 x i32>
  %i.od = bitcast <32 x i8> %i.nx to <8 x i32>
  %i.oe = shufflevector <8 x i32> %i.oc, <8 x i32> %i.od, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.of = bitcast <4 x i32> %i.oe to <2 x i64>
  %i.og = shufflevector <2 x i64> %i.ob, <2 x i64> %i.of, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.og, ptr %.4567781.us.i, align 1, !tbaa !20
  %i.oh = getelementptr inbounds nuw i8, ptr %.4567781.us.i, i64 16 ; 3 uses
  %indvars.iv.next1021.i = add nuw nsw i64 %indvars.iv1020.i, 1 ; 2 uses
  %exitcond1024.not.i = icmp eq i64 %indvars.iv.next1021.i, %wide.trip.count.i
  br i1 %exitcond1024.not.i, label %._crit_edge.us790.i, label %bb.y, !llvm.loop !24

._crit_edge.us790.i:                              ; preds = %bb.y
  %i.oi = getelementptr inbounds nuw i8, ptr %.1542785.us.i, i64 %7 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.1558784.us.i, i64 %7
  %i.ok = add nuw nsw i32 %.1570782.us.i, 2       ; 3 uses
  %i.ol = or disjoint i32 %i.ok, 1
  %i.om = icmp slt i32 %i.ol, %2
  br i1 %i.om, label %.lr.ph.us.i, label %.preheader749.i, !llvm.loop !25

.preheader749.i:                                  ; preds = %._crit_edge.us790.i, %.preheader750.i
  %.1570.lcssa.i = phi i32 [ %.0569.lcssa.i, %.preheader750.i ], [ %i.ok, %._crit_edge.us790.i ] ; 2 uses
  %.3566.lcssa.i = phi ptr [ %.0563.lcssa.i, %.preheader750.i ], [ %i.oh, %._crit_edge.us790.i ]
  %.1542.lcssa.i = phi ptr [ %.0541.lcssa.i, %.preheader750.i ], [ %i.oi, %._crit_edge.us790.i ] ; 3 uses
  %i.on = icmp sge i32 %.1570.lcssa.i, %2
  %brmerge.i = or i1 %i.cv, %i.on
  br i1 %brmerge.i, label %._crit_edge800.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader749.i, %._crit_edge.i
  %.5568798.i = phi ptr [ %.lcssa246, %._crit_edge.i ], [ %.3566.lcssa.i, %.preheader749.i ] ; 2 uses
  %.2571797.i = phi i32 [ %i.oy, %._crit_edge.i ], [ %.1570.lcssa.i, %.preheader749.i ]
  br i1 %i.cy, label %.epil.preheader, label %.lr.ph.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv1025.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next1026.i.1, %._crit_edge.i.unr-lcssa ]
  %.6796.i.epil.init = phi ptr [ %.5568798.i, %.lr.ph.i ], [ %i.pt, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod248)
  %i.oo = getelementptr inbounds nuw i8, ptr %.1542.lcssa.i, i64 %indvars.iv1025.i.epil.init
  %i.op = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.oo, <8 x i32> %i.cu, <8 x i32> splat (i32 -1), i8 1)
  %i.oq = bitcast <8 x i32> %i.op to <32 x i8>
  %i.or = shufflevector <32 x i8> %i.oq, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.os = bitcast <32 x i8> %i.or to <8 x i32>
  %i.ot = bitcast <32 x i8> %i.or to <8 x i32>
  %i.ou = shufflevector <8 x i32> %i.os, <8 x i32> %i.ot, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.ov = bitcast <4 x i32> %i.ou to <2 x i64>
  %i.ow = extractelement <2 x i64> %i.ov, i64 0
  store i64 %i.ow, ptr %.6796.i.epil.init, align 1, !tbaa !20
  %i.ox = getelementptr inbounds nuw i8, ptr %.6796.i.epil.init, i64 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa246 = phi ptr [ %i.pt, %._crit_edge.i.unr-lcssa ], [ %i.ox, %.epil.preheader ]
  %i.oy = add nuw nsw i32 %.2571797.i, 1          ; 2 uses
  %exitcond1030.not.i = icmp eq i32 %i.oy, %2
  br i1 %exitcond1030.not.i, label %._crit_edge800.split.i, label %.lr.ph.i, !llvm.loop !26

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv1025.i = phi i64 [ %indvars.iv.next1026.i.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 3 uses
  %.6796.i = phi ptr [ %i.pt, %.lr.ph.i.new ], [ %.5568798.i, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.oz = getelementptr inbounds nuw i8, ptr %.1542.lcssa.i, i64 %indvars.iv1025.i
  %i.pa = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.oz, <8 x i32> %i.cu, <8 x i32> splat (i32 -1), i8 1)
  %i.pb = bitcast <8 x i32> %i.pa to <32 x i8>
  %i.pc = shufflevector <32 x i8> %i.pb, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.pd = bitcast <32 x i8> %i.pc to <8 x i32>
  %i.pe = bitcast <32 x i8> %i.pc to <8 x i32>
  %i.pf = shufflevector <8 x i32> %i.pd, <8 x i32> %i.pe, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.pg = bitcast <4 x i32> %i.pf to <2 x i64>
  %i.ph = extractelement <2 x i64> %i.pg, i64 0
  store i64 %i.ph, ptr %.6796.i, align 1, !tbaa !20
  %i.pi = getelementptr inbounds nuw i8, ptr %.6796.i, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %.1542.lcssa.i, i64 %indvars.iv1025.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 1
  %i.pl = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.pk, <8 x i32> %i.cu, <8 x i32> splat (i32 -1), i8 1)
  %i.pm = bitcast <8 x i32> %i.pl to <32 x i8>
  %i.pn = shufflevector <32 x i8> %i.pm, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.po = bitcast <32 x i8> %i.pn to <8 x i32>
  %i.pp = bitcast <32 x i8> %i.pn to <8 x i32>
  %i.pq = shufflevector <8 x i32> %i.po, <8 x i32> %i.pp, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.pr = bitcast <4 x i32> %i.pq to <2 x i64>
  %i.ps = extractelement <2 x i64> %i.pr, i64 0
  store i64 %i.ps, ptr %i.pi, align 1, !tbaa !20
  %i.pt = getelementptr inbounds nuw i8, ptr %.6796.i, i64 16 ; 3 uses
  %indvars.iv.next1026.i.1 = add nuw nsw i64 %indvars.iv1025.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !27

._crit_edge800.split.i:                           ; preds = %._crit_edge.i, %.preheader749.i, %.lr.ph786.i, %.preheader748.lr.ph.i
  %indvars.iv.next1032.i = add nuw nsw i64 %indvars.iv1031.i, 8 ; 3 uses
  %i.pu = or disjoint i64 %indvars.iv.next1032.i, 7
  %i.pv = icmp samesign ult i64 %i.pu, %i.cx
  br i1 %i.pv, label %_ZN4ncnn3MatD2Ev.exit650.i, label %.preheader747.loopexit.i, !llvm.loop !28

.preheader743.loopexit.i:                         ; preds = %._crit_edge851.split.i
  %i.pw = trunc nuw nsw i64 %indvars.iv.next1059.i to i32
  br label %.preheader743.i

.preheader743.i:                                  ; preds = %.preheader743.loopexit.i, %.preheader747.i
  %.1.lcssa.i = phi i32 [ %.0539.lcssa.i, %.preheader747.i ], [ %i.pw, %.preheader743.loopexit.i ] ; 3 uses
  %i.px = or disjoint i32 %.1.lcssa.i, 1          ; 2 uses
  %i.py = icmp slt i32 %i.px, %3
  br i1 %i.py, label %_ZN4ncnn3MatD2Ev.exit648.lr.ph.i, label %.preheader739.i

_ZN4ncnn3MatD2Ev.exit648.lr.ph.i:                 ; preds = %.preheader743.i
  %i.pz = mul i32 %i.a, %2                        ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qc = icmp sgt i32 %2, 7
  %i.qd = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.qe = shufflevector <8 x i32> %i.qd, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.qf = mul <8 x i32> %i.qe, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.qg = icmp sgt i32 %i.a, 0                    ; 2 uses
  %i.qh = shl i32 %i.a, 3
  %i.qi = sext i32 %i.qh to i64                   ; 2 uses
  %i.qj = add nsw i32 %i.pz, %i.a
  %i.qk = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.pz, i64 1
  %i.ql = insertelement <4 x i32> %i.qk, i32 %i.a, i64 2
  %i.qm = insertelement <4 x i32> %i.ql, i32 %i.qj, i64 3 ; 5 uses
  %i.qn = shl i32 %i.a, 1
  %i.qo = sext i32 %i.qn to i64                   ; 2 uses
  %i.qp = icmp slt i32 %i.a, 1
  %i.qq = and i32 %2, -8
  %i.qr = zext nneg i32 %.1.lcssa.i to i64
  %i.qs = sext i32 %3 to i64
  %wide.trip.count1073.i = zext i32 %i.a to i64   ; 14 uses
  %i.qt = shl nuw nsw i64 %wide.trip.count1073.i, 1
  %xtraiter264 = and i64 %wide.trip.count1073.i, 3 ; 3 uses
  %i.qu = add nsw i32 %i.a, -1
  %i.qv = icmp ult i32 %i.qu, 3
  %unroll_iter269 = and i64 %wide.trip.count1073.i, 2147483644
  %lcmp.mod266.not = icmp eq i64 %xtraiter264, 0
  %lcmp.mod268 = icmp ne i64 %xtraiter264, 0
  %min.iters.check = icmp ult i32 %i.a, 8
  %min.iters.check124 = icmp ult i32 %i.a, 32
  %i.qw = and i64 %wide.trip.count1073.i, 24
  %n.vec = and i64 %wide.trip.count1073.i, 2147483616 ; 5 uses
  %i.qx = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1073.i
  %min.epilog.iters.check = icmp eq i64 %i.qw, 0
  %n.vec126 = and i64 %wide.trip.count1073.i, 2147483640 ; 4 uses
  %i.qy = shl nuw nsw i64 %n.vec126, 1
  %cmp.n133 = icmp eq i64 %n.vec126, %wide.trip.count1073.i
  %xtraiter271 = and i64 %wide.trip.count1073.i, 3 ; 2 uses
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br label %_ZN4ncnn3MatD2Ev.exit648.i

_ZN4ncnn3MatD2Ev.exit649.i:                       ; preds = %._crit_edge851.split.i, %_ZN4ncnn3MatD2Ev.exit649.lr.ph.i
  %indvars.iv1058.i = phi i64 [ %i.dz, %_ZN4ncnn3MatD2Ev.exit649.lr.ph.i ], [ %indvars.iv.next1059.i, %._crit_edge851.split.i ] ; 2 uses
  %indvars.iv1056.i = phi i32 [ %i.ea, %_ZN4ncnn3MatD2Ev.exit649.lr.ph.i ], [ %indvars.iv.next1057.i, %._crit_edge851.split.i ] ; 2 uses
  %i.qz = load ptr, ptr %0, align 8, !tbaa !9     ; 4 uses
  %i.ra = trunc nuw i64 %indvars.iv1058.i to i32  ; 5 uses
  %i.rb = mul i32 %i.dc, %i.ra
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds i8, ptr %i.qz, i64 %i.rc ; 2 uses
  %i.re = lshr i32 %i.ra, 3
  %i.rf = lshr i32 %i.ra, 2
  %i.rg = and i32 %i.rf, 1
  %i.rh = add nuw nsw i32 %i.rg, %i.re
  %i.ri = load ptr, ptr %1, align 8, !tbaa !9, !noalias !29
  %i.rj = load i64, ptr %i.dd, align 8, !tbaa !18, !noalias !29
  %i.rk = zext nneg i32 %i.rh to i64
  %i.rl = mul i64 %i.rj, %i.rk
  %i.rm = load i64, ptr %i.de, align 8, !tbaa !19, !noalias !29
  %i.rn = mul i64 %i.rl, %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rn ; 2 uses
  br i1 %i.df, label %.preheader744.lr.ph.i, label %.preheader746.i

.preheader744.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit649.i
  br i1 %i.dg, label %.preheader744.us.preheader.i, label %._crit_edge851.split.i

.preheader744.us.preheader.i:                     ; preds = %.preheader744.lr.ph.i
  %i.rp = add i32 %i.ra, 1
  %i.rq = mul i32 %i.rp, %i.dc
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds i8, ptr %i.qz, i64 %i.rr
  %i.rt = add i32 %i.ra, 2
  %i.ru = mul i32 %i.rt, %i.dc
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds i8, ptr %i.qz, i64 %i.rv
  %i.rx = mul i32 %indvars.iv1056.i, %i.dc
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds i8, ptr %i.qz, i64 %i.ry
  br label %.preheader744.us.i

.preheader744.us.i:                               ; preds = %._crit_edge812.us.i, %.preheader744.us.preheader.i
  %.0596819.us.i = phi i32 [ %i.vw, %._crit_edge812.us.i ], [ 0, %.preheader744.us.preheader.i ]
  %.0599818.us.i = phi ptr [ %i.vr, %._crit_edge812.us.i ], [ %i.ro, %.preheader744.us.preheader.i ]
  %.0606817.us.i = phi ptr [ %i.vv, %._crit_edge812.us.i ], [ %i.rz, %.preheader744.us.preheader.i ] ; 2 uses
  %.0608816.us.i = phi ptr [ %i.vu, %._crit_edge812.us.i ], [ %i.rw, %.preheader744.us.preheader.i ] ; 2 uses
  %.0610815.us.i = phi ptr [ %i.vt, %._crit_edge812.us.i ], [ %i.rs, %.preheader744.us.preheader.i ] ; 2 uses
  %.0612814.us.i = phi ptr [ %i.vs, %._crit_edge812.us.i ], [ %i.rd, %.preheader744.us.preheader.i ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader744.us.i
  %indvars.iv1039.i = phi i64 [ 0, %.preheader744.us.i ], [ %indvars.iv.next1040.i, %bb.z ] ; 5 uses
  %.1600809.us.i = phi ptr [ %.0599818.us.i, %.preheader744.us.i ], [ %i.vr, %bb.z ] ; 33 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.0612814.us.i, i64 %indvars.iv1039.i ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.0610815.us.i, i64 %indvars.iv1039.i ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.0608816.us.i, i64 %indvars.iv1039.i ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0606817.us.i, i64 %indvars.iv1039.i ; 3 uses
  %i.se = load i8, ptr %i.sa, align 1, !tbaa !20
  store i8 %i.se, ptr %.1600809.us.i, align 1, !tbaa !20
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.dh
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !20
  %i.sh = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 1
  store i8 %i.sg, ptr %i.sh, align 1, !tbaa !20
  %i.si = load i8, ptr %i.sb, align 1, !tbaa !20
  %i.sj = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 2
  store i8 %i.si, ptr %i.sj, align 1, !tbaa !20
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.dh
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !20
  %i.sm = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 3
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !20
  %i.sn = load i8, ptr %i.sc, align 1, !tbaa !20
  %i.so = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 4
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !20
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.dh
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !20
  %i.sr = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 5
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !20
  %i.ss = load i8, ptr %i.sd, align 1, !tbaa !20
  %i.st = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 6
  store i8 %i.ss, ptr %i.st, align 1, !tbaa !20
  %i.su = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.dh
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !20
  %i.sw = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 7
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !20
  %i.sx = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sa, i64 %8 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sb, i64 %8 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sc, i64 %8 ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sd, i64 %8 ; 3 uses
  %i.tc = load i8, ptr %i.sy, align 1, !tbaa !20
  store i8 %i.tc, ptr %i.sx, align 1, !tbaa !20
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.dh
  %i.te = load i8, ptr %i.td, align 1, !tbaa !20
  %i.tf = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 9
  store i8 %i.te, ptr %i.tf, align 1, !tbaa !20
  %i.tg = load i8, ptr %i.sz, align 1, !tbaa !20
  %i.th = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 10
  store i8 %i.tg, ptr %i.th, align 1, !tbaa !20
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.dh
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !20
  %i.tk = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 11
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !20
  %i.tl = load i8, ptr %i.ta, align 1, !tbaa !20
  %i.tm = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 12
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !20
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.dh
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !20
  %i.tp = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 13
  store i8 %i.to, ptr %i.tp, align 1, !tbaa !20
  %i.tq = load i8, ptr %i.tb, align 1, !tbaa !20
  %i.tr = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 14
  store i8 %i.tq, ptr %i.tr, align 1, !tbaa !20
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.dh
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !20
  %i.tu = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 15
  store i8 %i.tt, ptr %i.tu, align 1, !tbaa !20
  %i.tv = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 16
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sy, i64 %8 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sz, i64 %8 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ta, i64 %8 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tb, i64 %8 ; 3 uses
  %i.ua = load i8, ptr %i.tw, align 1, !tbaa !20
  store i8 %i.ua, ptr %i.tv, align 1, !tbaa !20
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tw, i64 %i.dh
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !20
  %i.ud = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 17
  store i8 %i.uc, ptr %i.ud, align 1, !tbaa !20
  %i.ue = load i8, ptr %i.tx, align 1, !tbaa !20
  %i.uf = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 18
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !20
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.dh
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !20
  %i.ui = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 19
  store i8 %i.uh, ptr %i.ui, align 1, !tbaa !20
  %i.uj = load i8, ptr %i.ty, align 1, !tbaa !20
  %i.uk = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 20
  store i8 %i.uj, ptr %i.uk, align 1, !tbaa !20
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.dh
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !20
  %i.un = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 21
  store i8 %i.um, ptr %i.un, align 1, !tbaa !20
  %i.uo = load i8, ptr %i.tz, align 1, !tbaa !20
  %i.up = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 22
  store i8 %i.uo, ptr %i.up, align 1, !tbaa !20
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.dh
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !20
  %i.us = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 23
  store i8 %i.ur, ptr %i.us, align 1, !tbaa !20
  %i.ut = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 24
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tw, i64 %8 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tx, i64 %8 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ty, i64 %8 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tz, i64 %8 ; 2 uses
  %i.uy = load i8, ptr %i.uu, align 1, !tbaa !20
  store i8 %i.uy, ptr %i.ut, align 1, !tbaa !20
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.dh
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !20
  %i.vb = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 25
  store i8 %i.va, ptr %i.vb, align 1, !tbaa !20
  %i.vc = load i8, ptr %i.uv, align 1, !tbaa !20
  %i.vd = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 26
  store i8 %i.vc, ptr %i.vd, align 1, !tbaa !20
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.dh
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !20
  %i.vg = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 27
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !20
  %i.vh = load i8, ptr %i.uw, align 1, !tbaa !20
  %i.vi = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 28
  store i8 %i.vh, ptr %i.vi, align 1, !tbaa !20
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.dh
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !20
  %i.vl = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 29
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !20
  %i.vm = load i8, ptr %i.ux, align 1, !tbaa !20
  %i.vn = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 30
  store i8 %i.vm, ptr %i.vn, align 1, !tbaa !20
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.dh
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !20
  %i.vq = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 31
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !20
  %i.vr = getelementptr inbounds nuw i8, ptr %.1600809.us.i, i64 32 ; 3 uses
  %indvars.iv.next1040.i = add nuw nsw i64 %indvars.iv1039.i, 1 ; 2 uses
  %exitcond1043.not.i = icmp eq i64 %indvars.iv.next1040.i, %wide.trip.count1042.i
  br i1 %exitcond1043.not.i, label %._crit_edge812.us.i, label %bb.z, !llvm.loop !32

._crit_edge812.us.i:                              ; preds = %bb.z
  %i.vs = getelementptr inbounds nuw i8, ptr %.0612814.us.i, i64 %i.dk ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.0610815.us.i, i64 %i.dk
  %i.vu = getelementptr inbounds nuw i8, ptr %.0608816.us.i, i64 %i.dk
  %i.vv = getelementptr inbounds nuw i8, ptr %.0606817.us.i, i64 %i.dk
  %i.vw = add nuw nsw i32 %.0596819.us.i, 8       ; 2 uses
  %i.vx = or disjoint i32 %i.vw, 7
  %i.vy = icmp slt i32 %i.vx, %2
  br i1 %i.vy, label %.preheader744.us.i, label %.preheader746.i, !llvm.loop !33

.preheader746.i:                                  ; preds = %._crit_edge812.us.i, %_ZN4ncnn3MatD2Ev.exit649.i
  %.0612.lcssa.i = phi ptr [ %i.rd, %_ZN4ncnn3MatD2Ev.exit649.i ], [ %i.vs, %._crit_edge812.us.i ] ; 2 uses
  %.0599.lcssa.i = phi ptr [ %i.ro, %_ZN4ncnn3MatD2Ev.exit649.i ], [ %i.vr, %._crit_edge812.us.i ] ; 2 uses
  %.0596.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit649.i ], [ %i.dy, %._crit_edge812.us.i ] ; 3 uses
  %i.vz = or disjoint i32 %.0596.lcssa.i, 1
  %i.wa = icmp slt i32 %i.vz, %2
  br i1 %i.wa, label %.lr.ph835.i, label %.preheader745.i

.lr.ph835.i:                                      ; preds = %.preheader746.i
  br i1 %i.dg, label %.lr.ph829.us.i, label %._crit_edge851.split.i

.lr.ph829.us.i:                                   ; preds = %.lr.ph835.i, %._crit_edge830.us.i
  %.1597834.us.i = phi i32 [ %i.xh, %._crit_edge830.us.i ], [ %.0596.lcssa.i, %.lr.ph835.i ]
  %.3602833.us.i = phi ptr [ %.lcssa236, %._crit_edge830.us.i ], [ %.0599.lcssa.i, %.lr.ph835.i ] ; 2 uses
  %.1613832.us.i = phi ptr [ %i.xg, %._crit_edge830.us.i ], [ %.0612.lcssa.i, %.lr.ph835.i ] ; 4 uses
  br i1 %i.ed, label %.epil.preheader249, label %.lr.ph829.us.i.new

.lr.ph829.us.i.new:                               ; preds = %.lr.ph829.us.i, %.lr.ph829.us.i.new
  %indvars.iv1045.i = phi i64 [ %indvars.iv.next1046.i.1, %.lr.ph829.us.i.new ], [ 0, %.lr.ph829.us.i ] ; 3 uses
  %.4603826.us.i = phi ptr [ %i.wv, %.lr.ph829.us.i.new ], [ %.3602833.us.i, %.lr.ph829.us.i ] ; 3 uses
  %niter255 = phi i64 [ %niter255.next.1, %.lr.ph829.us.i.new ], [ 0, %.lr.ph829.us.i ]
  %i.wb = getelementptr inbounds nuw i8, ptr %.1613832.us.i, i64 %indvars.iv1045.i
  %i.wc = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.wb, <8 x i32> %i.dt, <8 x i32> splat (i32 -1), i8 1)
  %i.wd = bitcast <8 x i32> %i.wc to <32 x i8>
  %i.we = shufflevector <32 x i8> %i.wd, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.wf = bitcast <32 x i8> %i.we to <8 x i32>
  %i.wg = bitcast <32 x i8> %i.we to <8 x i32>
  %i.wh = shufflevector <8 x i32> %i.wf, <8 x i32> %i.wg, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.wi = bitcast <4 x i32> %i.wh to <2 x i64>
  %i.wj = extractelement <2 x i64> %i.wi, i64 0
  store i64 %i.wj, ptr %.4603826.us.i, align 1, !tbaa !20
  %i.wk = getelementptr inbounds nuw i8, ptr %.4603826.us.i, i64 8
  %i.wl = getelementptr inbounds nuw i8, ptr %.1613832.us.i, i64 %indvars.iv1045.i
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 1
  %i.wn = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr nonnull %i.wm, <8 x i32> %i.dt, <8 x i32> splat (i32 -1), i8 1)
  %i.wo = bitcast <8 x i32> %i.wn to <32 x i8>
  %i.wp = shufflevector <32 x i8> %i.wo, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.wq = bitcast <32 x i8> %i.wp to <8 x i32>
  %i.wr = bitcast <32 x i8> %i.wp to <8 x i32>
  %i.ws = shufflevector <8 x i32> %i.wq, <8 x i32> %i.wr, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.wt = bitcast <4 x i32> %i.ws to <2 x i64>
  %i.wu = extractelement <2 x i64> %i.wt, i64 0
  store i64 %i.wu, ptr %i.wk, align 1, !tbaa !20
  %i.wv = getelementptr inbounds nuw i8, ptr %.4603826.us.i, i64 16 ; 3 uses
  %indvars.iv.next1046.i.1 = add nuw nsw i64 %indvars.iv1045.i, 2 ; 2 uses
  %niter255.next.1 = add i64 %niter255, 2         ; 2 uses
  %niter255.ncmp.1 = icmp eq i64 %niter255.next.1, %unroll_iter254
  br i1 %niter255.ncmp.1, label %._crit_edge830.us.i.unr-lcssa, label %.lr.ph829.us.i.new, !llvm.loop !34

._crit_edge830.us.i.unr-lcssa:                    ; preds = %.lr.ph829.us.i.new
  br i1 %lcmp.mod251.not, label %._crit_edge830.us.i, label %.epil.preheader249

.epil.preheader249:                               ; preds = %._crit_edge830.us.i.unr-lcssa, %.lr.ph829.us.i
  %indvars.iv1045.i.epil.init = phi i64 [ 0, %.lr.ph829.us.i ], [ %indvars.iv.next1046.i.1, %._crit_edge830.us.i.unr-lcssa ]
  %.4603826.us.i.epil.init = phi ptr [ %.3602833.us.i, %.lr.ph829.us.i ], [ %i.wv, %._crit_edge830.us.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod253)
  %i.ww = getelementptr inbounds nuw i8, ptr %.1613832.us.i, i64 %indvars.iv1045.i.epil.init
  %i.wx = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.ww, <8 x i32> %i.dt, <8 x i32> splat (i32 -1), i8 1)
  %i.wy = bitcast <8 x i32> %i.wx to <32 x i8>
  %i.wz = shufflevector <32 x i8> %i.wy, <32 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 16, i32 20, i32 24, i32 28, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48, i32 48> ; 2 uses
  %i.xa = bitcast <32 x i8> %i.wz to <8 x i32>
  %i.xb = bitcast <32 x i8> %i.wz to <8 x i32>
  %i.xc = shufflevector <8 x i32> %i.xa, <8 x i32> %i.xb, <4 x i32> <i32 0, i32 12, i32 poison, i32 poison>
  %i.xd = bitcast <4 x i32> %i.xc to <2 x i64>
  %i.xe = extractelement <2 x i64> %i.xd, i64 0
  store i64 %i.xe, ptr %.4603826.us.i.epil.init, align 1, !tbaa !20
  %i.xf = getelementptr inbounds nuw i8, ptr %.4603826.us.i.epil.init, i64 8
  br label %._crit_edge830.us.i

._crit_edge830.us.i:                              ; preds = %._crit_edge830.us.i.unr-lcssa, %.epil.preheader249
  %.lcssa236 = phi ptr [ %i.wv, %._crit_edge830.us.i.unr-lcssa ], [ %i.xf, %.epil.preheader249 ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.1613832.us.i, i64 %9 ; 2 uses
  %i.xh = add nuw nsw i32 %.1597834.us.i, 2       ; 3 uses
  %i.xi = or disjoint i32 %i.xh, 1
  %i.xj = icmp slt i32 %i.xi, %2
  br i1 %i.xj, label %.lr.ph829.us.i, label %.preheader745.i, !llvm.loop !35

.preheader745.i:                                  ; preds = %._crit_edge830.us.i, %.preheader746.i
  %.1613.lcssa.i = phi ptr [ %.0612.lcssa.i, %.preheader746.i ], [ %i.xg, %._crit_edge830.us.i ] ; 5 uses
  %.3602.lcssa.i = phi ptr [ %.0599.lcssa.i, %.preheader746.i ], [ %.lcssa236, %._crit_edge830.us.i ]
  %.1597.lcssa.i = phi i32 [ %.0596.lcssa.i, %.preheader746.i ], [ %i.xh, %._crit_edge830.us.i ] ; 2 uses
  %i.xk = icmp sge i32 %.1597.lcssa.i, %2
  %brmerge945.i = or i1 %i.dx, %i.xk
  br i1 %brmerge945.i, label %._crit_edge851.split.i, label %.lr.ph845.i

.lr.ph845.i:                                      ; preds = %.preheader745.i, %._crit_edge846.i
  %.2598849.i = phi i32 [ %i.xs, %._crit_edge846.i ], [ %.1597.lcssa.i, %.preheader745.i ]
  %.5604848.i = phi ptr [ %.lcssa239, %._crit_edge846.i ], [ %.3602.lcssa.i, %.preheader745.i ] ; 2 uses
  br i1 %i.ee, label %.epil.preheader256, label %.lr.ph845.i.new

._crit_edge846.i.unr-lcssa:                       ; preds = %.lr.ph845.i.new
  br i1 %lcmp.mod258.not, label %._crit_edge846.i, label %.epil.preheader256

.epil.preheader256:                               ; preds = %._crit_edge846.i.unr-lcssa, %.lr.ph845.i
  %indvars.iv1050.i.epil.init = phi i64 [ 0, %.lr.ph845.i ], [ %indvars.iv.next1051.i.3, %._crit_edge846.i.unr-lcssa ]
  %.6605842.i.epil.init = phi ptr [ %.5604848.i, %.lr.ph845.i ], [ %i.yx, %._crit_edge846.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod260)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader256
  %indvars.iv1050.i.epil = phi i64 [ %indvars.iv1050.i.epil.init, %.epil.preheader256 ], [ %indvars.iv.next1051.i.epil, %bb.aa ] ; 2 uses
  %.6605842.i.epil = phi ptr [ %.6605842.i.epil.init, %.epil.preheader256 ], [ %i.xr, %bb.aa ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader256 ], [ %epil.iter.next, %bb.aa ]
  %i.xl = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i.epil
  %i.xm = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.xl, <4 x i32> %i.dw, <4 x i32> splat (i32 -1), i8 1)
  %i.xn = bitcast <4 x i32> %i.xm to <16 x i8>
  %i.xo = shufflevector <16 x i8> %i.xn, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xp = bitcast <16 x i8> %i.xo to <4 x float>
  %i.xq = extractelement <4 x float> %i.xp, i64 0
  store float %i.xq, ptr %.6605842.i.epil, align 1, !tbaa !20
  %i.xr = getelementptr inbounds nuw i8, ptr %.6605842.i.epil, i64 4 ; 2 uses
  %indvars.iv.next1051.i.epil = add nuw nsw i64 %indvars.iv1050.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter257
  br i1 %epil.iter.cmp.not, label %._crit_edge846.i, label %bb.aa, !llvm.loop !36

._crit_edge846.i:                                 ; preds = %bb.aa, %._crit_edge846.i.unr-lcssa
  %.lcssa239 = phi ptr [ %i.yx, %._crit_edge846.i.unr-lcssa ], [ %i.xr, %bb.aa ]
  %i.xs = add nuw nsw i32 %.2598849.i, 1          ; 2 uses
  %exitcond1055.not.i = icmp eq i32 %i.xs, %2
  br i1 %exitcond1055.not.i, label %._crit_edge851.split.i, label %.lr.ph845.i, !llvm.loop !38

.lr.ph845.i.new:                                  ; preds = %.lr.ph845.i, %.lr.ph845.i.new
  %indvars.iv1050.i = phi i64 [ %indvars.iv.next1051.i.3, %.lr.ph845.i.new ], [ 0, %.lr.ph845.i ] ; 5 uses
  %.6605842.i = phi ptr [ %i.yx, %.lr.ph845.i.new ], [ %.5604848.i, %.lr.ph845.i ] ; 5 uses
  %niter262 = phi i64 [ %niter262.next.3, %.lr.ph845.i.new ], [ 0, %.lr.ph845.i ]
  %i.xt = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i
  %i.xu = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.xt, <4 x i32> %i.dw, <4 x i32> splat (i32 -1), i8 1)
  %i.xv = bitcast <4 x i32> %i.xu to <16 x i8>
  %i.xw = shufflevector <16 x i8> %i.xv, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.xx = bitcast <16 x i8> %i.xw to <4 x float>
  %i.xy = extractelement <4 x float> %i.xx, i64 0
  store float %i.xy, ptr %.6605842.i, align 1, !tbaa !20
  %i.xz = getelementptr inbounds nuw i8, ptr %.6605842.i, i64 4
  %i.ya = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 1
  %i.yc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.yb, <4 x i32> %i.dw, <4 x i32> splat (i32 -1), i8 1)
  %i.yd = bitcast <4 x i32> %i.yc to <16 x i8>
  %i.ye = shufflevector <16 x i8> %i.yd, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yf = bitcast <16 x i8> %i.ye to <4 x float>
  %i.yg = extractelement <4 x float> %i.yf, i64 0
  store float %i.yg, ptr %i.xz, align 1, !tbaa !20
  %i.yh = getelementptr inbounds nuw i8, ptr %.6605842.i, i64 8
  %i.yi = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 2
  %i.yk = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.yj, <4 x i32> %i.dw, <4 x i32> splat (i32 -1), i8 1)
  %i.yl = bitcast <4 x i32> %i.yk to <16 x i8>
  %i.ym = shufflevector <16 x i8> %i.yl, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yn = bitcast <16 x i8> %i.ym to <4 x float>
  %i.yo = extractelement <4 x float> %i.yn, i64 0
  store float %i.yo, ptr %i.yh, align 1, !tbaa !20
  %i.yp = getelementptr inbounds nuw i8, ptr %.6605842.i, i64 12
  %i.yq = getelementptr inbounds nuw i8, ptr %.1613.lcssa.i, i64 %indvars.iv1050.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 3
  %i.ys = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr nonnull %i.yr, <4 x i32> %i.dw, <4 x i32> splat (i32 -1), i8 1)
  %i.yt = bitcast <4 x i32> %i.ys to <16 x i8>
  %i.yu = shufflevector <16 x i8> %i.yt, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yv = bitcast <16 x i8> %i.yu to <4 x float>
  %i.yw = extractelement <4 x float> %i.yv, i64 0
  store float %i.yw, ptr %i.yp, align 1, !tbaa !20
  %i.yx = getelementptr inbounds nuw i8, ptr %.6605842.i, i64 16 ; 3 uses
  %indvars.iv.next1051.i.3 = add nuw nsw i64 %indvars.iv1050.i, 4 ; 2 uses
  %niter262.next.3 = add i64 %niter262, 4         ; 2 uses
  %niter262.ncmp.3 = icmp eq i64 %niter262.next.3, %unroll_iter261
  br i1 %niter262.ncmp.3, label %._crit_edge846.i.unr-lcssa, label %.lr.ph845.i.new, !llvm.loop !39

._crit_edge851.split.i:                           ; preds = %._crit_edge846.i, %.preheader745.i, %.lr.ph835.i, %.preheader744.lr.ph.i
  %indvars.iv.next1059.i = add nuw nsw i64 %indvars.iv1058.i, 4 ; 3 uses
  %i.yy = icmp slt i64 %indvars.iv.next1059.i, %invariant.op.i
  %indvars.iv.next1057.i = add i32 %indvars.iv1056.i, 4
  br i1 %i.yy, label %_ZN4ncnn3MatD2Ev.exit649.i, label %.preheader743.loopexit.i, !llvm.loop !40

.preheader739.loopexit.i:                         ; preds = %._crit_edge899.split.i
  %i.yz = trunc nsw i64 %indvars.iv.next1089.i to i32
  br label %.preheader739.i

.preheader739.i:                                  ; preds = %.preheader739.loopexit.i, %.preheader743.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader743.i ], [ %i.yz, %.preheader739.loopexit.i ] ; 2 uses
  %i.za = icmp slt i32 %.2.lcssa.i, %3
  br i1 %i.za, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL40convolution_transform_kernel_packed_int8ERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader739.i
  %i.zb = mul i32 %i.a, %2
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ze = icmp sgt i32 %2, 7
  %i.zf = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.zg = shufflevector <8 x i32> %i.zf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zh = mul <8 x i32> %i.zg, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 3 uses
  %i.zi = icmp sgt i32 %i.a, 0                    ; 2 uses
  %i.zj = shl i32 %i.a, 3
  %i.zk = sext i32 %i.zj to i64
  %i.zl = sext i32 %i.a to i64                    ; 9 uses
  %i.zm = shl i32 %i.a, 1                         ; 2 uses
  %i.zn = sext i32 %i.zm to i64                   ; 2 uses
  %i.zo = icmp slt i32 %i.a, 1
  %i.zp = and i32 %2, -8
  %i.zq = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1115.i = sext i32 %3 to i64
  %wide.trip.count1098.i = zext i32 %i.a to i64   ; 21 uses
  %i.zr = shl nuw nsw i64 %wide.trip.count1098.i, 1
  %i.zs = add i32 %2, -2
  %xtraiter274 = and i64 %wide.trip.count1098.i, 1
  %i.zt = icmp eq i32 %i.a, 1
  %unroll_iter279 = and i64 %wide.trip.count1098.i, 2147483646
  %lcmp.mod276.not = icmp eq i64 %xtraiter274, 0
  %lcmp.mod278 = trunc i32 %i.a to i1
  %min.iters.check185 = icmp ult i32 %i.a, 8
  %stride.check183 = icmp slt i32 %i.zm, 0
  %min.iters.check187 = icmp ult i32 %i.a, 64
  %i.zu = and i64 %wide.trip.count1098.i, 56
  %n.vec189 = and i64 %wide.trip.count1098.i, 2147483584 ; 5 uses
  %i.zv = shl nuw nsw i64 %n.vec189, 1
  %cmp.n202 = icmp eq i64 %n.vec189, %wide.trip.count1098.i
  %min.epilog.iters.check207 = icmp eq i64 %i.zu, 0
  %n.vec209 = and i64 %wide.trip.count1098.i, 2147483640 ; 4 uses
  %i.zw = shl nuw nsw i64 %n.vec209, 1
  %cmp.n218 = icmp eq i64 %n.vec209, %wide.trip.count1098.i
  %xtraiter281 = and i64 %wide.trip.count1098.i, 3 ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  %min.iters.check139 = icmp ult i32 %i.a, 8
  %min.iters.check141 = icmp ult i32 %i.a, 128
  %i.zx = and i64 %wide.trip.count1098.i, 120
  %n.vec143 = and i64 %wide.trip.count1098.i, 2147483520 ; 5 uses
  %cmp.n153 = icmp eq i64 %n.vec143, %wide.trip.count1098.i
  %min.epilog.iters.check158 = icmp eq i64 %i.zx, 0
  %n.vec160 = and i64 %wide.trip.count1098.i, 2147483640 ; 4 uses
  %cmp.n167 = icmp eq i64 %n.vec160, %wide.trip.count1098.i
  %xtraiter284 = and i64 %wide.trip.count1098.i, 7 ; 2 uses
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit648.i:                       ; preds = %._crit_edge899.split.i, %_ZN4ncnn3MatD2Ev.exit648.lr.ph.i
  %indvars.iv1088.i = phi i64 [ %i.qr, %_ZN4ncnn3MatD2Ev.exit648.lr.ph.i ], [ %indvars.iv.next1089.i, %._crit_edge899.split.i ] ; 2 uses
  %i.zy = phi i32 [ %i.px, %_ZN4ncnn3MatD2Ev.exit648.lr.ph.i ], [ %i.aff, %._crit_edge899.split.i ]
  %i.zz = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.aaa = trunc i64 %indvars.iv1088.i to i32     ; 4 uses
  %i.aab = mul i32 %i.pz, %i.aaa
  %i.aac = sext i32 %i.aab to i64
  %i.aad = getelementptr inbounds i8, ptr %i.zz, i64 %i.aac ; 2 uses
  %i.aae = mul i32 %i.zy, %i.pz
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = getelementptr inbounds i8, ptr %i.zz, i64 %i.aaf ; 2 uses
  %i.aah = lshr i32 %i.aaa, 3
  %i.aai = lshr i32 %i.aaa, 2
  %i.aaj = and i32 %i.aai, 1
  %i.aak = add nuw nsw i32 %i.aaj, %i.aah
  %i.aal = lshr i32 %i.aaa, 1
  %i.aam = and i32 %i.aal, 1
  %i.aan = add nuw nsw i32 %i.aak, %i.aam
  %i.aao = load ptr, ptr %1, align 8, !tbaa !9, !noalias !41
  %i.aap = load i64, ptr %i.qa, align 8, !tbaa !18, !noalias !41
  %i.aaq = zext nneg i32 %i.aan to i64
  %i.aar = load i64, ptr %i.qb, align 8, !tbaa !19, !noalias !41
  %i.aas = mul i64 %i.aar, %i.aap
  %i.aat = mul i64 %i.aas, %i.aaq
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.aat ; 2 uses
  br i1 %i.qc, label %.lr.ph864.i, label %.preheader742.i

.lr.ph864.i:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit648.i
  br i1 %i.qg, label %.lr.ph857.us.i, label %._crit_edge899.split.i

.lr.ph857.us.i:                                   ; preds = %.lr.ph864.i, %._crit_edge858.us.i
  %.0573863.us.i = phi i32 [ %i.abp, %._crit_edge858.us.i ], [ 0, %.lr.ph864.i ]
  %.0576862.us.i = phi ptr [ %i.abm, %._crit_edge858.us.i ], [ %i.aau, %.lr.ph864.i ]
  %.0582861.us.i = phi ptr [ %i.abo, %._crit_edge858.us.i ], [ %i.aag, %.lr.ph864.i ] ; 2 uses
  %.0584860.us.i = phi ptr [ %i.abn, %._crit_edge858.us.i ], [ %i.aad, %.lr.ph864.i ] ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph857.us.i
  %indvars.iv1070.i = phi i64 [ 0, %.lr.ph857.us.i ], [ %indvars.iv.next1071.i, %bb.ab ] ; 3 uses
  %.1577854.us.i = phi ptr [ %.0576862.us.i, %.lr.ph857.us.i ], [ %i.abm, %bb.ab ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc2518.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10.0.i = phi ptr [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ak, %.noexc2518.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.04148.0.i = phi ptr [ %i.aj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.aj, %.noexc2518.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store ptr %.sroa.04148.0.i, ptr %i.g, align 8, !tbaa !97
  %i.ao = mul nsw i32 %i.m, %6
  %i.ap = mul nsw i32 %5, %3
  %i.aq = sub i32 %i.ao, %i.ap
  %i.ar = icmp sgt i32 %4, 0
  %i.as = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i, label %.preheader4312.i.preheader, label %._crit_edge4376.split.i

.preheader4312.i.preheader:                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.at = zext nneg i32 %3 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check598 = icmp ult i32 %3, 32
  %i.au = and i64 %i.at, 24
  %n.vec = and i64 %i.at, 2147483616              ; 5 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %i.aw = mul i32 %5, %i.av
  %i.ax = shl <8 x i32> %broadcast.splat, splat (i32 3) ; 5 uses
  %broadcast.splatinsert599 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat600 = shufflevector <8 x i32> %broadcast.splatinsert599, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ay = mul nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.op = add <8 x i32> %i.ax, %i.ax      ; 2 uses
  %invariant.op1332 = add <8 x i32> %invariant.op, %i.ax ; 2 uses
  %invariant.op1333 = add <8 x i32> %invariant.op1332, %i.ax
  %cmp.n = icmp eq i64 %n.vec, %i.at
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec604 = and i64 %i.at, 2147483640           ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec604 to i32
  %i.ba = mul i32 %5, %i.az
  %broadcast.splatinsert605 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat606 = shufflevector <8 x i32> %broadcast.splatinsert605, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat610 = shufflevector <8 x i32> %broadcast.splatinsert609, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bb = mul nsw <8 x i32> %broadcast.splat610, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bc = shl nsw i32 %5, 3
  %broadcast.splatinsert612 = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat613 = shufflevector <8 x i32> %broadcast.splatinsert612, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n618 = icmp eq i64 %n.vec604, %i.at
  br label %iter.check

iter.check:                                       ; preds = %.preheader4312.i.preheader, %._crit_edge.i
  %.015764375.i = phi i32 [ %i.be, %._crit_edge.i ], [ 0, %.preheader4312.i.preheader ] ; 2 uses
  %.015784374.i = phi i32 [ %i.ci, %._crit_edge.i ], [ 0, %.preheader4312.i.preheader ] ; 5 uses
  %.015994373.i = phi i32 [ %i.cj, %._crit_edge.i ], [ 0, %.preheader4312.i.preheader ]
  %i.bd = sext i32 %.015764375.i to i64           ; 5 uses
  %i.be = add i32 %.015764375.i, %3               ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check598, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = add nsw i64 %n.vec, %i.bd
  %i.bg = add i32 %.015784374.i, %i.aw            ; 3 uses
  %broadcast.splatinsert601 = insertelement <8 x i32> poison, i32 %.015784374.i, i64 0
  %broadcast.splat602 = shufflevector <8 x i32> %broadcast.splatinsert601, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat602, %i.ay
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.04148.0.i, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, %i.ax
  %step.add.2.reass = add <8 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <8 x i32> %vec.ind, %invariant.op1332
  %i.bh = mul nsw <8 x i32> %vec.ind, %broadcast.splat600
  %i.bi = mul nsw <8 x i32> %step.add, %broadcast.splat600
  %i.bj = mul nsw <8 x i32> %step.add.2.reass, %broadcast.splat600
  %i.bk = mul nsw <8 x i32> %step.add.3.reass, %broadcast.splat600
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %i.bh, ptr %gep, align 4, !tbaa !92
  store <8 x i32> %i.bi, ptr %i.bl, align 4, !tbaa !92
  store <8 x i32> %i.bj, ptr %i.bm, align 4, !tbaa !92
  store <8 x i32> %i.bk, ptr %i.bn, align 4, !tbaa !92
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <8 x i32> %vec.ind, %invariant.op1333
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !60

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val603 = phi i32 [ %i.bg, %vec.epilog.iter.check ], [ %.015784374.i, %vector.main.loop.iter.check ]
  %i.bp = add nsw i64 %n.vec604, %i.bd
  %i.bq = add i32 %.015784374.i, %i.ba            ; 2 uses
  %broadcast.splatinsert607 = insertelement <8 x i32> poison, i32 %bc.resume.val603, i64 0
  %broadcast.splat608 = shufflevector <8 x i32> %broadcast.splatinsert607, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction611 = add nsw <8 x i32> %broadcast.splat608, %i.bb
  %invariant.gep1334 = getelementptr [4 x i8], ptr %.sroa.04148.0.i, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index614 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next616, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind615 = phi <8 x i32> [ %induction611, %vec.epilog.ph ], [ %vec.ind.next617, %vec.epilog.vector.body ] ; 2 uses
  %i.br = mul nsw <8 x i32> %vec.ind615, %broadcast.splat606
  %gep1335 = getelementptr [4 x i8], ptr %invariant.gep1334, i64 %index614
  store <8 x i32> %i.br, ptr %gep1335, align 4, !tbaa !92
  %index.next616 = add nuw i64 %index614, 8       ; 2 uses
  %vec.ind.next617 = add nsw <8 x i32> %vec.ind615, %broadcast.splat613
  %i.bs = icmp eq i64 %index.next616, %n.vec604
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n618, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.115794370.i.ph = phi i32 [ %.015784374.i, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge4376.split.i:                          ; preds = %._crit_edge.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  store i32 0, ptr %i.i, align 4, !tbaa !92
  %i.bt = sdiv i32 %i.ae, 8
  store i32 %i.bt, ptr %i.h, align 4, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !100
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.bv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !92
  %i.bx = shl nsw i32 %i.bw, 3
  %i.by = load i32, ptr %i.i, align 4, !tbaa !92
  %i.bz = add nsw i32 %i.by, %i.bx                ; 3 uses
  store i32 %i.bz, ptr %i.i, align 4, !tbaa !92
  %i.ca = sub nsw i32 %i.ae, %i.bz                ; 2 uses
  %i.cb = sdiv i32 %i.ca, 4                       ; 2 uses
  store i32 %i.cb, ptr %i.h, align 4, !tbaa !92
  %i.cc = icmp sgt i32 %i.ca, 3
  br i1 %i.cc, label %.noexc1917.lr.ph.i, label %._crit_edge4678.i

.noexc1917.lr.ph.i:                               ; preds = %._crit_edge4376.split.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  br label %.noexc1917.i

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa597 = phi i32 [ %i.bq, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.cm, %vec.epilog.scalar.ph ]
  %i.ci = add nsw i32 %i.aq, %.lcssa597
  %i.cj = add nuw nsw i32 %.015994373.i, 1        ; 2 uses
  %exitcond5520.not.i = icmp eq i32 %i.cj, %4
  br i1 %exitcond5520.not.i, label %._crit_edge4376.split.i, label %iter.check, !llvm.loop !103

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.115794370.i = phi i32 [ %i.cm, %vec.epilog.scalar.ph ], [ %.115794370.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ck = mul nsw i32 %.115794370.i, %i.o
  %i.cl = getelementptr inbounds [4 x i8], ptr %.sroa.04148.0.i, i64 %indvars.iv.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !92
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cm = add nsw i32 %.115794370.i, %5           ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.be, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !104

._crit_edge4678.loopexit.i:                       ; preds = %._crit_edge4676.i
  %.pre5831.i = load i32, ptr %i.i, align 4, !tbaa !92
  br label %._crit_edge4678.i

._crit_edge4678.i:                                ; preds = %._crit_edge4678.loopexit.i, %._crit_edge4376.split.i
  %i.cn = phi i32 [ %i.bz, %._crit_edge4376.split.i ], [ %.pre5831.i, %._crit_edge4678.loopexit.i ]
  %.lcssa4368.i = phi i32 [ %i.cb, %._crit_edge4376.split.i ], [ %i.ari, %._crit_edge4678.loopexit.i ]
  %i.co = shl nsw i32 %.lcssa4368.i, 2
  %i.cp = add nsw i32 %i.co, %i.cn                ; 3 uses
  store i32 %i.cp, ptr %i.i, align 4, !tbaa !92
  %i.cq = sub nsw i32 %i.ae, %i.cp                ; 2 uses
  %i.cr = sdiv i32 %i.cq, 2                       ; 2 uses
  store i32 %i.cr, ptr %i.h, align 4, !tbaa !92
  %i.cs = icmp sgt i32 %i.cq, 1
  br i1 %i.cs, label %.noexc1915.lr.ph.i, label %._crit_edge5021.i

.noexc1915.lr.ph.i:                               ; preds = %._crit_edge4678.i
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  br label %.noexc1915.i

.noexc1917.i:                                     ; preds = %._crit_edge4676.i, %.noexc1917.lr.ph.i
  %.016214677.i = phi i32 [ 0, %.noexc1917.lr.ph.i ], [ %i.arh, %._crit_edge4676.i ] ; 2 uses
  %i.cy = load i32, ptr %i.i, align 4, !tbaa !92
  %i.cz = shl nuw nsw i32 %.016214677.i, 2
  %i.da = add nsw i32 %i.cy, %i.cz                ; 7 uses
  %i.db = load i32, ptr %i.w, align 4, !tbaa !93  ; 15 uses
  %i.dc = load i32, ptr %i.y, align 8, !tbaa !96
  %i.dd = load i64, ptr %i.s, align 8, !tbaa !18
  %i.de = load i32, ptr %i.c, align 4, !tbaa !92
  %i.df = sext i32 %i.de to i64
  %i.dg = mul i64 %i.dd, %i.df                    ; 12 uses
  %i.dh = load i64, ptr %i.cd, align 8, !tbaa !18 ; 2 uses
  %i.di = load i32, ptr %i.e, align 4, !tbaa !92  ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul i64 %i.dh, %i.dj                    ; 9 uses
  %i.dl = sdiv i32 %i.da, %i.di
  %i.dm = load ptr, ptr %1, align 8, !tbaa !9, !noalias !105
  %i.dn = sext i32 %i.dl to i64
  %i.do = mul i64 %i.dh, %i.dn
  %i.dp = load i64, ptr %i.ce, align 8, !tbaa !19, !noalias !105
  %i.dq = mul i64 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dq ; 2 uses
  %i.ds = mul nsw i32 %i.dc, %i.db                ; 6 uses
  %i.dt = icmp sgt i32 %i.ds, 3
  br i1 %i.dt, label %_ZN4ncnn3MatD2Ev.exit1992.lr.ph.i, label %.preheader4311.i

_ZN4ncnn3MatD2Ev.exit1992.lr.ph.i:                ; preds = %.noexc1917.i
  %i.du = sdiv i32 %i.da, 8
  %i.dv = srem i32 %i.da, 8
  %.lhs.trunc.i = trunc nsw i32 %i.dv to i8
  %i.dw = sdiv i8 %.lhs.trunc.i, 4
  %.sext.i = sext i8 %i.dw to i32
  %i.dx = add nsw i32 %i.du, %.sext.i
  %i.dy = sext i32 %i.dx to i64
  %i.dz = trunc i64 %i.dg to i32
  %i.ea = insertelement <8 x i32> poison, i32 %i.dz, i64 0
  %i.eb = shufflevector <8 x i32> %i.ea, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ec = mul <8 x i32> %i.eb, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %.idx4296.i = shl i64 %i.dk, 3
  %.idx4297.i = mul i64 %i.dk, 12
  %.pre5826.i = load i32, ptr %i.d, align 4, !tbaa !92
  %i.ed = load i32, ptr %i.c, align 4             ; 3 uses
  %i.ee = load i32, ptr %i.b, align 4             ; 4 uses
  %i.ef = load i32, ptr %i.a, align 4
  %i.eg = mul i32 %i.ef, %i.ed                    ; 4 uses
  %i.eh = load i32, ptr %i.f, align 4             ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  %i.ej = load ptr, ptr %i.g, align 8
  %i.ek = icmp eq i32 %i.ed, 8
  %i.el = add i32 %i.eh, -1
  %i.em = zext i32 %i.el to i64
  %i.en = shl nuw nsw i64 %i.em, 5
  %wide.trip.count.i = zext nneg i32 %i.eh to i64
  %i.eo = load i32, ptr %i.b, align 4             ; 4 uses
  %i.ep = load i32, ptr %i.a, align 4             ; 4 uses
  %i.eq = load i32, ptr %i.f, align 4             ; 3 uses
  %i.er = icmp sgt i32 %i.eq, 0
  %i.es = load ptr, ptr %i.g, align 8
  %i.et = add nsw i32 %i.eq, -1
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %wide.trip.count5531.i = zext nneg i32 %i.eq to i64
  %i.ew = load i32, ptr %i.b, align 4             ; 4 uses
  %i.ex = load i32, ptr %i.a, align 4             ; 4 uses
  %i.ey = load i32, ptr %i.f, align 4             ; 3 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  %i.fa = load ptr, ptr %i.g, align 8
  %i.fb = add nsw i32 %i.ey, -1
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 2
  %wide.trip.count5541.i = zext nneg i32 %i.ey to i64
  %i.fe = load i32, ptr %i.e, align 4, !tbaa !92
  %.pre.i = load i32, ptr %i.d, align 4
  br label %_ZN4ncnn3MatD2Ev.exit1992.i

.preheader4311.i:                                 ; preds = %bb.j, %.noexc1917.i
  %.01661.lcssa.i = phi i32 [ 0, %.noexc1917.i ], [ %i.vd, %bb.j ] ; 3 uses
  %.01650.lcssa.i = phi ptr [ %i.dr, %.noexc1917.i ], [ %.21652.i, %bb.j ] ; 2 uses
  %i.ff = or disjoint i32 %.01661.lcssa.i, 1      ; 2 uses
  %i.fg = icmp slt i32 %i.ff, %i.ds
  br i1 %i.fg, label %_ZN4ncnn3MatD2Ev.exit1979.lr.ph.i, label %.preheader4310.i

_ZN4ncnn3MatD2Ev.exit1979.lr.ph.i:                ; preds = %.preheader4311.i
  %i.fh = sdiv i32 %i.da, 8
  %i.fi = srem i32 %i.da, 8
  %.lhs.trunc4266.i = trunc nsw i32 %i.fi to i8
  %i.fj = sdiv i8 %.lhs.trunc4266.i, 4
  %.sext4267.i = sext i8 %i.fj to i32
  %i.fk = add nsw i32 %i.fh, %.sext4267.i
  %i.fl = sext i32 %i.fk to i64
  %i.fm = trunc i64 %i.dg to i32
  %i.fn = insertelement <8 x i32> poison, i32 %i.fm, i64 0
  %i.fo = shufflevector <8 x i32> %i.fn, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.fp = mul <8 x i32> %i.fo, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.idx4294.i = shl i64 %i.dk, 3
  %.idx4295.i = mul i64 %i.dk, 12
  %.pre5828.i = load i32, ptr %i.d, align 4, !tbaa !92
  %i.fq = load i32, ptr %i.c, align 4             ; 3 uses
  %i.fr = load i32, ptr %i.b, align 4             ; 2 uses
  %i.fs = load i32, ptr %i.a, align 4
  %i.ft = mul i32 %i.fs, %i.fq                    ; 2 uses
  %i.fu = load i32, ptr %i.f, align 4             ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 0
  %i.fw = add i32 %i.fu, -1
  %i.fx = zext i32 %i.fw to i64
  %i.fy = shl nuw nsw i64 %i.fx, 5                ; 2 uses
  %wide.trip.count5551.i = zext nneg i32 %i.fu to i64 ; 2 uses
  %i.fz = icmp eq i32 %i.fq, 8
  %i.ga = load i32, ptr %i.b, align 4             ; 2 uses
  %i.gb = load i32, ptr %i.a, align 4             ; 2 uses
  %i.gc = load i32, ptr %i.f, align 4             ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  %i.ge = add nsw i32 %i.gc, -1
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, 3
  %wide.trip.count5565.i = zext nneg i32 %i.gc to i64
  %i.gh = load i32, ptr %i.b, align 4             ; 2 uses
  %i.gi = load i32, ptr %i.a, align 4             ; 2 uses
  %i.gj = load i32, ptr %i.f, align 4             ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  %i.gl = add nsw i32 %i.gj, -1
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gm, 2
  %wide.trip.count5575.i = zext nneg i32 %i.gj to i64
  %i.go = load i32, ptr %i.e, align 4, !tbaa !92
  %.pre5827.i = load i32, ptr %i.d, align 4
  br label %_ZN4ncnn3MatD2Ev.exit1979.i

_ZN4ncnn3MatD2Ev.exit1992.i:                      ; preds = %bb.j, %_ZN4ncnn3MatD2Ev.exit1992.lr.ph.i
  %i.gp = phi i32 [ %.pre5826.i, %_ZN4ncnn3MatD2Ev.exit1992.lr.ph.i ], [ %i.vc, %bb.j ] ; 10 uses
  %.016504502.i = phi ptr [ %i.dr, %_ZN4ncnn3MatD2Ev.exit1992.lr.ph.i ], [ %.21652.i, %bb.j ] ; 11 uses
  %.016614501.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1992.lr.ph.i ], [ %i.vd, %bb.j ] ; 6 uses
  %i.gq = or disjoint i32 %.016614501.i, 3        ; 2 uses
  %i.gr = sdiv i32 %.016614501.i, %i.db           ; 3 uses
  %i.gs = or disjoint i32 %.016614501.i, 1        ; 2 uses
  %i.gt = sdiv i32 %i.gs, %i.db                   ; 3 uses
  %i.gu = or disjoint i32 %.016614501.i, 2        ; 2 uses
  %i.gv = sdiv i32 %i.gu, %i.db                   ; 3 uses
  %i.gw = sdiv i32 %i.gq, %i.db                   ; 3 uses
  %i.gx = srem i32 %.016614501.i, %i.db           ; 3 uses
  %i.gy = srem i32 %i.gs, %i.db                   ; 3 uses
  %i.gz = srem i32 %i.gu, %i.db                   ; 3 uses
  %i.ha = srem i32 %i.gq, %i.db                   ; 3 uses
  %i.hb = load ptr, ptr %2, align 8, !tbaa !9, !noalias !108
  %i.hc = load i64, ptr %i.cf, align 8, !tbaa !18, !noalias !108
  %i.hd = mul i64 %i.hc, %i.dy
  %i.he = load i64, ptr %i.cg, align 8, !tbaa !19, !noalias !108
  %i.hf = mul i64 %i.hd, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.hf ; 3 uses
  %i.hh = icmp sgt i32 %i.gp, 7
  br i1 %i.hh, label %_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i, label %._crit_edge4395.i

_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i:                ; preds = %_ZN4ncnn3MatD2Ev.exit1992.i
  %i.hi = load i32, ptr %i.l, align 4, !tbaa !93, !noalias !111
  %i.hj = load ptr, ptr %0, align 8, !tbaa !9, !noalias !111 ; 4 uses
  %i.hk = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !111
  %i.hl = load i64, ptr %i.ch, align 8, !tbaa !19, !noalias !111 ; 2 uses
  %factor.op.mul.i = mul i64 %i.hl, %i.hk
  %i.hm = sext i32 %i.hi to i64
  %i.hn = mul nsw i32 %i.ee, %i.gr
  %i.ho = sext i32 %i.hn to i64
  %i.hp = mul i64 %i.hl, %i.hm                    ; 4 uses
  %i.hq = mul i64 %i.hp, %i.ho
  %invariant.gep.i = getelementptr i8, ptr %i.hj, i64 %i.hq
  %i.hr = mul i32 %i.eg, %i.gx
  %i.hs = sext i32 %i.hr to i64
  %invariant.gep4402.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.hs
  %i.ht = mul nsw i32 %i.ee, %i.gt
  %i.hu = sext i32 %i.ht to i64
  %i.hv = mul i64 %i.hp, %i.hu
  %invariant.gep4406.i = getelementptr i8, ptr %i.hj, i64 %i.hv
  %i.hw = mul i32 %i.eg, %i.gy
  %i.hx = sext i32 %i.hw to i64
  %invariant.gep4407.i = getelementptr i8, ptr %invariant.gep4406.i, i64 %i.hx
  %i.hy = mul nsw i32 %i.ee, %i.gv
  %i.hz = sext i32 %i.hy to i64
  %i.ia = mul i64 %i.hp, %i.hz
  %invariant.gep4411.i = getelementptr i8, ptr %i.hj, i64 %i.ia
  %i.ib = mul i32 %i.eg, %i.gz
  %i.ic = sext i32 %i.ib to i64
  %invariant.gep4412.i = getelementptr i8, ptr %invariant.gep4411.i, i64 %i.ic
  %i.id = mul nsw i32 %i.ee, %i.gw
  %i.ie = sext i32 %i.id to i64
  %i.if = mul i64 %i.hp, %i.ie
  %invariant.gep4416.i = getelementptr i8, ptr %i.hj, i64 %i.if
  %i.ig = mul i32 %i.eg, %i.ha
  %i.ih = sext i32 %i.ig to i64
  %invariant.gep4417.i = getelementptr i8, ptr %invariant.gep4416.i, i64 %i.ih
  br i1 %i.ei, label %_ZN4ncnn3MatD2Ev.exit1991.i.us, label %._crit_edge4395.loopexit.i

_ZN4ncnn3MatD2Ev.exit1991.i.us:                   ; preds = %_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i, %._crit_edge4383.loopexit.i.us
  %.016864394.i.us = phi ptr [ %scevgep5523.i.us, %._crit_edge4383.loopexit.i.us ], [ %i.hg, %_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i ] ; 2 uses
  %.017024393.i.us = phi i32 [ %i.mr, %._crit_edge4383.loopexit.i.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i ] ; 2 uses
  %i.ii = phi <8 x i32> [ %i.md, %._crit_edge4383.loopexit.i.us ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i ]
  %i.ij = phi <8 x i32> [ %i.mh, %._crit_edge4383.loopexit.i.us ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i ]
  %i.ik = phi <8 x i32> [ %i.ml, %._crit_edge4383.loopexit.i.us ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i ]
  %i.il = phi <8 x i32> [ %i.mp, %._crit_edge4383.loopexit.i.us ], [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1991.lr.ph.i ]
  %i.im = sdiv i32 %.017024393.i.us, %i.ed
  %i.in = sext i32 %i.im to i64
  %.reass.i.us = mul i64 %factor.op.mul.i, %i.in  ; 4 uses
  %gep4403.i.us = getelementptr i8, ptr %invariant.gep4402.i, i64 %.reass.i.us
  %gep4408.i.us = getelementptr i8, ptr %invariant.gep4407.i, i64 %.reass.i.us
  %gep4413.i.us = getelementptr i8, ptr %invariant.gep4412.i, i64 %.reass.i.us
  %gep4418.i.us = getelementptr i8, ptr %invariant.gep4417.i, i64 %.reass.i.us
end_hunk_2
begin_hunk_3_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !482 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dl, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !483 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !9    ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !484
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !486

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dp, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dp) #8
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #23
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.dv = add nsw i32 %.069, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.069, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #23
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !92     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %i.g, ptr %i.b, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 1, ptr %i.c, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !tbaa !92
  %i.h = load i32, ptr %0, align 4, !tbaa !92     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !92
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !92
  %i.k = load i32, ptr %i.a, align 4, !tbaa !92   ; 2 uses
  %.not152 = icmp sgt i32 %i.k, %i.j
  br i1 %.not152, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph155, %_ZN4ncnn3MatD2Ev.exit
  %.045153 = phi i32 [ %i.k, %.lr.ph155 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !92
  %i.at = mul nsw i32 %i.as, %.045153             ; 5 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.au

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !9, !noalias !545
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !545
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !545
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 5 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !92
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !92
  %.sroa.speculated119 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 10 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !92    ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.bh = icmp sgt i32 %.sroa.speculated119, 7
  %i.bi = and i32 %.sroa.speculated119, 2147483640
  %i.bj = zext nneg i32 %.sroa.speculated119 to i64
  %i.bk = sext i32 %.sroa.speculated119 to i64    ; 3 uses
  %invariant.op.i = add nsw i64 %i.bk, -3
  %i.bl = sext i32 %i.at to i64                   ; 2 uses
  %invariant.op736.i = add nsw i64 %i.bk, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !92
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.bm = add nsw i32 %.045153, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.045153, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge156

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.yz, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.zb, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044151 = phi i32 [ 0, %.lr.ph ], [ %i.za, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 7 uses
  %i.bq = sub nsw i32 %i.bp, %.044151
  %.sroa.speculated115 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 24 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !92    ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre158 = load i32, ptr %9, align 4, !tbaa !92
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !93 ; 9 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !96 ; 9 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !94 ; 11 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 16 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = sdiv i32 %i.bz, 2                       ; 8 uses
  %factor.op.mul576.i = shl i32 %.sroa.speculated115, 4 ; 6 uses
  br i1 %i.bh, label %.lr.ph579.i, label %.preheader567.i

.lr.ph579.i:                                      ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %.sroa.speculated115, 0
  %i.cc = shl nuw nsw i32 %.sroa.speculated115, 3
  %15 = zext nneg i32 %i.cc to i64
  %16 = zext nneg i32 %factor.op.mul576.i to i64
  %i.cd = mul nuw nsw i32 %.sroa.speculated115, 24
  %17 = zext nneg i32 %i.cd to i64
  %i.ce = shl nuw nsw i32 %.sroa.speculated115, 5
  %18 = zext nneg i32 %i.ce to i64                ; 12 uses
  %.idx458.i = shl i64 %i.by, 3                   ; 2 uses
  %.idx459.i = mul i64 %i.by, 12                  ; 2 uses
  %.idx460.i = shl i64 %i.by, 4                   ; 2 uses
  %.idx461.i = mul i64 %i.by, 20                  ; 2 uses
  %.idx462.i = mul i64 %i.by, 24                  ; 2 uses
  %.idx463.i = mul i64 %i.by, 28                  ; 2 uses
  %i.cf = mul nsw i32 %i.bv, %i.bt
  %i.cg = sext i32 %i.cf to i64
  br i1 %i.cb, label %.lr.ph.us.preheader.i, label %.preheader567.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph579.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv649.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next650.i, %._crit_edge.us.i ] ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv649.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul576.i, %i.ch
  %i.ci = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cj = add i32 %i.at, %i.ch
  %i.ck = sdiv i32 %i.cj, %i.bv
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ci
  br label %_ZN4ncnn3MatD2Ev.exit469.us.i

_ZN4ncnn3MatD2Ev.exit469.us.i:                    ; preds = %bb.u, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.u ] ; 3 uses
  %.idx733.i = shl nuw nsw i64 %indvars.iv.i, 5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx733.i ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %15 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %16 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %17 ; 2 uses
  %i.cr = load <8 x i32>, ptr %i.co, align 32, !tbaa !20 ; 2 uses
  %i.cs = load <8 x i32>, ptr %i.cp, align 32, !tbaa !20 ; 2 uses
  %i.ct = load <8 x i32>, ptr %i.cq, align 32, !tbaa !20
  %i.cu = sub <8 x i32> %i.cr, %i.cs
  %i.cv = add <8 x i32> %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %18 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %18 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %18 ; 2 uses
  %i.cz = load <8 x i32>, ptr %i.cw, align 32, !tbaa !20 ; 2 uses
  %i.da = load <8 x i32>, ptr %i.cx, align 32, !tbaa !20 ; 2 uses
  %i.db = load <8 x i32>, ptr %i.cy, align 32, !tbaa !20
  %i.dc = sub <8 x i32> %i.cz, %i.da
  %i.dd = add <8 x i32> %i.dc, %i.db              ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %18 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %18 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %18 ; 2 uses
  %i.dh = load <8 x i32>, ptr %i.de, align 32, !tbaa !20 ; 2 uses
  %i.di = load <8 x i32>, ptr %i.df, align 32, !tbaa !20 ; 2 uses
  %i.dj = load <8 x i32>, ptr %i.dg, align 32, !tbaa !20
  %i.dk = sub <8 x i32> %i.dh, %i.di
  %i.dl = add <8 x i32> %i.dk, %i.dj              ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %18
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %18
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %18
  %i.dp = load <8 x i32>, ptr %i.dm, align 32, !tbaa !20 ; 2 uses
  %i.dq = load <8 x i32>, ptr %i.dn, align 32, !tbaa !20 ; 2 uses
  %i.dr = load <8 x i32>, ptr %i.do, align 32, !tbaa !20
  %i.ds = trunc i64 %indvars.iv.i to i32
  %i.dt = add i32 %.044151, %i.ds                 ; 2 uses
  %i.du = sdiv i32 %i.dt, %i.ca
  %i.dv = srem i32 %i.dt, %i.ca
  %i.dw = load i32, ptr %i.an, align 4, !tbaa !93, !noalias !548
  %i.dx = load ptr, ptr %12, align 8, !tbaa !9, !noalias !548
  %i.dy = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !548
  %i.dz = mul i64 %i.dy, %i.cl
  %i.ea = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !548 ; 2 uses
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb
  %i.ed = sext i32 %i.dw to i64
  %i.ee = shl nsw i32 %i.du, 1                    ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = mul nsw i64 %i.ed, %i.ef
  %i.eh = mul i64 %i.eg, %i.ea
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eh
  %i.ej = shl nsw i32 %i.dv, 1                    ; 2 uses
  %i.ek = mul nsw i32 %i.ej, %i.bv
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.el ; 16 uses
  %i.en = or disjoint i32 %i.ej, 1
  %i.eo = icmp slt i32 %i.en, %i.bt               ; 6 uses
  %.not457.us.i = icmp slt i32 %i.ee, %i.bu
  br i1 %.not457.us.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit469.us.i
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %18 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %18 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %18
  %i.es = load <8 x i32>, ptr %i.er, align 32, !tbaa !20
  %i.et = load <8 x i32>, ptr %i.eq, align 32, !tbaa !20
  %i.eu = add <8 x i32> %i.di, %i.dh
  %i.ev = add <8 x i32> %i.eu, %i.et              ; 2 uses
  %i.ew = load <8 x i32>, ptr %i.ep, align 32, !tbaa !20
  %i.ex = add <8 x i32> %i.da, %i.cz
  %i.ey = add <8 x i32> %i.ex, %i.ew              ; 2 uses
  %i.ez = load <8 x i32>, ptr %i.cn, align 32, !tbaa !20
  %i.fa = add <8 x i32> %i.cs, %i.cr
  %i.fb = add <8 x i32> %i.fa, %i.ez
  %i.fc = add <8 x i32> %i.fb, %i.ev
  %i.fd = add <8 x i32> %i.fc, %i.ey
  %i.fe = add <8 x i32> %i.dq, %i.dp
  %i.ff = add <8 x i32> %i.fe, %i.es
  %i.fg = sub <8 x i32> %i.ff, %i.ev
  %i.fh = add <8 x i32> %i.fg, %i.ey
  %i.fi = ashr <8 x i32> %i.fd, splat (i32 2)     ; 10 uses
  %i.fj = ashr <8 x i32> %i.fh, splat (i32 2)     ; 10 uses
  %i.fk = bitcast <8 x i32> %i.fj to <4 x i64>    ; 2 uses
  switch i32 %i.bv, label %bb.l [
    i32 8, label %bb.j
    i32 4, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.by ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx458.i ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx459.i ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx460.i ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx461.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx462.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx463.i ; 2 uses
  %.sroa.0536.0.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 0
  store i32 %.sroa.0536.0.vec.extract.us.i, ptr %i.em, align 4, !tbaa !92
  %.sroa.0536.4.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 1
  store i32 %.sroa.0536.4.vec.extract.us.i, ptr %i.fl, align 4, !tbaa !92
  %.sroa.0536.8.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 2
  store i32 %.sroa.0536.8.vec.extract.us.i, ptr %i.fm, align 4, !tbaa !92
  %.sroa.0536.12.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 3
  store i32 %.sroa.0536.12.vec.extract.us.i, ptr %i.fn, align 4, !tbaa !92
  %.sroa.0536.16.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 4
  store i32 %.sroa.0536.16.vec.extract.us.i, ptr %i.fo, align 4, !tbaa !92
  %.sroa.0536.20.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 5
  store i32 %.sroa.0536.20.vec.extract.us.i, ptr %i.fp, align 4, !tbaa !92
  %.sroa.0536.24.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 6
  store i32 %.sroa.0536.24.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !92
  %.sroa.0536.28.vec.extract.us.i = extractelement <8 x i32> %i.fi, i64 7
  store i32 %.sroa.0536.28.vec.extract.us.i, ptr %i.fr, align 4, !tbaa !92
  br i1 %i.eo, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %.sroa.11.32.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %.sroa.11.32.vec.extract.us.i, ptr %i.fs, align 4, !tbaa !92
  %.sroa.11.36.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %.sroa.11.36.vec.extract.us.i, ptr %i.ft, align 4, !tbaa !92
  %.sroa.11.40.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 %.sroa.11.40.vec.extract.us.i, ptr %i.fu, align 4, !tbaa !92
  %.sroa.11.44.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 %.sroa.11.44.vec.extract.us.i, ptr %i.fv, align 4, !tbaa !92
  %.sroa.11.48.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %.sroa.11.48.vec.extract.us.i, ptr %i.fw, align 4, !tbaa !92
  %.sroa.11.52.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %.sroa.11.52.vec.extract.us.i, ptr %i.fx, align 4, !tbaa !92
  %.sroa.11.56.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 6
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %.sroa.11.56.vec.extract.us.i, ptr %i.fy, align 4, !tbaa !92
  %.sroa.11.60.vec.extract.us.i = extractelement <8 x i32> %i.fj, i64 7
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %.sroa.11.60.vec.extract.us.i, ptr %i.fz, align 4, !tbaa !92
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.ga = bitcast <8 x i32> %i.fi to <4 x i64>    ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.by ; 2 uses
  %i.gc = shufflevector <4 x i64> %i.ga, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.gc, ptr %i.em, align 16, !tbaa !20
  %i.gd = shufflevector <4 x i64> %i.ga, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.gd, ptr %i.gb, align 16, !tbaa !20
  br i1 %i.eo, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ge = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.gf = shufflevector <4 x i64> %i.fk, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.gf, ptr %i.ge, align 16, !tbaa !20
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gh = shufflevector <4 x i64> %i.fk, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.gh, ptr %i.gg, align 16, !tbaa !20
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  store <8 x i32> %i.fi, ptr %i.em, align 32, !tbaa !20
  br i1 %i.eo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.gi = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store <8 x i32> %i.fj, ptr %i.gi, align 32, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.cg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4ncnn3MatD2Ev.exit469.us.i
  %.1443.us.i = phi ptr [ %i.em, %_ZN4ncnn3MatD2Ev.exit469.us.i ], [ %i.gj, %bb.l ] ; 14 uses
  %i.gk = or disjoint i32 %i.ee, 1
  %.not457.us.1.i = icmp slt i32 %i.gk, %i.bu
  br i1 %.not457.us.1.i, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.gl = add <8 x i32> %i.cv, %i.dd
  %i.gm = add <8 x i32> %i.gl, %i.dl
  %i.gn = add <8 x i32> %i.dd, %i.dp
  %i.go = add <8 x i32> %i.dl, %i.dq
  %i.gp = sub <8 x i32> %i.gn, %i.go
  %i.gq = add <8 x i32> %i.gp, %i.dr
  %i.gr = ashr <8 x i32> %i.gm, splat (i32 2)     ; 10 uses
  %i.gs = ashr <8 x i32> %i.gq, splat (i32 2)     ; 10 uses
  %i.gt = bitcast <8 x i32> %i.gs to <4 x i64>    ; 2 uses
  switch i32 %i.bv, label %bb.u [
    i32 8, label %bb.s
    i32 4, label %bb.q
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.1443.us.i, i64 %i.by ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx458.i ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx459.i ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx460.i ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx461.i ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx462.i ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 %.idx463.i ; 2 uses
  %.sroa.0536.0.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 0
  store i32 %.sroa.0536.0.vec.extract.us.1.i, ptr %.1443.us.i, align 4, !tbaa !92
  %.sroa.0536.4.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 1
  store i32 %.sroa.0536.4.vec.extract.us.1.i, ptr %i.gu, align 4, !tbaa !92
  %.sroa.0536.8.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 2
  store i32 %.sroa.0536.8.vec.extract.us.1.i, ptr %i.gv, align 4, !tbaa !92
  %.sroa.0536.12.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 3
  store i32 %.sroa.0536.12.vec.extract.us.1.i, ptr %i.gw, align 4, !tbaa !92
  %.sroa.0536.16.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 4
  store i32 %.sroa.0536.16.vec.extract.us.1.i, ptr %i.gx, align 4, !tbaa !92
  %.sroa.0536.20.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 5
  store i32 %.sroa.0536.20.vec.extract.us.1.i, ptr %i.gy, align 4, !tbaa !92
  %.sroa.0536.24.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 6
  store i32 %.sroa.0536.24.vec.extract.us.1.i, ptr %i.gz, align 4, !tbaa !92
  %.sroa.0536.28.vec.extract.us.1.i = extractelement <8 x i32> %i.gr, i64 7
  store i32 %.sroa.0536.28.vec.extract.us.1.i, ptr %i.ha, align 4, !tbaa !92
  br i1 %i.eo, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.sroa.11.32.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 0
  %i.hb = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 4
  store i32 %.sroa.11.32.vec.extract.us.1.i, ptr %i.hb, align 4, !tbaa !92
  %.sroa.11.36.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %.sroa.11.36.vec.extract.us.1.i, ptr %i.hc, align 4, !tbaa !92
  %.sroa.11.40.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 2
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i32 %.sroa.11.40.vec.extract.us.1.i, ptr %i.hd, align 4, !tbaa !92
  %.sroa.11.44.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %.sroa.11.44.vec.extract.us.1.i, ptr %i.he, align 4, !tbaa !92
  %.sroa.11.48.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store i32 %.sroa.11.48.vec.extract.us.1.i, ptr %i.hf, align 4, !tbaa !92
  %.sroa.11.52.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store i32 %.sroa.11.52.vec.extract.us.1.i, ptr %i.hg, align 4, !tbaa !92
  %.sroa.11.56.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  store i32 %.sroa.11.56.vec.extract.us.1.i, ptr %i.hh, align 4, !tbaa !92
  %.sroa.11.60.vec.extract.us.1.i = extractelement <8 x i32> %i.gs, i64 7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %.sroa.11.60.vec.extract.us.1.i, ptr %i.hi, align 4, !tbaa !92
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  %i.hj = bitcast <8 x i32> %i.gr to <4 x i64>    ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.1443.us.i, i64 %i.by ; 2 uses
  %i.hl = shufflevector <4 x i64> %i.hj, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.hl, ptr %.1443.us.i, align 16, !tbaa !20
  %i.hm = shufflevector <4 x i64> %i.hj, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.hm, ptr %i.hk, align 16, !tbaa !20
  br i1 %i.eo, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hn = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 16
  %i.ho = shufflevector <4 x i64> %i.gt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ho, ptr %i.hn, align 16, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hq = shufflevector <4 x i64> %i.gt, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.hq, ptr %i.hp, align 16, !tbaa !20
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  store <8 x i32> %i.gr, ptr %.1443.us.i, align 32, !tbaa !20
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hr = getelementptr inbounds nuw i8, ptr %.1443.us.i, i64 32
  store <8 x i32> %i.gs, ptr %i.hr, align 32, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit469.us.i, !llvm.loop !551

._crit_edge.us.i:                                 ; preds = %bb.u
  %indvars.iv.next650.i = add nuw nsw i64 %indvars.iv649.i, 8 ; 3 uses
  %i.hs = or disjoint i64 %indvars.iv.next650.i, 7
  %i.ht = icmp samesign ult i64 %i.hs, %i.bj
  br i1 %i.ht, label %.lr.ph.us.i, label %.preheader567.loopexit.i, !llvm.loop !552

.preheader567.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.hu = trunc nuw nsw i64 %indvars.iv.next650.i to i32
  br label %.preheader567.i

.preheader567.i:                                  ; preds = %.lr.ph579.i, %.preheader567.loopexit.i, %._crit_edge
  %.0433.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.hu, %.preheader567.loopexit.i ], [ %i.bi, %.lr.ph579.i ] ; 6 uses
  %i.hv = or disjoint i32 %.0433.lcssa.i, 3
  %i.hw = icmp slt i32 %i.hv, %.sroa.speculated119
  br i1 %i.hw, label %.lr.ph590.i, label %.preheader566.i

.lr.ph590.i:                                      ; preds = %.preheader567.i
  %i.hx = icmp sgt i32 %.sroa.speculated115, 0
  %i.hy = shl nuw nsw i32 %.sroa.speculated115, 2
  %19 = zext nneg i32 %i.hy to i64
  %i.hz = shl nuw nsw i32 %.sroa.speculated115, 3
  %20 = zext nneg i32 %i.hz to i64
  %i.ia = mul nuw nsw i32 %.sroa.speculated115, 12
  %21 = zext nneg i32 %i.ia to i64
  %22 = zext nneg i32 %factor.op.mul576.i to i64  ; 12 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  %.idx456.i = mul i64 %i.by, 12                  ; 2 uses
  %i.ib = mul nsw i32 %i.bv, %i.bt
  %i.ic = sext i32 %i.ib to i64
  br i1 %i.hx, label %.lr.ph.us593.preheader.i, label %.lr.ph590.split.preheader.i

.lr.ph590.split.preheader.i:                      ; preds = %.lr.ph590.i
  %i.id = add i32 %.0433.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated119, i32 %i.id)
  %reass.sub = sub i32 %smax.i, %.0433.lcssa.i
  %i.ie = and i32 %reass.sub, -4
  %i.if = add i32 %.0433.lcssa.i, %i.ie
  br label %.preheader566.i

.lr.ph.us593.preheader.i:                         ; preds = %.lr.ph590.i
  %i.ig = sext i32 %.0433.lcssa.i to i64
  %wide.trip.count662.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us593.i

.lr.ph.us593.i:                                   ; preds = %._crit_edge.us594.i, %.lr.ph.us593.preheader.i
  %indvars.iv664.i = phi i64 [ %i.ig, %.lr.ph.us593.preheader.i ], [ %indvars.iv.next665.i, %._crit_edge.us594.i ] ; 2 uses
  %i.ih = trunc nsw i64 %indvars.iv664.i to i32   ; 2 uses
  %factor.op.mul.reass.us592.i = mul i32 %factor.op.mul576.i, %i.ih
  %i.ii = sext i32 %factor.op.mul.reass.us592.i to i64
  %i.ij = add i32 %i.at, %i.ih
  %i.ik = sdiv i32 %i.ij, %i.bv
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ii
  br label %_ZN4ncnn3MatD2Ev.exit468.us.i

_ZN4ncnn3MatD2Ev.exit468.us.i:                    ; preds = %bb.ah, %.lr.ph.us593.i
  %indvars.iv659.i = phi i64 [ 0, %.lr.ph.us593.i ], [ %indvars.iv.next660.i, %bb.ah ] ; 3 uses
  %.idx734.i = shl nuw nsw i64 %indvars.iv659.i, 4
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %.idx734.i ; 5 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %19 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %20 ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %21 ; 2 uses
  %i.ir = load <4 x i32>, ptr %i.io, align 16, !tbaa !20 ; 2 uses
  %i.is = load <4 x i32>, ptr %i.ip, align 16, !tbaa !20 ; 2 uses
  %i.it = load <4 x i32>, ptr %i.iq, align 16, !tbaa !20
  %i.iu = sub <4 x i32> %i.ir, %i.is
  %i.iv = add <4 x i32> %i.iu, %i.it
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %22 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %22 ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %22 ; 2 uses
  %i.iz = load <4 x i32>, ptr %i.iw, align 16, !tbaa !20 ; 2 uses
  %i.ja = load <4 x i32>, ptr %i.ix, align 16, !tbaa !20 ; 2 uses
  %i.jb = load <4 x i32>, ptr %i.iy, align 16, !tbaa !20
  %i.jc = sub <4 x i32> %i.iz, %i.ja
  %i.jd = add <4 x i32> %i.jc, %i.jb              ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %22 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %22 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %22 ; 2 uses
  %i.jh = load <4 x i32>, ptr %i.je, align 16, !tbaa !20 ; 2 uses
  %i.ji = load <4 x i32>, ptr %i.jf, align 16, !tbaa !20 ; 2 uses
  %i.jj = load <4 x i32>, ptr %i.jg, align 16, !tbaa !20
  %i.jk = sub <4 x i32> %i.jh, %i.ji
  %i.jl = add <4 x i32> %i.jk, %i.jj              ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %22
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %22
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %22
  %i.jp = load <4 x i32>, ptr %i.jm, align 16, !tbaa !20 ; 2 uses
  %i.jq = load <4 x i32>, ptr %i.jn, align 16, !tbaa !20 ; 2 uses
  %i.jr = load <4 x i32>, ptr %i.jo, align 16, !tbaa !20
  %i.js = trunc i64 %indvars.iv659.i to i32
  %i.jt = add i32 %.044151, %i.js                 ; 2 uses
  %i.ju = sdiv i32 %i.jt, %i.ca
  %i.jv = srem i32 %i.jt, %i.ca
  %i.jw = load i32, ptr %i.an, align 4, !tbaa !93, !noalias !553
  %i.jx = load ptr, ptr %12, align 8, !tbaa !9, !noalias !553
  %i.jy = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !553
  %i.jz = mul i64 %i.jy, %i.il
  %i.ka = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !553 ; 2 uses
  %i.kb = mul i64 %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.kb
  %i.kd = sext i32 %i.jw to i64
  %i.ke = shl nsw i32 %i.ju, 1                    ; 3 uses
  %i.kf = sext i32 %i.ke to i64
  %i.kg = mul nsw i64 %i.kd, %i.kf
  %i.kh = mul i64 %i.kg, %i.ka
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kh
  %i.kj = shl nsw i32 %i.jv, 1                    ; 2 uses
  %i.kk = mul nsw i32 %i.kj, %i.bv
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.kl ; 9 uses
  %i.kn = or disjoint i32 %i.kj, 1
  %i.ko = icmp slt i32 %i.kn, %i.bt               ; 4 uses
  %.not455.us.i = icmp slt i32 %i.ke, %i.bu
  br i1 %.not455.us.i, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit468.us.i
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %22 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %22 ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %22
  %i.ks = load <4 x i32>, ptr %i.kr, align 16, !tbaa !20
  %i.kt = load <4 x i32>, ptr %i.kq, align 16, !tbaa !20
  %i.ku = add <4 x i32> %i.ji, %i.jh
  %i.kv = add <4 x i32> %i.ku, %i.kt              ; 2 uses
  %i.kw = load <4 x i32>, ptr %i.kp, align 16, !tbaa !20
  %i.kx = add <4 x i32> %i.ja, %i.iz
  %i.ky = add <4 x i32> %i.kx, %i.kw              ; 2 uses
  %i.kz = load <4 x i32>, ptr %i.in, align 16, !tbaa !20
  %i.la = add <4 x i32> %i.is, %i.ir
  %i.lb = add <4 x i32> %i.la, %i.kz
  %i.lc = add <4 x i32> %i.lb, %i.kv
  %i.ld = add <4 x i32> %i.lc, %i.ky
  %i.le = add <4 x i32> %i.jq, %i.jp
  %i.lf = add <4 x i32> %i.le, %i.ks
  %i.lg = sub <4 x i32> %i.lf, %i.kv
  %i.lh = add <4 x i32> %i.lg, %i.ky
  %i.li = ashr <4 x i32> %i.ld, splat (i32 2)     ; 5 uses
  %i.lj = ashr <4 x i32> %i.lh, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.aa [
    i32 4, label %bb.y
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.by ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.km, i64 %.idx.i ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.km, i64 %.idx456.i ; 2 uses
  %.sroa.0514.0.vec.extract.us.i = extractelement <4 x i32> %i.li, i64 0
  store i32 %.sroa.0514.0.vec.extract.us.i, ptr %i.km, align 4, !tbaa !92
  %.sroa.0514.4.vec.extract.us.i = extractelement <4 x i32> %i.li, i64 1
  store i32 %.sroa.0514.4.vec.extract.us.i, ptr %i.lk, align 4, !tbaa !92
  %.sroa.0514.8.vec.extract.us.i = extractelement <4 x i32> %i.li, i64 2
  store i32 %.sroa.0514.8.vec.extract.us.i, ptr %i.ll, align 4, !tbaa !92
  %.sroa.0514.12.vec.extract.us.i = extractelement <4 x i32> %i.li, i64 3
  store i32 %.sroa.0514.12.vec.extract.us.i, ptr %i.lm, align 4, !tbaa !92
  br i1 %i.ko, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.7516.16.vec.extract.us.i = extractelement <4 x i32> %i.lj, i64 0
  %i.ln = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store i32 %.sroa.7516.16.vec.extract.us.i, ptr %i.ln, align 4, !tbaa !92
  %.sroa.7516.20.vec.extract.us.i = extractelement <4 x i32> %i.lj, i64 1
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  store i32 %.sroa.7516.20.vec.extract.us.i, ptr %i.lo, align 4, !tbaa !92
  %.sroa.7516.24.vec.extract.us.i = extractelement <4 x i32> %i.lj, i64 2
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store i32 %.sroa.7516.24.vec.extract.us.i, ptr %i.lp, align 4, !tbaa !92
  %.sroa.7516.28.vec.extract.us.i = extractelement <4 x i32> %i.lj, i64 3
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  store i32 %.sroa.7516.28.vec.extract.us.i, ptr %i.lq, align 4, !tbaa !92
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  store <4 x i32> %i.li, ptr %i.km, align 16, !tbaa !20
  br i1 %i.ko, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.lr = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store <4 x i32> %i.lj, ptr %i.lr, align 16, !tbaa !20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.ic
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit468.us.i
  %.1432.us.i = phi ptr [ %i.km, %_ZN4ncnn3MatD2Ev.exit468.us.i ], [ %i.ls, %bb.aa ] ; 7 uses
  %i.lt = or disjoint i32 %i.ke, 1
  %.not455.us.1.i = icmp slt i32 %i.lt, %i.bu
  br i1 %.not455.us.1.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.lu = add <4 x i32> %i.iv, %i.jd
  %i.lv = add <4 x i32> %i.lu, %i.jl
  %i.lw = add <4 x i32> %i.jd, %i.jp
  %i.lx = add <4 x i32> %i.jl, %i.jq
  %i.ly = sub <4 x i32> %i.lw, %i.lx
  %i.lz = add <4 x i32> %i.ly, %i.jr
  %i.ma = ashr <4 x i32> %i.lv, splat (i32 2)     ; 5 uses
  %i.mb = ashr <4 x i32> %i.lz, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.ah [
    i32 4, label %bb.af
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.1432.us.i, i64 %i.by ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 %.idx.i ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 %.idx456.i ; 2 uses
  %.sroa.0514.0.vec.extract.us.1.i = extractelement <4 x i32> %i.ma, i64 0
  store i32 %.sroa.0514.0.vec.extract.us.1.i, ptr %.1432.us.i, align 4, !tbaa !92
  %.sroa.0514.4.vec.extract.us.1.i = extractelement <4 x i32> %i.ma, i64 1
  store i32 %.sroa.0514.4.vec.extract.us.1.i, ptr %i.mc, align 4, !tbaa !92
  %.sroa.0514.8.vec.extract.us.1.i = extractelement <4 x i32> %i.ma, i64 2
  store i32 %.sroa.0514.8.vec.extract.us.1.i, ptr %i.md, align 4, !tbaa !92
  %.sroa.0514.12.vec.extract.us.1.i = extractelement <4 x i32> %i.ma, i64 3
  store i32 %.sroa.0514.12.vec.extract.us.1.i, ptr %i.me, align 4, !tbaa !92
  br i1 %i.ko, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.sroa.7516.16.vec.extract.us.1.i = extractelement <4 x i32> %i.mb, i64 0
  %i.mf = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 4
  store i32 %.sroa.7516.16.vec.extract.us.1.i, ptr %i.mf, align 4, !tbaa !92
  %.sroa.7516.20.vec.extract.us.1.i = extractelement <4 x i32> %i.mb, i64 1
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store i32 %.sroa.7516.20.vec.extract.us.1.i, ptr %i.mg, align 4, !tbaa !92
  %.sroa.7516.24.vec.extract.us.1.i = extractelement <4 x i32> %i.mb, i64 2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store i32 %.sroa.7516.24.vec.extract.us.1.i, ptr %i.mh, align 4, !tbaa !92
  %.sroa.7516.28.vec.extract.us.1.i = extractelement <4 x i32> %i.mb, i64 3
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  store i32 %.sroa.7516.28.vec.extract.us.1.i, ptr %i.mi, align 4, !tbaa !92
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  store <4 x i32> %i.ma, ptr %.1432.us.i, align 16, !tbaa !20
  br i1 %i.ko, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mj = getelementptr inbounds nuw i8, ptr %.1432.us.i, i64 16
  store <4 x i32> %i.mb, ptr %i.mj, align 16, !tbaa !20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %indvars.iv.next660.i = add nuw nsw i64 %indvars.iv659.i, 1 ; 2 uses
  %exitcond663.not.i = icmp eq i64 %indvars.iv.next660.i, %wide.trip.count662.i
  br i1 %exitcond663.not.i, label %._crit_edge.us594.i, label %_ZN4ncnn3MatD2Ev.exit468.us.i, !llvm.loop !556

._crit_edge.us594.i:                              ; preds = %bb.ah
  %indvars.iv.next665.i = add nuw nsw i64 %indvars.iv664.i, 4 ; 3 uses
  %i.mk = icmp slt i64 %indvars.iv.next665.i, %invariant.op.i
  br i1 %i.mk, label %.lr.ph.us593.i, label %.preheader566.loopexit.i, !llvm.loop !557

.preheader566.loopexit.i:                         ; preds = %._crit_edge.us594.i
  %i.ml = trunc nsw i64 %indvars.iv.next665.i to i32
  br label %.preheader566.i

.preheader566.i:                                  ; preds = %.preheader566.loopexit.i, %.lr.ph590.split.preheader.i, %.preheader567.i
  %.1434.lcssa.i = phi i32 [ %.0433.lcssa.i, %.preheader567.i ], [ %i.ml, %.preheader566.loopexit.i ], [ %i.if, %.lr.ph590.split.preheader.i ] ; 6 uses
  %i.mm = or disjoint i32 %.1434.lcssa.i, 1
  %i.mn = icmp slt i32 %i.mm, %.sroa.speculated119
  br i1 %i.mn, label %.lr.ph606.i, label %.preheader.i

.lr.ph606.i:                                      ; preds = %.preheader566.i
  %i.mo = icmp sgt i32 %.sroa.speculated115, 0
  %i.mp = shl nuw nsw i32 %.sroa.speculated115, 1
  %23 = zext nneg i32 %i.mp to i64
  %i.mq = shl nuw nsw i32 %.sroa.speculated115, 2
  %24 = zext nneg i32 %i.mq to i64
  %i.mr = mul nuw nsw i32 %.sroa.speculated115, 6
  %25 = zext nneg i32 %i.mr to i64
  %i.ms = shl nuw nsw i32 %.sroa.speculated115, 3
  %26 = zext nneg i32 %i.ms to i64                ; 12 uses
  %i.mt = sext i32 %i.bt to i64
  br i1 %i.mo, label %.lr.ph606.split.us.i, label %.lr.ph606.split.preheader.i

.lr.ph606.split.preheader.i:                      ; preds = %.lr.ph606.i
  %i.mu = add i32 %.1434.lcssa.i, 3
  %smax667.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated119, i32 %i.mu)
  %reass.sub157 = sub i32 %smax667.i, %.1434.lcssa.i
  %i.mv = and i32 %reass.sub157, -2
  %i.mw = add i32 %.1434.lcssa.i, %i.mv
  br label %.preheader.i

.lr.ph606.split.us.i:                             ; preds = %.lr.ph606.i
  %i.mx = load ptr, ptr %12, align 8, !tbaa !9, !noalias !558
  %i.my = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !558
  %i.mz = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !558 ; 2 uses
  %factor.op.mul.i = mul i64 %i.mz, %i.my
  %i.na = sext i32 %.1434.lcssa.i to i64
  %wide.trip.count678.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us609.i

.lr.ph.us609.i:                                   ; preds = %._crit_edge.us610.i, %.lr.ph606.split.us.i
  %indvars.iv680.i = phi i64 [ %indvars.iv.next681.i, %._crit_edge.us610.i ], [ %i.na, %.lr.ph606.split.us.i ] ; 3 uses
  %i.nb = trunc nsw i64 %indvars.iv680.i to i32
  %factor.op.mul.reass.us608.i = mul i32 %factor.op.mul576.i, %i.nb
  %i.nc = sext i32 %factor.op.mul.reass.us608.i to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.nc
  %i.ne = add nsw i64 %indvars.iv680.i, %i.bl
  %.reass.i = mul i64 %factor.op.mul.i, %i.ne
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit467.us.i

_ZN4ncnn3MatD2Ev.exit467.us.i:                    ; preds = %bb.ao, %.lr.ph.us609.i
  %indvars.iv675.i = phi i64 [ 0, %.lr.ph.us609.i ], [ %indvars.iv.next676.i, %bb.ao ] ; 3 uses
  %.idx735.i = shl nuw nsw i64 %indvars.iv675.i, 3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx735.i ; 6 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %23 ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %24 ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %25 ; 3 uses
  %i.nk = load i32, ptr %i.nh, align 4, !tbaa !92 ; 2 uses
  %i.nl = load i32, ptr %i.ni, align 4, !tbaa !92 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !92 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !92 ; 2 uses
  %i.nq = sub i32 %i.nk, %i.nl
  %i.nr = load i32, ptr %i.nj, align 4, !tbaa !92
  %i.ns = add nsw i32 %i.nq, %i.nr
  %i.nt = sub i32 %i.nn, %i.np
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !92
  %i.nw = add nsw i32 %i.nt, %i.nv
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %26 ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %26 ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %26 ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %26 ; 3 uses
  %i.ob = load i32, ptr %i.nx, align 4, !tbaa !92
  %i.oc = load i32, ptr %i.ny, align 4, !tbaa !92 ; 2 uses
  %i.od = add nsw i32 %i.oc, %i.ob
  %i.oe = load i32, ptr %i.nz, align 4, !tbaa !92 ; 2 uses
  %i.of = add nsw i32 %i.od, %i.oe                ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !92
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !92 ; 2 uses
  %i.ok = add nsw i32 %i.oj, %i.oh
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !92 ; 2 uses
  %i.on = add nsw i32 %i.ok, %i.om                ; 2 uses
  %i.oo = sub i32 %i.oc, %i.oe
  %i.op = load i32, ptr %i.oa, align 4, !tbaa !92
  %i.oq = add nsw i32 %i.op, %i.oo                ; 2 uses
  %i.or = sub i32 %i.oj, %i.om
  %i.os = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !92
  %i.ou = add nsw i32 %i.ot, %i.or                ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %26 ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %26 ; 3 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %26 ; 3 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %26 ; 3 uses
  %i.oz = load i32, ptr %i.ov, align 4, !tbaa !92
  %i.pa = load i32, ptr %i.ow, align 4, !tbaa !92 ; 2 uses
  %i.pb = add nsw i32 %i.pa, %i.oz
  %i.pc = load i32, ptr %i.ox, align 4, !tbaa !92 ; 2 uses
  %i.pd = add nsw i32 %i.pb, %i.pc                ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !92
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !92 ; 2 uses
  %i.pi = add nsw i32 %i.ph, %i.pf
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !92 ; 2 uses
  %i.pl = add nsw i32 %i.pi, %i.pk                ; 2 uses
  %i.pm = sub i32 %i.pa, %i.pc
  %i.pn = load i32, ptr %i.oy, align 4, !tbaa !92
  %i.po = add nsw i32 %i.pn, %i.pm                ; 2 uses
  %i.pp = sub i32 %i.ph, %i.pk
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !92
  %i.ps = add nsw i32 %i.pr, %i.pp                ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %26 ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %26 ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %26 ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %26 ; 2 uses
  %i.px = load i32, ptr %i.pt, align 4, !tbaa !92
  %i.py = load i32, ptr %i.pu, align 4, !tbaa !92 ; 2 uses
  %i.pz = load i32, ptr %i.pv, align 4, !tbaa !92 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !92
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !92 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !92 ; 2 uses
  %i.qg = load i32, ptr %i.pw, align 4, !tbaa !92
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !92
  %i.qj = trunc i64 %indvars.iv675.i to i32
  %i.qk = add i32 %.044151, %i.qj                 ; 2 uses
  %i.ql = sdiv i32 %i.qk, %i.ca
  %i.qm = srem i32 %i.qk, %i.ca
  %i.qn = load i32, ptr %i.an, align 4, !tbaa !93, !noalias !558
  %i.qo = sext i32 %i.qn to i64
  %i.qp = shl nsw i32 %i.ql, 1                    ; 3 uses
  %i.qq = sext i32 %i.qp to i64
  %i.qr = mul i64 %i.mz, %i.qq
  %i.qs = mul i64 %i.qr, %i.qo
  %i.qt = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.qs
  %i.qu = shl nsw i32 %i.qm, 1                    ; 2 uses
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qv ; 5 uses
  %i.qx = or disjoint i32 %i.qu, 1
  %i.qy = icmp slt i32 %i.qx, %i.bt               ; 2 uses
  %.not454.us.i = icmp slt i32 %i.qp, %i.bu
  br i1 %.not454.us.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit467.us.i
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !92
  %i.rb = load i32, ptr %i.ng, align 4, !tbaa !92
  %i.rc = add i32 %i.nl, %i.nk
  %i.rd = add i32 %i.rc, %i.of
  %i.re = add i32 %i.rd, %i.pd
  %i.rf = add i32 %i.re, %i.rb
  %i.rg = add i32 %i.np, %i.nn
  %i.rh = add i32 %i.rg, %i.on
  %i.ri = add i32 %i.rh, %i.pl
  %i.rj = add i32 %i.ri, %i.ra
  %i.rk = ashr i32 %i.rf, 2
  %i.rl = ashr i32 %i.rj, 2
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.by ; 2 uses
  store i32 %i.rk, ptr %i.qw, align 4, !tbaa !92
  store i32 %i.rl, ptr %i.rm, align 4, !tbaa !92
  br i1 %i.qy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.rn = sub i32 %i.on, %i.pl
  %i.ro = add i32 %i.rn, %i.qb
  %i.rp = add i32 %i.ro, %i.qd
  %i.rq = add i32 %i.rp, %i.qf
  %i.rr = ashr i32 %i.rq, 2
  %i.rs = sub i32 %i.of, %i.pd
  %i.rt = add i32 %i.rs, %i.px
  %i.ru = add i32 %i.rt, %i.py
  %i.rv = add i32 %i.ru, %i.pz
  %i.rw = ashr i32 %i.rv, 2
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store i32 %i.rw, ptr %i.rx, align 4, !tbaa !92
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  store i32 %i.rr, ptr %i.ry, align 4, !tbaa !92
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.mt
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN4ncnn3MatD2Ev.exit467.us.i
  %.1423.us.i = phi ptr [ %i.qw, %_ZN4ncnn3MatD2Ev.exit467.us.i ], [ %i.rz, %bb.ak ] ; 3 uses
  %i.sa = or disjoint i32 %i.qp, 1
  %.not454.us.1.i = icmp slt i32 %i.sa, %i.bu
  br i1 %.not454.us.1.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.sb = add nsw i32 %i.ns, %i.oq
  %i.sc = add nsw i32 %i.sb, %i.po
  %i.sd = add nsw i32 %i.nw, %i.ou
  %i.se = add nsw i32 %i.sd, %i.ps
  %i.sf = ashr i32 %i.sc, 2
  %i.sg = ashr i32 %i.se, 2
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.1423.us.i, i64 %i.by ; 2 uses
  store i32 %i.sf, ptr %.1423.us.i, align 4, !tbaa !92
  store i32 %i.sg, ptr %i.sh, align 4, !tbaa !92
  br i1 %i.qy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.si = add i32 %i.ou, %i.qd
  %i.sj = add i32 %i.ps, %i.qf
  %i.sk = sub i32 %i.si, %i.sj
  %i.sl = add i32 %i.sk, %i.qi
  %i.sm = ashr i32 %i.sl, 2
  %i.sn = add i32 %i.oq, %i.py
  %i.so = add i32 %i.po, %i.pz
  %i.sp = sub i32 %i.sn, %i.so
  %i.sq = add i32 %i.sp, %i.qg
  %i.sr = ashr i32 %i.sq, 2
  %i.ss = getelementptr inbounds nuw i8, ptr %.1423.us.i, i64 4
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !92
  %i.st = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  store i32 %i.sm, ptr %i.st, align 4, !tbaa !92
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %indvars.iv.next676.i = add nuw nsw i64 %indvars.iv675.i, 1 ; 2 uses
  %exitcond679.not.i = icmp eq i64 %indvars.iv.next676.i, %wide.trip.count678.i
  br i1 %exitcond679.not.i, label %._crit_edge.us610.i, label %_ZN4ncnn3MatD2Ev.exit467.us.i, !llvm.loop !561

._crit_edge.us610.i:                              ; preds = %bb.ao
  %indvars.iv.next681.i = add nuw nsw i64 %indvars.iv680.i, 2 ; 3 uses
  %i.su = icmp slt i64 %indvars.iv.next681.i, %invariant.op736.i
  br i1 %i.su, label %.lr.ph.us609.i, label %.preheader.loopexit.i, !llvm.loop !562

.preheader.loopexit.i:                            ; preds = %._crit_edge.us610.i
  %i.sv = trunc nsw i64 %indvars.iv.next681.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph606.split.preheader.i, %.preheader566.i
  %.2.lcssa.i = phi i32 [ %.1434.lcssa.i, %.preheader566.i ], [ %i.sv, %.preheader.loopexit.i ], [ %i.mw, %.lr.ph606.split.preheader.i ] ; 2 uses
  %i.sw = icmp slt i32 %.2.lcssa.i, %.sroa.speculated119
  br i1 %i.sw, label %.lr.ph624.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph624.i:                                      ; preds = %.preheader.i
  %i.sx = icmp sgt i32 %.sroa.speculated115, 0
  %i.sy = sext i32 %.sroa.speculated115 to i64
  %i.sz = shl nuw nsw i32 %.sroa.speculated115, 1
  %27 = zext nneg i32 %i.sz to i64
  %i.ta = mul nuw nsw i32 %.sroa.speculated115, 3
  %28 = zext nneg i32 %i.ta to i64
  %i.tb = shl nuw nsw i32 %.sroa.speculated115, 2
  %29 = zext nneg i32 %i.tb to i64                ; 12 uses
  %i.tc = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %i.sx, label %.lr.ph624.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph624.split.us.i:                             ; preds = %.lr.ph624.i
  %i.td = load ptr, ptr %12, align 8, !tbaa !9, !noalias !563
  %i.te = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !563
  %i.tf = load i64, ptr %i.ar, align 8, !tbaa !19, !noalias !563 ; 2 uses
  %factor.op.mul634.i = mul i64 %i.tf, %i.te
  %i.tg = sext i32 %.2.lcssa.i to i64
  %wide.trip.count696.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us632.i

.lr.ph.us632.i:                                   ; preds = %._crit_edge.us633.i, %.lr.ph624.split.us.i
  %indvars.iv698.i = phi i64 [ %indvars.iv.next699.i, %._crit_edge.us633.i ], [ %i.tg, %.lr.ph624.split.us.i ] ; 3 uses
  %i.th = trunc nsw i64 %indvars.iv698.i to i32
  %factor.op.mul619.reass.us.i = mul i32 %factor.op.mul576.i, %i.th
  %i.ti = sext i32 %factor.op.mul619.reass.us.i to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ti
  %i.tk = add nsw i64 %indvars.iv698.i, %i.bl
  %.reass635.i = mul i64 %factor.op.mul634.i, %i.tk
  %i.tl = getelementptr inbounds nuw i8, ptr %i.td, i64 %.reass635.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us630.i, %.lr.ph.us632.i
  %indvars.iv693.i = phi i64 [ 0, %.lr.ph.us632.i ], [ %indvars.iv.next694.i, %.split.us630.i ] ; 3 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv693.i ; 5 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.sy ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %27 ; 2 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %28 ; 2 uses
  %i.tq = load i32, ptr %i.tm, align 4, !tbaa !92
  %i.tr = load i32, ptr %i.tn, align 4, !tbaa !92 ; 2 uses
  %i.ts = add nsw i32 %i.tr, %i.tq
  %i.tt = load i32, ptr %i.to, align 4, !tbaa !92 ; 2 uses
  %i.tu = add nsw i32 %i.ts, %i.tt                ; 2 uses
  %i.tv = sub i32 %i.tr, %i.tt
  %i.tw = load i32, ptr %i.tp, align 4, !tbaa !92
  %i.tx = add nsw i32 %i.tv, %i.tw                ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %29 ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.tn, i64 %29 ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %29 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %29 ; 2 uses
  %i.uc = load i32, ptr %i.ty, align 4, !tbaa !92
  %i.ud = load i32, ptr %i.tz, align 4, !tbaa !92 ; 2 uses
  %i.ue = add nsw i32 %i.ud, %i.uc
  %i.uf = load i32, ptr %i.ua, align 4, !tbaa !92 ; 2 uses
  %i.ug = add nsw i32 %i.ue, %i.uf                ; 3 uses
  %i.uh = sub i32 %i.ud, %i.uf
  %i.ui = load i32, ptr %i.ub, align 4, !tbaa !92
  %i.uj = add nsw i32 %i.uh, %i.ui                ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %29 ; 2 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %29 ; 2 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %29 ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %29 ; 2 uses
  %i.uo = load i32, ptr %i.uk, align 4, !tbaa !92
  %i.up = load i32, ptr %i.ul, align 4, !tbaa !92 ; 2 uses
  %i.uq = add nsw i32 %i.up, %i.uo
  %i.ur = load i32, ptr %i.um, align 4, !tbaa !92 ; 2 uses
  %i.us = add nsw i32 %i.uq, %i.ur                ; 3 uses
  %i.ut = sub i32 %i.up, %i.ur
  %i.uu = load i32, ptr %i.un, align 4, !tbaa !92
  %i.uv = add nsw i32 %i.ut, %i.uu                ; 3 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %29
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %29
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %29
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %29
  %i.va = load i32, ptr %i.uw, align 4, !tbaa !92
  %i.vb = load i32, ptr %i.ux, align 4, !tbaa !92 ; 2 uses
  %i.vc = load i32, ptr %i.uy, align 4, !tbaa !92 ; 2 uses
  %i.vd = load i32, ptr %i.uz, align 4, !tbaa !92
  %i.ve = trunc i64 %indvars.iv693.i to i32
  %i.vf = add i32 %.044151, %i.ve                 ; 2 uses
  %i.vg = sdiv i32 %i.vf, %i.ca
  %i.vh = srem i32 %i.vf, %i.ca
  %i.vi = load i32, ptr %i.an, align 4, !tbaa !93, !noalias !563
  %i.vj = sext i32 %i.vi to i64
  %i.vk = shl nsw i32 %i.vg, 1                    ; 4 uses
  %i.vl = sext i32 %i.vk to i64
  %i.vm = mul i64 %i.tf, %i.vl
  %i.vn = mul i64 %i.vm, %i.vj
  %i.vo = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.vn
  %i.vp = shl nsw i32 %i.vh, 1                    ; 2 uses
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.vo, i64 %i.vq ; 7 uses
  %i.vs = or disjoint i32 %i.vp, 1
  %i.vt = icmp slt i32 %i.vs, %i.bt
  %.fr.us.i = freeze i1 %i.vt
  %.not.us.us.i = icmp slt i32 %i.vk, %i.bu       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.ap, label %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.ap:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i
  %i.vu = add nsw i32 %i.ug, %i.tu
  %i.vv = add nsw i32 %i.vu, %i.us
  %i.vw = ashr i32 %i.vv, 2
  store i32 %i.vw, ptr %i.vr, align 4, !tbaa !92
  %i.vx = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %i.tc
  br label %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i

_ZN4ncnn3MatD2Ev.exit.split.us631.1.i:            ; preds = %bb.ap, %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i
  %.1.us629.i = phi ptr [ %i.vr, %_ZN4ncnn3MatD2Ev.exit.split.us631.preheader.i ], [ %i.vx, %bb.ap ]
  %i.vy = or disjoint i32 %i.vk, 1
  %.not.us628.1.i = icmp slt i32 %i.vy, %i.bu
  br i1 %.not.us628.1.i, label %bb.aq, label %.split.us630.i

bb.aq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i
  %i.vz = add nsw i32 %i.uj, %i.tx
  %i.wa = add nsw i32 %i.vz, %i.uv
  %i.wb = ashr i32 %i.wa, 2
  store i32 %i.wb, ptr %.1.us629.i, align 4, !tbaa !92
  br label %.split.us630.i

.split.us630.i:                                   ; preds = %bb.as, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.aq, %_ZN4ncnn3MatD2Ev.exit.split.us631.1.i
  %indvars.iv.next694.i = add nuw nsw i64 %indvars.iv693.i, 1 ; 2 uses
  %exitcond697.not.i = icmp eq i64 %indvars.iv.next694.i, %wide.trip.count696.i
  br i1 %exitcond697.not.i, label %._crit_edge.us633.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !566

bb.ar:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.wc = add nsw i32 %i.ug, %i.tu
  %i.wd = add nsw i32 %i.wc, %i.us
  %i.we = ashr i32 %i.wd, 2
  store i32 %i.we, ptr %i.vr, align 4, !tbaa !92
  %i.wf = sub i32 %i.ug, %i.us
  %i.wg = add i32 %i.wf, %i.va
  %i.wh = add i32 %i.wg, %i.vb
  %i.wi = add i32 %i.wh, %i.vc
  %i.wj = ashr i32 %i.wi, 2
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  store i32 %i.wj, ptr %i.wk, align 4, !tbaa !92
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.vr, i64 %i.tc
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.ar, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.vr, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.wl, %bb.ar ] ; 2 uses
  %i.wm = or disjoint i32 %i.vk, 1
  %.not.us.us.1.i = icmp slt i32 %i.wm, %i.bu
  br i1 %.not.us.us.1.i, label %bb.as, label %.split.us630.i

bb.as:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.wn = add nsw i32 %i.uj, %i.tx
  %i.wo = add nsw i32 %i.wn, %i.uv
  %i.wp = ashr i32 %i.wo, 2
  store i32 %i.wp, ptr %.1.us.us.i, align 4, !tbaa !92
  %i.wq = add i32 %i.uj, %i.vb
  %i.wr = add i32 %i.uv, %i.vc
  %i.ws = sub i32 %i.wq, %i.wr
  %i.wt = add i32 %i.ws, %i.vd
  %i.wu = ashr i32 %i.wt, 2
  %i.wv = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !92
  br label %.split.us630.i

._crit_edge.us633.i:                              ; preds = %.split.us630.i
  %indvars.iv.next699.i = add nuw nsw i64 %indvars.iv698.i, 1 ; 2 uses
  %exitcond702.not.i = icmp eq i64 %indvars.iv.next699.i, %i.bk
  br i1 %exitcond702.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us632.i, !llvm.loop !567

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.ww = phi i32 [ %i.yv, %.noexc ], [ %.pre158, %.noexc.preheader ] ; 3 uses
  %i.wx = phi i32 [ %i.yx, %.noexc ], [ %i.br, %.noexc.preheader ] ; 2 uses
  %.0150 = phi i32 [ %i.yw, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.wy = sub nsw i32 %i.wx, %.0150
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ww, i32 %i.wy)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.wz = load i32, ptr %3, align 4, !tbaa !92
  %i.xa = sdiv i32 %i.at, %i.wz
  %i.xb = load ptr, ptr %10, align 8, !tbaa !9, !noalias !568
  %i.xc = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !568
  %i.xd = sext i32 %i.xa to i64
  %i.xe = mul i64 %i.xc, %i.xd
  %i.xf = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !568 ; 3 uses
  %i.xg = mul i64 %i.xe, %i.xf
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.xg
  %i.xi = load i32, ptr %i.r, align 8, !tbaa !94, !noalias !568
  %i.xj = load ptr, ptr %i.s, align 8, !tbaa !483, !noalias !568
  %i.xk = sdiv i32 %.0150, %i.ww
  %i.xl = sext i32 %i.xk to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !482, !alias.scope !571
  store i64 %i.xf, ptr %i.u, align 8, !tbaa !19, !alias.scope !571
  store i32 %i.xi, ptr %i.v, align 8, !tbaa !94, !alias.scope !571
  store ptr %i.xj, ptr %i.w, align 8, !tbaa !483, !alias.scope !571
  store i32 2, ptr %i.x, align 8, !tbaa !497, !alias.scope !571
  %i.xm = load <2 x i32>, ptr %i.n, align 4, !tbaa !92, !noalias !568
  %i.xn = load i32, ptr %i.o, align 8, !tbaa !96, !noalias !568
  %i.xo = load i32, ptr %i.n, align 4, !tbaa !93, !noalias !568
  %i.xp = sext i32 %i.xo to i64
  %i.xq = sext i32 %i.xn to i64
  %i.xr = mul nsw i64 %i.xq, %i.xp                ; 2 uses
  %i.xs = mul i64 %i.xf, %i.xr
  %i.xt = mul i64 %i.xs, %i.xl
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xt
  store ptr %i.xu, ptr %13, align 8, !tbaa !9, !alias.scope !571
  %i.xv = shufflevector <2 x i32> %i.xm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xw = shufflevector <4 x i32> %i.xv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.xw, ptr %i.y, align 4, !tbaa !92, !alias.scope !571
  store i64 %i.xr, ptr %i.z, align 8, !tbaa !18, !alias.scope !571
end_hunk_3
begin_hunk_4_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.n = load i32, ptr %i.d, align 4, !tbaa !92   ; 2 uses
  %.not131 = icmp sgt i32 %i.n, %i.m
  br i1 %.not131, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.dq = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph134, %_ZN4ncnn3MatD2Ev.exit
  %.045132 = phi i32 [ %i.n, %.lr.ph134 ], [ %i.fd, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.ej = load i32, ptr %3, align 4, !tbaa !92
  %i.ek = mul nsw i32 %i.ej, %.045132             ; 5 uses
  %i.el = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.ci

.noexc46:                                         ; preds = %bb.c
  %i.em = load ptr, ptr %4, align 8, !tbaa !9, !noalias !719
  %i.en = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !719
  %i.eo = sext i32 %i.el to i64
  %i.ep = mul i64 %i.en, %i.eo
  %i.eq = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !719
  %i.er = mul i64 %i.ep, %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.er ; 5 uses
  %i.et = load i32, ptr %5, align 4, !tbaa !92
  %i.eu = sub nsw i32 %i.et, %i.ek
  %i.ev = load i32, ptr %3, align 4, !tbaa !92
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.ev, i32 %i.eu) ; 10 uses
  %i.ew = load i32, ptr %6, align 4, !tbaa !92    ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.ey = icmp sgt i32 %.sroa.speculated120, 7
  %i.ez = and i32 %.sroa.speculated120, 2147483640
  %i.fa = zext nneg i32 %.sroa.speculated120 to i64
  %i.fb = sext i32 %.sroa.speculated120 to i64    ; 3 uses
  %invariant.op.i = add nsw i64 %i.fb, -3
  %i.fc = sext i32 %i.ek to i64                   ; 2 uses
  %invariant.op425.i = add nsw i64 %i.fb, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !92
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.fd = add nsw i32 %.045132, 1
  %i.fe = load i32, ptr %i.e, align 4, !tbaa !92
  %.not.not = icmp slt i32 %.045132, %i.fe
  br i1 %.not.not, label %bb.c, label %._crit_edge135

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.ff = phi i32 [ %.pre, %.lr.ph ], [ %i.bei, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.fg = phi i32 [ %i.ew, %.lr.ph ], [ %i.bek, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044130 = phi i32 [ 0, %.lr.ph ], [ %i.bej, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 7 uses
  %i.fh = sub nsw i32 %i.fg, %.044130
  %.sroa.speculated116 = call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fh) ; 34 uses
  %i.fi = load i32, ptr %8, align 4, !tbaa !92    ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %bb.d
  %.pre137 = load i32, ptr %9, align 4, !tbaa !92
  br label %.noexc

._crit_edge:                                      ; preds = %.noexc, %bb.d
  %i.fk = load i32, ptr %i.aq, align 4, !tbaa !93 ; 17 uses
  %i.fl = load i32, ptr %i.ar, align 8, !tbaa !96 ; 7 uses
  %i.fm = load i32, ptr %i.as, align 8, !tbaa !94 ; 9 uses
  %i.fn = load i64, ptr %i.at, align 8, !tbaa !18
  %i.fo = sext i32 %i.fm to i64
  %i.fp = mul i64 %i.fn, %i.fo                    ; 12 uses
  %i.fq = add nsw i32 %i.fk, 3
  %i.fr = sdiv i32 %i.fq, 4                       ; 8 uses
  %factor.op.mul100.i = mul i32 %.sroa.speculated116, 36 ; 4 uses
  br i1 %i.ey, label %.lr.ph103.i, label %.preheader79.i

.lr.ph103.i:                                      ; preds = %._crit_edge
  %i.fs = icmp sgt i32 %.sroa.speculated116, 0
  %i.ft = shl nuw nsw i32 %.sroa.speculated116, 3
  %15 = zext nneg i32 %i.ft to i64
  %i.fu = shl nuw nsw i32 %.sroa.speculated116, 4
  %16 = zext nneg i32 %i.fu to i64
  %i.fv = mul nuw nsw i32 %.sroa.speculated116, 24
  %17 = zext nneg i32 %i.fv to i64
  %i.fw = shl nuw nsw i32 %.sroa.speculated116, 5
  %18 = zext nneg i32 %i.fw to i64
  %i.fx = mul nuw nsw i32 %.sroa.speculated116, 40
  %19 = zext nneg i32 %i.fx to i64
  %i.fy = mul nuw nsw i32 %.sroa.speculated116, 48
  %20 = zext nneg i32 %i.fy to i64                ; 30 uses
  %.idx1028.i = shl i64 %i.fp, 3
  %.idx1029.i = mul i64 %i.fp, 12
  %.idx1030.i = shl i64 %i.fp, 4
  %.idx1031.i = mul i64 %i.fp, 20
  %.idx1032.i = mul i64 %i.fp, 24
  %.idx1033.i = mul i64 %i.fp, 28
  %i.fz = mul nsw i32 %i.fm, %i.fk
  %i.ga = sext i32 %i.fz to i64
  br i1 %i.fs, label %.lr.ph.us.preheader.i, label %.preheader79.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph103.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv364.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next365.i, %._crit_edge.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.gb = trunc nuw nsw i64 %indvars.iv364.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul100.i, %i.gb
  %i.gc = sext i32 %factor.op.mul.reass.us.i to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.gc
  %i.ge = add i32 %i.ek, %i.gb
  %i.gf = sdiv i32 %i.ge, %i.fm
  %i.gg = sext i32 %i.gf to i64
  br label %.preheader80.us.i

.preheader80.us.i:                                ; preds = %bb.aa, %.lr.ph.us.i
  %indvars.iv360.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next361.i, %bb.aa ] ; 3 uses
  %.idx422.i = shl nuw nsw i64 %indvars.iv360.i, 5
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx422.i ; 7 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %15 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %16 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %17 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %18 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %19 ; 2 uses
  %i.gn = load <8 x i32>, ptr %i.gh, align 32, !tbaa !20
  %i.go = load <8 x i32>, ptr %i.gi, align 32, !tbaa !20 ; 2 uses
  %i.gp = load <8 x i32>, ptr %i.gj, align 32, !tbaa !20 ; 2 uses
  %i.gq = load <8 x i32>, ptr %i.gk, align 32, !tbaa !20 ; 2 uses
  %i.gr = load <8 x i32>, ptr %i.gl, align 32, !tbaa !20 ; 2 uses
  %i.gs = load <8 x i32>, ptr %i.gm, align 32, !tbaa !20
  %i.gt = add <8 x i32> %i.gp, %i.go              ; 2 uses
  %i.gu = add <8 x i32> %i.gr, %i.gq              ; 2 uses
  %i.gv = sub <8 x i32> %i.go, %i.gp              ; 2 uses
  %i.gw = sub <8 x i32> %i.gq, %i.gr              ; 2 uses
  %i.gx = add <8 x i32> %i.gt, %i.gn
  %i.gy = add <8 x i32> %i.gx, %i.gu
  %i.gz = shl <8 x i32> %i.gw, splat (i32 1)
  %i.ha = add <8 x i32> %i.gz, %i.gv
  %i.hb = shl <8 x i32> %i.gu, splat (i32 2)
  %i.hc = add <8 x i32> %i.hb, %i.gt
  %i.hd = shl <8 x i32> %i.gw, splat (i32 3)
  %i.he = add <8 x i32> %i.hd, %i.gv
  %i.hf = shl <8 x i32> %i.gs, splat (i32 2)
  %i.hg = add <8 x i32> %i.he, %i.hf
  store <8 x i32> %i.gy, ptr %i.a, align 32, !tbaa !20
  store <8 x i32> %i.ha, ptr %i.au, align 32, !tbaa !20
  store <8 x i32> %i.hc, ptr %i.av, align 32, !tbaa !20
  store <8 x i32> %i.hg, ptr %i.aw, align 32, !tbaa !20
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %20 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %20 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %20 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %20 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %20 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %20 ; 2 uses
  %i.hn = load <8 x i32>, ptr %i.hh, align 32, !tbaa !20
  %i.ho = load <8 x i32>, ptr %i.hi, align 32, !tbaa !20 ; 2 uses
  %i.hp = load <8 x i32>, ptr %i.hj, align 32, !tbaa !20 ; 2 uses
  %i.hq = load <8 x i32>, ptr %i.hk, align 32, !tbaa !20 ; 2 uses
  %i.hr = load <8 x i32>, ptr %i.hl, align 32, !tbaa !20 ; 2 uses
  %i.hs = load <8 x i32>, ptr %i.hm, align 32, !tbaa !20
  %i.ht = add <8 x i32> %i.hp, %i.ho              ; 2 uses
  %i.hu = add <8 x i32> %i.hr, %i.hq              ; 2 uses
  %i.hv = sub <8 x i32> %i.ho, %i.hp              ; 2 uses
  %i.hw = sub <8 x i32> %i.hq, %i.hr              ; 2 uses
  %i.hx = add <8 x i32> %i.ht, %i.hn
  %i.hy = add <8 x i32> %i.hx, %i.hu
  %i.hz = shl <8 x i32> %i.hw, splat (i32 1)
  %i.ia = add <8 x i32> %i.hz, %i.hv
  %i.ib = shl <8 x i32> %i.hu, splat (i32 2)
  %i.ic = add <8 x i32> %i.ib, %i.ht
  %i.id = shl <8 x i32> %i.hw, splat (i32 3)
  %i.ie = add <8 x i32> %i.id, %i.hv
  %i.if = shl <8 x i32> %i.hs, splat (i32 2)
  %i.ig = add <8 x i32> %i.ie, %i.if
  store <8 x i32> %i.hy, ptr %i.bc, align 32, !tbaa !20
  store <8 x i32> %i.ia, ptr %i.bd, align 32, !tbaa !20
  store <8 x i32> %i.ic, ptr %i.be, align 32, !tbaa !20
  store <8 x i32> %i.ig, ptr %i.bf, align 32, !tbaa !20
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %20 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %20 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %20 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %20 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %20 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %20 ; 2 uses
  %i.in = load <8 x i32>, ptr %i.ih, align 32, !tbaa !20
  %i.io = load <8 x i32>, ptr %i.ii, align 32, !tbaa !20 ; 2 uses
  %i.ip = load <8 x i32>, ptr %i.ij, align 32, !tbaa !20 ; 2 uses
  %i.iq = load <8 x i32>, ptr %i.ik, align 32, !tbaa !20 ; 2 uses
  %i.ir = load <8 x i32>, ptr %i.il, align 32, !tbaa !20 ; 2 uses
  %i.is = load <8 x i32>, ptr %i.im, align 32, !tbaa !20
  %i.it = add <8 x i32> %i.ip, %i.io              ; 2 uses
  %i.iu = add <8 x i32> %i.ir, %i.iq              ; 2 uses
  %i.iv = sub <8 x i32> %i.io, %i.ip              ; 2 uses
  %i.iw = sub <8 x i32> %i.iq, %i.ir              ; 2 uses
  %i.ix = add <8 x i32> %i.it, %i.in
  %i.iy = add <8 x i32> %i.ix, %i.iu
  %i.iz = shl <8 x i32> %i.iw, splat (i32 1)
  %i.ja = add <8 x i32> %i.iz, %i.iv
  %i.jb = shl <8 x i32> %i.iu, splat (i32 2)
  %i.jc = add <8 x i32> %i.jb, %i.it
  %i.jd = shl <8 x i32> %i.iw, splat (i32 3)
  %i.je = add <8 x i32> %i.jd, %i.iv
  %i.jf = shl <8 x i32> %i.is, splat (i32 2)
  %i.jg = add <8 x i32> %i.je, %i.jf
  store <8 x i32> %i.iy, ptr %i.bg, align 32, !tbaa !20
  store <8 x i32> %i.ja, ptr %i.bh, align 32, !tbaa !20
  store <8 x i32> %i.jc, ptr %i.bi, align 32, !tbaa !20
  store <8 x i32> %i.jg, ptr %i.bj, align 32, !tbaa !20
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %20 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %20 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %20 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %20 ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %20 ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %20 ; 2 uses
  %i.jn = load <8 x i32>, ptr %i.jh, align 32, !tbaa !20
  %i.jo = load <8 x i32>, ptr %i.ji, align 32, !tbaa !20 ; 2 uses
  %i.jp = load <8 x i32>, ptr %i.jj, align 32, !tbaa !20 ; 2 uses
  %i.jq = load <8 x i32>, ptr %i.jk, align 32, !tbaa !20 ; 2 uses
  %i.jr = load <8 x i32>, ptr %i.jl, align 32, !tbaa !20 ; 2 uses
  %i.js = load <8 x i32>, ptr %i.jm, align 32, !tbaa !20
  %i.jt = add <8 x i32> %i.jp, %i.jo              ; 2 uses
  %i.ju = add <8 x i32> %i.jr, %i.jq              ; 2 uses
  %i.jv = sub <8 x i32> %i.jo, %i.jp              ; 2 uses
  %i.jw = sub <8 x i32> %i.jq, %i.jr              ; 2 uses
  %i.jx = add <8 x i32> %i.jt, %i.jn
  %i.jy = add <8 x i32> %i.jx, %i.ju
  %i.jz = shl <8 x i32> %i.jw, splat (i32 1)
  %i.ka = add <8 x i32> %i.jz, %i.jv
  %i.kb = shl <8 x i32> %i.ju, splat (i32 2)
  %i.kc = add <8 x i32> %i.kb, %i.jt
  %i.kd = shl <8 x i32> %i.jw, splat (i32 3)
  %i.ke = add <8 x i32> %i.kd, %i.jv
  %i.kf = shl <8 x i32> %i.js, splat (i32 2)
  %i.kg = add <8 x i32> %i.ke, %i.kf
  store <8 x i32> %i.jy, ptr %i.bk, align 32, !tbaa !20
  store <8 x i32> %i.ka, ptr %i.bl, align 32, !tbaa !20
  store <8 x i32> %i.kc, ptr %i.bm, align 32, !tbaa !20
  store <8 x i32> %i.kg, ptr %i.bn, align 32, !tbaa !20
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %20 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %20 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %20 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %20 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %20 ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %20 ; 2 uses
  %i.kn = load <8 x i32>, ptr %i.kh, align 32, !tbaa !20
  %i.ko = load <8 x i32>, ptr %i.ki, align 32, !tbaa !20 ; 2 uses
  %i.kp = load <8 x i32>, ptr %i.kj, align 32, !tbaa !20 ; 2 uses
  %i.kq = load <8 x i32>, ptr %i.kk, align 32, !tbaa !20 ; 2 uses
  %i.kr = load <8 x i32>, ptr %i.kl, align 32, !tbaa !20 ; 2 uses
  %i.ks = load <8 x i32>, ptr %i.km, align 32, !tbaa !20
  %i.kt = add <8 x i32> %i.kp, %i.ko              ; 2 uses
  %i.ku = add <8 x i32> %i.kr, %i.kq              ; 2 uses
  %i.kv = sub <8 x i32> %i.ko, %i.kp              ; 2 uses
  %i.kw = sub <8 x i32> %i.kq, %i.kr              ; 2 uses
  %i.kx = add <8 x i32> %i.kt, %i.kn
  %i.ky = add <8 x i32> %i.kx, %i.ku
  %i.kz = shl <8 x i32> %i.kw, splat (i32 1)
  %i.la = add <8 x i32> %i.kz, %i.kv
  %i.lb = shl <8 x i32> %i.ku, splat (i32 2)
  %i.lc = add <8 x i32> %i.lb, %i.kt
  %i.ld = shl <8 x i32> %i.kw, splat (i32 3)
  %i.le = add <8 x i32> %i.ld, %i.kv
  %i.lf = shl <8 x i32> %i.ks, splat (i32 2)
  %i.lg = add <8 x i32> %i.le, %i.lf
  store <8 x i32> %i.ky, ptr %i.bo, align 32, !tbaa !20
  store <8 x i32> %i.la, ptr %i.bp, align 32, !tbaa !20
  store <8 x i32> %i.lc, ptr %i.bq, align 32, !tbaa !20
  store <8 x i32> %i.lg, ptr %i.br, align 32, !tbaa !20
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %20
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %20
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %20
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %20
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %20
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %20
  %i.ln = trunc i64 %indvars.iv360.i to i32
  %i.lo = add i32 %.044130, %i.ln                 ; 2 uses
  %i.lp = sdiv i32 %i.lo, %i.fr
  %i.lq = srem i32 %i.lo, %i.fr
  %i.lr = load <8 x i32>, ptr %i.lh, align 32, !tbaa !20
  %i.ls = load <8 x i32>, ptr %i.li, align 32, !tbaa !20 ; 2 uses
  %i.lt = load <8 x i32>, ptr %i.lj, align 32, !tbaa !20 ; 2 uses
  %i.lu = load <8 x i32>, ptr %i.lk, align 32, !tbaa !20 ; 2 uses
  %i.lv = load <8 x i32>, ptr %i.ll, align 32, !tbaa !20 ; 2 uses
  %i.lw = load <8 x i32>, ptr %i.lm, align 32, !tbaa !20
  %i.lx = add <8 x i32> %i.lt, %i.ls              ; 2 uses
  %i.ly = add <8 x i32> %i.lv, %i.lu              ; 2 uses
  %i.lz = sub <8 x i32> %i.ls, %i.lt
  %i.ma = sub <8 x i32> %i.lu, %i.lv              ; 2 uses
  %i.mb = add <8 x i32> %i.lx, %i.lr
end_hunk_4
begin_hunk_5_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %.sroa.051.12.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 3
  store i32 %.sroa.051.12.vec.extract.us.i, ptr %i.pd, align 4, !tbaa !92
  %.sroa.051.16.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 4
  store i32 %.sroa.051.16.vec.extract.us.i, ptr %i.pe, align 4, !tbaa !92
  %.sroa.051.20.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 5
  store i32 %.sroa.051.20.vec.extract.us.i, ptr %i.pf, align 4, !tbaa !92
  %.sroa.051.24.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 6
  store i32 %.sroa.051.24.vec.extract.us.i, ptr %i.pg, align 4, !tbaa !92
  %.sroa.051.28.vec.extract.us.i = extractelement <8 x i32> %i.oo, i64 7
  store i32 %.sroa.051.28.vec.extract.us.i, ptr %i.ph, align 4, !tbaa !92
  br i1 %i.ng, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.11.32.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 0
  %i.pi = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 4
  store i32 %.sroa.11.32.vec.extract.us.i, ptr %i.pi, align 4, !tbaa !92
  %.sroa.11.36.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 1
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  store i32 %.sroa.11.36.vec.extract.us.i, ptr %i.pj, align 4, !tbaa !92
  %.sroa.11.40.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 2
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store i32 %.sroa.11.40.vec.extract.us.i, ptr %i.pk, align 4, !tbaa !92
  %.sroa.11.44.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 3
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  store i32 %.sroa.11.44.vec.extract.us.i, ptr %i.pl, align 4, !tbaa !92
  %.sroa.11.48.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  store i32 %.sroa.11.48.vec.extract.us.i, ptr %i.pm, align 4, !tbaa !92
  %.sroa.11.52.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 5
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  store i32 %.sroa.11.52.vec.extract.us.i, ptr %i.pn, align 4, !tbaa !92
  %.sroa.11.56.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 6
  %i.po = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  store i32 %.sroa.11.56.vec.extract.us.i, ptr %i.po, align 4, !tbaa !92
  %.sroa.11.60.vec.extract.us.i = extractelement <8 x i32> %i.or, i64 7
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  store i32 %.sroa.11.60.vec.extract.us.i, ptr %i.pp, align 4, !tbaa !92
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.ni, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.20.64.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 0
  %i.pq = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 8
  store i32 %.sroa.20.64.vec.extract.us.i, ptr %i.pq, align 4, !tbaa !92
  %.sroa.20.68.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i32 %.sroa.20.68.vec.extract.us.i, ptr %i.pr, align 4, !tbaa !92
  %.sroa.20.72.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 2
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i32 %.sroa.20.72.vec.extract.us.i, ptr %i.ps, align 4, !tbaa !92
  %.sroa.20.76.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 3
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i32 %.sroa.20.76.vec.extract.us.i, ptr %i.pt, align 4, !tbaa !92
  %.sroa.20.80.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 4
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store i32 %.sroa.20.80.vec.extract.us.i, ptr %i.pu, align 4, !tbaa !92
  %.sroa.20.84.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 5
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store i32 %.sroa.20.84.vec.extract.us.i, ptr %i.pv, align 4, !tbaa !92
  %.sroa.20.88.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 6
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store i32 %.sroa.20.88.vec.extract.us.i, ptr %i.pw, align 4, !tbaa !92
  %.sroa.20.92.vec.extract.us.i = extractelement <8 x i32> %i.ov, i64 7
  %i.px = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i32 %.sroa.20.92.vec.extract.us.i, ptr %i.px, align 4, !tbaa !92
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.nk, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %.sroa.2955.96.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 0
  %i.py = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 12
  store i32 %.sroa.2955.96.vec.extract.us.i, ptr %i.py, align 4, !tbaa !92
  %.sroa.2955.100.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  store i32 %.sroa.2955.100.vec.extract.us.i, ptr %i.pz, align 4, !tbaa !92
  %.sroa.2955.104.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 2
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  store i32 %.sroa.2955.104.vec.extract.us.i, ptr %i.qa, align 4, !tbaa !92
  %.sroa.2955.108.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 %.sroa.2955.108.vec.extract.us.i, ptr %i.qb, align 4, !tbaa !92
  %.sroa.2955.112.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 4
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  store i32 %.sroa.2955.112.vec.extract.us.i, ptr %i.qc, align 4, !tbaa !92
  %.sroa.2955.116.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 5
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 %.sroa.2955.116.vec.extract.us.i, ptr %i.qd, align 4, !tbaa !92
  %.sroa.2955.120.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 6
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  store i32 %.sroa.2955.120.vec.extract.us.i, ptr %i.qe, align 4, !tbaa !92
  %.sroa.2955.124.vec.extract.us.i = extractelement <8 x i32> %i.oz, i64 7
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  store i32 %.sroa.2955.124.vec.extract.us.i, ptr %i.qf, align 4, !tbaa !92
  br label %bb.y

bb.m:                                             ; preds = %bb.f
  %i.qg = bitcast <8 x i32> %i.oo to <4 x i64>    ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.098498.us.i, i64 %i.fp ; 4 uses
  %i.qi = shufflevector <4 x i64> %i.qg, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qi, ptr %.098498.us.i, align 16, !tbaa !20
  %i.qj = shufflevector <4 x i64> %i.qg, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qj, ptr %i.qh, align 16, !tbaa !20
  br i1 %i.ng, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.qk = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 16
  %i.ql = shufflevector <4 x i64> %i.os, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.ql, ptr %i.qk, align 16, !tbaa !20
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qn = shufflevector <4 x i64> %i.os, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qn, ptr %i.qm, align 16, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.ni, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.qo = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 32
  %i.qp = shufflevector <4 x i64> %i.ow, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qp, ptr %i.qo, align 16, !tbaa !20
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qh, i64 32
  %i.qr = shufflevector <4 x i64> %i.ow, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qr, ptr %i.qq, align 16, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.nk, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.qs = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 48
  %i.qt = shufflevector <4 x i64> %i.pa, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  store <2 x i64> %i.qt, ptr %i.qs, align 16, !tbaa !20
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qh, i64 48
  %i.qv = shufflevector <4 x i64> %i.pa, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  store <2 x i64> %i.qv, ptr %i.qu, align 16, !tbaa !20
  br label %bb.y

bb.s:                                             ; preds = %bb.f
  store <8 x i32> %i.oo, ptr %.098498.us.i, align 32, !tbaa !20
  br i1 %i.ng, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.qw = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 32
  store <8 x i32> %i.or, ptr %i.qw, align 32, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.ni, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.qx = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 64
  store <8 x i32> %i.ov, ptr %i.qx, align 32, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.nk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.qy = getelementptr inbounds nuw i8, ptr %.098498.us.i, i64 96
  store <8 x i32> %i.oz, ptr %i.qy, align 32, !tbaa !20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.r, %bb.q, %bb.l, %bb.k, %bb.f
  %i.qz = getelementptr inbounds [4 x i8], ptr %.098498.us.i, i64 %i.ga
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.e
  %.1985.us.i = phi ptr [ %.098498.us.i, %bb.e ], [ %i.qz, %bb.y ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.aa, label %bb.e, !llvm.loop !725

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 2 uses
  %exitcond363.not.i = icmp eq i64 %indvars.iv.next361.i, %wide.trip.count.i
  br i1 %exitcond363.not.i, label %._crit_edge.us.i, label %.preheader80.us.i, !llvm.loop !726

._crit_edge.us.i:                                 ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 8 ; 3 uses
  %i.ra = or disjoint i64 %indvars.iv.next365.i, 7
  %i.rb = icmp samesign ult i64 %i.ra, %i.fa
  br i1 %i.rb, label %.lr.ph.us.i, label %.preheader79.loopexit.i, !llvm.loop !727

.preheader79.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.rc = trunc nuw nsw i64 %indvars.iv.next365.i to i32
  br label %.preheader79.i

.preheader79.i:                                   ; preds = %.lr.ph103.i, %.preheader79.loopexit.i, %._crit_edge
  %.0949.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.rc, %.preheader79.loopexit.i ], [ %i.ez, %.lr.ph103.i ] ; 6 uses
  %i.rd = or disjoint i32 %.0949.lcssa.i, 3
  %i.re = icmp slt i32 %i.rd, %.sroa.speculated120
  br i1 %i.re, label %.lr.ph150.i, label %.preheader77.i

.lr.ph150.i:                                      ; preds = %.preheader79.i
  %i.rf = icmp sgt i32 %.sroa.speculated116, 0
  %i.rg = shl nuw nsw i32 %.sroa.speculated116, 2
  %21 = zext nneg i32 %i.rg to i64
  %i.rh = shl nuw nsw i32 %.sroa.speculated116, 3
  %22 = zext nneg i32 %i.rh to i64
  %i.ri = mul nuw nsw i32 %.sroa.speculated116, 12
  %23 = zext nneg i32 %i.ri to i64
  %i.rj = shl nuw nsw i32 %.sroa.speculated116, 4
  %24 = zext nneg i32 %i.rj to i64
  %i.rk = mul nuw nsw i32 %.sroa.speculated116, 20
  %25 = zext nneg i32 %i.rk to i64
  %i.rl = mul nuw nsw i32 %.sroa.speculated116, 24
  %26 = zext nneg i32 %i.rl to i64                ; 30 uses
  %.idx.i = shl i64 %i.fp, 3
  %.idx1026.i = mul i64 %i.fp, 12
  %i.rm = mul nsw i32 %i.fm, %i.fk
  %i.rn = sext i32 %i.rm to i64
  br i1 %i.rf, label %.lr.ph.us153.preheader.i, label %.lr.ph150.split.preheader.i

.lr.ph150.split.preheader.i:                      ; preds = %.lr.ph150.i
  %i.ro = add i32 %.0949.lcssa.i, 7
  %smax.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %i.ro)
  %reass.sub = sub i32 %smax.i, %.0949.lcssa.i
  %i.rp = and i32 %reass.sub, -4
  %i.rq = add i32 %.0949.lcssa.i, %i.rp
  br label %.preheader77.i

.lr.ph.us153.preheader.i:                         ; preds = %.lr.ph150.i
  %i.rr = sext i32 %.0949.lcssa.i to i64
  %wide.trip.count378.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us153.i

.lr.ph.us153.i:                                   ; preds = %._crit_edge.us154.i, %.lr.ph.us153.preheader.i
  %indvars.iv380.i = phi i64 [ %i.rr, %.lr.ph.us153.preheader.i ], [ %indvars.iv.next381.i, %._crit_edge.us154.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.rs = trunc nsw i64 %indvars.iv380.i to i32   ; 2 uses
  %factor.op.mul.reass.us152.i = mul i32 %factor.op.mul100.i, %i.rs
  %i.rt = sext i32 %factor.op.mul.reass.us152.i to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.rt
  %i.rv = add i32 %i.ek, %i.rs
  %i.rw = sdiv i32 %i.rv, %i.fm
  %i.rx = sext i32 %i.rw to i64
  br label %.preheader78.us.i

.preheader78.us.i:                                ; preds = %bb.ar, %.lr.ph.us153.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph.us153.i ], [ %indvars.iv.next376.i, %bb.ar ] ; 3 uses
  %.idx423.i = shl nuw nsw i64 %indvars.iv375.i, 4
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx423.i ; 7 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %21 ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %22 ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %23 ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %24 ; 2 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %25 ; 2 uses
  %i.se = load <4 x i32>, ptr %i.ry, align 16, !tbaa !20
  %i.sf = load <4 x i32>, ptr %i.rz, align 16, !tbaa !20 ; 2 uses
  %i.sg = load <4 x i32>, ptr %i.sa, align 16, !tbaa !20 ; 2 uses
  %i.sh = load <4 x i32>, ptr %i.sb, align 16, !tbaa !20 ; 2 uses
  %i.si = load <4 x i32>, ptr %i.sc, align 16, !tbaa !20 ; 2 uses
  %i.sj = load <4 x i32>, ptr %i.sd, align 16, !tbaa !20
  %i.sk = add <4 x i32> %i.sg, %i.sf              ; 2 uses
  %i.sl = add <4 x i32> %i.si, %i.sh              ; 2 uses
  %i.sm = sub <4 x i32> %i.sf, %i.sg              ; 2 uses
  %i.sn = sub <4 x i32> %i.sh, %i.si              ; 2 uses
  %i.so = add <4 x i32> %i.sk, %i.se
  %i.sp = add <4 x i32> %i.so, %i.sl
  %i.sq = shl <4 x i32> %i.sn, splat (i32 1)
  %i.sr = add <4 x i32> %i.sq, %i.sm
  %i.ss = shl <4 x i32> %i.sl, splat (i32 2)
  %i.st = add <4 x i32> %i.ss, %i.sk
  %i.su = shl <4 x i32> %i.sn, splat (i32 3)
  %i.sv = add <4 x i32> %i.su, %i.sm
  %i.sw = shl <4 x i32> %i.sj, splat (i32 2)
  %i.sx = add <4 x i32> %i.sv, %i.sw
  store <4 x i32> %i.sp, ptr %i.b, align 16, !tbaa !20
  store <4 x i32> %i.sr, ptr %i.bs, align 16, !tbaa !20
  store <4 x i32> %i.st, ptr %i.bt, align 16, !tbaa !20
  store <4 x i32> %i.sx, ptr %i.bu, align 16, !tbaa !20
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.ry, i64 %26 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %26 ; 2 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %26 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %26 ; 2 uses
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %26 ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %26 ; 2 uses
  %i.te = load <4 x i32>, ptr %i.sy, align 16, !tbaa !20
  %i.tf = load <4 x i32>, ptr %i.sz, align 16, !tbaa !20 ; 2 uses
  %i.tg = load <4 x i32>, ptr %i.ta, align 16, !tbaa !20 ; 2 uses
  %i.th = load <4 x i32>, ptr %i.tb, align 16, !tbaa !20 ; 2 uses
  %i.ti = load <4 x i32>, ptr %i.tc, align 16, !tbaa !20 ; 2 uses
  %i.tj = load <4 x i32>, ptr %i.td, align 16, !tbaa !20
  %i.tk = add <4 x i32> %i.tg, %i.tf              ; 2 uses
  %i.tl = add <4 x i32> %i.ti, %i.th              ; 2 uses
  %i.tm = sub <4 x i32> %i.tf, %i.tg              ; 2 uses
  %i.tn = sub <4 x i32> %i.th, %i.ti              ; 2 uses
  %i.to = add <4 x i32> %i.tk, %i.te
  %i.tp = add <4 x i32> %i.to, %i.tl
  %i.tq = shl <4 x i32> %i.tn, splat (i32 1)
  %i.tr = add <4 x i32> %i.tq, %i.tm
  %i.ts = shl <4 x i32> %i.tl, splat (i32 2)
  %i.tt = add <4 x i32> %i.ts, %i.tk
  %i.tu = shl <4 x i32> %i.tn, splat (i32 3)
  %i.tv = add <4 x i32> %i.tu, %i.tm
  %i.tw = shl <4 x i32> %i.tj, splat (i32 2)
  %i.tx = add <4 x i32> %i.tv, %i.tw
  store <4 x i32> %i.tp, ptr %i.bz, align 16, !tbaa !20
  store <4 x i32> %i.tr, ptr %i.ca, align 16, !tbaa !20
  store <4 x i32> %i.tt, ptr %i.cb, align 16, !tbaa !20
  store <4 x i32> %i.tx, ptr %i.cc, align 16, !tbaa !20
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %26 ; 2 uses
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %26 ; 2 uses
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %26 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %26 ; 2 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %26 ; 2 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %26 ; 2 uses
  %i.ue = load <4 x i32>, ptr %i.ty, align 16, !tbaa !20
  %i.uf = load <4 x i32>, ptr %i.tz, align 16, !tbaa !20 ; 2 uses
  %i.ug = load <4 x i32>, ptr %i.ua, align 16, !tbaa !20 ; 2 uses
  %i.uh = load <4 x i32>, ptr %i.ub, align 16, !tbaa !20 ; 2 uses
  %i.ui = load <4 x i32>, ptr %i.uc, align 16, !tbaa !20 ; 2 uses
  %i.uj = load <4 x i32>, ptr %i.ud, align 16, !tbaa !20
  %i.uk = add <4 x i32> %i.ug, %i.uf              ; 2 uses
  %i.ul = add <4 x i32> %i.ui, %i.uh              ; 2 uses
  %i.um = sub <4 x i32> %i.uf, %i.ug              ; 2 uses
  %i.un = sub <4 x i32> %i.uh, %i.ui              ; 2 uses
  %i.uo = add <4 x i32> %i.uk, %i.ue
  %i.up = add <4 x i32> %i.uo, %i.ul
  %i.uq = shl <4 x i32> %i.un, splat (i32 1)
  %i.ur = add <4 x i32> %i.uq, %i.um
  %i.us = shl <4 x i32> %i.ul, splat (i32 2)
  %i.ut = add <4 x i32> %i.us, %i.uk
  %i.uu = shl <4 x i32> %i.un, splat (i32 3)
  %i.uv = add <4 x i32> %i.uu, %i.um
  %i.uw = shl <4 x i32> %i.uj, splat (i32 2)
  %i.ux = add <4 x i32> %i.uv, %i.uw
  store <4 x i32> %i.up, ptr %i.cd, align 16, !tbaa !20
  store <4 x i32> %i.ur, ptr %i.ce, align 16, !tbaa !20
  store <4 x i32> %i.ut, ptr %i.cf, align 16, !tbaa !20
  store <4 x i32> %i.ux, ptr %i.cg, align 16, !tbaa !20
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %26 ; 2 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %26 ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %26 ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %26 ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %26 ; 2 uses
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %26 ; 2 uses
  %i.ve = load <4 x i32>, ptr %i.uy, align 16, !tbaa !20
  %i.vf = load <4 x i32>, ptr %i.uz, align 16, !tbaa !20 ; 2 uses
  %i.vg = load <4 x i32>, ptr %i.va, align 16, !tbaa !20 ; 2 uses
  %i.vh = load <4 x i32>, ptr %i.vb, align 16, !tbaa !20 ; 2 uses
  %i.vi = load <4 x i32>, ptr %i.vc, align 16, !tbaa !20 ; 2 uses
  %i.vj = load <4 x i32>, ptr %i.vd, align 16, !tbaa !20
  %i.vk = add <4 x i32> %i.vg, %i.vf              ; 2 uses
  %i.vl = add <4 x i32> %i.vi, %i.vh              ; 2 uses
  %i.vm = sub <4 x i32> %i.vf, %i.vg              ; 2 uses
  %i.vn = sub <4 x i32> %i.vh, %i.vi              ; 2 uses
  %i.vo = add <4 x i32> %i.vk, %i.ve
  %i.vp = add <4 x i32> %i.vo, %i.vl
  %i.vq = shl <4 x i32> %i.vn, splat (i32 1)
  %i.vr = add <4 x i32> %i.vq, %i.vm
  %i.vs = shl <4 x i32> %i.vl, splat (i32 2)
  %i.vt = add <4 x i32> %i.vs, %i.vk
  %i.vu = shl <4 x i32> %i.vn, splat (i32 3)
  %i.vv = add <4 x i32> %i.vu, %i.vm
  %i.vw = shl <4 x i32> %i.vj, splat (i32 2)
  %i.vx = add <4 x i32> %i.vv, %i.vw
  store <4 x i32> %i.vp, ptr %i.ch, align 16, !tbaa !20
  store <4 x i32> %i.vr, ptr %i.ci, align 16, !tbaa !20
  store <4 x i32> %i.vt, ptr %i.cj, align 16, !tbaa !20
  store <4 x i32> %i.vx, ptr %i.ck, align 16, !tbaa !20
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %26 ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %26 ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %26 ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %26 ; 2 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %26 ; 2 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %26 ; 2 uses
  %i.we = load <4 x i32>, ptr %i.vy, align 16, !tbaa !20
  %i.wf = load <4 x i32>, ptr %i.vz, align 16, !tbaa !20 ; 2 uses
  %i.wg = load <4 x i32>, ptr %i.wa, align 16, !tbaa !20 ; 2 uses
  %i.wh = load <4 x i32>, ptr %i.wb, align 16, !tbaa !20 ; 2 uses
  %i.wi = load <4 x i32>, ptr %i.wc, align 16, !tbaa !20 ; 2 uses
  %i.wj = load <4 x i32>, ptr %i.wd, align 16, !tbaa !20
  %i.wk = add <4 x i32> %i.wg, %i.wf              ; 2 uses
  %i.wl = add <4 x i32> %i.wi, %i.wh              ; 2 uses
  %i.wm = sub <4 x i32> %i.wf, %i.wg              ; 2 uses
  %i.wn = sub <4 x i32> %i.wh, %i.wi              ; 2 uses
  %i.wo = add <4 x i32> %i.wk, %i.we
  %i.wp = add <4 x i32> %i.wo, %i.wl
  %i.wq = shl <4 x i32> %i.wn, splat (i32 1)
  %i.wr = add <4 x i32> %i.wq, %i.wm
  %i.ws = shl <4 x i32> %i.wl, splat (i32 2)
  %i.wt = add <4 x i32> %i.ws, %i.wk
  %i.wu = shl <4 x i32> %i.wn, splat (i32 3)
  %i.wv = add <4 x i32> %i.wu, %i.wm
  %i.ww = shl <4 x i32> %i.wj, splat (i32 2)
  %i.wx = add <4 x i32> %i.wv, %i.ww
  store <4 x i32> %i.wp, ptr %i.cl, align 16, !tbaa !20
  store <4 x i32> %i.wr, ptr %i.cm, align 16, !tbaa !20
  store <4 x i32> %i.wt, ptr %i.cn, align 16, !tbaa !20
  store <4 x i32> %i.wx, ptr %i.co, align 16, !tbaa !20
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %26
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.vz, i64 %26
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wa, i64 %26
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %26
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %26
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %26
  %i.xe = trunc i64 %indvars.iv375.i to i32
  %i.xf = add i32 %.044130, %i.xe                 ; 2 uses
  %i.xg = sdiv i32 %i.xf, %i.fr
  %i.xh = srem i32 %i.xf, %i.fr
  %i.xi = load <4 x i32>, ptr %i.wy, align 16, !tbaa !20
  %i.xj = load <4 x i32>, ptr %i.wz, align 16, !tbaa !20 ; 2 uses
  %i.xk = load <4 x i32>, ptr %i.xa, align 16, !tbaa !20 ; 2 uses
  %i.xl = load <4 x i32>, ptr %i.xb, align 16, !tbaa !20 ; 2 uses
  %i.xm = load <4 x i32>, ptr %i.xc, align 16, !tbaa !20 ; 2 uses
  %i.xn = load <4 x i32>, ptr %i.xd, align 16, !tbaa !20
end_hunk_5
begin_hunk_6_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  store <4 x i32> %i.ye, ptr %i.by, align 16, !tbaa !20
  %i.yf = load i32, ptr %i.aq, align 4, !tbaa !93, !noalias !728
  %i.yg = load ptr, ptr %12, align 8, !tbaa !9, !noalias !728
  %i.yh = load i64, ptr %i.at, align 8, !tbaa !18, !noalias !728
  %i.yi = mul i64 %i.yh, %i.rx
  %i.yj = load i64, ptr %i.bb, align 8, !tbaa !19, !noalias !728 ; 2 uses
  %i.yk = mul i64 %i.yi, %i.yj
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.yk
  %i.ym = sext i32 %i.yf to i64
  %i.yn = shl nsw i32 %i.xg, 2                    ; 2 uses
  %i.yo = sext i32 %i.yn to i64
  %i.yp = mul nsw i64 %i.ym, %i.yo
  %i.yq = mul i64 %i.yp, %i.yj
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.yq
  %i.ys = shl nsw i32 %i.xh, 2                    ; 4 uses
  %i.yt = mul nsw i32 %i.ys, %i.fm
  %i.yu = sext i32 %i.yt to i64
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.yr, i64 %i.yu
  %i.yw = or disjoint i32 %i.ys, 1
  %i.yx = icmp slt i32 %i.yw, %i.fk               ; 2 uses
  %i.yy = or disjoint i32 %i.ys, 2
  %i.yz = icmp slt i32 %i.yy, %i.fk               ; 2 uses
  %i.za = or disjoint i32 %i.ys, 3
  %i.zb = icmp slt i32 %i.za, %i.fk               ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aq, %.preheader78.us.i
  %indvars.iv371.i = phi i64 [ %indvars.iv.next372.i, %bb.aq ], [ 0, %.preheader78.us.i ] ; 3 uses
  %.01004145.us.i = phi ptr [ %.11005.us.i, %bb.aq ], [ %i.yv, %.preheader78.us.i ] ; 13 uses
  %i.zc = trunc i64 %indvars.iv371.i to i32
  %i.zd = or i32 %i.yn, %i.zc
  %.not1025.us.i = icmp slt i32 %i.zd, %i.fl
  br i1 %.not1025.us.i, label %bb.ac, label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  %i.ze = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %indvars.iv371.i ; 6 uses
  %i.zf = load <4 x i32>, ptr %i.ze, align 16, !tbaa !20
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  %i.zh = load <4 x i32>, ptr %i.zg, align 16, !tbaa !20 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  %i.zj = load <4 x i32>, ptr %i.zi, align 16, !tbaa !20 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.ze, i64 48
  %i.zl = load <4 x i32>, ptr %i.zk, align 16, !tbaa !20 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.ze, i64 64
  %i.zn = load <4 x i32>, ptr %i.zm, align 16, !tbaa !20 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ze, i64 80
  %i.zp = load <4 x i32>, ptr %i.zo, align 16, !tbaa !20
  %i.zq = add <4 x i32> %i.zj, %i.zh              ; 2 uses
  %i.zr = add <4 x i32> %i.zn, %i.zl              ; 2 uses
  %i.zs = sub <4 x i32> %i.zh, %i.zj              ; 2 uses
  %i.zt = sub <4 x i32> %i.zl, %i.zn              ; 2 uses
  %i.zu = add <4 x i32> %i.zq, %i.zf
  %i.zv = add <4 x i32> %i.zu, %i.zr
  %i.zw = shl <4 x i32> %i.zt, splat (i32 1)
  %i.zx = add <4 x i32> %i.zw, %i.zs
  %i.zy = shl <4 x i32> %i.zr, splat (i32 2)
  %i.zz = add <4 x i32> %i.zy, %i.zq
  %i.aaa = shl <4 x i32> %i.zt, splat (i32 3)
  %i.aab = add <4 x i32> %i.zp, %i.zs
  %i.aac = add <4 x i32> %i.aab, %i.aaa
  %i.aad = sitofp fast <4 x i32> %i.zv to <4 x float>
  %i.aae = fmul fast <4 x float> %i.aad, splat (float f0x3AE38E39)
  %i.aaf = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aae) ; 5 uses
  %i.aag = sitofp fast <4 x i32> %i.zx to <4 x float>
  %i.aah = fmul fast <4 x float> %i.aag, splat (float f0x3AE38E39)
  %i.aai = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aah) ; 5 uses
  %i.aaj = sitofp fast <4 x i32> %i.zz to <4 x float>
  %i.aak = fmul fast <4 x float> %i.aaj, splat (float f0x3AE38E39)
  %i.aal = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aak) ; 5 uses
  %i.aam = sitofp fast <4 x i32> %i.aac to <4 x float>
  %i.aan = fmul fast <4 x float> %i.aam, splat (float f0x3AE38E39)
  %i.aao = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aan) ; 5 uses
  switch i32 %i.fm, label %bb.ap [
    i32 4, label %bb.aj
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.01004145.us.i, i64 %i.fp ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 %.idx.i ; 4 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 %.idx1026.i ; 4 uses
  %.sroa.026.0.vec.extract.us.i = extractelement <4 x i32> %i.aaf, i64 0
  store i32 %.sroa.026.0.vec.extract.us.i, ptr %.01004145.us.i, align 4, !tbaa !92
  %.sroa.026.4.vec.extract.us.i = extractelement <4 x i32> %i.aaf, i64 1
  store i32 %.sroa.026.4.vec.extract.us.i, ptr %i.aap, align 4, !tbaa !92
  %.sroa.026.8.vec.extract.us.i = extractelement <4 x i32> %i.aaf, i64 2
  store i32 %.sroa.026.8.vec.extract.us.i, ptr %i.aaq, align 4, !tbaa !92
  %.sroa.026.12.vec.extract.us.i = extractelement <4 x i32> %i.aaf, i64 3
  store i32 %.sroa.026.12.vec.extract.us.i, ptr %i.aar, align 4, !tbaa !92
  br i1 %i.yx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.sroa.728.16.vec.extract.us.i = extractelement <4 x i32> %i.aai, i64 0
  %i.aas = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 4
  store i32 %.sroa.728.16.vec.extract.us.i, ptr %i.aas, align 4, !tbaa !92
  %.sroa.728.20.vec.extract.us.i = extractelement <4 x i32> %i.aai, i64 1
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  store i32 %.sroa.728.20.vec.extract.us.i, ptr %i.aat, align 4, !tbaa !92
  %.sroa.728.24.vec.extract.us.i = extractelement <4 x i32> %i.aai, i64 2
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aaq, i64 4
  store i32 %.sroa.728.24.vec.extract.us.i, ptr %i.aau, align 4, !tbaa !92
  %.sroa.728.28.vec.extract.us.i = extractelement <4 x i32> %i.aai, i64 3
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 4
  store i32 %.sroa.728.28.vec.extract.us.i, ptr %i.aav, align 4, !tbaa !92
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %i.yz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x i32> %i.aal, i64 0
  %i.aaw = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 8
  store i32 %.sroa.12.32.vec.extract.us.i, ptr %i.aaw, align 4, !tbaa !92
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x i32> %i.aal, i64 1
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  store i32 %.sroa.12.36.vec.extract.us.i, ptr %i.aax, align 4, !tbaa !92
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x i32> %i.aal, i64 2
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  store i32 %.sroa.12.40.vec.extract.us.i, ptr %i.aay, align 4, !tbaa !92
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x i32> %i.aal, i64 3
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  store i32 %.sroa.12.44.vec.extract.us.i, ptr %i.aaz, align 4, !tbaa !92
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.zb, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %.sroa.1731.48.vec.extract.us.i = extractelement <4 x i32> %i.aao, i64 0
  %i.aba = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 12
  store i32 %.sroa.1731.48.vec.extract.us.i, ptr %i.aba, align 4, !tbaa !92
  %.sroa.1731.52.vec.extract.us.i = extractelement <4 x i32> %i.aao, i64 1
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aap, i64 12
  store i32 %.sroa.1731.52.vec.extract.us.i, ptr %i.abb, align 4, !tbaa !92
  %.sroa.1731.56.vec.extract.us.i = extractelement <4 x i32> %i.aao, i64 2
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaq, i64 12
  store i32 %.sroa.1731.56.vec.extract.us.i, ptr %i.abc, align 4, !tbaa !92
  %.sroa.1731.60.vec.extract.us.i = extractelement <4 x i32> %i.aao, i64 3
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aar, i64 12
  store i32 %.sroa.1731.60.vec.extract.us.i, ptr %i.abd, align 4, !tbaa !92
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ac
  store <4 x i32> %i.aaf, ptr %.01004145.us.i, align 16, !tbaa !20
  br i1 %i.yx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.abe = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 16
  store <4 x i32> %i.aai, ptr %i.abe, align 16, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %i.yz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.abf = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 32
  store <4 x i32> %i.aal, ptr %i.abf, align 16, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.zb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.abg = getelementptr inbounds nuw i8, ptr %.01004145.us.i, i64 48
  store <4 x i32> %i.aao, ptr %i.abg, align 16, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ai, %bb.ah, %bb.ac
  %i.abh = getelementptr inbounds [4 x i8], ptr %.01004145.us.i, i64 %i.rn
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ab
  %.11005.us.i = phi ptr [ %.01004145.us.i, %bb.ab ], [ %i.abh, %bb.ap ]
  %indvars.iv.next372.i = add nuw nsw i64 %indvars.iv371.i, 1 ; 2 uses
  %exitcond374.not.i = icmp eq i64 %indvars.iv.next372.i, 4
  br i1 %exitcond374.not.i, label %bb.ar, label %bb.ab, !llvm.loop !731

bb.ar:                                            ; preds = %bb.aq
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %wide.trip.count378.i
  br i1 %exitcond379.not.i, label %._crit_edge.us154.i, label %.preheader78.us.i, !llvm.loop !732

._crit_edge.us154.i:                              ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %indvars.iv.next381.i = add nuw nsw i64 %indvars.iv380.i, 4 ; 3 uses
  %i.abi = icmp slt i64 %indvars.iv.next381.i, %invariant.op.i
  br i1 %i.abi, label %.lr.ph.us153.i, label %.preheader77.loopexit.i, !llvm.loop !733

.preheader77.loopexit.i:                          ; preds = %._crit_edge.us154.i
  %i.abj = trunc nsw i64 %indvars.iv.next381.i to i32
  br label %.preheader77.i

.preheader77.i:                                   ; preds = %.preheader77.loopexit.i, %.lr.ph150.split.preheader.i, %.preheader79.i
  %.1950.lcssa.i = phi i32 [ %.0949.lcssa.i, %.preheader79.i ], [ %i.abj, %.preheader77.loopexit.i ], [ %i.rq, %.lr.ph150.split.preheader.i ] ; 6 uses
  %i.abk = or disjoint i32 %.1950.lcssa.i, 1
  %i.abl = icmp slt i32 %i.abk, %.sroa.speculated120
  br i1 %i.abl, label %.lr.ph206.i, label %.preheader75.i

.lr.ph206.i:                                      ; preds = %.preheader77.i
  %i.abm = icmp sgt i32 %.sroa.speculated116, 0
  %i.abn = shl nuw nsw i32 %.sroa.speculated116, 1
  %27 = zext nneg i32 %i.abn to i64
  %i.abo = shl nuw nsw i32 %.sroa.speculated116, 2
  %28 = zext nneg i32 %i.abo to i64
  %i.abp = mul nuw nsw i32 %.sroa.speculated116, 6
  %29 = zext nneg i32 %i.abp to i64
  %i.abq = shl nuw nsw i32 %.sroa.speculated116, 3
  %30 = zext nneg i32 %i.abq to i64
  %i.abr = mul nuw nsw i32 %.sroa.speculated116, 10
  %31 = zext nneg i32 %i.abr to i64
  %i.abs = mul nuw nsw i32 %.sroa.speculated116, 12
  %32 = zext nneg i32 %i.abs to i64               ; 30 uses
  %i.abt = sext i32 %i.fk to i64
  br i1 %i.abm, label %.lr.ph206.split.us.i, label %.lr.ph206.split.preheader.i

.lr.ph206.split.preheader.i:                      ; preds = %.lr.ph206.i
  %i.abu = add i32 %.1950.lcssa.i, 3
  %smax383.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated120, i32 %i.abu)
  %reass.sub136 = sub i32 %smax383.i, %.1950.lcssa.i
  %i.abv = and i32 %reass.sub136, -2
  %i.abw = add i32 %.1950.lcssa.i, %i.abv
  br label %.preheader75.i

.lr.ph206.split.us.i:                             ; preds = %.lr.ph206.i
  %i.abx = load ptr, ptr %12, align 8, !tbaa !9, !noalias !734
  %i.aby = load i64, ptr %i.at, align 8, !tbaa !18, !noalias !734
  %i.abz = load i64, ptr %i.bb, align 8, !tbaa !19, !noalias !734 ; 2 uses
  %factor.op.mul.i = mul i64 %i.abz, %i.aby
  %i.aca = sext i32 %.1950.lcssa.i to i64
  %wide.trip.count395.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us209.i

.lr.ph.us209.i:                                   ; preds = %._crit_edge.us210.i, %.lr.ph206.split.us.i
  %indvars.iv397.i = phi i64 [ %indvars.iv.next398.i, %._crit_edge.us210.i ], [ %i.aca, %.lr.ph206.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.acb = trunc nsw i64 %indvars.iv397.i to i32
  %factor.op.mul.reass.us208.i = mul i32 %factor.op.mul100.i, %i.acb
  %i.acc = sext i32 %factor.op.mul.reass.us208.i to i64
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.acc
  %i.ace = add nsw i64 %indvars.iv397.i, %i.fc
  %.reass.i = mul i64 %factor.op.mul.i, %i.ace
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abx, i64 %.reass.i
  br label %.preheader76.us.i

.preheader76.us.i:                                ; preds = %bb.bb, %.lr.ph.us209.i
  %indvars.iv392.i = phi i64 [ 0, %.lr.ph.us209.i ], [ %indvars.iv.next393.i, %bb.bb ] ; 3 uses
  %.idx424.i = shl nuw nsw i64 %indvars.iv392.i, 3
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 %.idx424.i ; 8 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %27 ; 3 uses
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %28 ; 3 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %29 ; 3 uses
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %30 ; 3 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %31 ; 3 uses
  %i.acm = load i32, ptr %i.ach, align 4, !tbaa !92 ; 2 uses
  %i.acn = load i32, ptr %i.aci, align 4, !tbaa !92 ; 2 uses
  %i.aco = add nsw i32 %i.acn, %i.acm             ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !92 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !92 ; 2 uses
  %i.act = add nsw i32 %i.acs, %i.acq             ; 2 uses
  %i.acu = load i32, ptr %i.acj, align 4, !tbaa !92 ; 2 uses
  %i.acv = load i32, ptr %i.ack, align 4, !tbaa !92 ; 2 uses
  %i.acw = add nsw i32 %i.acv, %i.acu             ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !92 ; 2 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !92 ; 2 uses
  %i.adb = add nsw i32 %i.ada, %i.acy             ; 2 uses
  %i.adc = sub nsw i32 %i.acm, %i.acn             ; 2 uses
  %i.add = sub nsw i32 %i.acq, %i.acs             ; 2 uses
  %i.ade = sub nsw i32 %i.acu, %i.acv             ; 2 uses
  %i.adf = sub nsw i32 %i.acy, %i.ada             ; 2 uses
  %i.adg = add nsw i32 %i.acw, %i.aco
  %i.adh = load i32, ptr %i.acg, align 4, !tbaa !92
  %i.adi = add nsw i32 %i.adg, %i.adh
  %i.adj = add nsw i32 %i.adb, %i.act
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !92
  %i.adm = add nsw i32 %i.adj, %i.adl
  %i.adn = shl nsw i32 %i.ade, 1
  %i.ado = add nsw i32 %i.adn, %i.adc
  %i.adp = shl nsw i32 %i.adf, 1
  %i.adq = add nsw i32 %i.adp, %i.add
  %i.adr = shl nsw i32 %i.acw, 2
  %i.ads = add nsw i32 %i.adr, %i.aco
  %i.adt = shl nsw i32 %i.adb, 2
  %i.adu = add nsw i32 %i.adt, %i.act
  %i.adv = shl nsw i32 %i.ade, 3
  %i.adw = add nsw i32 %i.adv, %i.adc
  %i.adx = load i32, ptr %i.acl, align 4, !tbaa !92
  %i.ady = shl nsw i32 %i.adx, 2
  %i.adz = add nsw i32 %i.adw, %i.ady
  %i.aea = shl nsw i32 %i.adf, 3
  %i.aeb = add nsw i32 %i.aea, %i.add
  %i.aec = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !92
  %i.aee = shl nsw i32 %i.aed, 2
  %i.aef = add nsw i32 %i.aeb, %i.aee
  store i32 %i.adi, ptr %i.c, align 16, !tbaa !92
  store i32 %i.adm, ptr %i.cz, align 4, !tbaa !92
  store i32 %i.ado, ptr %i.cp, align 16, !tbaa !92
  store i32 %i.adq, ptr %i.da, align 4, !tbaa !92
  store i32 %i.ads, ptr %i.cq, align 16, !tbaa !92
  store i32 %i.adu, ptr %i.db, align 4, !tbaa !92
  store i32 %i.adz, ptr %i.cr, align 16, !tbaa !92
  store i32 %i.aef, ptr %i.dc, align 4, !tbaa !92
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.acg, i64 %32 ; 3 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.ach, i64 %32 ; 3 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %32 ; 3 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %32 ; 3 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.ack, i64 %32 ; 3 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %32 ; 3 uses
  %i.aem = load i32, ptr %i.aeh, align 4, !tbaa !92 ; 2 uses
  %i.aen = load i32, ptr %i.aei, align 4, !tbaa !92 ; 2 uses
  %i.aeo = add nsw i32 %i.aen, %i.aem             ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeh, i64 4
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !92 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aei, i64 4
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !92 ; 2 uses
  %i.aet = add nsw i32 %i.aes, %i.aeq             ; 2 uses
  %i.aeu = load i32, ptr %i.aej, align 4, !tbaa !92 ; 2 uses
  %i.aev = load i32, ptr %i.aek, align 4, !tbaa !92 ; 2 uses
  %i.aew = add nsw i32 %i.aev, %i.aeu             ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aej, i64 4
  %i.aey = load i32, ptr %i.aex, align 4, !tbaa !92 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aek, i64 4
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !92 ; 2 uses
  %i.afb = add nsw i32 %i.afa, %i.aey             ; 2 uses
  %i.afc = sub nsw i32 %i.aem, %i.aen             ; 2 uses
  %i.afd = sub nsw i32 %i.aeq, %i.aes             ; 2 uses
  %i.afe = sub nsw i32 %i.aeu, %i.aev             ; 2 uses
  %i.aff = sub nsw i32 %i.aey, %i.afa             ; 2 uses
  %i.afg = add nsw i32 %i.aew, %i.aeo
  %i.afh = load i32, ptr %i.aeg, align 4, !tbaa !92
  %i.afi = add nsw i32 %i.afg, %i.afh
  %i.afj = add nsw i32 %i.afb, %i.aet
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aeg, i64 4
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !92
  %i.afm = add nsw i32 %i.afj, %i.afl
  %i.afn = shl nsw i32 %i.afe, 1
  %i.afo = add nsw i32 %i.afn, %i.afc
  %i.afp = shl nsw i32 %i.aff, 1
  %i.afq = add nsw i32 %i.afp, %i.afd
  %i.afr = shl nsw i32 %i.aew, 2
  %i.afs = add nsw i32 %i.afr, %i.aeo
  %i.aft = shl nsw i32 %i.afb, 2
  %i.afu = add nsw i32 %i.aft, %i.aet
  %i.afv = shl nsw i32 %i.afe, 3
  %i.afw = add nsw i32 %i.afv, %i.afc
  %i.afx = load i32, ptr %i.ael, align 4, !tbaa !92
  %i.afy = shl nsw i32 %i.afx, 2
  %i.afz = add nsw i32 %i.afw, %i.afy
  %i.aga = shl nsw i32 %i.aff, 3
  %i.agb = add nsw i32 %i.aga, %i.afd
  %i.agc = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !92
  %i.age = shl nsw i32 %i.agd, 2
  %i.agf = add nsw i32 %i.agb, %i.age
  store i32 %i.afi, ptr %i.dd, align 8, !tbaa !92
  store i32 %i.afm, ptr %i.de, align 4, !tbaa !92
  store i32 %i.afo, ptr %i.df, align 8, !tbaa !92
  store i32 %i.afq, ptr %i.dg, align 4, !tbaa !92
  store i32 %i.afs, ptr %i.dh, align 8, !tbaa !92
  store i32 %i.afu, ptr %i.di, align 4, !tbaa !92
  store i32 %i.afz, ptr %i.dj, align 8, !tbaa !92
  store i32 %i.agf, ptr %i.dk, align 4, !tbaa !92
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.aeg, i64 %32 ; 3 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %32 ; 3 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %32 ; 3 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.aej, i64 %32 ; 3 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %32 ; 3 uses
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %32 ; 3 uses
  %i.agm = load i32, ptr %i.agh, align 4, !tbaa !92 ; 2 uses
  %i.agn = load i32, ptr %i.agi, align 4, !tbaa !92 ; 2 uses
  %i.ago = add nsw i32 %i.agn, %i.agm             ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !92 ; 2 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agi, i64 4
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !92 ; 2 uses
  %i.agt = add nsw i32 %i.ags, %i.agq             ; 2 uses
  %i.agu = load i32, ptr %i.agj, align 4, !tbaa !92 ; 2 uses
  %i.agv = load i32, ptr %i.agk, align 4, !tbaa !92 ; 2 uses
  %i.agw = add nsw i32 %i.agv, %i.agu             ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agj, i64 4
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !92 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !92 ; 2 uses
  %i.ahb = add nsw i32 %i.aha, %i.agy             ; 2 uses
  %i.ahc = sub nsw i32 %i.agm, %i.agn             ; 2 uses
  %i.ahd = sub nsw i32 %i.agq, %i.ags             ; 2 uses
  %i.ahe = sub nsw i32 %i.agu, %i.agv             ; 2 uses
  %i.ahf = sub nsw i32 %i.agy, %i.aha             ; 2 uses
  %i.ahg = add nsw i32 %i.agw, %i.ago
  %i.ahh = load i32, ptr %i.agg, align 4, !tbaa !92
  %i.ahi = add nsw i32 %i.ahg, %i.ahh
  %i.ahj = add nsw i32 %i.ahb, %i.agt
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agg, i64 4
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !92
  %i.ahm = add nsw i32 %i.ahj, %i.ahl
  %i.ahn = shl nsw i32 %i.ahe, 1
  %i.aho = add nsw i32 %i.ahn, %i.ahc
  %i.ahp = shl nsw i32 %i.ahf, 1
  %i.ahq = add nsw i32 %i.ahp, %i.ahd
  %i.ahr = shl nsw i32 %i.agw, 2
  %i.ahs = add nsw i32 %i.ahr, %i.ago
  %i.aht = shl nsw i32 %i.ahb, 2
  %i.ahu = add nsw i32 %i.aht, %i.agt
  %i.ahv = shl nsw i32 %i.ahe, 3
  %i.ahw = add nsw i32 %i.ahv, %i.ahc
  %i.ahx = load i32, ptr %i.agl, align 4, !tbaa !92
  %i.ahy = shl nsw i32 %i.ahx, 2
end_hunk_6
begin_hunk_7_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.amq = load i32, ptr %i.amg, align 4, !tbaa !92
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amg, i64 4
  %i.ams = load i32, ptr %i.amr, align 4, !tbaa !92
  %i.amt = load <2 x i32>, ptr %i.amh, align 4, !tbaa !92 ; 3 uses
  %i.amu = load <2 x i32>, ptr %i.ami, align 4, !tbaa !92 ; 3 uses
  %foldExtExtBinop = add nsw <2 x i32> %i.amu, %i.amt
  %i.amv = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop144 = add nsw <2 x i32> %i.amu, %i.amt
  %i.amw = extractelement <2 x i32> %foldExtExtBinop144, i64 1 ; 2 uses
  %i.amx = load <2 x i32>, ptr %i.amj, align 4, !tbaa !92 ; 3 uses
  %i.amy = load <2 x i32>, ptr %i.amk, align 4, !tbaa !92 ; 3 uses
  %foldExtExtBinop146 = add nsw <2 x i32> %i.amy, %i.amx
  %i.amz = extractelement <2 x i32> %foldExtExtBinop146, i64 0 ; 2 uses
  %foldExtExtBinop148 = add nsw <2 x i32> %i.amy, %i.amx
  %i.ana = extractelement <2 x i32> %foldExtExtBinop148, i64 1 ; 2 uses
  %i.anb = sub nsw <2 x i32> %i.amt, %i.amu
  %i.anc = sub nsw <2 x i32> %i.amx, %i.amy       ; 3 uses
  %i.and = add nsw i32 %i.amz, %i.amv
  %i.ane = add nsw i32 %i.and, %i.amq
  %i.anf = add nsw i32 %i.ana, %i.amw
  %i.ang = add nsw i32 %i.anf, %i.ams
  %i.anh = load <2 x i32>, ptr %i.aml, align 4, !tbaa !92
  %i.ani = shl nsw i32 %i.ane, 2
  %i.anj = shl nsw i32 %i.ang, 2
  %i.ank = extractelement <2 x i32> %i.anc, i64 0
  %i.anl = shl i32 %i.ank, 3
  %i.anm = shl <2 x i32> %i.anb, splat (i32 2)    ; 3 uses
  %i.ann = extractelement <2 x i32> %i.anm, i64 0
  %i.ano = add i32 %i.anl, %i.ann
  %i.anp = extractelement <2 x i32> %i.anc, i64 1
  %i.anq = shl i32 %i.anp, 3
  %i.anr = extractelement <2 x i32> %i.anm, i64 1
  %i.ans = add i32 %i.anq, %i.anr
  %i.ant = shl i32 %i.amz, 4
  %i.anu = shl i32 %i.amv, 2
  %i.anv = add i32 %i.ant, %i.anu
  %i.anw = shl i32 %i.ana, 4
  %i.anx = shl i32 %i.amw, 2
  %i.any = add i32 %i.anw, %i.anx
  %i.anz = shl <2 x i32> %i.anh, splat (i32 4)
  %i.aoa = shl <2 x i32> %i.anc, splat (i32 5)
  %i.aob = add <2 x i32> %i.aoa, %i.anm
  %i.aoc = add <2 x i32> %i.aob, %i.anz
  store i32 %i.ani, ptr %i.cs, align 8, !tbaa !92
  store i32 %i.anj, ptr %i.ct, align 4, !tbaa !92
  store i32 %i.ano, ptr %i.cu, align 8, !tbaa !92
  store i32 %i.ans, ptr %i.cv, align 4, !tbaa !92
  store i32 %i.anv, ptr %i.cw, align 8, !tbaa !92
  store i32 %i.any, ptr %i.cx, align 4, !tbaa !92
  store <2 x i32> %i.aoc, ptr %i.cy, align 8, !tbaa !92
  %i.aod = load i32, ptr %i.aq, align 4, !tbaa !93, !noalias !734
  %i.aoe = sext i32 %i.aod to i64
  %i.aof = shl nsw i32 %i.amo, 2                  ; 2 uses
  %i.aog = sext i32 %i.aof to i64
  %i.aoh = mul i64 %i.abz, %i.aog
  %i.aoi = mul i64 %i.aoh, %i.aoe
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aoi
  %i.aok = shl nsw i32 %i.amp, 2                  ; 4 uses
  %i.aol = sext i32 %i.aok to i64
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.aoj, i64 %i.aol
  %i.aon = or disjoint i32 %i.aok, 1
  %i.aoo = icmp slt i32 %i.aon, %i.fk
  %i.aop = or disjoint i32 %i.aok, 2
  %i.aoq = icmp slt i32 %i.aop, %i.fk
  %i.aor = or disjoint i32 %i.aok, 3
  %i.aos = icmp slt i32 %i.aor, %i.fk
  br label %bb.as

bb.as:                                            ; preds = %bb.ba, %.preheader76.us.i
  %indvars.iv388.i = phi i64 [ %indvars.iv.next389.i, %bb.ba ], [ 0, %.preheader76.us.i ] ; 3 uses
  %.0981201.us.i = phi ptr [ %.1982.us.i, %bb.ba ], [ %i.aom, %.preheader76.us.i ] ; 7 uses
  %i.aot = trunc i64 %indvars.iv388.i to i32
  %i.aou = or i32 %i.aof, %i.aot
  %.not1024.us.i = icmp slt i32 %i.aou, %i.fl
  br i1 %.not1024.us.i, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.aov = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %indvars.iv388.i ; 12 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.aox = load i32, ptr %i.aow, align 8, !tbaa !92 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aov, i64 16
  %i.aoz = load i32, ptr %i.aoy, align 16, !tbaa !92 ; 2 uses
  %i.apa = add nsw i32 %i.aoz, %i.aox             ; 2 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aov, i64 12
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !92 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aov, i64 20
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !92 ; 2 uses
  %i.apf = add nsw i32 %i.ape, %i.apc             ; 2 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aov, i64 24
  %i.aph = load i32, ptr %i.apg, align 8, !tbaa !92 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aov, i64 32
  %i.apj = load i32, ptr %i.api, align 16, !tbaa !92 ; 2 uses
  %i.apk = add nsw i32 %i.apj, %i.aph             ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aov, i64 28
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !92 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aov, i64 36
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !92 ; 2 uses
  %i.app = add nsw i32 %i.apo, %i.apm             ; 2 uses
  %i.apq = sub nsw i32 %i.aox, %i.aoz             ; 2 uses
  %i.apr = sub nsw i32 %i.apc, %i.ape             ; 2 uses
  %i.aps = sub nsw i32 %i.aph, %i.apj             ; 2 uses
  %i.apt = sub nsw i32 %i.apm, %i.apo             ; 2 uses
  %i.apu = add nsw i32 %i.apk, %i.apa
  %i.apv = load i32, ptr %i.aov, align 16, !tbaa !92
  %i.apw = add nsw i32 %i.apu, %i.apv
  %i.apx = add nsw i32 %i.app, %i.apf
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aov, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !92
  %i.aqa = add nsw i32 %i.apx, %i.apz
  %i.aqb = shl nsw i32 %i.apk, 2
  %i.aqc = add nsw i32 %i.aqb, %i.apa
  %i.aqd = shl nsw i32 %i.app, 2
  %i.aqe = add nsw i32 %i.aqd, %i.apf
  %i.aqf = shl nsw i32 %i.aps, 3
  %i.aqg = add nsw i32 %i.aqf, %i.apq
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aov, i64 40
  %i.aqi = load i32, ptr %i.aqh, align 8, !tbaa !92
  %i.aqj = add nsw i32 %i.aqg, %i.aqi
  %i.aqk = shl nsw i32 %i.apt, 3
  %i.aql = add nsw i32 %i.aqk, %i.apr
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aov, i64 44
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !92
  %i.aqo = add nsw i32 %i.aql, %i.aqn
  %i.aqp = sdiv i32 %i.apw, 576
  %i.aqq = sdiv i32 %i.aqa, 576
  %i.aqr = sdiv i32 %i.aqc, 576
  %i.aqs = sdiv i32 %i.aqe, 576
  %i.aqt = sdiv i32 %i.aqj, 576
  %i.aqu = sdiv i32 %i.aqo, 576
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.0981201.us.i, i64 %i.fp ; 4 uses
  store i32 %i.aqp, ptr %.0981201.us.i, align 4, !tbaa !92
  store i32 %i.aqq, ptr %i.aqv, align 4, !tbaa !92
  br i1 %i.aoo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.aqw = shl nsw i32 %i.apt, 1
  %i.aqx = add nsw i32 %i.aqw, %i.apr
  %i.aqy = sdiv i32 %i.aqx, 576
  %i.aqz = shl nsw i32 %i.aps, 1
  %i.ara = add nsw i32 %i.aqz, %i.apq
  %i.arb = sdiv i32 %i.ara, 576
  %i.arc = getelementptr inbounds nuw i8, ptr %.0981201.us.i, i64 4
  store i32 %i.arb, ptr %i.arc, align 4, !tbaa !92
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqv, i64 4
  store i32 %i.aqy, ptr %i.ard, align 4, !tbaa !92
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.aoq, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.are = getelementptr inbounds nuw i8, ptr %.0981201.us.i, i64 8
  store i32 %i.aqr, ptr %i.are, align 4, !tbaa !92
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqv, i64 8
  store i32 %i.aqs, ptr %i.arf, align 4, !tbaa !92
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  br i1 %i.aos, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.arg = getelementptr inbounds nuw i8, ptr %.0981201.us.i, i64 12
  store i32 %i.aqt, ptr %i.arg, align 4, !tbaa !92
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqv, i64 12
  store i32 %i.aqu, ptr %i.arh, align 4, !tbaa !92
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ari = getelementptr inbounds [4 x i8], ptr %.0981201.us.i, i64 %i.abt
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.as
  %.1982.us.i = phi ptr [ %.0981201.us.i, %bb.as ], [ %i.ari, %bb.az ]
  %indvars.iv.next389.i = add nuw nsw i64 %indvars.iv388.i, 1 ; 2 uses
  %exitcond391.not.i = icmp eq i64 %indvars.iv.next389.i, 4
  br i1 %exitcond391.not.i, label %bb.bb, label %bb.as, !llvm.loop !737

bb.bb:                                            ; preds = %bb.ba
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %exitcond396.not.i = icmp eq i64 %indvars.iv.next393.i, %wide.trip.count395.i
  br i1 %exitcond396.not.i, label %._crit_edge.us210.i, label %.preheader76.us.i, !llvm.loop !738

._crit_edge.us210.i:                              ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %indvars.iv.next398.i = add nuw nsw i64 %indvars.iv397.i, 2 ; 3 uses
  %i.arj = icmp slt i64 %indvars.iv.next398.i, %invariant.op425.i
  br i1 %i.arj, label %.lr.ph.us209.i, label %.preheader75.loopexit.i, !llvm.loop !739

.preheader75.loopexit.i:                          ; preds = %._crit_edge.us210.i
  %i.ark = trunc nsw i64 %indvars.iv.next398.i to i32
  br label %.preheader75.i

.preheader75.i:                                   ; preds = %.preheader75.loopexit.i, %.lr.ph206.split.preheader.i, %.preheader77.i
  %.2.lcssa.i = phi i32 [ %.1950.lcssa.i, %.preheader77.i ], [ %i.ark, %.preheader75.loopexit.i ], [ %i.abw, %.lr.ph206.split.preheader.i ] ; 2 uses
  %i.arl = icmp slt i32 %.2.lcssa.i, %.sroa.speculated120
  br i1 %i.arl, label %.lr.ph295.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph295.i:                                      ; preds = %.preheader75.i
  %i.arm = icmp sgt i32 %.sroa.speculated116, 0
  %i.arn = sext i32 %.sroa.speculated116 to i64
  %i.aro = shl nuw nsw i32 %.sroa.speculated116, 1
  %33 = zext nneg i32 %i.aro to i64
  %i.arp = mul nuw nsw i32 %.sroa.speculated116, 3
  %34 = zext nneg i32 %i.arp to i64
  %i.arq = shl nuw nsw i32 %.sroa.speculated116, 2
  %35 = zext nneg i32 %i.arq to i64
  %i.arr = mul nuw nsw i32 %.sroa.speculated116, 5
  %36 = zext nneg i32 %i.arr to i64
  %i.ars = mul nuw nsw i32 %.sroa.speculated116, 6
  %37 = zext nneg i32 %i.ars to i64               ; 30 uses
  %i.art = sext i32 %i.fk to i64                  ; 3 uses
  br i1 %i.arm, label %.lr.ph295.split.us.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit

.lr.ph295.split.us.i:                             ; preds = %.lr.ph295.i
  %i.aru = load ptr, ptr %12, align 8, !tbaa !9, !noalias !740
  %i.arv = load i64, ptr %i.at, align 8, !tbaa !18, !noalias !740
  %i.arw = load i64, ptr %i.bb, align 8, !tbaa !19, !noalias !740 ; 2 uses
  %factor.op.mul323.i = mul i64 %i.arw, %i.arv
  %i.arx = sext i32 %.2.lcssa.i to i64
  %wide.trip.count411.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us297.i

.lr.ph.us297.i:                                   ; preds = %._crit_edge.us298.i, %.lr.ph295.split.us.i
  %indvars.iv413.i = phi i64 [ %indvars.iv.next414.i, %._crit_edge.us298.i ], [ %i.arx, %.lr.ph295.split.us.i ] ; 3 uses
  %i.ary = trunc nsw i64 %indvars.iv413.i to i32
  %factor.op.mul290.reass.us.i = mul i32 %factor.op.mul100.i, %i.ary
  %i.arz = sext i32 %factor.op.mul290.reass.us.i to i64
  %i.asa = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.arz
  %i.asb = add nsw i64 %indvars.iv413.i, %i.fc
  %.reass324.i = mul i64 %factor.op.mul323.i, %i.asb
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aru, i64 %.reass324.i
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.cg, %.lr.ph.us297.i
  %indvars.iv408.i = phi i64 [ 0, %.lr.ph.us297.i ], [ %indvars.iv.next409.i, %bb.cg ] ; 3 uses
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %indvars.iv408.i ; 7 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %i.arn ; 2 uses
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %33 ; 2 uses
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %34 ; 2 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %35 ; 2 uses
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %36 ; 2 uses
  %i.asj = load i32, ptr %i.ase, align 4, !tbaa !92 ; 2 uses
  %i.ask = load i32, ptr %i.asf, align 4, !tbaa !92 ; 2 uses
  %i.asl = add nsw i32 %i.ask, %i.asj             ; 2 uses
  %i.asm = load i32, ptr %i.asg, align 4, !tbaa !92 ; 2 uses
  %i.asn = load i32, ptr %i.ash, align 4, !tbaa !92 ; 2 uses
  %i.aso = add nsw i32 %i.asn, %i.asm             ; 2 uses
  %i.asp = sub nsw i32 %i.asj, %i.ask             ; 2 uses
  %i.asq = sub nsw i32 %i.asm, %i.asn             ; 2 uses
  %i.asr = shl nsw i32 %i.asq, 1
  %i.ass = shl nsw i32 %i.aso, 2
  %i.ast = shl nsw i32 %i.asq, 3
  %i.asu = load i32, ptr %i.asi, align 4, !tbaa !92
  %i.asv = shl nsw i32 %i.asu, 2
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.ase, i64 %37 ; 2 uses
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %37 ; 2 uses
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.asg, i64 %37 ; 2 uses
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %37 ; 2 uses
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.asi, i64 %37 ; 2 uses
  %i.atb = load i32, ptr %i.asw, align 4, !tbaa !92 ; 2 uses
  %i.atc = load i32, ptr %i.asx, align 4, !tbaa !92 ; 2 uses
  %i.atd = add nsw i32 %i.atc, %i.atb             ; 2 uses
  %i.ate = load i32, ptr %i.asy, align 4, !tbaa !92 ; 2 uses
  %i.atf = load i32, ptr %i.asz, align 4, !tbaa !92 ; 2 uses
  %i.atg = add nsw i32 %i.atf, %i.ate             ; 2 uses
  %i.ath = sub nsw i32 %i.atb, %i.atc             ; 2 uses
  %i.ati = sub nsw i32 %i.ate, %i.atf             ; 2 uses
  %i.atj = shl nsw i32 %i.ati, 1
  %i.atk = add nsw i32 %i.atj, %i.ath             ; 2 uses
  %i.atl = shl nsw i32 %i.atg, 2
  %i.atm = add nsw i32 %i.atl, %i.atd             ; 2 uses
  %i.atn = shl nsw i32 %i.ati, 3
  %i.ato = add nsw i32 %i.atn, %i.ath
  %i.atp = load i32, ptr %i.ata, align 4, !tbaa !92
  %i.atq = shl nsw i32 %i.atp, 2
  %i.atr = add nsw i32 %i.ato, %i.atq             ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.asw, i64 %37 ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %i.asx, i64 %37 ; 2 uses
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.asy, i64 %37 ; 2 uses
  %i.atv = getelementptr inbounds nuw [4 x i8], ptr %i.asz, i64 %37 ; 2 uses
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %37 ; 2 uses
  %i.atx = load i32, ptr %i.ats, align 4, !tbaa !92 ; 2 uses
  %i.aty = load i32, ptr %i.att, align 4, !tbaa !92 ; 2 uses
  %i.atz = add nsw i32 %i.aty, %i.atx             ; 2 uses
  %i.aua = load i32, ptr %i.atu, align 4, !tbaa !92 ; 2 uses
  %i.aub = load i32, ptr %i.atv, align 4, !tbaa !92 ; 2 uses
  %i.auc = add nsw i32 %i.aub, %i.aua             ; 2 uses
  %i.aud = sub nsw i32 %i.atx, %i.aty             ; 2 uses
  %i.aue = sub nsw i32 %i.aua, %i.aub             ; 2 uses
  %i.auf = shl nsw i32 %i.aue, 1
  %i.aug = add nsw i32 %i.auf, %i.aud             ; 2 uses
  %i.auh = shl nsw i32 %i.auc, 2
  %i.aui = add nsw i32 %i.auh, %i.atz             ; 2 uses
  %i.auj = shl nsw i32 %i.aue, 3
  %i.auk = add nsw i32 %i.auj, %i.aud
  %i.aul = load i32, ptr %i.atw, align 4, !tbaa !92
  %i.aum = shl nsw i32 %i.aul, 2
  %i.aun = add nsw i32 %i.auk, %i.aum             ; 2 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.ats, i64 %37 ; 2 uses
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.att, i64 %37 ; 2 uses
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.atu, i64 %37 ; 2 uses
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %37 ; 2 uses
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.atw, i64 %37 ; 2 uses
  %i.aut = load i32, ptr %i.auo, align 4, !tbaa !92 ; 2 uses
  %i.auu = load i32, ptr %i.aup, align 4, !tbaa !92 ; 2 uses
  %i.auv = add nsw i32 %i.auu, %i.aut             ; 2 uses
  %i.auw = load i32, ptr %i.auq, align 4, !tbaa !92 ; 2 uses
  %i.aux = load i32, ptr %i.aur, align 4, !tbaa !92 ; 2 uses
  %i.auy = add nsw i32 %i.aux, %i.auw             ; 2 uses
  %i.auz = sub nsw i32 %i.aut, %i.auu             ; 2 uses
  %i.ava = sub nsw i32 %i.auw, %i.aux             ; 2 uses
  %i.avb = shl nsw i32 %i.ava, 1
  %i.avc = add nsw i32 %i.avb, %i.auz             ; 2 uses
  %i.avd = shl nsw i32 %i.auy, 2
  %i.ave = add nsw i32 %i.avd, %i.auv             ; 2 uses
  %i.avf = shl nsw i32 %i.ava, 3
  %i.avg = add nsw i32 %i.avf, %i.auz
  %i.avh = load i32, ptr %i.aus, align 4, !tbaa !92
  %i.avi = shl nsw i32 %i.avh, 2
  %i.avj = add nsw i32 %i.avg, %i.avi             ; 2 uses
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.auo, i64 %37 ; 2 uses
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.aup, i64 %37 ; 2 uses
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.auq, i64 %37 ; 2 uses
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %37 ; 2 uses
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.aus, i64 %37 ; 2 uses
  %i.avp = load i32, ptr %i.avk, align 4, !tbaa !92 ; 2 uses
  %i.avq = load i32, ptr %i.avl, align 4, !tbaa !92 ; 2 uses
  %i.avr = add nsw i32 %i.avq, %i.avp             ; 2 uses
  %i.avs = load i32, ptr %i.avm, align 4, !tbaa !92 ; 2 uses
  %i.avt = load i32, ptr %i.avn, align 4, !tbaa !92 ; 2 uses
  %i.avu = add nsw i32 %i.avt, %i.avs             ; 2 uses
  %i.avv = sub nsw i32 %i.avp, %i.avq             ; 2 uses
  %i.avw = sub nsw i32 %i.avs, %i.avt             ; 2 uses
  %i.avx = shl nsw i32 %i.avw, 1
  %i.avy = add nsw i32 %i.avx, %i.avv             ; 2 uses
  %i.avz = shl nsw i32 %i.avu, 2
  %i.awa = add nsw i32 %i.avz, %i.avr             ; 2 uses
  %i.awb = shl nsw i32 %i.avw, 3
  %i.awc = add nsw i32 %i.awb, %i.avv
  %i.awd = load i32, ptr %i.avo, align 4, !tbaa !92
  %i.awe = shl nsw i32 %i.awd, 2
  %i.awf = add nsw i32 %i.awc, %i.awe             ; 2 uses
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.avk, i64 %37
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %37
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %37
  %i.awj = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %37
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %i.avo, i64 %37
  %i.awl = trunc i64 %indvars.iv408.i to i32
  %i.awm = add i32 %.044130, %i.awl               ; 2 uses
  %i.awn = sdiv i32 %i.awm, %i.fr
  %i.awo = srem i32 %i.awm, %i.fr
  %i.awp = load i32, ptr %i.awg, align 4, !tbaa !92 ; 2 uses
  %i.awq = load i32, ptr %i.awh, align 4, !tbaa !92 ; 2 uses
  %i.awr = add nsw i32 %i.awq, %i.awp             ; 2 uses
  %i.aws = load i32, ptr %i.awi, align 4, !tbaa !92 ; 2 uses
  %i.awt = load i32, ptr %i.awj, align 4, !tbaa !92 ; 2 uses
  %i.awu = add nsw i32 %i.awt, %i.aws             ; 2 uses
  %i.awv = sub nsw i32 %i.awp, %i.awq
  %i.aww = sub nsw i32 %i.aws, %i.awt             ; 2 uses
  %i.awx = load i32, ptr %i.awk, align 4, !tbaa !92
  %i.awy = shl i32 %i.awv, 2                      ; 2 uses
  %i.awz = shl i32 %i.awu, 4
  %i.axa = shl i32 %i.awr, 2
  %i.axb = shl i32 %i.awx, 4
  %i.axc = shl i32 %i.aww, 5
  %i.axd = load i32, ptr %i.aq, align 4, !tbaa !93, !noalias !740
  %i.axe = sext i32 %i.axd to i64
  %i.axf = shl nsw i32 %i.awn, 2                  ; 5 uses
  %i.axg = sext i32 %i.axf to i64
  %i.axh = mul i64 %i.arw, %i.axg
  %i.axi = mul i64 %i.axh, %i.axe
  %i.axj = getelementptr inbounds nuw i8, ptr %i.asc, i64 %i.axi
  %i.axk = shl nsw i32 %i.awo, 2                  ; 4 uses
  %i.axl = sext i32 %i.axk to i64
  %i.axm = getelementptr inbounds [4 x i8], ptr %i.axj, i64 %i.axl ; 6 uses
  %i.axn = or disjoint i32 %i.axk, 1
  %i.axo = icmp slt i32 %i.axn, %i.fk             ; 4 uses
  %i.axp = or disjoint i32 %i.axk, 2
  %i.axq = icmp slt i32 %i.axp, %i.fk             ; 4 uses
  %i.axr = or disjoint i32 %i.axk, 3
  %i.axs = icmp slt i32 %i.axr, %i.fk             ; 4 uses
  %.not.us.i = icmp slt i32 %i.axf, %i.fl
  br i1 %.not.us.i, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %.preheader.us.i
  %i.axt = add nsw i32 %i.awu, %i.awr
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %37 ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axu, i64 %37 ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr %i.axv, i64 %37 ; 2 uses
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %i.axw, i64 %37 ; 2 uses
  %i.axy = getelementptr inbounds nuw [4 x i8], ptr %i.axx, i64 %37
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !92
  %i.aya = add nsw i32 %i.axt, %i.axz
  %i.ayb = shl nsw i32 %i.aya, 2
  %i.ayc = add nsw i32 %i.avu, %i.avr
  %i.ayd = load i32, ptr %i.axx, align 4, !tbaa !92
  %i.aye = add nsw i32 %i.ayc, %i.ayd             ; 2 uses
  %i.ayf = add nsw i32 %i.auy, %i.auv
  %i.ayg = load i32, ptr %i.axw, align 4, !tbaa !92
  %i.ayh = add nsw i32 %i.ayf, %i.ayg             ; 2 uses
  %i.ayi = add nsw i32 %i.auc, %i.atz
  %i.ayj = load i32, ptr %i.axv, align 4, !tbaa !92
  %i.ayk = add nsw i32 %i.ayi, %i.ayj             ; 2 uses
  %i.ayl = add nsw i32 %i.atg, %i.atd
  %i.aym = load i32, ptr %i.axu, align 4, !tbaa !92
  %i.ayn = add nsw i32 %i.ayl, %i.aym             ; 2 uses
  %i.ayo = load i32, ptr %i.asd, align 4, !tbaa !92
  %i.ayp = add nsw i32 %i.ayn, %i.ayk             ; 2 uses
  %i.ayq = add nsw i32 %i.ayh, %i.aye             ; 2 uses
  %i.ayr = sub nsw i32 %i.ayn, %i.ayk             ; 2 uses
end_hunk_7
