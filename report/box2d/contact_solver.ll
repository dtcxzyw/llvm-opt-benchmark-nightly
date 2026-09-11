Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/contact_solver?download=true
inline.NumInlined: 761
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b2ContactSim = type { i32, %struct.b2Rot, %struct.b2Rot, %struct.b2Transform, i32, i32, i32, i32, float, float, float, float, %struct.b2Manifold, float, float, float, float, i32, %struct.b2SimplexCache }
%struct.b2Rot = type { float, float }
%struct.b2Transform = type { %struct.b2Vec2, %struct.b2Rot }
%struct.b2Vec2 = type { float, float }
%struct.b2Manifold = type { %struct.b2Vec2, float, [2 x %struct.b2ManifoldPoint], i32 }
%struct.b2ManifoldPoint = type { %struct.b2Vec2, %struct.b2Vec2, float, float, float, float, float, float, float, i16, i8 }
%struct.b2SimplexCache = type { i16, [3 x i8], [3 x i8] }
%struct.b2Softness = type { float, float, float }

@b2_zeroContactSim = internal unnamed_addr constant %struct.b2ContactSim zeroinitializer, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2PrepareContacts_Overflow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.b2Softness, align 4         ; 4 uses
  %2 = alloca %struct.b2Softness, align 4         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1488
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1496
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.k, i64 12, i1 false), !tbaa.struct !152
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.l, i64 12, i1 false), !tbaa.struct !152
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2740
  %i.n = load i8, ptr %i.m, align 4, !tbaa !89, !range !90, !noundef !91
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, float 1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.q = icmp sgt i32 %i.i, 0
  br i1 %i.q, label %.lr.ph143.preheader, label %._crit_edge144

.lr.ph143.preheader:                              ; preds = %bb.a
  %wide.trip.count149 = zext nneg i32 %i.i to i64
  %i.r = insertelement <2 x float> poison, float %i.p, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph143

