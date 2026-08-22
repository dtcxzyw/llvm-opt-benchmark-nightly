Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBodyHelpers?download=true
inline.NumInlined: 1764
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN17btSoftBodyHelpers19ReoptimizeLinkOrderEP10btSoftBody:bb.a
  %i.bi = sext i32 %.0132161 to i64
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.bi ; 3 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !223
  %i.bl = zext nneg i32 %i.bf to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.bl ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !221
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !225
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bp = phi i32 [ %i.bf, %bb.e ], [ -1, %bb.d ] ; 2 uses
  %.1133 = phi i32 [ %i.bh, %bb.e ], [ %.0132161, %bb.d ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !64
  %sext151 = shl i64 %i.bc, 24
  %i.br = ashr exact i64 %sext151, 30
  %i.bs = getelementptr inbounds i8, ptr %i.l, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !64 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bv = add nsw i32 %.1133, 1
  %i.bw = sext i32 %.1133 to i64
  %i.bx = getelementptr inbounds [16 x i8], ptr %i.x, i64 %i.bw ; 3 uses
  %i.by = trunc nuw nsw i64 %indvars.iv to i32
  %i.bz = xor i32 %i.by, -1
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !223
  %i.ca = zext nneg i32 %i.bt to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ca ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !221
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !225
  store ptr %i.bx, ptr %i.cb, align 8, !tbaa !221
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.bt, ptr %i.ce, align 4, !tbaa !64
  br label %bb.i

.thread:                                          ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  store i32 -1, ptr %i.cf, align 4, !tbaa !64
  %i.cg = icmp eq i32 %i.bp, -1
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.ch = add nsw i32 %.0135160, 1
  %i.ci = sext i32 %.0135160 to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !64
  store i32 -2, ptr %i.cf, align 4, !tbaa !64
  store i32 -2, ptr %i.bq, align 4, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %.thread, %bb.h
  %.2134192 = phi i32 [ %.1133, %bb.h ], [ %.1133, %.thread ], [ %i.bv, %bb.g ]
  %.1136 = phi i32 [ %i.ch, %bb.h ], [ %.0135160, %.thread ], [ %.0135160, %bb.g ] ; 3 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.cl, ptr %i.bs, align 4, !tbaa !64
  store i32 %i.cl, ptr %i.be, align 4, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !226

.loopexit:                                        ; preds = %bb.m, %.lr.ph174
  %.3138.lcssa = phi i32 [ %.2137172, %.lr.ph174 ], [ %.4, %bb.m ] ; 2 uses
  %i.cm = zext i32 %.3138.lcssa to i64
  %.not149 = icmp eq i64 %indvars.iv.next179, %i.cm
  br i1 %.not149, label %._crit_edge, label %.lr.ph174, !llvm.loop !227

.lr.ph174:                                        ; preds = %.preheader, %.loopexit
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %.loopexit ], [ 0, %.preheader ] ; 3 uses
  %.2137172 = phi i32 [ %.3138.lcssa, %.loopexit ], [ %.1136, %.preheader ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv178
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !64
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [72 x i8], ptr %i.af, i64 %i.cp
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !88
  %i.cs = getelementptr inbounds nuw [72 x i8], ptr %i.cr, i64 %indvars.iv178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.cs, ptr noundef nonnull align 8 dereferenceable(68) %i.cq, i64 68, i1 false)
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.cp
  %.0140164 = load ptr, ptr %i.ct, align 8, !tbaa !221 ; 2 uses
  %.not150165 = icmp eq ptr %.0140164, null
  br i1 %.not150165, label %.loopexit, label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph174, %bb.m
  %.0140167 = phi ptr [ %.0140, %bb.m ], [ %.0140164, %.lr.ph174 ] ; 2 uses
  %.3138166 = phi i32 [ %.4, %bb.m ], [ %.2137172, %.lr.ph174 ] ; 4 uses
  %i.cu = load i32, ptr %.0140167, align 8, !tbaa !223 ; 4 uses
  %i.cv = icmp sgt i32 %i.cu, -1
  br i1 %i.cv, label %.thread197, label %bb.j

