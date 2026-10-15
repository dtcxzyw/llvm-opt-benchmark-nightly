Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZTI17LibRaw_exceptions = comdat any

$_ZTS17LibRaw_exceptions = comdat any

@_ZZN6LibRaw15wavelet_denoiseEvE5noise = internal unnamed_addr constant [8 x float] [float f0x3F4CD9E8, float 2.735000e-01, float 1.202000e-01, float 5.850000e-02, float 2.910000e-02, float 1.520000e-02, float 8.000000e-03, float 4.400000e-03], align 16
@_ZZN6LibRaw13median_filterEvE3opt = internal unnamed_addr constant [38 x i8] c"\01\02\04\05\07\08\00\01\03\04\06\07\01\02\04\05\07\08\00\03\05\08\04\07\03\06\01\04\02\05\04\07\04\02\06\04\04\02", align 16
@_ZTI17LibRaw_exceptions = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTS17LibRaw_exceptions }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTS17LibRaw_exceptions = linkonce_odr constant [20 x i8] c"17LibRaw_exceptions\00", comdat, align 1
@_ZZN6LibRaw16blend_highlightsEvE5trans = internal unnamed_addr constant [2 x [4 x [4 x float]]] [[4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] [float f0x3FDDB3D7, float f0xBFDDB3D7, float 0.000000e+00, float 0.000000e+00], [4 x float] [float -1.000000e+00, float -1.000000e+00, float 2.000000e+00, float 0.000000e+00], [4 x float] zeroinitializer], [4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00]]], align 16
@_ZZN6LibRaw16blend_highlightsEvE6itrans = internal unnamed_addr constant [2 x [4 x [4 x float]]] [[4 x [4 x float]] [[4 x float] [float 1.000000e+00, float f0x3F5DB3D7, float -5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float f0xBF5DB3D7, float -5.000000e-01, float 0.000000e+00], [4 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [4 x float] zeroinitializer], [4 x [4 x float]] [[4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float 1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float 1.000000e+00, float -1.000000e+00, float -1.000000e+00], [4 x float] [float 1.000000e+00, float -1.000000e+00, float -1.000000e+00, float 1.000000e+00]]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw13hat_transformEPfS0_iii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = icmp sgt i32 %5, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader53

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = sext i32 %3 to i64                       ; 3 uses
  %i.e = zext nneg i32 %5 to i64                  ; 4 uses
  %wide.trip.count = zext nneg i32 %5 to i64      ; 5 uses
  %min.iters.check = icmp ugt i32 %5, 7
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.preheader168

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = shl nuw nsw i64 %wide.trip.count, 2      ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 %i.f
  %i.i = shl nuw nsw i64 %wide.trip.count, 3
  %i.j = getelementptr i8, ptr %2, i64 %i.i
  %i.k = getelementptr i8, ptr %2, i64 %i.f
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %bound0 = icmp ult ptr %1, %i.j
  %bound1 = icmp ult ptr %i.h, %i.g
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %1, %i.l
  %bound182 = icmp ult ptr %2, %i.g
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %.lr.ph.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <4 x float>, ptr %i.m, align 4, !tbaa !9, !alias.scope !101
  %wide.load84 = load <4 x float>, ptr %i.n, align 4, !tbaa !9, !alias.scope !101
  %i.o = sub nuw nsw i64 %i.e, %index
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -12
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -28
  %wide.load85 = load <4 x float>, ptr %i.q, align 4, !tbaa !9, !alias.scope !101
  %wide.load86 = load <4 x float>, ptr %i.r, align 4, !tbaa !9, !alias.scope !101
  %reverse = shufflevector <4 x float> %wide.load85, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse87 = shufflevector <4 x float> %wide.load86, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.s = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse)
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load84, <4 x float> splat (float 2.000000e+00), <4 x float> %reverse87)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load88 = load <4 x float>, ptr %gep, align 4, !tbaa !9, !alias.scope !102
  %wide.load89 = load <4 x float>, ptr %i.u, align 4, !tbaa !9, !alias.scope !102
  %i.v = fadd <4 x float> %i.s, %wide.load88
  %i.w = fadd <4 x float> %i.t, %wide.load89
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <4 x float> %i.v, ptr %i.x, align 4, !tbaa !9, !alias.scope !103, !noalias !104
  store <4 x float> %i.w, ptr %i.y, align 4, !tbaa !9, !alias.scope !103, !noalias !104
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader53, label %.lr.ph.preheader168

.lr.ph.preheader168:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader53:                                     ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %middle.block ], [ %5, %.lr.ph ] ; 3 uses
  %i.aa = add nsw i32 %.0.lcssa, %5
  %i.ab = icmp slt i32 %i.aa, %4
  br i1 %i.ab, label %.lr.ph56.preheader, label %.preheader

.lr.ph56.preheader:                               ; preds = %.preheader53
  %i.ac = sext i32 %5 to i64                      ; 5 uses
  %i.ad = zext nneg i32 %.0.lcssa to i64          ; 7 uses
  %i.ae = add nsw i64 %i.ac, %i.ad                ; 4 uses
  %i.af = sext i32 %3 to i64                      ; 3 uses
  %i.ag = sext i32 %4 to i64
  %invariant.op = sub nsw i64 %i.ag, %i.ac        ; 2 uses
  %i.ah = add nuw nsw i64 %i.ad, 1
  %i.ai = tail call i64 @llvm.smax.i64(i64 %invariant.op, i64 %i.ah)
  %i.aj = sub nsw i64 %i.ai, %i.ad                ; 3 uses
  %min.iters.check98 = icmp ugt i64 %i.aj, 11
  %ident.check91.not = icmp eq i32 %3, 1
  %or.cond165 = and i1 %min.iters.check98, %ident.check91.not
  br i1 %or.cond165, label %vector.memcheck92, label %.lr.ph56.preheader166

vector.memcheck92:                                ; preds = %.lr.ph56.preheader
  %i.ak = shl nsw i64 %i.ac, 2                    ; 2 uses
  %6 = sub i64 %i.b, %i.a                         ; 2 uses
  %i.al = sub i64 %i.ak, %6
  %diff.check = icmp ugt i64 %i.al, -32
  %i.am = add i64 %i.ak, %i.b
  %i.an = sub i64 %i.a, %i.am
  %diff.check93 = icmp ugt i64 %i.an, -32
  %conflict.rdx94 = or i1 %diff.check, %diff.check93
  %7 = add i64 %6, -1
  %diff.check102 = icmp ult i64 %7, 31
  %conflict.rdx96 = or i1 %conflict.rdx94, %diff.check102
  br i1 %conflict.rdx96, label %.lr.ph56.preheader166, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck92
  %n.vec100 = and i64 %i.aj, -8                   ; 4 uses
  %i.ao = add i64 %n.vec100, %i.ad                ; 2 uses
  %i.ap = add i64 %i.ae, %n.vec100
  %i.aq = getelementptr [4 x i8], ptr %2, i64 %i.ae
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next109, %vector.body101 ] ; 3 uses
  %i.ar = add nuw i64 %index102, %i.ad            ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load103 = load <4 x float>, ptr %i.as, align 4, !tbaa !9
  %wide.load104 = load <4 x float>, ptr %i.at, align 4, !tbaa !9
  %i.au = sub nsw i64 %i.ar, %i.ac
  %i.av = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load105 = load <4 x float>, ptr %i.av, align 4, !tbaa !9
  %wide.load106 = load <4 x float>, ptr %i.aw, align 4, !tbaa !9
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load103, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load105)
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load104, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load106)
  %i.az = getelementptr [4 x i8], ptr %i.aq, i64 %index102 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load107 = load <4 x float>, ptr %i.az, align 4, !tbaa !9
  %wide.load108 = load <4 x float>, ptr %i.ba, align 4, !tbaa !9
  %i.bb = fadd <4 x float> %i.ax, %wide.load107
  %i.bc = fadd <4 x float> %i.ay, %wide.load108
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ar ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x float> %i.bb, ptr %i.bd, align 4, !tbaa !9
  store <4 x float> %i.bc, ptr %i.be, align 4, !tbaa !9
  %index.next109 = add nuw i64 %index102, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next109, %n.vec100
  br i1 %i.bf, label %middle.block110, label %vector.body101, !llvm.loop !91

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %i.aj, %n.vec100
  br i1 %cmp.n111, label %.preheader.loopexit, label %.lr.ph56.preheader166

.lr.ph56.preheader166:                            ; preds = %vector.memcheck92, %.lr.ph56.preheader, %middle.block110
  %indvars.iv64.ph = phi i64 [ %i.ad, %vector.memcheck92 ], [ %i.ad, %.lr.ph56.preheader ], [ %i.ao, %middle.block110 ]
  %indvars.iv62.ph = phi i64 [ %i.ae, %vector.memcheck92 ], [ %i.ae, %.lr.ph56.preheader ], [ %i.ap, %middle.block110 ]
  br label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph.preheader168, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader168 ] ; 5 uses
  %i.bg = mul nsw i64 %indvars.iv, %i.d
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !9
  %i.bj = sub nuw nsw i64 %i.e, %indvars.iv
  %i.bk = mul nsw i64 %i.bj, %i.d
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !9
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bi, float 2.000000e+00, float %i.bm)
  %i.bo = add nuw nsw i64 %indvars.iv, %i.e
  %i.bp = mul nsw i64 %i.bo, %i.d
  %i.bq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !9
  %i.bs = fadd float %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.bs, ptr %i.bt, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader53, label %.lr.ph, !llvm.loop !92

.preheader.loopexit:                              ; preds = %.lr.ph56, %middle.block110
  %indvars.iv.next65.lcssa = phi i64 [ %i.ao, %middle.block110 ], [ %indvars.iv.next65, %.lr.ph56 ]
  %i.bu = trunc nsw i64 %indvars.iv.next65.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader53
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader53 ], [ %i.bu, %.preheader.loopexit ] ; 4 uses
  %i.bv = icmp slt i32 %.1.lcssa, %4
  br i1 %i.bv, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %.preheader
  %i.bw = shl nuw nsw i32 %4, 1                   ; 3 uses
  %.neg52 = add nsw i32 %i.bw, -2                 ; 2 uses
  %i.bx = sext i32 %.1.lcssa to i64               ; 9 uses
  %i.by = sext i32 %3 to i64                      ; 2 uses
  %i.bz = sext i32 %5 to i64                      ; 3 uses
  %wide.trip.count72 = sext i32 %4 to i64         ; 4 uses
  %i.ca = sub nsw i64 %wide.trip.count72, %i.bx   ; 3 uses
  %min.iters.check136 = icmp ult i64 %i.ca, 24
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.scevcheck114