._crit_edge144:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %._crit_edge
  %indvars.iv146 = phi i64 [ 0, %.lr.ph143.preheader ], [ %indvars.iv.next147, %._crit_edge ] ; 3 uses
  %i.t = getelementptr inbounds nuw [208 x i8], ptr %i.j, i64 %indvars.iv146 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.w = load i32, ptr %i.v, align 4, !tbaa !93   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !98   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !99  ; 2 uses
  %i.ab = getelementptr inbounds nuw [156 x i8], ptr %i.f, i64 %indvars.iv146 ; 11 uses
  %i.ac = add nsw i32 %i.y, 1
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !101
  %i.ad = add nsw i32 %i.aa, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ag = load i64, ptr %i.u, align 4             ; 2 uses
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 180
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !103
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  store float %i.ai, ptr %i.aj, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 188
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 76
  %i.am = load float, ptr %i.al, align 4, !tbaa !105
  %i.an = fmul float %i.p, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  store float %i.an, ptr %i.ao, align 4, !tbaa !106
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  %i.aq = load <2 x float>, ptr %i.ak, align 4, !tbaa !38
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ar, ptr %i.ap, align 4, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  store i32 %i.w, ptr %i.as, align 4, !tbaa !107
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.au = icmp eq i32 %i.y, -1
  %i.av = icmp eq i32 %i.aa, -1
  %or.cond = select i1 %i.au, i1 true, i1 %i.av
  %i.aw = bitcast i64 %i.ag to <2 x float>        ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 140
  %. = select i1 %or.cond, ptr %2, ptr %1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.az = load <4 x float>, ptr %i.at, align 4, !tbaa !38 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ax, ptr noundef nonnull align 4 dereferenceable(12) %., i64 12, i1 false)
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.ba, ptr %i.ay, align 4, !tbaa !38
  %shift = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.az, %shift
  %3 = extractelement <4 x float> %foldExtExtBinop, i64 1 ; 2 uses
  %i.bb = fcmp ogt float %3, 0.000000e+00
  %i.bc = fdiv float 1.000000e+00, %3
  %i.bd = select i1 %i.bb, float %i.bc, float 0.000000e+00
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 132
  store float %i.bd, ptr %i.be, align 4, !tbaa !108
  %i.bf = icmp sgt i32 %i.w, 0
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph143
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %shift153.a = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop154.a = fadd <4 x float> %i.az, %shift153.a
  %wide.trip.count = zext nneg i32 %i.w to i64
  %i.bi = shufflevector <4 x float> %foldExtExtBinop154.a, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fneg <2 x float> %i.aw
  %i.bk = shufflevector <2 x float> %i.aw, <2 x float> %i.bj, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bl = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.lr.ph143
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge144, label %.lr.ph143, !llvm.loop !150

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.bg, i64 %indvars.iv ; 5 uses
  %i.bo = getelementptr inbounds nuw [44 x i8], ptr %i.bh, i64 %indvars.iv ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.br = load <2 x float>, ptr %i.bp, align 4, !tbaa !38
  %i.bs = fmul <2 x float> %i.s, %i.br
  store <2 x float> %i.bs, ptr %i.bq, align 4, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !111
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.bn, align 4 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.bu, align 4 ; 4 uses
  store <2 x float> %.sroa.017.0.copyload, ptr %i.bo, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store <2 x float> %.sroa.013.0.copyload, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !153
  %i.by = fsub <2 x float> %.sroa.013.0.copyload, %.sroa.017.0.copyload
  %i.bz = fmul <2 x float> %i.by, %i.aw           ; 2 uses
  %shift156 = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop157 = fadd <2 x float> %i.bz, %shift156
  %i.ca = extractelement <2 x float> %foldExtExtBinop157, i64 0
  %i.cb = fsub float %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store float %i.cb, ptr %i.cc, align 4, !tbaa !113
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.ce = shufflevector <2 x float> %.sroa.017.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.bk, %i.ce
  %i.cg = shufflevector <2 x float> %.sroa.017.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fmul <2 x float> %i.cg, %i.aw
  %i.ci = fsub <2 x float> %i.cf, %i.ch           ; 2 uses
  %i.cj = shufflevector <2 x float> %.sroa.013.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fmul <2 x float> %i.bk, %i.cj
  %i.cl = shufflevector <2 x float> %.sroa.013.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = fmul <2 x float> %i.cl, %i.aw
  %i.cn = fsub <2 x float> %i.ck, %i.cm           ; 2 uses
  %i.co = fmul <2 x float> %i.bl, %i.ci
  %i.cp = fmul <2 x float> %i.ci, %i.co
  %i.cq = fadd <2 x float> %i.bi, %i.cp
  %i.cr = fmul <2 x float> %i.bm, %i.cn
  %i.cs = fmul <2 x float> %i.cn, %i.cr
  %i.ct = fadd <2 x float> %i.cq, %i.cs           ; 2 uses
  %i.cu = fcmp ogt <2 x float> %i.ct, zeroinitializer
  %i.cv = fdiv <2 x float> splat (float 1.000000e+00), %i.ct
  %i.cw = select <2 x i1> %i.cu, <2 x float> %i.cv, <2 x float> zeroinitializer
  store <2 x float> %i.cw, ptr %i.cd, align 4, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !154
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  store float %i.cy, ptr %i.cz, align 4, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !151
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2WarmStartContacts_Overflow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1520
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1496
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1960
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !121  ; 2 uses
  %i.m = icmp sgt i32 %i.f, 0
  br i1 %i.m, label %.lr.ph161.preheader, label %._crit_edge162

.lr.ph161.preheader:                              ; preds = %bb.a
  %wide.trip.count168 = zext nneg i32 %i.f to i64
  br label %.lr.ph161

._crit_edge162:                                   ; preds = %.cont.thread, %bb.a
  ret void

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %.cont.thread
  %indvars.iv165 = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next166, %.cont.thread ] ; 2 uses
  %i.n = getelementptr inbounds nuw [156 x i8], ptr %i.d, i64 %indvars.iv165 ; 9 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !101  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !102  ; 2 uses
  %i.r = icmp eq i32 %i.o, 0                      ; 2 uses
  %i.s = sext i32 %i.o to i64
  %i.t = getelementptr [32 x i8], ptr %i.l, i64 %i.s ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32      ; 2 uses
  %i.v = icmp eq i32 %i.q, 0                      ; 2 uses
  %i.w = sext i32 %i.q to i64
  %i.x = getelementptr [32 x i8], ptr %i.l, i64 %i.w ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -32      ; 2 uses
  br i1 %i.r, label %.cont137.thread, label %.else129

.cont137.thread:                                  ; preds = %.lr.ph161
  %.sroa.gep104142 = getelementptr i8, ptr %i.t, i64 -24
  br label %.cont127

