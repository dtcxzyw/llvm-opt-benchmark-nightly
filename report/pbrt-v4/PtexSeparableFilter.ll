Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexSeparableFilter?download=true
inline.NumInlined: 167
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4Ptex4v2_419PtexSeparableFilter4evalEPfiiiffffffff:bb.a
  %.010.i4.i.prol = phi float [ %i.jv, %.lr.ph.i3.i.prol ], [ 0.000000e+00, %.lr.ph.i3.i.preheader ]
  %.079.i5.i.prol = phi ptr [ %i.jw, %.lr.ph.i3.i.prol ], [ %i.hn, %.lr.ph.i3.i.preheader ] ; 2 uses
  %prol.iter155 = phi i64 [ %prol.iter155.next, %.lr.ph.i3.i.prol ], [ 0, %.lr.ph.i3.i.preheader ]
  %i.ju = load float, ptr %.079.i5.i.prol, align 4, !tbaa !38
  %i.jv = fadd float %.010.i4.i.prol, %i.ju       ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.079.i5.i.prol, i64 4 ; 2 uses
  %prol.iter155.next = add i64 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i64 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.lr.ph.i3.i.prol.loopexit, label %.lr.ph.i3.i.prol, !llvm.loop !59

.lr.ph.i3.i.prol.loopexit:                        ; preds = %.lr.ph.i3.i.prol, %.lr.ph.i3.i.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.i3.i.preheader ], [ %i.jv, %.lr.ph.i3.i.prol ]
  %.010.i4.i.unr = phi float [ 0.000000e+00, %.lr.ph.i3.i.preheader ], [ %i.jv, %.lr.ph.i3.i.prol ]
  %.079.i5.i.unr = phi ptr [ %i.hn, %.lr.ph.i3.i.preheader ], [ %i.jw, %.lr.ph.i3.i.prol ]
  %i.jx = icmp ult i64 %i.jr, 28
  br i1 %i.jx, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.lr.ph.i3.i.prol.loopexit, %.lr.ph.i3.i
  %.010.i4.i = phi float [ %i.ku, %.lr.ph.i3.i ], [ %.010.i4.i.unr, %.lr.ph.i3.i.prol.loopexit ]
  %.079.i5.i = phi ptr [ %i.kv, %.lr.ph.i3.i ], [ %.079.i5.i.unr, %.lr.ph.i3.i.prol.loopexit ] ; 9 uses
  %i.jy = load float, ptr %.079.i5.i, align 4, !tbaa !38
  %i.jz = fadd float %.010.i4.i, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 4
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !38
  %i.kc = fadd float %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !38
  %i.kf = fadd float %i.kc, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 12
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !38
  %i.ki = fadd float %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 16
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !38
  %i.kl = fadd float %i.ki, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 20
  %i.kn = load float, ptr %i.km, align 4, !tbaa !38
  %i.ko = fadd float %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 24
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !38
  %i.kr = fadd float %i.ko, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 28
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !38
  %i.ku = fadd float %i.kr, %i.kt                 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 32 ; 2 uses
  %.not.i6.i.7 = icmp eq ptr %i.kv, %i.jq
  br i1 %.not.i6.i.7, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit, label %.lr.ph.i3.i, !llvm.loop !58