vector.scevcheck114:                              ; preds = %.lr.ph59
  %ident.check115 = icmp ne i32 %3, 1
  %i.cb = xor i64 %i.bx, -1
  %i.cc = add nsw i64 %i.cb, %wide.trip.count72   ; 2 uses
  %i.cd = add nsw i32 %i.bw, -2
  %i.ce = add i32 %.1.lcssa, %5
  %i.cf = sub i32 %i.cd, %i.ce                    ; 2 uses
  %i.cg = trunc i64 %i.cc to i32
  %i.ch = sub i32 %i.cf, %i.cg
  %i.ci = icmp sgt i32 %i.ch, %i.cf
  %i.cj = icmp ugt i64 %i.cc, 4294967295
  %i.ck = or i1 %i.ci, %i.cj
  %i.cl = or i1 %ident.check115, %i.ck
  br i1 %i.cl, label %scalar.ph135.preheader, label %vector.memcheck137

vector.memcheck137:                               ; preds = %vector.scevcheck114
  %i.cm = shl nsw i64 %i.bx, 2                    ; 3 uses
  %i.cn = getelementptr i8, ptr %1, i64 %i.cm     ; 3 uses
  %i.co = shl nsw i64 %wide.trip.count72, 2       ; 4 uses
  %i.cp = getelementptr i8, ptr %1, i64 %i.co     ; 3 uses
  %i.cq = add i32 %.1.lcssa, %5
  %i.cr = add nsw i32 %i.bw, -2
  %i.cs = sub i32 %i.cr, %i.cq
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = add nsw i64 %i.bx, %i.ct
  %i.cv = shl nsw i64 %i.cu, 2
  %i.cw = add nsw i64 %i.cv, 4
  %i.cx = sub nsw i64 %i.cw, %i.co
  %i.cy = getelementptr i8, ptr %2, i64 %i.cx
  %i.cz = shl nsw i64 %i.ct, 2
  %i.da = getelementptr i8, ptr %2, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %i.dc = shl nsw i64 %i.bz, 2                    ; 2 uses
  %i.dd = sub nsw i64 %i.cm, %i.dc
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = sub nsw i64 %i.co, %i.dc
  %i.dg = getelementptr i8, ptr %2, i64 %i.df
  %i.dh = getelementptr i8, ptr %2, i64 %i.cm
  %i.di = getelementptr i8, ptr %2, i64 %i.co
  %bound0138 = icmp ult ptr %i.cn, %i.db
  %bound1139 = icmp ult ptr %i.cy, %i.cp
  %found.conflict140 = and i1 %bound0138, %bound1139
  %bound0141 = icmp ult ptr %i.cn, %i.dg
  %bound1142 = icmp ult ptr %i.de, %i.cp
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx144 = or i1 %found.conflict140, %found.conflict143
  %bound0145 = icmp ult ptr %i.cn, %i.di
  %bound1146 = icmp ult ptr %i.dh, %i.cp
  %found.conflict147 = and i1 %bound0145, %bound1146
  %conflict.rdx148 = or i1 %conflict.rdx144, %found.conflict147
  br i1 %conflict.rdx148, label %scalar.ph135.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck137
  %n.vec150 = and i64 %i.ca, -8                   ; 3 uses
  %i.dj = add nsw i64 %n.vec150, %i.bx
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next161, %vector.body151 ] ; 2 uses
  %i.dk = add nuw i64 %index152, %i.bx            ; 4 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load153 = load <4 x float>, ptr %i.dl, align 4, !tbaa !9, !alias.scope !105
  %wide.load154 = load <4 x float>, ptr %i.dm, align 4, !tbaa !9, !alias.scope !105
  %i.dn = sub nsw i64 %i.dk, %i.bz
  %i.do = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load155 = load <4 x float>, ptr %i.do, align 4, !tbaa !9, !alias.scope !106
  %wide.load156 = load <4 x float>, ptr %i.dp, align 4, !tbaa !9, !alias.scope !106
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load153, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load155)
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load154, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load156)
  %i.ds = trunc nsw i64 %i.dk to i32
  %i.dt = add i32 %5, %i.ds
  %i.du = sub i32 %.neg52, %i.dt
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -12
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 -28
  %wide.load157 = load <4 x float>, ptr %i.dx, align 4, !tbaa !9, !alias.scope !107
  %wide.load158 = load <4 x float>, ptr %i.dy, align 4, !tbaa !9, !alias.scope !107
  %reverse159 = shufflevector <4 x float> %wide.load157, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse160 = shufflevector <4 x float> %wide.load158, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dz = fadd <4 x float> %i.dq, %reverse159
  %i.ea = fadd <4 x float> %i.dr, %reverse160
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dk ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x float> %i.dz, ptr %i.eb, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  store <4 x float> %i.ea, ptr %i.ec, align 4, !tbaa !9, !alias.scope !108, !noalias !109
  %index.next161 = add nuw i64 %index152, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next161, %n.vec150
  br i1 %i.ed, label %middle.block162, label %vector.body151, !llvm.loop !98

middle.block162:                                  ; preds = %vector.body151
  %cmp.n163 = icmp eq i64 %i.ca, %n.vec150
  br i1 %cmp.n163, label %._crit_edge, label %scalar.ph135.preheader

scalar.ph135.preheader:                           ; preds = %vector.memcheck137, %vector.scevcheck114, %.lr.ph59, %middle.block162
  %indvars.iv69.ph = phi i64 [ %i.bx, %vector.memcheck137 ], [ %i.bx, %vector.scevcheck114 ], [ %i.bx, %.lr.ph59 ], [ %i.dj, %middle.block162 ]
  br label %scalar.ph135

.lr.ph56:                                         ; preds = %.lr.ph56.preheader166, %.lr.ph56
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph56 ], [ %indvars.iv64.ph, %.lr.ph56.preheader166 ] ; 4 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.lr.ph56 ], [ %indvars.iv62.ph, %.lr.ph56.preheader166 ] ; 2 uses
  %i.ee = mul nsw i64 %indvars.iv64, %i.af
  %i.ef = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !9
  %i.eh = sub nsw i64 %indvars.iv64, %i.ac
  %i.ei = mul nsw i64 %i.eh, %i.af
  %i.ej = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ei
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !9
  %i.el = tail call float @llvm.fmuladd.f32(float %i.eg, float 2.000000e+00, float %i.ek)
  %i.em = mul nsw i64 %indvars.iv62, %i.af
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  store i32 %i.t, ptr %i.n, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !163
  %i.w = shl i32 %i.v, %i.s
  store i32 %i.w, ptr %i.u, align 8, !tbaa !163
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.y = load <4 x i32>, ptr %i.x, align 8, !tbaa !74
  %i.z = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ab = shl <4 x i32> %i.y, %i.aa
  store <4 x i32> %i.ab, ptr %i.x, align 8, !tbaa !74
  %i.ac = zext i16 %i.h to i32                    ; 2 uses
  %i.ad = zext i16 %i.e to i32                    ; 2 uses
  %i.ae = mul nuw nsw i32 %i.ac, %i.ad            ; 8 uses
  %i.af = mul nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.ag = add nuw nsw i32 %i.ad, 128
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ak) ; 47 uses
  %i.am = zext nneg i32 %i.af to i64              ; 9 uses
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am ; 32 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75 ; 3 uses
  %i.aq = icmp ne i32 %i.ap, 3                    ; 2 uses
  br i1 %i.aq, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !164
  %.not = icmp eq i32 %i.as, 0
  %spec.select = select i1 %.not, i32 3, i32 4
  br label %.preheader294.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.at = icmp sgt i32 %i.ap, 0
  br i1 %i.at, label %.preheader294.lr.ph, label %.loopexit288