.else129:                                         ; preds = %.lr.ph161
  %.sroa.034.0.copyload.else.val = load <2 x float>, ptr %i.u, align 4
  %.sroa.gep104 = getelementptr i8, ptr %i.t, i64 -24 ; 2 uses
  %.else.val130 = load float, ptr %.sroa.gep104, align 4, !tbaa !123
  br label %.cont127

.cont127:                                         ; preds = %.cont137.thread, %.else129
  %.sroa.gep104144 = phi ptr [ %.sroa.gep104142, %.cont137.thread ], [ %.sroa.gep104, %.else129 ]
  %.sroa.034.0.copyload143 = phi <2 x float> [ zeroinitializer, %.cont137.thread ], [ %.sroa.034.0.copyload.else.val, %.else129 ] ; 2 uses
  %i.z = phi float [ 0.000000e+00, %.cont137.thread ], [ %.else.val130, %.else129 ]
  br i1 %i.v, label %.cont127.cont.thread, label %.else122

.cont127.cont.thread:                             ; preds = %.cont127
  %.sroa.gep109146 = getelementptr i8, ptr %i.x, i64 -24
  br label %.cont120

.else122:                                         ; preds = %.cont127
  %.sroa.029.0.copyload.else.val = load <2 x float>, ptr %i.y, align 4
  %.sroa.gep109 = getelementptr i8, ptr %i.x, i64 -24 ; 2 uses
  %.else.val123 = load float, ptr %.sroa.gep109, align 4, !tbaa !123
  br label %.cont120