_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit: ; preds = %.lr.ph.i3.i.prol.loopexit, %.lr.ph.i3.i, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i
  %.0.lcssa.i7.i = phi float [ 0.000000e+00, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i ], [ %.lcssa.unr, %.lr.ph.i3.i.prol.loopexit ], [ %i.ku, %.lr.ph.i3.i ]
  %i.kw = fmul float %.0.lcssa.i.i, %.0.lcssa.i7.i
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.kw, ptr %i.kx, align 8, !tbaa !60
  %i.ky = load i32, ptr %i.v, align 8, !tbaa !28
  %i.kz = sext i32 %i.ky to i64
  %i.la = shl nsw i64 %i.kz, 2                    ; 2 uses
  %i.lb = alloca i8, i64 %i.la, align 16          ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !61
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.lb, i8 0, i64 %i.la, i1 false)
  call void @_ZN4Ptex4v2_419PtexSeparableFilter13splitAndApplyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %13, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(20) %i.aa)
  %i.ld = load float, ptr %i.kx, align 8, !tbaa !60
  %i.le = load i32, ptr %i.k, align 8, !tbaa !24
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4Ptex4v2_48OneValueENS0_8DataTypeEE3one, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !38
  %i.li = fmul float %i.ld, %i.lh
  %i.lj = fdiv float 1.000000e+00, %i.li          ; 6 uses
  %i.lk = load i32, ptr %i.v, align 8, !tbaa !28  ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit
  %i.lm = load ptr, ptr %i.lc, align 8, !tbaa !61 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.lk to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.lk, 8
  %i.ln = ptrtoaddr ptr %i.lm to i64
  %i.lo = sub i64 %i.ln, %i.a
  %diff.check = icmp ugt i64 %i.lo, -32
  %or.cond139 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond139, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.lj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %index ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %wide.load = load <4 x float>, ptr %i.lp, align 4, !tbaa !38
  %wide.load137 = load <4 x float>, ptr %i.lq, align 4, !tbaa !38
  %i.lr = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ls = fmul <4 x float> %broadcast.splat, %wide.load137
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <4 x float> %i.lr, ptr %i.lt, align 4, !tbaa !38
  store <4 x float> %i.ls, ptr %i.lu, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter156 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.prol
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !38
  %i.ly = fmul float %i.lj, %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  store float %i.ly, ptr %i.lz, align 4, !tbaa !38
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ma = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.mb = icmp ugt i64 %i.ma, -4
  br i1 %i.mb, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit
  store ptr null, ptr %i.lc, align 8, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit79

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv
  %i.md = load float, ptr %i.mc, align 4, !tbaa !38
  %i.me = fmul float %i.lj, %i.md
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.me, ptr %i.mf, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !38
  %i.mi = fmul float %i.lj, %i.mh
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %i.mi, ptr %i.mj, align 4, !tbaa !38
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next.1
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !38
  %i.mm = fmul float %i.lj, %i.ml
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  store float %i.mm, ptr %i.mn, align 4, !tbaa !38
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next.2
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !38
  %i.mq = fmul float %i.lj, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  store float %i.mq, ptr %i.mr, align 4, !tbaa !38
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !66

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit79: ; preds = %bb.d, %bb.i, %._crit_edge, %bb.q, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4Ptex4v2_414ConvertToFloatEPfPKvNS0_8DataTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_419PtexSeparableFilter13splitAndApplyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.Ptex::v2_4::PtexSeparableKernel", align 8 ; 53 uses
  %5 = alloca %"class.Ptex::v2_4::PtexSeparableKernel", align 8 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !47   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 12 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42   ; 12 uses
  %i.e = add i32 %i.d, %i.b                       ; 4 uses
  %i.f = load i8, ptr %1, align 8, !tbaa !67
  %i.g = zext nneg i8 %i.f to i32                 ; 4 uses
  %i.h = shl nuw i32 1, %i.g
  %i.i = icmp sgt i32 %i.e, %i.h                  ; 3 uses
  %i.j = icmp slt i32 %i.b, 0                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49   ; 13 uses
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !68
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = shl nuw i32 1, %i.r
  %i.t = icmp sgt i32 %i.o, %i.s                  ; 5 uses
  %i.u = icmp slt i32 %i.l, 0                     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !69, !range !70, !noundef !71
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %.neg.i = shl nsw i32 -1, %i.g
  %i.aa = add i32 %.neg.i, %i.e                   ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = sext i32 %i.d to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = sext i32 %i.aa to i64                   ; 2 uses
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ag ; 4 uses
  %.idx.i.i = shl nsw i64 %i.af, 2                ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not8.i.i, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.aj = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1
  %xtraiter276 = and i64 %i.al, 7                 ; 2 uses
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi float [ %i.an, %.lr.ph.i.i.prol ], [ 0.000000e+00, %.lr.ph.i.i.preheader ]
  %.079.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.prol ], [ %i.ah, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter278 = phi i64 [ %prol.iter278.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.am = load float, ptr %.079.i.i.prol, align 4, !tbaa !38
  %i.an = fadd float %.010.i.i.prol, %i.am        ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %prol.iter278.next = add i64 %prol.iter278, 1   ; 2 uses
  %prol.iter278.cmp.not = icmp eq i64 %prol.iter278.next, %xtraiter276
  br i1 %prol.iter278.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !72

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa254.unr = phi float [ poison, %.lr.ph.i.i.preheader ], [ %i.an, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.an, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = icmp ult i64 %i.aj, 28
  br i1 %i.ap, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi float [ %i.bm, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.079.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.aq = load float, ptr %.079.i.i, align 4, !tbaa !38
  %i.ar = fadd float %.010.i.i, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !38
  %i.au = fadd float %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !38
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !38
  %i.ba = fadd float %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !38
  %i.bd = fadd float %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !38
  %i.bg = fadd float %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !38
  %i.bj = fadd float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !38
  %i.bm = fadd float %i.bj, %i.bl                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bn, %i.ai
  br i1 %.not.i.i.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i, label %.lr.ph.i.i, !llvm.loop !58

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.d ], [ %.lcssa254.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bm, %.lr.ph.i.i ]
  %i.bo = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !38
  %i.bq = fadd float %.0.lcssa.i.i, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !38
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit

_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit: ; preds = %bb.c, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i
  %i.br = sub nsw i32 %i.d, %i.aa                 ; 2 uses
  store i32 %i.br, ptr %i.c, align 4, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit, %bb.b
  %i.bs = phi i32 [ %i.br, %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit ], [ %i.d, %bb.b ]
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.bv = sub nsw i32 0, %i.b
  %.not.i71 = icmp eq i32 %i.bu, 1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !34 ; 5 uses
  %.pre5.i = zext nneg i32 %i.bv to i64           ; 3 uses
  br i1 %.not.i71, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeLENS0_10BorderModeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.idx.i.i72 = shl nuw nsw i64 %.pre5.i, 2       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx.i.i72
  %i.bx = add nsw i64 %.idx.i.i72, -4             ; 2 uses
  %i.by = lshr exact i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1
  %xtraiter279 = and i64 %i.bz, 7                 ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %.lr.ph.i.i74.prol.loopexit, label %.lr.ph.i.i74.prol

.lr.ph.i.i74.prol:                                ; preds = %bb.g, %.lr.ph.i.i74.prol
  %.010.i.i75.prol = phi float [ %i.cb, %.lr.ph.i.i74.prol ], [ 0.000000e+00, %bb.g ]
  %.079.i.i76.prol = phi ptr [ %i.cc, %.lr.ph.i.i74.prol ], [ %.pre.i, %bb.g ] ; 2 uses
  %prol.iter281 = phi i64 [ %prol.iter281.next, %.lr.ph.i.i74.prol ], [ 0, %bb.g ]
  %i.ca = load float, ptr %.079.i.i76.prol, align 4, !tbaa !38
  %i.cb = fadd float %.010.i.i75.prol, %i.ca      ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i76.prol, i64 4 ; 2 uses
  %prol.iter281.next = add i64 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i64 %prol.iter281.next, %xtraiter279
  br i1 %prol.iter281.cmp.not, label %.lr.ph.i.i74.prol.loopexit, label %.lr.ph.i.i74.prol, !llvm.loop !73

.lr.ph.i.i74.prol.loopexit:                       ; preds = %.lr.ph.i.i74.prol, %bb.g
  %.lcssa253.unr = phi float [ poison, %bb.g ], [ %i.cb, %.lr.ph.i.i74.prol ]
  %.010.i.i75.unr = phi float [ 0.000000e+00, %bb.g ], [ %i.cb, %.lr.ph.i.i74.prol ]
  %.079.i.i76.unr = phi ptr [ %.pre.i, %bb.g ], [ %i.cc, %.lr.ph.i.i74.prol ]
  %i.cd = icmp ult i64 %i.bx, 28
  br i1 %i.cd, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i78, label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %.lr.ph.i.i74.prol.loopexit, %.lr.ph.i.i74
  %.010.i.i75 = phi float [ %i.da, %.lr.ph.i.i74 ], [ %.010.i.i75.unr, %.lr.ph.i.i74.prol.loopexit ]
  %.079.i.i76 = phi ptr [ %i.db, %.lr.ph.i.i74 ], [ %.079.i.i76.unr, %.lr.ph.i.i74.prol.loopexit ] ; 9 uses
  %i.ce = load float, ptr %.079.i.i76, align 4, !tbaa !38
  %i.cf = fadd float %.010.i.i75, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !38
  %i.ci = fadd float %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !38
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !38
  %i.co = fadd float %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 16
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !38
  %i.cr = fadd float %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !38
  %i.cu = fadd float %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 24
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !38
  %i.cx = fadd float %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 28
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !38
  %i.da = fadd float %i.cx, %i.cz                 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 32 ; 2 uses
  %.not.i.i77.7 = icmp eq ptr %i.db, %i.bw
  br i1 %.not.i.i77.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i78, label %.lr.ph.i.i74, !llvm.loop !58

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i78: ; preds = %.lr.ph.i.i74, %.lr.ph.i.i74.prol.loopexit
  %.lcssa253 = phi float [ %.lcssa253.unr, %.lr.ph.i.i74.prol.loopexit ], [ %i.da, %.lr.ph.i.i74 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.pre5.i ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !38
  %i.de = fadd float %.lcssa253, %i.dd
  store float %i.de, ptr %i.dc, align 4, !tbaa !38
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeLENS0_10BorderModeE.exit

_ZN4Ptex4v2_419PtexSeparableKernel6mergeLENS0_10BorderModeE.exit: ; preds = %bb.f, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i78
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.pre5.i
  store ptr %i.df, ptr %.phi.trans.insert.i, align 8, !tbaa !34
  %i.dg = add nsw i32 %i.bs, %i.b
  store i32 %i.dg, ptr %i.c, align 4, !tbaa !42
  store i32 0, ptr %i.a, align 4, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6mergeLENS0_10BorderModeE.exit, %bb.e
  br i1 %i.t, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !33
  %.neg.i80 = shl nsw i32 -1, %i.r
  %i.dj = add i32 %.neg.i80, %i.o                 ; 3 uses
  %.not.i81 = icmp eq i32 %i.di, 1
  br i1 %.not.i81, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeTENS0_10BorderModeE.exit, label %bb.j

end_hunk_0