.preheader294.lr.ph:                              ; preds = %.thread, %bb.e
  %.0218433 = phi i32 [ %spec.select, %.thread ], [ %i.ap, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count394 = zext nneg i32 %.0218433 to i64
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 4 uses
  %wide.trip.count379.a = zext nneg i32 %i.ae to i64
  %wide.trip.count389 = zext nneg i32 %i.ae to i64
  %i.aw = mul nsw i64 %i.am, -4                   ; 2 uses
  %i.ax = shl nuw nsw i64 %i.am, 2                ; 6 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep533 = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep535 = getelementptr i8, ptr %i.al, i64 -4
  %scevgep538 = getelementptr i8, ptr %i.al, i64 4
  %scevgep543.a = getelementptr i8, ptr %i.al, i64 -4
  %scevgep591 = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep656 = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep660 = getelementptr i8, ptr %i.al, i64 4
  %scevgep662 = getelementptr i8, ptr %i.al, i64 4
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ay = icmp eq i32 %i.ae, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod711 = trunc i32 %i.ae to i1
  %invariant.op748.a = add i64 %i.aw, -1
  %invariant.op746.a = add nsw i64 %i.aw, -1
  %min.iters.check = icmp samesign ult i32 %i.ae, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge324, %.preheader294.lr.ph
  %indvars.iv391.a = phi i64 [ 0, %.preheader294.lr.ph ], [ %indvars.iv.next392, %._crit_edge324 ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv391.a ; 3 uses
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.new

.preheader293.unr-lcssa:                          ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.preheader293, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader293.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader293.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod711)
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.az = load i16, ptr %gep.epil, align 2, !tbaa !77
  %i.ba = zext i16 %i.az to i32
  %i.bb = shl i32 %i.ba, %i.s
  %i.bc = sitofp i32 %i.bb to float
  %i.bd = tail call float @sqrtf(float noundef %i.bc) #11
  %i.be = fmul float %i.bd, 2.560000e+02
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.epil.init
  store float %i.be, ptr %i.bf, align 4, !tbaa !9
  br label %.preheader293

.preheader293:                                    ; preds = %.preheader293.unr-lcssa, %.epil.preheader
  %i.bg = load i16, ptr %i.g, align 4, !tbaa !161 ; 6 uses
  %i.bh = zext i16 %i.bg to i32                   ; 3 uses
  %.not347 = icmp eq i16 %i.bg, 0                 ; 2 uses
  %i.bi = load i16, ptr %i.d, align 2, !tbaa !160 ; 11 uses
  %i.bj = zext i16 %i.bi to i32                   ; 4 uses
  %.not348 = icmp eq i16 %i.bi, 0                 ; 2 uses
  %i.bk = zext i16 %i.bi to i64                   ; 21 uses
  %i.bl = zext i16 %i.bg to i64                   ; 2 uses
  %i.bm = shl nuw nsw i32 %i.bh, 1                ; 3 uses
  %invariant.op = add nsw i32 %i.bm, -2           ; 2 uses
  %i.bn = zext i16 %i.bi to i64                   ; 8 uses
  %i.bo = shl nuw nsw i32 %i.bj, 1                ; 3 uses
  %wide.trip.count363 = zext i16 %i.bg to i64     ; 11 uses
  %i.bp = add nsw i32 %i.bo, -2                   ; 4 uses
  %wide.trip.count358 = zext i16 %i.bi to i64
  %wide.trip.count373 = zext i16 %i.bi to i64
  %wide.trip.count368 = zext i16 %i.bg to i64
  %i.bq = add nsw i64 %wide.trip.count363, -1     ; 2 uses
  %i.br = add nsw i32 %i.bm, -2
  %i.bs = add nuw nsw i64 %i.am, %wide.trip.count363
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %scevgep471 = getelementptr i8, ptr %i.al, i64 %i.bt ; 3 uses
  %i.bu = shl nuw nsw i64 %wide.trip.count363, 2  ; 2 uses
  %i.bv = add nsw i32 %i.bm, -2
  %i.bw = shl nuw nsw i64 %i.bk, 2                ; 3 uses
  %scevgep536 = getelementptr i8, ptr %scevgep535, i64 %i.bw
  %scevgep540.a = getelementptr i8, ptr %i.al, i64 %i.bw
  %scevgep544 = getelementptr i8, ptr %scevgep543.a, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bk, 2
  %i.by = add nsw i32 %i.bo, -2
  %i.bz = add nuw nsw i64 %i.am, %i.bk
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %scevgep593 = getelementptr i8, ptr %i.al, i64 %i.ca ; 3 uses
  %i.cb = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.cc = shl nuw nsw i64 %i.bk, 2
  %i.cd = add nsw i32 %i.bo, -2
  %i.ce = mul nsw i64 %i.bk, -4
  %i.cf = shl nuw nsw i64 %wide.trip.count363, 2
  %i.cg = add nsw i64 %i.cf, -4
  %i.ch = mul nsw i64 %i.cg, %i.bk                ; 3 uses
  %scevgep658 = getelementptr i8, ptr %i.al, i64 %i.ch
  %scevgep663.a = getelementptr i8, ptr %scevgep662, i64 %i.ch
  %scevgep666 = getelementptr i8, ptr %i.al, i64 %i.ch
  %i.ci = add nsw i64 %i.bn, -1
  %min.iters.check578 = icmp ult i16 %i.bi, 8
  %n.vec580 = and i64 %i.bk, 65528                ; 3 uses
  %cmp.n587 = icmp eq i64 %n.vec580, %i.bk
  %xtraiter719 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod720.not = icmp eq i64 %xtraiter719, 0
  %ident.check531.not = icmp eq i16 %i.bi, 1
  %ident.check506.not = icmp eq i16 %i.bi, 1
  %ident.check468 = icmp ne i16 %i.bi, 1
  %min.iters.check456 = icmp ult i16 %i.bg, 12
  %ident.check = icmp ne i16 %i.bi, 1
  %i.cj = trunc nsw i64 %i.bq to i32
  %i.ck = icmp ugt i64 %i.bq, 4294967295
  %invariant.op744.a = or i1 %i.ck, %ident.check
  %n.vec458 = and i64 %wide.trip.count363, 65528  ; 3 uses
  %cmp.n465 = icmp eq i64 %n.vec458, %wide.trip.count363
  %xtraiter721 = and i64 %wide.trip.count363, 1
  %lcmp.mod722.not = icmp eq i64 %xtraiter721, 0
  %i.cl = add nsw i64 %wide.trip.count363, -1
  br label %bb.f

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cm = load i16, ptr %gep, align 2, !tbaa !77
  %i.cn = zext i16 %i.cm to i32
  %i.co = shl i32 %i.cn, %i.s
  %i.cp = sitofp i32 %i.co to float
  %i.cq = tail call float @sqrtf(float noundef %i.cp) #11
  %i.cr = fmul float %i.cq, 2.560000e+02
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float %i.cr, ptr %i.cs, align 4, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ct = load i16, ptr %gep.1, align 2, !tbaa !77
  %i.cu = zext i16 %i.ct to i32
  %i.cv = shl i32 %i.cu, %i.s
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = tail call float @sqrtf(float noundef %i.cw) #11
  %i.cy = fmul float %i.cx, 2.560000e+02
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next
  store float %i.cy, ptr %i.cz, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader293.unr-lcssa, label %.lr.ph.new, !llvm.loop !111

.lr.ph323:                                        ; preds = %._crit_edge319
  %invariant.gep325 = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv391.a ; 5 uses
  %i.da = sext i32 %i.dx to i64
  %invariant.gep445.a = getelementptr [4 x i8], ptr %i.al, i64 %i.da ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph323, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph323 ] ; 7 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index
  %wide.load = load <4 x float>, ptr %i.db, align 4, !tbaa !9
  %i.dc = getelementptr [4 x i8], ptr %invariant.gep445.a, i64 %index
  %wide.load454 = load <4 x float>, ptr %i.dc, align 4, !tbaa !9
  %i.dd = fadd <4 x float> %wide.load, %wide.load454 ; 2 uses
  %i.de = fmul <4 x float> %i.dd, %i.dd
  %i.df = fmul <4 x float> %i.de, splat (float f0x37800000)
  %i.dg = fptosi <4 x float> %i.df to <4 x i32>
  %1 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dg, <4 x i32> zeroinitializer)
  %i.dh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %1, <4 x i32> splat (i32 65535))
  %i.di = trunc nuw <4 x i32> %i.dh to <4 x i16>  ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %index
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = extractelement <4 x i16> %i.di, i64 0
  store i16 %i.dq, ptr %i.dj, align 2, !tbaa !77
  %i.dr = extractelement <4 x i16> %i.di, i64 1
  store i16 %i.dr, ptr %i.dl, align 2, !tbaa !77
  %i.ds = extractelement <4 x i16> %i.di, i64 2
  store i16 %i.ds, ptr %i.dn, align 2, !tbaa !77
  %i.dt = extractelement <4 x i16> %i.di, i64 3
  store i16 %i.dt, ptr %i.dp, align 2, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge324, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph323, %middle.block
  %indvars.iv385.ph = phi i64 [ 0, %.lr.ph323 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.f:                                             ; preds = %.preheader293, %._crit_edge319
  %indvars.iv381.a = phi i64 [ 0, %.preheader293 ], [ %indvars.iv.next382, %._crit_edge319 ] ; 7 uses
  %.0229321 = phi i32 [ 0, %.preheader293 ], [ %i.dx, %._crit_edge319 ] ; 3 uses
  %i.dv = trunc nuw nsw i64 %indvars.iv381.a to i32 ; 5 uses
  %i.dw = and i32 %i.dv, 1
  %i.dx = shl nuw i32 %i.ae, %i.dw                ; 7 uses
  br i1 %.not347, label %.preheader291, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.f
  %i.dy = zext i32 %.0229321 to i64               ; 5 uses
  %i.dz = getelementptr [4 x i8], ptr %i.al, i64 %i.dy ; 2 uses
  %i.ea = shl nuw nsw i32 1, %i.dv                ; 8 uses
  %i.eb = zext nneg i32 %i.ea to i64              ; 25 uses
  %i.ec = shl nuw nsw i32 2, %i.dv
  %i.ed = icmp samesign ult i32 %i.ec, %i.bj
  %i.ee = shl nuw nsw i64 %i.eb, 1                ; 4 uses
  %invariant.op.i = sub nsw i64 %i.bk, %i.eb      ; 2 uses
  %i.ef = sext i32 %i.dx to i64                   ; 2 uses
  %invariant.gep439 = getelementptr [4 x i8], ptr %i.al, i64 %i.ef
  %i.eg = shl nsw i64 %i.ef, 2
  %i.eh = shl nuw nsw i64 %i.dy, 2                ; 4 uses
  %i.ei = add nuw nsw i64 %i.cb, %i.eh            ; 2 uses
  %i.ej = shl nuw nsw i64 %i.eb, 2                ; 4 uses
  %i.ek = sub nsw i64 %i.eh, %i.ej
  %i.el = sub nsw i64 %i.ei, %i.ej
  %reass.sub = sub nsw i64 %i.eh, %i.cb
  %i.em = shl nuw nsw i64 %i.dy, 2                ; 4 uses
  %i.en = sub nsw i64 %i.ax, %i.em
  %i.eo = add nuw nsw i64 %i.am, %i.eb
  %i.ep = sub nsw i64 %i.eo, %i.dy
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.dy, %i.eb
  %i.es = sub nsw i64 %i.am, %i.er
  %i.et = shl nsw i64 %i.es, 2
  %scevgep657 = getelementptr i8, ptr %scevgep656, i64 %i.ej ; 3 uses
  %i.eu = add nuw nsw i64 %i.em, %i.ej            ; 3 uses
  %scevgep659 = getelementptr i8, ptr %scevgep658, i64 %i.eu
  %scevgep661 = getelementptr i8, ptr %scevgep660, i64 %i.em
  %scevgep664 = getelementptr i8, ptr %scevgep663.a, i64 %i.eu
  %scevgep665 = getelementptr i8, ptr %i.al, i64 %i.eu
  %i.ev = shl nuw nsw i64 %i.eb, 3
  %i.ew = getelementptr i8, ptr %scevgep666, i64 %i.ev
  %scevgep667 = getelementptr i8, ptr %i.ew, i64 %i.em
  %i.ex = getelementptr i8, ptr %i.al, i64 %i.ei
  %i.ey = getelementptr i8, ptr %i.al, i64 %i.ek
  %i.ez = getelementptr i8, ptr %i.al, i64 %i.el
  %i.fa = getelementptr i8, ptr %i.al, i64 %reass.sub
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %i.fc = getelementptr i8, ptr %i.al, i64 %i.eh
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %min.iters.check680 = icmp samesign ult i64 %indvars.iv381.a, 3
  %bound0668 = icmp ult ptr %i.an, %scevgep659
  %bound1669 = icmp ult ptr %i.dz, %scevgep657
  %found.conflict670 = and i1 %bound0668, %bound1669
  %bound0671 = icmp ult ptr %i.an, %scevgep664
  %bound1672 = icmp ult ptr %scevgep661, %scevgep657
  %found.conflict673 = and i1 %bound0671, %bound1672
  %conflict.rdx674 = or i1 %found.conflict670, %found.conflict673
  %bound0675 = icmp ult ptr %i.an, %scevgep667
  %bound1676 = icmp ult ptr %scevgep665, %scevgep657
  %found.conflict677 = and i1 %bound0675, %bound1676
  %conflict.rdx678 = or i1 %conflict.rdx674, %found.conflict677
  %n.vec682 = and i64 %i.eb, 2147483640
  %xtraiter712 = and i64 %i.eb, 1
  %i.fe = icmp eq i64 %indvars.iv381.a, 0
  %unroll_iter715 = and i64 %i.eb, 2147483646
  %lcmp.mod713.not = icmp eq i64 %xtraiter712, 0
  %lcmp.mod714 = icmp eq i64 %indvars.iv381.a, 0
  %i.ff = add nuw nsw i64 %i.eb, 1
  %i.fg = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.ff)
  %i.fh = sub nsw i64 %i.fg, %i.eb                ; 3 uses
  %min.iters.check639 = icmp ult i64 %i.fh, 8
  %invariant.op729 = add i64 %i.en, -1
  %invariant.op730 = add i64 %i.eq, -1
  %invariant.op732 = add i64 %i.et, -1
  %n.vec641 = and i64 %i.fh, -8                   ; 4 uses
  %i.fi = add i64 %n.vec641, %i.eb                ; 2 uses
  %i.fj = add i64 %i.ee, %n.vec641
  %cmp.n652 = icmp eq i64 %i.fh, %n.vec641
  %invariant.op734.reass = add i64 %i.eg, %invariant.op748.a
  br label %bb.g

