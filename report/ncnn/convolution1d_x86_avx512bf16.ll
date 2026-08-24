Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86_avx512bf16?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4ncnn37convolution1d_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %9) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %9) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 22 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 20 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %4, ptr %i.a, align 4, !tbaa !9
  store i32 %5, ptr %i.b, align 4, !tbaa !9
  store i32 %6, ptr %i.c, align 4, !tbaa !9
  store i32 %7, ptr %i.d, align 4, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10   ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16
  %i.n = mul i32 %i.m, %i.k                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 21 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = mul nsw i32 %i.p, %i.k
  store i32 %i.q, ptr %i.e, align 4, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !10   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !16
  %i.x = mul i32 %i.w, %i.u                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.y = mul nsw i32 %i.u, %i.s
  store i32 %i.y, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.z = load ptr, ptr %3, align 8, !tbaa !18
  store ptr %i.z, ptr %i.g, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.aa = sdiv i32 %i.x, 16
  store i32 %i.aa, ptr %i.h, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !21
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.ac)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.g, ptr nonnull %2, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %8, ptr nonnull %i.f)
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !9
  %i.ae = shl nsw i32 %i.ad, 4                    ; 3 uses
  %i.af = sub nsw i32 %i.x, %i.ae                 ; 2 uses
  %i.ag = sdiv i32 %i.af, 8                       ; 3 uses
  store i32 %i.ag, ptr %i.h, align 4, !tbaa !9
  %i.ah = icmp sgt i32 %i.af, 7
  br i1 %i.ah, label %.lr.ph3129, label %._crit_edge3130

.lr.ph3129:                                       ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.am = load i32, ptr %i.d, align 4
  %i.an = load i32, ptr %i.r, align 4, !tbaa !17  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph3129.split.preheader, label %._crit_edge3130

.lr.ph3129.split.preheader:                       ; preds = %.lr.ph3129
  %i.ap = sext i32 %i.ae to i64
  %wide.trip.count4046 = zext nneg i32 %i.ag to i64
  br label %.lr.ph3129.split

._crit_edge3130:                                  ; preds = %._crit_edge, %.lr.ph3129, %bb.a
  %i.aq = shl nsw i32 %i.ag, 3
  %i.ar = add nsw i32 %i.aq, %i.ae                ; 3 uses
  %i.as = sub nsw i32 %i.x, %i.ar                 ; 2 uses
  %i.at = sdiv i32 %i.as, 4                       ; 3 uses
  store i32 %i.at, ptr %i.h, align 4, !tbaa !9
  %i.au = icmp sgt i32 %i.as, 3
  br i1 %i.au, label %.lr.ph3376, label %._crit_edge3377

.lr.ph3376:                                       ; preds = %._crit_edge3130
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.az = load i32, ptr %i.d, align 4
  %i.ba = load i32, ptr %i.r, align 4, !tbaa !17  ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph3376.split.preheader, label %._crit_edge3377

.lr.ph3376.split.preheader:                       ; preds = %.lr.ph3376
  %i.bc = sext i32 %i.ar to i64
  %wide.trip.count4096 = zext nneg i32 %i.at to i64
  br label %.lr.ph3376.split

.lr.ph3129.splitthread-pre-split:                 ; preds = %._crit_edge
  %.pr = load i32, ptr %i.r, align 4, !tbaa !17
  br label %.lr.ph3129.split

.lr.ph3129.split:                                 ; preds = %.lr.ph3129.splitthread-pre-split, %.lr.ph3129.split.preheader
  %i.bd = phi i32 [ %.pr, %.lr.ph3129.splitthread-pre-split ], [ %i.an, %.lr.ph3129.split.preheader ] ; 3 uses
  %indvars.iv4043 = phi i64 [ %indvars.iv.next4044, %.lr.ph3129.splitthread-pre-split ], [ 0, %.lr.ph3129.split.preheader ] ; 2 uses
  %i.be = load i32, ptr %i.j, align 8, !tbaa !10  ; 9 uses
  %i.bf = load i32, ptr %i.l, align 8, !tbaa !16
  %i.bg = mul i32 %i.bf, %i.be                    ; 12 uses
  %i.bh = load i32, ptr %i.t, align 8, !tbaa !10  ; 2 uses
  %i.bi = icmp sgt i32 %i.bd, 0
  br i1 %i.bi, label %.lr.ph3120, label %._crit_edge

.lr.ph3120:                                       ; preds = %.lr.ph3129.split
  %i.bj = load ptr, ptr %1, align 8, !tbaa !18
  %i.bk = shl nuw nsw i64 %indvars.iv4043, 3
  %i.bl = add nsw i64 %i.bk, %i.ap                ; 2 uses
  %i.bm = trunc nsw i64 %i.bl to i32              ; 3 uses
  %i.bn = sdiv i32 %i.bm, %i.bh
  %i.bo = sext i32 %i.bn to i64
  %i.bp = zext nneg i32 %i.bd to i64
  %i.bq = mul nsw i64 %i.bo, %i.bp
  %i.br = load i64, ptr %i.ai, align 8, !tbaa !24
  %i.bs = mul i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bs
  %i.bu = sdiv i32 %i.bm, 16
  %i.bv = srem i32 %i.bm, 16
  %i.bw = ashr exact i32 %i.bv, 3
  %i.bx = add nsw i32 %i.bw, %i.bu
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp sgt i32 %i.bg, 15
  %i.ca = load i32, ptr %i.c, align 4             ; 2 uses
  %factor.op.mul3121 = mul i32 %i.be, %i.ca       ; 3 uses
  %i.cb = icmp eq i32 %i.be, 16
  %i.cc = icmp eq i32 %i.be, 8                    ; 2 uses
  %i.cd = icmp eq i32 %i.be, 4                    ; 3 uses
  %i.ce = icmp eq i32 %i.be, 1                    ; 3 uses
  %i.cf = load i32, ptr %i.a, align 4             ; 6 uses
  %i.cg = icmp sgt i32 %i.cf, 0                   ; 2 uses
  %i.ch = load i32, ptr %i.f, align 4             ; 7 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = shl nsw i32 %i.ch, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul nsw i32 %i.ch, 3
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i32 %i.ch, 2
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i32 %i.ch, 5
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i32 %i.ch, 6
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i32 %i.ch, 7
  %i.cu = sext i32 %i.ct to i64
  %i.cv = and i32 %i.bg, -16
  %10 = add i32 %i.bg, -2
  %i.cw = add i32 %i.cf, -1                       ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = shl nuw nsw i64 %i.cx, 5
  %i.cz = shl nuw nsw i64 %i.cx, 4
  %i.da = sext i32 %i.ca to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bd to i64
  %xtraiter = and i32 %i.cf, 1
  %i.db = icmp eq i32 %i.cw, 0
  %unroll_iter = and i32 %i.cf, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod4746 = trunc i32 %i.cf to i1
  br label %bb.b

._crit_edge:                                      ; preds = %.thread2796, %.lr.ph3129.split
  %indvars.iv.next4044 = add nuw nsw i64 %indvars.iv4043, 1 ; 2 uses
  %exitcond4047.not = icmp eq i64 %indvars.iv.next4044, %wide.trip.count4046
  br i1 %exitcond4047.not, label %._crit_edge3130, label %.lr.ph3129.splitthread-pre-split, !llvm.loop !25

bb.b:                                             ; preds = %.lr.ph3120, %.thread2796
  %indvars.iv4039 = phi i64 [ 0, %.lr.ph3120 ], [ %indvars.iv.next4040, %.thread2796 ] ; 6 uses
  %.013003119 = phi ptr [ %i.bt, %.lr.ph3120 ], [ %.31303, %.thread2796 ] ; 15 uses
  %i.dc = load ptr, ptr %i.g, align 8, !tbaa !19  ; 2 uses
  %.not1505 = icmp eq ptr %i.dc, null
  br i1 %.not1505, label %_ZN4ncnn3MatD2Ev.exit1511, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.bl
  %i.de = load <8 x float>, ptr %i.dd, align 1, !tbaa !28
  br label %_ZN4ncnn3MatD2Ev.exit1511

_ZN4ncnn3MatD2Ev.exit1511:                        ; preds = %bb.c, %bb.b
  %.02551 = phi nsz <8 x float> [ zeroinitializer, %bb.b ], [ %i.de, %bb.c ] ; 2 uses
  %i.df = load ptr, ptr %2, align 8, !tbaa !18, !noalias !29
  %i.dg = load i64, ptr %i.aj, align 8, !tbaa !32, !noalias !29
  %i.dh = mul i64 %i.dg, %i.by
  %i.di = load i64, ptr %i.ak, align 8, !tbaa !24, !noalias !29
  %i.dj = mul i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj ; 2 uses
  br i1 %i.bz, label %.lr.ph2964, label %.preheader2898

.lr.ph2964:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit1511
  %i.dl = load ptr, ptr %0, align 8, !tbaa !18
  %i.dm = load i32, ptr %i.o, align 4, !tbaa !17
  %i.dn = sext i32 %i.dm to i64
  %i.do = load i64, ptr %i.al, align 8, !tbaa !24
  %factor.op.mul = mul i64 %i.do, %i.dn
  %i.dp = trunc nuw nsw i64 %indvars.iv4039 to i32
  %.reass3122 = mul i32 %factor.op.mul3121, %i.dp
  %i.dq = sext i32 %.reass3122 to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.dl, i64 %i.dq
  %i.dr = load i32, ptr %i.a, align 4             ; 6 uses
  %i.ds = icmp sgt i32 %i.dr, 0                   ; 4 uses
  %i.dt = load i32, ptr %i.b, align 4             ; 4 uses
  %i.du = shl nsw i32 %i.dt, 4
  %i.dv = sext i32 %i.du to i64
  %i.dw = load i32, ptr %i.e, align 4             ; 15 uses
  %i.dx = sext i32 %i.dw to i64                   ; 3 uses
  %i.dy = shl nsw i32 %i.dt, 3
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = shl nsw i32 %i.dw, 1
  %i.eb = sext i32 %i.ea to i64                   ; 2 uses
  %i.ec = mul nsw i32 %i.dw, 3
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = shl nsw i32 %i.dt, 2
  %i.ef = sext i32 %i.ee to i64                   ; 4 uses
  %i.eg = shl nsw i32 %i.dw, 2
  %i.eh = sext i32 %i.eg to i64
  %i.ei = mul nsw i32 %i.dw, 5
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i32 %i.dw, 6
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i32 %i.dw, 7
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i32 %i.dw, 3
  %i.ep = sext i32 %i.eo to i64
  %i.eq = mul nsw i32 %i.dw, 9
  %i.er = sext i32 %i.eq to i64
  %i.es = mul nsw i32 %i.dw, 10
  %i.et = sext i32 %i.es to i64
  %i.eu = mul nsw i32 %i.dw, 11
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul nsw i32 %i.dw, 12
  %i.ex = sext i32 %i.ew to i64
  %i.ey = mul nsw i32 %i.dw, 13
  %i.ez = sext i32 %i.ey to i64
  %i.fa = mul nsw i32 %i.dw, 14
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i32 %i.dw, 15
  %i.fd = sext i32 %i.fc to i64
  %i.fe = sext i32 %i.dt to i64
  %i.ff = add i32 %i.dr, -1
  %i.fg = zext i32 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 8                ; 4 uses
  br label %bb.d

.preheader2898:                                   ; preds = %.loopexit2890, %_ZN4ncnn3MatD2Ev.exit1511
  %.02620.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1511 ], [ %.82628, %.loopexit2890 ] ; 2 uses
  %.02599.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1511 ], [ %.82607, %.loopexit2890 ] ; 2 uses
  %.02576.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1511 ], [ %.82584, %.loopexit2890 ] ; 2 uses
  %.12552.lcssa = phi <8 x float> [ %.02551, %_ZN4ncnn3MatD2Ev.exit1511 ], [ %.92560, %.loopexit2890 ] ; 2 uses
  %.01334.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1511 ], [ %i.cv, %.loopexit2890 ] ; 3 uses
  %.01305.lcssa = phi ptr [ %i.dk, %_ZN4ncnn3MatD2Ev.exit1511 ], [ %.81313, %.loopexit2890 ] ; 2 uses
  %i.fi = or disjoint i32 %.01334.lcssa, 7
  %i.fj = icmp slt i32 %i.fi, %i.bg
  br i1 %i.fj, label %.lr.ph3019, label %.preheader2897

.lr.ph3019:                                       ; preds = %.preheader2898
  %i.fk = load ptr, ptr %0, align 8, !tbaa !18
  %i.fl = load i32, ptr %i.o, align 4, !tbaa !17
  %i.fm = sext i32 %i.fl to i64
  %i.fn = load i64, ptr %i.al, align 8, !tbaa !24
  %factor.op.mul3026 = mul i64 %i.fn, %i.fm
  %i.fo = trunc nuw nsw i64 %indvars.iv4039 to i32
  %.reass3124 = mul i32 %factor.op.mul3121, %i.fo
  %i.fp = sext i32 %.reass3124 to i64
  %invariant.gep3028 = getelementptr [2 x i8], ptr %i.fk, i64 %i.fp
  %i.fq = load i32, ptr %i.a, align 4             ; 5 uses
  %i.fr = icmp sgt i32 %i.fq, 0                   ; 3 uses
  %i.fs = load i32, ptr %i.b, align 4             ; 3 uses
  %i.ft = shl nsw i32 %i.fs, 3
  %i.fu = sext i32 %i.ft to i64
  %i.fv = load i32, ptr %i.e, align 4             ; 7 uses
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = shl nsw i32 %i.fs, 2
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = shl nsw i32 %i.fv, 1
  %i.ga = sext i32 %i.fz to i64
  %i.gb = mul nsw i32 %i.fv, 3
  %i.gc = sext i32 %i.gb to i64
  %i.gd = shl nsw i32 %i.fv, 2
  %i.ge = sext i32 %i.gd to i64
  %i.gf = mul nsw i32 %i.fv, 5
  %i.gg = sext i32 %i.gf to i64
  %i.gh = mul nsw i32 %i.fv, 6
  %i.gi = sext i32 %i.gh to i64
  %i.gj = mul nsw i32 %i.fv, 7
  %i.gk = sext i32 %i.gj to i64
  %i.gl = sext i32 %i.fs to i64
  %i.gm = add i32 %i.fq, -1
  %i.gn = zext i32 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 7                ; 3 uses
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph2964, %.loopexit2890
  %.013052963 = phi ptr [ %i.dk, %.lr.ph2964 ], [ %.81313, %.loopexit2890 ] ; 13 uses
  %.013342962 = phi i32 [ 0, %.lr.ph2964 ], [ %i.zv, %.loopexit2890 ] ; 2 uses
  %.125522961 = phi <8 x float> [ %.02551, %.lr.ph2964 ], [ %.92560, %.loopexit2890 ] ; 9 uses
  %.025762960 = phi <8 x float> [ zeroinitializer, %.lr.ph2964 ], [ %.82584, %.loopexit2890 ] ; 9 uses
  %.025992959 = phi <8 x float> [ zeroinitializer, %.lr.ph2964 ], [ %.82607, %.loopexit2890 ] ; 9 uses
  %.026202958 = phi <8 x float> [ zeroinitializer, %.lr.ph2964 ], [ %.82628, %.loopexit2890 ] ; 9 uses
  %i.gp = sdiv i32 %.013342962, %i.be
  %i.gq = sext i32 %i.gp to i64
  %.reass = mul i64 %factor.op.mul, %i.gq
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 8 uses
  br i1 %i.cb, label %.preheader2893, label %.loopexit2894

.preheader2893:                                   ; preds = %bb.d
  br i1 %i.ds, label %.lr.ph, label %.loopexit2890

.lr.ph:                                           ; preds = %.preheader2893, %.lr.ph
  %.113062907 = phi ptr [ %i.km, %.lr.ph ], [ %.013052963, %.preheader2893 ] ; 17 uses
  %.013392906 = phi ptr [ %i.kl, %.lr.ph ], [ %gep, %.preheader2893 ] ; 2 uses
  %.013462905 = phi i32 [ %i.kn, %.lr.ph ], [ 0, %.preheader2893 ]
  %.225532904 = phi <8 x float> [ %i.kb, %.lr.ph ], [ %.125522961, %.preheader2893 ]
  %.125772903 = phi <8 x float> [ %i.ke, %.lr.ph ], [ %.025762960, %.preheader2893 ]
  %.126002902 = phi <8 x float> [ %i.kh, %.lr.ph ], [ %.025992959, %.preheader2893 ]
  %.126212901 = phi <8 x float> [ %i.kk, %.lr.ph ], [ %.026202958, %.preheader2893 ]
  %i.gr = load <8 x bfloat>, ptr %.113062907, align 16, !tbaa !28
  %i.gs = fpext fast <8 x bfloat> %i.gr to <8 x float>
  %i.gt = getelementptr inbounds nuw i8, ptr %.113062907, i64 16
  %i.gu = load <8 x bfloat>, ptr %i.gt, align 16, !tbaa !28
  %i.gv = fpext fast <8 x bfloat> %i.gu to <8 x float>
  %i.gw = getelementptr inbounds nuw i8, ptr %.113062907, i64 32
  %i.gx = load <8 x bfloat>, ptr %i.gw, align 16, !tbaa !28
  %i.gy = fpext fast <8 x bfloat> %i.gx to <8 x float>
  %i.gz = getelementptr inbounds nuw i8, ptr %.113062907, i64 48
  %i.ha = load <8 x bfloat>, ptr %i.gz, align 16, !tbaa !28
  %i.hb = fpext fast <8 x bfloat> %i.ha to <8 x float>
  %i.hc = getelementptr inbounds nuw i8, ptr %.113062907, i64 64
  %i.hd = load <8 x bfloat>, ptr %i.hc, align 16, !tbaa !28
  %i.he = fpext fast <8 x bfloat> %i.hd to <8 x float>
  %i.hf = getelementptr inbounds nuw i8, ptr %.113062907, i64 80
  %i.hg = load <8 x bfloat>, ptr %i.hf, align 16, !tbaa !28
  %i.hh = fpext fast <8 x bfloat> %i.hg to <8 x float>
  %i.hi = getelementptr inbounds nuw i8, ptr %.113062907, i64 96
  %i.hj = load <8 x bfloat>, ptr %i.hi, align 16, !tbaa !28
  %i.hk = fpext fast <8 x bfloat> %i.hj to <8 x float>
  %i.hl = getelementptr inbounds nuw i8, ptr %.113062907, i64 112
  %i.hm = load <8 x bfloat>, ptr %i.hl, align 16, !tbaa !28
  %i.hn = fpext fast <8 x bfloat> %i.hm to <8 x float>
  %i.ho = getelementptr inbounds nuw i8, ptr %.113062907, i64 128
  %i.hp = load <8 x bfloat>, ptr %i.ho, align 16, !tbaa !28
  %i.hq = fpext fast <8 x bfloat> %i.hp to <8 x float>
  %i.hr = getelementptr inbounds nuw i8, ptr %.113062907, i64 144
  %i.hs = load <8 x bfloat>, ptr %i.hr, align 16, !tbaa !28
  %i.ht = fpext fast <8 x bfloat> %i.hs to <8 x float>
  %i.hu = getelementptr inbounds nuw i8, ptr %.113062907, i64 160
  %i.hv = load <8 x bfloat>, ptr %i.hu, align 16, !tbaa !28
  %i.hw = fpext fast <8 x bfloat> %i.hv to <8 x float>
  %i.hx = getelementptr inbounds nuw i8, ptr %.113062907, i64 176
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
.lr.ph2993:                                       ; preds = %.lr.ph2993.preheader, %.lr.ph2993
  %.1213172992 = phi ptr [ %i.afb, %.lr.ph2993 ], [ %.913143018, %.lr.ph2993.preheader ] ; 9 uses
  %.214282991 = phi ptr [ %i.aez, %.lr.ph2993 ], [ %gep3029, %.lr.ph2993.preheader ] ; 2 uses
  %.014322990 = phi ptr [ %i.afa, %.lr.ph2993 ], [ %i.acy, %.lr.ph2993.preheader ] ; 2 uses
  %.014332989 = phi i32 [ %i.afc, %.lr.ph2993 ], [ 0, %.lr.ph2993.preheader ]
  %.1325642988 = phi <8 x float> [ %i.aep, %.lr.ph2993 ], [ %.1025613016, %.lr.ph2993.preheader ]
  %.1225882987 = phi <8 x float> [ %i.aes, %.lr.ph2993 ], [ %.925853015, %.lr.ph2993.preheader ]
  %.1226112986 = phi <8 x float> [ %i.aev, %.lr.ph2993 ], [ %.926083014, %.lr.ph2993.preheader ]
  %.1226322985 = phi <8 x float> [ %i.aey, %.lr.ph2993 ], [ %.926293013, %.lr.ph2993.preheader ]
  %i.acz = load <8 x bfloat>, ptr %.1213172992, align 16, !tbaa !28
  %i.ada = fpext fast <8 x bfloat> %i.acz to <8 x float>
  %i.adb = getelementptr inbounds nuw i8, ptr %.1213172992, i64 16
  %i.adc = load <8 x bfloat>, ptr %i.adb, align 16, !tbaa !28
  %i.add = fpext fast <8 x bfloat> %i.adc to <8 x float>
  %i.ade = getelementptr inbounds nuw i8, ptr %.1213172992, i64 32
  %i.adf = load <8 x bfloat>, ptr %i.ade, align 16, !tbaa !28
  %i.adg = fpext fast <8 x bfloat> %i.adf to <8 x float>
  %i.adh = getelementptr inbounds nuw i8, ptr %.1213172992, i64 48
  %i.adi = load <8 x bfloat>, ptr %i.adh, align 16, !tbaa !28
  %i.adj = fpext fast <8 x bfloat> %i.adi to <8 x float>
  %i.adk = getelementptr inbounds nuw i8, ptr %.1213172992, i64 64
  %i.adl = load <8 x bfloat>, ptr %i.adk, align 16, !tbaa !28
  %i.adm = fpext fast <8 x bfloat> %i.adl to <8 x float>
  %i.adn = getelementptr inbounds nuw i8, ptr %.1213172992, i64 80
  %i.ado = load <8 x bfloat>, ptr %i.adn, align 16, !tbaa !28
  %i.adp = fpext fast <8 x bfloat> %i.ado to <8 x float>
  %i.adq = getelementptr inbounds nuw i8, ptr %.1213172992, i64 96
  %i.adr = load <8 x bfloat>, ptr %i.adq, align 16, !tbaa !28
  %i.ads = fpext fast <8 x bfloat> %i.adr to <8 x float>
  %i.adt = getelementptr inbounds nuw i8, ptr %.1213172992, i64 112
  %i.adu = load <8 x bfloat>, ptr %i.adt, align 16, !tbaa !28
  %i.adv = fpext fast <8 x bfloat> %i.adu to <8 x float>
  %i.adw = load <4 x i16>, ptr %.214282991, align 2, !tbaa !33
  %i.adx = load <4 x i16>, ptr %.014322990, align 2, !tbaa !33
  %i.ady = shufflevector <4 x i16> %i.adw, <4 x i16> %i.adx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adz = zext <8 x i16> %i.ady to <8 x i32>
  %i.aea = shl nuw <8 x i32> %i.adz, splat (i32 16) ; 8 uses
  %i.aeb = bitcast <8 x i32> %i.aea to <8 x float>
  %i.aec = shufflevector <8 x float> %i.aeb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aed = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ada, <8 x float> nofpclass(nan inf) %i.aec, <8 x float> nofpclass(nan inf) %.1325642988)
  %i.aee = bitcast <8 x i32> %i.aea to <8 x float>
  %i.aef = shufflevector <8 x float> %i.aee, <8 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aeg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.add, <8 x float> nofpclass(nan inf) %i.aef, <8 x float> nofpclass(nan inf) %.1225882987)
  %i.aeh = bitcast <8 x i32> %i.aea to <8 x float>
  %i.aei = shufflevector <8 x float> %i.aeh, <8 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.aej = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adg, <8 x float> nofpclass(nan inf) %i.aei, <8 x float> nofpclass(nan inf) %.1226112986)
  %i.aek = bitcast <8 x i32> %i.aea to <8 x float>
  %i.ael = shufflevector <8 x float> %i.aek, <8 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aem = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adj, <8 x float> nofpclass(nan inf) %i.ael, <8 x float> nofpclass(nan inf) %.1226322985)
  %i.aen = bitcast <8 x i32> %i.aea to <8 x float>
  %i.aeo = shufflevector <8 x float> %i.aen, <8 x float> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.aep = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adm, <8 x float> nofpclass(nan inf) %i.aeo, <8 x float> nofpclass(nan inf) %i.aed) ; 2 uses
  %i.aeq = bitcast <8 x i32> %i.aea to <8 x float>
  %i.aer = shufflevector <8 x float> %i.aeq, <8 x float> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.aes = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adp, <8 x float> nofpclass(nan inf) %i.aer, <8 x float> nofpclass(nan inf) %i.aeg) ; 2 uses
  %i.aet = bitcast <8 x i32> %i.aea to <8 x float>
  %i.aeu = shufflevector <8 x float> %i.aet, <8 x float> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.aev = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ads, <8 x float> nofpclass(nan inf) %i.aeu, <8 x float> nofpclass(nan inf) %i.aej) ; 2 uses
  %i.aew = bitcast <8 x i32> %i.aea to <8 x float>
  %i.aex = shufflevector <8 x float> %i.aew, <8 x float> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.aey = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adv, <8 x float> nofpclass(nan inf) %i.aex, <8 x float> nofpclass(nan inf) %i.aem) ; 2 uses
  %i.aez = getelementptr inbounds [2 x i8], ptr %.214282991, i64 %i.fy
  %i.afa = getelementptr inbounds [2 x i8], ptr %.014322990, i64 %i.fy
  %i.afb = getelementptr inbounds nuw i8, ptr %.1213172992, i64 128
  %i.afc = add nuw nsw i32 %.014332989, 1         ; 2 uses
  %exitcond4019.not = icmp eq i32 %i.afc, %i.fq
  br i1 %exitcond4019.not, label %.loopexit2886.loopexit, label %.lr.ph2993, !llvm.loop !41

.loopexit2886.loopexit:                           ; preds = %.lr.ph2993
  %scevgep4017 = getelementptr i8, ptr %.913143018, i64 128
  %scevgep4018 = getelementptr i8, ptr %scevgep4017, i64 %i.go
  br label %.loopexit2885

.loopexit2886:                                    ; preds = %.loopexit2888
  br i1 %i.ce, label %.preheader2884, label %.loopexit2885

.preheader2884:                                   ; preds = %.loopexit2886
  br i1 %i.fr, label %.lr.ph3007, label %.loopexit2885

.lr.ph3007:                                       ; preds = %.preheader2884, %.lr.ph3007
  %.1413193006 = phi ptr [ %i.aim, %.lr.ph3007 ], [ %.913143018, %.preheader2884 ] ; 9 uses
  %.414303005 = phi ptr [ %i.ail, %.lr.ph3007 ], [ %gep3029, %.preheader2884 ] ; 9 uses
  %.014343004 = phi i32 [ %i.ain, %.lr.ph3007 ], [ 0, %.preheader2884 ]
  %.1525663003 = phi <8 x float> [ %i.ahm, %.lr.ph3007 ], [ %.1025613016, %.preheader2884 ]
  %.1425903002 = phi <8 x float> [ %i.ahu, %.lr.ph3007 ], [ %.925853015, %.preheader2884 ]
  %.1426133001 = phi <8 x float> [ %i.aic, %.lr.ph3007 ], [ %.926083014, %.preheader2884 ]
  %.1426343000 = phi <8 x float> [ %i.aik, %.lr.ph3007 ], [ %.926293013, %.preheader2884 ]
  %i.afd = load <8 x bfloat>, ptr %.1413193006, align 16, !tbaa !28
  %i.afe = fpext fast <8 x bfloat> %i.afd to <8 x float>
  %i.aff = getelementptr inbounds nuw i8, ptr %.1413193006, i64 16
  %i.afg = load <8 x bfloat>, ptr %i.aff, align 16, !tbaa !28
  %i.afh = fpext fast <8 x bfloat> %i.afg to <8 x float>
  %i.afi = getelementptr inbounds nuw i8, ptr %.1413193006, i64 32
  %i.afj = load <8 x bfloat>, ptr %i.afi, align 16, !tbaa !28
  %i.afk = fpext fast <8 x bfloat> %i.afj to <8 x float>
  %i.afl = getelementptr inbounds nuw i8, ptr %.1413193006, i64 48
  %i.afm = load <8 x bfloat>, ptr %i.afl, align 16, !tbaa !28
  %i.afn = fpext fast <8 x bfloat> %i.afm to <8 x float>
  %i.afo = getelementptr inbounds nuw i8, ptr %.1413193006, i64 64
  %i.afp = load <8 x bfloat>, ptr %i.afo, align 16, !tbaa !28
  %i.afq = fpext fast <8 x bfloat> %i.afp to <8 x float>
  %i.afr = getelementptr inbounds nuw i8, ptr %.1413193006, i64 80
  %i.afs = load <8 x bfloat>, ptr %i.afr, align 16, !tbaa !28
  %i.aft = fpext fast <8 x bfloat> %i.afs to <8 x float>
  %i.afu = getelementptr inbounds nuw i8, ptr %.1413193006, i64 96
  %i.afv = load <8 x bfloat>, ptr %i.afu, align 16, !tbaa !28
  %i.afw = fpext fast <8 x bfloat> %i.afv to <8 x float>
  %i.afx = getelementptr inbounds nuw i8, ptr %.1413193006, i64 112
  %i.afy = load <8 x bfloat>, ptr %i.afx, align 16, !tbaa !28
  %i.afz = fpext fast <8 x bfloat> %i.afy to <8 x float>
  %i.aga = load i16, ptr %.414303005, align 2, !tbaa !33
  %i.agb = zext i16 %i.aga to i32
  %i.agc = shl nuw i32 %i.agb, 16
  %i.agd = insertelement <8 x i32> poison, i32 %i.agc, i64 0
  %i.age = bitcast <8 x i32> %i.agd to <8 x float>
  %i.agf = shufflevector <8 x float> %i.age, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afe, <8 x float> nofpclass(nan inf) %i.agf, <8 x float> nofpclass(nan inf) %.1525663003)
  %i.agh = getelementptr inbounds [2 x i8], ptr %.414303005, i64 %i.fw
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !33
  %i.agj = zext i16 %i.agi to i32
  %i.agk = shl nuw i32 %i.agj, 16
  %i.agl = insertelement <8 x i32> poison, i32 %i.agk, i64 0
  %i.agm = bitcast <8 x i32> %i.agl to <8 x float>
  %i.agn = shufflevector <8 x float> %i.agm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ago = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afh, <8 x float> nofpclass(nan inf) %i.agn, <8 x float> nofpclass(nan inf) %.1425903002)
  %i.agp = getelementptr inbounds [2 x i8], ptr %.414303005, i64 %i.ga
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !33
  %i.agr = zext i16 %i.agq to i32
  %i.ags = shl nuw i32 %i.agr, 16
  %i.agt = insertelement <8 x i32> poison, i32 %i.ags, i64 0
  %i.agu = bitcast <8 x i32> %i.agt to <8 x float>
  %i.agv = shufflevector <8 x float> %i.agu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afk, <8 x float> nofpclass(nan inf) %i.agv, <8 x float> nofpclass(nan inf) %.1426133001)
  %i.agx = getelementptr inbounds [2 x i8], ptr %.414303005, i64 %i.gc
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !33
  %i.agz = zext i16 %i.agy to i32
  %i.aha = shl nuw i32 %i.agz, 16
  %i.ahb = insertelement <8 x i32> poison, i32 %i.aha, i64 0
  %i.ahc = bitcast <8 x i32> %i.ahb to <8 x float>
  %i.ahd = shufflevector <8 x float> %i.ahc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahe = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afn, <8 x float> nofpclass(nan inf) %i.ahd, <8 x float> nofpclass(nan inf) %.1426343000)
  %i.ahf = getelementptr inbounds [2 x i8], ptr %.414303005, i64 %i.ge
  %i.ahg = load i16, ptr %i.ahf, align 2, !tbaa !33
  %i.ahh = zext i16 %i.ahg to i32
  %i.ahi = shl nuw i32 %i.ahh, 16
  %i.ahj = insertelement <8 x i32> poison, i32 %i.ahi, i64 0
  %i.ahk = bitcast <8 x i32> %i.ahj to <8 x float>
  %i.ahl = shufflevector <8 x float> %i.ahk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afq, <8 x float> nofpclass(nan inf) %i.ahl, <8 x float> nofpclass(nan inf) %i.agg) ; 2 uses
  %i.ahn = getelementptr inbounds [2 x i8], ptr %.414303005, i64 %i.gg
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !33
  %i.ahp = zext i16 %i.aho to i32
  %i.ahq = shl nuw i32 %i.ahp, 16
  %i.ahr = insertelement <8 x i32> poison, i32 %i.ahq, i64 0
  %i.ahs = bitcast <8 x i32> %i.ahr to <8 x float>
  %i.aht = shufflevector <8 x float> %i.ahs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aft, <8 x float> nofpclass(nan inf) %i.aht, <8 x float> nofpclass(nan inf) %i.ago) ; 2 uses
  %i.ahv = getelementptr inbounds [2 x i8], ptr %.414303005, i64 %i.gi
  %i.ahw = load i16, ptr %i.ahv, align 2, !tbaa !33
  %i.ahx = zext i16 %i.ahw to i32
  %i.ahy = shl nuw i32 %i.ahx, 16
  %i.ahz = insertelement <8 x i32> poison, i32 %i.ahy, i64 0
  %i.aia = bitcast <8 x i32> %i.ahz to <8 x float>
  %i.aib = shufflevector <8 x float> %i.aia, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aic = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afw, <8 x float> nofpclass(nan inf) %i.aib, <8 x float> nofpclass(nan inf) %i.agw) ; 2 uses
  %i.aid = getelementptr inbounds [2 x i8], ptr %.414303005, i64 %i.gk
  %i.aie = load i16, ptr %i.aid, align 2, !tbaa !33
  %i.aif = zext i16 %i.aie to i32
  %i.aig = shl nuw i32 %i.aif, 16
  %i.aih = insertelement <8 x i32> poison, i32 %i.aig, i64 0
  %i.aii = bitcast <8 x i32> %i.aih to <8 x float>
  %i.aij = shufflevector <8 x float> %i.aii, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aik = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afz, <8 x float> nofpclass(nan inf) %i.aij, <8 x float> nofpclass(nan inf) %i.ahe) ; 2 uses
  %i.ail = getelementptr inbounds [2 x i8], ptr %.414303005, i64 %i.gl
  %i.aim = getelementptr inbounds nuw i8, ptr %.1413193006, i64 128
  %i.ain = add nuw nsw i32 %.014343004, 1         ; 2 uses
  %exitcond4022.not = icmp eq i32 %i.ain, %i.fq
  br i1 %exitcond4022.not, label %.loopexit2885.loopexit, label %.lr.ph3007, !llvm.loop !42

.loopexit2885.loopexit:                           ; preds = %.lr.ph3007
  %scevgep4020 = getelementptr i8, ptr %.913143018, i64 128
  %scevgep4021 = getelementptr i8, ptr %scevgep4020, i64 %i.go
  br label %.loopexit2885

.loopexit2885:                                    ; preds = %.preheader2887, %.loopexit2888.loopexit, %bb.h, %.loopexit2886.loopexit, %.loopexit2885.loopexit, %.preheader2884, %.loopexit2886
  %.152635 = phi nsz <8 x float> [ %.926293013, %.loopexit2886 ], [ %.926293013, %.preheader2884 ], [ %i.aik, %.loopexit2885.loopexit ], [ %.926293013, %bb.h ], [ %i.aey, %.loopexit2886.loopexit ], [ %i.acu, %.loopexit2888.loopexit ], [ %.926293013, %.preheader2887 ] ; 2 uses
  %.152614 = phi nsz <8 x float> [ %.926083014, %.loopexit2886 ], [ %.926083014, %.preheader2884 ], [ %i.aic, %.loopexit2885.loopexit ], [ %.926083014, %bb.h ], [ %i.aev, %.loopexit2886.loopexit ], [ %i.acr, %.loopexit2888.loopexit ], [ %.926083014, %.preheader2887 ] ; 2 uses
  %.152591 = phi nsz <8 x float> [ %.925853015, %.loopexit2886 ], [ %.925853015, %.preheader2884 ], [ %i.ahu, %.loopexit2885.loopexit ], [ %.925853015, %bb.h ], [ %i.aes, %.loopexit2886.loopexit ], [ %i.aco, %.loopexit2888.loopexit ], [ %.925853015, %.preheader2887 ] ; 2 uses
  %.162567 = phi nsz <8 x float> [ %.1025613016, %.loopexit2886 ], [ %.1025613016, %.preheader2884 ], [ %i.ahm, %.loopexit2885.loopexit ], [ %.1025613016, %bb.h ], [ %i.aep, %.loopexit2886.loopexit ], [ %i.acl, %.loopexit2888.loopexit ], [ %.1025613016, %.preheader2887 ] ; 2 uses
  %.151320 = phi ptr [ %.913143018, %.loopexit2886 ], [ %.913143018, %.preheader2884 ], [ %scevgep4021, %.loopexit2885.loopexit ], [ %.913143018, %bb.h ], [ %scevgep4018, %.loopexit2886.loopexit ], [ %scevgep4015, %.loopexit2888.loopexit ], [ %.913143018, %.preheader2887 ] ; 2 uses
  %i.aio = add nuw nsw i32 %.113353017, 8         ; 3 uses
  %i.aip = or disjoint i32 %i.aio, 7
  %i.aiq = icmp slt i32 %i.aip, %i.bg
  br i1 %i.aiq, label %bb.g, label %.preheader2897, !llvm.loop !43

.preheader2896:                                   ; preds = %.loopexit2881, %.preheader2897
  %.162636.lcssa = phi <8 x float> [ %.92629.lcssa, %.preheader2897 ], [ %.202640, %.loopexit2881 ]
  %.162615.lcssa = phi <8 x float> [ %.92608.lcssa, %.preheader2897 ], [ %.202619, %.loopexit2881 ]
  %.162592.lcssa = phi <8 x float> [ %.92585.lcssa, %.preheader2897 ], [ %.202596, %.loopexit2881 ] ; 3 uses
  %.172568.lcssa = phi <8 x float> [ %.102561.lcssa, %.preheader2897 ], [ %.212572, %.loopexit2881 ] ; 3 uses
  %.21336.lcssa = phi i32 [ %.11335.lcssa, %.preheader2897 ], [ %i.anf, %.loopexit2881 ] ; 5 uses
  %.161321.lcssa = phi ptr [ %.91314.lcssa, %.preheader2897 ], [ %.201325, %.loopexit2881 ] ; 3 uses
  %i.air = or disjoint i32 %.21336.lcssa, 1
  %i.ais = icmp slt i32 %i.air, %i.bg
  br i1 %i.ais, label %.lr.ph3087, label %.preheader2895

.lr.ph3087:                                       ; preds = %.preheader2896
  %i.ait = load ptr, ptr %0, align 8, !tbaa !18
  %i.aiu = load i32, ptr %i.o, align 4, !tbaa !17
  %i.aiv = sext i32 %i.aiu to i64
  %i.aiw = load i64, ptr %i.al, align 8, !tbaa !24
  %factor.op.mul3092 = mul i64 %i.aiw, %i.aiv
  %i.aix = mul nsw i64 %indvars.iv4039, %i.da
  %invariant.gep3094 = getelementptr [2 x i8], ptr %i.ait, i64 %i.aix
  %i.aiy = load i32, ptr %i.e, align 4
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = load i32, ptr %i.b, align 4
  %i.ajb = sext i32 %i.aja to i64
  br i1 %i.cg, label %.lr.ph3079.us.preheader, label %.lr.ph3087.split.preheader

.lr.ph3087.split.preheader:                       ; preds = %.lr.ph3087
  %i.ajc = add i32 %.21336.lcssa, 2
  %i.ajd = sub i32 %10, %.21336.lcssa
  %i.aje = and i32 %i.ajd, -2
  %i.ajf = add i32 %i.ajc, %i.aje
  br label %.preheader2895

.lr.ph3079.us.preheader:                          ; preds = %.lr.ph3087
  %i.ajg = zext i32 %.21336.lcssa to i64
  br label %.lr.ph3079.us

.lr.ph3079.us:                                    ; preds = %.lr.ph3079.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.ajg, %.lr.ph3079.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 2 uses
  %.2113263086.us = phi ptr [ %.161321.lcssa, %.lr.ph3079.us.preheader ], [ %scevgep4030, %._crit_edge.us ] ; 2 uses
  %.2225733084.us = phi <8 x float> [ %.172568.lcssa, %.lr.ph3079.us.preheader ], [ %i.ajs, %._crit_edge.us ]
  %.2125973083.us = phi <8 x float> [ %.162592.lcssa, %.lr.ph3079.us.preheader ], [ %i.aka, %._crit_edge.us ]
  %.reass3093.us = mul i64 %factor.op.mul3092, %indvars.iv
  %gep3095.us = getelementptr i8, ptr %invariant.gep3094, i64 %.reass3093.us
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph3079.us, %bb.i
  %.2213273078.us = phi ptr [ %.2113263086.us, %.lr.ph3079.us ], [ %i.akc, %bb.i ] ; 3 uses
  %.014403077.us = phi ptr [ %gep3095.us, %.lr.ph3079.us ], [ %i.akb, %bb.i ] ; 3 uses
  %.014413076.us = phi i32 [ 0, %.lr.ph3079.us ], [ %i.akd, %bb.i ]
  %.2325743075.us = phi <8 x float> [ %.2225733084.us, %.lr.ph3079.us ], [ %i.ajs, %bb.i ]
  %.2225983074.us = phi <8 x float> [ %.2125973083.us, %.lr.ph3079.us ], [ %i.aka, %bb.i ]
  %i.ajh = load <8 x bfloat>, ptr %.2213273078.us, align 16, !tbaa !28
  %i.aji = fpext fast <8 x bfloat> %i.ajh to <8 x float>
  %i.ajj = getelementptr inbounds nuw i8, ptr %.2213273078.us, i64 16
  %i.ajk = load <8 x bfloat>, ptr %i.ajj, align 16, !tbaa !28
  %i.ajl = fpext fast <8 x bfloat> %i.ajk to <8 x float>
  %i.ajm = load i16, ptr %.014403077.us, align 2, !tbaa !33
  %i.ajn = zext i16 %i.ajm to i32
  %i.ajo = shl nuw i32 %i.ajn, 16
  %i.ajp = insertelement <8 x i32> poison, i32 %i.ajo, i64 0
  %i.ajq = bitcast <8 x i32> %i.ajp to <8 x float>
  %i.ajr = shufflevector <8 x float> %i.ajq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ajs = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aji, <8 x float> nofpclass(nan inf) %i.ajr, <8 x float> nofpclass(nan inf) %.2325743075.us) ; 3 uses
  %i.ajt = getelementptr inbounds [2 x i8], ptr %.014403077.us, i64 %i.aiz
  %i.aju = load i16, ptr %i.ajt, align 2, !tbaa !33
  %i.ajv = zext i16 %i.aju to i32
  %i.ajw = shl nuw i32 %i.ajv, 16
  %i.ajx = insertelement <8 x i32> poison, i32 %i.ajw, i64 0
  %i.ajy = bitcast <8 x i32> %i.ajx to <8 x float>
  %i.ajz = shufflevector <8 x float> %i.ajy, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aka = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ajl, <8 x float> nofpclass(nan inf) %i.ajz, <8 x float> nofpclass(nan inf) %.2225983074.us) ; 3 uses
  %i.akb = getelementptr inbounds [2 x i8], ptr %.014403077.us, i64 %i.ajb
  %i.akc = getelementptr inbounds nuw i8, ptr %.2213273078.us, i64 32
  %i.akd = add nuw nsw i32 %.014413076.us, 1      ; 2 uses
  %exitcond4031.not = icmp eq i32 %i.akd, %i.cf
  br i1 %exitcond4031.not, label %._crit_edge.us, label %bb.i, !llvm.loop !44

._crit_edge.us:                                   ; preds = %bb.i
  %scevgep4029 = getelementptr i8, ptr %.2113263086.us, i64 32
  %scevgep4030 = getelementptr i8, ptr %scevgep4029, i64 %i.cy ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ake = trunc i64 %indvars.iv.next to i32
  %i.akf = or i32 %i.ake, 1
  %i.akg = icmp slt i32 %i.akf, %i.bg
  br i1 %i.akg, label %.lr.ph3079.us, label %.preheader2895.loopexit, !llvm.loop !45

bb.j:                                             ; preds = %.lr.ph3063, %.loopexit2881
  %.1613213062 = phi ptr [ %.91314.lcssa, %.lr.ph3063 ], [ %.201325, %.loopexit2881 ] ; 7 uses
  %.213363061 = phi i32 [ %.11335.lcssa, %.lr.ph3063 ], [ %i.anf, %.loopexit2881 ] ; 2 uses
  %.1725683060 = phi <8 x float> [ %.102561.lcssa, %.lr.ph3063 ], [ %.212572, %.loopexit2881 ] ; 5 uses
  %.1625923059 = phi <8 x float> [ %.92585.lcssa, %.lr.ph3063 ], [ %.202596, %.loopexit2881 ] ; 5 uses
  %.1626153058 = phi <8 x float> [ %.92608.lcssa, %.lr.ph3063 ], [ %.202619, %.loopexit2881 ] ; 5 uses
  %.1626363057 = phi <8 x float> [ %.92629.lcssa, %.lr.ph3063 ], [ %.202640, %.loopexit2881 ] ; 5 uses
  %i.akh = sdiv i32 %.213363061, %i.be
  %i.aki = sext i32 %i.akh to i64
  %.reass3071 = mul i64 %factor.op.mul3070, %i.aki
  %gep3073 = getelementptr i8, ptr %invariant.gep3072, i64 %.reass3071 ; 2 uses
  br i1 %i.cd, label %.preheader2882, label %.loopexit2883

.preheader2882:                                   ; preds = %bb.j
  br i1 %i.aah, label %.lr.ph3037, label %.loopexit2881

.lr.ph3037:                                       ; preds = %.preheader2882, %.lr.ph3037
  %.1713223036 = phi ptr [ %i.alk, %.lr.ph3037 ], [ %.1613213062, %.preheader2882 ] ; 5 uses
  %.014353035 = phi ptr [ %i.alj, %.lr.ph3037 ], [ %gep3073, %.preheader2882 ] ; 2 uses
  %.014383034 = phi i32 [ %i.all, %.lr.ph3037 ], [ 0, %.preheader2882 ]
  %.1825693033 = phi <8 x float> [ %i.akz, %.lr.ph3037 ], [ %.1725683060, %.preheader2882 ]
  %.1725933032 = phi <8 x float> [ %i.alc, %.lr.ph3037 ], [ %.1625923059, %.preheader2882 ]
  %.1726163031 = phi <8 x float> [ %i.alf, %.lr.ph3037 ], [ %.1626153058, %.preheader2882 ]
  %.1726373030 = phi <8 x float> [ %i.ali, %.lr.ph3037 ], [ %.1626363057, %.preheader2882 ]
  %i.akj = load <8 x bfloat>, ptr %.1713223036, align 16, !tbaa !28
  %i.akk = fpext fast <8 x bfloat> %i.akj to <8 x float>
  %i.akl = getelementptr inbounds nuw i8, ptr %.1713223036, i64 16
  %i.akm = load <8 x bfloat>, ptr %i.akl, align 16, !tbaa !28
  %i.akn = fpext fast <8 x bfloat> %i.akm to <8 x float>
  %i.ako = getelementptr inbounds nuw i8, ptr %.1713223036, i64 32
  %i.akp = load <8 x bfloat>, ptr %i.ako, align 16, !tbaa !28
  %i.akq = fpext fast <8 x bfloat> %i.akp to <8 x float>
  %i.akr = getelementptr inbounds nuw i8, ptr %.1713223036, i64 48
  %i.aks = load <8 x bfloat>, ptr %i.akr, align 16, !tbaa !28
  %i.akt = fpext fast <8 x bfloat> %i.aks to <8 x float>
  %i.aku = load <4 x i16>, ptr %.014353035, align 2, !tbaa !33
  %i.akv = zext <4 x i16> %i.aku to <4 x i32>
  %i.akw = shl nuw <4 x i32> %i.akv, splat (i32 16) ; 4 uses
  %i.akx = bitcast <4 x i32> %i.akw to <4 x float>
  %i.aky = shufflevector <4 x float> %i.akx, <4 x float> poison, <8 x i32> zeroinitializer
  %i.akz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akk, <8 x float> nofpclass(nan inf) %i.aky, <8 x float> nofpclass(nan inf) %.1825693033) ; 2 uses
  %i.ala = bitcast <4 x i32> %i.akw to <4 x float>
  %i.alb = shufflevector <4 x float> %i.ala, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.alc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akn, <8 x float> nofpclass(nan inf) %i.alb, <8 x float> nofpclass(nan inf) %.1725933032) ; 2 uses
  %i.ald = bitcast <4 x i32> %i.akw to <4 x float>
  %i.ale = shufflevector <4 x float> %i.ald, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.alf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akq, <8 x float> nofpclass(nan inf) %i.ale, <8 x float> nofpclass(nan inf) %.1726163031) ; 2 uses
  %i.alg = bitcast <4 x i32> %i.akw to <4 x float>
  %i.alh = shufflevector <4 x float> %i.alg, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ali = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.akt, <8 x float> nofpclass(nan inf) %i.alh, <8 x float> nofpclass(nan inf) %.1726373030) ; 2 uses
  %i.alj = getelementptr inbounds [2 x i8], ptr %.014353035, i64 %i.aak
  %i.alk = getelementptr inbounds nuw i8, ptr %.1713223036, i64 64
  %i.all = add nuw nsw i32 %.014383034, 1         ; 2 uses
  %exitcond4025.not = icmp eq i32 %i.all, %i.aag
  br i1 %exitcond4025.not, label %.loopexit2883.loopexit, label %.lr.ph3037, !llvm.loop !46

.loopexit2883.loopexit:                           ; preds = %.lr.ph3037
  %scevgep4023 = getelementptr i8, ptr %.1613213062, i64 64
  %scevgep4024 = getelementptr i8, ptr %scevgep4023, i64 %i.aau
  br label %.loopexit2881

.loopexit2883:                                    ; preds = %bb.j
  br i1 %i.ce, label %.preheader2880, label %.loopexit2881

.preheader2880:                                   ; preds = %.loopexit2883
  br i1 %i.aah, label %.lr.ph3051, label %.loopexit2881

.lr.ph3051:                                       ; preds = %.preheader2880, %.lr.ph3051
  %.1913243050 = phi ptr [ %i.and, %.lr.ph3051 ], [ %.1613213062, %.preheader2880 ] ; 5 uses
  %.214373049 = phi ptr [ %i.anc, %.lr.ph3051 ], [ %gep3073, %.preheader2880 ] ; 5 uses
  %.014393048 = phi i32 [ %i.ane, %.lr.ph3051 ], [ 0, %.preheader2880 ]
  %.2025713047 = phi <8 x float> [ %i.amd, %.lr.ph3051 ], [ %.1725683060, %.preheader2880 ]
  %.1925953046 = phi <8 x float> [ %i.aml, %.lr.ph3051 ], [ %.1625923059, %.preheader2880 ]
  %.1926183045 = phi <8 x float> [ %i.amt, %.lr.ph3051 ], [ %.1626153058, %.preheader2880 ]
  %.1926393044 = phi <8 x float> [ %i.anb, %.lr.ph3051 ], [ %.1626363057, %.preheader2880 ]
  %i.alm = load <8 x bfloat>, ptr %.1913243050, align 16, !tbaa !28
  %i.aln = fpext fast <8 x bfloat> %i.alm to <8 x float>
  %i.alo = getelementptr inbounds nuw i8, ptr %.1913243050, i64 16
  %i.alp = load <8 x bfloat>, ptr %i.alo, align 16, !tbaa !28
  %i.alq = fpext fast <8 x bfloat> %i.alp to <8 x float>
  %i.alr = getelementptr inbounds nuw i8, ptr %.1913243050, i64 32
  %i.als = load <8 x bfloat>, ptr %i.alr, align 16, !tbaa !28
  %i.alt = fpext fast <8 x bfloat> %i.als to <8 x float>
  %i.alu = getelementptr inbounds nuw i8, ptr %.1913243050, i64 48
  %i.alv = load <8 x bfloat>, ptr %i.alu, align 16, !tbaa !28
  %i.alw = fpext fast <8 x bfloat> %i.alv to <8 x float>
  %i.alx = load i16, ptr %.214373049, align 2, !tbaa !33
  %i.aly = zext i16 %i.alx to i32
  %i.alz = shl nuw i32 %i.aly, 16
  %i.ama = insertelement <8 x i32> poison, i32 %i.alz, i64 0
  %i.amb = bitcast <8 x i32> %i.ama to <8 x float>
  %i.amc = shufflevector <8 x float> %i.amb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aln, <8 x float> nofpclass(nan inf) %i.amc, <8 x float> nofpclass(nan inf) %.2025713047) ; 2 uses
  %i.ame = getelementptr inbounds [2 x i8], ptr %.214373049, i64 %i.aam
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !33
  %i.amg = zext i16 %i.amf to i32
  %i.amh = shl nuw i32 %i.amg, 16
  %i.ami = insertelement <8 x i32> poison, i32 %i.amh, i64 0
  %i.amj = bitcast <8 x i32> %i.ami to <8 x float>
  %i.amk = shufflevector <8 x float> %i.amj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aml = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alq, <8 x float> nofpclass(nan inf) %i.amk, <8 x float> nofpclass(nan inf) %.1925953046) ; 2 uses
  %i.amm = getelementptr inbounds [2 x i8], ptr %.214373049, i64 %i.aao
  %i.amn = load i16, ptr %i.amm, align 2, !tbaa !33
  %i.amo = zext i16 %i.amn to i32
  %i.amp = shl nuw i32 %i.amo, 16
  %i.amq = insertelement <8 x i32> poison, i32 %i.amp, i64 0
  %i.amr = bitcast <8 x i32> %i.amq to <8 x float>
  %i.ams = shufflevector <8 x float> %i.amr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.amt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alt, <8 x float> nofpclass(nan inf) %i.ams, <8 x float> nofpclass(nan inf) %.1926183045) ; 2 uses
  %i.amu = getelementptr inbounds [2 x i8], ptr %.214373049, i64 %i.aaq
  %i.amv = load i16, ptr %i.amu, align 2, !tbaa !33
  %i.amw = zext i16 %i.amv to i32
  %i.amx = shl nuw i32 %i.amw, 16
  %i.amy = insertelement <8 x i32> poison, i32 %i.amx, i64 0
  %i.amz = bitcast <8 x i32> %i.amy to <8 x float>
  %i.ana = shufflevector <8 x float> %i.amz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.alw, <8 x float> nofpclass(nan inf) %i.ana, <8 x float> nofpclass(nan inf) %.1926393044) ; 2 uses
  %i.anc = getelementptr inbounds [2 x i8], ptr %.214373049, i64 %i.aar
  %i.and = getelementptr inbounds nuw i8, ptr %.1913243050, i64 64
  %i.ane = add nuw nsw i32 %.014393048, 1         ; 2 uses
  %exitcond4028.not = icmp eq i32 %i.ane, %i.aag
  br i1 %exitcond4028.not, label %.loopexit2881.loopexit, label %.lr.ph3051, !llvm.loop !47

.loopexit2881.loopexit:                           ; preds = %.lr.ph3051
  %scevgep4026 = getelementptr i8, ptr %.1613213062, i64 64
  %scevgep4027 = getelementptr i8, ptr %scevgep4026, i64 %i.aau
  br label %.loopexit2881

.loopexit2881:                                    ; preds = %.preheader2882, %.loopexit2883.loopexit, %.loopexit2881.loopexit, %.preheader2880, %.loopexit2883
  %.202640 = phi nsz <8 x float> [ %.1626363057, %.loopexit2883 ], [ %.1626363057, %.preheader2880 ], [ %i.anb, %.loopexit2881.loopexit ], [ %i.ali, %.loopexit2883.loopexit ], [ %.1626363057, %.preheader2882 ] ; 2 uses
  %.202619 = phi nsz <8 x float> [ %.1626153058, %.loopexit2883 ], [ %.1626153058, %.preheader2880 ], [ %i.amt, %.loopexit2881.loopexit ], [ %i.alf, %.loopexit2883.loopexit ], [ %.1626153058, %.preheader2882 ] ; 2 uses
  %.202596 = phi nsz <8 x float> [ %.1625923059, %.loopexit2883 ], [ %.1625923059, %.preheader2880 ], [ %i.aml, %.loopexit2881.loopexit ], [ %i.alc, %.loopexit2883.loopexit ], [ %.1625923059, %.preheader2882 ] ; 2 uses
  %.212572 = phi nsz <8 x float> [ %.1725683060, %.loopexit2883 ], [ %.1725683060, %.preheader2880 ], [ %i.amd, %.loopexit2881.loopexit ], [ %i.akz, %.loopexit2883.loopexit ], [ %.1725683060, %.preheader2882 ] ; 2 uses
  %.201325 = phi ptr [ %.1613213062, %.loopexit2883 ], [ %.1613213062, %.preheader2880 ], [ %scevgep4027, %.loopexit2881.loopexit ], [ %scevgep4024, %.loopexit2883.loopexit ], [ %.1613213062, %.preheader2882 ] ; 2 uses
  %i.anf = add nuw nsw i32 %.213363061, 4         ; 3 uses
  %i.ang = or disjoint i32 %i.anf, 3
  %i.anh = icmp slt i32 %i.ang, %i.bg
  br i1 %i.anh, label %bb.j, label %.preheader2896, !llvm.loop !48

.preheader2895.loopexit:                          ; preds = %._crit_edge.us
  %i.ani = trunc nuw i64 %indvars.iv.next to i32
  br label %.preheader2895
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
bb.o:                                             ; preds = %._crit_edge3110
  %i.aqv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.apb, <8 x float> splat (float f0x42B0C0A5))
  %i.aqw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aqv, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aqx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aqw, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.aqy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aqx, i32 1) ; 2 uses
  %i.aqz = fcmp fast ogt <8 x float> %i.aqy, %i.aqx
  %i.ara = select <8 x i1> %i.aqz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.arb = fsub fast <8 x float> %i.aqy, %i.ara   ; 2 uses
  %i.arc = fneg fast <8 x float> %i.arb           ; 2 uses
  %i.ard = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.arc, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.aqw)
  %i.are = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.arc, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ard) ; 8 uses
  %i.arf = fmul fast <8 x float> %i.are, %i.are
  %i.arg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.are, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.arh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.arg, <8 x float> nofpclass(nan inf) %i.are, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.ari = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.arh, <8 x float> nofpclass(nan inf) %i.are, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.arj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ari, <8 x float> nofpclass(nan inf) %i.are, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.ark = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.arj, <8 x float> nofpclass(nan inf) %i.are, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.arl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ark, <8 x float> nofpclass(nan inf) %i.arf, <8 x float> nofpclass(nan inf) %i.are)
  %i.arm = fadd fast <8 x float> %i.arl, splat (float 1.000000e+00)
  %i.arn = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.arb)
  %i.aro = shl <8 x i32> %i.arn, splat (i32 23)
  %i.arp = add <8 x i32> %i.aro, splat (i32 1065353216)
  %i.arq = bitcast <8 x i32> %i.arp to <8 x float>
  %i.arr = fmul fast <8 x float> %i.arm, %i.arq
  %i.ars = fadd fast <8 x float> %i.arr, splat (float 1.000000e+00) ; 2 uses
  %i.art = fcmp fast ole <8 x float> %i.ars, zeroinitializer
  %i.aru = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ars, <8 x float> splat (float f0x00800000))
  %i.arv = bitcast <8 x float> %i.aru to <8 x i32> ; 2 uses
  %i.arw = lshr <8 x i32> %i.arv, splat (i32 23)
  %i.arx = and <8 x i32> %i.arv, splat (i32 -2139095041)
  %i.ary = or disjoint <8 x i32> %i.arx, splat (i32 1056964608)
  %i.arz = bitcast <8 x i32> %i.ary to <8 x float> ; 3 uses
  %i.asa = add nsw <8 x i32> %i.arw, splat (i32 -127)
  %i.asb = sitofp fast <8 x i32> %i.asa to <8 x float> ; 2 uses
  %i.asc = fadd fast <8 x float> %i.asb, splat (float 1.000000e+00)
  %i.asd = fcmp fast olt <8 x float> %i.arz, splat (float f0x3F3504F3) ; 2 uses
  %i.ase = select <8 x i1> %i.asd, <8 x float> %i.arz, <8 x float> zeroinitializer
  %i.asf = fadd fast <8 x float> %i.arz, splat (float -1.000000e+00)
  %i.asg = select fast <8 x i1> %i.asd, <8 x float> %i.asb, <8 x float> %i.asc ; 2 uses
  %i.ash = fadd fast <8 x float> %i.asf, %i.ase   ; 12 uses
  %i.asi = fmul fast <8 x float> %i.ash, %i.ash   ; 2 uses
  %i.asj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.ask = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.asj, <8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.asl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ask, <8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.asm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.asl, <8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.asn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.asm, <8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.aso = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.asn, <8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.asp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aso, <8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.asq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.asp, <8 x float> nofpclass(nan inf) %i.ash, <8 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.asr = fmul fast <8 x float> %i.asi, %i.ash
  %i.ass = fmul fast <8 x float> %i.asr, %i.asq
  %i.ast = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.asg, <8 x float> nofpclass(nan inf) splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ass)
  %i.asu = fneg fast <8 x float> %i.asi
  %i.asv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.asu, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ast)
  %i.asw = fadd fast <8 x float> %i.asv, %i.ash
  %i.asx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.asg, <8 x float> nofpclass(nan inf) splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.asw)
  %.neg2830 = fmul fast <8 x float> %i.asx, splat (float -2.000000e+00)
  %i.asy = select fast <8 x i1> %i.art, <8 x float> splat (float +nan(0x3FFFFF)), <8 x float> %.neg2830
  %i.asz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.asy, <8 x float> splat (float f0x42B0C0A5))
  %i.ata = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.asz, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.atb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ata, <8 x float> nofpclass(nan inf) splat (float f0x3FB8AA3B), <8 x float> nofpclass(nan inf) splat (float 5.000000e-01)) ; 2 uses
  %i.atc = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.atb, i32 1) ; 2 uses
  %i.atd = fcmp fast ogt <8 x float> %i.atc, %i.atb
  %i.ate = select <8 x i1> %i.atd, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.atf = fsub fast <8 x float> %i.atc, %i.ate   ; 2 uses
  %i.atg = fneg fast <8 x float> %i.atf           ; 2 uses
  %i.ath = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.atg, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ata)
  %i.ati = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.atg, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ath) ; 8 uses
  %i.atj = fmul fast <8 x float> %i.ati, %i.ati
  %i.atk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ati, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.atl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atk, <8 x float> nofpclass(nan inf) %i.ati, <8 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.atm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atl, <8 x float> nofpclass(nan inf) %i.ati, <8 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.atn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atm, <8 x float> nofpclass(nan inf) %i.ati, <8 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.ato = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atn, <8 x float> nofpclass(nan inf) %i.ati, <8 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.atp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ato, <8 x float> nofpclass(nan inf) %i.atj, <8 x float> nofpclass(nan inf) %i.ati)
  %i.atq = fadd fast <8 x float> %i.atp, splat (float 1.000000e+00)
  %i.atr = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.atf)
  %i.ats = shl <8 x i32> %i.atr, splat (i32 23)
  %i.att = add <8 x i32> %i.ats, splat (i32 1065353216)
  %i.atu = bitcast <8 x i32> %i.att to <8 x float>
  %i.atv = fmul fast <8 x float> %i.atq, %i.atu
  %i.atw = fadd fast <8 x float> %i.atv, splat (float 1.000000e+00)
  %i.atx = fdiv fast <8 x float> splat (float 1.000000e+00), %i.atw
  %i.aty = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atx, <8 x float> splat (float 2.000000e+00), <8 x float> splat (float -1.000000e+00))
  %i.atz = fmul fast <8 x float> %i.aty, %i.apb
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

bb.p:                                             ; preds = %._crit_edge3110
  %i.aua = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !51
  %i.auc = insertelement <8 x float> poison, float %i.aub, i64 0
  %i.aud = shufflevector <8 x float> %i.auc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aua, i64 4
  %i.auf = load float, ptr %i.aue, align 4, !tbaa !51
  %i.aug = insertelement <8 x float> poison, float %i.auf, i64 0
  %i.auh = shufflevector <8 x float> %i.aug, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aui = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.apb, <8 x float> nofpclass(nan inf) %i.aud, <8 x float> nofpclass(nan inf) %i.auh)
  %i.auj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aui, <8 x float> zeroinitializer)
  %i.auk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.auj, <8 x float> splat (float 1.000000e+00))
  %i.aul = fmul fast <8 x float> %i.auk, %i.apb
  br label %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit

_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge3110, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i = phi nsz <8 x float> [ %i.aul, %bb.p ], [ %i.apc, %bb.k ], [ %i.apk, %bb.l ], [ %i.apu, %bb.m ], [ %i.aqu, %bb.n ], [ %i.atz, %bb.o ], [ %i.apb, %._crit_edge3110 ] ; 3 uses
  switch i32 %i.bh, label %.thread2796 [
    i32 8, label %.thread
    i32 4, label %bb.q
    i32 1, label %bb.r
  ]

.thread:                                          ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.aum = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i)
  store <8 x bfloat> %i.aum, ptr %.013003119, align 16, !tbaa !28
  %i.aun = getelementptr inbounds nuw i8, ptr %.013003119, i64 16
  br label %.thread2796

bb.q:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.auo = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %.0.i)
  %i.aup = bitcast <8 x bfloat> %i.auo to <2 x i64> ; 2 uses
  %i.auq = extractelement <2 x i64> %i.aup, i64 0
  store i64 %i.auq, ptr %.013003119, align 1, !tbaa !28
  %i.aur = getelementptr inbounds [2 x i8], ptr %.013003119, i64 %i.ci
  %i.aus = extractelement <2 x i64> %i.aup, i64 1
  store i64 %i.aus, ptr %i.aur, align 1, !tbaa !28
  %i.aut = getelementptr inbounds nuw i8, ptr %.013003119, i64 8
  br label %.thread2796

bb.r:                                             ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit
  %i.auu = bitcast <8 x float> %.0.i to <16 x i16> ; 8 uses
  %i.auv = extractelement <16 x i16> %i.auu, i64 1
  store i16 %i.auv, ptr %.013003119, align 2, !tbaa !33
  %i.auw = extractelement <16 x i16> %i.auu, i64 3
  %i.aux = getelementptr inbounds [2 x i8], ptr %.013003119, i64 %i.ci
  store i16 %i.auw, ptr %i.aux, align 2, !tbaa !33
  %i.auy = extractelement <16 x i16> %i.auu, i64 5
  %i.auz = getelementptr inbounds [2 x i8], ptr %.013003119, i64 %i.ck
  store i16 %i.auy, ptr %i.auz, align 2, !tbaa !33
  %i.ava = extractelement <16 x i16> %i.auu, i64 7
  %i.avb = getelementptr inbounds [2 x i8], ptr %.013003119, i64 %i.cm
  store i16 %i.ava, ptr %i.avb, align 2, !tbaa !33
  %i.avc = extractelement <16 x i16> %i.auu, i64 9
  %i.avd = getelementptr inbounds [2 x i8], ptr %.013003119, i64 %i.co
  store i16 %i.avc, ptr %i.avd, align 2, !tbaa !33
  %i.ave = extractelement <16 x i16> %i.auu, i64 11
  %i.avf = getelementptr inbounds [2 x i8], ptr %.013003119, i64 %i.cq
  store i16 %i.ave, ptr %i.avf, align 2, !tbaa !33
  %i.avg = extractelement <16 x i16> %i.auu, i64 13
  %i.avh = getelementptr inbounds [2 x i8], ptr %.013003119, i64 %i.cs
  store i16 %i.avg, ptr %i.avh, align 2, !tbaa !33
  %i.avi = extractelement <16 x i16> %i.auu, i64 15
  %i.avj = getelementptr inbounds [2 x i8], ptr %.013003119, i64 %i.cu
  store i16 %i.avi, ptr %i.avj, align 2, !tbaa !33
  %i.avk = getelementptr inbounds nuw i8, ptr %.013003119, i64 2
  br label %.thread2796

.thread2796:                                      ; preds = %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit, %bb.q, %.thread, %bb.r
  %.31303 = phi ptr [ %i.avk, %bb.r ], [ %.013003119, %_ZL14activation_avxDv8_fiRKN4ncnn3MatE.exit ], [ %i.aun, %.thread ], [ %i.aut, %bb.q ]
  %indvars.iv.next4040 = add nuw nsw i64 %indvars.iv4039, 1 ; 2 uses
  %exitcond4042.not = icmp eq i64 %indvars.iv.next4040, %wide.trip.count
  br i1 %exitcond4042.not, label %._crit_edge, label %bb.b, !llvm.loop !53

._crit_edge3377:                                  ; preds = %._crit_edge3367, %.lr.ph3376, %._crit_edge3130
  %i.avl = shl nsw i32 %i.at, 2
  %i.avm = add nsw i32 %i.avl, %i.ar              ; 3 uses
  %i.avn = sub nsw i32 %i.x, %i.avm               ; 2 uses
  %i.avo = sdiv i32 %i.avn, 2                     ; 3 uses
  store i32 %i.avo, ptr %i.h, align 4, !tbaa !9
  %i.avp = icmp sgt i32 %i.avn, 1
  br i1 %i.avp, label %.lr.ph3587, label %._crit_edge3588.split

.lr.ph3587:                                       ; preds = %._crit_edge3377
  %i.avq = load i32, ptr %i.j, align 8, !tbaa !10 ; 9 uses
  %i.avr = load i32, ptr %i.l, align 8, !tbaa !16
  %i.avs = mul i32 %i.avr, %i.avq                 ; 12 uses
  %i.avt = load i32, ptr %i.r, align 4, !tbaa !17 ; 3 uses
  %i.avu = load ptr, ptr %1, align 8, !tbaa !18   ; 2 uses
  %i.avv = sext i32 %i.avt to i64
  %i.avw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !24
  %i.avy = mul i64 %i.avx, %i.avv                 ; 2 uses
  %i.avz = icmp sgt i32 %i.avt, 0
  %i.awa = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not1503 = icmp eq ptr %i.awa, null
  %i.awb = icmp sgt i32 %i.avs, 15
  %i.awc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.awd = icmp eq i32 %i.avq, 16
  %i.awe = icmp eq i32 %i.avq, 8                  ; 2 uses
  %i.awf = icmp eq i32 %i.avq, 4                  ; 3 uses
  %i.awg = icmp ne i32 %i.avq, 1                  ; 3 uses
  %i.awh = load i32, ptr %i.d, align 4
  br i1 %i.avz, label %.lr.ph3587.split, label %._crit_edge3588.split

.lr.ph3587.split:                                 ; preds = %.lr.ph3587
  %i.awi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.awj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.awk = load ptr, ptr %2, align 8, !tbaa !18, !noalias !54
  %i.awl = load i64, ptr %i.awj, align 8, !tbaa !32, !noalias !54
  %i.awm = load i64, ptr %i.awi, align 8, !tbaa !24, !noalias !54
  %factor.op.mul3590 = mul i64 %i.awl, %i.awm
  %i.awn = and i32 %i.avs, -16
  %11 = add i32 %i.avs, -2
  %i.awo = sext i32 %i.avm to i64
  %wide.trip.count4146 = zext nneg i32 %i.avo to i64
  %wide.trip.count4141 = zext nneg i32 %i.avt to i64
  br label %.lr.ph3577

.lr.ph3376.splitthread-pre-split:                 ; preds = %._crit_edge3367
  %.pr4306 = load i32, ptr %i.r, align 4, !tbaa !17
  br label %.lr.ph3376.split

.lr.ph3376.split:                                 ; preds = %.lr.ph3376.splitthread-pre-split, %.lr.ph3376.split.preheader
  %i.awp = phi i32 [ %.pr4306, %.lr.ph3376.splitthread-pre-split ], [ %i.ba, %.lr.ph3376.split.preheader ] ; 3 uses
  %indvars.iv4093 = phi i64 [ %indvars.iv.next4094, %.lr.ph3376.splitthread-pre-split ], [ 0, %.lr.ph3376.split.preheader ] ; 2 uses
  %i.awq = load i32, ptr %i.j, align 8, !tbaa !10 ; 9 uses
  %i.awr = load i32, ptr %i.l, align 8, !tbaa !16
  %i.aws = mul i32 %i.awr, %i.awq                 ; 12 uses
  %i.awt = load i32, ptr %i.t, align 8, !tbaa !10 ; 2 uses
  %i.awu = icmp sgt i32 %i.awp, 0
  br i1 %i.awu, label %.lr.ph3366, label %._crit_edge3367

.lr.ph3366:                                       ; preds = %.lr.ph3376.split
  %i.awv = load ptr, ptr %1, align 8, !tbaa !18
  %i.aww = shl nuw nsw i64 %indvars.iv4093, 2
  %i.awx = add nsw i64 %i.aww, %i.bc              ; 2 uses
  %i.awy = trunc nsw i64 %i.awx to i32            ; 3 uses
  %i.awz = sdiv i32 %i.awy, %i.awt
  %i.axa = sext i32 %i.awz to i64
  %i.axb = zext nneg i32 %i.awp to i64
  %i.axc = mul nsw i64 %i.axa, %i.axb
  %i.axd = load i64, ptr %i.av, align 8, !tbaa !24
  %i.axe = mul i64 %i.axc, %i.axd
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awv, i64 %i.axe
  %i.axg = sdiv i32 %i.awy, 16
  %i.axh = insertelement <2 x i32> poison, i32 %i.awy, i64 0
  %i.axi = shufflevector <2 x i32> %i.axh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.axj = srem <2 x i32> %i.axi, <i32 16, i32 8> ; 2 uses
  %i.axk = bitcast <2 x i32> %i.axj to <8 x i8>
  %.lhs.trunc = extractelement <8 x i8> %i.axk, i64 0
  %i.axl = sdiv i8 %.lhs.trunc, 8
  %.sext = sext i8 %i.axl to i32
  %i.axm = extractelement <2 x i32> %i.axj, i64 1
  %i.axn = ashr exact i32 %i.axm, 2
  %i.axo = add nsw i32 %i.axn, %i.axg
  %i.axp = add nsw i32 %i.axo, %.sext
  %i.axq = sext i32 %i.axp to i64
  %i.axr = icmp sgt i32 %i.aws, 15
  %i.axs = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul3368 = mul i32 %i.awq, %i.axs     ; 3 uses
  %i.axt = icmp eq i32 %i.awq, 16
  %i.axu = icmp eq i32 %i.awq, 8                  ; 2 uses
  %i.axv = icmp eq i32 %i.awq, 4                  ; 3 uses
  %i.axw = icmp eq i32 %i.awq, 1                  ; 3 uses
  %i.axx = load i32, ptr %i.a, align 4            ; 6 uses
  %i.axy = icmp sgt i32 %i.axx, 0                 ; 2 uses
  %i.axz = load i32, ptr %i.f, align 4            ; 3 uses
  %i.aya = sext i32 %i.axz to i64
  %i.ayb = shl nsw i32 %i.axz, 1
  %i.ayc = sext i32 %i.ayb to i64
  %i.ayd = mul nsw i32 %i.axz, 3
  %i.aye = sext i32 %i.ayd to i64
  %i.ayf = and i32 %i.aws, -16
  %12 = add i32 %i.aws, -2
  %i.ayg = add i32 %i.axx, -1                     ; 2 uses
  %i.ayh = zext i32 %i.ayg to i64                 ; 2 uses
  %i.ayi = shl nuw nsw i64 %i.ayh, 4
  %i.ayj = shl nuw nsw i64 %i.ayh, 3
  %i.ayk = sext i32 %i.axs to i64                 ; 2 uses
  %wide.trip.count4091 = zext nneg i32 %i.awp to i64
  %xtraiter4748 = and i32 %i.axx, 1
  %i.ayl = icmp eq i32 %i.ayg, 0
  %unroll_iter4752 = and i32 %i.axx, 2147483646
  %lcmp.mod4749.not = icmp eq i32 %xtraiter4748, 0
  %lcmp.mod4751 = trunc i32 %i.axx to i1
  br label %bb.s

._crit_edge3367:                                  ; preds = %bb.ai, %.lr.ph3376.split
  %indvars.iv.next4094 = add nuw nsw i64 %indvars.iv4093, 1 ; 2 uses
  %exitcond4097.not = icmp eq i64 %indvars.iv.next4094, %wide.trip.count4096
  br i1 %exitcond4097.not, label %._crit_edge3377, label %.lr.ph3376.splitthread-pre-split, !llvm.loop !57

bb.s:                                             ; preds = %.lr.ph3366, %bb.ai
  %indvars.iv4088 = phi i64 [ 0, %.lr.ph3366 ], [ %indvars.iv.next4089, %bb.ai ] ; 6 uses
  %.014463364 = phi ptr [ %i.axf, %.lr.ph3366 ], [ %.21448, %bb.ai ] ; 8 uses
  %i.aym = load ptr, ptr %i.g, align 8, !tbaa !19 ; 2 uses
  %.not1504 = icmp eq ptr %i.aym, null
  br i1 %.not1504, label %_ZN4ncnn3MatD2Ev.exit1510, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ayn = getelementptr inbounds [4 x i8], ptr %i.aym, i64 %i.awx
  %i.ayo = load <4 x float>, ptr %i.ayn, align 1, !tbaa !28
  br label %_ZN4ncnn3MatD2Ev.exit1510

_ZN4ncnn3MatD2Ev.exit1510:                        ; preds = %bb.t, %bb.s
  %.02646 = phi nsz <4 x float> [ zeroinitializer, %bb.s ], [ %i.ayo, %bb.t ] ; 2 uses
  %i.ayp = load ptr, ptr %2, align 8, !tbaa !18, !noalias !58
  %i.ayq = load i64, ptr %i.aw, align 8, !tbaa !32, !noalias !58
  %i.ayr = mul i64 %i.ayq, %i.axq
  %i.ays = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !58
  %i.ayt = mul i64 %i.ayr, %i.ays
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %i.ayt ; 2 uses
  br i1 %i.axr, label %.lr.ph3200, label %.preheader2879

.lr.ph3200:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit1510
  %i.ayv = load ptr, ptr %0, align 8, !tbaa !18
  %i.ayw = load i32, ptr %i.o, align 4, !tbaa !17
  %i.ayx = sext i32 %i.ayw to i64
  %i.ayy = load i64, ptr %i.ay, align 8, !tbaa !24
  %factor.op.mul3207 = mul i64 %i.ayy, %i.ayx
  %i.ayz = trunc nuw nsw i64 %indvars.iv4088 to i32
  %.reass3369 = mul i32 %factor.op.mul3368, %i.ayz
  %i.aza = sext i32 %.reass3369 to i64
  %invariant.gep3209 = getelementptr [2 x i8], ptr %i.ayv, i64 %i.aza
  %i.azb = load i32, ptr %i.a, align 4            ; 6 uses
  %i.azc = icmp sgt i32 %i.azb, 0                 ; 4 uses
  %i.azd = load i32, ptr %i.b, align 4            ; 4 uses
  %i.aze = shl nsw i32 %i.azd, 4
  %i.azf = sext i32 %i.aze to i64
  %i.azg = load i32, ptr %i.e, align 4            ; 15 uses
  %i.azh = sext i32 %i.azg to i64                 ; 3 uses
  %i.azi = shl nsw i32 %i.azd, 3
  %i.azj = sext i32 %i.azi to i64                 ; 2 uses
  %i.azk = shl nsw i32 %i.azg, 1
  %i.azl = sext i32 %i.azk to i64                 ; 2 uses
  %i.azm = mul nsw i32 %i.azg, 3
  %i.azn = sext i32 %i.azm to i64                 ; 2 uses
  %i.azo = shl nsw i32 %i.azd, 2
  %i.azp = sext i32 %i.azo to i64                 ; 4 uses
  %i.azq = shl nsw i32 %i.azg, 2
  %i.azr = sext i32 %i.azq to i64
  %i.azs = mul nsw i32 %i.azg, 5
  %i.azt = sext i32 %i.azs to i64
  %i.azu = mul nsw i32 %i.azg, 6
  %i.azv = sext i32 %i.azu to i64
  %i.azw = mul nsw i32 %i.azg, 7
  %i.azx = sext i32 %i.azw to i64
  %i.azy = shl nsw i32 %i.azg, 3
  %i.azz = sext i32 %i.azy to i64
  %i.baa = mul nsw i32 %i.azg, 9
  %i.bab = sext i32 %i.baa to i64
  %i.bac = mul nsw i32 %i.azg, 10
  %i.bad = sext i32 %i.bac to i64
  %i.bae = mul nsw i32 %i.azg, 11
  %i.baf = sext i32 %i.bae to i64
  %i.bag = mul nsw i32 %i.azg, 12
  %i.bah = sext i32 %i.bag to i64
  %i.bai = mul nsw i32 %i.azg, 13
  %i.baj = sext i32 %i.bai to i64
  %i.bak = mul nsw i32 %i.azg, 14
  %i.bal = sext i32 %i.bak to i64
  %i.bam = mul nsw i32 %i.azg, 15
  %i.ban = sext i32 %i.bam to i64
  %i.bao = sext i32 %i.azd to i64
  %i.bap = add i32 %i.azb, -1
  %i.baq = zext i32 %i.bap to i64
  %i.bar = shl nuw nsw i64 %i.baq, 7              ; 4 uses
  br label %bb.u

.preheader2879:                                   ; preds = %.loopexit2871, %_ZN4ncnn3MatD2Ev.exit1510
  %.02723.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1510 ], [ %.82731, %.loopexit2871 ] ; 2 uses
  %.02695.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1510 ], [ %.82703, %.loopexit2871 ] ; 2 uses
  %.02672.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit1510 ], [ %.82680, %.loopexit2871 ] ; 2 uses
  %.12647.lcssa = phi <4 x float> [ %.02646, %_ZN4ncnn3MatD2Ev.exit1510 ], [ %.92655, %.loopexit2871 ] ; 2 uses
  %.01475.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1510 ], [ %i.ayf, %.loopexit2871 ] ; 3 uses
  %.01450.lcssa = phi ptr [ %i.ayu, %_ZN4ncnn3MatD2Ev.exit1510 ], [ %.81458, %.loopexit2871 ] ; 2 uses
  %i.bas = or disjoint i32 %.01475.lcssa, 7
  %i.bat = icmp slt i32 %i.bas, %i.aws
  br i1 %i.bat, label %.lr.ph3260, label %.preheader2878

.lr.ph3260:                                       ; preds = %.preheader2879
  %i.bau = load ptr, ptr %0, align 8, !tbaa !18
  %i.bav = load i32, ptr %i.o, align 4, !tbaa !17
  %i.baw = sext i32 %i.bav to i64
  %i.bax = load i64, ptr %i.ay, align 8, !tbaa !24
  %factor.op.mul3267 = mul i64 %i.bax, %i.baw
  %i.bay = trunc nuw nsw i64 %indvars.iv4088 to i32
  %.reass3371 = mul i32 %factor.op.mul3368, %i.bay
  %i.baz = sext i32 %.reass3371 to i64
  %invariant.gep3269 = getelementptr [2 x i8], ptr %i.bau, i64 %i.baz
  %i.bba = load i32, ptr %i.a, align 4            ; 5 uses
  %i.bbb = icmp sgt i32 %i.bba, 0                 ; 3 uses
  %i.bbc = load i32, ptr %i.b, align 4            ; 3 uses
  %i.bbd = shl nsw i32 %i.bbc, 3
  %i.bbe = sext i32 %i.bbd to i64
  %i.bbf = load i32, ptr %i.e, align 4            ; 7 uses
  %i.bbg = sext i32 %i.bbf to i64                 ; 2 uses
  %i.bbh = shl nsw i32 %i.bbc, 2
  %i.bbi = sext i32 %i.bbh to i64                 ; 2 uses
  %i.bbj = shl nsw i32 %i.bbf, 1
  %i.bbk = sext i32 %i.bbj to i64
  %i.bbl = mul nsw i32 %i.bbf, 3
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = shl nsw i32 %i.bbf, 2
  %i.bbo = sext i32 %i.bbn to i64
  %i.bbp = mul nsw i32 %i.bbf, 5
  %i.bbq = sext i32 %i.bbp to i64
  %i.bbr = mul nsw i32 %i.bbf, 6
  %i.bbs = sext i32 %i.bbr to i64
  %i.bbt = mul nsw i32 %i.bbf, 7
  %i.bbu = sext i32 %i.bbt to i64
  %i.bbv = sext i32 %i.bbc to i64
  %i.bbw = add i32 %i.bba, -1
  %i.bbx = zext i32 %i.bbw to i64
  %i.bby = shl nuw nsw i64 %i.bbx, 6              ; 3 uses
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph3200, %.loopexit2871
  %.014503199 = phi ptr [ %i.ayu, %.lr.ph3200 ], [ %.81458, %.loopexit2871 ] ; 13 uses
  %.014753198 = phi i32 [ 0, %.lr.ph3200 ], [ %i.ccp, %.loopexit2871 ] ; 2 uses
  %.126473197 = phi <4 x float> [ %.02646, %.lr.ph3200 ], [ %.92655, %.loopexit2871 ] ; 9 uses
  %.026723196 = phi <4 x float> [ zeroinitializer, %.lr.ph3200 ], [ %.82680, %.loopexit2871 ] ; 9 uses
  %.026953195 = phi <4 x float> [ zeroinitializer, %.lr.ph3200 ], [ %.82703, %.loopexit2871 ] ; 9 uses
  %.027233194 = phi <4 x float> [ zeroinitializer, %.lr.ph3200 ], [ %.82731, %.loopexit2871 ] ; 9 uses
  %i.bbz = sdiv i32 %.014753198, %i.awq
  %i.bca = sext i32 %i.bbz to i64
  %.reass3208 = mul i64 %factor.op.mul3207, %i.bca
  %gep3210 = getelementptr i8, ptr %invariant.gep3209, i64 %.reass3208 ; 8 uses
  br i1 %i.axt, label %.preheader2874, label %.loopexit2875

.preheader2874:                                   ; preds = %bb.u
  br i1 %i.azc, label %.lr.ph3140, label %.loopexit2871

.lr.ph3140:                                       ; preds = %.preheader2874, %.lr.ph3140
  %.114513139 = phi ptr [ %i.bhs, %.lr.ph3140 ], [ %.014503199, %.preheader2874 ] ; 17 uses
  %.014803138 = phi ptr [ %i.bhr, %.lr.ph3140 ], [ %gep3210, %.preheader2874 ] ; 2 uses
  %.014873137 = phi i32 [ %i.bht, %.lr.ph3140 ], [ 0, %.preheader2874 ]
  %.226483136 = phi <4 x float> [ %i.bhh, %.lr.ph3140 ], [ %.126473197, %.preheader2874 ]
  %.126733135 = phi <4 x float> [ %i.bhk, %.lr.ph3140 ], [ %.026723196, %.preheader2874 ]
  %.126963134 = phi <4 x float> [ %i.bhn, %.lr.ph3140 ], [ %.026953195, %.preheader2874 ]
  %.127243133 = phi <4 x float> [ %i.bhq, %.lr.ph3140 ], [ %.027233194, %.preheader2874 ]
  %i.bcb = load i64, ptr %.114513139, align 1, !tbaa !28
  %i.bcc = insertelement <2 x i64> poison, i64 %i.bcb, i64 0
  %i.bcd = bitcast <2 x i64> %i.bcc to <8 x i16>
  %i.bce = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bcd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcf = bitcast <8 x i16> %i.bce to <4 x float>
  %i.bcg = getelementptr inbounds nuw i8, ptr %.114513139, i64 8
  %i.bch = load i64, ptr %i.bcg, align 1, !tbaa !28
  %i.bci = insertelement <2 x i64> poison, i64 %i.bch, i64 0
  %i.bcj = bitcast <2 x i64> %i.bci to <8 x i16>
  %i.bck = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bcj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcl = bitcast <8 x i16> %i.bck to <4 x float>
  %i.bcm = getelementptr inbounds nuw i8, ptr %.114513139, i64 16
  %i.bcn = load i64, ptr %i.bcm, align 1, !tbaa !28
  %i.bco = insertelement <2 x i64> poison, i64 %i.bcn, i64 0
  %i.bcp = bitcast <2 x i64> %i.bco to <8 x i16>
  %i.bcq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bcp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcr = bitcast <8 x i16> %i.bcq to <4 x float>
  %i.bcs = getelementptr inbounds nuw i8, ptr %.114513139, i64 24
  %i.bct = load i64, ptr %i.bcs, align 1, !tbaa !28
  %i.bcu = insertelement <2 x i64> poison, i64 %i.bct, i64 0
  %i.bcv = bitcast <2 x i64> %i.bcu to <8 x i16>
  %i.bcw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bcv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bcx = bitcast <8 x i16> %i.bcw to <4 x float>
  %i.bcy = getelementptr inbounds nuw i8, ptr %.114513139, i64 32
  %i.bcz = load i64, ptr %i.bcy, align 1, !tbaa !28
  %i.bda = insertelement <2 x i64> poison, i64 %i.bcz, i64 0
  %i.bdb = bitcast <2 x i64> %i.bda to <8 x i16>
  %i.bdc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdd = bitcast <8 x i16> %i.bdc to <4 x float>
  %i.bde = getelementptr inbounds nuw i8, ptr %.114513139, i64 40
  %i.bdf = load i64, ptr %i.bde, align 1, !tbaa !28
  %i.bdg = insertelement <2 x i64> poison, i64 %i.bdf, i64 0
  %i.bdh = bitcast <2 x i64> %i.bdg to <8 x i16>
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.cie = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cid, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cif = bitcast <8 x i16> %i.cie to <4 x float>
  %i.cig = getelementptr inbounds nuw i8, ptr %.1214623229, i64 56
  %i.cih = load i64, ptr %i.cig, align 1, !tbaa !28
  %i.cii = insertelement <2 x i64> poison, i64 %i.cih, i64 0
  %i.cij = bitcast <2 x i64> %i.cii to <8 x i16>
  %i.cik = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cij, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cil = bitcast <8 x i16> %i.cik to <4 x float>
  %i.cim = load <4 x i16>, ptr %.214193230, align 2, !tbaa !33
  %i.cin = load <4 x i16>, ptr %.014153231, align 2, !tbaa !33
  %i.cio = shufflevector <4 x i16> %i.cim, <4 x i16> %i.cin, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cip = zext <8 x i16> %i.cio to <8 x i32>
  %i.ciq = shl nuw <8 x i32> %i.cip, splat (i32 16) ; 8 uses
  %i.cir = bitcast <8 x i32> %i.ciq to <8 x float>
  %i.cis = shufflevector <8 x float> %i.cir, <8 x float> poison, <4 x i32> zeroinitializer
  %i.cit = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cgv, <4 x float> nofpclass(nan inf) %i.cis, <4 x float> nofpclass(nan inf) %.1326593228)
  %i.ciu = bitcast <8 x i32> %i.ciq to <8 x float>
  %i.civ = shufflevector <8 x float> %i.ciu, <8 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ciw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chb, <4 x float> nofpclass(nan inf) %i.civ, <4 x float> nofpclass(nan inf) %.1226843227)
  %i.cix = bitcast <8 x i32> %i.ciq to <8 x float>
  %i.ciy = shufflevector <8 x float> %i.cix, <8 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ciz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chh, <4 x float> nofpclass(nan inf) %i.ciy, <4 x float> nofpclass(nan inf) %.1227073226)
  %i.cja = bitcast <8 x i32> %i.ciq to <8 x float>
  %i.cjb = shufflevector <8 x float> %i.cja, <8 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cjc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chn, <4 x float> nofpclass(nan inf) %i.cjb, <4 x float> nofpclass(nan inf) %.1227353225)
  %i.cjd = bitcast <8 x i32> %i.ciq to <8 x float>
  %i.cje = shufflevector <8 x float> %i.cjd, <8 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.cjf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cht, <4 x float> nofpclass(nan inf) %i.cje, <4 x float> nofpclass(nan inf) %i.cit) ; 2 uses
  %i.cjg = bitcast <8 x i32> %i.ciq to <8 x float>
  %i.cjh = shufflevector <8 x float> %i.cjg, <8 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.cji = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.chz, <4 x float> nofpclass(nan inf) %i.cjh, <4 x float> nofpclass(nan inf) %i.ciw) ; 2 uses
  %i.cjj = bitcast <8 x i32> %i.ciq to <8 x float>
  %i.cjk = shufflevector <8 x float> %i.cjj, <8 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.cjl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cif, <4 x float> nofpclass(nan inf) %i.cjk, <4 x float> nofpclass(nan inf) %i.ciz) ; 2 uses
  %i.cjm = bitcast <8 x i32> %i.ciq to <8 x float>
  %i.cjn = shufflevector <8 x float> %i.cjm, <8 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.cjo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cil, <4 x float> nofpclass(nan inf) %i.cjn, <4 x float> nofpclass(nan inf) %i.cjc) ; 2 uses
  %i.cjp = getelementptr inbounds [2 x i8], ptr %.214193230, i64 %i.bbi
  %i.cjq = getelementptr inbounds [2 x i8], ptr %.014153231, i64 %i.bbi
  %i.cjr = getelementptr inbounds nuw i8, ptr %.1214623229, i64 64
  %i.cjs = add nuw nsw i32 %.014143232, 1         ; 2 uses
  %exitcond4065.not = icmp eq i32 %i.cjs, %i.bba
  br i1 %exitcond4065.not, label %.loopexit2867.loopexit, label %.lr.ph3234, !llvm.loop !67

.loopexit2867.loopexit:                           ; preds = %.lr.ph3234
  %scevgep4063 = getelementptr i8, ptr %.914593259, i64 64
  %scevgep4064 = getelementptr i8, ptr %scevgep4063, i64 %i.bby
  br label %.loopexit2866

.loopexit2867:                                    ; preds = %.loopexit2869
  br i1 %i.axw, label %.preheader2865, label %.loopexit2866

.preheader2865:                                   ; preds = %.loopexit2867
  br i1 %i.bbb, label %.lr.ph3248, label %.loopexit2866

.lr.ph3248:                                       ; preds = %.preheader2865, %.lr.ph3248
  %.014133247 = phi i32 [ %i.cob, %.lr.ph3248 ], [ 0, %.preheader2865 ]
  %.414213246 = phi ptr [ %i.cnz, %.lr.ph3248 ], [ %gep3270, %.preheader2865 ] ; 9 uses
  %.1414643245 = phi ptr [ %i.coa, %.lr.ph3248 ], [ %.914593259, %.preheader2865 ] ; 9 uses
  %.1526613244 = phi <4 x float> [ %i.cna, %.lr.ph3248 ], [ %.1026563257, %.preheader2865 ]
  %.1426863243 = phi <4 x float> [ %i.cni, %.lr.ph3248 ], [ %.926813256, %.preheader2865 ]
  %.1427093242 = phi <4 x float> [ %i.cnq, %.lr.ph3248 ], [ %.927043255, %.preheader2865 ]
  %.1427373241 = phi <4 x float> [ %i.cny, %.lr.ph3248 ], [ %.927323254, %.preheader2865 ]
  %i.cjt = load i64, ptr %.1414643245, align 1, !tbaa !28
  %i.cju = insertelement <2 x i64> poison, i64 %i.cjt, i64 0
  %i.cjv = bitcast <2 x i64> %i.cju to <8 x i16>
  %i.cjw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cjv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cjx = bitcast <8 x i16> %i.cjw to <4 x float>
  %i.cjy = getelementptr inbounds nuw i8, ptr %.1414643245, i64 8
  %i.cjz = load i64, ptr %i.cjy, align 1, !tbaa !28
  %i.cka = insertelement <2 x i64> poison, i64 %i.cjz, i64 0
  %i.ckb = bitcast <2 x i64> %i.cka to <8 x i16>
  %i.ckc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ckb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ckd = bitcast <8 x i16> %i.ckc to <4 x float>
  %i.cke = getelementptr inbounds nuw i8, ptr %.1414643245, i64 16
  %i.ckf = load i64, ptr %i.cke, align 1, !tbaa !28
  %i.ckg = insertelement <2 x i64> poison, i64 %i.ckf, i64 0
  %i.ckh = bitcast <2 x i64> %i.ckg to <8 x i16>
  %i.cki = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ckh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ckj = bitcast <8 x i16> %i.cki to <4 x float>
  %i.ckk = getelementptr inbounds nuw i8, ptr %.1414643245, i64 24
  %i.ckl = load i64, ptr %i.ckk, align 1, !tbaa !28
  %i.ckm = insertelement <2 x i64> poison, i64 %i.ckl, i64 0
  %i.ckn = bitcast <2 x i64> %i.ckm to <8 x i16>
  %i.cko = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ckn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ckp = bitcast <8 x i16> %i.cko to <4 x float>
  %i.ckq = getelementptr inbounds nuw i8, ptr %.1414643245, i64 32
  %i.ckr = load i64, ptr %i.ckq, align 1, !tbaa !28
  %i.cks = insertelement <2 x i64> poison, i64 %i.ckr, i64 0
  %i.ckt = bitcast <2 x i64> %i.cks to <8 x i16>
  %i.cku = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ckt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ckv = bitcast <8 x i16> %i.cku to <4 x float>
  %i.ckw = getelementptr inbounds nuw i8, ptr %.1414643245, i64 40
  %i.ckx = load i64, ptr %i.ckw, align 1, !tbaa !28
  %i.cky = insertelement <2 x i64> poison, i64 %i.ckx, i64 0
  %i.ckz = bitcast <2 x i64> %i.cky to <8 x i16>
  %i.cla = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ckz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clb = bitcast <8 x i16> %i.cla to <4 x float>
  %i.clc = getelementptr inbounds nuw i8, ptr %.1414643245, i64 48
  %i.cld = load i64, ptr %i.clc, align 1, !tbaa !28
  %i.cle = insertelement <2 x i64> poison, i64 %i.cld, i64 0
  %i.clf = bitcast <2 x i64> %i.cle to <8 x i16>
  %i.clg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.clf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.clh = bitcast <8 x i16> %i.clg to <4 x float>
  %i.cli = getelementptr inbounds nuw i8, ptr %.1414643245, i64 56
  %i.clj = load i64, ptr %i.cli, align 1, !tbaa !28
  %i.clk = insertelement <2 x i64> poison, i64 %i.clj, i64 0
  %i.cll = bitcast <2 x i64> %i.clk to <8 x i16>
  %i.clm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cln = bitcast <8 x i16> %i.clm to <4 x float>
  %i.clo = load i16, ptr %.414213246, align 2, !tbaa !33
  %i.clp = zext i16 %i.clo to i32
  %i.clq = shl nuw i32 %i.clp, 16
  %i.clr = insertelement <4 x i32> poison, i32 %i.clq, i64 0
  %i.cls = bitcast <4 x i32> %i.clr to <4 x float>
  %i.clt = shufflevector <4 x float> %i.cls, <4 x float> poison, <4 x i32> zeroinitializer
  %i.clu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cjx, <4 x float> nofpclass(nan inf) %i.clt, <4 x float> nofpclass(nan inf) %.1526613244)
  %i.clv = getelementptr inbounds [2 x i8], ptr %.414213246, i64 %i.bbg
  %i.clw = load i16, ptr %i.clv, align 2, !tbaa !33
  %i.clx = zext i16 %i.clw to i32
  %i.cly = shl nuw i32 %i.clx, 16
  %i.clz = insertelement <4 x i32> poison, i32 %i.cly, i64 0
  %i.cma = bitcast <4 x i32> %i.clz to <4 x float>
  %i.cmb = shufflevector <4 x float> %i.cma, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckd, <4 x float> nofpclass(nan inf) %i.cmb, <4 x float> nofpclass(nan inf) %.1426863243)
  %i.cmd = getelementptr inbounds [2 x i8], ptr %.414213246, i64 %i.bbk
  %i.cme = load i16, ptr %i.cmd, align 2, !tbaa !33
  %i.cmf = zext i16 %i.cme to i32
  %i.cmg = shl nuw i32 %i.cmf, 16
  %i.cmh = insertelement <4 x i32> poison, i32 %i.cmg, i64 0
  %i.cmi = bitcast <4 x i32> %i.cmh to <4 x float>
  %i.cmj = shufflevector <4 x float> %i.cmi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cmk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckj, <4 x float> nofpclass(nan inf) %i.cmj, <4 x float> nofpclass(nan inf) %.1427093242)
  %i.cml = getelementptr inbounds [2 x i8], ptr %.414213246, i64 %i.bbm
  %i.cmm = load i16, ptr %i.cml, align 2, !tbaa !33
  %i.cmn = zext i16 %i.cmm to i32
  %i.cmo = shl nuw i32 %i.cmn, 16
  %i.cmp = insertelement <4 x i32> poison, i32 %i.cmo, i64 0
  %i.cmq = bitcast <4 x i32> %i.cmp to <4 x float>
  %i.cmr = shufflevector <4 x float> %i.cmq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cms = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckp, <4 x float> nofpclass(nan inf) %i.cmr, <4 x float> nofpclass(nan inf) %.1427373241)
  %i.cmt = getelementptr inbounds [2 x i8], ptr %.414213246, i64 %i.bbo
  %i.cmu = load i16, ptr %i.cmt, align 2, !tbaa !33
  %i.cmv = zext i16 %i.cmu to i32
  %i.cmw = shl nuw i32 %i.cmv, 16
  %i.cmx = insertelement <4 x i32> poison, i32 %i.cmw, i64 0
  %i.cmy = bitcast <4 x i32> %i.cmx to <4 x float>
  %i.cmz = shufflevector <4 x float> %i.cmy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cna = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ckv, <4 x float> nofpclass(nan inf) %i.cmz, <4 x float> nofpclass(nan inf) %i.clu) ; 2 uses
  %i.cnb = getelementptr inbounds [2 x i8], ptr %.414213246, i64 %i.bbq
  %i.cnc = load i16, ptr %i.cnb, align 2, !tbaa !33
  %i.cnd = zext i16 %i.cnc to i32
  %i.cne = shl nuw i32 %i.cnd, 16
  %i.cnf = insertelement <4 x i32> poison, i32 %i.cne, i64 0
  %i.cng = bitcast <4 x i32> %i.cnf to <4 x float>
  %i.cnh = shufflevector <4 x float> %i.cng, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cni = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clb, <4 x float> nofpclass(nan inf) %i.cnh, <4 x float> nofpclass(nan inf) %i.cmc) ; 2 uses
  %i.cnj = getelementptr inbounds [2 x i8], ptr %.414213246, i64 %i.bbs
  %i.cnk = load i16, ptr %i.cnj, align 2, !tbaa !33
  %i.cnl = zext i16 %i.cnk to i32
  %i.cnm = shl nuw i32 %i.cnl, 16
  %i.cnn = insertelement <4 x i32> poison, i32 %i.cnm, i64 0
  %i.cno = bitcast <4 x i32> %i.cnn to <4 x float>
  %i.cnp = shufflevector <4 x float> %i.cno, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cnq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.clh, <4 x float> nofpclass(nan inf) %i.cnp, <4 x float> nofpclass(nan inf) %i.cmk) ; 2 uses
  %i.cnr = getelementptr inbounds [2 x i8], ptr %.414213246, i64 %i.bbu
  %i.cns = load i16, ptr %i.cnr, align 2, !tbaa !33
  %i.cnt = zext i16 %i.cns to i32
  %i.cnu = shl nuw i32 %i.cnt, 16
  %i.cnv = insertelement <4 x i32> poison, i32 %i.cnu, i64 0
  %i.cnw = bitcast <4 x i32> %i.cnv to <4 x float>
  %i.cnx = shufflevector <4 x float> %i.cnw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cny = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cln, <4 x float> nofpclass(nan inf) %i.cnx, <4 x float> nofpclass(nan inf) %i.cms) ; 2 uses
  %i.cnz = getelementptr inbounds [2 x i8], ptr %.414213246, i64 %i.bbv
  %i.coa = getelementptr inbounds nuw i8, ptr %.1414643245, i64 64
  %i.cob = add nuw nsw i32 %.014133247, 1         ; 2 uses
  %exitcond4068.not = icmp eq i32 %i.cob, %i.bba
  br i1 %exitcond4068.not, label %.loopexit2866.loopexit, label %.lr.ph3248, !llvm.loop !68

.loopexit2866.loopexit:                           ; preds = %.lr.ph3248
  %scevgep4066 = getelementptr i8, ptr %.914593259, i64 64
  %scevgep4067 = getelementptr i8, ptr %scevgep4066, i64 %i.bby
  br label %.loopexit2866

.loopexit2866:                                    ; preds = %.preheader2868, %.loopexit2869.loopexit, %bb.y, %.loopexit2867.loopexit, %.loopexit2866.loopexit, %.preheader2865, %.loopexit2867
  %.152738 = phi nsz <4 x float> [ %.927323254, %.loopexit2867 ], [ %.927323254, %.preheader2865 ], [ %i.cny, %.loopexit2866.loopexit ], [ %.927323254, %bb.y ], [ %i.cjo, %.loopexit2867.loopexit ], [ %i.cgm, %.loopexit2869.loopexit ], [ %.927323254, %.preheader2868 ] ; 2 uses
  %.152710 = phi nsz <4 x float> [ %.927043255, %.loopexit2867 ], [ %.927043255, %.preheader2865 ], [ %i.cnq, %.loopexit2866.loopexit ], [ %.927043255, %bb.y ], [ %i.cjl, %.loopexit2867.loopexit ], [ %i.cgj, %.loopexit2869.loopexit ], [ %.927043255, %.preheader2868 ] ; 2 uses
  %.152687 = phi nsz <4 x float> [ %.926813256, %.loopexit2867 ], [ %.926813256, %.preheader2865 ], [ %i.cni, %.loopexit2866.loopexit ], [ %.926813256, %bb.y ], [ %i.cji, %.loopexit2867.loopexit ], [ %i.cgg, %.loopexit2869.loopexit ], [ %.926813256, %.preheader2868 ] ; 2 uses
  %.162662 = phi nsz <4 x float> [ %.1026563257, %.loopexit2867 ], [ %.1026563257, %.preheader2865 ], [ %i.cna, %.loopexit2866.loopexit ], [ %.1026563257, %bb.y ], [ %i.cjf, %.loopexit2867.loopexit ], [ %i.cgd, %.loopexit2869.loopexit ], [ %.1026563257, %.preheader2868 ] ; 2 uses
  %.151465 = phi ptr [ %.914593259, %.loopexit2867 ], [ %.914593259, %.preheader2865 ], [ %scevgep4067, %.loopexit2866.loopexit ], [ %.914593259, %bb.y ], [ %scevgep4064, %.loopexit2867.loopexit ], [ %scevgep4061, %.loopexit2869.loopexit ], [ %.914593259, %.preheader2868 ] ; 2 uses
  %i.coc = add nuw nsw i32 %.114763258, 8         ; 3 uses
  %i.cod = or disjoint i32 %i.coc, 7
  %i.coe = icmp slt i32 %i.cod, %i.aws
  br i1 %i.coe, label %bb.x, label %.preheader2878, !llvm.loop !69

.preheader2877:                                   ; preds = %.loopexit2862, %.preheader2878
  %.162739.lcssa = phi <4 x float> [ %.92732.lcssa, %.preheader2878 ], [ %.202743, %.loopexit2862 ]
  %.162711.lcssa = phi <4 x float> [ %.92704.lcssa, %.preheader2878 ], [ %.202715, %.loopexit2862 ]
  %.162688.lcssa = phi <4 x float> [ %.92681.lcssa, %.preheader2878 ], [ %.202692, %.loopexit2862 ] ; 3 uses
  %.172663.lcssa = phi <4 x float> [ %.102656.lcssa, %.preheader2878 ], [ %.212667, %.loopexit2862 ] ; 3 uses
  %.21477.lcssa = phi i32 [ %.11476.lcssa, %.preheader2878 ], [ %i.ctx, %.loopexit2862 ] ; 5 uses
  %.161466.lcssa = phi ptr [ %.91459.lcssa, %.preheader2878 ], [ %.201470, %.loopexit2862 ] ; 3 uses
  %i.cof = or disjoint i32 %.21477.lcssa, 1
  %i.cog = icmp slt i32 %i.cof, %i.aws
  br i1 %i.cog, label %.lr.ph3330, label %.preheader2876

.lr.ph3330:                                       ; preds = %.preheader2877
  %i.coh = load ptr, ptr %0, align 8, !tbaa !18
  %i.coi = load i32, ptr %i.o, align 4, !tbaa !17
  %i.coj = sext i32 %i.coi to i64
  %i.cok = load i64, ptr %i.ay, align 8, !tbaa !24
  %factor.op.mul3335 = mul i64 %i.cok, %i.coj
  %i.col = mul nsw i64 %indvars.iv4088, %i.ayk
  %invariant.gep3337 = getelementptr [2 x i8], ptr %i.coh, i64 %i.col
  %i.com = load i32, ptr %i.e, align 4
  %i.con = sext i32 %i.com to i64
  %i.coo = load i32, ptr %i.b, align 4
  %i.cop = sext i32 %i.coo to i64
  br i1 %i.axy, label %.lr.ph3321.us.preheader, label %.lr.ph3330.split.preheader

.lr.ph3330.split.preheader:                       ; preds = %.lr.ph3330
  %i.coq = add i32 %.21477.lcssa, 2
  %i.cor = sub i32 %12, %.21477.lcssa
  %i.cos = and i32 %i.cor, -2
  %i.cot = add i32 %i.coq, %i.cos
  br label %.preheader2876

.lr.ph3321.us.preheader:                          ; preds = %.lr.ph3330
  %i.cou = zext i32 %.21477.lcssa to i64
  br label %.lr.ph3321.us

.lr.ph3321.us:                                    ; preds = %.lr.ph3321.us.preheader, %._crit_edge3322.us
  %indvars.iv4079 = phi i64 [ %i.cou, %.lr.ph3321.us.preheader ], [ %indvars.iv.next4080, %._crit_edge3322.us ] ; 2 uses
  %.2114713329.us = phi ptr [ %.161466.lcssa, %.lr.ph3321.us.preheader ], [ %scevgep4077, %._crit_edge3322.us ] ; 2 uses
  %.2226683327.us = phi <4 x float> [ %.172663.lcssa, %.lr.ph3321.us.preheader ], [ %i.cpm, %._crit_edge3322.us ]
  %.2126933326.us = phi <4 x float> [ %.162688.lcssa, %.lr.ph3321.us.preheader ], [ %i.cpu, %._crit_edge3322.us ]
  %.reass3336.us = mul i64 %factor.op.mul3335, %indvars.iv4079
  %gep3338.us = getelementptr i8, ptr %invariant.gep3337, i64 %.reass3336.us
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph3321.us, %bb.z
  %.014063319.us = phi i32 [ 0, %.lr.ph3321.us ], [ %i.cpx, %bb.z ]
  %.014073318.us = phi ptr [ %gep3338.us, %.lr.ph3321.us ], [ %i.cpv, %bb.z ] ; 3 uses
  %.2214723317.us = phi ptr [ %.2114713329.us, %.lr.ph3321.us ], [ %i.cpw, %bb.z ] ; 3 uses
  %.2326693316.us = phi <4 x float> [ %.2226683327.us, %.lr.ph3321.us ], [ %i.cpm, %bb.z ]
  %.2226943315.us = phi <4 x float> [ %.2126933326.us, %.lr.ph3321.us ], [ %i.cpu, %bb.z ]
  %i.cov = load i64, ptr %.2214723317.us, align 1, !tbaa !28
  %i.cow = insertelement <2 x i64> poison, i64 %i.cov, i64 0
  %i.cox = bitcast <2 x i64> %i.cow to <8 x i16>
  %i.coy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cox, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.coz = bitcast <8 x i16> %i.coy to <4 x float>
  %i.cpa = getelementptr inbounds nuw i8, ptr %.2214723317.us, i64 8
  %i.cpb = load i64, ptr %i.cpa, align 1, !tbaa !28
  %i.cpc = insertelement <2 x i64> poison, i64 %i.cpb, i64 0
  %i.cpd = bitcast <2 x i64> %i.cpc to <8 x i16>
  %i.cpe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cpd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cpf = bitcast <8 x i16> %i.cpe to <4 x float>
  %i.cpg = load i16, ptr %.014073318.us, align 2, !tbaa !33
  %i.cph = zext i16 %i.cpg to i32
  %i.cpi = shl nuw i32 %i.cph, 16
  %i.cpj = insertelement <4 x i32> poison, i32 %i.cpi, i64 0
  %i.cpk = bitcast <4 x i32> %i.cpj to <4 x float>
  %i.cpl = shufflevector <4 x float> %i.cpk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.coz, <4 x float> nofpclass(nan inf) %i.cpl, <4 x float> nofpclass(nan inf) %.2326693316.us) ; 3 uses
  %i.cpn = getelementptr inbounds [2 x i8], ptr %.014073318.us, i64 %i.con
  %i.cpo = load i16, ptr %i.cpn, align 2, !tbaa !33
  %i.cpp = zext i16 %i.cpo to i32
  %i.cpq = shl nuw i32 %i.cpp, 16
  %i.cpr = insertelement <4 x i32> poison, i32 %i.cpq, i64 0
  %i.cps = bitcast <4 x i32> %i.cpr to <4 x float>
  %i.cpt = shufflevector <4 x float> %i.cps, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cpu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cpf, <4 x float> nofpclass(nan inf) %i.cpt, <4 x float> nofpclass(nan inf) %.2226943315.us) ; 3 uses
  %i.cpv = getelementptr inbounds [2 x i8], ptr %.014073318.us, i64 %i.cop
  %i.cpw = getelementptr inbounds nuw i8, ptr %.2214723317.us, i64 16
  %i.cpx = add nuw nsw i32 %.014063319.us, 1      ; 2 uses
  %exitcond4078.not = icmp eq i32 %i.cpx, %i.axx
  br i1 %exitcond4078.not, label %._crit_edge3322.us, label %bb.z, !llvm.loop !70

._crit_edge3322.us:                               ; preds = %bb.z
  %scevgep4076.a = getelementptr i8, ptr %.2114713329.us, i64 16
  %scevgep4077 = getelementptr i8, ptr %scevgep4076.a, i64 %i.ayi ; 2 uses
  %indvars.iv.next4080 = add nuw nsw i64 %indvars.iv4079, 2 ; 3 uses
  %i.cpy = trunc i64 %indvars.iv.next4080 to i32
  %i.cpz = or i32 %i.cpy, 1
  %i.cqa = icmp slt i32 %i.cpz, %i.aws
  br i1 %i.cqa, label %.lr.ph3321.us, label %.preheader2876.loopexit, !llvm.loop !71

bb.aa:                                            ; preds = %.lr.ph3304, %.loopexit2862
  %.1614663303 = phi ptr [ %.91459.lcssa, %.lr.ph3304 ], [ %.201470, %.loopexit2862 ] ; 7 uses
  %.214773302 = phi i32 [ %.11476.lcssa, %.lr.ph3304 ], [ %i.ctx, %.loopexit2862 ] ; 2 uses
  %.1726633301 = phi <4 x float> [ %.102656.lcssa, %.lr.ph3304 ], [ %.212667, %.loopexit2862 ] ; 5 uses
  %.1626883300 = phi <4 x float> [ %.92681.lcssa, %.lr.ph3304 ], [ %.202692, %.loopexit2862 ] ; 5 uses
  %.1627113299 = phi <4 x float> [ %.92704.lcssa, %.lr.ph3304 ], [ %.202715, %.loopexit2862 ] ; 5 uses
  %.1627393298 = phi <4 x float> [ %.92732.lcssa, %.lr.ph3304 ], [ %.202743, %.loopexit2862 ] ; 5 uses
  %i.cqb = sdiv i32 %.214773302, %i.awq
  %i.cqc = sext i32 %i.cqb to i64
  %.reass3312 = mul i64 %factor.op.mul3311, %i.cqc
  %gep3314 = getelementptr i8, ptr %invariant.gep3313, i64 %.reass3312 ; 2 uses
  br i1 %i.axv, label %.preheader2863, label %.loopexit2864

.preheader2863:                                   ; preds = %bb.aa
  br i1 %i.cdb, label %.lr.ph3278, label %.loopexit2862

.lr.ph3278:                                       ; preds = %.preheader2863, %.lr.ph3278
  %.014093277 = phi i32 [ %i.crr, %.lr.ph3278 ], [ 0, %.preheader2863 ]
  %.014103276 = phi ptr [ %i.crp, %.lr.ph3278 ], [ %gep3314, %.preheader2863 ] ; 2 uses
  %.1714673275 = phi ptr [ %i.crq, %.lr.ph3278 ], [ %.1614663303, %.preheader2863 ] ; 5 uses
  %.1826643274 = phi <4 x float> [ %i.crf, %.lr.ph3278 ], [ %.1726633301, %.preheader2863 ]
  %.1726893273 = phi <4 x float> [ %i.cri, %.lr.ph3278 ], [ %.1626883300, %.preheader2863 ]
  %.1727123272 = phi <4 x float> [ %i.crl, %.lr.ph3278 ], [ %.1627113299, %.preheader2863 ]
  %.1727403271 = phi <4 x float> [ %i.cro, %.lr.ph3278 ], [ %.1627393298, %.preheader2863 ]
  %i.cqd = load i64, ptr %.1714673275, align 1, !tbaa !28
  %i.cqe = insertelement <2 x i64> poison, i64 %i.cqd, i64 0
  %i.cqf = bitcast <2 x i64> %i.cqe to <8 x i16>
  %i.cqg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqh = bitcast <8 x i16> %i.cqg to <4 x float>
  %i.cqi = getelementptr inbounds nuw i8, ptr %.1714673275, i64 8
  %i.cqj = load i64, ptr %i.cqi, align 1, !tbaa !28
  %i.cqk = insertelement <2 x i64> poison, i64 %i.cqj, i64 0
  %i.cql = bitcast <2 x i64> %i.cqk to <8 x i16>
  %i.cqm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cql, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqn = bitcast <8 x i16> %i.cqm to <4 x float>
  %i.cqo = getelementptr inbounds nuw i8, ptr %.1714673275, i64 16
  %i.cqp = load i64, ptr %i.cqo, align 1, !tbaa !28
  %i.cqq = insertelement <2 x i64> poison, i64 %i.cqp, i64 0
  %i.cqr = bitcast <2 x i64> %i.cqq to <8 x i16>
  %i.cqs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqt = bitcast <8 x i16> %i.cqs to <4 x float>
  %i.cqu = getelementptr inbounds nuw i8, ptr %.1714673275, i64 24
  %i.cqv = load i64, ptr %i.cqu, align 1, !tbaa !28
  %i.cqw = insertelement <2 x i64> poison, i64 %i.cqv, i64 0
  %i.cqx = bitcast <2 x i64> %i.cqw to <8 x i16>
  %i.cqy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cqx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cqz = bitcast <8 x i16> %i.cqy to <4 x float>
  %i.cra = load <4 x i16>, ptr %.014103276, align 2, !tbaa !33
  %i.crb = zext <4 x i16> %i.cra to <4 x i32>
  %i.crc = shl nuw <4 x i32> %i.crb, splat (i32 16) ; 4 uses
  %i.crd = bitcast <4 x i32> %i.crc to <4 x float>
  %i.cre = shufflevector <4 x float> %i.crd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.crf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqh, <4 x float> nofpclass(nan inf) %i.cre, <4 x float> nofpclass(nan inf) %.1826643274) ; 2 uses
  %i.crg = bitcast <4 x i32> %i.crc to <4 x float>
  %i.crh = shufflevector <4 x float> %i.crg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cri = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqn, <4 x float> nofpclass(nan inf) %i.crh, <4 x float> nofpclass(nan inf) %.1726893273) ; 2 uses
  %i.crj = bitcast <4 x i32> %i.crc to <4 x float>
  %i.crk = shufflevector <4 x float> %i.crj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.crl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqt, <4 x float> nofpclass(nan inf) %i.crk, <4 x float> nofpclass(nan inf) %.1727123272) ; 2 uses
  %i.crm = bitcast <4 x i32> %i.crc to <4 x float>
  %i.crn = shufflevector <4 x float> %i.crm, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cro = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cqz, <4 x float> nofpclass(nan inf) %i.crn, <4 x float> nofpclass(nan inf) %.1727403271) ; 2 uses
  %i.crp = getelementptr inbounds [2 x i8], ptr %.014103276, i64 %i.cde
  %i.crq = getelementptr inbounds nuw i8, ptr %.1714673275, i64 32
  %i.crr = add nuw nsw i32 %.014093277, 1         ; 2 uses
  %exitcond4071.not = icmp eq i32 %i.crr, %i.cda
  br i1 %exitcond4071.not, label %.loopexit2864.loopexit, label %.lr.ph3278, !llvm.loop !72

.loopexit2864.loopexit:                           ; preds = %.lr.ph3278
  %scevgep4069 = getelementptr i8, ptr %.1614663303, i64 32
  %scevgep4070 = getelementptr i8, ptr %scevgep4069, i64 %i.cdo
  br label %.loopexit2862

.loopexit2864:                                    ; preds = %bb.aa
  br i1 %i.axw, label %.preheader2861, label %.loopexit2862

.preheader2861:                                   ; preds = %.loopexit2864
  br i1 %i.cdb, label %.lr.ph3292, label %.loopexit2862

.lr.ph3292:                                       ; preds = %.preheader2861, %.lr.ph3292
  %.014083291 = phi i32 [ %i.ctw, %.lr.ph3292 ], [ 0, %.preheader2861 ]
  %.214123290 = phi ptr [ %i.ctu, %.lr.ph3292 ], [ %gep3314, %.preheader2861 ] ; 5 uses
  %.1914693289 = phi ptr [ %i.ctv, %.lr.ph3292 ], [ %.1614663303, %.preheader2861 ] ; 5 uses
  %.2026663288 = phi <4 x float> [ %i.csv, %.lr.ph3292 ], [ %.1726633301, %.preheader2861 ]
  %.1926913287 = phi <4 x float> [ %i.ctd, %.lr.ph3292 ], [ %.1626883300, %.preheader2861 ]
  %.1927143286 = phi <4 x float> [ %i.ctl, %.lr.ph3292 ], [ %.1627113299, %.preheader2861 ]
  %.1927423285 = phi <4 x float> [ %i.ctt, %.lr.ph3292 ], [ %.1627393298, %.preheader2861 ]
  %i.crs = load i64, ptr %.1914693289, align 1, !tbaa !28
  %i.crt = insertelement <2 x i64> poison, i64 %i.crs, i64 0
  %i.cru = bitcast <2 x i64> %i.crt to <8 x i16>
  %i.crv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cru, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.crw = bitcast <8 x i16> %i.crv to <4 x float>
  %i.crx = getelementptr inbounds nuw i8, ptr %.1914693289, i64 8
  %i.cry = load i64, ptr %i.crx, align 1, !tbaa !28
  %i.crz = insertelement <2 x i64> poison, i64 %i.cry, i64 0
  %i.csa = bitcast <2 x i64> %i.crz to <8 x i16>
  %i.csb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csc = bitcast <8 x i16> %i.csb to <4 x float>
  %i.csd = getelementptr inbounds nuw i8, ptr %.1914693289, i64 16
  %i.cse = load i64, ptr %i.csd, align 1, !tbaa !28
  %i.csf = insertelement <2 x i64> poison, i64 %i.cse, i64 0
  %i.csg = bitcast <2 x i64> %i.csf to <8 x i16>
  %i.csh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csi = bitcast <8 x i16> %i.csh to <4 x float>
  %i.csj = getelementptr inbounds nuw i8, ptr %.1914693289, i64 24
  %i.csk = load i64, ptr %i.csj, align 1, !tbaa !28
  %i.csl = insertelement <2 x i64> poison, i64 %i.csk, i64 0
  %i.csm = bitcast <2 x i64> %i.csl to <8 x i16>
  %i.csn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.csm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cso = bitcast <8 x i16> %i.csn to <4 x float>
  %i.csp = load i16, ptr %.214123290, align 2, !tbaa !33
  %i.csq = zext i16 %i.csp to i32
  %i.csr = shl nuw i32 %i.csq, 16
  %i.css = insertelement <4 x i32> poison, i32 %i.csr, i64 0
  %i.cst = bitcast <4 x i32> %i.css to <4 x float>
  %i.csu = shufflevector <4 x float> %i.cst, <4 x float> poison, <4 x i32> zeroinitializer
  %i.csv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.crw, <4 x float> nofpclass(nan inf) %i.csu, <4 x float> nofpclass(nan inf) %.2026663288) ; 2 uses
  %i.csw = getelementptr inbounds [2 x i8], ptr %.214123290, i64 %i.cdg
  %i.csx = load i16, ptr %i.csw, align 2, !tbaa !33
  %i.csy = zext i16 %i.csx to i32
  %i.csz = shl nuw i32 %i.csy, 16
  %i.cta = insertelement <4 x i32> poison, i32 %i.csz, i64 0
  %i.ctb = bitcast <4 x i32> %i.cta to <4 x float>
  %i.ctc = shufflevector <4 x float> %i.ctb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ctd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csc, <4 x float> nofpclass(nan inf) %i.ctc, <4 x float> nofpclass(nan inf) %.1926913287) ; 2 uses
  %i.cte = getelementptr inbounds [2 x i8], ptr %.214123290, i64 %i.cdi
  %i.ctf = load i16, ptr %i.cte, align 2, !tbaa !33
  %i.ctg = zext i16 %i.ctf to i32
  %i.cth = shl nuw i32 %i.ctg, 16
  %i.cti = insertelement <4 x i32> poison, i32 %i.cth, i64 0
  %i.ctj = bitcast <4 x i32> %i.cti to <4 x float>
  %i.ctk = shufflevector <4 x float> %i.ctj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ctl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.csi, <4 x float> nofpclass(nan inf) %i.ctk, <4 x float> nofpclass(nan inf) %.1927143286) ; 2 uses
  %i.ctm = getelementptr inbounds [2 x i8], ptr %.214123290, i64 %i.cdk
  %i.ctn = load i16, ptr %i.ctm, align 2, !tbaa !33
  %i.cto = zext i16 %i.ctn to i32
end_hunk_3
begin_hunk_4_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.cxf = fsub fast <4 x float> %i.cxc, %i.cxe   ; 2 uses
  %i.cxg = fneg fast <4 x float> %i.cxf           ; 2 uses
  %i.cxh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cxg, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cwy)
  %i.cxi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cxg, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.cxh) ; 8 uses
  %i.cxj = fmul fast <4 x float> %i.cxi, %i.cxi
  %i.cxk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxi, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.cxl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxk, <4 x float> nofpclass(nan inf) %i.cxi, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.cxm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxl, <4 x float> nofpclass(nan inf) %i.cxi, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.cxn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxm, <4 x float> nofpclass(nan inf) %i.cxi, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.cxo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxn, <4 x float> nofpclass(nan inf) %i.cxi, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.cxp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxo, <4 x float> nofpclass(nan inf) %i.cxj, <4 x float> nofpclass(nan inf) %i.cxi)
  %i.cxq = fadd fast <4 x float> %i.cxp, splat (float 1.000000e+00)
  %i.cxr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cxf)
  %i.cxs = shl <4 x i32> %i.cxr, splat (i32 23)
  %i.cxt = add <4 x i32> %i.cxs, splat (i32 1065353216)
  %i.cxu = bitcast <4 x i32> %i.cxt to <4 x float>
  %i.cxv = fmul fast <4 x float> %i.cxq, %i.cxu
  %i.cxw = fadd fast <4 x float> %i.cxv, splat (float 1.000000e+00)
  %i.cxx = fdiv fast <4 x float> splat (float 1.000000e+00), %i.cxw
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.af:                                            ; preds = %._crit_edge3356
  %i.cxy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cwc, <4 x float> splat (float f0x42B0C0A5))
  %i.cxz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cxy, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.cya = fmul fast <4 x float> %i.cxz, splat (float f0x3FB8AA3B)
  %i.cyb = fadd fast <4 x float> %i.cya, splat (float 5.000000e-01) ; 2 uses
  %i.cyc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cyb)
  %i.cyd = sitofp fast <4 x i32> %i.cyc to <4 x float> ; 2 uses
  %i.cye = fcmp fast olt <4 x float> %i.cyb, %i.cyd
  %i.cyf = select <4 x i1> %i.cye, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cyg = fsub fast <4 x float> %i.cyd, %i.cyf   ; 2 uses
  %i.cyh = fneg fast <4 x float> %i.cyg           ; 2 uses
  %i.cyi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cyh, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.cxz)
  %i.cyj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.cyh, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.cyi) ; 8 uses
  %i.cyk = fmul fast <4 x float> %i.cyj, %i.cyj
  %i.cyl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cyj, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.cym = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cyl, <4 x float> nofpclass(nan inf) %i.cyj, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.cyn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cym, <4 x float> nofpclass(nan inf) %i.cyj, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.cyo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cyn, <4 x float> nofpclass(nan inf) %i.cyj, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.cyp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cyo, <4 x float> nofpclass(nan inf) %i.cyj, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.cyq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cyp, <4 x float> nofpclass(nan inf) %i.cyk, <4 x float> nofpclass(nan inf) %i.cyj)
  %i.cyr = fadd fast <4 x float> %i.cyq, splat (float 1.000000e+00)
  %i.cys = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cyg)
  %i.cyt = shl <4 x i32> %i.cys, splat (i32 23)
  %i.cyu = add <4 x i32> %i.cyt, splat (i32 1065353216)
  %i.cyv = bitcast <4 x i32> %i.cyu to <4 x float>
  %i.cyw = fmul fast <4 x float> %i.cyr, %i.cyv
  %i.cyx = fadd fast <4 x float> %i.cyw, splat (float 1.000000e+00) ; 2 uses
  %i.cyy = fcmp fast ole <4 x float> %i.cyx, zeroinitializer
  %i.cyz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cyx, <4 x float> splat (float f0x00800000))
  %i.cza = bitcast <4 x float> %i.cyz to <4 x i32> ; 2 uses
  %i.czb = lshr <4 x i32> %i.cza, splat (i32 23)
  %i.czc = and <4 x i32> %i.cza, splat (i32 -2139095041)
  %i.czd = or disjoint <4 x i32> %i.czc, splat (i32 1056964608)
  %i.cze = bitcast <4 x i32> %i.czd to <4 x float> ; 3 uses
  %i.czf = add nsw <4 x i32> %i.czb, splat (i32 -127)
  %i.czg = sitofp fast <4 x i32> %i.czf to <4 x float> ; 2 uses
  %i.czh = fadd fast <4 x float> %i.czg, splat (float 1.000000e+00)
  %i.czi = fcmp fast olt <4 x float> %i.cze, splat (float f0x3F3504F3) ; 2 uses
  %i.czj = select <4 x i1> %i.czi, <4 x float> %i.cze, <4 x float> zeroinitializer
  %i.czk = fadd fast <4 x float> %i.cze, splat (float -1.000000e+00)
  %i.czl = select fast <4 x i1> %i.czi, <4 x float> %i.czg, <4 x float> %i.czh ; 2 uses
  %i.czm = fadd fast <4 x float> %i.czk, %i.czj   ; 12 uses
  %i.czn = fmul fast <4 x float> %i.czm, %i.czm   ; 2 uses
  %i.czo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> nofpclass(nan inf) splat (float f0xBDEBD1B8))
  %i.czp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czo, <4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) splat (float f0x3DEF251A))
  %i.czq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czp, <4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) splat (float f0xBDFE5D4F))
  %i.czr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czq, <4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) splat (float f0x3E11E9BF))
  %i.czs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czr, <4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) splat (float f0xBE2AAE50))
  %i.czt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czs, <4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) splat (float f0x3E4CCEAC))
  %i.czu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czt, <4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) splat (float f0xBE7FFFFC))
  %i.czv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czu, <4 x float> nofpclass(nan inf) %i.czm, <4 x float> nofpclass(nan inf) splat (float f0x3EAAAAAA))
  %i.czw = fmul fast <4 x float> %i.czn, %i.czm
  %i.czx = fmul fast <4 x float> %i.czw, %i.czv
  %i.czy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czl, <4 x float> nofpclass(nan inf) splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.czx)
  %i.czz = fneg fast <4 x float> %i.czn
  %i.daa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.czz, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.czy)
  %i.dab = fadd fast <4 x float> %i.daa, %i.czm
  %i.dac = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czl, <4 x float> nofpclass(nan inf) splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.dab)
  %.neg = fmul fast <4 x float> %i.dac, splat (float -2.000000e+00)
  %i.dad = select fast <4 x i1> %i.cyy, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.dae = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dad, <4 x float> splat (float f0x42B0C0A5))
  %i.daf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dae, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dag = fmul fast <4 x float> %i.daf, splat (float f0x3FB8AA3B)
  %i.dah = fadd fast <4 x float> %i.dag, splat (float 5.000000e-01) ; 2 uses
  %i.dai = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dah)
  %i.daj = sitofp fast <4 x i32> %i.dai to <4 x float> ; 2 uses
  %i.dak = fcmp fast olt <4 x float> %i.dah, %i.daj
  %i.dal = select <4 x i1> %i.dak, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.dam = fsub fast <4 x float> %i.daj, %i.dal   ; 2 uses
  %i.dan = fneg fast <4 x float> %i.dam           ; 2 uses
  %i.dao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dan, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.daf)
  %i.dap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.dan, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.dao) ; 8 uses
  %i.daq = fmul fast <4 x float> %i.dap, %i.dap
  %i.dar = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dap, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> nofpclass(nan inf) splat (float f0x3AB743CE))
  %i.das = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dar, <4 x float> nofpclass(nan inf) %i.dap, <4 x float> nofpclass(nan inf) splat (float f0x3C088908))
  %i.dat = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.das, <4 x float> nofpclass(nan inf) %i.dap, <4 x float> nofpclass(nan inf) splat (float f0x3D2AA9C1))
  %i.dau = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dat, <4 x float> nofpclass(nan inf) %i.dap, <4 x float> nofpclass(nan inf) splat (float f0x3E2AAAAA))
  %i.dav = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dau, <4 x float> nofpclass(nan inf) %i.dap, <4 x float> nofpclass(nan inf) splat (float 5.000000e-01))
  %i.daw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dav, <4 x float> nofpclass(nan inf) %i.daq, <4 x float> nofpclass(nan inf) %i.dap)
  %i.dax = fadd fast <4 x float> %i.daw, splat (float 1.000000e+00)
  %i.day = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dam)
  %i.daz = shl <4 x i32> %i.day, splat (i32 23)
  %i.dba = add <4 x i32> %i.daz, splat (i32 1065353216)
  %i.dbb = bitcast <4 x i32> %i.dba to <4 x float>
  %i.dbc = fmul fast <4 x float> %i.dax, %i.dbb
  %i.dbd = fadd fast <4 x float> %i.dbc, splat (float 1.000000e+00)
  %i.dbe = fdiv fast <4 x float> splat (float 2.000000e+00), %i.dbd
  %i.dbf = fadd fast <4 x float> %i.dbe, splat (float -1.000000e+00)
  %i.dbg = fmul fast <4 x float> %i.dbf, %i.cwc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.ag:                                            ; preds = %._crit_edge3356
  %i.dbh = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.dbi = load float, ptr %i.dbh, align 4, !tbaa !51
  %i.dbj = insertelement <4 x float> poison, float %i.dbi, i64 0
  %i.dbk = shufflevector <4 x float> %i.dbj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbh, i64 4
  %i.dbm = load float, ptr %i.dbl, align 4, !tbaa !51
  %i.dbn = insertelement <4 x float> poison, float %i.dbm, i64 0
  %i.dbo = shufflevector <4 x float> %i.dbn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dbp = fmul fast <4 x float> %i.dbk, %i.cwc
  %i.dbq = fadd fast <4 x float> %i.dbp, %i.dbo
  %i.dbr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.dbq, <4 x float> zeroinitializer)
  %i.dbs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.dbr, <4 x float> splat (float 1.000000e+00))
  %i.dbt = fmul fast <4 x float> %i.dbs, %i.cwc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %._crit_edge3356, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.0.i1512 = phi nsz <4 x float> [ %i.dbt, %bb.ag ], [ %i.cwd, %bb.ab ], [ %i.cwl, %bb.ac ], [ %i.cwv, %bb.ad ], [ %i.cxx, %bb.ae ], [ %i.dbg, %bb.af ], [ %i.cwc, %._crit_edge3356 ] ; 2 uses
  switch i32 %i.awt, label %bb.ai [
    i32 4, label %.thread2798
    i32 1, label %bb.ah
  ]

.thread2798:                                      ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.dbu = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %.0.i1512)
  %i.dbv = bitcast <8 x bfloat> %i.dbu to <2 x i64>
  %i.dbw = extractelement <2 x i64> %i.dbv, i64 0
  store i64 %i.dbw, ptr %.014463364, align 1, !tbaa !28
  %i.dbx = getelementptr inbounds nuw i8, ptr %.014463364, i64 8
  br label %bb.ai

bb.ah:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.dby = bitcast <4 x float> %.0.i1512 to <8 x i16> ; 4 uses
  %i.dbz = extractelement <8 x i16> %i.dby, i64 1
  store i16 %i.dbz, ptr %.014463364, align 2, !tbaa !33
  %i.dca = extractelement <8 x i16> %i.dby, i64 3
  %i.dcb = getelementptr inbounds [2 x i8], ptr %.014463364, i64 %i.aya
  store i16 %i.dca, ptr %i.dcb, align 2, !tbaa !33
  %i.dcc = extractelement <8 x i16> %i.dby, i64 5
  %i.dcd = getelementptr inbounds [2 x i8], ptr %.014463364, i64 %i.ayc
  store i16 %i.dcc, ptr %i.dcd, align 2, !tbaa !33
  %i.dce = extractelement <8 x i16> %i.dby, i64 7
  %i.dcf = getelementptr inbounds [2 x i8], ptr %.014463364, i64 %i.aye
  store i16 %i.dce, ptr %i.dcf, align 2, !tbaa !33
  %i.dcg = getelementptr inbounds nuw i8, ptr %.014463364, i64 2
  br label %bb.ai

bb.ai:                                            ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread2798, %bb.ah
  %.21448 = phi ptr [ %i.dcg, %bb.ah ], [ %.014463364, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.dbx, %.thread2798 ]
  %indvars.iv.next4089 = add nuw nsw i64 %indvars.iv4088, 1 ; 2 uses
  %exitcond4092.not = icmp eq i64 %indvars.iv.next4089, %wide.trip.count4091
  br i1 %exitcond4092.not, label %._crit_edge3367, label %bb.s, !llvm.loop !77

._crit_edge3588.split:                            ; preds = %._crit_edge3578, %.lr.ph3587, %._crit_edge3377
  %i.dch = shl nsw i32 %i.avo, 1
  %i.dci = add nsw i32 %i.dch, %i.avm             ; 2 uses
  %i.dcj = icmp slt i32 %i.dci, %i.x
  br i1 %i.dcj, label %.lr.ph3764, label %._crit_edge3765.split

.lr.ph3764:                                       ; preds = %._crit_edge3588.split
  %i.dck = load ptr, ptr %1, align 8, !tbaa !18
  %i.dcl = load i32, ptr %i.r, align 4, !tbaa !17
  %i.dcm = sext i32 %i.dcl to i64
  %i.dcn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dco = load i64, ptr %i.dcn, align 8, !tbaa !24
  %factor.op.mul3766 = mul i64 %i.dco, %i.dcm
  %i.dcp = icmp sgt i32 %i.s, 0
  %i.dcq = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not = icmp eq ptr %i.dcq, null
  %i.dcr = icmp sgt i32 %i.n, 15
  %i.dcs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dct = icmp ne i32 %i.k, 16
  %i.dcu = icmp eq i32 %i.k, 8
  %i.dcv = icmp eq i32 %i.k, 4                    ; 2 uses
  %i.dcw = icmp ne i32 %i.k, 1                    ; 3 uses
  %i.dcx = icmp ne i32 %i.k, 8
  %i.dcy = icmp ne i32 %i.k, 4
  %i.dcz = load i32, ptr %i.d, align 4
  br i1 %i.dcp, label %.lr.ph3764.split, label %._crit_edge3765.split

.lr.ph3764.split:                                 ; preds = %.lr.ph3764
  %i.dda = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ddb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ddc = load ptr, ptr %2, align 8, !tbaa !18, !noalias !78
  %i.ddd = load i64, ptr %i.ddb, align 8, !tbaa !32, !noalias !78
  %i.dde = load i64, ptr %i.dda, align 8, !tbaa !24, !noalias !78
  %factor.op.mul3768 = mul i64 %i.ddd, %i.dde
  %i.ddf = and i32 %i.n, -16
  %13 = add i32 %i.n, -2
  %i.ddg = sext i32 %i.dci to i64
  %i.ddh = sext i32 %i.x to i64
  %wide.trip.count4191 = zext nneg i32 %i.s to i64
  br label %.lr.ph3754

.lr.ph3577:                                       ; preds = %.lr.ph3587.split, %._crit_edge3578
  %indvars.iv4143 = phi i64 [ 0, %.lr.ph3587.split ], [ %indvars.iv.next4144, %._crit_edge3578 ] ; 2 uses
  %i.ddi = shl nuw nsw i64 %indvars.iv4143, 1
  %i.ddj = add nsw i64 %i.ddi, %i.awo             ; 4 uses
  %i.ddk = mul i64 %i.avy, %i.ddj
  %i.ddl = getelementptr inbounds nuw i8, ptr %i.avu, i64 %i.ddk
  %i.ddm = or disjoint i64 %i.ddj, 1
  %i.ddn = mul i64 %i.avy, %i.ddm
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.avu, i64 %i.ddn
  %i.ddp = getelementptr inbounds [4 x i8], ptr %i.awa, i64 %i.ddj
  %i.ddq = trunc nsw i64 %i.ddj to i32            ; 3 uses
  %i.ddr = sdiv i32 %i.ddq, 16
  %i.dds = srem i32 %i.ddq, 16
  %.lhs.trunc2820 = trunc nsw i32 %i.dds to i8
  %i.ddt = sdiv i8 %.lhs.trunc2820, 8
  %.sext2821 = sext i8 %i.ddt to i32
  %i.ddu = insertelement <2 x i32> poison, i32 %i.ddq, i64 0
  %i.ddv = shufflevector <2 x i32> %i.ddu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ddw = srem <2 x i32> %i.ddv, <i32 8, i32 4>  ; 2 uses
  %i.ddx = bitcast <2 x i32> %i.ddw to <8 x i8>
  %.lhs.trunc2822 = extractelement <8 x i8> %i.ddx, i64 0
  %i.ddy = sdiv i8 %.lhs.trunc2822, 4
  %.sext2823 = sext i8 %i.ddy to i32
  %i.ddz = extractelement <2 x i32> %i.ddw, i64 1
  %i.dea = ashr exact i32 %i.ddz, 1
  %i.deb = add nsw i32 %i.dea, %i.ddr
  %i.dec = add nsw i32 %i.deb, %.sext2821
  %i.ded = add nsw i32 %i.dec, %.sext2823
  %i.dee = sext i32 %i.ded to i64
  %.reass3591 = mul i64 %factor.op.mul3590, %i.dee
  %i.def = getelementptr inbounds nuw i8, ptr %i.awk, i64 %.reass3591 ; 2 uses
  %i.deg = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul3579 = mul i32 %i.avq, %i.deg     ; 3 uses
  %i.deh = load i32, ptr %i.a, align 4            ; 6 uses
  %i.dei = icmp sgt i32 %i.deh, 0                 ; 2 uses
  %i.dej = add i32 %i.deh, -1                     ; 2 uses
  %i.dek = zext i32 %i.dej to i64                 ; 2 uses
  %i.del = shl nuw nsw i64 %i.dek, 3
  %i.dem = shl nuw nsw i64 %i.dek, 2
  %i.den = sext i32 %i.deg to i64                 ; 2 uses
  %xtraiter4783 = and i32 %i.deh, 1
  %i.deo = icmp eq i32 %i.dej, 0
  %unroll_iter4787 = and i32 %i.deh, 2147483646
  %lcmp.mod4784.not = icmp eq i32 %xtraiter4783, 0
  %lcmp.mod4786 = trunc i32 %i.deh to i1
  br label %bb.aj

._crit_edge3578:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513
  %indvars.iv.next4144 = add nuw nsw i64 %indvars.iv4143, 1 ; 2 uses
  %exitcond4147.not = icmp eq i64 %indvars.iv.next4144, %wide.trip.count4146
  br i1 %exitcond4147.not, label %._crit_edge3588.split, label %.lr.ph3577, !llvm.loop !81

bb.aj:                                            ; preds = %.lr.ph3577, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513
  %indvars.iv4138 = phi i64 [ 0, %.lr.ph3577 ], [ %indvars.iv.next4139, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513 ] ; 6 uses
  %.014013574 = phi ptr [ %i.ddo, %.lr.ph3577 ], [ %i.eff, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513 ] ; 2 uses
  %.014023573 = phi ptr [ %i.ddl, %.lr.ph3577 ], [ %i.efe, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513 ] ; 2 uses
  br i1 %.not1503, label %_ZN4ncnn3MatD2Ev.exit1509, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dep = load <2 x float>, ptr %i.ddp, align 4, !tbaa !51
  br label %_ZN4ncnn3MatD2Ev.exit1509

_ZN4ncnn3MatD2Ev.exit1509:                        ; preds = %bb.ak, %bb.aj
  %i.deq = phi <2 x float> [ %i.dep, %bb.ak ], [ zeroinitializer, %bb.aj ]
  br i1 %i.awb, label %.lr.ph3429, label %._crit_edge3430

.lr.ph3429:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit1509
  %i.der = load ptr, ptr %0, align 8, !tbaa !18
  %i.des = load i32, ptr %i.o, align 4, !tbaa !17
  %i.det = sext i32 %i.des to i64
  %i.deu = load i64, ptr %i.awc, align 8, !tbaa !24
  %factor.op.mul3435 = mul i64 %i.deu, %i.det
  %i.dev = trunc nuw nsw i64 %indvars.iv4138 to i32
  %.reass3580 = mul i32 %factor.op.mul3579, %i.dev
  %i.dew = sext i32 %.reass3580 to i64
  %invariant.gep3437 = getelementptr [2 x i8], ptr %i.der, i64 %i.dew
  %i.dex = load i32, ptr %i.a, align 4            ; 11 uses
  %i.dey = icmp sgt i32 %i.dex, 0                 ; 3 uses
  %i.dez = load i32, ptr %i.b, align 4            ; 4 uses
  %i.dfa = shl nsw i32 %i.dez, 4
  %i.dfb = sext i32 %i.dfa to i64                 ; 2 uses
  %i.dfc = load i32, ptr %i.e, align 4            ; 15 uses
  %i.dfd = sext i32 %i.dfc to i64                 ; 3 uses
  %i.dfe = shl nsw i32 %i.dez, 3
  %i.dff = sext i32 %i.dfe to i64                 ; 4 uses
  %i.dfg = shl nsw i32 %i.dfc, 1
  %i.dfh = sext i32 %i.dfg to i64                 ; 2 uses
  %i.dfi = mul nsw i32 %i.dfc, 3
  %i.dfj = sext i32 %i.dfi to i64                 ; 2 uses
  %i.dfk = shl nsw i32 %i.dez, 2
  %i.dfl = sext i32 %i.dfk to i64                 ; 4 uses
  %i.dfm = icmp slt i32 %i.dex, 1
  %i.dfn = mul nsw i32 %i.dfc, 15
  %i.dfo = sext i32 %i.dfn to i64
  %i.dfp = mul nsw i32 %i.dfc, 14
  %i.dfq = sext i32 %i.dfp to i64
  %i.dfr = mul nsw i32 %i.dfc, 13
  %i.dfs = sext i32 %i.dfr to i64
  %i.dft = mul nsw i32 %i.dfc, 12
  %i.dfu = sext i32 %i.dft to i64
  %i.dfv = mul nsw i32 %i.dfc, 11
  %i.dfw = sext i32 %i.dfv to i64
  %i.dfx = mul nsw i32 %i.dfc, 10
  %i.dfy = sext i32 %i.dfx to i64
  %i.dfz = mul nsw i32 %i.dfc, 9
  %i.dga = sext i32 %i.dfz to i64
  %i.dgb = shl nsw i32 %i.dfc, 3
  %i.dgc = sext i32 %i.dgb to i64
  %i.dgd = mul nsw i32 %i.dfc, 7
  %i.dge = sext i32 %i.dgd to i64
  %i.dgf = mul nsw i32 %i.dfc, 6
  %i.dgg = sext i32 %i.dgf to i64
  %i.dgh = mul nsw i32 %i.dfc, 5
  %i.dgi = sext i32 %i.dgh to i64
  %i.dgj = shl nsw i32 %i.dfc, 2
  %i.dgk = sext i32 %i.dgj to i64
  %i.dgl = sext i32 %i.dez to i64
  %i.dgm = add i32 %i.dex, -1                     ; 3 uses
  %i.dgn = zext i32 %i.dgm to i64
  %i.dgo = shl nuw nsw i64 %i.dgn, 6              ; 4 uses
  %brmerge = select i1 %i.awg, i1 true, i1 %i.dfm
  %xtraiter4754 = and i32 %i.dex, 1
  %i.dgp = icmp eq i32 %i.dgm, 0
  %unroll_iter4759 = and i32 %i.dex, 2147483646
  %lcmp.mod4755.not = icmp eq i32 %xtraiter4754, 0
  %lcmp.mod4758 = trunc i32 %i.dex to i1
  %xtraiter4761 = and i32 %i.dex, 1
  %i.dgq = icmp eq i32 %i.dgm, 0
  %unroll_iter4766 = and i32 %i.dex, 2147483646
  %lcmp.mod4762.not = icmp eq i32 %xtraiter4761, 0
  %lcmp.mod4765 = trunc i32 %i.dex to i1
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph3429, %.loopexit2855
  %.013603428 = phi i32 [ 0, %.lr.ph3429 ], [ %i.dnk, %.loopexit2855 ] ; 2 uses
  %.013653427 = phi ptr [ %i.def, %.lr.ph3429 ], [ %.81373, %.loopexit2855 ] ; 14 uses
  %.027533426 = phi <16 x float> [ zeroinitializer, %.lr.ph3429 ], [ %.82761, %.loopexit2855 ] ; 10 uses
  %.027623425 = phi <16 x float> [ zeroinitializer, %.lr.ph3429 ], [ %.82770, %.loopexit2855 ] ; 10 uses
  %i.dgr = sdiv i32 %.013603428, %i.avq
  %i.dgs = sext i32 %i.dgr to i64
  %.reass3436 = mul i64 %factor.op.mul3435, %i.dgs
  %gep3438 = getelementptr i8, ptr %invariant.gep3437, i64 %.reass3436 ; 10 uses
  br i1 %i.awd, label %.preheader2858, label %.loopexit2859

.preheader2858:                                   ; preds = %bb.al
  br i1 %i.dey, label %.lr.ph3385.preheader, label %.loopexit2855

.lr.ph3385.preheader:                             ; preds = %.preheader2858
  br i1 %i.dgq, label %.lr.ph3385.epil.preheader, label %.lr.ph3385

.lr.ph3385:                                       ; preds = %.lr.ph3385.preheader, %.lr.ph3385
  %.013533383 = phi ptr [ %i.dhn, %.lr.ph3385 ], [ %gep3438, %.lr.ph3385.preheader ] ; 2 uses
  %.113663382 = phi ptr [ %i.dho, %.lr.ph3385 ], [ %.013653427, %.lr.ph3385.preheader ] ; 5 uses
  %.127543381 = phi <16 x float> [ %i.dhl, %.lr.ph3385 ], [ %.027533426, %.lr.ph3385.preheader ]
  %.127633380 = phi <16 x float> [ %i.dhm, %.lr.ph3385 ], [ %.027623425, %.lr.ph3385.preheader ]
  %niter4767 = phi i32 [ %niter4767.next.1, %.lr.ph3385 ], [ 0, %.lr.ph3385.preheader ]
  %i.dgt = load <16 x bfloat>, ptr %.013533383, align 32, !tbaa !28
  %i.dgu = fpext fast <16 x bfloat> %i.dgt to <16 x float> ; 2 uses
  %i.dgv = load <16 x bfloat>, ptr %.113663382, align 32, !tbaa !28
  %i.dgw = fpext fast <16 x bfloat> %i.dgv to <16 x float>
  %i.dgx = getelementptr inbounds nuw i8, ptr %.113663382, i64 32
  %i.dgy = load <16 x bfloat>, ptr %i.dgx, align 32, !tbaa !28
  %i.dgz = fpext fast <16 x bfloat> %i.dgy to <16 x float>
  %i.dha = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dgu, <16 x float> nofpclass(nan inf) %i.dgw, <16 x float> nofpclass(nan inf) %.127543381)
  %i.dhb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dgu, <16 x float> nofpclass(nan inf) %i.dgz, <16 x float> nofpclass(nan inf) %.127633380)
  %i.dhc = getelementptr inbounds [2 x i8], ptr %.013533383, i64 %i.dfb ; 2 uses
  %i.dhd = getelementptr inbounds nuw i8, ptr %.113663382, i64 64
  %i.dhe = load <16 x bfloat>, ptr %i.dhc, align 32, !tbaa !28
  %i.dhf = fpext fast <16 x bfloat> %i.dhe to <16 x float> ; 2 uses
  %i.dhg = load <16 x bfloat>, ptr %i.dhd, align 32, !tbaa !28
  %i.dhh = fpext fast <16 x bfloat> %i.dhg to <16 x float>
  %i.dhi = getelementptr inbounds nuw i8, ptr %.113663382, i64 96
  %i.dhj = load <16 x bfloat>, ptr %i.dhi, align 32, !tbaa !28
  %i.dhk = fpext fast <16 x bfloat> %i.dhj to <16 x float>
  %i.dhl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dhf, <16 x float> nofpclass(nan inf) %i.dhh, <16 x float> nofpclass(nan inf) %i.dha) ; 3 uses
  %i.dhm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dhf, <16 x float> nofpclass(nan inf) %i.dhk, <16 x float> nofpclass(nan inf) %i.dhb) ; 3 uses
  %i.dhn = getelementptr inbounds [2 x i8], ptr %i.dhc, i64 %i.dfb ; 2 uses
  %i.dho = getelementptr inbounds nuw i8, ptr %.113663382, i64 128 ; 2 uses
  %niter4767.next.1 = add nuw nsw i32 %niter4767, 2 ; 2 uses
  %niter4767.ncmp.1 = icmp eq i32 %niter4767.next.1, %unroll_iter4766
  br i1 %niter4767.ncmp.1, label %.loopexit2859.loopexit.unr-lcssa, label %.lr.ph3385, !llvm.loop !82

.loopexit2859.loopexit.unr-lcssa:                 ; preds = %.lr.ph3385
  br i1 %lcmp.mod4762.not, label %.loopexit2859.loopexit, label %.lr.ph3385.epil.preheader

.lr.ph3385.epil.preheader:                        ; preds = %.loopexit2859.loopexit.unr-lcssa, %.lr.ph3385.preheader
  %.013533383.epil.init = phi ptr [ %gep3438, %.lr.ph3385.preheader ], [ %i.dhn, %.loopexit2859.loopexit.unr-lcssa ]
  %.113663382.epil.init = phi ptr [ %.013653427, %.lr.ph3385.preheader ], [ %i.dho, %.loopexit2859.loopexit.unr-lcssa ] ; 2 uses
  %.127543381.epil.init = phi <16 x float> [ %.027533426, %.lr.ph3385.preheader ], [ %i.dhl, %.loopexit2859.loopexit.unr-lcssa ]
  %.127633380.epil.init = phi <16 x float> [ %.027623425, %.lr.ph3385.preheader ], [ %i.dhm, %.loopexit2859.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4765)
  %i.dhp = load <16 x bfloat>, ptr %.013533383.epil.init, align 32, !tbaa !28
  %i.dhq = fpext fast <16 x bfloat> %i.dhp to <16 x float> ; 2 uses
  %i.dhr = load <16 x bfloat>, ptr %.113663382.epil.init, align 32, !tbaa !28
  %i.dhs = fpext fast <16 x bfloat> %i.dhr to <16 x float>
end_hunk_4
begin_hunk_5_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
.lr.ph3509:                                       ; preds = %._crit_edge3476
  %i.dtg = load ptr, ptr %0, align 8, !tbaa !18
  %i.dth = load i32, ptr %i.o, align 4, !tbaa !17
  %i.dti = sext i32 %i.dth to i64
  %i.dtj = load i64, ptr %i.awc, align 8, !tbaa !24
  %factor.op.mul3515 = mul i64 %i.dtj, %i.dti
  %i.dtk = trunc nuw nsw i64 %indvars.iv4138 to i32
  %.reass3584 = mul i32 %factor.op.mul3579, %i.dtk
  %i.dtl = sext i32 %.reass3584 to i64
  %invariant.gep3517 = getelementptr [2 x i8], ptr %i.dtg, i64 %i.dtl
  %i.dtm = load i32, ptr %i.a, align 4            ; 7 uses
  %i.dtn = icmp sgt i32 %i.dtm, 0
  %i.dto = load i32, ptr %i.b, align 4            ; 2 uses
  %i.dtp = shl nsw i32 %i.dto, 2
  %i.dtq = sext i32 %i.dtp to i64                 ; 2 uses
  %i.dtr = icmp slt i32 %i.dtm, 1
  %i.dts = load i32, ptr %i.e, align 4            ; 3 uses
  %i.dtt = mul nsw i32 %i.dts, 3
  %i.dtu = sext i32 %i.dtt to i64
  %i.dtv = shl nsw i32 %i.dts, 1
  %i.dtw = sext i32 %i.dtv to i64
  %i.dtx = sext i32 %i.dts to i64
  %i.dty = sext i32 %i.dto to i64
  %i.dtz = add i32 %i.dtm, -1                     ; 2 uses
  %i.dua = zext i32 %i.dtz to i64
  %i.dub = shl nuw nsw i64 %i.dua, 4              ; 2 uses
  %brmerge3777 = select i1 %i.awg, i1 true, i1 %i.dtr
  %xtraiter4775 = and i32 %i.dtm, 1
  %i.duc = icmp eq i32 %i.dtz, 0
  %unroll_iter4780 = and i32 %i.dtm, 2147483646
  %lcmp.mod4776.not = icmp eq i32 %xtraiter4775, 0
  %lcmp.mod4779 = trunc i32 %i.dtm to i1
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph3509, %.loopexit2846
  %.213623507 = phi i32 [ %.11361.lcssa, %.lr.ph3509 ], [ %i.dxs, %.loopexit2846 ] ; 2 uses
  %.1613813506 = phi ptr [ %.91374.lcssa, %.lr.ph3509 ], [ %.201385, %.loopexit2846 ] ; 7 uses
  %.027853505 = phi <4 x float> [ zeroinitializer, %.lr.ph3509 ], [ %.42789, %.loopexit2846 ] ; 5 uses
  %.027903504 = phi <4 x float> [ zeroinitializer, %.lr.ph3509 ], [ %.42794, %.loopexit2846 ] ; 5 uses
  %i.dud = sdiv i32 %.213623507, %i.avq
  %i.due = sext i32 %i.dud to i64
  %.reass3516 = mul i64 %factor.op.mul3515, %i.due
  %gep3518 = getelementptr i8, ptr %invariant.gep3517, i64 %.reass3516 ; 3 uses
  br i1 %i.awf, label %.preheader2847, label %.loopexit2848

.preheader2847:                                   ; preds = %bb.aq
  br i1 %i.dtn, label %.lr.ph3490.preheader, label %.loopexit2846

.lr.ph3490.preheader:                             ; preds = %.preheader2847
  br i1 %i.duc, label %.lr.ph3490.epil.preheader, label %.lr.ph3490

.lr.ph3490:                                       ; preds = %.lr.ph3490.preheader, %.lr.ph3490
  %.012873488 = phi ptr [ %i.dvr, %.lr.ph3490 ], [ %gep3518, %.lr.ph3490.preheader ] ; 2 uses
  %.1713823487 = phi ptr [ %i.dvs, %.lr.ph3490 ], [ %.1613813506, %.lr.ph3490.preheader ] ; 5 uses
  %.127863486 = phi <4 x float> [ %i.dvp, %.lr.ph3490 ], [ %.027853505, %.lr.ph3490.preheader ]
  %.127913485 = phi <4 x float> [ %i.dvq, %.lr.ph3490 ], [ %.027903504, %.lr.ph3490.preheader ]
  %niter4781 = phi i32 [ %niter4781.next.1, %.lr.ph3490 ], [ 0, %.lr.ph3490.preheader ]
  %i.duf = load i64, ptr %.012873488, align 1, !tbaa !28
  %i.dug = insertelement <2 x i64> poison, i64 %i.duf, i64 0
  %i.duh = bitcast <2 x i64> %i.dug to <8 x i16>
  %i.dui = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.duh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duj = bitcast <8 x i16> %i.dui to <4 x float> ; 2 uses
  %i.duk = load i64, ptr %.1713823487, align 1, !tbaa !28
  %i.dul = insertelement <2 x i64> poison, i64 %i.duk, i64 0
  %i.dum = bitcast <2 x i64> %i.dul to <8 x i16>
  %i.dun = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dum, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duo = bitcast <8 x i16> %i.dun to <4 x float>
  %i.dup = getelementptr inbounds nuw i8, ptr %.1713823487, i64 8
  %i.duq = load i64, ptr %i.dup, align 1, !tbaa !28
  %i.dur = insertelement <2 x i64> poison, i64 %i.duq, i64 0
  %i.dus = bitcast <2 x i64> %i.dur to <8 x i16>
  %i.dut = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dus, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duu = bitcast <8 x i16> %i.dut to <4 x float>
  %i.duv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.duj, <4 x float> nofpclass(nan inf) %i.duo, <4 x float> nofpclass(nan inf) %.127863486)
  %i.duw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.duj, <4 x float> nofpclass(nan inf) %i.duu, <4 x float> nofpclass(nan inf) %.127913485)
  %i.dux = getelementptr inbounds [2 x i8], ptr %.012873488, i64 %i.dtq ; 2 uses
  %i.duy = getelementptr inbounds nuw i8, ptr %.1713823487, i64 16
  %i.duz = load i64, ptr %i.dux, align 1, !tbaa !28
  %i.dva = insertelement <2 x i64> poison, i64 %i.duz, i64 0
  %i.dvb = bitcast <2 x i64> %i.dva to <8 x i16>
  %i.dvc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvd = bitcast <8 x i16> %i.dvc to <4 x float> ; 2 uses
  %i.dve = load i64, ptr %i.duy, align 1, !tbaa !28
  %i.dvf = insertelement <2 x i64> poison, i64 %i.dve, i64 0
  %i.dvg = bitcast <2 x i64> %i.dvf to <8 x i16>
  %i.dvh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvi = bitcast <8 x i16> %i.dvh to <4 x float>
  %i.dvj = getelementptr inbounds nuw i8, ptr %.1713823487, i64 24
  %i.dvk = load i64, ptr %i.dvj, align 1, !tbaa !28
  %i.dvl = insertelement <2 x i64> poison, i64 %i.dvk, i64 0
  %i.dvm = bitcast <2 x i64> %i.dvl to <8 x i16>
  %i.dvn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvo = bitcast <8 x i16> %i.dvn to <4 x float>
  %i.dvp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dvd, <4 x float> nofpclass(nan inf) %i.dvi, <4 x float> nofpclass(nan inf) %i.duv) ; 3 uses
  %i.dvq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dvd, <4 x float> nofpclass(nan inf) %i.dvo, <4 x float> nofpclass(nan inf) %i.duw) ; 3 uses
  %i.dvr = getelementptr inbounds [2 x i8], ptr %i.dux, i64 %i.dtq ; 2 uses
  %i.dvs = getelementptr inbounds nuw i8, ptr %.1713823487, i64 32 ; 2 uses
  %niter4781.next.1 = add nuw nsw i32 %niter4781, 2 ; 2 uses
  %niter4781.ncmp.1 = icmp eq i32 %niter4781.next.1, %unroll_iter4780
  br i1 %niter4781.ncmp.1, label %.loopexit2848.loopexit.unr-lcssa, label %.lr.ph3490, !llvm.loop !91

.loopexit2848.loopexit.unr-lcssa:                 ; preds = %.lr.ph3490
  br i1 %lcmp.mod4776.not, label %.loopexit2848.loopexit, label %.lr.ph3490.epil.preheader

.lr.ph3490.epil.preheader:                        ; preds = %.loopexit2848.loopexit.unr-lcssa, %.lr.ph3490.preheader
  %.012873488.epil.init = phi ptr [ %gep3518, %.lr.ph3490.preheader ], [ %i.dvr, %.loopexit2848.loopexit.unr-lcssa ]
  %.1713823487.epil.init = phi ptr [ %.1613813506, %.lr.ph3490.preheader ], [ %i.dvs, %.loopexit2848.loopexit.unr-lcssa ] ; 2 uses
  %.127863486.epil.init = phi <4 x float> [ %.027853505, %.lr.ph3490.preheader ], [ %i.dvp, %.loopexit2848.loopexit.unr-lcssa ]
  %.127913485.epil.init = phi <4 x float> [ %.027903504, %.lr.ph3490.preheader ], [ %i.dvq, %.loopexit2848.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4779)
  %i.dvt = load i64, ptr %.012873488.epil.init, align 1, !tbaa !28
  %i.dvu = insertelement <2 x i64> poison, i64 %i.dvt, i64 0
  %i.dvv = bitcast <2 x i64> %i.dvu to <8 x i16>
  %i.dvw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dvv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvx = bitcast <8 x i16> %i.dvw to <4 x float> ; 2 uses
  %i.dvy = load i64, ptr %.1713823487.epil.init, align 1, !tbaa !28
  %i.dvz = insertelement <2 x i64> poison, i64 %i.dvy, i64 0
  %i.dwa = bitcast <2 x i64> %i.dvz to <8 x i16>
  %i.dwb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dwa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dwc = bitcast <8 x i16> %i.dwb to <4 x float>
  %i.dwd = getelementptr inbounds nuw i8, ptr %.1713823487.epil.init, i64 8
  %i.dwe = load i64, ptr %i.dwd, align 1, !tbaa !28
  %i.dwf = insertelement <2 x i64> poison, i64 %i.dwe, i64 0
  %i.dwg = bitcast <2 x i64> %i.dwf to <8 x i16>
  %i.dwh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dwg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dwi = bitcast <8 x i16> %i.dwh to <4 x float>
  %i.dwj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dvx, <4 x float> nofpclass(nan inf) %i.dwc, <4 x float> nofpclass(nan inf) %.127863486.epil.init)
  %i.dwk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dvx, <4 x float> nofpclass(nan inf) %i.dwi, <4 x float> nofpclass(nan inf) %.127913485.epil.init)
  br label %.loopexit2848.loopexit

.loopexit2848.loopexit:                           ; preds = %.loopexit2848.loopexit.unr-lcssa, %.lr.ph3490.epil.preheader
  %.lcssa4659 = phi <4 x float> [ %i.dvp, %.loopexit2848.loopexit.unr-lcssa ], [ %i.dwj, %.lr.ph3490.epil.preheader ]
  %.lcssa4658 = phi <4 x float> [ %i.dvq, %.loopexit2848.loopexit.unr-lcssa ], [ %i.dwk, %.lr.ph3490.epil.preheader ]
  %scevgep4119.a = getelementptr i8, ptr %.1613813506, i64 16
  %scevgep4120 = getelementptr i8, ptr %scevgep4119.a, i64 %i.dub
  br label %.loopexit2846

.loopexit2848:                                    ; preds = %bb.aq
  br i1 %brmerge3777, label %.loopexit2846, label %.lr.ph3500

.lr.ph3500:                                       ; preds = %.loopexit2848, %.lr.ph3500
  %.012853499 = phi i32 [ %i.dxr, %.lr.ph3500 ], [ 0, %.loopexit2848 ]
  %.212893498 = phi ptr [ %i.dxp, %.lr.ph3500 ], [ %gep3518, %.loopexit2848 ] ; 5 uses
  %.1913843497 = phi ptr [ %i.dxq, %.lr.ph3500 ], [ %.1613813506, %.loopexit2848 ] ; 3 uses
  %.327883496 = phi <4 x float> [ %i.dxn, %.lr.ph3500 ], [ %.027853505, %.loopexit2848 ]
  %.327933495 = phi <4 x float> [ %i.dxo, %.lr.ph3500 ], [ %.027903504, %.loopexit2848 ]
  %i.dwl = getelementptr inbounds [2 x i8], ptr %.212893498, i64 %i.dtu
  %i.dwm = load i16, ptr %i.dwl, align 2, !tbaa !33
  %i.dwn = getelementptr inbounds [2 x i8], ptr %.212893498, i64 %i.dtw
  %i.dwo = load i16, ptr %i.dwn, align 2, !tbaa !33
  %i.dwp = getelementptr inbounds [2 x i8], ptr %.212893498, i64 %i.dtx
  %i.dwq = load i16, ptr %i.dwp, align 2, !tbaa !33
  %i.dwr = load i16, ptr %.212893498, align 2, !tbaa !33
  %i.dws = zext i16 %i.dwm to i32
  %i.dwt = zext i16 %i.dwo to i32
  %i.dwu = zext i16 %i.dwq to i32
  %i.dwv = zext i16 %i.dwr to i32
  %i.dww = insertelement <4 x i32> poison, i32 %i.dwv, i64 0
  %i.dwx = insertelement <4 x i32> %i.dww, i32 %i.dwu, i64 1
  %i.dwy = insertelement <4 x i32> %i.dwx, i32 %i.dwt, i64 2
  %i.dwz = insertelement <4 x i32> %i.dwy, i32 %i.dws, i64 3
  %i.dxa = shl nuw <4 x i32> %i.dwz, splat (i32 16)
  %i.dxb = bitcast <4 x i32> %i.dxa to <4 x float> ; 2 uses
  %i.dxc = load i64, ptr %.1913843497, align 1, !tbaa !28
  %i.dxd = insertelement <2 x i64> poison, i64 %i.dxc, i64 0
  %i.dxe = bitcast <2 x i64> %i.dxd to <8 x i16>
  %i.dxf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxg = bitcast <8 x i16> %i.dxf to <4 x float>
  %i.dxh = getelementptr inbounds nuw i8, ptr %.1913843497, i64 8
  %i.dxi = load i64, ptr %i.dxh, align 1, !tbaa !28
  %i.dxj = insertelement <2 x i64> poison, i64 %i.dxi, i64 0
  %i.dxk = bitcast <2 x i64> %i.dxj to <8 x i16>
  %i.dxl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxm = bitcast <8 x i16> %i.dxl to <4 x float>
  %i.dxn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxb, <4 x float> nofpclass(nan inf) %i.dxg, <4 x float> nofpclass(nan inf) %.327883496) ; 2 uses
  %i.dxo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxb, <4 x float> nofpclass(nan inf) %i.dxm, <4 x float> nofpclass(nan inf) %.327933495) ; 2 uses
  %i.dxp = getelementptr inbounds [2 x i8], ptr %.212893498, i64 %i.dty
  %i.dxq = getelementptr inbounds nuw i8, ptr %.1913843497, i64 16
  %i.dxr = add nuw nsw i32 %.012853499, 1         ; 2 uses
  %exitcond4124.not = icmp eq i32 %i.dxr, %i.dtm
  br i1 %exitcond4124.not, label %.loopexit2846.loopexit, label %.lr.ph3500, !llvm.loop !92

.loopexit2846.loopexit:                           ; preds = %.lr.ph3500
  %scevgep4122.a = getelementptr i8, ptr %.1613813506, i64 16
  %scevgep4123 = getelementptr i8, ptr %scevgep4122.a, i64 %i.dub
  br label %.loopexit2846

.loopexit2846:                                    ; preds = %.preheader2847, %.loopexit2848.loopexit, %.loopexit2846.loopexit, %.loopexit2848
  %.42794 = phi nsz <4 x float> [ %.027903504, %.loopexit2848 ], [ %i.dxo, %.loopexit2846.loopexit ], [ %.lcssa4658, %.loopexit2848.loopexit ], [ %.027903504, %.preheader2847 ] ; 2 uses
  %.42789 = phi nsz <4 x float> [ %.027853505, %.loopexit2848 ], [ %i.dxn, %.loopexit2846.loopexit ], [ %.lcssa4659, %.loopexit2848.loopexit ], [ %.027853505, %.preheader2847 ] ; 2 uses
  %.201385 = phi ptr [ %.1613813506, %.loopexit2848 ], [ %scevgep4123, %.loopexit2846.loopexit ], [ %scevgep4120, %.loopexit2848.loopexit ], [ %.1613813506, %.preheader2847 ] ; 2 uses
  %i.dxs = add nuw nsw i32 %.213623507, 4         ; 3 uses
  %i.dxt = or disjoint i32 %i.dxs, 3
  %i.dxu = icmp slt i32 %i.dxt, %i.avs
  br i1 %i.dxu, label %bb.aq, label %._crit_edge3510, !llvm.loop !93

._crit_edge3510:                                  ; preds = %.loopexit2846, %._crit_edge3476
  %.02790.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3476 ], [ %.42794, %.loopexit2846 ] ; 4 uses
  %.02785.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3476 ], [ %.42789, %.loopexit2846 ] ; 4 uses
  %.161381.lcssa = phi ptr [ %.91374.lcssa, %._crit_edge3476 ], [ %.201385, %.loopexit2846 ] ; 3 uses
  %.21362.lcssa = phi i32 [ %.11361.lcssa, %._crit_edge3476 ], [ %i.dxs, %.loopexit2846 ] ; 5 uses
  %i.dxv = shufflevector <4 x float> %i.dns, <4 x float> %i.dny, <2 x i32> <i32 3, i32 7>
  %i.dxw = shufflevector <4 x float> %i.dns, <4 x float> %i.dny, <2 x i32> <i32 1, i32 5>
  %i.dxx = fadd fast <2 x float> %i.dxv, %i.dxw
  %i.dxy = fadd fast <2 x float> %i.dxx, %i.deq
  %i.dxz = shufflevector <4 x float> %i.dns, <4 x float> %i.dny, <2 x i32> <i32 2, i32 6>
  %i.dya = shufflevector <4 x float> %i.dns, <4 x float> %i.dny, <2 x i32> <i32 0, i32 4>
  %i.dyb = fadd fast <2 x float> %i.dxz, %i.dya
  %i.dyc = fadd fast <2 x float> %i.dxy, %i.dyb
  %i.dyd = shufflevector <4 x float> %i.dta, <4 x float> %i.dtd, <2 x i32> <i32 3, i32 7>
  %i.dye = shufflevector <4 x float> %i.dta, <4 x float> %i.dtd, <2 x i32> <i32 1, i32 5>
  %i.dyf = fadd fast <2 x float> %i.dyd, %i.dye
  %i.dyg = fadd fast <2 x float> %i.dyc, %i.dyf
  %i.dyh = shufflevector <4 x float> %i.dta, <4 x float> %i.dtd, <2 x i32> <i32 2, i32 6>
  %i.dyi = shufflevector <4 x float> %i.dta, <4 x float> %i.dtd, <2 x i32> <i32 0, i32 4>
  %i.dyj = fadd fast <2 x float> %i.dyh, %i.dyi
  %i.dyk = fadd fast <2 x float> %i.dyg, %i.dyj
  %i.dyl = shufflevector <4 x float> %.02785.lcssa, <4 x float> %.02790.lcssa, <2 x i32> <i32 3, i32 7>
  %i.dym = shufflevector <4 x float> %.02785.lcssa, <4 x float> %.02790.lcssa, <2 x i32> <i32 1, i32 5>
  %i.dyn = fadd fast <2 x float> %i.dyl, %i.dym
  %i.dyo = fadd fast <2 x float> %i.dyk, %i.dyn
  %i.dyp = shufflevector <4 x float> %.02785.lcssa, <4 x float> %.02790.lcssa, <2 x i32> <i32 2, i32 6>
  %i.dyq = shufflevector <4 x float> %.02785.lcssa, <4 x float> %.02790.lcssa, <2 x i32> <i32 0, i32 4>
  %i.dyr = fadd fast <2 x float> %i.dyp, %i.dyq
  %i.dys = fadd fast <2 x float> %i.dyo, %i.dyr   ; 3 uses
  %i.dyt = or disjoint i32 %.21362.lcssa, 1
  %i.dyu = icmp slt i32 %i.dyt, %i.avs
  br i1 %i.dyu, label %.lr.ph3535, label %.preheader2860

.lr.ph3535:                                       ; preds = %._crit_edge3510
  %i.dyv = load ptr, ptr %0, align 8, !tbaa !18
  %i.dyw = load i32, ptr %i.o, align 4, !tbaa !17
  %i.dyx = sext i32 %i.dyw to i64
  %i.dyy = load i64, ptr %i.awc, align 8, !tbaa !24
  %factor.op.mul3540 = mul i64 %i.dyy, %i.dyx
  %i.dyz = mul nsw i64 %indvars.iv4138, %i.den
  %invariant.gep3542 = getelementptr [2 x i8], ptr %i.dyv, i64 %i.dyz
  %i.dza = load i32, ptr %i.e, align 4
  %i.dzb = sext i32 %i.dza to i64
  %i.dzc = load i32, ptr %i.b, align 4
  %i.dzd = sext i32 %i.dzc to i64
  br i1 %i.dei, label %.lr.ph3525.us.preheader, label %.lr.ph3535.split.preheader

.lr.ph3535.split.preheader:                       ; preds = %.lr.ph3535
  %i.dze = add i32 %.21362.lcssa, 2
  %i.dzf = sub i32 %11, %.21362.lcssa
  %i.dzg = and i32 %i.dzf, -2
  %i.dzh = add i32 %i.dze, %i.dzg
  br label %.preheader2860

.lr.ph3525.us.preheader:                          ; preds = %.lr.ph3535
  %i.dzi = zext i32 %.21362.lcssa to i64
  br label %.lr.ph3525.us

.lr.ph3525.us:                                    ; preds = %.lr.ph3525.us.preheader, %._crit_edge3526.us
  %indvars.iv4129 = phi i64 [ %i.dzi, %.lr.ph3525.us.preheader ], [ %indvars.iv.next4130, %._crit_edge3526.us ] ; 2 uses
  %.2113863532.us = phi ptr [ %.161381.lcssa, %.lr.ph3525.us.preheader ], [ %scevgep4127, %._crit_edge3526.us ] ; 2 uses
  %i.dzj = phi <2 x float> [ %i.dys, %.lr.ph3525.us.preheader ], [ %i.eak, %._crit_edge3526.us ]
  %.reass3541.us = mul i64 %factor.op.mul3540, %indvars.iv4129
  %gep3543.us = getelementptr i8, ptr %invariant.gep3542, i64 %.reass3541.us
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph3525.us, %bb.ar
  %.012833523.us = phi i32 [ 0, %.lr.ph3525.us ], [ %i.ean, %bb.ar ]
  %.012843522.us = phi ptr [ %gep3543.us, %.lr.ph3525.us ], [ %i.eal, %bb.ar ] ; 3 uses
  %.2213873521.us = phi ptr [ %.2113863532.us, %.lr.ph3525.us ], [ %i.eam, %bb.ar ] ; 3 uses
  %i.dzk = phi <2 x float> [ %i.dzj, %.lr.ph3525.us ], [ %i.eak, %bb.ar ]
  %i.dzl = load i16, ptr %.012843522.us, align 2, !tbaa !33
  %i.dzm = zext i16 %i.dzl to i32
  %i.dzn = shl nuw i32 %i.dzm, 16
  %i.dzo = getelementptr inbounds [2 x i8], ptr %.012843522.us, i64 %i.dzb
  %i.dzp = load i16, ptr %i.dzo, align 2, !tbaa !33
  %i.dzq = zext i16 %i.dzp to i32
  %i.dzr = shl nuw i32 %i.dzq, 16
  %i.dzs = getelementptr inbounds nuw i8, ptr %.2213873521.us, i64 4
  %i.dzt = load <2 x i16>, ptr %.2213873521.us, align 2, !tbaa !33
  %i.dzu = zext <2 x i16> %i.dzt to <2 x i32>
  %i.dzv = shl nuw <2 x i32> %i.dzu, splat (i32 16)
  %i.dzw = bitcast <2 x i32> %i.dzv to <2 x float>
  %i.dzx = insertelement <2 x i32> poison, i32 %i.dzn, i64 0
  %i.dzy = bitcast <2 x i32> %i.dzx to <2 x float>
  %i.dzz = shufflevector <2 x float> %i.dzy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eaa = fmul fast <2 x float> %i.dzz, %i.dzw
  %i.eab = fadd fast <2 x float> %i.dzk, %i.eaa
  %i.eac = load <2 x i16>, ptr %i.dzs, align 2, !tbaa !33
  %i.ead = zext <2 x i16> %i.eac to <2 x i32>
  %i.eae = shl nuw <2 x i32> %i.ead, splat (i32 16)
  %i.eaf = bitcast <2 x i32> %i.eae to <2 x float>
  %i.eag = insertelement <2 x i32> poison, i32 %i.dzr, i64 0
  %i.eah = bitcast <2 x i32> %i.eag to <2 x float>
  %i.eai = shufflevector <2 x float> %i.eah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eaj = fmul fast <2 x float> %i.eai, %i.eaf
  %i.eak = fadd fast <2 x float> %i.eaj, %i.eab   ; 3 uses
  %i.eal = getelementptr inbounds [2 x i8], ptr %.012843522.us, i64 %i.dzd
  %i.eam = getelementptr inbounds nuw i8, ptr %.2213873521.us, i64 8
  %i.ean = add nuw nsw i32 %.012833523.us, 1      ; 2 uses
  %exitcond4128.not = icmp eq i32 %i.ean, %i.deh
  br i1 %exitcond4128.not, label %._crit_edge3526.us, label %bb.ar, !llvm.loop !94

._crit_edge3526.us:                               ; preds = %bb.ar
  %scevgep4126 = getelementptr i8, ptr %.2113863532.us, i64 8
  %scevgep4127 = getelementptr i8, ptr %scevgep4126, i64 %i.del ; 2 uses
  %indvars.iv.next4130 = add nuw nsw i64 %indvars.iv4129, 2 ; 3 uses
  %i.eao = trunc i64 %indvars.iv.next4130 to i32
  %i.eap = or i32 %i.eao, 1
  %i.eaq = icmp slt i32 %i.eap, %i.avs
  br i1 %i.eaq, label %.lr.ph3525.us, label %.preheader2860.loopexit, !llvm.loop !95

.preheader2860.loopexit:                          ; preds = %._crit_edge3526.us
  %i.ear = trunc nuw i64 %indvars.iv.next4130 to i32
  br label %.preheader2860

.preheader2860:                                   ; preds = %.lr.ph3535.split.preheader, %.preheader2860.loopexit, %._crit_edge3510
  %.211386.lcssa = phi ptr [ %.161381.lcssa, %._crit_edge3510 ], [ %scevgep4127, %.preheader2860.loopexit ], [ %.161381.lcssa, %.lr.ph3535.split.preheader ]
  %.31363.lcssa = phi i32 [ %.21362.lcssa, %._crit_edge3510 ], [ %i.ear, %.preheader2860.loopexit ], [ %i.dzh, %.lr.ph3535.split.preheader ] ; 2 uses
  %i.eas = phi <2 x float> [ %i.dys, %._crit_edge3510 ], [ %i.eak, %.preheader2860.loopexit ], [ %i.dys, %.lr.ph3535.split.preheader ] ; 3 uses
  %i.eat = icmp slt i32 %.31363.lcssa, %i.avs
  br i1 %i.eat, label %.lr.ph3563, label %._crit_edge3564

.lr.ph3563:                                       ; preds = %.preheader2860
  %i.eau = load ptr, ptr %0, align 8, !tbaa !18
  %i.eav = load i32, ptr %i.o, align 4, !tbaa !17
  %i.eaw = sext i32 %i.eav to i64
  %i.eax = load i64, ptr %i.awc, align 8, !tbaa !24
  %factor.op.mul3567 = mul i64 %i.eax, %i.eaw
  %i.eay = mul nsw i64 %indvars.iv4138, %i.den
  %invariant.gep3569 = getelementptr [2 x i8], ptr %i.eau, i64 %i.eay
  %i.eaz = load i32, ptr %i.b, align 4
  %i.eba = sext i32 %i.eaz to i64                 ; 2 uses
  br i1 %i.dei, label %.lr.ph3554.us.preheader, label %._crit_edge3564

.lr.ph3554.us.preheader:                          ; preds = %.lr.ph3563
  %i.ebb = zext i32 %.31363.lcssa to i64
  br label %.lr.ph3554.us

.lr.ph3554.us:                                    ; preds = %.lr.ph3554.us.preheader, %._crit_edge3555.us
  %indvars.iv4135 = phi i64 [ %i.ebb, %.lr.ph3554.us.preheader ], [ %indvars.iv.next4136, %._crit_edge3555.us ] ; 2 uses
  %.2313883561.us = phi ptr [ %.211386.lcssa, %.lr.ph3554.us.preheader ], [ %scevgep4133, %._crit_edge3555.us ] ; 3 uses
  %i.ebc = phi <2 x float> [ %i.eas, %.lr.ph3554.us.preheader ], [ %.lcssa4662, %._crit_edge3555.us ] ; 2 uses
  %.reass3568.us = mul i64 %factor.op.mul3567, %indvars.iv4135
  %gep3570.us = getelementptr i8, ptr %invariant.gep3569, i64 %.reass3568.us ; 2 uses
  br i1 %i.deo, label %.epil.preheader4782, label %.lr.ph3554.us.new

.lr.ph3554.us.new:                                ; preds = %.lr.ph3554.us, %.lr.ph3554.us.new
  %.012823551.us = phi ptr [ %i.ece, %.lr.ph3554.us.new ], [ %gep3570.us, %.lr.ph3554.us ] ; 2 uses
  %.2413893550.us = phi ptr [ %i.ecf, %.lr.ph3554.us.new ], [ %.2313883561.us, %.lr.ph3554.us ] ; 3 uses
  %i.ebd = phi <2 x float> [ %i.ecd, %.lr.ph3554.us.new ], [ %i.ebc, %.lr.ph3554.us ]
  %niter4788 = phi i32 [ %niter4788.next.1, %.lr.ph3554.us.new ], [ 0, %.lr.ph3554.us ]
  %i.ebe = load i16, ptr %.012823551.us, align 2, !tbaa !33
  %i.ebf = zext i16 %i.ebe to i32
  %i.ebg = shl nuw i32 %i.ebf, 16
  %i.ebh = load <2 x i16>, ptr %.2413893550.us, align 2, !tbaa !33
  %i.ebi = zext <2 x i16> %i.ebh to <2 x i32>
  %i.ebj = shl nuw <2 x i32> %i.ebi, splat (i32 16)
  %i.ebk = bitcast <2 x i32> %i.ebj to <2 x float>
  %i.ebl = insertelement <2 x i32> poison, i32 %i.ebg, i64 0
  %i.ebm = bitcast <2 x i32> %i.ebl to <2 x float>
  %i.ebn = shufflevector <2 x float> %i.ebm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ebo = fmul fast <2 x float> %i.ebn, %i.ebk
  %i.ebp = fadd fast <2 x float> %i.ebo, %i.ebd
  %i.ebq = getelementptr inbounds [2 x i8], ptr %.012823551.us, i64 %i.eba ; 2 uses
  %i.ebr = getelementptr inbounds nuw i8, ptr %.2413893550.us, i64 4
  %i.ebs = load i16, ptr %i.ebq, align 2, !tbaa !33
  %i.ebt = zext i16 %i.ebs to i32
  %i.ebu = shl nuw i32 %i.ebt, 16
  %i.ebv = load <2 x i16>, ptr %i.ebr, align 2, !tbaa !33
  %i.ebw = zext <2 x i16> %i.ebv to <2 x i32>
  %i.ebx = shl nuw <2 x i32> %i.ebw, splat (i32 16)
  %i.eby = bitcast <2 x i32> %i.ebx to <2 x float>
  %i.ebz = insertelement <2 x i32> poison, i32 %i.ebu, i64 0
  %i.eca = bitcast <2 x i32> %i.ebz to <2 x float>
  %i.ecb = shufflevector <2 x float> %i.eca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ecc = fmul fast <2 x float> %i.ecb, %i.eby
  %i.ecd = fadd fast <2 x float> %i.ecc, %i.ebp   ; 3 uses
  %i.ece = getelementptr inbounds [2 x i8], ptr %i.ebq, i64 %i.eba ; 2 uses
  %i.ecf = getelementptr inbounds nuw i8, ptr %.2413893550.us, i64 8 ; 2 uses
  %niter4788.next.1 = add nuw nsw i32 %niter4788, 2 ; 2 uses
  %niter4788.ncmp.1 = icmp eq i32 %niter4788.next.1, %unroll_iter4787
  br i1 %niter4788.ncmp.1, label %._crit_edge3555.us.unr-lcssa, label %.lr.ph3554.us.new, !llvm.loop !96

._crit_edge3555.us.unr-lcssa:                     ; preds = %.lr.ph3554.us.new
  br i1 %lcmp.mod4784.not, label %._crit_edge3555.us, label %.epil.preheader4782

.epil.preheader4782:                              ; preds = %._crit_edge3555.us.unr-lcssa, %.lr.ph3554.us
  %.012823551.us.epil.init = phi ptr [ %gep3570.us, %.lr.ph3554.us ], [ %i.ece, %._crit_edge3555.us.unr-lcssa ]
  %.2413893550.us.epil.init = phi ptr [ %.2313883561.us, %.lr.ph3554.us ], [ %i.ecf, %._crit_edge3555.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.ebc, %.lr.ph3554.us ], [ %i.ecd, %._crit_edge3555.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4786)
  %i.ecg = load i16, ptr %.012823551.us.epil.init, align 2, !tbaa !33
  %i.ech = zext i16 %i.ecg to i32
  %i.eci = shl nuw i32 %i.ech, 16
  %i.ecj = load <2 x i16>, ptr %.2413893550.us.epil.init, align 2, !tbaa !33
  %i.eck = zext <2 x i16> %i.ecj to <2 x i32>
  %i.ecl = shl nuw <2 x i32> %i.eck, splat (i32 16)
  %i.ecm = bitcast <2 x i32> %i.ecl to <2 x float>
  %i.ecn = insertelement <2 x i32> poison, i32 %i.eci, i64 0
  %i.eco = bitcast <2 x i32> %i.ecn to <2 x float>
  %i.ecp = shufflevector <2 x float> %i.eco, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ecq = fmul fast <2 x float> %i.ecp, %i.ecm
  %i.ecr = fadd fast <2 x float> %i.ecq, %.epil.init
  br label %._crit_edge3555.us

._crit_edge3555.us:                               ; preds = %._crit_edge3555.us.unr-lcssa, %.epil.preheader4782
  %.lcssa4662 = phi <2 x float> [ %i.ecd, %._crit_edge3555.us.unr-lcssa ], [ %i.ecr, %.epil.preheader4782 ] ; 2 uses
  %scevgep4132 = getelementptr i8, ptr %.2313883561.us, i64 4
  %scevgep4133 = getelementptr i8, ptr %scevgep4132, i64 %i.dem
  %indvars.iv.next4136 = add nuw nsw i64 %indvars.iv4135, 1 ; 2 uses
  %i.ecs = trunc nuw i64 %indvars.iv.next4136 to i32
  %i.ect = icmp sgt i32 %i.avs, %i.ecs
  br i1 %i.ect, label %.lr.ph3554.us, label %._crit_edge3564, !llvm.loop !97

._crit_edge3564:                                  ; preds = %._crit_edge3555.us, %.lr.ph3563, %.preheader2860
  %i.ecu = phi <2 x float> [ %i.eas, %.preheader2860 ], [ %i.eas, %.lr.ph3563 ], [ %.lcssa4662, %._crit_edge3555.us ] ; 12 uses
  switch i32 %i.awh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2808
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2811
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2805
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2814
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2817
    i32 6, label %bb.as
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2808: ; preds = %._crit_edge3564
  %i.ecv = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ecu, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2811: ; preds = %._crit_edge3564
  %i.ecw = load ptr, ptr %8, align 8, !tbaa !18
  %i.ecx = load float, ptr %i.ecw, align 4, !tbaa !51
  %i.ecy = fcmp fast ogt <2 x float> %i.ecu, zeroinitializer
  %i.ecz = insertelement <2 x float> poison, float %i.ecx, i64 0
  %i.eda = shufflevector <2 x float> %i.ecz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.edb = select <2 x i1> %i.ecy, <2 x float> splat (float 1.000000e+00), <2 x float> %i.eda
  %i.edc = fmul fast <2 x float> %i.edb, %i.ecu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2805: ; preds = %._crit_edge3564
  %i.edd = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.ede = load float, ptr %i.edd, align 4, !tbaa !51 ; 2 uses
  %i.edf = getelementptr inbounds nuw i8, ptr %i.edd, i64 4
  %i.edg = load float, ptr %i.edf, align 4, !tbaa !51 ; 4 uses
  %i.edh = extractelement <2 x float> %i.ecu, i64 0
  %.02545 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.edh, float %i.ede) ; 2 uses
  %i.edi = fcmp fast ogt float %.02545, %i.edg
  %.125462807 = select i1 %i.edi, float %i.edg, float %.02545
  %i.edj = extractelement <2 x float> %i.ecu, i64 1
  %.02547 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.edj, float %i.ede) ; 2 uses
  %i.edk = fcmp fast ogt float %.02547, %i.edg
  %i.edl = insertelement <2 x float> poison, float %.125462807, i64 0
  %i.edm = insertelement <2 x float> %i.edl, float %.02547, i64 1 ; 2 uses
  br i1 %i.edk, label %bb.av, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2814: ; preds = %._crit_edge3564
  %i.edn = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ecu, <2 x float> splat (float f0x42B0C0A5))
  %i.edo = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.edn, <2 x float> splat (float f0xC2B0C0A5))
  %i.edp = fneg fast <2 x float> %i.edo
  %i.edq = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.edp)
  %i.edr = fadd fast <2 x float> %i.edq, splat (float 1.000000e+00)
  %i.eds = fdiv fast <2 x float> splat (float 1.000000e+00), %i.edr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2817: ; preds = %._crit_edge3564
  %i.edt = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.ecu)
  %i.edu = fadd fast <2 x float> %i.edt, splat (float 1.000000e+00)
  %i.edv = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.edu)
  %i.edw = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.edv)
  %i.edx = fmul fast <2 x float> %i.edw, %i.ecu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

bb.as:                                            ; preds = %._crit_edge3564
  %i.edy = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.edz = load float, ptr %i.edy, align 4, !tbaa !51 ; 5 uses
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edy, i64 4
  %i.eeb = load float, ptr %i.eea, align 4, !tbaa !51 ; 3 uses
  %i.eec = fneg fast float %i.eeb
  %i.eed = fdiv fast float %i.eec, %i.edz         ; 4 uses
  %i.eee = extractelement <2 x float> %i.ecu, i64 0 ; 5 uses
  %i.eef = fcmp fast olt float %i.eee, %i.eed
  br i1 %i.eef, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eeg = fdiv fast float 1.000000e+00, %i.edz
  %i.eeh = fadd fast float %i.eed, %i.eeg
  %i.eei = fcmp fast ogt float %i.eee, %i.eeh
  br i1 %i.eei, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eej = fmul fast float %i.edz, %i.eee
  %i.eek = fadd fast float %i.eej, %i.eeb
  %i.eel = fmul fast float %i.eek, %i.eee
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread

bb.av:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2805
  %i.eem = insertelement <2 x float> %i.edm, float %i.edg, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread: ; preds = %bb.au, %bb.at, %bb.as
  %.125462801 = phi float [ %i.eel, %bb.au ], [ 0.000000e+00, %bb.as ], [ %i.eee, %bb.at ] ; 2 uses
  %i.een = extractelement <2 x float> %i.ecu, i64 1 ; 4 uses
  %i.eeo = fcmp fast olt float %i.een, %i.eed
  %i.eep = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.125462801, i64 0 ; 2 uses
  br i1 %i.eeo, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513, label %bb.aw

bb.aw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread
  %i.eeq = fdiv fast float 1.000000e+00, %i.edz
  %i.eer = fadd fast float %i.eed, %i.eeq
  %i.ees = fcmp fast ogt float %i.een, %i.eer
  %i.eet = insertelement <2 x float> %i.ecu, float %.125462801, i64 0
  br i1 %i.ees, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eeu = fmul fast float %i.edz, %i.een
  %i.eev = fadd fast float %i.eeu, %i.eeb
  %i.eew = fmul fast float %i.eev, %i.een
  %i.eex = insertelement <2 x float> %i.eep, float %i.eew, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1513

_ZL13activation_ssfiRKN4ncnn3MatE.exit1513:       ; preds = %._crit_edge3564, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2808, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2811, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2805, %bb.av, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2814, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2817, %bb.aw, %bb.ax
  %i.eey = phi <2 x float> [ %i.eep, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread ], [ %i.ecv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2808 ], [ %i.edc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2811 ], [ %i.eem, %bb.av ], [ %i.edm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2805 ], [ %i.eds, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2814 ], [ %i.edx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1514.thread2817 ], [ %i.eex, %bb.ax ], [ %i.eet, %bb.aw ], [ %i.ecu, %._crit_edge3564 ]
  %i.eez = bitcast <2 x float> %i.eey to <2 x i32>
  %i.efa = lshr <2 x i32> %i.eez, splat (i32 16)
  %i.efb = trunc nuw <2 x i32> %i.efa to <2 x i16> ; 2 uses
  %i.efc = extractelement <2 x i16> %i.efb, i64 0
  store i16 %i.efc, ptr %.014023573, align 2, !tbaa !33
  %i.efd = extractelement <2 x i16> %i.efb, i64 1
  store i16 %i.efd, ptr %.014013574, align 2, !tbaa !33
  %i.efe = getelementptr inbounds nuw i8, ptr %.014023573, i64 2
  %i.eff = getelementptr inbounds nuw i8, ptr %.014013574, i64 2
  %indvars.iv.next4139 = add nuw nsw i64 %indvars.iv4138, 1 ; 2 uses
  %exitcond4142.not = icmp eq i64 %indvars.iv.next4139, %wide.trip.count4141
  br i1 %exitcond4142.not, label %._crit_edge3578, label %bb.aj, !llvm.loop !98

._crit_edge3765.split:                            ; preds = %._crit_edge3755, %.lr.ph3764, %._crit_edge3588.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  ret void

.lr.ph3754:                                       ; preds = %.lr.ph3764.split, %._crit_edge3755
  %indvars.iv4193 = phi i64 [ %i.ddg, %.lr.ph3764.split ], [ %indvars.iv.next4194, %._crit_edge3755 ] ; 4 uses
  %.reass3767 = mul i64 %factor.op.mul3766, %indvars.iv4193
  %i.efg = getelementptr inbounds nuw i8, ptr %i.dck, i64 %.reass3767
  %i.efh = getelementptr inbounds [4 x i8], ptr %i.dcq, i64 %indvars.iv4193
  %i.efi = trunc nsw i64 %indvars.iv4193 to i32   ; 2 uses
  %i.efj = sdiv i32 %i.efi, 16
  %i.efk = insertelement <4 x i32> poison, i32 %i.efi, i64 0
  %i.efl = shufflevector <4 x i32> %i.efk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.efm = srem <4 x i32> %i.efl, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.efn = bitcast <4 x i32> %i.efm to <16 x i8>
  %.lhs.trunc2824 = extractelement <16 x i8> %i.efn, i64 0
  %i.efo = sdiv i8 %.lhs.trunc2824, 8
  %.sext2825 = sext i8 %i.efo to i32
  %i.efp = bitcast <4 x i32> %i.efm to <16 x i8>
  %.lhs.trunc2826 = extractelement <16 x i8> %i.efp, i64 4
  %i.efq = sdiv i8 %.lhs.trunc2826, 4
  %.sext2827 = sext i8 %i.efq to i32
  %i.efr = bitcast <4 x i32> %i.efm to <16 x i8>
  %.lhs.trunc2828 = extractelement <16 x i8> %i.efr, i64 8
  %i.efs = sdiv i8 %.lhs.trunc2828, 2
  %.sext2829 = sext i8 %i.efs to i32
  %i.eft = extractelement <4 x i32> %i.efm, i64 3
  %i.efu = add nsw i32 %i.eft, %i.efj
  %i.efv = add nsw i32 %i.efu, %.sext2825
  %i.efw = add nsw i32 %i.efv, %.sext2827
  %i.efx = add nsw i32 %i.efw, %.sext2829
  %i.efy = sext i32 %i.efx to i64
  %.reass3769 = mul i64 %factor.op.mul3768, %i.efy
  %i.efz = getelementptr inbounds nuw i8, ptr %i.ddc, i64 %.reass3769 ; 2 uses
  %i.ega = load i32, ptr %i.c, align 4            ; 2 uses
  %factor.op.mul3756 = mul i32 %i.k, %i.ega       ; 3 uses
  %i.egb = load i32, ptr %i.a, align 4            ; 6 uses
  %i.egc = icmp sgt i32 %i.egb, 0                 ; 2 uses
  %i.egd = add i32 %i.egb, -1                     ; 2 uses
  %i.ege = zext i32 %i.egd to i64                 ; 2 uses
  %i.egf = shl nuw nsw i64 %i.ege, 2
  %i.egg = shl nuw nsw i64 %i.ege, 1
  %i.egh = sext i32 %i.ega to i64                 ; 2 uses
  %xtraiter4824 = and i32 %i.egb, 1
  %i.egi = icmp eq i32 %i.egd, 0
  %unroll_iter4829 = and i32 %i.egb, 2147483646
  %lcmp.mod4826.not = icmp eq i32 %xtraiter4824, 0
  %lcmp.mod4828 = trunc i32 %i.egb to i1
  br label %bb.ay

._crit_edge3755:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next4194 = add nsw i64 %indvars.iv4193, 1 ; 2 uses
  %exitcond4194.not = icmp eq i64 %indvars.iv.next4194, %i.ddh
  br i1 %exitcond4194.not, label %._crit_edge3765.split, label %.lr.ph3754, !llvm.loop !99

bb.ay:                                            ; preds = %.lr.ph3754, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv4188 = phi i64 [ 0, %.lr.ph3754 ], [ %indvars.iv.next4189, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.012793751 = phi ptr [ %i.efg, %.lr.ph3754 ], [ %i.fdo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not, label %_ZN4ncnn3MatD2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.egj = load float, ptr %i.efh, align 4, !tbaa !51
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.az, %bb.ay
  %.01273 = phi nsz float [ %i.egj, %bb.az ], [ 0.000000e+00, %bb.ay ]
  br i1 %i.dcr, label %.lr.ph3632, label %._crit_edge3633

.lr.ph3632:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.egk = load ptr, ptr %0, align 8, !tbaa !18
  %i.egl = load i32, ptr %i.o, align 4, !tbaa !17
  %i.egm = sext i32 %i.egl to i64
  %i.egn = load i64, ptr %i.dcs, align 8, !tbaa !24
  %factor.op.mul3637 = mul i64 %i.egn, %i.egm
  %i.ego = trunc nuw nsw i64 %indvars.iv4188 to i32
  %.reass3757 = mul i32 %factor.op.mul3756, %i.ego
  %i.egp = sext i32 %.reass3757 to i64
  %invariant.gep3639 = getelementptr [2 x i8], ptr %i.egk, i64 %i.egp
  %i.egq = load i32, ptr %i.a, align 4            ; 10 uses
  %i.egr = icmp slt i32 %i.egq, 1                 ; 2 uses
  %i.egs = load i32, ptr %i.b, align 4            ; 4 uses
  %i.egt = shl nsw i32 %i.egs, 4
  %i.egu = sext i32 %i.egt to i64                 ; 5 uses
  %i.egv = load i32, ptr %i.e, align 4            ; 15 uses
  %i.egw = sext i32 %i.egv to i64                 ; 3 uses
  %i.egx = icmp sgt i32 %i.egq, 0                 ; 2 uses
  %i.egy = shl nsw i32 %i.egs, 3
  %i.egz = sext i32 %i.egy to i64                 ; 4 uses
  %i.eha = shl nsw i32 %i.egv, 1
  %i.ehb = sext i32 %i.eha to i64                 ; 2 uses
  %i.ehc = mul nsw i32 %i.egv, 3
  %i.ehd = sext i32 %i.ehc to i64                 ; 2 uses
  %i.ehe = shl nsw i32 %i.egs, 2
  %i.ehf = sext i32 %i.ehe to i64                 ; 4 uses
  %i.ehg = mul nsw i32 %i.egv, 15
  %i.ehh = sext i32 %i.ehg to i64
  %i.ehi = mul nsw i32 %i.egv, 14
  %i.ehj = sext i32 %i.ehi to i64
  %i.ehk = mul nsw i32 %i.egv, 13
  %i.ehl = sext i32 %i.ehk to i64
  %i.ehm = mul nsw i32 %i.egv, 12
  %i.ehn = sext i32 %i.ehm to i64
  %i.eho = mul nsw i32 %i.egv, 11
  %i.ehp = sext i32 %i.eho to i64
  %i.ehq = mul nsw i32 %i.egv, 10
  %i.ehr = sext i32 %i.ehq to i64
  %i.ehs = mul nsw i32 %i.egv, 9
  %i.eht = sext i32 %i.ehs to i64
  %i.ehu = shl nsw i32 %i.egv, 3
  %i.ehv = sext i32 %i.ehu to i64
  %i.ehw = mul nsw i32 %i.egv, 7
  %i.ehx = sext i32 %i.ehw to i64
  %i.ehy = mul nsw i32 %i.egv, 6
  %i.ehz = sext i32 %i.ehy to i64
  %i.eia = mul nsw i32 %i.egv, 5
  %i.eib = sext i32 %i.eia to i64
  %i.eic = shl nsw i32 %i.egv, 2
  %i.eid = sext i32 %i.eic to i64
  %i.eie = sext i32 %i.egs to i64
  %i.eif = add i32 %i.egq, -1                     ; 3 uses
  %i.eig = zext i32 %i.eif to i64
  %i.eih = shl nuw nsw i64 %i.eig, 5              ; 4 uses
  %brmerge3780 = select i1 %i.dct, i1 true, i1 %i.egr
  %brmerge3783 = select i1 %i.dcw, i1 true, i1 %i.egr
  %xtraiter4789 = and i32 %i.egq, 3               ; 3 uses
  %i.eii = icmp ult i32 %i.eif, 3
  %unroll_iter4793 = and i32 %i.egq, 2147483644
  %lcmp.mod4790.not = icmp eq i32 %xtraiter4789, 0
  %lcmp.mod4792 = icmp ne i32 %xtraiter4789, 0
  %xtraiter4795 = and i32 %i.egq, 1
  %i.eij = icmp eq i32 %i.eif, 0
  %unroll_iter4800 = and i32 %i.egq, 2147483646
  %lcmp.mod4797.not = icmp eq i32 %xtraiter4795, 0
  %lcmp.mod4799 = trunc i32 %i.egq to i1
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph3632, %.loopexit2839
  %.012613631 = phi i32 [ 0, %.lr.ph3632 ], [ %i.eon, %.loopexit2839 ] ; 2 uses
  %.012663630 = phi ptr [ %i.efz, %.lr.ph3632 ], [ %.8, %.loopexit2839 ] ; 13 uses
  %.027443629 = phi <16 x float> [ zeroinitializer, %.lr.ph3632 ], [ %.82752, %.loopexit2839 ] ; 9 uses
  %i.eik = sdiv i32 %.012613631, %i.k
  %i.eil = sext i32 %i.eik to i64
  %.reass3638 = mul i64 %factor.op.mul3637, %i.eil
  %gep3640 = getelementptr i8, ptr %invariant.gep3639, i64 %.reass3638 ; 10 uses
  br i1 %brmerge3780, label %.loopexit2843, label %.lr.ph3596.preheader

.lr.ph3596.preheader:                             ; preds = %bb.ba
  br i1 %i.eii, label %.lr.ph3596.epil.preheader, label %.lr.ph3596

.lr.ph3596:                                       ; preds = %.lr.ph3596.preheader, %.lr.ph3596
  %.012563594 = phi ptr [ %i.ejm, %.lr.ph3596 ], [ %gep3640, %.lr.ph3596.preheader ] ; 2 uses
  %.112673593 = phi ptr [ %i.ejn, %.lr.ph3596 ], [ %.012663630, %.lr.ph3596.preheader ] ; 5 uses
  %.127453592 = phi <16 x float> [ %i.ejl, %.lr.ph3596 ], [ %.027443629, %.lr.ph3596.preheader ]
  %niter4794 = phi i32 [ %niter4794.next.3, %.lr.ph3596 ], [ 0, %.lr.ph3596.preheader ]
  %i.eim = load <16 x bfloat>, ptr %.012563594, align 32, !tbaa !28
  %i.ein = fpext fast <16 x bfloat> %i.eim to <16 x float>
  %i.eio = load <16 x bfloat>, ptr %.112673593, align 32, !tbaa !28
  %i.eip = fpext fast <16 x bfloat> %i.eio to <16 x float>
  %i.eiq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ein, <16 x float> nofpclass(nan inf) %i.eip, <16 x float> nofpclass(nan inf) %.127453592)
  %i.eir = getelementptr inbounds [2 x i8], ptr %.012563594, i64 %i.egu ; 2 uses
  %i.eis = getelementptr inbounds nuw i8, ptr %.112673593, i64 32
  %i.eit = load <16 x bfloat>, ptr %i.eir, align 32, !tbaa !28
  %i.eiu = fpext fast <16 x bfloat> %i.eit to <16 x float>
  %i.eiv = load <16 x bfloat>, ptr %i.eis, align 32, !tbaa !28
  %i.eiw = fpext fast <16 x bfloat> %i.eiv to <16 x float>
  %i.eix = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eiu, <16 x float> nofpclass(nan inf) %i.eiw, <16 x float> nofpclass(nan inf) %i.eiq)
  %i.eiy = getelementptr inbounds [2 x i8], ptr %i.eir, i64 %i.egu ; 2 uses
  %i.eiz = getelementptr inbounds nuw i8, ptr %.112673593, i64 64
  %i.eja = load <16 x bfloat>, ptr %i.eiy, align 32, !tbaa !28
  %i.ejb = fpext fast <16 x bfloat> %i.eja to <16 x float>
  %i.ejc = load <16 x bfloat>, ptr %i.eiz, align 32, !tbaa !28
  %i.ejd = fpext fast <16 x bfloat> %i.ejc to <16 x float>
  %i.eje = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ejb, <16 x float> nofpclass(nan inf) %i.ejd, <16 x float> nofpclass(nan inf) %i.eix)
  %i.ejf = getelementptr inbounds [2 x i8], ptr %i.eiy, i64 %i.egu ; 2 uses
  %i.ejg = getelementptr inbounds nuw i8, ptr %.112673593, i64 96
  %i.ejh = load <16 x bfloat>, ptr %i.ejf, align 32, !tbaa !28
  %i.eji = fpext fast <16 x bfloat> %i.ejh to <16 x float>
  %i.ejj = load <16 x bfloat>, ptr %i.ejg, align 32, !tbaa !28
  %i.ejk = fpext fast <16 x bfloat> %i.ejj to <16 x float>
  %i.ejl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eji, <16 x float> nofpclass(nan inf) %i.ejk, <16 x float> nofpclass(nan inf) %i.eje) ; 3 uses
  %i.ejm = getelementptr inbounds [2 x i8], ptr %i.ejf, i64 %i.egu ; 2 uses
  %i.ejn = getelementptr inbounds nuw i8, ptr %.112673593, i64 128 ; 2 uses
  %niter4794.next.3 = add nuw nsw i32 %niter4794, 4 ; 2 uses
  %niter4794.ncmp.3 = icmp eq i32 %niter4794.next.3, %unroll_iter4793
  br i1 %niter4794.ncmp.3, label %.loopexit2843.thread.unr-lcssa, label %.lr.ph3596, !llvm.loop !100

.loopexit2843.thread.unr-lcssa:                   ; preds = %.lr.ph3596
  br i1 %lcmp.mod4790.not, label %.loopexit2843.thread, label %.lr.ph3596.epil.preheader

.lr.ph3596.epil.preheader:                        ; preds = %.loopexit2843.thread.unr-lcssa, %.lr.ph3596.preheader
  %.012563594.epil.init = phi ptr [ %gep3640, %.lr.ph3596.preheader ], [ %i.ejm, %.loopexit2843.thread.unr-lcssa ]
  %.112673593.epil.init = phi ptr [ %.012663630, %.lr.ph3596.preheader ], [ %i.ejn, %.loopexit2843.thread.unr-lcssa ]
  %.127453592.epil.init = phi <16 x float> [ %.027443629, %.lr.ph3596.preheader ], [ %i.ejl, %.loopexit2843.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4792)
  br label %.lr.ph3596.epil

.lr.ph3596.epil:                                  ; preds = %.lr.ph3596.epil, %.lr.ph3596.epil.preheader
  %.012563594.epil = phi ptr [ %i.ejt, %.lr.ph3596.epil ], [ %.012563594.epil.init, %.lr.ph3596.epil.preheader ] ; 2 uses
  %.112673593.epil = phi ptr [ %i.eju, %.lr.ph3596.epil ], [ %.112673593.epil.init, %.lr.ph3596.epil.preheader ] ; 2 uses
  %.127453592.epil = phi <16 x float> [ %i.ejs, %.lr.ph3596.epil ], [ %.127453592.epil.init, %.lr.ph3596.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph3596.epil ], [ 0, %.lr.ph3596.epil.preheader ]
  %i.ejo = load <16 x bfloat>, ptr %.012563594.epil, align 32, !tbaa !28
  %i.ejp = fpext fast <16 x bfloat> %i.ejo to <16 x float>
  %i.ejq = load <16 x bfloat>, ptr %.112673593.epil, align 32, !tbaa !28
  %i.ejr = fpext fast <16 x bfloat> %i.ejq to <16 x float>
  %i.ejs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ejp, <16 x float> nofpclass(nan inf) %i.ejr, <16 x float> nofpclass(nan inf) %.127453592.epil) ; 2 uses
  %i.ejt = getelementptr inbounds [2 x i8], ptr %.012563594.epil, i64 %i.egu
  %i.eju = getelementptr inbounds nuw i8, ptr %.112673593.epil, i64 32
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter4789
  br i1 %epil.iter.cmp.not, label %.loopexit2843.thread, label %.lr.ph3596.epil, !llvm.loop !101

.loopexit2843.thread:                             ; preds = %.lr.ph3596.epil, %.loopexit2843.thread.unr-lcssa
  %.lcssa = phi <16 x float> [ %i.ejl, %.loopexit2843.thread.unr-lcssa ], [ %i.ejs, %.lr.ph3596.epil ]
  %scevgep4148 = getelementptr i8, ptr %.012663630, i64 32
  %scevgep4149.a = getelementptr i8, ptr %scevgep4148, i64 %i.eih
  br label %.loopexit2839

.loopexit2843:                                    ; preds = %bb.ba
  br i1 %i.dcu, label %bb.bb, label %.loopexit2841

bb.bb:                                            ; preds = %.loopexit2843
  br i1 %i.egx, label %.lr.ph3606.preheader, label %.loopexit2839

.lr.ph3606.preheader:                             ; preds = %bb.bb
  %i.ejv = getelementptr inbounds [2 x i8], ptr %gep3640, i64 %i.egw ; 2 uses
  br i1 %i.eij, label %.lr.ph3606.epil.preheader, label %.lr.ph3606

.lr.ph3606:                                       ; preds = %.lr.ph3606.preheader, %.lr.ph3606
  %.012543603 = phi ptr [ %i.ekq, %.lr.ph3606 ], [ %i.ejv, %.lr.ph3606.preheader ] ; 2 uses
  %.212583602 = phi ptr [ %i.ekp, %.lr.ph3606 ], [ %gep3640, %.lr.ph3606.preheader ] ; 2 uses
  %.312693601 = phi ptr [ %i.ekr, %.lr.ph3606 ], [ %.012663630, %.lr.ph3606.preheader ] ; 3 uses
  %.327473600 = phi <16 x float> [ %i.eko, %.lr.ph3606 ], [ %.027443629, %.lr.ph3606.preheader ]
  %niter4801 = phi i32 [ %niter4801.next.1, %.lr.ph3606 ], [ 0, %.lr.ph3606.preheader ]
  %i.ejw = load <8 x bfloat>, ptr %.212583602, align 16, !tbaa !28
  %i.ejx = fpext fast <8 x bfloat> %i.ejw to <8 x float>
  %i.ejy = load <8 x bfloat>, ptr %.012543603, align 16, !tbaa !28
  %i.ejz = fpext fast <8 x bfloat> %i.ejy to <8 x float>
  %i.eka = shufflevector <8 x float> %i.ejx, <8 x float> %i.ejz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ekb = load <16 x bfloat>, ptr %.312693601, align 32, !tbaa !28
  %i.ekc = fpext fast <16 x bfloat> %i.ekb to <16 x float>
  %i.ekd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eka, <16 x float> nofpclass(nan inf) %i.ekc, <16 x float> nofpclass(nan inf) %.327473600)
  %i.eke = getelementptr inbounds [2 x i8], ptr %.212583602, i64 %i.egz ; 2 uses
  %i.ekf = getelementptr inbounds [2 x i8], ptr %.012543603, i64 %i.egz ; 2 uses
  %i.ekg = getelementptr inbounds nuw i8, ptr %.312693601, i64 32
  %i.ekh = load <8 x bfloat>, ptr %i.eke, align 16, !tbaa !28
  %i.eki = fpext fast <8 x bfloat> %i.ekh to <8 x float>
  %i.ekj = load <8 x bfloat>, ptr %i.ekf, align 16, !tbaa !28
  %i.ekk = fpext fast <8 x bfloat> %i.ekj to <8 x float>
  %i.ekl = shufflevector <8 x float> %i.eki, <8 x float> %i.ekk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ekm = load <16 x bfloat>, ptr %i.ekg, align 32, !tbaa !28
  %i.ekn = fpext fast <16 x bfloat> %i.ekm to <16 x float>
  %i.eko = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ekl, <16 x float> nofpclass(nan inf) %i.ekn, <16 x float> nofpclass(nan inf) %i.ekd) ; 3 uses
  %i.ekp = getelementptr inbounds [2 x i8], ptr %i.eke, i64 %i.egz ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE:bb.a
  %i.euk = insertelement <8 x i16> %i.euj, i16 %i.ets, i64 6
  %i.eul = insertelement <8 x i16> %i.euk, i16 %i.etq, i64 7
  %i.eum = zext <8 x i16> %i.eul to <8 x i32>
  %i.eun = shl nuw <8 x i32> %i.eum, splat (i32 16)
  %i.euo = bitcast <8 x i32> %i.eun to <8 x float>
  %i.eup = load <8 x bfloat>, ptr %.143660, align 16, !tbaa !28
  %i.euq = fpext fast <8 x bfloat> %i.eup to <8 x float>
  %i.eur = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.euo, <8 x float> nofpclass(nan inf) %i.euq, <8 x float> nofpclass(nan inf) %.527213659) ; 2 uses
  %i.eus = getelementptr inbounds [2 x i8], ptr %.43661, i64 %i.eqe
  %i.eut = getelementptr inbounds nuw i8, ptr %.143660, i64 16
  %i.euu = add nuw nsw i32 %.012403662, 1         ; 2 uses
  %exitcond4168.not = icmp eq i32 %i.euu, %i.epi
  br i1 %exitcond4168.not, label %.loopexit2834.loopexit, label %.lr.ph3663, !llvm.loop !110

.loopexit2834.loopexit:                           ; preds = %.lr.ph3663
  %scevgep4166 = getelementptr i8, ptr %.93667, i64 16
  %scevgep4167.a = getelementptr i8, ptr %scevgep4166, i64 %i.eqh
  br label %.loopexit2834

.loopexit2834:                                    ; preds = %bb.be, %.loopexit2835.loopexit, %.loopexit2837.thread, %.loopexit2834.loopexit, %.loopexit2835
  %.62722 = phi nsz <8 x float> [ %.027163666, %.loopexit2835 ], [ %i.eur, %.loopexit2834.loopexit ], [ %.lcssa4632, %.loopexit2837.thread ], [ %.lcssa4634, %.loopexit2835.loopexit ], [ %.027163666, %bb.be ] ; 2 uses
  %.15 = phi ptr [ %.93667, %.loopexit2835 ], [ %scevgep4167.a, %.loopexit2834.loopexit ], [ %scevgep4161.a, %.loopexit2837.thread ], [ %scevgep4164.a, %.loopexit2835.loopexit ], [ %.93667, %bb.be ] ; 2 uses
  %i.euv = add nuw nsw i32 %.112623668, 8         ; 3 uses
  %i.euw = or disjoint i32 %i.euv, 7
  %i.eux = icmp slt i32 %i.euw, %i.n
  br i1 %i.eux, label %bb.bd, label %._crit_edge3671, !llvm.loop !111

._crit_edge3671:                                  ; preds = %.loopexit2834, %._crit_edge3633
  %.02716.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge3633 ], [ %.62722, %.loopexit2834 ] ; 2 uses
  %.9.lcssa = phi ptr [ %.01266.lcssa, %._crit_edge3633 ], [ %.15, %.loopexit2834 ] ; 2 uses
  %.11262.lcssa = phi i32 [ %.01261.lcssa, %._crit_edge3633 ], [ %i.euv, %.loopexit2834 ] ; 3 uses
  %i.euy = shufflevector <8 x float> %.02716.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.euz = shufflevector <8 x float> %.02716.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eva = fadd fast <4 x float> %i.euy, %i.euz   ; 2 uses
  %i.evb = or disjoint i32 %.11262.lcssa, 3
  %i.evc = icmp slt i32 %i.evb, %i.n
  br i1 %i.evc, label %.lr.ph3698, label %._crit_edge3699

.lr.ph3698:                                       ; preds = %._crit_edge3671
  %i.evd = load ptr, ptr %0, align 8, !tbaa !18
  %i.eve = load i32, ptr %i.o, align 4, !tbaa !17
  %i.evf = sext i32 %i.eve to i64
  %i.evg = load i64, ptr %i.dcs, align 8, !tbaa !24
  %factor.op.mul3703 = mul i64 %i.evg, %i.evf
  %i.evh = trunc nuw nsw i64 %indvars.iv4188 to i32
  %.reass3761 = mul i32 %factor.op.mul3756, %i.evh
  %i.evi = sext i32 %.reass3761 to i64
  %invariant.gep3705 = getelementptr [2 x i8], ptr %i.evd, i64 %i.evi
  %i.evj = load i32, ptr %i.a, align 4            ; 6 uses
  %i.evk = icmp slt i32 %i.evj, 1                 ; 2 uses
  %i.evl = load i32, ptr %i.b, align 4            ; 2 uses
  %i.evm = shl nsw i32 %i.evl, 2
  %i.evn = sext i32 %i.evm to i64                 ; 2 uses
  %i.evo = load i32, ptr %i.e, align 4            ; 3 uses
  %i.evp = mul nsw i32 %i.evo, 3
  %i.evq = sext i32 %i.evp to i64
  %i.evr = shl nsw i32 %i.evo, 1
  %i.evs = sext i32 %i.evr to i64
  %i.evt = sext i32 %i.evo to i64
  %i.evu = sext i32 %i.evl to i64
  %i.evv = add i32 %i.evj, -1                     ; 2 uses
  %i.evw = zext i32 %i.evv to i64
  %i.evx = shl nuw nsw i64 %i.evw, 3              ; 2 uses
  %brmerge3792 = select i1 %i.dcy, i1 true, i1 %i.evk
  %brmerge3795 = select i1 %i.dcw, i1 true, i1 %i.evk
  %xtraiter4816 = and i32 %i.evj, 1
  %i.evy = icmp eq i32 %i.evv, 0
  %unroll_iter4821 = and i32 %i.evj, 2147483646
  %lcmp.mod4818.not = icmp eq i32 %xtraiter4816, 0
  %lcmp.mod4820 = trunc i32 %i.evj to i1
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph3698, %.loopexit
  %.212633696 = phi i32 [ %.11262.lcssa, %.lr.ph3698 ], [ %i.eym, %.loopexit ] ; 2 uses
  %.163695 = phi ptr [ %.9.lcssa, %.lr.ph3698 ], [ %.20, %.loopexit ] ; 6 uses
  %.026413694 = phi <4 x float> [ zeroinitializer, %.lr.ph3698 ], [ %.42645, %.loopexit ] ; 4 uses
  %i.evz = sdiv i32 %.212633696, %i.k
  %i.ewa = sext i32 %i.evz to i64
  %.reass3704 = mul i64 %factor.op.mul3703, %i.ewa
  %gep3706 = getelementptr i8, ptr %invariant.gep3705, i64 %.reass3704 ; 3 uses
  br i1 %brmerge3792, label %.loopexit2832, label %.lr.ph3683.preheader

.lr.ph3683.preheader:                             ; preds = %bb.bf
  br i1 %i.evy, label %.lr.ph3683.epil.preheader, label %.lr.ph3683

.lr.ph3683:                                       ; preds = %.lr.ph3683.preheader, %.lr.ph3683
  %.012393681 = phi ptr [ %i.ewz, %.lr.ph3683 ], [ %gep3706, %.lr.ph3683.preheader ] ; 2 uses
  %.173680 = phi ptr [ %i.exa, %.lr.ph3683 ], [ %.163695, %.lr.ph3683.preheader ] ; 3 uses
  %.126423679 = phi <4 x float> [ %i.ewy, %.lr.ph3683 ], [ %.026413694, %.lr.ph3683.preheader ]
  %niter4822 = phi i32 [ %niter4822.next.1, %.lr.ph3683 ], [ 0, %.lr.ph3683.preheader ]
  %i.ewb = load i64, ptr %.012393681, align 1, !tbaa !28
  %i.ewc = insertelement <2 x i64> poison, i64 %i.ewb, i64 0
  %i.ewd = bitcast <2 x i64> %i.ewc to <8 x i16>
  %i.ewe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ewd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ewf = bitcast <8 x i16> %i.ewe to <4 x float>
  %i.ewg = load i64, ptr %.173680, align 1, !tbaa !28
  %i.ewh = insertelement <2 x i64> poison, i64 %i.ewg, i64 0
  %i.ewi = bitcast <2 x i64> %i.ewh to <8 x i16>
  %i.ewj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ewi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ewk = bitcast <8 x i16> %i.ewj to <4 x float>
  %i.ewl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ewf, <4 x float> nofpclass(nan inf) %i.ewk, <4 x float> nofpclass(nan inf) %.126423679)
  %i.ewm = getelementptr inbounds [2 x i8], ptr %.012393681, i64 %i.evn ; 2 uses
  %i.ewn = getelementptr inbounds nuw i8, ptr %.173680, i64 8
  %i.ewo = load i64, ptr %i.ewm, align 1, !tbaa !28
  %i.ewp = insertelement <2 x i64> poison, i64 %i.ewo, i64 0
  %i.ewq = bitcast <2 x i64> %i.ewp to <8 x i16>
  %i.ewr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ewq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ews = bitcast <8 x i16> %i.ewr to <4 x float>
  %i.ewt = load i64, ptr %i.ewn, align 1, !tbaa !28
  %i.ewu = insertelement <2 x i64> poison, i64 %i.ewt, i64 0
  %i.ewv = bitcast <2 x i64> %i.ewu to <8 x i16>
  %i.eww = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ewv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ewx = bitcast <8 x i16> %i.eww to <4 x float>
  %i.ewy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ews, <4 x float> nofpclass(nan inf) %i.ewx, <4 x float> nofpclass(nan inf) %i.ewl) ; 3 uses
  %i.ewz = getelementptr inbounds [2 x i8], ptr %i.ewm, i64 %i.evn ; 2 uses
  %i.exa = getelementptr inbounds nuw i8, ptr %.173680, i64 16 ; 2 uses
  %niter4822.next.1 = add nuw nsw i32 %niter4822, 2 ; 2 uses
  %niter4822.ncmp.1 = icmp eq i32 %niter4822.next.1, %unroll_iter4821
  br i1 %niter4822.ncmp.1, label %.loopexit2832.thread.unr-lcssa, label %.lr.ph3683, !llvm.loop !112

.loopexit2832.thread.unr-lcssa:                   ; preds = %.lr.ph3683
  br i1 %lcmp.mod4818.not, label %.loopexit2832.thread, label %.lr.ph3683.epil.preheader

.lr.ph3683.epil.preheader:                        ; preds = %.loopexit2832.thread.unr-lcssa, %.lr.ph3683.preheader
  %.012393681.epil.init = phi ptr [ %gep3706, %.lr.ph3683.preheader ], [ %i.ewz, %.loopexit2832.thread.unr-lcssa ]
  %.173680.epil.init = phi ptr [ %.163695, %.lr.ph3683.preheader ], [ %i.exa, %.loopexit2832.thread.unr-lcssa ]
  %.126423679.epil.init = phi <4 x float> [ %.026413694, %.lr.ph3683.preheader ], [ %i.ewy, %.loopexit2832.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4820)
  %i.exb = load i64, ptr %.012393681.epil.init, align 1, !tbaa !28
  %i.exc = insertelement <2 x i64> poison, i64 %i.exb, i64 0
  %i.exd = bitcast <2 x i64> %i.exc to <8 x i16>
  %i.exe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.exd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.exf = bitcast <8 x i16> %i.exe to <4 x float>
  %i.exg = load i64, ptr %.173680.epil.init, align 1, !tbaa !28
  %i.exh = insertelement <2 x i64> poison, i64 %i.exg, i64 0
  %i.exi = bitcast <2 x i64> %i.exh to <8 x i16>
  %i.exj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.exi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.exk = bitcast <8 x i16> %i.exj to <4 x float>
  %i.exl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.exf, <4 x float> nofpclass(nan inf) %i.exk, <4 x float> nofpclass(nan inf) %.126423679.epil.init)
  br label %.loopexit2832.thread

.loopexit2832.thread:                             ; preds = %.loopexit2832.thread.unr-lcssa, %.lr.ph3683.epil.preheader
  %.lcssa4636 = phi <4 x float> [ %i.ewy, %.loopexit2832.thread.unr-lcssa ], [ %i.exl, %.lr.ph3683.epil.preheader ]
  %scevgep4169 = getelementptr i8, ptr %.163695, i64 8
  %scevgep4170.a = getelementptr i8, ptr %scevgep4169, i64 %i.evx
  br label %.loopexit

.loopexit2832:                                    ; preds = %bb.bf
  br i1 %brmerge3795, label %.loopexit, label %.lr.ph3691

.lr.ph3691:                                       ; preds = %.loopexit2832, %.lr.ph3691
  %.012373690 = phi i32 [ %i.eyl, %.lr.ph3691 ], [ 0, %.loopexit2832 ]
  %.23689 = phi ptr [ %i.eyj, %.lr.ph3691 ], [ %gep3706, %.loopexit2832 ] ; 5 uses
  %.193688 = phi ptr [ %i.eyk, %.lr.ph3691 ], [ %.163695, %.loopexit2832 ] ; 2 uses
  %.326443687 = phi <4 x float> [ %i.eyi, %.lr.ph3691 ], [ %.026413694, %.loopexit2832 ]
  %i.exm = getelementptr inbounds [2 x i8], ptr %.23689, i64 %i.evq
  %i.exn = load i16, ptr %i.exm, align 2, !tbaa !33
  %i.exo = getelementptr inbounds [2 x i8], ptr %.23689, i64 %i.evs
  %i.exp = load i16, ptr %i.exo, align 2, !tbaa !33
  %i.exq = getelementptr inbounds [2 x i8], ptr %.23689, i64 %i.evt
  %i.exr = load i16, ptr %i.exq, align 2, !tbaa !33
  %i.exs = load i16, ptr %.23689, align 2, !tbaa !33
  %i.ext = zext i16 %i.exn to i32
  %i.exu = zext i16 %i.exp to i32
  %i.exv = zext i16 %i.exr to i32
  %i.exw = zext i16 %i.exs to i32
  %i.exx = insertelement <4 x i32> poison, i32 %i.exw, i64 0
  %i.exy = insertelement <4 x i32> %i.exx, i32 %i.exv, i64 1
  %i.exz = insertelement <4 x i32> %i.exy, i32 %i.exu, i64 2
  %i.eya = insertelement <4 x i32> %i.exz, i32 %i.ext, i64 3
  %i.eyb = shl nuw <4 x i32> %i.eya, splat (i32 16)
  %i.eyc = bitcast <4 x i32> %i.eyb to <4 x float>
  %i.eyd = load i64, ptr %.193688, align 1, !tbaa !28
  %i.eye = insertelement <2 x i64> poison, i64 %i.eyd, i64 0
  %i.eyf = bitcast <2 x i64> %i.eye to <8 x i16>
  %i.eyg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eyf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eyh = bitcast <8 x i16> %i.eyg to <4 x float>
  %i.eyi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eyc, <4 x float> nofpclass(nan inf) %i.eyh, <4 x float> nofpclass(nan inf) %.326443687) ; 2 uses
  %i.eyj = getelementptr inbounds [2 x i8], ptr %.23689, i64 %i.evu
  %i.eyk = getelementptr inbounds nuw i8, ptr %.193688, i64 8
  %i.eyl = add nuw nsw i32 %.012373690, 1         ; 2 uses
  %exitcond4174.not = icmp eq i32 %i.eyl, %i.evj
  br i1 %exitcond4174.not, label %.loopexit.loopexit, label %.lr.ph3691, !llvm.loop !113

.loopexit.loopexit:                               ; preds = %.lr.ph3691
  %scevgep4172 = getelementptr i8, ptr %.163695, i64 8
  %scevgep4173.a = getelementptr i8, ptr %scevgep4172, i64 %i.evx
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit2832.thread, %.loopexit.loopexit, %.loopexit2832
  %.42645 = phi nsz <4 x float> [ %.026413694, %.loopexit2832 ], [ %i.eyi, %.loopexit.loopexit ], [ %.lcssa4636, %.loopexit2832.thread ] ; 2 uses
  %.20 = phi ptr [ %.163695, %.loopexit2832 ], [ %scevgep4173.a, %.loopexit.loopexit ], [ %scevgep4170.a, %.loopexit2832.thread ] ; 2 uses
  %i.eym = add nuw nsw i32 %.212633696, 4         ; 3 uses
  %i.eyn = or disjoint i32 %i.eym, 3
  %i.eyo = icmp slt i32 %i.eyn, %i.n
  br i1 %i.eyo, label %bb.bf, label %._crit_edge3699, !llvm.loop !114

._crit_edge3699:                                  ; preds = %.loopexit, %._crit_edge3671
  %.02641.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge3671 ], [ %.42645, %.loopexit ] ; 2 uses
  %.16.lcssa = phi ptr [ %.9.lcssa, %._crit_edge3671 ], [ %.20, %.loopexit ] ; 3 uses
  %.21263.lcssa = phi i32 [ %.11262.lcssa, %._crit_edge3671 ], [ %i.eym, %.loopexit ] ; 5 uses
  %i.eyp = shufflevector <4 x float> %.02641.lcssa, <4 x float> %i.eva, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.eyq = shufflevector <4 x float> %.02641.lcssa, <4 x float> %i.eva, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.eyr = fadd fast <4 x float> %i.eyp, %i.eyq
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.eoy, <4 x float> %i.eyr)
  %op.rdx4627.a = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01273, <8 x float> %i.eoz)
  %op.rdx4628 = fadd fast float %op.rdx, %op.rdx4627.a ; 3 uses
  %i.eys = or disjoint i32 %.21263.lcssa, 1
  %i.eyt = icmp slt i32 %i.eys, %i.n
  br i1 %i.eyt, label %.lr.ph3720, label %.preheader2844

.lr.ph3720:                                       ; preds = %._crit_edge3699
  %i.eyu = load ptr, ptr %0, align 8, !tbaa !18
  %i.eyv = load i32, ptr %i.o, align 4, !tbaa !17
  %i.eyw = sext i32 %i.eyv to i64
  %i.eyx = load i64, ptr %i.dcs, align 8, !tbaa !24
  %factor.op.mul3724 = mul i64 %i.eyx, %i.eyw
  %i.eyy = mul nsw i64 %indvars.iv4188, %i.egh
  %invariant.gep3726 = getelementptr [2 x i8], ptr %i.eyu, i64 %i.eyy
  %i.eyz = load i32, ptr %i.e, align 4
  %i.eza = sext i32 %i.eyz to i64
  %i.ezb = load i32, ptr %i.b, align 4
  %i.ezc = sext i32 %i.ezb to i64
  br i1 %i.egc, label %.lr.ph3712.us.preheader, label %.lr.ph3720.split.preheader

.lr.ph3720.split.preheader:                       ; preds = %.lr.ph3720
  %i.ezd = add i32 %.21263.lcssa, 2
  %i.eze = sub i32 %13, %.21263.lcssa
  %i.ezf = and i32 %i.eze, -2
  %i.ezg = add i32 %i.ezd, %i.ezf
  br label %.preheader2844

.lr.ph3712.us.preheader:                          ; preds = %.lr.ph3720
  %i.ezh = zext i32 %.21263.lcssa to i64
  br label %.lr.ph3712.us

.lr.ph3712.us:                                    ; preds = %.lr.ph3712.us.preheader, %._crit_edge3713.us
  %indvars.iv4179 = phi i64 [ %i.ezh, %.lr.ph3712.us.preheader ], [ %indvars.iv.next4180, %._crit_edge3713.us ] ; 2 uses
  %.213717.us = phi ptr [ %.16.lcssa, %.lr.ph3712.us.preheader ], [ %scevgep4177, %._crit_edge3713.us ] ; 2 uses
  %.112743716.us = phi float [ %op.rdx4628, %.lr.ph3712.us.preheader ], [ %i.fad, %._crit_edge3713.us ]
  %.reass3725.us = mul i64 %factor.op.mul3724, %indvars.iv4179
  %gep3727.us = getelementptr i8, ptr %invariant.gep3726, i64 %.reass3725.us
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph3712.us, %bb.bg
  %.012353710.us = phi i32 [ 0, %.lr.ph3712.us ], [ %i.fag, %bb.bg ]
  %.012363709.us = phi ptr [ %gep3727.us, %.lr.ph3712.us ], [ %i.fae, %bb.bg ] ; 3 uses
  %.223708.us = phi ptr [ %.213717.us, %.lr.ph3712.us ], [ %i.faf, %bb.bg ] ; 3 uses
  %.212753707.us = phi float [ %.112743716.us, %.lr.ph3712.us ], [ %i.fad, %bb.bg ]
  %i.ezi = load i16, ptr %.012363709.us, align 2, !tbaa !33
  %i.ezj = zext i16 %i.ezi to i32
  %i.ezk = shl nuw i32 %i.ezj, 16
  %i.ezl = bitcast i32 %i.ezk to float
  %i.ezm = load i16, ptr %.223708.us, align 2, !tbaa !33
  %i.ezn = zext i16 %i.ezm to i32
  %i.ezo = shl nuw i32 %i.ezn, 16
  %i.ezp = bitcast i32 %i.ezo to float
  %i.ezq = fmul fast float %i.ezp, %i.ezl
  %i.ezr = fadd fast float %.212753707.us, %i.ezq
  %i.ezs = getelementptr inbounds [2 x i8], ptr %.012363709.us, i64 %i.eza
  %i.ezt = load i16, ptr %i.ezs, align 2, !tbaa !33
  %i.ezu = zext i16 %i.ezt to i32
  %i.ezv = shl nuw i32 %i.ezu, 16
  %i.ezw = bitcast i32 %i.ezv to float
  %i.ezx = getelementptr inbounds nuw i8, ptr %.223708.us, i64 2
  %i.ezy = load i16, ptr %i.ezx, align 2, !tbaa !33
  %i.ezz = zext i16 %i.ezy to i32
  %i.faa = shl nuw i32 %i.ezz, 16
  %i.fab = bitcast i32 %i.faa to float
  %i.fac = fmul fast float %i.fab, %i.ezw
  %i.fad = fadd fast float %i.fac, %i.ezr         ; 3 uses
  %i.fae = getelementptr inbounds [2 x i8], ptr %.012363709.us, i64 %i.ezc
  %i.faf = getelementptr inbounds nuw i8, ptr %.223708.us, i64 4
  %i.fag = add nuw nsw i32 %.012353710.us, 1      ; 2 uses
  %exitcond4178.not = icmp eq i32 %i.fag, %i.egb
  br i1 %exitcond4178.not, label %._crit_edge3713.us, label %bb.bg, !llvm.loop !115

._crit_edge3713.us:                               ; preds = %bb.bg
  %scevgep4176 = getelementptr i8, ptr %.213717.us, i64 4
  %scevgep4177 = getelementptr i8, ptr %scevgep4176, i64 %i.egf ; 2 uses
  %indvars.iv.next4180 = add nuw nsw i64 %indvars.iv4179, 2 ; 3 uses
  %i.fah = trunc i64 %indvars.iv.next4180 to i32
  %i.fai = or i32 %i.fah, 1
  %i.faj = icmp slt i32 %i.fai, %i.n
  br i1 %i.faj, label %.lr.ph3712.us, label %.preheader2844.loopexit, !llvm.loop !116

.preheader2844.loopexit:                          ; preds = %._crit_edge3713.us
  %i.fak = trunc nuw i64 %indvars.iv.next4180 to i32
  br label %.preheader2844

.preheader2844:                                   ; preds = %.lr.ph3720.split.preheader, %.preheader2844.loopexit, %._crit_edge3699
  %.11274.lcssa = phi float [ %op.rdx4628, %._crit_edge3699 ], [ %i.fad, %.preheader2844.loopexit ], [ %op.rdx4628, %.lr.ph3720.split.preheader ] ; 3 uses
  %.21.lcssa = phi ptr [ %.16.lcssa, %._crit_edge3699 ], [ %scevgep4177, %.preheader2844.loopexit ], [ %.16.lcssa, %.lr.ph3720.split.preheader ]
  %.31264.lcssa = phi i32 [ %.21263.lcssa, %._crit_edge3699 ], [ %i.fak, %.preheader2844.loopexit ], [ %i.ezg, %.lr.ph3720.split.preheader ] ; 2 uses
  %i.fal = icmp slt i32 %.31264.lcssa, %i.n
  br i1 %i.fal, label %.lr.ph3743, label %._crit_edge3744

.lr.ph3743:                                       ; preds = %.preheader2844
  %i.fam = load ptr, ptr %0, align 8, !tbaa !18
  %i.fan = load i32, ptr %i.o, align 4, !tbaa !17
  %i.fao = sext i32 %i.fan to i64
  %i.fap = load i64, ptr %i.dcs, align 8, !tbaa !24
  %factor.op.mul3746 = mul i64 %i.fap, %i.fao
  %i.faq = mul nsw i64 %indvars.iv4188, %i.egh
  %invariant.gep3748 = getelementptr [2 x i8], ptr %i.fam, i64 %i.faq
  %i.far = load i32, ptr %i.b, align 4
  %i.fas = sext i32 %i.far to i64                 ; 2 uses
  br i1 %i.egc, label %.lr.ph3736.us.preheader, label %._crit_edge3744

.lr.ph3736.us.preheader:                          ; preds = %.lr.ph3743
  %i.fat = zext i32 %.31264.lcssa to i64
  br label %.lr.ph3736.us

.lr.ph3736.us:                                    ; preds = %.lr.ph3736.us.preheader, %._crit_edge3737.us
  %indvars.iv4185 = phi i64 [ %i.fat, %.lr.ph3736.us.preheader ], [ %indvars.iv.next4186.a, %._crit_edge3737.us ] ; 2 uses
  %.233741.us = phi ptr [ %.21.lcssa, %.lr.ph3736.us.preheader ], [ %scevgep4183, %._crit_edge3737.us ] ; 3 uses
  %.312763740.us = phi float [ %.11274.lcssa, %.lr.ph3736.us.preheader ], [ %.lcssa4640, %._crit_edge3737.us ] ; 2 uses
  %.reass3747.us = mul i64 %factor.op.mul3746, %indvars.iv4185
  %gep3749.us = getelementptr i8, ptr %invariant.gep3748, i64 %.reass3747.us ; 2 uses
  br i1 %i.egi, label %.epil.preheader4823, label %.lr.ph3736.us.new

.lr.ph3736.us.new:                                ; preds = %.lr.ph3736.us, %.lr.ph3736.us.new
  %.012343733.us = phi ptr [ %i.fbq, %.lr.ph3736.us.new ], [ %gep3749.us, %.lr.ph3736.us ] ; 2 uses
  %.243732.us = phi ptr [ %i.fbr, %.lr.ph3736.us.new ], [ %.233741.us, %.lr.ph3736.us ] ; 3 uses
  %.412773731.us = phi float [ %i.fbp, %.lr.ph3736.us.new ], [ %.312763740.us, %.lr.ph3736.us ]
  %niter4830 = phi i32 [ %niter4830.next.1, %.lr.ph3736.us.new ], [ 0, %.lr.ph3736.us ]
  %i.fau = load i16, ptr %.012343733.us, align 2, !tbaa !33
  %i.fav = zext i16 %i.fau to i32
  %i.faw = shl nuw i32 %i.fav, 16
  %i.fax = bitcast i32 %i.faw to float
  %i.fay = load i16, ptr %.243732.us, align 2, !tbaa !33
  %i.faz = zext i16 %i.fay to i32
  %i.fba = shl nuw i32 %i.faz, 16
  %i.fbb = bitcast i32 %i.fba to float
  %i.fbc = fmul fast float %i.fbb, %i.fax
  %i.fbd = fadd fast float %i.fbc, %.412773731.us
  %i.fbe = getelementptr inbounds [2 x i8], ptr %.012343733.us, i64 %i.fas ; 2 uses
  %i.fbf = getelementptr inbounds nuw i8, ptr %.243732.us, i64 2
  %i.fbg = load i16, ptr %i.fbe, align 2, !tbaa !33
  %i.fbh = zext i16 %i.fbg to i32
  %i.fbi = shl nuw i32 %i.fbh, 16
  %i.fbj = bitcast i32 %i.fbi to float
  %i.fbk = load i16, ptr %i.fbf, align 2, !tbaa !33
  %i.fbl = zext i16 %i.fbk to i32
  %i.fbm = shl nuw i32 %i.fbl, 16
  %i.fbn = bitcast i32 %i.fbm to float
  %i.fbo = fmul fast float %i.fbn, %i.fbj
  %i.fbp = fadd fast float %i.fbo, %i.fbd         ; 3 uses
  %i.fbq = getelementptr inbounds [2 x i8], ptr %i.fbe, i64 %i.fas ; 2 uses
  %i.fbr = getelementptr inbounds nuw i8, ptr %.243732.us, i64 4 ; 2 uses
  %niter4830.next.1 = add nuw nsw i32 %niter4830, 2 ; 2 uses
  %niter4830.ncmp.1 = icmp eq i32 %niter4830.next.1, %unroll_iter4829
  br i1 %niter4830.ncmp.1, label %._crit_edge3737.us.unr-lcssa, label %.lr.ph3736.us.new, !llvm.loop !117

._crit_edge3737.us.unr-lcssa:                     ; preds = %.lr.ph3736.us.new
  br i1 %lcmp.mod4826.not, label %._crit_edge3737.us, label %.epil.preheader4823

.epil.preheader4823:                              ; preds = %._crit_edge3737.us.unr-lcssa, %.lr.ph3736.us
  %.012343733.us.epil.init = phi ptr [ %gep3749.us, %.lr.ph3736.us ], [ %i.fbq, %._crit_edge3737.us.unr-lcssa ]
  %.243732.us.epil.init = phi ptr [ %.233741.us, %.lr.ph3736.us ], [ %i.fbr, %._crit_edge3737.us.unr-lcssa ]
  %.412773731.us.epil.init = phi float [ %.312763740.us, %.lr.ph3736.us ], [ %i.fbp, %._crit_edge3737.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4828)
  %i.fbs = load i16, ptr %.012343733.us.epil.init, align 2, !tbaa !33
  %i.fbt = zext i16 %i.fbs to i32
  %i.fbu = shl nuw i32 %i.fbt, 16
  %i.fbv = bitcast i32 %i.fbu to float
  %i.fbw = load i16, ptr %.243732.us.epil.init, align 2, !tbaa !33
  %i.fbx = zext i16 %i.fbw to i32
  %i.fby = shl nuw i32 %i.fbx, 16
  %i.fbz = bitcast i32 %i.fby to float
  %i.fca = fmul fast float %i.fbz, %i.fbv
  %i.fcb = fadd fast float %i.fca, %.412773731.us.epil.init
  br label %._crit_edge3737.us

._crit_edge3737.us:                               ; preds = %._crit_edge3737.us.unr-lcssa, %.epil.preheader4823
  %.lcssa4640 = phi float [ %i.fbp, %._crit_edge3737.us.unr-lcssa ], [ %i.fcb, %.epil.preheader4823 ] ; 2 uses
  %scevgep4182 = getelementptr i8, ptr %.233741.us, i64 2
  %scevgep4183 = getelementptr i8, ptr %scevgep4182, i64 %i.egg
  %indvars.iv.next4186.a = add nuw nsw i64 %indvars.iv4185, 1 ; 2 uses
  %i.fcc = trunc nuw i64 %indvars.iv.next4186.a to i32
  %i.fcd = icmp sgt i32 %i.n, %i.fcc
  br i1 %i.fcd, label %.lr.ph3736.us, label %._crit_edge3744, !llvm.loop !118

._crit_edge3744:                                  ; preds = %._crit_edge3737.us, %.lr.ph3743, %.preheader2844
  %.31276.lcssa = phi float [ %.11274.lcssa, %.preheader2844 ], [ %.11274.lcssa, %.lr.ph3743 ], [ %.lcssa4640, %._crit_edge3737.us ] ; 13 uses
  switch i32 %i.dcz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.bh
    i32 2, label %bb.bi
    i32 3, label %bb.bj
    i32 4, label %bb.bl
    i32 5, label %bb.bm
    i32 6, label %bb.bn
  ]

bb.bh:                                            ; preds = %._crit_edge3744
  %i.fce = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.31276.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bi:                                            ; preds = %._crit_edge3744
  %i.fcf = load ptr, ptr %8, align 8, !tbaa !18
  %i.fcg = load float, ptr %i.fcf, align 4, !tbaa !51
  %i.fch = fcmp fast ogt float %.31276.lcssa, 0.000000e+00
  %i.fci = select fast i1 %i.fch, float 1.000000e+00, float %i.fcg
  %i.fcj = fmul fast float %i.fci, %.31276.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bj:                                            ; preds = %._crit_edge3744
  %i.fck = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.fcl = load float, ptr %i.fck, align 4, !tbaa !51
  %i.fcm = getelementptr inbounds nuw i8, ptr %i.fck, i64 4
  %i.fcn = load float, ptr %i.fcm, align 4, !tbaa !51 ; 2 uses
  %.02549 = call nnan ninf nsz float @llvm.maxnum.f32(float %.31276.lcssa, float %i.fcl) ; 2 uses
  %i.fco = fcmp fast ogt float %.02549, %i.fcn
  br i1 %i.fco, label %bb.bk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bk:                                            ; preds = %bb.bj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bl:                                            ; preds = %._crit_edge3744
  %.sroa.speculated2291 = call nnan ninf nsz float @llvm.minnum.f32(float %.31276.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated2291, float f0xC2B0C0A5)
  %i.fcp = fneg fast float %.sroa.speculated
  %i.fcq = call fast float @llvm.exp.f32(float %i.fcp)
  %i.fcr = fadd fast float %i.fcq, 1.000000e+00
  %i.fcs = fdiv fast float 1.000000e+00, %i.fcr
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bm:                                            ; preds = %._crit_edge3744
  %i.fct = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.31276.lcssa)
  %i.fcu = fadd fast float %i.fct, 1.000000e+00
  %i.fcv = call fast float @llvm.log.f32(float %i.fcu)
  %i.fcw = call fast float @llvm.tanh.f32(float %i.fcv)
  %i.fcx = fmul fast float %i.fcw, %.31276.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bn:                                            ; preds = %._crit_edge3744
  %i.fcy = load ptr, ptr %8, align 8, !tbaa !18   ; 2 uses
  %i.fcz = load float, ptr %i.fcy, align 4, !tbaa !51 ; 3 uses
  %i.fda = getelementptr inbounds nuw i8, ptr %i.fcy, i64 4
  %i.fdb = load float, ptr %i.fda, align 4, !tbaa !51 ; 2 uses
  %i.fdc = fneg fast float %i.fdb
  %i.fdd = fdiv fast float %i.fdc, %i.fcz         ; 2 uses
  %i.fde = fcmp fast olt float %.31276.lcssa, %i.fdd
  br i1 %i.fde, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fdf = fdiv fast float 1.000000e+00, %i.fcz
  %i.fdg = fadd fast float %i.fdd, %i.fdf
  %i.fdh = fcmp fast ogt float %.31276.lcssa, %i.fdg
  br i1 %i.fdh, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fdi = fmul fast float %i.fcz, %.31276.lcssa
  %i.fdj = fadd fast float %i.fdi, %i.fdb
  %i.fdk = fmul fast float %i.fdj, %.31276.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.bn, %._crit_edge3744, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bo, %bb.bp
  %.12550 = phi nsz float [ %.31276.lcssa, %._crit_edge3744 ], [ %i.fce, %bb.bh ], [ %i.fcj, %bb.bi ], [ %i.fcn, %bb.bk ], [ %.02549, %bb.bj ], [ %i.fcs, %bb.bl ], [ %i.fcx, %bb.bm ], [ %i.fdk, %bb.bp ], [ %.31276.lcssa, %bb.bo ], [ 0.000000e+00, %bb.bn ]
  %i.fdl = bitcast float %.12550 to i32
  %i.fdm = lshr i32 %i.fdl, 16
  %i.fdn = trunc nuw i32 %i.fdm to i16
  store i16 %i.fdn, ptr %.012793751, align 2, !tbaa !33
  %i.fdo = getelementptr inbounds nuw i8, ptr %.012793751, i64 2
  %indvars.iv.next4189 = add nuw nsw i64 %indvars.iv4188, 1 ; 2 uses
  %exitcond4192.not = icmp eq i64 %indvars.iv.next4189, %wide.trip.count4191
  br i1 %exitcond4192.not, label %._crit_edge3755, label %bb.ay, !llvm.loop !119
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not1104 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1104, label %._crit_edge1108, label %.lr.ph1107

.lr.ph1107:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.u = load i32, ptr %i.n, align 4, !tbaa !17   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph1107.split.preheader, label %._crit_edge1108

.lr.ph1107.split.preheader:                       ; preds = %.lr.ph1107
  %i.w = sext i32 %i.k to i64
  %i.x = add nsw i32 %i.j, 1
  br label %.lr.ph1107.split

.lr.ph1107.splitthread-pre-split:                 ; preds = %._crit_edge
  %.pr = load i32, ptr %i.n, align 4, !tbaa !17
  br label %.lr.ph1107.split

.lr.ph1107.split:                                 ; preds = %.lr.ph1107.splitthread-pre-split, %.lr.ph1107.split.preheader
  %i.y = phi i32 [ %.pr, %.lr.ph1107.splitthread-pre-split ], [ %i.u, %.lr.ph1107.split.preheader ] ; 3 uses
  %indvars.iv1208 = phi i64 [ %indvars.iv.next1209, %.lr.ph1107.splitthread-pre-split ], [ %i.w, %.lr.ph1107.split.preheader ] ; 3 uses
  %i.z = load i32, ptr %i.l, align 8, !tbaa !10   ; 11 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !16
  %i.ab = mul i32 %i.aa, %i.z                     ; 12 uses
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %.lr.ph1103, label %._crit_edge

.lr.ph1103:                                       ; preds = %.lr.ph1107.split
  %i.ad = load ptr, ptr %4, align 8, !tbaa !18
  %i.ae = shl nsw i64 %indvars.iv1208, 4          ; 2 uses
  %i.af = load i32, ptr %i.o, align 8, !tbaa !10  ; 3 uses
  %i.ag = trunc nsw i64 %i.ae to i32
  %i.ah = sdiv i32 %i.ag, %i.af
  %i.ai = sext i32 %i.ah to i64
  %i.aj = zext nneg i32 %i.y to i64
  %i.ak = mul nsw i64 %i.ai, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !24
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  %i.ao = icmp sgt i32 %i.ab, 15
  %i.ap = icmp eq i32 %i.z, 16
  %i.aq = icmp eq i32 %i.z, 8                     ; 2 uses
  %i.ar = icmp eq i32 %i.z, 4                     ; 3 uses
  %i.as = icmp eq i32 %i.z, 1                     ; 3 uses
  %i.at = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.af)
  %i.au = icmp eq i32 %i.at, 1
  %i.av = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.af, i1 true)
  %i.aw = and i32 %i.ab, -16
  %14 = add i32 %i.ab, -2
  br label %bb.c

._crit_edge:                                      ; preds = %.thread865, %.lr.ph1107.split
  %indvars.iv.next1209 = add nsw i64 %indvars.iv1208, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1209 to i32
  %exitcond1211.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond1211.not, label %._crit_edge1108, label %.lr.ph1107.splitthread-pre-split, !llvm.loop !120

bb.c:                                             ; preds = %.lr.ph1103, %.thread865
  %.06451102 = phi i32 [ 0, %.lr.ph1103 ], [ %i.ayn, %.thread865 ] ; 6 uses
  %.06461101 = phi ptr [ %i.an, %.lr.ph1103 ], [ %.4650, %.thread865 ] ; 29 uses
  %i.ax = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %.not653 = icmp eq ptr %i.ax, null
  br i1 %.not653, label %.noexc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ae
  %i.az = load <16 x float>, ptr %i.ay, align 1, !tbaa !28
  br label %.noexc

.noexc:                                           ; preds = %bb.c, %bb.d
  %.0836 = phi nsz <16 x float> [ zeroinitializer, %bb.c ], [ %i.az, %bb.d ] ; 2 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !18, !noalias !121
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !121
  %i.bc = mul i64 %i.bb, %indvars.iv1208
  %i.bd = load i64, ptr %i.r, align 8, !tbaa !24, !noalias !121
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  br i1 %i.ao, label %.lr.ph947, label %.preheader883

.lr.ph947:                                        ; preds = %.noexc
  %i.bg = load ptr, ptr %3, align 8, !tbaa !18
  %i.bh = load i32, ptr %i.s, align 4, !tbaa !17
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load i64, ptr %i.t, align 8, !tbaa !24
  %factor.op.mul = mul i64 %i.bj, %i.bi
  %i.bk = load i32, ptr %7, align 4, !tbaa !9
  %i.bl = mul i32 %.06451102, %i.z
  %i.bm = mul i32 %i.bl, %i.bk
  %i.bn = sext i32 %i.bm to i64
  %invariant.gep = getelementptr [2 x i8], ptr %i.bg, i64 %i.bn
  br label %bb.e

.preheader883:                                    ; preds = %.loopexit875, %.noexc
  %.1837.lcssa = phi <16 x float> [ %.0836, %.noexc ], [ %.9845, %.loopexit875 ] ; 2 uses
  %.0622.lcssa = phi <16 x float> [ zeroinitializer, %.noexc ], [ %.8630, %.loopexit875 ] ; 2 uses
  %.0601.lcssa = phi <16 x float> [ zeroinitializer, %.noexc ], [ %.8609, %.loopexit875 ] ; 2 uses
  %.0580.lcssa = phi <16 x float> [ zeroinitializer, %.noexc ], [ %.8588, %.loopexit875 ] ; 2 uses
  %.0573.lcssa = phi ptr [ %i.bf, %.noexc ], [ %.8, %.loopexit875 ] ; 2 uses
  %.0568.lcssa = phi i32 [ 0, %.noexc ], [ %i.aw, %.loopexit875 ] ; 3 uses
  %i.bo = or disjoint i32 %.0568.lcssa, 7
  %i.bp = icmp slt i32 %i.bo, %i.ab
  br i1 %i.bp, label %.lr.ph1002, label %.preheader882

.lr.ph1002:                                       ; preds = %.preheader883
  %i.bq = load ptr, ptr %3, align 8, !tbaa !18
  %i.br = load i32, ptr %i.s, align 4, !tbaa !17
  %i.bs = sext i32 %i.br to i64
  %i.bt = load i64, ptr %i.t, align 8, !tbaa !24
  %factor.op.mul1009 = mul i64 %i.bt, %i.bs
  %i.bu = load i32, ptr %7, align 4, !tbaa !9
  %i.bv = mul i32 %.06451102, %i.z
  %i.bw = mul i32 %i.bv, %i.bu
  %i.bx = sext i32 %i.bw to i64
  %invariant.gep1011 = getelementptr [2 x i8], ptr %i.bq, i64 %i.bx
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph947, %.loopexit875
  %.0568946 = phi i32 [ 0, %.lr.ph947 ], [ %i.xv, %.loopexit875 ] ; 2 uses
  %.0573945 = phi ptr [ %i.bf, %.lr.ph947 ], [ %.8, %.loopexit875 ] ; 13 uses
  %.0580944 = phi <16 x float> [ zeroinitializer, %.lr.ph947 ], [ %.8588, %.loopexit875 ] ; 9 uses
  %.0601943 = phi <16 x float> [ zeroinitializer, %.lr.ph947 ], [ %.8609, %.loopexit875 ] ; 9 uses
  %.0622942 = phi <16 x float> [ zeroinitializer, %.lr.ph947 ], [ %.8630, %.loopexit875 ] ; 9 uses
  %.1837941 = phi <16 x float> [ %.0836, %.lr.ph947 ], [ %.9845, %.loopexit875 ] ; 9 uses
  %i.by = sdiv i32 %.0568946, %i.z
  %i.bz = sext i32 %i.by to i64
  %.reass = mul i64 %factor.op.mul, %i.bz
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 8 uses
  br i1 %i.ap, label %.preheader878, label %.loopexit879

.preheader878:                                    ; preds = %bb.e
  %i.ca = load i32, ptr %8, align 4, !tbaa !9     ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph, label %.loopexit875

.lr.ph:                                           ; preds = %.preheader878
  %i.cc = load i32, ptr %9, align 4, !tbaa !9
  %i.cd = shl nsw i32 %i.cc, 4
  %i.ce = sext i32 %i.cd to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0562890 = phi i32 [ 0, %.lr.ph ], [ %i.gb, %bb.f ]
  %.0563889 = phi ptr [ %gep, %.lr.ph ], [ %i.fz, %bb.f ] ; 2 uses
  %.1574888 = phi ptr [ %.0573945, %.lr.ph ], [ %i.ga, %bb.f ] ; 17 uses
  %.1581887 = phi <16 x float> [ %.0580944, %.lr.ph ], [ %i.fy, %bb.f ]
  %.1602886 = phi <16 x float> [ %.0601943, %.lr.ph ], [ %i.fv, %bb.f ]
  %.1623885 = phi <16 x float> [ %.0622942, %.lr.ph ], [ %i.fs, %bb.f ]
  %.2838884 = phi <16 x float> [ %.1837941, %.lr.ph ], [ %i.fp, %bb.f ]
  %i.cf = load <16 x bfloat>, ptr %.1574888, align 32, !tbaa !28
  %i.cg = fpext fast <16 x bfloat> %i.cf to <16 x float>
  %i.ch = getelementptr inbounds nuw i8, ptr %.1574888, i64 32
  %i.ci = load <16 x bfloat>, ptr %i.ch, align 32, !tbaa !28
  %i.cj = fpext fast <16 x bfloat> %i.ci to <16 x float>
  %i.ck = getelementptr inbounds nuw i8, ptr %.1574888, i64 64
  %i.cl = load <16 x bfloat>, ptr %i.ck, align 32, !tbaa !28
  %i.cm = fpext fast <16 x bfloat> %i.cl to <16 x float>
  %i.cn = getelementptr inbounds nuw i8, ptr %.1574888, i64 96
  %i.co = load <16 x bfloat>, ptr %i.cn, align 32, !tbaa !28
  %i.cp = fpext fast <16 x bfloat> %i.co to <16 x float>
  %i.cq = getelementptr inbounds nuw i8, ptr %.1574888, i64 128
  %i.cr = load <16 x bfloat>, ptr %i.cq, align 32, !tbaa !28
  %i.cs = fpext fast <16 x bfloat> %i.cr to <16 x float>
  %i.ct = getelementptr inbounds nuw i8, ptr %.1574888, i64 160
  %i.cu = load <16 x bfloat>, ptr %i.ct, align 32, !tbaa !28
  %i.cv = fpext fast <16 x bfloat> %i.cu to <16 x float>
  %i.cw = getelementptr inbounds nuw i8, ptr %.1574888, i64 192
  %i.cx = load <16 x bfloat>, ptr %i.cw, align 32, !tbaa !28
  %i.cy = fpext fast <16 x bfloat> %i.cx to <16 x float>
  %i.cz = getelementptr inbounds nuw i8, ptr %.1574888, i64 224
  %i.da = load <16 x bfloat>, ptr %i.cz, align 32, !tbaa !28
  %i.db = fpext fast <16 x bfloat> %i.da to <16 x float>
  %i.dc = getelementptr inbounds nuw i8, ptr %.1574888, i64 256
  %i.dd = load <16 x bfloat>, ptr %i.dc, align 32, !tbaa !28
  %i.de = fpext fast <16 x bfloat> %i.dd to <16 x float>
  %i.df = getelementptr inbounds nuw i8, ptr %.1574888, i64 288
  %i.dg = load <16 x bfloat>, ptr %i.df, align 32, !tbaa !28
  %i.dh = fpext fast <16 x bfloat> %i.dg to <16 x float>
  %i.di = getelementptr inbounds nuw i8, ptr %.1574888, i64 320
  %i.dj = load <16 x bfloat>, ptr %i.di, align 32, !tbaa !28
  %i.dk = fpext fast <16 x bfloat> %i.dj to <16 x float>
  %i.dl = getelementptr inbounds nuw i8, ptr %.1574888, i64 352
  %i.dm = load <16 x bfloat>, ptr %i.dl, align 32, !tbaa !28
  %i.dn = fpext fast <16 x bfloat> %i.dm to <16 x float>
  %i.do = getelementptr inbounds nuw i8, ptr %.1574888, i64 384
  %i.dp = load <16 x bfloat>, ptr %i.do, align 32, !tbaa !28
  %i.dq = fpext fast <16 x bfloat> %i.dp to <16 x float>
  %i.dr = getelementptr inbounds nuw i8, ptr %.1574888, i64 416
  %i.ds = load <16 x bfloat>, ptr %i.dr, align 32, !tbaa !28
  %i.dt = fpext fast <16 x bfloat> %i.ds to <16 x float>
  %i.du = getelementptr inbounds nuw i8, ptr %.1574888, i64 448
  %i.dv = load <16 x bfloat>, ptr %i.du, align 32, !tbaa !28
  %i.dw = fpext fast <16 x bfloat> %i.dv to <16 x float>
  %i.dx = getelementptr inbounds nuw i8, ptr %.1574888, i64 480
  %i.dy = load <16 x bfloat>, ptr %i.dx, align 32, !tbaa !28
  %i.dz = fpext fast <16 x bfloat> %i.dy to <16 x float>
  %i.ea = load <16 x i16>, ptr %.0563889, align 2, !tbaa !33
  %i.eb = zext <16 x i16> %i.ea to <16 x i32>
  %i.ec = shl nuw <16 x i32> %i.eb, splat (i32 16) ; 16 uses
  %i.ed = bitcast <16 x i32> %i.ec to <16 x float>
  %i.ee = shufflevector <16 x float> %i.ed, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ef = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cg, <16 x float> nofpclass(nan inf) %i.ee, <16 x float> nofpclass(nan inf) %.2838884)
  %i.eg = bitcast <16 x i32> %i.ec to <16 x float>
  %i.eh = shufflevector <16 x float> %i.eg, <16 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> nofpclass(nan inf) %i.eh, <16 x float> nofpclass(nan inf) %.1623885)
  %i.ej = bitcast <16 x i32> %i.ec to <16 x float>
  %i.ek = shufflevector <16 x float> %i.ej, <16 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.el = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cm, <16 x float> nofpclass(nan inf) %i.ek, <16 x float> nofpclass(nan inf) %.1602886)
  %i.em = bitcast <16 x i32> %i.ec to <16 x float>
  %i.en = shufflevector <16 x float> %i.em, <16 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.eo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cp, <16 x float> nofpclass(nan inf) %i.en, <16 x float> nofpclass(nan inf) %.1581887)
  %i.ep = bitcast <16 x i32> %i.ec to <16 x float>
  %i.eq = shufflevector <16 x float> %i.ep, <16 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.er = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cs, <16 x float> nofpclass(nan inf) %i.eq, <16 x float> nofpclass(nan inf) %i.ef)
  %i.es = bitcast <16 x i32> %i.ec to <16 x float>
  %i.et = shufflevector <16 x float> %i.es, <16 x float> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.eu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.et, <16 x float> nofpclass(nan inf) %i.ei)
  %i.ev = bitcast <16 x i32> %i.ec to <16 x float>
  %i.ew = shufflevector <16 x float> %i.ev, <16 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ex = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cy, <16 x float> nofpclass(nan inf) %i.ew, <16 x float> nofpclass(nan inf) %i.el)
  %i.ey = bitcast <16 x i32> %i.ec to <16 x float>
  %i.ez = shufflevector <16 x float> %i.ey, <16 x float> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.fa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.db, <16 x float> nofpclass(nan inf) %i.ez, <16 x float> nofpclass(nan inf) %i.eo)
  %i.fb = bitcast <16 x i32> %i.ec to <16 x float>
  %i.fc = shufflevector <16 x float> %i.fb, <16 x float> poison, <16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.fd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.de, <16 x float> nofpclass(nan inf) %i.fc, <16 x float> nofpclass(nan inf) %i.er)
  %i.fe = bitcast <16 x i32> %i.ec to <16 x float>
  %i.ff = shufflevector <16 x float> %i.fe, <16 x float> poison, <16 x i32> <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %i.fg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dh, <16 x float> nofpclass(nan inf) %i.ff, <16 x float> nofpclass(nan inf) %i.eu)
  %i.fh = bitcast <16 x i32> %i.ec to <16 x float>
  %i.fi = shufflevector <16 x float> %i.fh, <16 x float> poison, <16 x i32> <i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10>
  %i.fj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dk, <16 x float> nofpclass(nan inf) %i.fi, <16 x float> nofpclass(nan inf) %i.ex)
  %i.fk = bitcast <16 x i32> %i.ec to <16 x float>
  %i.fl = shufflevector <16 x float> %i.fk, <16 x float> poison, <16 x i32> <i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11, i32 11>
  %i.fm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dn, <16 x float> nofpclass(nan inf) %i.fl, <16 x float> nofpclass(nan inf) %i.fa)
  %i.fn = bitcast <16 x i32> %i.ec to <16 x float>
  %i.fo = shufflevector <16 x float> %i.fn, <16 x float> poison, <16 x i32> <i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12>
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dq, <16 x float> nofpclass(nan inf) %i.fo, <16 x float> nofpclass(nan inf) %i.fd) ; 2 uses
  %i.fq = bitcast <16 x i32> %i.ec to <16 x float>
  %i.fr = shufflevector <16 x float> %i.fq, <16 x float> poison, <16 x i32> <i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13>
  %i.fs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dt, <16 x float> nofpclass(nan inf) %i.fr, <16 x float> nofpclass(nan inf) %i.fg) ; 2 uses
  %i.ft = bitcast <16 x i32> %i.ec to <16 x float>
  %i.fu = shufflevector <16 x float> %i.ft, <16 x float> poison, <16 x i32> <i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14, i32 14>
  %i.fv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dw, <16 x float> nofpclass(nan inf) %i.fu, <16 x float> nofpclass(nan inf) %i.fj) ; 2 uses
  %i.fw = bitcast <16 x i32> %i.ec to <16 x float>
  %i.fx = shufflevector <16 x float> %i.fw, <16 x float> poison, <16 x i32> <i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15>
  %i.fy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dz, <16 x float> nofpclass(nan inf) %i.fx, <16 x float> nofpclass(nan inf) %i.fm) ; 2 uses
  %i.fz = getelementptr inbounds [2 x i8], ptr %.0563889, i64 %i.ce
  %i.ga = getelementptr inbounds nuw i8, ptr %.1574888, i64 512
  %i.gb = add nuw nsw i32 %.0562890, 1            ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL26convolution1d_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.abu = fpext fast <16 x bfloat> %i.abt to <16 x float>
  %i.abv = getelementptr inbounds nuw i8, ptr %.12972, i64 224
  %i.abw = load <16 x bfloat>, ptr %i.abv, align 32, !tbaa !28
  %i.abx = fpext fast <16 x bfloat> %i.abw to <16 x float>
  %i.aby = load <4 x i16>, ptr %.2554973, align 2, !tbaa !33
  %i.abz = load <4 x i16>, ptr %.0550974, align 2, !tbaa !33
  %i.aca = shufflevector <4 x i16> %i.aby, <4 x i16> %i.abz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acb = zext <8 x i16> %i.aca to <8 x i32>
  %i.acc = shl nuw <8 x i32> %i.acb, splat (i32 16) ; 8 uses
  %i.acd = bitcast <8 x i32> %i.acc to <8 x float>
  %i.ace = shufflevector <8 x float> %i.acd, <8 x float> poison, <16 x i32> zeroinitializer
  %i.acf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abc, <16 x float> nofpclass(nan inf) %i.ace, <16 x float> nofpclass(nan inf) %.13849968)
  %i.acg = bitcast <8 x i32> %i.acc to <8 x float>
  %i.ach = shufflevector <8 x float> %i.acg, <8 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aci = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abf, <16 x float> nofpclass(nan inf) %i.ach, <16 x float> nofpclass(nan inf) %.12634969)
  %i.acj = bitcast <8 x i32> %i.acc to <8 x float>
  %i.ack = shufflevector <8 x float> %i.acj, <8 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.acl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abi, <16 x float> nofpclass(nan inf) %i.ack, <16 x float> nofpclass(nan inf) %.12613970)
  %i.acm = bitcast <8 x i32> %i.acc to <8 x float>
  %i.acn = shufflevector <8 x float> %i.acm, <8 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aco = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abl, <16 x float> nofpclass(nan inf) %i.acn, <16 x float> nofpclass(nan inf) %.12592971)
  %i.acp = bitcast <8 x i32> %i.acc to <8 x float>
  %i.acq = shufflevector <8 x float> %i.acp, <8 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.acr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abo, <16 x float> nofpclass(nan inf) %i.acq, <16 x float> nofpclass(nan inf) %i.acf) ; 2 uses
  %i.acs = bitcast <8 x i32> %i.acc to <8 x float>
  %i.act = shufflevector <8 x float> %i.acs, <8 x float> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.acu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abr, <16 x float> nofpclass(nan inf) %i.act, <16 x float> nofpclass(nan inf) %i.aci) ; 2 uses
  %i.acv = bitcast <8 x i32> %i.acc to <8 x float>
  %i.acw = shufflevector <8 x float> %i.acv, <8 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.acx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abu, <16 x float> nofpclass(nan inf) %i.acw, <16 x float> nofpclass(nan inf) %i.acl) ; 2 uses
  %i.acy = bitcast <8 x i32> %i.acc to <8 x float>
  %i.acz = shufflevector <8 x float> %i.acy, <8 x float> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.ada = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.abx, <16 x float> nofpclass(nan inf) %i.acz, <16 x float> nofpclass(nan inf) %i.aco) ; 2 uses
  %i.adb = getelementptr inbounds [2 x i8], ptr %.2554973, i64 %i.aba
  %i.adc = getelementptr inbounds [2 x i8], ptr %.0550974, i64 %i.aba
  %i.add = getelementptr inbounds nuw i8, ptr %.12972, i64 256
  %i.ade = add nuw nsw i32 %.0549975, 1           ; 2 uses
  %exitcond1187.not = icmp eq i32 %i.ade, %i.aat
  br i1 %exitcond1187.not, label %.loopexit871.loopexit, label %bb.o, !llvm.loop !130

.loopexit871.loopexit:                            ; preds = %bb.o
  %scevgep1185 = getelementptr i8, ptr %.91000, i64 256
  %i.adf = add nsw i32 %i.aat, -1
  %i.adg = zext nneg i32 %i.adf to i64
  %i.adh = shl nuw nsw i64 %i.adg, 8
  %scevgep1186 = getelementptr i8, ptr %scevgep1185, i64 %i.adh
  br label %.loopexit870

.loopexit871:                                     ; preds = %.loopexit873
  br i1 %i.as, label %.preheader869, label %.loopexit870

.preheader869:                                    ; preds = %.loopexit871
  %i.adi = load i32, ptr %8, align 4, !tbaa !9    ; 3 uses
  %i.adj = icmp sgt i32 %i.adi, 0
  br i1 %i.adj, label %.lr.ph990, label %.loopexit870

.lr.ph990:                                        ; preds = %.preheader869
  %i.adk = load i32, ptr %10, align 4, !tbaa !9   ; 7 uses
  %i.adl = sext i32 %i.adk to i64
  %i.adm = shl nsw i32 %i.adk, 1
  %i.adn = sext i32 %i.adm to i64
  %i.ado = mul nsw i32 %i.adk, 3
  %i.adp = sext i32 %i.ado to i64
  %i.adq = shl nsw i32 %i.adk, 2
  %i.adr = sext i32 %i.adq to i64
  %i.ads = mul nsw i32 %i.adk, 5
  %i.adt = sext i32 %i.ads to i64
  %i.adu = mul nsw i32 %i.adk, 6
  %i.adv = sext i32 %i.adu to i64
  %i.adw = mul nsw i32 %i.adk, 7
  %i.adx = sext i32 %i.adw to i64
  %i.ady = load i32, ptr %9, align 4, !tbaa !9
  %i.adz = sext i32 %i.ady to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph990, %bb.p
  %.0548989 = phi i32 [ 0, %.lr.ph990 ], [ %i.ahk, %bb.p ]
  %.4988 = phi ptr [ %gep1012, %.lr.ph990 ], [ %i.ahi, %bb.p ] ; 9 uses
  %.14987 = phi ptr [ %.91000, %.lr.ph990 ], [ %i.ahj, %bb.p ] ; 9 uses
  %.14594986 = phi <16 x float> [ %.9589999, %.lr.ph990 ], [ %i.ahh, %bb.p ]
  %.14615985 = phi <16 x float> [ %.9610998, %.lr.ph990 ], [ %i.agz, %bb.p ]
  %.14636984 = phi <16 x float> [ %.9631997, %.lr.ph990 ], [ %i.agr, %bb.p ]
  %.15851983 = phi <16 x float> [ %.10846996, %.lr.ph990 ], [ %i.agj, %bb.p ]
  %i.aea = load <16 x bfloat>, ptr %.14987, align 32, !tbaa !28
  %i.aeb = fpext fast <16 x bfloat> %i.aea to <16 x float>
  %i.aec = getelementptr inbounds nuw i8, ptr %.14987, i64 32
  %i.aed = load <16 x bfloat>, ptr %i.aec, align 32, !tbaa !28
  %i.aee = fpext fast <16 x bfloat> %i.aed to <16 x float>
  %i.aef = getelementptr inbounds nuw i8, ptr %.14987, i64 64
  %i.aeg = load <16 x bfloat>, ptr %i.aef, align 32, !tbaa !28
  %i.aeh = fpext fast <16 x bfloat> %i.aeg to <16 x float>
  %i.aei = getelementptr inbounds nuw i8, ptr %.14987, i64 96
  %i.aej = load <16 x bfloat>, ptr %i.aei, align 32, !tbaa !28
  %i.aek = fpext fast <16 x bfloat> %i.aej to <16 x float>
  %i.ael = getelementptr inbounds nuw i8, ptr %.14987, i64 128
  %i.aem = load <16 x bfloat>, ptr %i.ael, align 32, !tbaa !28
  %i.aen = fpext fast <16 x bfloat> %i.aem to <16 x float>
  %i.aeo = getelementptr inbounds nuw i8, ptr %.14987, i64 160
  %i.aep = load <16 x bfloat>, ptr %i.aeo, align 32, !tbaa !28
  %i.aeq = fpext fast <16 x bfloat> %i.aep to <16 x float>
  %i.aer = getelementptr inbounds nuw i8, ptr %.14987, i64 192
  %i.aes = load <16 x bfloat>, ptr %i.aer, align 32, !tbaa !28
  %i.aet = fpext fast <16 x bfloat> %i.aes to <16 x float>
  %i.aeu = getelementptr inbounds nuw i8, ptr %.14987, i64 224
  %i.aev = load <16 x bfloat>, ptr %i.aeu, align 32, !tbaa !28
  %i.aew = fpext fast <16 x bfloat> %i.aev to <16 x float>
  %i.aex = load i16, ptr %.4988, align 2, !tbaa !33
  %i.aey = zext i16 %i.aex to i32
  %i.aez = shl nuw i32 %i.aey, 16
  %i.afa = insertelement <16 x i32> poison, i32 %i.aez, i64 0
  %i.afb = bitcast <16 x i32> %i.afa to <16 x float>
  %i.afc = shufflevector <16 x float> %i.afb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeb, <16 x float> nofpclass(nan inf) %i.afc, <16 x float> nofpclass(nan inf) %.15851983)
  %i.afe = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adl
  %i.aff = load i16, ptr %i.afe, align 2, !tbaa !33
  %i.afg = zext i16 %i.aff to i32
  %i.afh = shl nuw i32 %i.afg, 16
  %i.afi = insertelement <16 x i32> poison, i32 %i.afh, i64 0
  %i.afj = bitcast <16 x i32> %i.afi to <16 x float>
  %i.afk = shufflevector <16 x float> %i.afj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.afl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aee, <16 x float> nofpclass(nan inf) %i.afk, <16 x float> nofpclass(nan inf) %.14636984)
  %i.afm = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adn
  %i.afn = load i16, ptr %i.afm, align 2, !tbaa !33
  %i.afo = zext i16 %i.afn to i32
  %i.afp = shl nuw i32 %i.afo, 16
  %i.afq = insertelement <16 x i32> poison, i32 %i.afp, i64 0
  %i.afr = bitcast <16 x i32> %i.afq to <16 x float>
  %i.afs = shufflevector <16 x float> %i.afr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aft = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeh, <16 x float> nofpclass(nan inf) %i.afs, <16 x float> nofpclass(nan inf) %.14615985)
  %i.afu = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adp
  %i.afv = load i16, ptr %i.afu, align 2, !tbaa !33
  %i.afw = zext i16 %i.afv to i32
  %i.afx = shl nuw i32 %i.afw, 16
  %i.afy = insertelement <16 x i32> poison, i32 %i.afx, i64 0
  %i.afz = bitcast <16 x i32> %i.afy to <16 x float>
  %i.aga = shufflevector <16 x float> %i.afz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aek, <16 x float> nofpclass(nan inf) %i.aga, <16 x float> nofpclass(nan inf) %.14594986)
  %i.agc = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adr
  %i.agd = load i16, ptr %i.agc, align 2, !tbaa !33
  %i.age = zext i16 %i.agd to i32
  %i.agf = shl nuw i32 %i.age, 16
  %i.agg = insertelement <16 x i32> poison, i32 %i.agf, i64 0
  %i.agh = bitcast <16 x i32> %i.agg to <16 x float>
  %i.agi = shufflevector <16 x float> %i.agh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aen, <16 x float> nofpclass(nan inf) %i.agi, <16 x float> nofpclass(nan inf) %i.afd) ; 2 uses
  %i.agk = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adt
  %i.agl = load i16, ptr %i.agk, align 2, !tbaa !33
  %i.agm = zext i16 %i.agl to i32
  %i.agn = shl nuw i32 %i.agm, 16
  %i.ago = insertelement <16 x i32> poison, i32 %i.agn, i64 0
  %i.agp = bitcast <16 x i32> %i.ago to <16 x float>
  %i.agq = shufflevector <16 x float> %i.agp, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aeq, <16 x float> nofpclass(nan inf) %i.agq, <16 x float> nofpclass(nan inf) %i.afl) ; 2 uses
  %i.ags = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adv
  %i.agt = load i16, ptr %i.ags, align 2, !tbaa !33
  %i.agu = zext i16 %i.agt to i32
  %i.agv = shl nuw i32 %i.agu, 16
  %i.agw = insertelement <16 x i32> poison, i32 %i.agv, i64 0
  %i.agx = bitcast <16 x i32> %i.agw to <16 x float>
  %i.agy = shufflevector <16 x float> %i.agx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aet, <16 x float> nofpclass(nan inf) %i.agy, <16 x float> nofpclass(nan inf) %i.aft) ; 2 uses
  %i.aha = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adx
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !33
  %i.ahc = zext i16 %i.ahb to i32
  %i.ahd = shl nuw i32 %i.ahc, 16
  %i.ahe = insertelement <16 x i32> poison, i32 %i.ahd, i64 0
  %i.ahf = bitcast <16 x i32> %i.ahe to <16 x float>
  %i.ahg = shufflevector <16 x float> %i.ahf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aew, <16 x float> nofpclass(nan inf) %i.ahg, <16 x float> nofpclass(nan inf) %i.agb) ; 2 uses
  %i.ahi = getelementptr inbounds [2 x i8], ptr %.4988, i64 %i.adz
  %i.ahj = getelementptr inbounds nuw i8, ptr %.14987, i64 256
  %i.ahk = add nuw nsw i32 %.0548989, 1           ; 2 uses
  %exitcond1190.not = icmp eq i32 %i.ahk, %i.adi
  br i1 %exitcond1190.not, label %.loopexit870.loopexit, label %bb.p, !llvm.loop !131

.loopexit870.loopexit:                            ; preds = %bb.p
  %scevgep1188 = getelementptr i8, ptr %.91000, i64 256
  %i.ahl = add nsw i32 %i.adi, -1
  %i.ahm = zext nneg i32 %i.ahl to i64
  %i.ahn = shl nuw nsw i64 %i.ahm, 8
  %scevgep1189 = getelementptr i8, ptr %scevgep1188, i64 %i.ahn
  br label %.loopexit870

.loopexit870:                                     ; preds = %.preheader872, %.loopexit873.loopexit, %bb.n, %.loopexit871.loopexit, %.loopexit870.loopexit, %.preheader869, %.loopexit871
  %.16852 = phi nsz <16 x float> [ %.10846996, %.loopexit871 ], [ %.10846996, %.preheader869 ], [ %i.agj, %.loopexit870.loopexit ], [ %.10846996, %bb.n ], [ %i.acr, %.loopexit871.loopexit ], [ %i.aad, %.loopexit873.loopexit ], [ %.10846996, %.preheader872 ] ; 2 uses
  %.15637 = phi nsz <16 x float> [ %.9631997, %.loopexit871 ], [ %.9631997, %.preheader869 ], [ %i.agr, %.loopexit870.loopexit ], [ %.9631997, %bb.n ], [ %i.acu, %.loopexit871.loopexit ], [ %i.aag, %.loopexit873.loopexit ], [ %.9631997, %.preheader872 ] ; 2 uses
  %.15616 = phi nsz <16 x float> [ %.9610998, %.loopexit871 ], [ %.9610998, %.preheader869 ], [ %i.agz, %.loopexit870.loopexit ], [ %.9610998, %bb.n ], [ %i.acx, %.loopexit871.loopexit ], [ %i.aaj, %.loopexit873.loopexit ], [ %.9610998, %.preheader872 ] ; 2 uses
  %.15595 = phi nsz <16 x float> [ %.9589999, %.loopexit871 ], [ %.9589999, %.preheader869 ], [ %i.ahh, %.loopexit870.loopexit ], [ %.9589999, %bb.n ], [ %i.ada, %.loopexit871.loopexit ], [ %i.aam, %.loopexit873.loopexit ], [ %.9589999, %.preheader872 ] ; 2 uses
  %.15 = phi ptr [ %.91000, %.loopexit871 ], [ %.91000, %.preheader869 ], [ %scevgep1189, %.loopexit870.loopexit ], [ %.91000, %bb.n ], [ %scevgep1186, %.loopexit871.loopexit ], [ %scevgep1183, %.loopexit873.loopexit ], [ %.91000, %.preheader872 ] ; 2 uses
  %i.aho = add nuw nsw i32 %.15691001, 8          ; 3 uses
  %i.ahp = or disjoint i32 %i.aho, 7
  %i.ahq = icmp slt i32 %i.ahp, %i.ab
  br i1 %i.ahq, label %bb.l, label %.preheader882, !llvm.loop !132

.preheader881:                                    ; preds = %.loopexit, %.preheader882
  %.17853.lcssa = phi <16 x float> [ %.10846.lcssa, %.preheader882 ], [ %.21857, %.loopexit ] ; 3 uses
  %.16638.lcssa = phi <16 x float> [ %.9631.lcssa, %.preheader882 ], [ %.20642, %.loopexit ] ; 3 uses
  %.16617.lcssa = phi <16 x float> [ %.9610.lcssa, %.preheader882 ], [ %.20621, %.loopexit ]
  %.16596.lcssa = phi <16 x float> [ %.9589.lcssa, %.preheader882 ], [ %.20600, %.loopexit ]
  %.16.lcssa = phi ptr [ %.9.lcssa, %.preheader882 ], [ %.20, %.loopexit ] ; 3 uses
  %.2570.lcssa = phi i32 [ %.1569.lcssa, %.preheader882 ], [ %i.anh, %.loopexit ] ; 5 uses
  %i.ahr = or disjoint i32 %.2570.lcssa, 1
  %i.ahs = icmp slt i32 %i.ahr, %i.ab
  br i1 %i.ahs, label %.lr.ph1070, label %.preheader880

.lr.ph1070:                                       ; preds = %.preheader881
  %i.aht = load ptr, ptr %3, align 8, !tbaa !18
  %i.ahu = load i32, ptr %i.s, align 4, !tbaa !17
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = load i64, ptr %i.t, align 8, !tbaa !24
  %factor.op.mul1075 = mul i64 %i.ahw, %i.ahv
  %i.ahx = load i32, ptr %7, align 4, !tbaa !9
  %i.ahy = mul nsw i32 %i.ahx, %.06451102
  %i.ahz = sext i32 %i.ahy to i64
  %invariant.gep1077 = getelementptr [2 x i8], ptr %i.aht, i64 %i.ahz
  %i.aia = load i32, ptr %8, align 4, !tbaa !9    ; 3 uses
  %i.aib = icmp sgt i32 %i.aia, 0
  br i1 %i.aib, label %.lr.ph1070.split.us, label %.lr.ph1070.split.preheader

.lr.ph1070.split.preheader:                       ; preds = %.lr.ph1070
  %i.aic = add i32 %.2570.lcssa, 2
  %i.aid = sub i32 %14, %.2570.lcssa
  %i.aie = and i32 %i.aid, -2
  %i.aif = add i32 %i.aic, %i.aie
  br label %.preheader880

.lr.ph1070.split.us:                              ; preds = %.lr.ph1070
  %i.aig = load i32, ptr %10, align 4, !tbaa !9
  %i.aih = sext i32 %i.aig to i64
  %i.aii = load i32, ptr %9, align 4, !tbaa !9
  %i.aij = sext i32 %i.aii to i64
  %i.aik = add nsw i32 %i.aia, -1
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = shl nuw nsw i64 %i.ail, 6
  %i.ain = zext i32 %.2570.lcssa to i64
  br label %.lr.ph1062.us

.lr.ph1062.us:                                    ; preds = %._crit_edge.us, %.lr.ph1070.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.us ], [ %i.ain, %.lr.ph1070.split.us ] ; 2 uses
  %.211068.us = phi ptr [ %scevgep1198, %._crit_edge.us ], [ %.16.lcssa, %.lr.ph1070.split.us ] ; 2 uses
  %.216431067.us = phi <16 x float> [ %i.ajh, %._crit_edge.us ], [ %.16638.lcssa, %.lr.ph1070.split.us ]
  %.228581066.us = phi <16 x float> [ %i.aiz, %._crit_edge.us ], [ %.17853.lcssa, %.lr.ph1070.split.us ]
  %.reass1076.us = mul i64 %factor.op.mul1075, %indvars.iv
  %gep1078.us = getelementptr i8, ptr %invariant.gep1077, i64 %.reass1076.us
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1062.us, %bb.q
  %.05431061.us = phi i32 [ 0, %.lr.ph1062.us ], [ %i.ajk, %bb.q ]
  %.05441060.us = phi ptr [ %gep1078.us, %.lr.ph1062.us ], [ %i.aji, %bb.q ] ; 3 uses
  %.221059.us = phi ptr [ %.211068.us, %.lr.ph1062.us ], [ %i.ajj, %bb.q ] ; 3 uses
  %.226441058.us = phi <16 x float> [ %.216431067.us, %.lr.ph1062.us ], [ %i.ajh, %bb.q ]
  %.238591057.us = phi <16 x float> [ %.228581066.us, %.lr.ph1062.us ], [ %i.aiz, %bb.q ]
  %i.aio = load <16 x bfloat>, ptr %.221059.us, align 32, !tbaa !28
  %i.aip = fpext fast <16 x bfloat> %i.aio to <16 x float>
  %i.aiq = getelementptr inbounds nuw i8, ptr %.221059.us, i64 32
  %i.air = load <16 x bfloat>, ptr %i.aiq, align 32, !tbaa !28
  %i.ais = fpext fast <16 x bfloat> %i.air to <16 x float>
  %i.ait = load i16, ptr %.05441060.us, align 2, !tbaa !33
  %i.aiu = zext i16 %i.ait to i32
  %i.aiv = shl nuw i32 %i.aiu, 16
  %i.aiw = insertelement <16 x i32> poison, i32 %i.aiv, i64 0
  %i.aix = bitcast <16 x i32> %i.aiw to <16 x float>
  %i.aiy = shufflevector <16 x float> %i.aix, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aiz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aip, <16 x float> nofpclass(nan inf) %i.aiy, <16 x float> nofpclass(nan inf) %.238591057.us) ; 3 uses
  %i.aja = getelementptr inbounds [2 x i8], ptr %.05441060.us, i64 %i.aih
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !33
  %i.ajc = zext i16 %i.ajb to i32
  %i.ajd = shl nuw i32 %i.ajc, 16
  %i.aje = insertelement <16 x i32> poison, i32 %i.ajd, i64 0
  %i.ajf = bitcast <16 x i32> %i.aje to <16 x float>
  %i.ajg = shufflevector <16 x float> %i.ajf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ajh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ais, <16 x float> nofpclass(nan inf) %i.ajg, <16 x float> nofpclass(nan inf) %.226441058.us) ; 3 uses
  %i.aji = getelementptr inbounds [2 x i8], ptr %.05441060.us, i64 %i.aij
  %i.ajj = getelementptr inbounds nuw i8, ptr %.221059.us, i64 64
  %i.ajk = add nuw nsw i32 %.05431061.us, 1       ; 2 uses
  %exitcond1199.not = icmp eq i32 %i.ajk, %i.aia
  br i1 %exitcond1199.not, label %._crit_edge.us, label %bb.q, !llvm.loop !133

._crit_edge.us:                                   ; preds = %bb.q
  %scevgep1197 = getelementptr i8, ptr %.211068.us, i64 64
  %scevgep1198 = getelementptr i8, ptr %scevgep1197, i64 %i.aim ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ajl = trunc i64 %indvars.iv.next to i32
  %i.ajm = or i32 %i.ajl, 1
  %i.ajn = icmp slt i32 %i.ajm, %i.ab
  br i1 %i.ajn, label %.lr.ph1062.us, label %.preheader880.loopexit, !llvm.loop !134

bb.r:                                             ; preds = %.lr.ph1046, %.loopexit
  %.25701045 = phi i32 [ %.1569.lcssa, %.lr.ph1046 ], [ %i.anh, %.loopexit ] ; 2 uses
  %.161044 = phi ptr [ %.9.lcssa, %.lr.ph1046 ], [ %.20, %.loopexit ] ; 7 uses
  %.165961043 = phi <16 x float> [ %.9589.lcssa, %.lr.ph1046 ], [ %.20600, %.loopexit ] ; 5 uses
  %.166171042 = phi <16 x float> [ %.9610.lcssa, %.lr.ph1046 ], [ %.20621, %.loopexit ] ; 5 uses
  %.166381041 = phi <16 x float> [ %.9631.lcssa, %.lr.ph1046 ], [ %.20642, %.loopexit ] ; 5 uses
  %.178531040 = phi <16 x float> [ %.10846.lcssa, %.lr.ph1046 ], [ %.21857, %.loopexit ] ; 5 uses
  %i.ajo = sdiv i32 %.25701045, %i.z
  %i.ajp = sext i32 %i.ajo to i64
  %.reass1054 = mul i64 %factor.op.mul1053, %i.ajp
  %gep1056 = getelementptr i8, ptr %invariant.gep1055, i64 %.reass1054 ; 2 uses
  br i1 %i.ar, label %.preheader867, label %.loopexit868

.preheader867:                                    ; preds = %bb.r
  %i.ajq = load i32, ptr %8, align 4, !tbaa !9    ; 3 uses
  %i.ajr = icmp sgt i32 %i.ajq, 0
  br i1 %i.ajr, label %.lr.ph1020, label %.loopexit

.lr.ph1020:                                       ; preds = %.preheader867
  %i.ajs = load i32, ptr %9, align 4, !tbaa !9
  %i.ajt = shl nsw i32 %i.ajs, 2
  %i.aju = sext i32 %i.ajt to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph1020, %bb.s
  %.05461019 = phi i32 [ 0, %.lr.ph1020 ], [ %i.akx, %bb.s ]
  %.05471018 = phi ptr [ %gep1056, %.lr.ph1020 ], [ %i.akv, %bb.s ] ; 2 uses
  %.171017 = phi ptr [ %.161044, %.lr.ph1020 ], [ %i.akw, %bb.s ] ; 5 uses
  %.175971016 = phi <16 x float> [ %.165961043, %.lr.ph1020 ], [ %i.aku, %bb.s ]
  %.176181015 = phi <16 x float> [ %.166171042, %.lr.ph1020 ], [ %i.akr, %bb.s ]
  %.176391014 = phi <16 x float> [ %.166381041, %.lr.ph1020 ], [ %i.ako, %bb.s ]
  %.188541013 = phi <16 x float> [ %.178531040, %.lr.ph1020 ], [ %i.akl, %bb.s ]
  %i.ajv = load <16 x bfloat>, ptr %.171017, align 32, !tbaa !28
  %i.ajw = fpext fast <16 x bfloat> %i.ajv to <16 x float>
  %i.ajx = getelementptr inbounds nuw i8, ptr %.171017, i64 32
  %i.ajy = load <16 x bfloat>, ptr %i.ajx, align 32, !tbaa !28
  %i.ajz = fpext fast <16 x bfloat> %i.ajy to <16 x float>
  %i.aka = getelementptr inbounds nuw i8, ptr %.171017, i64 64
  %i.akb = load <16 x bfloat>, ptr %i.aka, align 32, !tbaa !28
  %i.akc = fpext fast <16 x bfloat> %i.akb to <16 x float>
  %i.akd = getelementptr inbounds nuw i8, ptr %.171017, i64 96
  %i.ake = load <16 x bfloat>, ptr %i.akd, align 32, !tbaa !28
  %i.akf = fpext fast <16 x bfloat> %i.ake to <16 x float>
  %i.akg = load <4 x i16>, ptr %.05471018, align 2, !tbaa !33
  %i.akh = zext <4 x i16> %i.akg to <4 x i32>
  %i.aki = shl nuw <4 x i32> %i.akh, splat (i32 16) ; 4 uses
  %i.akj = bitcast <4 x i32> %i.aki to <4 x float>
  %i.akk = shufflevector <4 x float> %i.akj, <4 x float> poison, <16 x i32> zeroinitializer
  %i.akl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ajw, <16 x float> nofpclass(nan inf) %i.akk, <16 x float> nofpclass(nan inf) %.188541013) ; 2 uses
  %i.akm = bitcast <4 x i32> %i.aki to <4 x float>
  %i.akn = shufflevector <4 x float> %i.akm, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ako = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ajz, <16 x float> nofpclass(nan inf) %i.akn, <16 x float> nofpclass(nan inf) %.176391014) ; 2 uses
  %i.akp = bitcast <4 x i32> %i.aki to <4 x float>
  %i.akq = shufflevector <4 x float> %i.akp, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.akr = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akc, <16 x float> nofpclass(nan inf) %i.akq, <16 x float> nofpclass(nan inf) %.176181015) ; 2 uses
  %i.aks = bitcast <4 x i32> %i.aki to <4 x float>
  %i.akt = shufflevector <4 x float> %i.aks, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aku = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.akf, <16 x float> nofpclass(nan inf) %i.akt, <16 x float> nofpclass(nan inf) %.175971016) ; 2 uses
  %i.akv = getelementptr inbounds [2 x i8], ptr %.05471018, i64 %i.aju
  %i.akw = getelementptr inbounds nuw i8, ptr %.171017, i64 128
  %i.akx = add nuw nsw i32 %.05461019, 1          ; 2 uses
  %exitcond1193.not = icmp eq i32 %i.akx, %i.ajq
  br i1 %exitcond1193.not, label %.loopexit868.loopexit, label %bb.s, !llvm.loop !135

.loopexit868.loopexit:                            ; preds = %bb.s
  %scevgep1191 = getelementptr i8, ptr %.161044, i64 128
  %i.aky = add nsw i32 %i.ajq, -1
  %i.akz = zext nneg i32 %i.aky to i64
  %i.ala = shl nuw nsw i64 %i.akz, 7
  %scevgep1192 = getelementptr i8, ptr %scevgep1191, i64 %i.ala
  br label %.loopexit

.loopexit868:                                     ; preds = %bb.r
  br i1 %i.as, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.loopexit868
  %i.alb = load i32, ptr %8, align 4, !tbaa !9    ; 3 uses
  %i.alc = icmp sgt i32 %i.alb, 0
  br i1 %i.alc, label %.lr.ph1034, label %.loopexit

.lr.ph1034:                                       ; preds = %.preheader
  %i.ald = load i32, ptr %10, align 4, !tbaa !9   ; 3 uses
  %i.ale = sext i32 %i.ald to i64
  %i.alf = shl nsw i32 %i.ald, 1
  %i.alg = sext i32 %i.alf to i64
  %i.alh = mul nsw i32 %i.ald, 3
  %i.ali = sext i32 %i.alh to i64
  %i.alj = load i32, ptr %9, align 4, !tbaa !9
  %i.alk = sext i32 %i.alj to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph1034, %bb.t
  %.05451033 = phi i32 [ 0, %.lr.ph1034 ], [ %i.and, %bb.t ]
  %.21032 = phi ptr [ %gep1056, %.lr.ph1034 ], [ %i.anb, %bb.t ] ; 5 uses
  %.191031 = phi ptr [ %.161044, %.lr.ph1034 ], [ %i.anc, %bb.t ] ; 5 uses
  %.195991030 = phi <16 x float> [ %.165961043, %.lr.ph1034 ], [ %i.ana, %bb.t ]
  %.196201029 = phi <16 x float> [ %.166171042, %.lr.ph1034 ], [ %i.ams, %bb.t ]
  %.196411028 = phi <16 x float> [ %.166381041, %.lr.ph1034 ], [ %i.amk, %bb.t ]
  %.208561027 = phi <16 x float> [ %.178531040, %.lr.ph1034 ], [ %i.amc, %bb.t ]
  %i.all = load <16 x bfloat>, ptr %.191031, align 32, !tbaa !28
  %i.alm = fpext fast <16 x bfloat> %i.all to <16 x float>
  %i.aln = getelementptr inbounds nuw i8, ptr %.191031, i64 32
  %i.alo = load <16 x bfloat>, ptr %i.aln, align 32, !tbaa !28
  %i.alp = fpext fast <16 x bfloat> %i.alo to <16 x float>
  %i.alq = getelementptr inbounds nuw i8, ptr %.191031, i64 64
  %i.alr = load <16 x bfloat>, ptr %i.alq, align 32, !tbaa !28
  %i.als = fpext fast <16 x bfloat> %i.alr to <16 x float>
  %i.alt = getelementptr inbounds nuw i8, ptr %.191031, i64 96
  %i.alu = load <16 x bfloat>, ptr %i.alt, align 32, !tbaa !28
  %i.alv = fpext fast <16 x bfloat> %i.alu to <16 x float>
  %i.alw = load i16, ptr %.21032, align 2, !tbaa !33
  %i.alx = zext i16 %i.alw to i32
  %i.aly = shl nuw i32 %i.alx, 16
  %i.alz = insertelement <16 x i32> poison, i32 %i.aly, i64 0
  %i.ama = bitcast <16 x i32> %i.alz to <16 x float>
  %i.amb = shufflevector <16 x float> %i.ama, <16 x float> poison, <16 x i32> zeroinitializer
  %i.amc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alm, <16 x float> nofpclass(nan inf) %i.amb, <16 x float> nofpclass(nan inf) %.208561027) ; 2 uses
  %i.amd = getelementptr inbounds [2 x i8], ptr %.21032, i64 %i.ale
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !33
  %i.amf = zext i16 %i.ame to i32
  %i.amg = shl nuw i32 %i.amf, 16
  %i.amh = insertelement <16 x i32> poison, i32 %i.amg, i64 0
  %i.ami = bitcast <16 x i32> %i.amh to <16 x float>
  %i.amj = shufflevector <16 x float> %i.ami, <16 x float> poison, <16 x i32> zeroinitializer
  %i.amk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.alp, <16 x float> nofpclass(nan inf) %i.amj, <16 x float> nofpclass(nan inf) %.196411028) ; 2 uses
  %i.aml = getelementptr inbounds [2 x i8], ptr %.21032, i64 %i.alg
  %i.amm = load i16, ptr %i.aml, align 2, !tbaa !33
  %i.amn = zext i16 %i.amm to i32
  %i.amo = shl nuw i32 %i.amn, 16
  %i.amp = insertelement <16 x i32> poison, i32 %i.amo, i64 0
  %i.amq = bitcast <16 x i32> %i.amp to <16 x float>
  %i.amr = shufflevector <16 x float> %i.amq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ams = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.als, <16 x float> nofpclass(nan inf) %i.amr, <16 x float> nofpclass(nan inf) %.196201029) ; 2 uses
  %i.amt = getelementptr inbounds [2 x i8], ptr %.21032, i64 %i.ali
  %i.amu = load i16, ptr %i.amt, align 2, !tbaa !33
end_hunk_7
begin_hunk_8_@_ZN4ncnn54convolution1d_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iii:bb.a
  store <32 x i16> %interleaved.vec414, ptr %next.gep408, align 2, !tbaa !33
  %index.next415 = add nuw i64 %index406, 32      ; 2 uses
  %i.boh = icmp eq i64 %index.next415, %n.vec404
  br i1 %i.boh, label %middle.block416, label %vector.body405, !llvm.loop !221

middle.block416:                                  ; preds = %vector.body405
  br i1 %cmp.n417, label %._crit_edge1984.us.i, label %vec.epilog.iter.check421

vec.epilog.iter.check421:                         ; preds = %middle.block416
  br i1 %min.epilog.iters.check422, label %vec.epilog.scalar.ph420.preheader, label %vec.epilog.ph423, !prof !222

vec.epilog.ph423:                                 ; preds = %vector.main.loop.iter.check401, %vec.epilog.iter.check421
  %vec.epilog.resume.val418 = phi i64 [ %n.vec404, %vec.epilog.iter.check421 ], [ 0, %vector.main.loop.iter.check401 ]
  %i.boi = getelementptr i8, ptr %.61987.us.i, i64 %i.bap ; 2 uses
  br label %vec.epilog.vector.body425

vec.epilog.vector.body425:                        ; preds = %vec.epilog.vector.body425, %vec.epilog.ph423
  %index426 = phi i64 [ %vec.epilog.resume.val418, %vec.epilog.ph423 ], [ %index.next431, %vec.epilog.vector.body425 ] ; 3 uses
  %i.boj = shl i64 %index426, 2
  %next.gep427 = getelementptr i8, ptr %.61987.us.i, i64 %i.boj
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %.311131986.us.i, i64 %index426 ; 2 uses
  %wide.load428 = load <8 x i32>, ptr %i.bok, align 4, !tbaa !51
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.azt
  %wide.load429 = load <8 x i32>, ptr %i.bol, align 4, !tbaa !51
  %i.bom = shufflevector <8 x i32> %wide.load428, <8 x i32> %wide.load429, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bon = lshr <16 x i32> %i.bom, splat (i32 16)
  %interleaved.vec430 = trunc nuw <16 x i32> %i.bon to <16 x i16>
  store <16 x i16> %interleaved.vec430, ptr %next.gep427, align 2, !tbaa !33
  %index.next431 = add nuw i64 %index426, 8       ; 2 uses
  %i.boo = icmp eq i64 %index.next431, %n.vec424
  br i1 %i.boo, label %vec.epilog.middle.block432, label %vec.epilog.vector.body425, !llvm.loop !223

vec.epilog.middle.block432:                       ; preds = %vec.epilog.vector.body425
  br i1 %cmp.n433, label %._crit_edge1984.us.i, label %vec.epilog.scalar.ph420.preheader

vec.epilog.scalar.ph420.preheader:                ; preds = %iter.check419, %vec.epilog.iter.check421, %vec.epilog.middle.block432
  %indvars.iv2396.i.ph = phi i64 [ 0, %iter.check419 ], [ %n.vec404, %vec.epilog.iter.check421 ], [ %n.vec424, %vec.epilog.middle.block432 ]
  %.71982.us.i.ph = phi ptr [ %.61987.us.i, %iter.check419 ], [ %i.bnw, %vec.epilog.iter.check421 ], [ %i.boi, %vec.epilog.middle.block432 ]
  br label %vec.epilog.scalar.ph420

vec.epilog.scalar.ph420:                          ; preds = %vec.epilog.scalar.ph420.preheader, %vec.epilog.scalar.ph420
  %indvars.iv2396.i = phi i64 [ %indvars.iv.next2397.i, %vec.epilog.scalar.ph420 ], [ %indvars.iv2396.i.ph, %vec.epilog.scalar.ph420.preheader ] ; 2 uses
  %.71982.us.i = phi ptr [ %i.boy, %vec.epilog.scalar.ph420 ], [ %.71982.us.i.ph, %vec.epilog.scalar.ph420.preheader ] ; 3 uses
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %.311131986.us.i, i64 %indvars.iv2396.i ; 2 uses
  %i.boq = load i32, ptr %i.bop, align 4, !tbaa !51
  %i.bor = lshr i32 %i.boq, 16
  %i.bos = trunc nuw i32 %i.bor to i16
  store i16 %i.bos, ptr %.71982.us.i, align 2, !tbaa !33
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %i.azt
  %i.bou = getelementptr inbounds nuw i8, ptr %.71982.us.i, i64 2
  %i.bov = load i32, ptr %i.bot, align 4, !tbaa !51
  %i.bow = lshr i32 %i.bov, 16
  %i.box = trunc nuw i32 %i.bow to i16
  store i16 %i.box, ptr %i.bou, align 2, !tbaa !33
  %i.boy = getelementptr inbounds nuw i8, ptr %.71982.us.i, i64 4 ; 2 uses
  %indvars.iv.next2397.i = add nuw nsw i64 %indvars.iv2396.i, 1 ; 2 uses
  %exitcond2400.not.i = icmp eq i64 %indvars.iv.next2397.i, %wide.trip.count2379.i
  br i1 %exitcond2400.not.i, label %._crit_edge1984.us.i, label %vec.epilog.scalar.ph420, !llvm.loop !224

._crit_edge1984.us.i:                             ; preds = %vec.epilog.scalar.ph420, %vec.epilog.middle.block432, %middle.block416
  %.lcssa252 = phi ptr [ %i.boi, %vec.epilog.middle.block432 ], [ %i.bnw, %middle.block416 ], [ %i.boy, %vec.epilog.scalar.ph420 ] ; 2 uses
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %.311131986.us.i, i64 %i.azv ; 2 uses
  %i.bpa = add nuw nsw i32 %.311031988.us.i, 2    ; 3 uses
  %i.bpb = or disjoint i32 %i.bpa, 1
  %i.bpc = icmp slt i32 %i.bpb, %2
  br i1 %i.bpc, label %iter.check419, label %.preheader1559.i, !llvm.loop !225

.preheader1559.i:                                 ; preds = %._crit_edge1984.us.i, %.preheader1560.i
  %.31113.lcssa.i = phi ptr [ %.21112.lcssa.i, %.preheader1560.i ], [ %i.boz, %._crit_edge1984.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.41109.lcssa.i, %.preheader1560.i ], [ %.lcssa252, %._crit_edge1984.us.i ]
  %.31103.lcssa.i = phi i32 [ %.21102.lcssa.i, %.preheader1560.i ], [ %i.bpa, %._crit_edge1984.us.i ] ; 2 uses
  %i.bpd = icmp sge i32 %.31103.lcssa.i, %2
  %brmerge2016.i = or i1 %i.azw, %i.bpd
  br i1 %brmerge2016.i, label %._crit_edge2001.split.i, label %iter.check385

iter.check385:                                    ; preds = %.preheader1559.i, %._crit_edge1997.i
  %.411042000.i = phi i32 [ %i.bqc, %._crit_edge1997.i ], [ %.31103.lcssa.i, %.preheader1559.i ]
  %.91999.i = phi ptr [ %.lcssa255, %._crit_edge1997.i ], [ %.6.lcssa.i, %.preheader1559.i ] ; 5 uses
  br i1 %min.iters.check369, label %vec.epilog.scalar.ph386.preheader, label %vector.main.loop.iter.check370

vector.main.loop.iter.check370:                   ; preds = %iter.check385
  br i1 %min.iters.check371, label %vec.epilog.ph389, label %vector.ph372

vector.ph372:                                     ; preds = %vector.main.loop.iter.check370
  %i.bpe = getelementptr i8, ptr %.91999.i, i64 %i.bar ; 2 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next381, %vector.body374 ] ; 3 uses
  %i.bpf = shl i64 %index375, 1
  %next.gep376 = getelementptr i8, ptr %.91999.i, i64 %i.bpf ; 4 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %.31113.lcssa.i, i64 %index375 ; 4 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 64
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpg, i64 128
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpg, i64 192
  %wide.load377 = load <16 x i32>, ptr %i.bpg, align 4, !tbaa !51
  %wide.load378 = load <16 x i32>, ptr %i.bph, align 4, !tbaa !51
  %wide.load379 = load <16 x i32>, ptr %i.bpi, align 4, !tbaa !51
  %wide.load380 = load <16 x i32>, ptr %i.bpj, align 4, !tbaa !51
  %i.bpk = lshr <16 x i32> %wide.load377, splat (i32 16)
  %i.bpl = lshr <16 x i32> %wide.load378, splat (i32 16)
  %i.bpm = lshr <16 x i32> %wide.load379, splat (i32 16)
  %i.bpn = lshr <16 x i32> %wide.load380, splat (i32 16)
  %i.bpo = trunc nuw <16 x i32> %i.bpk to <16 x i16>
  %i.bpp = trunc nuw <16 x i32> %i.bpl to <16 x i16>
  %i.bpq = trunc nuw <16 x i32> %i.bpm to <16 x i16>
  %i.bpr = trunc nuw <16 x i32> %i.bpn to <16 x i16>
  %i.bps = getelementptr i8, ptr %next.gep376, i64 32
  %i.bpt = getelementptr i8, ptr %next.gep376, i64 64
  %i.bpu = getelementptr i8, ptr %next.gep376, i64 96
  store <16 x i16> %i.bpo, ptr %next.gep376, align 2, !tbaa !33
  store <16 x i16> %i.bpp, ptr %i.bps, align 2, !tbaa !33
  store <16 x i16> %i.bpq, ptr %i.bpt, align 2, !tbaa !33
  store <16 x i16> %i.bpr, ptr %i.bpu, align 2, !tbaa !33
  %index.next381 = add nuw i64 %index375, 64      ; 2 uses
  %i.bpv = icmp eq i64 %index.next381, %n.vec373
  br i1 %i.bpv, label %middle.block382, label %vector.body374, !llvm.loop !226

middle.block382:                                  ; preds = %vector.body374
  br i1 %cmp.n383, label %._crit_edge1997.i, label %vec.epilog.iter.check387

vec.epilog.iter.check387:                         ; preds = %middle.block382
  br i1 %min.epilog.iters.check388, label %vec.epilog.scalar.ph386.preheader, label %vec.epilog.ph389, !prof !227

vec.epilog.ph389:                                 ; preds = %vector.main.loop.iter.check370, %vec.epilog.iter.check387
  %vec.epilog.resume.val384 = phi i64 [ %n.vec373, %vec.epilog.iter.check387 ], [ 0, %vector.main.loop.iter.check370 ]
  %i.bpw = getelementptr i8, ptr %.91999.i, i64 %i.bas ; 2 uses
  br label %vec.epilog.vector.body391

vec.epilog.vector.body391:                        ; preds = %vec.epilog.vector.body391, %vec.epilog.ph389
  %index392 = phi i64 [ %vec.epilog.resume.val384, %vec.epilog.ph389 ], [ %index.next395, %vec.epilog.vector.body391 ] ; 3 uses
  %i.bpx = shl i64 %index392, 1
  %next.gep393 = getelementptr i8, ptr %.91999.i, i64 %i.bpx
  %i.bpy = getelementptr inbounds nuw [4 x i8], ptr %.31113.lcssa.i, i64 %index392
  %wide.load394 = load <8 x i32>, ptr %i.bpy, align 4, !tbaa !51
  %i.bpz = lshr <8 x i32> %wide.load394, splat (i32 16)
  %i.bqa = trunc nuw <8 x i32> %i.bpz to <8 x i16>
  store <8 x i16> %i.bqa, ptr %next.gep393, align 2, !tbaa !33
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.bqb = icmp eq i64 %index.next395, %n.vec390
  br i1 %i.bqb, label %vec.epilog.middle.block396, label %vec.epilog.vector.body391, !llvm.loop !228

vec.epilog.middle.block396:                       ; preds = %vec.epilog.vector.body391
  br i1 %cmp.n397, label %._crit_edge1997.i, label %vec.epilog.scalar.ph386.preheader

vec.epilog.scalar.ph386.preheader:                ; preds = %iter.check385, %vec.epilog.iter.check387, %vec.epilog.middle.block396
  %indvars.iv2401.i.ph = phi i64 [ 0, %iter.check385 ], [ %n.vec373, %vec.epilog.iter.check387 ], [ %n.vec390, %vec.epilog.middle.block396 ]
  %.101995.i.ph = phi ptr [ %.91999.i, %iter.check385 ], [ %i.bpe, %vec.epilog.iter.check387 ], [ %i.bpw, %vec.epilog.middle.block396 ]
  br label %vec.epilog.scalar.ph386

._crit_edge1997.i:                                ; preds = %vec.epilog.scalar.ph386, %vec.epilog.middle.block396, %middle.block382
  %.lcssa255 = phi ptr [ %i.bpw, %vec.epilog.middle.block396 ], [ %i.bpe, %middle.block382 ], [ %i.bqh, %vec.epilog.scalar.ph386 ]
  %i.bqc = add nuw nsw i32 %.411042000.i, 1       ; 2 uses
  %exitcond2406.not.i = icmp eq i32 %i.bqc, %2
  br i1 %exitcond2406.not.i, label %._crit_edge2001.split.i, label %iter.check385, !llvm.loop !229

vec.epilog.scalar.ph386:                          ; preds = %vec.epilog.scalar.ph386.preheader, %vec.epilog.scalar.ph386
  %indvars.iv2401.i = phi i64 [ %indvars.iv.next2402.i, %vec.epilog.scalar.ph386 ], [ %indvars.iv2401.i.ph, %vec.epilog.scalar.ph386.preheader ] ; 2 uses
  %.101995.i = phi ptr [ %i.bqh, %vec.epilog.scalar.ph386 ], [ %.101995.i.ph, %vec.epilog.scalar.ph386.preheader ] ; 2 uses
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %.31113.lcssa.i, i64 %indvars.iv2401.i
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !51
  %i.bqf = lshr i32 %i.bqe, 16
  %i.bqg = trunc nuw i32 %i.bqf to i16
  store i16 %i.bqg, ptr %.101995.i, align 2, !tbaa !33
  %i.bqh = getelementptr inbounds nuw i8, ptr %.101995.i, i64 2 ; 2 uses
  %indvars.iv.next2402.i = add nuw nsw i64 %indvars.iv2401.i, 1 ; 2 uses
  %exitcond2405.not.i = icmp eq i64 %indvars.iv.next2402.i, %wide.trip.count2379.i
  br i1 %exitcond2405.not.i, label %._crit_edge1997.i, label %vec.epilog.scalar.ph386, !llvm.loop !230

._crit_edge2001.split.i:                          ; preds = %._crit_edge1997.i, %.preheader1559.i, %.preheader1555.lr.ph.i, %.preheader1556.lr.ph.i
  %indvars.iv.next2408.i = add nuw nsw i64 %indvars.iv2407.i, 1 ; 2 uses
  %indvars.iv.next2374.i = add i32 %indvars.iv2373.i, %i.ayz
  %exitcond2411.not.i = icmp eq i64 %indvars.iv.next2408.i, %wide.trip.count2410.i
  br i1 %exitcond2411.not.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !231

_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit: ; preds = %._crit_edge2001.split.i, %.preheader1563.i
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !6, i64 24}
!11 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !6, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!11, !6, i64 48}
!17 = !{!11, !6, i64 44}
!18 = !{!11, !12, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 float", !12, i64 0}
!21 = !{!22, !6, i64 4}
!22 = !{!"_ZTSN4ncnn6OptionE", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !6, i64 4, !15, i64 8, !15, i64 16, !6, i64 24, !23, i64 28, !23, i64 29, !23, i64 30, !23, i64 31, !23, i64 32, !23, i64 33, !23, i64 34, !23, i64 35, !23, i64 36, !23, i64 37, !23, i64 38, !23, i64 39, !6, i64 40, !23, i64 44, !23, i64 45, !23, i64 46, !23, i64 47, !7, i64 48, !23, i64 49, !23, i64 50, !23, i64 51, !23, i64 52, !23, i64 53, !23, i64 54, !23, i64 55, !23, i64 56, !23, i64 57, !23, i64 58, !23, i64 59, !23, i64 60, !23, i64 61, !23, i64 62, !23, i64 63}
!23 = !{!"bool", !7, i64 0}
!24 = !{!11, !14, i64 16}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.unswitch.partial.disable"}
!28 = !{!7, !7, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!31 = distinct !{!31, !"_ZNK4ncnn3Mat7channelEi"}
!32 = !{!11, !14, i64 64}
!33 = !{!34, !34, i64 0}
!34 = !{!"short", !7, i64 0}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{!37, !26}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !26}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !26}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !7, i64 0}
!53 = distinct !{!53, !26}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!56 = distinct !{!56, !"_ZNK4ncnn3Mat7channelEi"}
!57 = distinct !{!57, !26, !27}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, !"_ZNK4ncnn3Mat7channelEi"}
!61 = distinct !{!61, !26}
!62 = distinct !{!62, !26}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !26}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !26}
!77 = distinct !{!77, !26}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!80 = distinct !{!80, !"_ZNK4ncnn3Mat7channelEi"}
!81 = distinct !{!81, !26}
!82 = distinct !{!82, !26}
!83 = distinct !{!83, !26}
!84 = distinct !{!84, !26}
!85 = distinct !{!85, !26}
!86 = distinct !{!86, !26}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !26}
!89 = distinct !{!89, !26}
!90 = distinct !{!90, !26}
!91 = distinct !{!91, !26}
!92 = distinct !{!92, !26}
!93 = distinct !{!93, !26}
!94 = distinct !{!94, !26}
!95 = distinct !{!95, !26}
!96 = distinct !{!96, !26}
!97 = distinct !{!97, !26}
!98 = distinct !{!98, !26}
!99 = distinct !{!99, !26}
!100 = distinct !{!100, !26}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !26}
!104 = distinct !{!104, !26}
!105 = distinct !{!105, !26}
!106 = distinct !{!106, !26}
!107 = distinct !{!107, !26}
!108 = distinct !{!108, !102}
!109 = distinct !{!109, !26}
!110 = distinct !{!110, !26}
!111 = distinct !{!111, !26}
!112 = distinct !{!112, !26}
!113 = distinct !{!113, !26}
!114 = distinct !{!114, !26}
!115 = distinct !{!115, !26}
!116 = distinct !{!116, !26}
!117 = distinct !{!117, !26}
!118 = distinct !{!118, !26}
!119 = distinct !{!119, !26}
!120 = distinct !{!120, !27}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!123 = distinct !{!123, !"_ZNK4ncnn3Mat7channelEi"}
!124 = distinct !{!124, !26}
!125 = distinct !{!125, !26}
!126 = distinct !{!126, !26}
!127 = distinct !{!127, !26}
!128 = distinct !{!128, !26}
!129 = distinct !{!129, !26}
!130 = distinct !{!130, !26}
!131 = distinct !{!131, !26}
!132 = distinct !{!132, !26}
!133 = distinct !{!133, !26}
!134 = distinct !{!134, !26}
!135 = distinct !{!135, !26}
!136 = distinct !{!136, !26}
!137 = distinct !{!137, !26}
!138 = distinct !{!138, !26}
!139 = distinct !{!139, !26}
!140 = distinct !{!140, !26}
!141 = !{!142}
!142 = !{i64 2, i64 -1, i64 -1, i1 true}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!145 = distinct !{!145, !"_ZN4ncnn3Mat7channelEi"}
!146 = distinct !{!146, !26}
!147 = distinct !{!147, !26}
!148 = distinct !{!148, !26}
!149 = distinct !{!149, !26}
!150 = distinct !{!150, !26}
!151 = distinct !{!151, !26}
!152 = distinct !{!152, !26}
!153 = distinct !{!153, !26}
end_hunk_8