.thread197:                                       ; preds = %.lr.ph168
  %i.cw = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cw
  store i32 -1, ptr %i.cx, align 4, !tbaa !64
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph168
  %i.cy = xor i32 %i.cu, -1                       ; 2 uses
  %i.cz = zext nneg i32 %i.cy to i64              ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cz
  store i32 -1, ptr %i.da, align 4, !tbaa !64
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cz
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !64
  %i.db = icmp eq i32 %.pre, -1
  br i1 %i.db, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.thread197, %bb.j
  %.0131201 = phi i32 [ %i.cu, %.thread197 ], [ %i.cy, %bb.j ]
  %.pre-phi200 = phi i64 [ %i.cw, %.thread197 ], [ %i.cz, %bb.j ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.pre-phi200 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !64
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.pre-phi200
  %i.dg = add nsw i32 %.3138166, 1
  %i.dh = sext i32 %.3138166 to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.dh
  store i32 %.0131201, ptr %i.di, align 4, !tbaa !64
  store i32 -2, ptr %i.dc, align 4, !tbaa !64
  store i32 -2, ptr %i.df, align 4, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.4 = phi i32 [ %i.dg, %bb.l ], [ %.3138166, %bb.k ], [ %.3138166, %bb.j ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0140167, i64 8
  %.0140 = load ptr, ptr %i.dj, align 8, !tbaa !221 ; 2 uses
  %.not150 = icmp eq ptr %.0140, null
  br i1 %.not150, label %.loopexit, label %.lr.ph168, !llvm.loop !228

._crit_edge:                                      ; preds = %.loopexit, %.preheader154, %.preheader
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #28
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #28
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #28
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #28
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #28
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #28
  %i.dk = icmp eq ptr %i.af, null
  br i1 %i.dk, label %_ZN10btSoftBody4LinkdaEPv.exit152, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.af)
          to label %_ZN10btSoftBody4LinkdaEPv.exit152 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  tail call void @__clang_call_terminate(ptr %i.dm) #26
  unreachable

_ZN10btSoftBody4LinkdaEPv.exit152:                ; preds = %bb.n, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btSoftBodyHelpers9DrawFrameEP10btSoftBodyP12btIDebugDraw(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 11 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 16         ; 4 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 16         ; 4 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btVector3, align 16         ; 4 uses
  %15 = alloca %class.btVector3, align 16         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 649
  %i.b = load i8, ptr %i.a, align 1, !tbaa !229, !range !36, !noundef !37
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.h = load float, ptr %i.g, align 4, !tbaa !9, !noalias !230 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.k = load float, ptr %i.j, align 4, !tbaa !9, !noalias !230
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.p = load float, ptr %i.o, align 4, !tbaa !9, !noalias !230 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.u = load float, ptr %i.t, align 4, !tbaa !9, !noalias !230 ; 2 uses
  %i.v = load <2 x float>, ptr %i.e, align 4, !tbaa !9, !noalias !230 ; 3 uses
  %i.w = load <2 x float>, ptr %i.m, align 4, !tbaa !9, !noalias !230 ; 5 uses
  %i.x = load float, ptr %i.q, align 4, !tbaa !9, !noalias !230
  %i.y = load <2 x float>, ptr %i.s, align 4, !tbaa !9, !noalias !230 ; 3 uses
  %i.z = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = shufflevector <2 x float> %i.v, <2 x float> %i.y, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ac = fmul <2 x float> %i.aa, %i.ab
  %i.ad = shufflevector <2 x float> %i.v, <2 x float> %i.y, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ae = insertelement <2 x float> poison, float %i.k, i64 0 ; 2 uses
  %i.af = insertelement <2 x float> %i.ae, float %i.u, i64 1 ; 2 uses
  %i.ag = shufflevector <2 x float> %i.v, <2 x float> %i.w, <2 x i32> <i32 1, i32 2>
  %i.ah = shufflevector <2 x float> %i.w, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ai = fmul <2 x float> %i.ag, %i.ah
  %i.aj = shufflevector <2 x float> %i.ab, <2 x float> %i.w, <2 x i32> <i32 0, i32 3>
  %i.ak = shufflevector <2 x float> %i.w, <2 x float> %i.y, <2 x i32> <i32 1, i32 3>
  %i.al = fmul <2 x float> %i.aj, %i.ak
  %i.am = insertelement <2 x float> poison, float %i.p, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ad, <2 x float> %i.al)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 772
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.as = load float, ptr %i.ar, align 4, !tbaa !9, !noalias !230 ; 3 uses
  %i.at = extractelement <2 x float> %i.w, i64 0
  %i.au = load float, ptr %i.l, align 4, !tbaa !9, !noalias !230 ; 3 uses
  %i.av = load float, ptr %i.f, align 4, !tbaa !9, !noalias !230 ; 2 uses
  %i.aw = load float, ptr %i.n, align 4, !tbaa !9, !noalias !230 ; 2 uses
  %i.ax = load float, ptr %i.i, align 4, !tbaa !9, !noalias !230 ; 2 uses
  %i.ay = load float, ptr %i.r, align 4, !tbaa !9, !noalias !230 ; 2 uses
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.ad, <2 x float> %i.ac)
  %i.bc = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.af, <2 x float> %i.bb) ; 4 uses
  %i.bf = insertelement <2 x float> %i.ad, float %i.au, i64 1
  %i.bg = insertelement <2 x float> %i.ad, float %i.au, i64 0
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> %i.ai)
  %i.bi = insertelement <2 x float> %i.ae, float %i.aw, i64 1
  %i.bj = insertelement <2 x float> poison, float %i.aw, i64 0 ; 2 uses
  %i.bk = insertelement <2 x float> %i.bj, float %i.u, i64 1
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bh) ; 3 uses
  %i.bm = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.af, <2 x float> %i.ao) ; 4 uses
  %i.bp = load float, ptr %i.ap, align 4, !tbaa !9, !noalias !230 ; 3 uses
  %i.bq = load float, ptr %i.aq, align 4, !tbaa !9, !noalias !230 ; 3 uses
  %i.br = fmul float %i.h, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.av, float %i.bp, float %i.br)
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.as, float %i.bs) ; 4 uses
  %i.bu = fmul float %i.at, %i.bq
  %i.bv = fmul float %i.x, %i.bq
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.au, float %i.bp, float %i.bu)
  %i.bx = insertelement <2 x float> %i.bj, float %i.p, i64 1
  %i.by = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bp, i64 1
  %i.ca = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bv, i64 1
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bz, <2 x float> %i.cb) ; 2 uses
  %i.cd = fmul <2 x float> %i.cc, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = fadd float %i.bt, %i.ce
  %i.cg = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.ay, i64 1
  %i.ci = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.as, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ci, <2 x float> %i.cd) ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 1 ; 4 uses
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float 0.000000e+00, float %i.cf) ; 3 uses
  %i.cm = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.bt, float 0.000000e+00, float %i.cm)
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float 0.000000e+00, float %i.cn) ; 2 uses
  %i.cp = extractelement <2 x float> %i.cj, i64 0
  %i.cq = fadd float %i.ck, %i.cp                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.cr = fmul <2 x float> %i.bl, zeroinitializer ; 2 uses
  %i.cs = fadd <2 x float> %i.be, %i.cr
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> zeroinitializer, <2 x float> %i.cs) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ct, %i.ct
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.cw)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cx)
  %i.cy = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fmul <2 x float> %i.ct, %i.da
  %i.dc = fmul float %i.cl, %i.cy
  %i.dd = fmul <2 x float> %i.db, splat (float 1.000000e+01)
  %i.de = fmul float %i.dc, 1.000000e+01
  %i.df = load <2 x float>, ptr %8, align 8, !tbaa !9
  %i.dg = fadd <2 x float> %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.di = load float, ptr %i.dh, align 8, !tbaa !9
  %i.dj = fadd float %i.di, %i.de
  %.sroa.3.12.vec.insert.i57 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dj, i64 0
  store <2 x float> %i.dg, ptr %9, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i57, ptr %i.dk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %10, align 16, !tbaa !9
  %i.dl = load ptr, ptr %1, align 8, !tbaa !69
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> zeroinitializer, <2 x float> %i.bl)
  %i.dp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> zeroinitializer, <2 x float> %i.do) ; 3 uses
  %i.dq = load <2 x float>, ptr %8, align 8, !tbaa !9
  %i.dr = load float, ptr %i.dh, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %12, align 16, !tbaa !9
  %i.dt = load ptr, ptr %1, align 8, !tbaa !69
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.dx = fadd <2 x float> %i.dw, %i.bo           ; 3 uses
  %i.dy = shufflevector <2 x float> %i.dp, <2 x float> %i.dx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dz = fmul <2 x float> %i.dy, %i.dy
  %i.ea = shufflevector <2 x float> %i.dp, <2 x float> %i.dx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.ea, <2 x float> %i.dz)
  %i.ec = insertelement <2 x float> poison, float %i.co, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %i.cq, i64 1 ; 2 uses
  %i.ee = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ed, <2 x float> %i.eb)
  %i.ef = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ee)
  %i.eg = fdiv <2 x float> splat (float 1.000000e+00), %i.ef ; 4 uses
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x float> %i.dp, %i.eh
  %i.ej = extractelement <2 x float> %i.eg, i64 0
  %i.ek = fmul float %i.co, %i.ej
  %i.el = fmul <2 x float> %i.ei, splat (float 1.000000e+01)
  %i.em = fmul float %i.ek, 1.000000e+01
  %i.en = fadd <2 x float> %i.el, %i.dq
  %i.eo = fadd float %i.em, %i.dr
  %.sroa.3.12.vec.insert.i67 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eo, i64 0
  store <2 x float> %i.en, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i67, ptr %i.ds, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.ep = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = fmul <2 x float> %i.dx, %i.ep
  %i.er = extractelement <2 x float> %i.eg, i64 1
  %i.es = fmul float %i.cq, %i.er
  %i.et = fmul <2 x float> %i.eq, splat (float 1.000000e+01)
  %i.eu = fmul float %i.es, 1.000000e+01
  %i.ev = load <2 x float>, ptr %8, align 8, !tbaa !9
  %i.ew = fadd <2 x float> %i.et, %i.ev
  %i.ex = load float, ptr %i.dh, align 8, !tbaa !9
  %i.ey = fadd float %i.eu, %i.ex
  %.sroa.3.12.vec.insert.i77 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ey, i64 0
  store <2 x float> %i.ew, ptr %13, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i77, ptr %i.ez, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %14, align 16, !tbaa !9
  %i.fa = load ptr, ptr %1, align 8, !tbaa !69
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !41
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.fn = load ptr, ptr %i.fg, align 8, !tbaa !40
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %indvars.iv ; 3 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !9 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !9 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !9 ; 2 uses
  %i.fu = fmul float %i.cm, %i.fr
  %i.fv = call float @llvm.fmuladd.f32(float %i.bt, float %i.fp, float %i.fu)
  %i.fw = call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.ft, float %i.fv)
  %i.fx = load float, ptr %i.dh, align 8, !tbaa !9
  %i.fy = fadd float %i.fw, %i.fx                 ; 4 uses
  %.sroa.3.12.vec.insert.i87 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %15, align 16, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store <2 x float> %.sroa.3.12.vec.insert.i87, ptr %i.fh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fz = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x float> %i.bl, %i.ga
  %i.gc = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.gd, <2 x float> %i.gb)
  %i.gf = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.gg, <2 x float> %i.ge)
  %i.gi = load <2 x float>, ptr %8, align 8, !tbaa !9
  %i.gj = fadd <2 x float> %i.gi, %i.gh           ; 6 uses
  %i.gk = extractelement <2 x float> %i.gj, i64 0 ; 2 uses
  %i.gl = fadd float %i.gk, -1.000000e-01
  %i.gm = insertelement <2 x float> %i.gj, float %i.gl, i64 0
  store <2 x float> %i.gm, ptr %2, align 8
  %i.gn = fadd <2 x float> %i.gj, <float 1.000000e-01, float 0.000000e+00> ; 2 uses
  %i.go = fadd float %i.fy, 0.000000e+00
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.go, i64 0 ; 2 uses
  store <2 x float> %i.gn, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %i.fi, align 8
  %i.gp = load ptr, ptr %1, align 8, !tbaa !69
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %15), !inline_history !129
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.gs = extractelement <2 x float> %i.gj, i64 1 ; 2 uses
  %i.gt = fadd float %i.gs, -1.000000e-01
  %.sroa.0.4.vec.insert.i18.i = insertelement <2 x float> %i.gj, float %i.gt, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i18.i, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i87, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.gu = fadd float %i.gk, 0.000000e+00          ; 2 uses
  %i.gv = fadd float %i.gs, 1.000000e-01
  %.sroa.0.0.vec.insert.i22.i = insertelement <2 x float> poison, float %i.gu, i64 0
  %.sroa.0.4.vec.insert.i23.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i22.i, float %i.gv, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i23.i, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %i.fk, align 8
  %i.gw = load ptr, ptr %1, align 8, !tbaa !69
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
end_hunk_0