.preheader291:                                    ; preds = %._crit_edge, %bb.f
  br i1 %.not348, label %.lr.ph318, label %.lr.ph314

.lr.ph314:                                        ; preds = %.preheader291
  %i.fk = zext i32 %i.dx to i64                   ; 5 uses
  %i.fl = getelementptr [4 x i8], ptr %i.al, i64 %i.fk ; 2 uses
  %i.fm = shl nuw nsw i32 1, %i.dv                ; 6 uses
  %i.fn = zext nneg i32 %i.fm to i64              ; 21 uses
  %i.fo = shl nuw nsw i32 2, %i.dv
  %i.fp = icmp samesign ult i32 %i.fo, %i.bh
  %i.fq = shl nuw nsw i64 %i.fn, 1                ; 4 uses
  %invariant.op.i266 = sub nsw i64 %i.bl, %i.fn   ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fk, 2                ; 4 uses
  %i.fs = add nuw nsw i64 %i.bu, %i.fr            ; 2 uses
  %i.ft = shl nuw nsw i64 %i.fn, 2                ; 4 uses
  %i.fu = sub nsw i64 %i.fr, %i.ft
  %i.fv = sub nsw i64 %i.fs, %i.ft
  %reass.sub697 = sub nsw i64 %i.fr, %i.bu
  %i.fw = shl nuw nsw i64 %i.fk, 2                ; 4 uses
  %i.fx = sub nsw i64 %i.ax, %i.fw
  %i.fy = add nuw nsw i64 %i.am, %i.fn
  %i.fz = sub nsw i64 %i.fy, %i.fk
  %i.ga = shl nsw i64 %i.fz, 2
  %i.gb = add nuw nsw i64 %i.fk, %i.fn
  %i.gc = sub nsw i64 %i.am, %i.gb
  %i.gd = shl nsw i64 %i.gc, 2
  %scevgep534 = getelementptr i8, ptr %scevgep533, i64 %i.ft ; 3 uses
  %i.ge = add nuw nsw i64 %i.fw, %i.ft            ; 3 uses
  %scevgep537 = getelementptr i8, ptr %scevgep536, i64 %i.ge
  %scevgep539 = getelementptr i8, ptr %scevgep538, i64 %i.fw
  %scevgep541 = getelementptr i8, ptr %scevgep540.a, i64 %i.ge
  %scevgep542 = getelementptr i8, ptr %i.al, i64 %i.ge
  %i.gf = shl nuw nsw i64 %i.fn, 3
  %i.gg = getelementptr i8, ptr %scevgep544, i64 %i.gf
  %scevgep545 = getelementptr i8, ptr %i.gg, i64 %i.fw
  %i.gh = getelementptr i8, ptr %i.al, i64 %i.fs
  %i.gi = getelementptr i8, ptr %i.al, i64 %i.fu
  %i.gj = getelementptr i8, ptr %i.al, i64 %i.fv
  %i.gk = getelementptr i8, ptr %i.al, i64 %reass.sub697
  %i.gl = getelementptr i8, ptr %i.gk, i64 4
  %i.gm = getelementptr i8, ptr %i.al, i64 %i.fr
  %i.gn = getelementptr i8, ptr %i.gm, i64 4
  %min.iters.check558 = icmp samesign ugt i64 %indvars.iv381.a, 2
  %or.cond699 = select i1 %min.iters.check558, i1 %ident.check531.not, i1 false
  %bound0546 = icmp ult ptr %i.an, %scevgep537
  %bound1547 = icmp ult ptr %i.fl, %scevgep534
  %found.conflict548 = and i1 %bound0546, %bound1547
  %bound0549 = icmp ult ptr %i.an, %scevgep541
  %bound1550 = icmp ult ptr %scevgep539, %scevgep534
  %found.conflict551 = and i1 %bound0549, %bound1550
  %conflict.rdx552 = or i1 %found.conflict548, %found.conflict551
  %bound0553 = icmp ult ptr %i.an, %scevgep545
  %bound1554 = icmp ult ptr %scevgep542, %scevgep534
  %found.conflict555 = and i1 %bound0553, %bound1554
  %conflict.rdx556 = or i1 %conflict.rdx552, %found.conflict555
  %n.vec560 = and i64 %i.fn, 2147483640
  %i.go = add nuw nsw i64 %i.fn, 1
  %i.gp = tail call i64 @llvm.smax.i64(i64 %invariant.op.i266, i64 %i.go)
  %i.gq = sub nsw i64 %i.gp, %i.fn                ; 3 uses
  %min.iters.check514 = icmp ugt i64 %i.gq, 7
  %or.cond700 = select i1 %min.iters.check514, i1 %ident.check506.not, i1 false
  %invariant.op738 = add i64 %i.fx, -1
  %invariant.op740 = add i64 %i.ga, -1
  %invariant.op742 = add i64 %i.gd, -1
  %n.vec516 = and i64 %i.gq, -8                   ; 4 uses
  %i.gr = add i64 %n.vec516, %i.fn                ; 2 uses
  %i.gs = add i64 %i.fq, %n.vec516
  %cmp.n527 = icmp eq i64 %i.gq, %n.vec516
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph308, %._crit_edge
  %indvars.iv360 = phi i64 [ 0, %.lr.ph308 ], [ %indvars.iv.next361, %._crit_edge ] ; 5 uses
  %i.gt = mul i64 %i.ce, %indvars.iv360           ; 3 uses
  %i.gu = mul i64 %i.cc, %indvars.iv360           ; 5 uses
  %scevgep595 = getelementptr i8, ptr %i.ex, i64 %i.gu
  %scevgep596 = getelementptr i8, ptr %i.ey, i64 %i.gu
  %scevgep598.a = getelementptr i8, ptr %i.ez, i64 %i.gu
  %scevgep599 = getelementptr i8, ptr %i.fb, i64 %i.gu
  %scevgep601 = getelementptr i8, ptr %i.fd, i64 %i.gu
  %i.gv = mul i64 %i.bx, %indvars.iv360
  %i.gw = mul nuw nsw i64 %indvars.iv360, %i.bn   ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.gw ; 28 uses
  %invariant.gep302 = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.eb ; 4 uses
  %brmerge749 = select i1 %min.iters.check680, i1 true, i1 %conflict.rdx678
  br i1 %brmerge749, label %.lr.ph.i.preheader, label %vector.body683

.lr.ph.i.preheader:                               ; preds = %bb.g
  br i1 %i.fe, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.body683:                                   ; preds = %bb.g, %vector.body683
  %index684 = phi i64 [ %index.next693, %vector.body683 ], [ 0, %bb.g ] ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.rm
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !9
  %i.rp = sub nuw nsw i64 %indvars.iv64.i268, %i.fn
  %i.rq = mul nuw nsw i64 %i.rp, %i.bk
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.rq
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !9
  %i.rt = tail call float @llvm.fmuladd.f32(float %i.ro, float 2.000000e+00, float %i.rs)
  %i.ru = mul nuw nsw i64 %indvars.iv62.i269, %i.bk
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.ru
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !9
  %i.rx = fadd float %i.rt, %i.rw
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv64.i268
  store float %i.rx, ptr %i.ry, align 4, !tbaa !9
  %indvars.iv.next65.i270 = add nuw nsw i64 %indvars.iv64.i268, 1 ; 3 uses
  %i.rz = icmp slt i64 %indvars.iv.next65.i270, %invariant.op.i266
  %indvars.iv.next63.i271 = add nuw nsw i64 %indvars.iv62.i269, 1
  br i1 %i.rz, label %.lr.ph56.i267, label %.preheader.loopexit.i272, !llvm.loop !147

scalar.ph488:                                     ; preds = %scalar.ph488.preheader, %scalar.ph488
  %indvars.iv69.i262 = phi i64 [ %indvars.iv.next70.i263, %scalar.ph488 ], [ %indvars.iv69.i262.ph, %scalar.ph488.preheader ] ; 5 uses
  %i.sa = mul nsw i64 %indvars.iv69.i262, %i.bk
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.sa
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !9
  %i.sd = sub nsw i64 %indvars.iv69.i262, %i.fn
  %i.se = mul nsw i64 %i.sd, %i.bk
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.se
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !9
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.sc, float 2.000000e+00, float %i.sg)
  %i.si = trunc nsw i64 %indvars.iv69.i262 to i32
  %i.sj = add i32 %i.fm, %i.si
  %i.sk = sub i32 %invariant.op, %i.sj
  %i.sl = mul nsw i32 %i.sk, %i.bj
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.oe, i64 %i.sm
  %i.so = load float, ptr %i.sn, align 4, !tbaa !9
  %i.sp = fadd float %i.sh, %i.so
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i262
  store float %i.sp, ptr %i.sq, align 4, !tbaa !9
  %indvars.iv.next70.i263 = add nuw nsw i64 %indvars.iv69.i262, 1 ; 2 uses
  %exitcond73.not.i264 = icmp eq i64 %indvars.iv.next70.i263, %i.bl
  br i1 %exitcond73.not.i264, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit278, label %scalar.ph488, !llvm.loop !148

_ZN6LibRaw13hat_transformEPfS0_iii.exit278:       ; preds = %scalar.ph488, %middle.block502, %.preheader.i257
  br i1 %.not347, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %i.sr = trunc nuw nsw i64 %indvars.iv370 to i32
  %i.ss = add i32 %i.dx, %i.sr                    ; 6 uses
  br i1 %min.iters.check456, label %scalar.ph455.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph311
  %i.st = add i32 %i.ss, %i.cj
  %i.su = icmp slt i32 %i.st, %i.ss
  %.reass745 = or i1 %i.su, %invariant.op744.a
  %.reass747 = add nsw i64 %i.od, %invariant.op746.a
  %diff.check = icmp ult i64 %.reass747, 31
  %or.cond701 = select i1 %.reass745, i1 true, i1 %diff.check
  br i1 %or.cond701, label %scalar.ph455.preheader, label %vector.body459