.cont120:                                         ; preds = %.cont127.cont.thread, %.else122
  %.sroa.gep109148 = phi ptr [ %.sroa.gep109146, %.cont127.cont.thread ], [ %.sroa.gep109, %.else122 ]
  %.sroa.029.0.copyload147 = phi <2 x float> [ zeroinitializer, %.cont127.cont.thread ], [ %.sroa.029.0.copyload.else.val, %.else122 ] ; 2 uses
  %i.aa = phi float [ 0.000000e+00, %.cont127.cont.thread ], [ %.else.val123, %.else122 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.ac = load <2 x float>, ptr %i.ab, align 4, !tbaa !38 ; 3 uses
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !107 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.z, i64 1 ; 2 uses
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.cont120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 108
  %i.al = load float, ptr %i.ak, align 4, !tbaa !124
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.an = load float, ptr %i.am, align 4, !tbaa !125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %i.ap = shufflevector <2 x float> %.sroa.019.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aq = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x float> poison, float %i.an, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = shufflevector <2 x float> %.sroa.019.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.cont120
  %.sroa.034.0.lcssa = phi <2 x float> [ %.sroa.034.0.copyload143, %.cont120 ], [ %i.cc, %bb.b ]
  %.sroa.029.0.lcssa = phi <2 x float> [ %.sroa.029.0.copyload147, %.cont120 ], [ %i.ci, %bb.b ]
  %i.av = phi <2 x float> [ %i.aj, %.cont120 ], [ %i.cf, %bb.b ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !106 ; 2 uses
  %i.ay = extractelement <2 x float> %i.ac, i64 1
  %i.az = fmul float %i.ay, %i.ax
  %i.ba = extractelement <2 x float> %i.av, i64 0
  %i.bb = fadd float %i.ba, %i.az
  br i1 %i.r, label %.cont114.thread, label %.cont114

end_hunk_0
begin_hunk_1_@b2StoreImpulses_Wide:bb.a
  %i.dy = or i64 %i.du, %i.dx
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !140
  br label %.thread100.1

.thread100.1:                                     ; preds = %bb.i, %bb.j, %.preheader.1, %bb.g
  %.7102.1 = phi i8 [ %.7102, %bb.g ], [ 1, %bb.j ], [ %.7102, %.preheader.1 ], [ %.7102, %bb.i ] ; 4 uses
  %i.dz = or disjoint i64 %i.al, 2                ; 2 uses
  %.not95.2 = icmp slt i64 %i.dz, %i.af
  br i1 %.not95.2, label %bb.k, label %.thread103

bb.k:                                             ; preds = %.thread100.1
  %i.ea = getelementptr inbounds [208 x i8], ptr %i.ab, i64 %i.dz ; 11 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aj, i64 424
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 76
  store float %i.ec, ptr %i.ed, align 4, !tbaa !105
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aj, i64 328
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !38
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 100
  store float %i.ef, ptr %i.eh, align 4, !tbaa !276
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aj, i64 392
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !38
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  store float %i.ej, ptr %i.ek, align 4, !tbaa !277
  %i.el = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  %i.em = load float, ptr %i.el, align 4, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 112
  store float %i.em, ptr %i.en, align 4, !tbaa !135
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aj, i64 344
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 148
  store float %i.ep, ptr %i.eq, align 4, !tbaa !276
  %i.er = getelementptr inbounds nuw i8, ptr %i.aj, i64 408
  %i.es = load float, ptr %i.er, align 4, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 152
  store float %i.es, ptr %i.et, align 4, !tbaa !277
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aj, i64 376
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 160
  store float %i.ev, ptr %i.ew, align 4, !tbaa !135
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ea, i64 196
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !136
  %i.ez = and i32 %i.ey, 1048576
  %.not96.2 = icmp eq i32 %i.ez, 0
  br i1 %.not96.2, label %.thread100.2, label %.preheader.2

.preheader.2:                                     ; preds = %bb.k
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 176
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !148 ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.preheader.2, label %.thread100.2

.lr.ph.preheader.2:                               ; preds = %.preheader.2
  %wide.trip.count.2 = zext nneg i32 %i.fb to i64
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.m, %.lr.ph.preheader.2
  %indvars.iv120.2 = phi i64 [ 0, %.lr.ph.preheader.2 ], [ %indvars.iv.next121.2, %bb.m ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [48 x i8], ptr %i.eg, i64 %indvars.iv120.2 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 36
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !137
  %i.fg = fcmp olt float %i.ff, %i.r
  br i1 %i.fg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !135
  %i.fj = fcmp ogt float %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.2
  %indvars.iv.next121.2 = add nuw nsw i64 %indvars.iv120.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next121.2, %wide.trip.count.2
  br i1 %exitcond.2.not, label %.thread100.2, label %.lr.ph.2, !llvm.loop !274

bb.n:                                             ; preds = %bb.l
  %i.fk = load i32, ptr %i.ea, align 4, !tbaa !138 ; 2 uses
  %.val.2 = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.fl = lshr i32 %i.fk, 6
  %i.fm = and i32 %i.fk, 63
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = zext nneg i32 %i.fl to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.val.2, i64 %i.fp ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !140
  %i.fs = or i64 %i.fo, %i.fr
  store i64 %i.fs, ptr %i.fq, align 8, !tbaa !140
  br label %.thread100.2

.thread100.2:                                     ; preds = %bb.m, %bb.n, %.preheader.2, %bb.k
  %.7102.2 = phi i8 [ %.7102.1, %bb.k ], [ 1, %bb.n ], [ %.7102.1, %.preheader.2 ], [ %.7102.1, %bb.m ] ; 4 uses
  %i.ft = or disjoint i64 %i.al, 3                ; 2 uses
  %.not95.3 = icmp slt i64 %i.ft, %i.af
  br i1 %.not95.3, label %bb.o, label %.thread103

bb.o:                                             ; preds = %.thread100.2
  %i.fu = getelementptr inbounds [208 x i8], ptr %i.ab, i64 %i.ft ; 11 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.aj, i64 428
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !38
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 76
  store float %i.fw, ptr %i.fx, align 4, !tbaa !105
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aj, i64 332
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !38
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 100
  store float %i.fz, ptr %i.gb, align 4, !tbaa !276
  %i.gc = getelementptr inbounds nuw i8, ptr %i.aj, i64 396
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !38
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fu, i64 104
  store float %i.gd, ptr %i.ge, align 4, !tbaa !277
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aj, i64 364
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !38
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fu, i64 112
  store float %i.gg, ptr %i.gh, align 4, !tbaa !135
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aj, i64 348
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !38
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 148
  store float %i.gj, ptr %i.gk, align 4, !tbaa !276
  %i.gl = getelementptr inbounds nuw i8, ptr %i.aj, i64 412
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !38
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fu, i64 152
  store float %i.gm, ptr %i.gn, align 4, !tbaa !277
  %i.go = getelementptr inbounds nuw i8, ptr %i.aj, i64 380
  %i.gp = load float, ptr %i.go, align 4, !tbaa !38
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fu, i64 160
  store float %i.gp, ptr %i.gq, align 4, !tbaa !135
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fu, i64 196
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !136
  %i.gt = and i32 %i.gs, 1048576
  %.not96.3 = icmp eq i32 %i.gt, 0
  br i1 %.not96.3, label %.thread103, label %.preheader.3

.preheader.3:                                     ; preds = %bb.o
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 176
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !148 ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph.preheader.3, label %.thread103

.lr.ph.preheader.3:                               ; preds = %.preheader.3
  %wide.trip.count.3 = zext nneg i32 %i.gv to i64
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.q, %.lr.ph.preheader.3
  %indvars.iv120.3 = phi i64 [ 0, %.lr.ph.preheader.3 ], [ %indvars.iv.next121.3, %bb.q ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [48 x i8], ptr %i.ga, i64 %indvars.iv120.3 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !137
  %i.ha = fcmp olt float %i.gz, %i.r
  br i1 %i.ha, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.3
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !135
  %i.hd = fcmp ogt float %i.hc, 0.000000e+00
  br i1 %i.hd, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.3
  %indvars.iv.next121.3 = add nuw nsw i64 %indvars.iv120.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next121.3, %wide.trip.count.3
  br i1 %exitcond.3.not, label %.thread103, label %.lr.ph.3, !llvm.loop !274

bb.r:                                             ; preds = %bb.p
  %i.he = load i32, ptr %i.fu, align 4, !tbaa !138 ; 2 uses
  %.val.3 = load ptr, ptr %i.q, align 8, !tbaa !139
  %i.hf = lshr i32 %i.he, 6
  %i.hg = and i32 %i.he, 63
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = zext nneg i32 %i.hf to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val.3, i64 %i.hj ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !140
  %i.hm = or i64 %i.hi, %i.hl
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !140
  br label %.thread103

.thread103:                                       ; preds = %bb.q, %bb.o, %.preheader.3, %bb.r, %.thread100.2, %.thread100.1, %.thread100, %.lr.ph111
  %.2.lcssa = phi i8 [ %.192109, %.lr.ph111 ], [ %.7102.1, %.thread100.1 ], [ %.7102, %.thread100 ], [ %.7102.2, %.thread100.2 ], [ %.7102.2, %bb.o ], [ 1, %bb.r ], [ %.7102.2, %.preheader.3 ], [ %.7102.2, %bb.q ] ; 2 uses
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next127, %i.ai
  br i1 %exitcond128.not, label %.loopexit, label %.lr.ph111, !llvm.loop !275

._crit_edge:                                      ; preds = %.loopexit, %.preheader105
  %.091.lcssa = phi i8 [ %i.l, %.preheader105 ], [ %.192.lcssa, %.loopexit ]
  store i8 %.091.lcssa, ptr %i.k, align 8, !tbaa !134
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"b2Softness", !8, i64 0, !8, i64 4, !8, i64 8}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 _ZTS7b2World", !10, i64 0}
!12 = !{!"p1 _ZTS17b2ConstraintGraph", !10, i64 0}
!13 = !{!"p1 _ZTS11b2BodyState", !10, i64 0}
!14 = !{!"p1 _ZTS9b2BodySim", !10, i64 0}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"b2AtomicInt", !5, i64 0}
!17 = !{!"any p2 pointer", !10, i64 0}
!18 = !{!"p2 _ZTS12b2ContactSim", !17, i64 0}
!19 = !{!"p1 _ZTS23b2ContactConstraintWide", !10, i64 0}
!20 = !{!"p1 _ZTS20b2ContactPrepareSpan", !10, i64 0}
!21 = !{!"p1 _ZTS18b2JointPrepareSpan", !10, i64 0}
!22 = !{!"p1 _ZTS13b2SolverStage", !10, i64 0}
!23 = !{!"_Bool", !4, i64 0}
!24 = !{!"b2AtomicU32", !5, i64 0}
!25 = !{!"b2StepContext", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !5, i64 16, !9, i64 20, !9, i64 32, !8, i64 44, !8, i64 48, !11, i64 56, !12, i64 64, !13, i64 72, !14, i64 80, !15, i64 88, !5, i64 96, !15, i64 104, !16, i64 112, !18, i64 120, !19, i64 128, !20, i64 136, !5, i64 144, !21, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !22, i64 176, !5, i64 184, !23, i64 188, !4, i64 189, !24, i64 256, !4, i64 260, !16, i64 324, !4, i64 328}
!26 = !{!25, !11, i64 56}
!27 = !{!25, !12, i64 64}
!28 = !{!4, !4, i64 0}
!29 = !{!"p1 long", !10, i64 0}
!30 = !{!"b2BitSet", !29, i64 0, !5, i64 8, !5, i64 12}
!31 = !{!"p1 _ZTS12b2ContactSim", !10, i64 0}
!32 = !{!"b2DynamicArray_b2ContactSim", !31, i64 0, !5, i64 8, !5, i64 12}
!33 = !{!"p1 _ZTS10b2JointSim", !10, i64 0}
!34 = !{!"b2DynamicArray_b2JointSim", !33, i64 0, !5, i64 8, !5, i64 12}
!35 = !{!"b2GraphColor", !30, i64 0, !32, i64 16, !34, i64 32, !4, i64 48, !5, i64 56}
!36 = !{!35, !5, i64 24}
!37 = !{!35, !31, i64 16}
!38 = !{!8, !8, i64 0}
!39 = !{!"p1 omnipotent char", !10, i64 0}
!40 = !{!"p1 _ZTS12b2StackEntry", !10, i64 0}
!41 = !{!"b2DynamicArray_b2StackEntry", !40, i64 0, !5, i64 8, !5, i64 12}
!42 = !{!"b2Stack", !39, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !41, i64 24}
!43 = !{!"b2DynamicArray_int", !15, i64 0, !5, i64 8, !5, i64 12}
!44 = !{!"p1 _ZTS12b2MoveResult", !10, i64 0}
!45 = !{!"p1 _ZTS10b2MovePair", !10, i64 0}
!46 = !{!"p1 _ZTS9b2SetItem", !10, i64 0}
!47 = !{!"b2HashSet", !46, i64 0, !5, i64 8, !5, i64 12}
!48 = !{!"b2BroadPhase", !4, i64 0, !4, i64 216, !43, i64 264, !44, i64 280, !45, i64 288, !5, i64 296, !16, i64 300, !47, i64 304}
!49 = !{!"b2ConstraintGraph", !4, i64 0}
!50 = !{!"b2IdPool", !43, i64 0, !5, i64 16}
!51 = !{!"p1 _ZTS6b2Body", !10, i64 0}
!52 = !{!"b2DynamicArray_b2Body", !51, i64 0, !5, i64 8, !5, i64 12}
!53 = !{!"p1 _ZTS11b2SolverSet", !10, i64 0}
!54 = !{!"b2DynamicArray_b2SolverSet", !53, i64 0, !5, i64 8, !5, i64 12}
!55 = !{!"p1 _ZTS7b2Joint", !10, i64 0}
!56 = !{!"b2DynamicArray_b2Joint", !55, i64 0, !5, i64 8, !5, i64 12}
!57 = !{!"p1 _ZTS9b2Contact", !10, i64 0}
!58 = !{!"b2DynamicArray_b2Contact", !57, i64 0, !5, i64 8, !5, i64 12}
!59 = !{!"p1 _ZTS8b2Island", !10, i64 0}
!60 = !{!"b2DynamicArray_b2Island", !59, i64 0, !5, i64 8, !5, i64 12}
!61 = !{!"p1 _ZTS7b2Shape", !10, i64 0}
!62 = !{!"b2DynamicArray_b2Shape", !61, i64 0, !5, i64 8, !5, i64 12}
!63 = !{!"p1 _ZTS12b2ChainShape", !10, i64 0}
!64 = !{!"b2DynamicArray_b2ChainShape", !63, i64 0, !5, i64 8, !5, i64 12}
!65 = !{!"p1 _ZTS8b2Sensor", !10, i64 0}
!66 = !{!"b2DynamicArray_b2Sensor", !65, i64 0, !5, i64 8, !5, i64 12}
!67 = !{!"p1 _ZTS13b2TaskContext", !10, i64 0}
!68 = !{!"b2DynamicArray_b2TaskContext", !67, i64 0, !5, i64 8, !5, i64 12}
!69 = !{!"p1 _ZTS19b2SensorTaskContext", !10, i64 0}
!70 = !{!"b2DynamicArray_b2SensorTaskContext", !69, i64 0, !5, i64 8, !5, i64 12}
!71 = !{!"p1 _ZTS15b2BodyMoveEvent", !10, i64 0}
!72 = !{!"b2DynamicArray_b2BodyMoveEvent", !71, i64 0, !5, i64 8, !5, i64 12}
!73 = !{!"p1 _ZTS23b2SensorBeginTouchEvent", !10, i64 0}
!74 = !{!"b2DynamicArray_b2SensorBeginTouchEvent", !73, i64 0, !5, i64 8, !5, i64 12}
!75 = !{!"p1 _ZTS24b2ContactBeginTouchEvent", !10, i64 0}
!76 = !{!"b2DynamicArray_b2ContactBeginTouchEvent", !75, i64 0, !5, i64 8, !5, i64 12}
!77 = !{!"p1 _ZTS17b2ContactHitEvent", !10, i64 0}
!78 = !{!"b2DynamicArray_b2ContactHitEvent", !77, i64 0, !5, i64 8, !5, i64 12}
!79 = !{!"p1 _ZTS12b2JointEvent", !10, i64 0}
!80 = !{!"b2DynamicArray_b2JointEvent", !79, i64 0, !5, i64 8, !5, i64 12}
!81 = !{!"long", !4, i64 0}
!82 = !{!"b2Vec2", !8, i64 0, !8, i64 4}
!83 = !{!"short", !4, i64 0}
!84 = !{!"b2Profile", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84}
!85 = !{!"b2Capacity", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!86 = !{!"p1 _ZTS11b2Scheduler", !10, i64 0}
!87 = !{!"p1 _ZTS11b2Recording", !10, i64 0}
!88 = !{!"b2World", !42, i64 0, !48, i64 40, !49, i64 360, !50, i64 1896, !52, i64 1920, !50, i64 1936, !54, i64 1960, !50, i64 1976, !56, i64 2000, !50, i64 2016, !58, i64 2040, !50, i64 2056, !60, i64 2080, !50, i64 2096, !50, i64 2120, !62, i64 2144, !64, i64 2160, !66, i64 2176, !68, i64 2192, !70, i64 2208, !72, i64 2224, !74, i64 2240, !76, i64 2256, !4, i64 2272, !4, i64 2304, !5, i64 2336, !78, i64 2344, !80, i64 2360, !30, i64 2376, !30, i64 2392, !30, i64 2408, !30, i64 2424, !81, i64 2440, !5, i64 2448, !82, i64 2452, !8, i64 2460, !8, i64 2464, !8, i64 2468, !8, i64 2472, !8, i64 2476, !8, i64 2480, !8, i64 2484, !10, i64 2488, !10, i64 2496, !83, i64 2504, !84, i64 2508, !85, i64 2596, !10, i64 2616, !10, i64 2624, !10, i64 2632, !10, i64 2640, !10, i64 2648, !5, i64 2656, !10, i64 2664, !10, i64 2672, !10, i64 2680, !10, i64 2688, !86, i64 2696, !10, i64 2704, !87, i64 2712, !8, i64 2720, !8, i64 2724, !5, i64 2728, !5, i64 2732, !83, i64 2736, !23, i64 2738, !23, i64 2739, !23, i64 2740, !23, i64 2741, !23, i64 2742}
!89 = !{!88, !23, i64 2740}
!90 = !{i8 0, i8 2}
!91 = !{}
!92 = !{!"b2Manifold", !82, i64 0, !8, i64 8, !4, i64 12, !5, i64 108}
!93 = !{!92, !5, i64 108}
!94 = !{!"b2Rot", !8, i64 0, !8, i64 4}
!95 = !{!"b2Transform", !82, i64 0, !94, i64 8}
!96 = !{!"b2SimplexCache", !83, i64 0, !4, i64 2, !4, i64 5}
!97 = !{!"b2ContactSim", !5, i64 0, !94, i64 4, !94, i64 12, !95, i64 20, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !92, i64 68, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !5, i64 196, !96, i64 200}
!98 = !{!97, !5, i64 36}
!99 = !{!97, !5, i64 40}
!100 = !{!"b2ContactConstraint", !5, i64 0, !5, i64 4, !4, i64 8, !82, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !9, i64 140, !5, i64 152}
!101 = !{!100, !5, i64 0}
!102 = !{!100, !5, i64 4}
!103 = !{!97, !8, i64 180}
!104 = !{!100, !8, i64 120}
!105 = !{!92, !8, i64 8}
!106 = !{!100, !8, i64 136}
!107 = !{!100, !5, i64 152}
!108 = !{!100, !8, i64 132}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"b2ContactConstraintPoint", !82, i64 0, !82, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40}
!111 = !{!110, !8, i64 32}
!112 = !{!"b2ManifoldPoint", !82, i64 0, !82, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !83, i64 44, !23, i64 46}
!113 = !{!110, !8, i64 16}
!114 = !{!110, !8, i64 20}
!115 = !{!88, !53, i64 1960}
!116 = !{!"b2DynamicArray_b2BodySim", !14, i64 0, !5, i64 8, !5, i64 12}
!117 = !{!"b2DynamicArray_b2BodyState", !13, i64 0, !5, i64 8, !5, i64 12}
!118 = !{!"p1 _ZTS11b2IslandSim", !10, i64 0}
!119 = !{!"b2DynamicArray_b2IslandSim", !118, i64 0, !5, i64 8, !5, i64 12}
!120 = !{!"b2SolverSet", !116, i64 0, !117, i64 16, !34, i64 32, !32, i64 48, !119, i64 64, !5, i64 80}
!121 = !{!120, !13, i64 16}
!122 = !{!"b2BodyState", !82, i64 0, !8, i64 8, !5, i64 12, !82, i64 16, !94, i64 24}
!123 = !{!122, !8, i64 8}
!124 = !{!100, !8, i64 108}
!125 = !{!100, !8, i64 104}
!126 = !{!122, !5, i64 12}
!127 = !{!25, !8, i64 12}
!128 = !{!88, !8, i64 2472}
!129 = !{!88, !67, i64 2192}
!130 = !{!88, !8, i64 2460}
!131 = !{!"p1 _ZTS11b2SensorHit", !10, i64 0}
!132 = !{!"b2DynamicArray_b2SensorHit", !131, i64 0, !5, i64 8, !5, i64 12}
!133 = !{!"b2TaskContext", !132, i64 0, !30, i64 16, !30, i64 32, !23, i64 48, !30, i64 56, !30, i64 72, !30, i64 88, !8, i64 104, !5, i64 108, !5, i64 112}
!134 = !{!133, !23, i64 48}
!135 = !{!112, !8, i64 32}
!136 = !{!97, !5, i64 196}
!137 = !{!112, !8, i64 36}
!138 = !{!97, !5, i64 0}
!139 = !{!30, !29, i64 0}
!140 = !{!81, !81, i64 0}
!141 = !{!25, !20, i64 136}
!142 = !{!25, !19, i64 128}
!143 = !{!"b2ContactPrepareSpan", !5, i64 0, !5, i64 4, !31, i64 8}
!144 = !{!143, !5, i64 0}
!145 = !{!143, !31, i64 8}
!146 = !{!143, !5, i64 4}
!147 = !{!5, !5, i64 0}
!148 = !{!97, !5, i64 176}
!149 = !{!25, !13, i64 72}
!150 = distinct !{!150, !109}
!151 = distinct !{!151, !109}
!152 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 4, !38}
!153 = !{!112, !8, i64 16}
!154 = !{!112, !8, i64 28}
!155 = distinct !{!155, !109}
!156 = distinct !{!156, !109}
!157 = distinct !{!157, !109}
!158 = distinct !{!158, !109}
!159 = distinct !{!159, !109}
!160 = !{!110, !8, i64 36}
!161 = !{!110, !8, i64 24}
!162 = !{!100, !8, i64 128}
!163 = !{!100, !8, i64 124}
!164 = !{!110, !8, i64 40}
!165 = !{!110, !8, i64 28}
!166 = distinct !{!166, !109}
!167 = distinct !{!167, !109}
!168 = distinct !{!168, !109}
!169 = distinct !{!169, !109}
!170 = distinct !{!170, !109}
!171 = distinct !{!171, !109}
!172 = !{!97, !8, i64 52}
!173 = !{!97, !8, i64 60}
!174 = !{!97, !8, i64 56}
!175 = !{!97, !8, i64 64}
!176 = !{!97, !8, i64 68}
!177 = !{!97, !8, i64 72}
!178 = !{!97, !8, i64 192}
!179 = !{!97, !8, i64 188}
!180 = !{!97, !8, i64 76}
!181 = distinct !{!181, !"b2GatherBodies"}
end_hunk_1