vector.body459:                                   ; preds = %vector.scevcheck, %vector.body459
  %index460 = phi i64 [ %index.next463, %vector.body459 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index460 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %wide.load461 = load <4 x float>, ptr %i.sv, align 4, !tbaa !9
  %wide.load462 = load <4 x float>, ptr %i.sw, align 4, !tbaa !9
  %i.sx = fmul <4 x float> %wide.load461, splat (float 2.500000e-01)
  %i.sy = fmul <4 x float> %wide.load462, splat (float 2.500000e-01)
  %i.sz = trunc nuw nsw i64 %index460 to i32
  %i.ta = add i32 %i.ss, %i.sz
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tb ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  store <4 x float> %i.sx, ptr %i.tc, align 4, !tbaa !9
  store <4 x float> %i.sy, ptr %i.td, align 4, !tbaa !9
  %index.next463 = add nuw i64 %index460, 8       ; 2 uses
  %i.te = icmp eq i64 %index.next463, %n.vec458
  br i1 %i.te, label %middle.block464, label %vector.body459, !llvm.loop !149

middle.block464:                                  ; preds = %vector.body459
  br i1 %cmp.n465, label %._crit_edge312, label %scalar.ph455.preheader

scalar.ph455.preheader:                           ; preds = %vector.scevcheck, %.lr.ph311, %middle.block464
  %indvars.iv365.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph311 ], [ %n.vec458, %middle.block464 ] ; 5 uses
  br i1 %lcmp.mod722.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol

scalar.ph455.prol:                                ; preds = %scalar.ph455.preheader
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365.ph
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !9
  %i.th = fmul float %i.tg, 2.500000e-01
  %i.ti = mul nuw nsw i64 %indvars.iv365.ph, %i.bn
  %i.tj = trunc nuw nsw i64 %i.ti to i32
  %i.tk = add i32 %i.ss, %i.tj
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tl
  store float %i.th, ptr %i.tm, align 4, !tbaa !9
  %indvars.iv.next366.prol = or disjoint i64 %indvars.iv365.ph, 1
  br label %scalar.ph455.prol.loopexit

scalar.ph455.prol.loopexit:                       ; preds = %scalar.ph455.prol, %scalar.ph455.preheader
  %indvars.iv365.unr = phi i64 [ %indvars.iv365.ph, %scalar.ph455.preheader ], [ %indvars.iv.next366.prol, %scalar.ph455.prol ]
  %i.tn = icmp eq i64 %indvars.iv365.ph, %i.cl
  br i1 %i.tn, label %._crit_edge312, label %scalar.ph455

scalar.ph455:                                     ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455
  %indvars.iv365 = phi i64 [ %indvars.iv.next366.1, %scalar.ph455 ], [ %indvars.iv365.unr, %scalar.ph455.prol.loopexit ] ; 4 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv365
  %i.tp = load float, ptr %i.to, align 4, !tbaa !9
  %i.tq = fmul float %i.tp, 2.500000e-01
  %i.tr = mul nuw nsw i64 %indvars.iv365, %i.bn
  %i.ts = trunc nuw nsw i64 %i.tr to i32
  %i.tt = add i32 %i.ss, %i.ts
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tu
  store float %i.tq, ptr %i.tv, align 4, !tbaa !9
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next366
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !9
  %i.ty = fmul float %i.tx, 2.500000e-01
  %i.tz = mul nuw nsw i64 %indvars.iv.next366, %i.bn
  %i.ua = trunc nuw nsw i64 %i.tz to i32
  %i.ub = add i32 %i.ss, %i.ua
  %i.uc = sext i32 %i.ub to i64
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.uc
  store float %i.ty, ptr %i.ud, align 4, !tbaa !9
  %indvars.iv.next366.1 = add nuw nsw i64 %indvars.iv365, 2 ; 2 uses
  %exitcond369.not.1 = icmp eq i64 %indvars.iv.next366.1, %wide.trip.count368
  br i1 %exitcond369.not.1, label %._crit_edge312, label %scalar.ph455, !llvm.loop !150

._crit_edge312:                                   ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455, %middle.block464, %_ZN6LibRaw13hat_transformEPfS0_iii.exit278
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count373
  br i1 %exitcond374.not, label %.lr.ph318, label %bb.h, !llvm.loop !151

.lr.ph318:                                        ; preds = %._crit_edge312, %.preheader291
  %i.ue = load float, ptr %i.au, align 4, !tbaa !185
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw15wavelet_denoiseEvE5noise, i64 %indvars.iv381.a
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !9
  %i.uh = fmul float %i.ue, %i.ug                 ; 4 uses
  %i.ui = fneg float %i.uh
  %.not252 = icmp eq i32 %.0229321, 0
  %i.uj = sext i32 %i.dx to i64
  %i.uk = sext i32 %.0229321 to i64
  %invariant.gep441 = getelementptr [4 x i8], ptr %i.al, i64 %i.uj
  %invariant.gep443 = getelementptr [4 x i8], ptr %i.al, i64 %i.uk
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph318, %bb.o
  %indvars.iv375 = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next376, %bb.o ] ; 4 uses
  %gep442 = getelementptr [4 x i8], ptr %invariant.gep441, i64 %indvars.iv375
  %i.ul = load float, ptr %gep442, align 4, !tbaa !9
  %gep444 = getelementptr [4 x i8], ptr %invariant.gep443, i64 %indvars.iv375 ; 2 uses
  %i.um = load float, ptr %gep444, align 4, !tbaa !9
  %i.un = fsub float %i.um, %i.ul                 ; 4 uses
  %i.uo = fcmp olt float %i.un, %i.ui
  br i1 %i.uo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.up = fadd float %i.uh, %i.un
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.uq = fcmp ogt float %i.un, %i.uh
  br i1 %i.uq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ur = fsub float %i.un, %i.uh
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sink = phi float [ %i.ur, %bb.l ], [ %i.up, %bb.j ], [ 0.000000e+00, %bb.k ] ; 2 uses
  store float %.sink, ptr %gep444, align 4, !tbaa !9
  br i1 %.not252, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv375 ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !9
  %i.uu = fadd float %.sink, %i.ut
  store float %i.uu, ptr %i.us, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count379.a
  br i1 %exitcond380.not, label %._crit_edge319, label %bb.i, !llvm.loop !152

._crit_edge319:                                   ; preds = %bb.o
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381.a, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next382, 5
  br i1 %exitcond384.not, label %.lr.ph323, label %bb.f, !llvm.loop !153

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %scalar.ph ], [ %indvars.iv385.ph, %scalar.ph.preheader ] ; 4 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv385
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !9
  %gep446 = getelementptr [4 x i8], ptr %invariant.gep445.a, i64 %indvars.iv385
  %i.ux = load float, ptr %gep446, align 4, !tbaa !9
  %i.uy = fadd float %i.uw, %i.ux                 ; 2 uses
  %i.uz = fmul float %i.uy, %i.uy
  %i.va = fmul float %i.uz, f0x37800000
  %i.vb = fptosi float %i.va to i32
  %2 = tail call i32 @llvm.smax.i32(i32 %i.vb, i32 0)
  %i.vc = tail call i32 @llvm.umin.i32(i32 %2, i32 65535)
  %i.vd = trunc nuw i32 %i.vc to i16
  %gep326 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep325, i64 %indvars.iv385
  store i16 %i.vd, ptr %gep326, align 2, !tbaa !77
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count389
  br i1 %exitcond390.not, label %._crit_edge324, label %scalar.ph, !llvm.loop !154

._crit_edge324:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391.a, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %._crit_edge328, label %.lr.ph, !llvm.loop !155

._crit_edge328:                                   ; preds = %._crit_edge324
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.vf = load i32, ptr %i.ve, align 8, !tbaa !164 ; 8 uses
  %.not250 = icmp eq i32 %i.vf, 0
  %brmerge = or i1 %i.aq, %.not250
  br i1 %brmerge, label %.loopexit288, label %.preheader290

.preheader290:                                    ; preds = %._crit_edge328
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.vh = lshr i32 %i.vf, 4
  %i.vi = and i32 %i.vh, 2                        ; 2 uses
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vm = load float, ptr %i.vl, align 8, !tbaa !9 ; 2 uses
  %i.vn = and i32 %i.vf, 2
  %i.vo = or disjoint i32 %i.vn, 1
  %i.vp = zext nneg i32 %i.vo to i64              ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vp
  %i.vr = load float, ptr %i.vq, align 8, !tbaa !9
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.vp
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !74
  store i32 %i.vt, ptr %i.b, align 4, !tbaa !74
  %i.vu = lshr i32 %i.vf, 8
  %i.vv = and i32 %i.vu, 2
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.vz = load float, ptr %i.vy, align 8, !tbaa !9
  %i.wa = insertelement <2 x float> poison, float %i.vm, i64 0
  %i.wb = insertelement <2 x float> %i.wa, float %i.vz, i64 1
  %i.wc = fmul <2 x float> %i.wb, splat (float 1.250000e-01)
  %i.wd = insertelement <2 x float> poison, float %i.vr, i64 0
  %i.we = insertelement <2 x float> %i.wd, float %i.vm, i64 1
  %i.wf = fdiv <2 x float> %i.wc, %i.we
  store <2 x float> %i.wf, ptr %i.a, align 8, !tbaa !9
  %i.wg = zext nneg i32 %i.vi to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 4
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !74
  %i.wk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.wj, ptr %i.wk, align 4, !tbaa !74
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.wn = load i16, ptr %i.wm, align 4, !tbaa !79
  %i.wo = icmp ugt i16 %i.wn, 2
  br i1 %i.wo, label %.preheader.lr.ph, label %.loopexit288

.preheader.lr.ph:                                 ; preds = %.preheader290
  %i.wp = load i16, ptr %i.wl, align 2, !tbaa !80 ; 2 uses
  %i.wq = zext i16 %i.wp to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.wq, 2
  %i.wr = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.ws = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.wq
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !185
  %i.ww = fmul float %i.wv, f0x3B000000           ; 4 uses
  %i.wx = fneg float %i.ww
  br label %.preheader

.loopexit286:                                     ; preds = %bb.w, %._crit_edge338
  %i.wy = phi i16 [ %i.yo, %._crit_edge338 ], [ %i.abu, %bb.w ]
  %i.wz = load i16, ptr %i.wm, align 4, !tbaa !79
  %i.xa = zext i16 %i.wz to i32
  %i.xb = add nsw i32 %i.xa, -1
  %i.xc = icmp slt i32 %.pre, %i.xb
  br i1 %i.xc, label %.preheader, label %.loopexit288, !llvm.loop !156

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit286
  %i.xd = phi i16 [ %i.wp, %.preheader.lr.ph ], [ %i.wy, %.loopexit286 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.wr, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit286 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.ws, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit286 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit286 ] ; 2 uses
  %.0343 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit286 ] ; 3 uses
  %.3226342 = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre, %.loopexit286 ] ; 6 uses
  %.not251335 = icmp sgt i32 %.0343, %.3226342
  %.pre = add nuw i32 %.3226342, 1                ; 3 uses
  br i1 %.not251335, label %._crit_edge338, label %.lr.ph337

.loopexit:                                        ; preds = %bb.p, %.lr.ph337
  %i.xe = phi i16 [ %i.xg, %.lr.ph337 ], [ %i.yl, %bb.p ] ; 2 uses
  %i.xf = phi i16 [ %i.xh, %.lr.ph337 ], [ %i.yl, %bb.p ]
  %exitcond410.not = icmp eq i32 %.1336, %.3226342
  br i1 %exitcond410.not, label %._crit_edge338, label %.lr.ph337, !llvm.loop !157

.lr.ph337:                                        ; preds = %.preheader, %.loopexit
  %i.xg = phi i16 [ %i.xe, %.loopexit ], [ %i.xd, %.preheader ]
  %i.xh = phi i16 [ %i.xf, %.loopexit ], [ %i.xd, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1336 = phi i32 [ %i.xi, %.loopexit ], [ %.0343, %.preheader ] ; 2 uses
  %i.xi = add nsw i32 %.1336, 1                   ; 3 uses
  %i.xj = shl i32 %i.xi, 1
  %i.xk = and i32 %i.xj, 14                       ; 2 uses
  %i.xl = shl nuw nsw i32 %i.xk, 1
  %i.xm = or disjoint i32 %i.xl, 2
  %i.xn = lshr i32 %i.vf, %i.xm                   ; 2 uses
  %i.xo = and i32 %i.xn, 1                        ; 2 uses
  %i.xp = zext i16 %i.xh to i32
  %i.xq = icmp samesign ult i32 %i.xo, %i.xp
  br i1 %i.xq, label %.lr.ph334, label %.loopexit

.lr.ph334:                                        ; preds = %.lr.ph337
  %i.xr = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.xs = and i32 %i.xn, 1
  %i.xt = zext nneg i32 %i.xs to i64
  %i.xu = or disjoint i32 %i.xo, %i.xk
  %i.xv = shl nuw nsw i32 %i.xu, 1
  %i.xw = lshr i32 %i.vf, %i.xv
  %i.xx = and i32 %i.xw, 3
  %i.xy = zext nneg i32 %i.xx to i64
  %invariant.gep447 = getelementptr [2 x i8], ptr %i.xr, i64 %i.xy
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph334, %bb.p
  %indvars.iv407 = phi i64 [ %i.xt, %.lr.ph334 ], [ %indvars.iv.next408, %bb.p ] ; 3 uses
  %i.xz = load i16, ptr %i.wt, align 4, !tbaa !81
  %i.ya = zext i16 %i.xz to i32                   ; 2 uses
  %i.yb = ashr i32 %i.xi, %i.ya
  %i.yc = load i16, ptr %i.d, align 2, !tbaa !160
  %i.yd = zext i16 %i.yc to i32
  %i.ye = mul nsw i32 %i.yb, %i.yd
  %i.yf = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.yg = lshr i32 %i.yf, %i.ya
  %i.yh = add nsw i32 %i.ye, %i.yg
  %i.yi = sext i32 %i.yh to i64
  %gep448 = getelementptr [8 x i8], ptr %invariant.gep447, i64 %i.yi
  %i.yj = load i16, ptr %gep448, align 2, !tbaa !77
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv407
  store i16 %i.yj, ptr %i.yk, align 2, !tbaa !77
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 2 ; 2 uses
  %i.yl = load i16, ptr %i.wl, align 2, !tbaa !80 ; 3 uses
  %i.ym = zext i16 %i.yl to i64
  %i.yn = icmp samesign ult i64 %indvars.iv.next408, %i.ym
  br i1 %i.yn, label %bb.p, label %.loopexit, !llvm.loop !158

._crit_edge338:                                   ; preds = %.loopexit, %.preheader
  %i.yo = phi i16 [ %i.xd, %.preheader ], [ %i.xe, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0343, %.preheader ], [ %.pre, %.loopexit ]
  %i.yp = shl nuw nsw i32 %.3226342, 1
  %i.yq = and i32 %i.yp, 14                       ; 2 uses
  %i.yr = shl nuw nsw i32 %i.yq, 1
  %i.ys = lshr i32 %i.vf, %i.yr                   ; 3 uses
  %i.yt = and i32 %i.ys, 1
  %i.yu = add nuw nsw i32 %i.yt, 1
  %i.yv = zext i16 %i.yo to i32
  %i.yw = add nsw i32 %i.yv, -1
  %i.yx = icmp slt i32 %i.yu, %i.yw
  br i1 %i.yx, label %.lr.ph341, label %.loopexit286

.lr.ph341:                                        ; preds = %._crit_edge338
  %i.yy = and i32 %.3226342, 1                    ; 2 uses
  %i.yz = xor i32 %i.yy, 1
  %i.za = zext nneg i32 %i.yz to i64
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.za
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !74
  %i.zd = zext nneg i32 %i.yy to i64              ; 2 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.zd
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !9
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.zd
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !74
  %i.zi = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.zj = and i32 %i.ys, 1
  %i.zk = and i32 %i.ys, 1
  %narrow = add nuw nsw i32 %i.zk, 1
  %i.zl = zext nneg i32 %narrow to i64
  %i.zm = shl i32 %i.zc, 2
  %i.zn = or disjoint i32 %i.zj, %i.yq
  %i.zo = shl nuw nsw i32 %i.zn, 1
  %i.zp = xor i32 %i.zo, 2
  %i.zq = lshr i32 %i.vf, %i.zp
  %i.zr = and i32 %i.zq, 3
  %i.zs = zext nneg i32 %i.zr to i64
  %invariant.gep449 = getelementptr inbounds nuw [2 x i8], ptr %i.zi, i64 %i.zs
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph341, %bb.w
  %indvars.iv411 = phi i64 [ %i.zl, %.lr.ph341 ], [ %indvars.iv.next412, %bb.w ] ; 5 uses
  %i.zt = add nsw i64 %indvars.iv411, -1          ; 2 uses
  %i.zu = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.zt
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !77
  %i.zw = zext i16 %i.zv to i32
  %i.zx = add nuw nsw i64 %indvars.iv411, 1       ; 2 uses
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.zx
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !77
  %i.aaa = zext i16 %i.zz to i32
  %i.aab = add nuw nsw i32 %i.aaa, %i.zw
  %i.aac = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.zt
  %i.aad = load i16, ptr %i.aac, align 2, !tbaa !77
  %i.aae = zext i16 %i.aad to i32
  %i.aaf = add nuw nsw i32 %i.aab, %i.aae
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.zx
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !77
  %i.aai = zext i16 %i.aah to i32
  %i.aaj = add nuw nsw i32 %i.aaf, %i.aai
  %i.aak = sub i32 %i.aaj, %i.zm
  %i.aal = sitofp i32 %i.aak to float
  %i.aam = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv411
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !77
  %i.aao = zext i16 %i.aan to i32
  %i.aap = add nsw i32 %i.zh, %i.aao
  %i.aaq = sitofp i32 %i.aap to float
  %i.aar = fmul nnan float %i.aaq, 5.000000e-01
  %i.aas = tail call float @llvm.fmuladd.f32(float %i.aal, float %i.zf, float %i.aar) ; 2 uses
  %i.aat = fcmp olt float %i.aas, 0.000000e+00
  br i1 %i.aat, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aau = tail call noundef float @sqrtf(float noundef %i.aas) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.aav = phi float [ %i.aau, %bb.r ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.aaw = load i16, ptr %i.wt, align 4, !tbaa !81
  %i.aax = zext i16 %i.aaw to i32                 ; 2 uses
  %i.aay = lshr i32 %.3226342, %i.aax
  %i.aaz = load i16, ptr %i.d, align 2, !tbaa !160
  %i.aba = zext i16 %i.aaz to i32
  %i.abb = mul nuw nsw i32 %i.aay, %i.aba
  %i.abc = trunc nuw nsw i64 %indvars.iv411 to i32
  %i.abd = lshr i32 %i.abc, %i.aax
  %i.abe = add nuw nsw i32 %i.abb, %i.abd
  %i.abf = zext nneg i32 %i.abe to i64
  %gep450 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep449, i64 %i.abf ; 2 uses
  %i.abg = load i16, ptr %gep450, align 2, !tbaa !77
  %i.abh = uitofp i16 %i.abg to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.abh)
  %i.abi = fsub float %sqrt, %i.aav               ; 4 uses
  %i.abj = fcmp olt float %i.abi, %i.wx
  br i1 %i.abj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.abk = fadd float %i.ww, %i.abi
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.abl = fcmp ogt float %i.abi, %i.ww
  br i1 %i.abl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.abm = fsub float %i.abi, %i.ww
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.0232 = phi float [ %i.abk, %bb.t ], [ %i.abm, %bb.v ], [ 0.000000e+00, %bb.u ]
  %i.abn = fadd float %i.aav, %.0232              ; 2 uses
  %i.abo = fmul float %i.abn, %i.abn
  %i.abp = fpext float %i.abo to double
  %i.abq = fadd double %i.abp, 5.000000e-01
  %i.abr = fptosi double %i.abq to i32
  %3 = tail call i32 @llvm.smax.i32(i32 %i.abr, i32 0)
  %i.abs = tail call i32 @llvm.umin.i32(i32 %3, i32 65535)
  %i.abt = trunc nuw i32 %i.abs to i16
  store i16 %i.abt, ptr %gep450, align 2, !tbaa !77
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 2 ; 2 uses
  %i.abu = load i16, ptr %i.wl, align 2, !tbaa !80 ; 2 uses
  %i.abv = zext i16 %i.abu to i64
  %i.abw = add nsw i64 %i.abv, -1
  %i.abx = icmp slt i64 %indvars.iv.next412, %i.abw
  br i1 %i.abx, label %bb.q, label %.loopexit286, !llvm.loop !159

.loopexit288:                                     ; preds = %.loopexit286, %bb.e, %.preheader290, %._crit_edge328
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.al)
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.b, %.loopexit288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13median_filterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5484 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !191  ; 2 uses
  %.not79 = icmp slt i32 %i.d, 1
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %._crit_edge77.1
  %i.j = phi i32 [ %i.d, %.lr.ph82 ], [ %i.hp, %._crit_edge77.1 ]
  %.04880 = phi i32 [ 1, %.lr.ph82 ], [ %i.ho, %._crit_edge77.1 ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.m = add nsw i32 %.04880, -1
  %i.n = tail call noundef i32 %i.k(ptr noundef %i.l, i32 noundef 8192, i32 noundef %i.m, i32 noundef %i.j)
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 6, ptr %i.o, align 16, !tbaa !85
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !76   ; 9 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = load i16, ptr %i.g, align 2, !tbaa !80   ; 2 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = load i16, ptr %i.h, align 4, !tbaa !79   ; 2 uses
  %i.u = zext i16 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.s
  %.not84 = icmp eq i64 %i.v, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.04965 = phi ptr [ %i.y, %.lr.ph ], [ %i.p, %bb.e ] ; 3 uses
  %i.w = load i16, ptr %.04965, align 2, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %.04965, i64 6
  store i16 %i.w, ptr %i.x, align 2, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %.04965, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.g, align 2, !tbaa !80   ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = load i16, ptr %i.h, align 4, !tbaa !79  ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.af = icmp ult ptr %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.pre-phi = phi i64 [ %i.s, %bb.e ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ag = phi i16 [ %i.t, %bb.e ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.ah = phi i16 [ %i.r, %bb.e ], [ %i.z, %.lr.ph ] ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = zext i16 %i.ag to i32
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %.pre-phi, %i.am
  br i1 %i.an, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph76, %bb.j
  %i.ap = phi i16 [ %i.ag, %.lr.ph76 ], [ %i.df, %bb.j ]
  %i.aq = phi i16 [ %i.ah, %.lr.ph76 ], [ %i.dg, %bb.j ] ; 2 uses
  %i.ar = phi i32 [ %i.ai, %.lr.ph76 ], [ %i.di, %bb.j ] ; 4 uses
  %.15074 = phi ptr [ %i.ao, %.lr.ph76 ], [ %i.dh, %bb.j ] ; 7 uses
  %i.as = ptrtoint ptr %.15074 to i64
  %i.at = sub i64 %i.as, %i.q
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 1
  %i.aw = zext i16 %i.aq to i64
  %i.ax = srem i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, 2
  br i1 %i.ay, label %bb.j, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %bb.f
  %i.az = sub nsw i32 0, %i.ar
  %narrow = xor i32 %i.ar, -1
  %i.ba = sext i32 %narrow to i64
  %i.bb = zext nneg i32 %i.ar to i64
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %indvars.iv = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next95, %.lr.ph72 ] ; 4 uses
  %indvars.iv86 = phi i64 [ %i.ba, %.lr.ph72.preheader ], [ %indvars.iv.next87, %.lr.ph72 ] ; 4 uses
  %.04569 = phi i32 [ %i.az, %.lr.ph72.preheader ], [ %i.cf, %.lr.ph72 ] ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !77
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !77
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !74
  %i.bl = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 14
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !77
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr i8, ptr %i.bl, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !77
  %i.br = zext i16 %i.bq to i32
  %i.bs = sub nsw i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !74
  %i.bv = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 22
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !77
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bv, i64 18
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !77
  %i.cb = zext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !74
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv, 3
  %i.cf = add nsw i32 %.04569, %i.ar
  %.not59 = icmp sgt i32 %.04569, 0
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, %i.bb
  br i1 %.not59, label %.preheader, label %.lr.ph72, !llvm.loop !187

.preheader:                                       ; preds = %.lr.ph72, %bb.h
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.h ], [ 0, %.lr.ph72 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw13median_filterEvE3opt, i64 %indvars.iv97 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !192
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !74 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !192
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cn ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !74 ; 2 uses
  %i.cq = icmp sgt i32 %i.ck, %i.cp
  br i1 %i.cq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.cr = add nsw i32 %i.cp, %i.ck                ; 2 uses
  store i32 %i.cr, ptr %i.cj, align 4, !tbaa !74
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !74
  %i.ct = sub nsw i32 %i.cr, %i.cs                ; 2 uses
  store i32 %i.ct, ptr %i.co, align 4, !tbaa !74
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !74
  %i.cv = sub nsw i32 %i.cu, %i.ct
  store i32 %i.cv, ptr %i.cj, align 4, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 2
  %i.cw = icmp samesign ult i64 %indvars.iv97, 36
  br i1 %i.cw, label %.preheader, label %bb.i, !llvm.loop !188
end_hunk_2
begin_hunk_3_@_ZN6LibRaw18recover_highlightsEv:bb.a
pred.store.if483:                                 ; preds = %pred.store.continue482
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index470
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  store float 1.000000e+00, ptr %i.jb, align 4, !tbaa !9
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  %i.jc = extractelement <4 x i1> %i.ii, i64 3
  br i1 %i.jc, label %pred.store.if485, label %pred.store.continue486

pred.store.if485:                                 ; preds = %pred.store.continue484
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index470
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 28
  store float 1.000000e+00, ptr %i.je, align 4, !tbaa !9
  br label %pred.store.continue486

pred.store.continue486:                           ; preds = %pred.store.if485, %pred.store.continue484
  %index.next487 = add nuw i64 %index470, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next487, %n.vec468
  br i1 %i.jf, label %middle.block488, label %vector.body469, !llvm.loop !226

middle.block488:                                  ; preds = %pred.store.continue486
  br i1 %cmp.n489, label %.preheader206, label %.lr.ph262.preheader524

.lr.ph262.preheader524:                           ; preds = %.lr.ph262.preheader, %middle.block488
  %indvars.iv354.ph = phi i64 [ 0, %.lr.ph262.preheader ], [ %n.vec468, %middle.block488 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.ae, %middle.block488, %._crit_edge463
  br i1 %.not285, label %.loopexit, label %.preheader202.lr.ph

.preheader202.lr.ph:                              ; preds = %.preheader206
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %.loopexit, label %.preheader202.preheader

.preheader202.preheader:                          ; preds = %.preheader202.lr.ph
  %.pre372.pre = load i16, ptr %i.av, align 4, !tbaa !81
  br label %.preheader202

.lr.ph262:                                        ; preds = %.lr.ph262.preheader524, %bb.ae
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.ae ], [ %indvars.iv354.ph, %.lr.ph262.preheader524 ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv354 ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !9
  %i.jj = fcmp oeq float %i.ji, 0.000000e+00
  br i1 %i.jj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph262
  store float 1.000000e+00, ptr %i.jh, align 4, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph262, %bb.ad
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %i.bm
  br i1 %exitcond358.not, label %.preheader206, label %.lr.ph262, !llvm.loop !227

.preheader202:                                    ; preds = %.preheader202.preheader, %._crit_edge273
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372376, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.jk = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.jl = mul nuw nsw i64 %indvars.iv364, %i.br
  %invariant.gep456 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.jl
  br label %bb.af

bb.af:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372381 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372376, %._crit_edge270 ] ; 2 uses
  %i.jm = phi i16 [ %.pre372, %.preheader202 ], [ %i.lo, %._crit_edge270 ] ; 2 uses
  %i.jn = phi i16 [ %.pre372, %.preheader202 ], [ %i.lp, %._crit_edge270 ] ; 3 uses
  %indvars.iv359 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next360, %._crit_edge270 ] ; 3 uses
  %indvars361 = trunc i64 %indvars.iv359 to i32   ; 2 uses
  %i.jo = zext nneg i16 %i.jn to i32
  %i.jp = lshr i32 4, %i.jo                       ; 3 uses
  %i.jq = mul i32 %i.jp, %indvars366              ; 2 uses
  %i.jr = mul i32 %i.jp, %i.jk
  %i.js = icmp ult i32 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.af
  %i.jt = add nuw nsw i32 %indvars361, 1          ; 2 uses
  %gep457 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep456, i64 %indvars.iv359
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372380 = phi i16 [ %.pre372381, %.lr.ph269 ], [ %.pre372377, %._crit_edge266 ] ; 2 uses
  %i.ju = phi i16 [ %i.jm, %.lr.ph269 ], [ %i.li, %._crit_edge266 ] ; 2 uses
  %i.jv = phi i16 [ %i.jn, %.lr.ph269 ], [ %i.li, %._crit_edge266 ] ; 2 uses
  %i.jw = phi i32 [ %i.jp, %.lr.ph269 ], [ %i.ll, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.jq, %.lr.ph269 ], [ %i.lj, %._crit_edge266 ] ; 2 uses
  %i.jx = mul i32 %i.jw, %indvars361              ; 2 uses
  %i.jy = zext nneg i16 %i.jv to i32
  %i.jz = lshr i32 4, %i.jy
  %i.ka = mul i32 %i.jz, %i.jt
  %i.kb = icmp ult i32 %i.jx, %i.ka
  br i1 %i.kb, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.ag
  %i.kc = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.kd = load i32, ptr %i.jg, align 4, !tbaa !74
  %.pre374 = load i16, ptr %i.ba, align 2, !tbaa !80
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph265, %bb.ak
  %.pre372379 = phi i16 [ %.pre372380, %.lr.ph265 ], [ %.pre372378, %bb.ak ] ; 2 uses
  %i.ke = phi i16 [ %i.ju, %.lr.ph265 ], [ %i.la, %bb.ak ] ; 2 uses
  %i.kf = phi i16 [ %i.jv, %.lr.ph265 ], [ %i.lb, %bb.ak ] ; 2 uses
  %i.kg = phi i16 [ %.pre374, %.lr.ph265 ], [ %i.lc, %bb.ak ] ; 3 uses
  %.1159263 = phi i32 [ %i.jx, %.lr.ph265 ], [ %i.ld, %bb.ak ] ; 2 uses
  %i.kh = zext i16 %i.kg to i32
  %i.ki = mul i32 %.1161267, %i.kh
  %i.kj = add i32 %i.ki, %.1159263
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %indvars.iv369 ; 2 uses
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !77
  %i.ko = zext i16 %i.kn to i32                   ; 2 uses
  %i.kp = sdiv i32 %i.ko, %i.kd
  %i.kq = icmp sgt i32 %i.kp, 1
  br i1 %i.kq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %.0156.lcssa
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !77
  %i.kt = uitofp i16 %i.ks to float
  %i.ku = load float, ptr %gep457, align 4, !tbaa !9
  %i.kv = fmul float %i.ku, %i.kt
  %i.kw = fptosi float %i.kv to i32               ; 2 uses
  %i.kx = icmp slt i32 %i.ko, %i.kw
  br i1 %i.kx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ky = tail call i32 @llvm.umin.i32(i32 %i.kw, i32 65535)
  %i.kz = trunc nuw i32 %i.ky to i16
  store i16 %i.kz, ptr %i.km, align 2, !tbaa !77
  %.pre373 = load i16, ptr %i.ba, align 2, !tbaa !80
  %.pre375 = load i16, ptr %i.av, align 4, !tbaa !81 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai
  %.pre372378 = phi i16 [ %.pre372379, %bb.ah ], [ %.pre375, %bb.aj ], [ %.pre372379, %bb.ai ] ; 2 uses
  %i.la = phi i16 [ %i.ke, %bb.ah ], [ %.pre375, %bb.aj ], [ %i.ke, %bb.ai ] ; 2 uses
  %i.lb = phi i16 [ %i.kf, %bb.ah ], [ %.pre375, %bb.aj ], [ %i.kf, %bb.ai ] ; 2 uses
  %i.lc = phi i16 [ %i.kg, %bb.ah ], [ %.pre373, %bb.aj ], [ %i.kg, %bb.ai ]
  %i.ld = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.le = zext nneg i16 %i.lb to i32
  %i.lf = lshr i32 4, %i.le
  %i.lg = mul i32 %i.lf, %i.jt
  %i.lh = icmp samesign ult i32 %i.ld, %i.lg
  br i1 %i.lh, label %bb.ah, label %._crit_edge266, !llvm.loop !228

._crit_edge266:                                   ; preds = %bb.ak, %bb.ag
  %.pre372377 = phi i16 [ %.pre372380, %bb.ag ], [ %.pre372378, %bb.ak ] ; 2 uses
  %i.li = phi i16 [ %i.ju, %bb.ag ], [ %i.la, %bb.ak ] ; 5 uses
  %i.lj = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.lk = zext nneg i16 %i.li to i32
  %i.ll = lshr i32 4, %i.lk                       ; 2 uses
  %i.lm = mul i32 %i.ll, %i.jk
  %i.ln = icmp samesign ult i32 %i.lj, %i.lm
  br i1 %i.ln, label %bb.ag, label %._crit_edge270, !llvm.loop !229

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.af
  %.pre372376 = phi i16 [ %.pre372381, %bb.af ], [ %.pre372377, %._crit_edge266 ] ; 2 uses
  %i.lo = phi i16 [ %i.jm, %bb.af ], [ %i.li, %._crit_edge266 ]
  %i.lp = phi i16 [ %i.jn, %bb.af ], [ %i.li, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.br
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.af, !llvm.loop !230

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.be
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !231

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.d
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.lq = load i32, ptr %i.f, align 4, !tbaa !75  ; 2 uses
  %i.lr = zext i32 %i.lq to i64
  %i.ls = icmp samesign ult i64 %indvars.iv.next370, %i.lr
  br i1 %i.ls, label %bb.d, label %._crit_edge279, !llvm.loop !232

._crit_edge279:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bh)
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph213, %._crit_edge279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float, i32) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32>, <4 x i1>, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!"short", !4, i64 0}
!16 = !{!"double", !4, i64 0}
!17 = !{!"_ZTS20libraw_image_sizes_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !5, i64 16, !16, i64 24, !5, i64 32, !4, i64 36, !15, i64 164, !4, i64 166}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !18, i64 432}
!20 = !{!"_ZTS18libraw_nikonlens_t", !8, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!22 = !{!"long long", !4, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !4, i64 8, !15, i64 136, !15, i64 138, !22, i64 144, !15, i64 152, !15, i64 154, !4, i64 156, !15, i64 220, !4, i64 222, !4, i64 238, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !22, i64 320, !4, i64 328, !22, i64 456, !4, i64 464, !22, i64 592, !4, i64 600, !15, i64 728, !8, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !15, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !15, i64 52, !15, i64 54, !4, i64 56, !15, i64 58, !15, i64 60, !15, i64 62, !15, i64 64, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !5, i64 84, !8, i64 88, !15, i64 92, !15, i64 94, !15, i64 96, !15, i64 98, !5, i64 100, !15, i64 104, !5, i64 108, !5, i64 112, !15, i64 116, !5, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !4, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !16, i64 0, !15, i64 8, !15, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !15, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !15, i64 170, !27, i64 172, !15, i64 180, !15, i64 182, !15, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !18, i64 256, !15, i64 264, !15, i64 266, !4, i64 268, !15, i64 270, !16, i64 272, !16, i64 280, !16, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !16, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !8, i64 0, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !4, i64 20, !4, i64 53, !8, i64 88, !15, i64 92, !15, i64 94, !4, i64 96, !15, i64 100, !5, i64 104, !5, i64 108, !15, i64 112, !4, i64 114, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !15, i64 128, !5, i64 132, !15, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !15, i64 168, !5, i64 172, !15, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !15, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !15, i64 82, !4, i64 84, !15, i64 88, !15, i64 90, !4, i64 92, !4, i64 352, !15, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !15, i64 416, !15, i64 418, !15, i64 420, !15, i64 422, !16, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !15, i64 456, !15, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !15, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !15, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !15, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !15, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !15, i64 54, !5, i64 56, !15, i64 60, !4, i64 62, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !5, i64 80, !8, i64 84, !15, i64 88, !5, i64 92, !5, i64 96, !15, i64 100, !4, i64 102, !5, i64 124, !15, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !15, i64 138, !15, i64 140, !15, i64 142, !15, i64 144, !15, i64 146, !15, i64 148, !15, i64 150, !15, i64 152, !15, i64 154, !5, i64 156, !15, i64 160, !4, i64 162, !8, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !15, i64 228, !15, i64 230, !15, i64 232, !15, i64 234, !8, i64 236, !8, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !15, i64 0, !15, i64 2, !4, i64 4, !5, i64 36, !8, i64 40, !4, i64 44, !15, i64 56, !15, i64 58, !5, i64 60, !5, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !15, i64 12, !5, i64 16, !5, i64 20, !15, i64 24, !4, i64 26, !15, i64 30, !4, i64 32, !4, i64 33, !15, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !15, i64 0, !4, i64 4, !4, i64 12, !15, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !15, i64 40, !15, i64 42, !15, i64 44, !15, i64 46, !15, i64 48, !15, i64 50, !16, i64 56, !16, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !16, i64 88, !5, i64 96, !4, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !15, i64 64, !4, i64 66, !8, i64 196, !4, i64 200, !5, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !4, i64 14, !4, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !8, i64 128, !8, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !8, i64 248, !8, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !8, i64 288, !8, i64 292, !5, i64 296, !5, i64 300}
!43 = !{!"any p2 pointer", !13, i64 0}
!44 = !{!"p2 omnipotent char", !43, i64 0}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !8, i64 28, !4, i64 32, !44, i64 40}
!46 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !8, i64 32}
!47 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !8, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !8, i64 32920, !8, i64 32924, !4, i64 32928}
!48 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !8, i64 147516, !8, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !46, i64 147876, !8, i64 147912, !8, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !13, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !47, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!49 = !{!"long", !4, i64 0}
!50 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !8, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!51 = !{!"_ZTS17libraw_imgother_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !49, i64 16, !5, i64 24, !4, i64 28, !50, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!52 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!53 = !{!"_ZTS18libraw_thumbnail_t", !52, i64 0, !15, i64 4, !15, i64 6, !5, i64 8, !5, i64 12, !18, i64 16}
!54 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!55 = !{!"p1 float", !13, i64 0}
!56 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !15, i64 12, !15, i64 14}
!57 = !{!"_ZTS16libraw_rawdata_t", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !17, i64 512, !56, i64 696, !48, i64 712}
!58 = !{!"_ZTS13libraw_data_t", !14, i64 0, !17, i64 8, !19, i64 192, !24, i64 632, !40, i64 1928, !41, i64 5088, !42, i64 5232, !45, i64 5536, !5, i64 5584, !5, i64 5588, !48, i64 5592, !51, i64 192680, !53, i64 193480, !54, i64 193504, !57, i64 193768, !13, i64 381568}
!59 = !{!"p1 _ZTS10LibRaw_TLS", !13, i64 0}
!60 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !13, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!62 = !{!"_ZTS15internal_data_t", !60, i64 0, !61, i64 8, !5, i64 16, !18, i64 24, !22, i64 32, !22, i64 40, !4, i64 48}
!63 = !{!"p1 int", !13, i64 0}
!64 = !{!"_ZTS13output_data_t", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTS15identify_data_t", !5, i64 0, !22, i64 8, !22, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!66 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!67 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !15, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !15, i64 148, !15, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!68 = !{!"_ZTS15unpacker_data_t", !15, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !66, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !22, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !67, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !15, i64 2496, !15, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !15, i64 2608}
!69 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !56, i64 64, !64, i64 80, !65, i64 96, !68, i64 136}
!70 = !{!"p1 _ZTS6decode", !13, i64 0}
!71 = !{!"_ZTS13libraw_memmgr", !43, i64 0, !5, i64 8}
!72 = !{!"_ZTS18libraw_callbacks_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!73 = !{!"_ZTS6LibRaw", !58, i64 8, !59, i64 381584, !69, i64 381592, !4, i64 384344, !70, i64 433496, !70, i64 433504, !4, i64 433512, !71, i64 768232, !72, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !13, i64 768448, !13, i64 768456, !13, i64 768464, !49, i64 768472, !13, i64 768480, !13, i64 768488, !13, i64 768496, !13, i64 768504}
!74 = !{!5, !5, i64 0}
!75 = !{!73, !5, i64 540}
!76 = !{!73, !14, i64 8}
!77 = !{!15, !15, i64 0}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!73, !15, i64 20}
!80 = !{!73, !15, i64 22}
!81 = !{!73, !15, i64 381668}
!82 = !{!73, !13, i64 768264}
!83 = !{!73, !13, i64 768272}
!84 = !{!"_ZTS17LibRaw_exceptions", !4, i64 0}
!85 = !{!84, !84, i64 0}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !86}
!90 = distinct !{!90, !10, !11, !12}
!91 = distinct !{!91, !10, !11, !12}
!92 = distinct !{!92, !10, !11}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !93}
!97 = distinct !{!97, !93}
!98 = distinct !{!98, !10, !11, !12}
!99 = distinct !{!99, !10, !11}
!100 = distinct !{!100, !10, !11}
!101 = !{!87}
!102 = !{!88}
!103 = !{!89}
!104 = !{!88, !87}
!105 = !{!94}
!106 = !{!95}
!107 = !{!96}
!108 = !{!97}
!109 = !{!96, !95, !94}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = distinct !{!112, !10, !11, !12}
!113 = distinct !{!113, i1 false, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = distinct !{!117, !113}
!118 = distinct !{!118, !10, !11, !12}
!119 = distinct !{!119, !10, !11, !12}
!120 = distinct !{!120, !10, !11}
!121 = distinct !{!121, i1 false, !"LVerDomain"}
!122 = distinct !{!122, !121}
!123 = distinct !{!123, !121}
!124 = distinct !{!124, !121}
!125 = distinct !{!125, !121}
!126 = distinct !{!126, !10, !11, !12}
!127 = distinct !{!127, !10, !11}
!128 = distinct !{!128, !10, !11}
!129 = distinct !{!129, !10, !11, !12}
!130 = distinct !{!130, !78}
!131 = distinct !{!131, !10, !11}
!132 = distinct !{!132, !10}
!133 = distinct !{!133, i1 false, !"LVerDomain"}
!134 = distinct !{!134, !133}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !133}
!137 = distinct !{!137, !133}
!138 = distinct !{!138, !10, !11, !12}
!139 = distinct !{!139, !10, !11, !12}
!140 = distinct !{!140, !10, !11}
!141 = distinct !{!141, i1 false, !"LVerDomain"}
!142 = distinct !{!142, !141}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !141}
!145 = distinct !{!145, !141}
!146 = distinct !{!146, !10, !11, !12}
!147 = distinct !{!147, !10, !11}
!148 = distinct !{!148, !10, !11}
!149 = distinct !{!149, !10, !11, !12}
!150 = distinct !{!150, !10, !11}
!151 = distinct !{!151, !10}
!152 = distinct !{!152, !10}
!153 = distinct !{!153, !10}
!154 = distinct !{!154, !10, !12, !11}
!155 = distinct !{!155, !10}
!156 = distinct !{!156, !10}
!157 = distinct !{!157, !10}
!158 = distinct !{!158, !10}
!159 = distinct !{!159, !10}
!160 = !{!73, !15, i64 30}
!161 = !{!73, !15, i64 28}
!162 = !{!73, !5, i64 153096}
!163 = !{!73, !5, i64 153088}
!164 = !{!73, !5, i64 544}
!165 = !{!114}
!166 = !{!115}
!167 = !{!116}
end_hunk_3
