Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexSeparableFilter?download=true
inline.NumInlined: 167
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4Ptex4v2_419PtexSeparableFilter4evalEPfiiiffffffff:bb.a
  %i.jr = add nsw i64 %.idx.i1.i, -4              ; 2 uses
  %i.js = lshr exact i64 %i.jr, 2
  %i.jt = add nuw nsw i64 %i.js, 1
  %xtraiter153 = and i64 %i.jt, 7                 ; 2 uses
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %.lr.ph.i3.i.prol.loopexit, label %.lr.ph.i3.i.prol

.lr.ph.i3.i.prol:                                 ; preds = %.lr.ph.i3.i.preheader, %.lr.ph.i3.i.prol
  %.010.i4.i.prol = phi float [ %i.jv, %.lr.ph.i3.i.prol ], [ 0.000000e+00, %.lr.ph.i3.i.preheader ]
  %.079.i5.i.prol = phi ptr [ %i.jw, %.lr.ph.i3.i.prol ], [ %i.hn, %.lr.ph.i3.i.preheader ] ; 2 uses
  %prol.iter155 = phi i64 [ %prol.iter155.next, %.lr.ph.i3.i.prol ], [ 0, %.lr.ph.i3.i.preheader ]
  %i.ju = load float, ptr %.079.i5.i.prol, align 4, !tbaa !41
  %i.jv = fadd float %.010.i4.i.prol, %i.ju       ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.079.i5.i.prol, i64 4 ; 2 uses
  %prol.iter155.next = add i64 %prol.iter155, 1   ; 2 uses
  %prol.iter155.cmp.not = icmp eq i64 %prol.iter155.next, %xtraiter153
  br i1 %prol.iter155.cmp.not, label %.lr.ph.i3.i.prol.loopexit, label %.lr.ph.i3.i.prol, !llvm.loop !65

.lr.ph.i3.i.prol.loopexit:                        ; preds = %.lr.ph.i3.i.prol, %.lr.ph.i3.i.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.i3.i.preheader ], [ %i.jv, %.lr.ph.i3.i.prol ]
  %.010.i4.i.unr = phi float [ 0.000000e+00, %.lr.ph.i3.i.preheader ], [ %i.jv, %.lr.ph.i3.i.prol ]
  %.079.i5.i.unr = phi ptr [ %i.hn, %.lr.ph.i3.i.preheader ], [ %i.jw, %.lr.ph.i3.i.prol ]
  %i.jx = icmp ult i64 %i.jr, 28
  br i1 %i.jx, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.lr.ph.i3.i.prol.loopexit, %.lr.ph.i3.i
  %.010.i4.i = phi float [ %i.ku, %.lr.ph.i3.i ], [ %.010.i4.i.unr, %.lr.ph.i3.i.prol.loopexit ]
  %.079.i5.i = phi ptr [ %i.kv, %.lr.ph.i3.i ], [ %.079.i5.i.unr, %.lr.ph.i3.i.prol.loopexit ] ; 9 uses
  %i.jy = load float, ptr %.079.i5.i, align 4, !tbaa !41
  %i.jz = fadd float %.010.i4.i, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 4
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !41
  %i.kc = fadd float %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 8
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !41
  %i.kf = fadd float %i.kc, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 12
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !41
  %i.ki = fadd float %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 16
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !41
  %i.kl = fadd float %i.ki, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 20
  %i.kn = load float, ptr %i.km, align 4, !tbaa !41
  %i.ko = fadd float %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 24
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !41
  %i.kr = fadd float %i.ko, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 28
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !41
  %i.ku = fadd float %i.kr, %i.kt                 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.079.i5.i, i64 32 ; 2 uses
  %.not.i6.i.7 = icmp eq ptr %i.kv, %i.jq
  br i1 %.not.i6.i.7, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit, label %.lr.ph.i3.i, !llvm.loop !2

_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit: ; preds = %.lr.ph.i3.i.prol.loopexit, %.lr.ph.i3.i, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i
  %.0.lcssa.i7.i = phi float [ 0.000000e+00, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i ], [ %.lcssa.unr, %.lr.ph.i3.i.prol.loopexit ], [ %i.ku, %.lr.ph.i3.i ]
  %i.kw = fmul float %.0.lcssa.i.i, %.0.lcssa.i7.i
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %i.kw, ptr %i.kx, align 8, !tbaa !50
  %i.ky = load i32, ptr %i.v, align 8, !tbaa !31
  %i.kz = sext i32 %i.ky to i64
  %i.la = shl nsw i64 %i.kz, 2                    ; 2 uses
  %i.lb = alloca i8, i64 %i.la, align 16          ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !51
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.lb, i8 0, i64 %i.la, i1 false)
  call void @_ZN4Ptex4v2_419PtexSeparableFilter13splitAndApplyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %13, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(20) %i.aa)
  %i.ld = load float, ptr %i.kx, align 8, !tbaa !50
  %i.le = load i32, ptr %i.k, align 8, !tbaa !27
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4Ptex4v2_48OneValueENS0_8DataTypeEE3one, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !41
  %i.li = fmul float %i.ld, %i.lh
  %i.lj = fdiv float 1.000000e+00, %i.li          ; 6 uses
  %i.lk = load i32, ptr %i.v, align 8, !tbaa !31  ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit
  %i.lm = load ptr, ptr %i.lc, align 8, !tbaa !51 ; 7 uses
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
  %wide.load = load <4 x float>, ptr %i.lp, align 4, !tbaa !41
  %wide.load137 = load <4 x float>, ptr %i.lq, align 4, !tbaa !41
  %i.lr = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ls = fmul <4 x float> %broadcast.splat, %wide.load137
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <4 x float> %i.lr, ptr %i.lt, align 4, !tbaa !41
  store <4 x float> %i.ls, ptr %i.lu, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lv = icmp eq i64 %index.next, %n.vec
  br i1 %i.lv, label %middle.block, label %vector.body, !llvm.loop !66

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
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !41
  %i.ly = fmul float %i.lj, %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  store float %i.ly, ptr %i.lz, align 4, !tbaa !41
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !67

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ma = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.mb = icmp ugt i64 %i.ma, -4
  br i1 %i.mb, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit
  store ptr null, ptr %i.lc, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  br label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit79

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv
  %i.md = load float, ptr %i.mc, align 4, !tbaa !41
  %i.me = fmul float %i.lj, %i.md
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.me, ptr %i.mf, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !41
  %i.mi = fmul float %i.lj, %i.mh
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %i.mi, ptr %i.mj, align 4, !tbaa !41
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next.1
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !41
  %i.mm = fmul float %i.lj, %i.ml
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  store float %i.mm, ptr %i.mn, align 4, !tbaa !41
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next.2
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !41
  %i.mq = fmul float %i.lj, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  store float %i.mq, ptr %i.mr, align 4, !tbaa !41
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !68

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
  %4 = alloca %"class.Ptex::v2_4::PtexSeparableKernel", align 8 ; 56 uses
  %5 = alloca %"class.Ptex::v2_4::PtexSeparableKernel", align 8 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 12 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !43   ; 12 uses
  %i.e = add i32 %i.d, %i.b                       ; 4 uses
  %i.f = load i8, ptr %1, align 8, !tbaa !54
  %i.g = zext nneg i8 %i.f to i32                 ; 4 uses
  %i.h = shl nuw i32 1, %i.g
  %i.i = icmp sgt i32 %i.e, %i.h                  ; 3 uses
  %i.j = icmp slt i32 %i.b, 0                     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !48   ; 13 uses
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !55
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = shl nuw i32 1, %i.r
  %i.t = icmp sgt i32 %i.o, %i.s                  ; 5 uses
  %i.u = icmp slt i32 %i.l, 0                     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !81, !range !82, !noundef !83
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35
  %.neg.i = shl nsw i32 -1, %i.g
  %i.aa = add i32 %.neg.i, %i.e                   ; 3 uses
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
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
  %i.am = load float, ptr %.079.i.i.prol, align 4, !tbaa !41
  %i.an = fadd float %.010.i.i.prol, %i.am        ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %prol.iter278.next = add i64 %prol.iter278, 1   ; 2 uses
  %prol.iter278.cmp.not = icmp eq i64 %prol.iter278.next, %xtraiter276
  br i1 %prol.iter278.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !71

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa254.unr = phi float [ poison, %.lr.ph.i.i.preheader ], [ %i.an, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.an, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %i.ah, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = icmp ult i64 %i.aj, 28
  br i1 %i.ap, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi float [ %i.bm, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.079.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.aq = load float, ptr %.079.i.i, align 4, !tbaa !41
  %i.ar = fadd float %.010.i.i, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !41
  %i.au = fadd float %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.aw = load float, ptr %i.av, align 4, !tbaa !41
  %i.ax = fadd float %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !41
  %i.ba = fadd float %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !41
  %i.bd = fadd float %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !41
  %i.bg = fadd float %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !41
  %i.bj = fadd float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !41
  %i.bm = fadd float %i.bj, %i.bl                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bn, %i.ai
  br i1 %.not.i.i.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d
  %.0.lcssa.i.i = phi float [ 0.000000e+00, %bb.d ], [ %.lcssa254.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bm, %.lr.ph.i.i ]
  %i.bo = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !41
  %i.bq = fadd float %.0.lcssa.i.i, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !41
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit

_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit: ; preds = %bb.c, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i
  %i.br = sub nsw i32 %i.d, %i.aa                 ; 2 uses
  store i32 %i.br, ptr %i.c, align 4, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit, %bb.b
  %i.bs = phi i32 [ %i.br, %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit ], [ %i.d, %bb.b ]
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !35
  %i.bv = sub nsw i32 0, %i.b
  %.not.i71 = icmp eq i32 %i.bu, 1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !38 ; 5 uses
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
  %i.ca = load float, ptr %.079.i.i76.prol, align 4, !tbaa !41
  %i.cb = fadd float %.010.i.i75.prol, %i.ca      ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i76.prol, i64 4 ; 2 uses
  %prol.iter281.next = add i64 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i64 %prol.iter281.next, %xtraiter279
  br i1 %prol.iter281.cmp.not, label %.lr.ph.i.i74.prol.loopexit, label %.lr.ph.i.i74.prol, !llvm.loop !72

.lr.ph.i.i74.prol.loopexit:                       ; preds = %.lr.ph.i.i74.prol, %bb.g
  %.lcssa253.unr = phi float [ poison, %bb.g ], [ %i.cb, %.lr.ph.i.i74.prol ]
  %.010.i.i75.unr = phi float [ 0.000000e+00, %bb.g ], [ %i.cb, %.lr.ph.i.i74.prol ]
  %.079.i.i76.unr = phi ptr [ %.pre.i, %bb.g ], [ %i.cc, %.lr.ph.i.i74.prol ]
  %i.cd = icmp ult i64 %i.bx, 28
  br i1 %i.cd, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i78, label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %.lr.ph.i.i74.prol.loopexit, %.lr.ph.i.i74
  %.010.i.i75 = phi float [ %i.da, %.lr.ph.i.i74 ], [ %.010.i.i75.unr, %.lr.ph.i.i74.prol.loopexit ]
  %.079.i.i76 = phi ptr [ %i.db, %.lr.ph.i.i74 ], [ %.079.i.i76.unr, %.lr.ph.i.i74.prol.loopexit ] ; 9 uses
  %i.ce = load float, ptr %.079.i.i76, align 4, !tbaa !41
  %i.cf = fadd float %.010.i.i75, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 4
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !41
  %i.ci = fadd float %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !41
  %i.cl = fadd float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 12
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !41
  %i.co = fadd float %i.cl, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 16
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !41
  %i.cr = fadd float %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !41
  %i.cu = fadd float %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 24
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !41
  %i.cx = fadd float %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 28
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !41
  %i.da = fadd float %i.cx, %i.cz                 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 32 ; 2 uses
  %.not.i.i77.7 = icmp eq ptr %i.db, %i.bw
  br i1 %.not.i.i77.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i78, label %.lr.ph.i.i74, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i78: ; preds = %.lr.ph.i.i74, %.lr.ph.i.i74.prol.loopexit
  %.lcssa253 = phi float [ %.lcssa253.unr, %.lr.ph.i.i74.prol.loopexit ], [ %i.da, %.lr.ph.i.i74 ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %.pre5.i ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !41
  %i.de = fadd float %.lcssa253, %i.dd
  store float %i.de, ptr %i.dc, align 4, !tbaa !41
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeLENS0_10BorderModeE.exit

end_hunk_0
begin_hunk_1_@_ZN4Ptex4v2_419PtexSeparableFilter13splitAndApplyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE:bb.a
  br i1 %i.u, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !36
  %i.fe = sub nsw i32 0, %i.l
  %.not.i90 = icmp eq i32 %i.fd, 1
  %.phi.trans.insert.i91 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.pre.i92 = load ptr, ptr %.phi.trans.insert.i91, align 8, !tbaa !39 ; 5 uses
  %.pre5.i93 = zext nneg i32 %i.fe to i64         ; 3 uses
  br i1 %.not.i90, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.idx.i.i94 = shl nuw nsw i64 %.pre5.i93, 2     ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.i92, i64 %.idx.i.i94
  %i.fg = add nsw i64 %.idx.i.i94, -4             ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 2
  %i.fi = add nuw nsw i64 %i.fh, 1
  %xtraiter286 = and i64 %i.fi, 7                 ; 2 uses
  %lcmp.mod287.not = icmp eq i64 %xtraiter286, 0
  br i1 %lcmp.mod287.not, label %.lr.ph.i.i96.prol.loopexit, label %.lr.ph.i.i96.prol

.lr.ph.i.i96.prol:                                ; preds = %bb.m, %.lr.ph.i.i96.prol
  %.010.i.i97.prol = phi float [ %i.fk, %.lr.ph.i.i96.prol ], [ 0.000000e+00, %bb.m ]
  %.079.i.i98.prol = phi ptr [ %i.fl, %.lr.ph.i.i96.prol ], [ %.pre.i92, %bb.m ] ; 2 uses
  %prol.iter288 = phi i64 [ %prol.iter288.next, %.lr.ph.i.i96.prol ], [ 0, %bb.m ]
  %i.fj = load float, ptr %.079.i.i98.prol, align 4, !tbaa !41
  %i.fk = fadd float %.010.i.i97.prol, %i.fj      ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.079.i.i98.prol, i64 4 ; 2 uses
  %prol.iter288.next = add i64 %prol.iter288, 1   ; 2 uses
  %prol.iter288.cmp.not = icmp eq i64 %prol.iter288.next, %xtraiter286
  br i1 %prol.iter288.cmp.not, label %.lr.ph.i.i96.prol.loopexit, label %.lr.ph.i.i96.prol, !llvm.loop !74

.lr.ph.i.i96.prol.loopexit:                       ; preds = %.lr.ph.i.i96.prol, %bb.m
  %.lcssa.unr = phi float [ poison, %bb.m ], [ %i.fk, %.lr.ph.i.i96.prol ]
  %.010.i.i97.unr = phi float [ 0.000000e+00, %bb.m ], [ %i.fk, %.lr.ph.i.i96.prol ]
  %.079.i.i98.unr = phi ptr [ %.pre.i92, %bb.m ], [ %i.fl, %.lr.ph.i.i96.prol ]
  %i.fm = icmp ult i64 %i.fg, 28
  br i1 %i.fm, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i100, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %.lr.ph.i.i96.prol.loopexit, %.lr.ph.i.i96
  %.010.i.i97 = phi float [ %i.gj, %.lr.ph.i.i96 ], [ %.010.i.i97.unr, %.lr.ph.i.i96.prol.loopexit ]
  %.079.i.i98 = phi ptr [ %i.gk, %.lr.ph.i.i96 ], [ %.079.i.i98.unr, %.lr.ph.i.i96.prol.loopexit ] ; 9 uses
  %i.fn = load float, ptr %.079.i.i98, align 4, !tbaa !41
  %i.fo = fadd float %.010.i.i97, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %.079.i.i98, i64 4
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !41
  %i.fr = fadd float %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.079.i.i98, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !41
  %i.fu = fadd float %i.fr, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %.079.i.i98, i64 12
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !41
  %i.fx = fadd float %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %.079.i.i98, i64 16
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !41
  %i.ga = fadd float %i.fx, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.079.i.i98, i64 20
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !41
  %i.gd = fadd float %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %.079.i.i98, i64 24
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !41
  %i.gg = fadd float %i.gd, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i.i98, i64 28
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !41
  %i.gj = fadd float %i.gg, %i.gi                 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.079.i.i98, i64 32 ; 2 uses
  %.not.i.i99.7 = icmp eq ptr %i.gk, %i.ff
  br i1 %.not.i.i99.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i100, label %.lr.ph.i.i96, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i100: ; preds = %.lr.ph.i.i96, %.lr.ph.i.i96.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.i.i96.prol.loopexit ], [ %i.gj, %.lr.ph.i.i96 ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i92, i64 %.pre5.i93 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !41
  %i.gn = fadd float %.lcssa, %i.gm
  store float %i.gn, ptr %i.gl, align 4, !tbaa !41
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit

_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit: ; preds = %bb.l, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i100
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.pre.i92, i64 %.pre5.i93
  store ptr %i.go, ptr %.phi.trans.insert.i91, align 8, !tbaa !39
  %i.gp = add nsw i32 %i.fb, %i.l
  store i32 %i.gp, ptr %i.m, align 8, !tbaa !48
  store i32 0, ptr %i.k, align 8, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit, %bb.k
  tail call void @_ZN4Ptex4v2_419PtexSeparableFilter5applyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3)
  br label %bb.bn

bb.o:                                             ; preds = %bb.a
  %or.cond = or i1 %i.j, %i.i
  %i.gq = or i1 %i.u, %i.t
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.gq
  br i1 %or.cond5, label %bb.p, label %bb.bm

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i16 0, ptr %4, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 11 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gr, i8 0, i64 16, i1 false)
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !38
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 16 uses
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !39
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 5 uses
  store i32 0, ptr %i.gw, align 8, !tbaa !40
  store float 0.000000e+00, ptr %i.gt, align 8, !tbaa !41
  store float 0.000000e+00, ptr %i.gv, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store i16 0, ptr %5, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false)
  store ptr %i.gz, ptr %i.gy, align 8, !tbaa !38
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 5 uses
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !39
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  store i32 0, ptr %i.hc, align 8, !tbaa !40
  store float 0.000000e+00, ptr %i.gz, align 8, !tbaa !41
  store float 0.000000e+00, ptr %i.hb, align 8, !tbaa !41
  br i1 %i.i, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !28
  %i.hg = icmp sgt i32 %i.hf, -1
  br i1 %i.hg, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  %.neg.i102 = shl nsw i32 -1, %i.g
  %i.hh = add i32 %.neg.i102, %i.e                ; 5 uses
  %i.hi = icmp slt i32 %i.hh, %i.d
  %.sroa.0.0.copyload.i = load i16, ptr %1, align 8 ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !38 ; 2 uses
  br i1 %i.hi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hl = sext i32 %i.d to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hl
  %i.hn = sext i32 %i.hh to i64                   ; 2 uses
  %i.ho = sub nsw i64 0, %i.hn
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !39
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  store i32 0, ptr %i.gr, align 4, !tbaa !46
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.l, ptr %i.hs, align 8, !tbaa !49
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.hh, ptr %i.ht, align 4, !tbaa !43
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.n, ptr %i.hu, align 8, !tbaa !48
  %i.hv = shl nsw i64 %i.hn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 4 %i.hp, i64 %i.hv, i1 false)
  %i.hw = sext i32 %i.n to i64
  %i.hx = shl nsw i64 %i.hw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 4 %i.hr, i64 %i.hx, i1 false)
  %i.hy = sub nsw i32 %i.d, %i.hh
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6splitRERS1_.exit

bb.t:                                             ; preds = %bb.r
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !39
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !40
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  store i32 %i.b, ptr %i.gr, align 4, !tbaa !46
  %i.id = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.l, ptr %i.id, align 8, !tbaa !49
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.d, ptr %i.ie, align 4, !tbaa !43
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.n, ptr %i.if, align 8, !tbaa !48
  %i.ig = sext i32 %i.d to i64
  %i.ih = shl nsw i64 %i.ig, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 4 %i.hk, i64 %i.ih, i1 false)
  %i.ii = sext i32 %i.n to i64
  %i.ij = shl nsw i64 %i.ii, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 4 %i.ia, i64 %i.ij, i1 false)
  %i.ik = and i16 %.sroa.0.0.copyload.i, 255
  %i.il = zext nneg i16 %i.ik to i32
  %.neg8.i = shl nsw i32 -1, %i.il
  %i.im = add i32 %.neg8.i, %i.b                  ; 2 uses
  store i32 %i.im, ptr %i.gr, align 4, !tbaa !46
  store i32 0, ptr %i.a, align 4, !tbaa !46
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6splitRERS1_.exit

_ZN4Ptex4v2_419PtexSeparableKernel6splitRERS1_.exit: ; preds = %bb.s, %bb.t
  %i.in = phi i32 [ %i.hh, %bb.s ], [ %i.d, %bb.t ] ; 3 uses
  %i.io = phi i32 [ 0, %bb.s ], [ %i.im, %bb.t ]  ; 2 uses
  %.sink.i = phi i32 [ 0, %bb.s ], [ %i.ic, %bb.t ] ; 2 uses
  %storemerge.i = phi i32 [ %i.hy, %bb.s ], [ 0, %bb.t ]
  %.in = lshr i16 %.sroa.0.0.copyload.i, 8
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !38
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !39
  store i32 %.sink.i, ptr %i.gw, align 8, !tbaa !40
  store i32 %storemerge.i, ptr %i.c, align 4, !tbaa !43
  br i1 %i.t, label %bb.u, label %bb.z

bb.u:                                             ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6splitRERS1_.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !28
  %i.ir = icmp sgt i32 %i.iq, -1
  br i1 %i.ir, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 16
  %6 = zext nneg i16 %.in to i32
  %.neg.i103 = shl nsw i32 -1, %6
  %i.it = add i32 %.neg.i103, %i.l                ; 3 uses
  %i.iu = add i32 %i.it, %i.n                     ; 3 uses
  %i.iv = icmp slt i32 %i.iu, %i.n
  br i1 %i.iv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.iw = sext i32 %i.n to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.iw
  %i.iy = sext i32 %i.iu to i64                   ; 2 uses
  %i.iz = sub nsw i64 0, %i.iy
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.iz
  store i16 %.sroa.0.0.copyload.i, ptr %5, align 8
  store i32 %i.io, ptr %i.gx, align 4, !tbaa !46
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.jb, align 8, !tbaa !49
  %i.jc = sext i32 %i.in to i64
  %i.jd = shl nsw i64 %i.jc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gz, ptr nonnull align 8 %i.gt, i64 %i.jd, i1 false)
  %i.je = shl nsw i64 %i.iy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr nonnull align 4 %i.ja, i64 %i.je, i1 false)
  %i.jf = sub i32 0, %i.it
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_.exit

bb.x:                                             ; preds = %bb.v
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 %.sroa.0.0.copyload.i, ptr %5, align 8
  store i32 %i.io, ptr %i.gx, align 4, !tbaa !46
  %i.jh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ji = sext i32 %i.in to i64
  %i.jj = shl nsw i64 %i.ji, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gz, ptr nonnull align 8 %i.gt, i64 %i.jj, i1 false)
  %i.jk = sext i32 %i.n to i64
  %i.jl = shl nsw i64 %i.jk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr nonnull align 8 %i.gv, i64 %i.jl, i1 false)
  store i32 %i.it, ptr %i.jh, align 8, !tbaa !49
  store i32 0, ptr %i.jg, align 8, !tbaa !49
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_.exit

_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_.exit: ; preds = %bb.w, %bb.x
  %.sink = phi i32 [ %i.iu, %bb.w ], [ %i.n, %bb.x ]
  %.sink.i108 = phi i32 [ 0, %bb.w ], [ %.sink.i, %bb.x ]
  %storemerge.i109 = phi i32 [ %i.jf, %bb.w ], [ 0, %bb.x ]
  %i.jm = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.in, ptr %i.jm, align 4, !tbaa !43
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sink, ptr %i.jn, align 8, !tbaa !48
  store ptr %i.gz, ptr %i.gy, align 8, !tbaa !38
  store ptr %i.hb, ptr %i.ha, align 8, !tbaa !39
  store i32 %.sink.i108, ptr %i.hc, align 8, !tbaa !40
  store i32 %storemerge.i109, ptr %i.is, align 8, !tbaa !48
  call void @_ZN4Ptex4v2_419PtexSeparableFilter13applyToCornerERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %5, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 noundef 2)
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !36
  call void @_ZN4Ptex4v2_419PtexSeparableKernel6mergeTENS0_10BorderModeE(ptr noundef nonnull align 8 dereferenceable(124) %4, i32 noundef %i.jp)
  br label %bb.z

bb.z:                                             ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_.exit, %bb.y, %_ZN4Ptex4v2_419PtexSeparableKernel6splitRERS1_.exit
  br i1 %i.u, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.jq = load i32, ptr %i.hd, align 4, !tbaa !28
  %i.jr = icmp sgt i32 %i.jq, -1
  br i1 %i.jr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4Ptex4v2_419PtexSeparableKernel6splitBERS1_(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(124) %5)
  call void @_ZN4Ptex4v2_419PtexSeparableFilter13applyToCornerERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %5, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 noundef 1)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !36
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !49 ; 4 uses
  %i.jw = sub nsw i32 0, %i.jv
  %.not.i110 = icmp eq i32 %i.jt, 1
  %.pre.i112 = load ptr, ptr %i.gu, align 8, !tbaa !39 ; 5 uses
  %.pre5.i113 = sext i32 %i.jw to i64             ; 3 uses
  br i1 %.not.i110, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit122, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.idx.i.i114 = shl nsw i64 %.pre5.i113, 2
  %i.jx = getelementptr inbounds i8, ptr %.pre.i112, i64 %.idx.i.i114
  %.not8.i.i115 = icmp eq i32 %i.jv, 0
  br i1 %.not8.i.i115, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i120, label %.lr.ph.i.i116.preheader

.lr.ph.i.i116.preheader:                          ; preds = %bb.ad
  %i.jy = sext i32 %i.jv to i64
  %i.jz = shl nsw i64 %i.jy, 2                    ; 2 uses
  %i.ka = sub nuw nsw i64 -4, %i.jz
  %i.kb = lshr exact i64 %i.ka, 2
  %i.kc = add nuw nsw i64 %i.kb, 1
  %xtraiter261 = and i64 %i.kc, 7                 ; 2 uses
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.lr.ph.i.i116.prol.loopexit, label %.lr.ph.i.i116.prol

.lr.ph.i.i116.prol:                               ; preds = %.lr.ph.i.i116.preheader, %.lr.ph.i.i116.prol
  %.010.i.i117.prol = phi float [ %i.ke, %.lr.ph.i.i116.prol ], [ 0.000000e+00, %.lr.ph.i.i116.preheader ]
  %.079.i.i118.prol = phi ptr [ %i.kf, %.lr.ph.i.i116.prol ], [ %.pre.i112, %.lr.ph.i.i116.preheader ] ; 2 uses
  %prol.iter263 = phi i64 [ %prol.iter263.next, %.lr.ph.i.i116.prol ], [ 0, %.lr.ph.i.i116.preheader ]
  %i.kd = load float, ptr %.079.i.i118.prol, align 4, !tbaa !41
  %i.ke = fadd float %.010.i.i117.prol, %i.kd     ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.079.i.i118.prol, i64 4 ; 2 uses
  %prol.iter263.next = add i64 %prol.iter263, 1   ; 2 uses
  %prol.iter263.cmp.not = icmp eq i64 %prol.iter263.next, %xtraiter261
  br i1 %prol.iter263.cmp.not, label %.lr.ph.i.i116.prol.loopexit, label %.lr.ph.i.i116.prol, !llvm.loop !75

.lr.ph.i.i116.prol.loopexit:                      ; preds = %.lr.ph.i.i116.prol, %.lr.ph.i.i116.preheader
  %.lcssa259.unr = phi float [ poison, %.lr.ph.i.i116.preheader ], [ %i.ke, %.lr.ph.i.i116.prol ]
  %.010.i.i117.unr = phi float [ 0.000000e+00, %.lr.ph.i.i116.preheader ], [ %i.ke, %.lr.ph.i.i116.prol ]
  %.079.i.i118.unr = phi ptr [ %.pre.i112, %.lr.ph.i.i116.preheader ], [ %i.kf, %.lr.ph.i.i116.prol ]
  %i.kg = icmp ugt i64 %i.jz, -32
  br i1 %i.kg, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i120, label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.prol.loopexit, %.lr.ph.i.i116
  %.010.i.i117 = phi float [ %i.ld, %.lr.ph.i.i116 ], [ %.010.i.i117.unr, %.lr.ph.i.i116.prol.loopexit ]
  %.079.i.i118 = phi ptr [ %i.le, %.lr.ph.i.i116 ], [ %.079.i.i118.unr, %.lr.ph.i.i116.prol.loopexit ] ; 9 uses
  %i.kh = load float, ptr %.079.i.i118, align 4, !tbaa !41
  %i.ki = fadd float %.010.i.i117, %i.kh
  %i.kj = getelementptr inbounds nuw i8, ptr %.079.i.i118, i64 4
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !41
  %i.kl = fadd float %i.ki, %i.kk
  %i.km = getelementptr inbounds nuw i8, ptr %.079.i.i118, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !41
  %i.ko = fadd float %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.079.i.i118, i64 12
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !41
  %i.kr = fadd float %i.ko, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.079.i.i118, i64 16
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !41
  %i.ku = fadd float %i.kr, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %.079.i.i118, i64 20
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !41
  %i.kx = fadd float %i.ku, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %.079.i.i118, i64 24
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !41
  %i.la = fadd float %i.kx, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %.079.i.i118, i64 28
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !41
  %i.ld = fadd float %i.la, %i.lc                 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i118, i64 32 ; 2 uses
  %.not.i.i119.7 = icmp eq ptr %i.le, %i.jx
  br i1 %.not.i.i119.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i120, label %.lr.ph.i.i116, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i120: ; preds = %.lr.ph.i.i116.prol.loopexit, %.lr.ph.i.i116, %bb.ad
  %.0.lcssa.i.i121 = phi float [ 0.000000e+00, %bb.ad ], [ %.lcssa259.unr, %.lr.ph.i.i116.prol.loopexit ], [ %i.ld, %.lr.ph.i.i116 ]
  %i.lf = getelementptr inbounds [4 x i8], ptr %.pre.i112, i64 %.pre5.i113 ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !41
  %i.lh = fadd float %.0.lcssa.i.i121, %i.lg
  store float %i.lh, ptr %i.lf, align 4, !tbaa !41
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit122

_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit122: ; preds = %bb.ac, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i120
  %i.li = getelementptr inbounds [4 x i8], ptr %.pre.i112, i64 %.pre5.i113
  store ptr %i.li, ptr %i.gu, align 8, !tbaa !39
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !48
  %i.ll = add nsw i32 %i.lk, %i.jv
  store i32 %i.ll, ptr %i.lj, align 8, !tbaa !48
  store i32 0, ptr %i.ju, align 8, !tbaa !49
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit122, %bb.z
  call void @_ZN4Ptex4v2_419PtexSeparableFilter15applyAcrossEdgeERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %4, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 noundef 1)
  br label %bb.ah

bb.af:                                            ; preds = %bb.q
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !35
  %.neg.i123 = shl nsw i32 -1, %i.g
  %i.lo = add i32 %.neg.i123, %i.e                ; 3 uses
  %.not.i124 = icmp eq i32 %i.ln, 1
  br i1 %.not.i124, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeRENS0_10BorderModeE.exit133, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !38
  %i.lr = sext i32 %i.d to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.lr
  %i.lt = sext i32 %i.lo to i64                   ; 2 uses
  %i.lu = sub nsw i64 0, %i.lt
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.lu ; 4 uses
  %.idx.i.i125 = shl nsw i64 %i.lt, 2             ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 %.idx.i.i125
  %.not8.i.i126 = icmp eq i32 %i.lo, 0
  br i1 %.not8.i.i126, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i131, label %.lr.ph.i.i127.preheader

.lr.ph.i.i127.preheader:                          ; preds = %bb.ag
  %i.lx = add nsw i64 %.idx.i.i125, -4            ; 2 uses
  %i.ly = lshr exact i64 %i.lx, 2
  %i.lz = add nuw nsw i64 %i.ly, 1
  %xtraiter = and i64 %i.lz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i127.prol.loopexit, label %.lr.ph.i.i127.prol

.lr.ph.i.i127.prol:                               ; preds = %.lr.ph.i.i127.preheader, %.lr.ph.i.i127.prol
end_hunk_1
begin_hunk_2_@_ZN4Ptex4v2_419PtexSeparableFilter13splitAndApplyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE:bb.a
_ZN4Ptex4v2_419PtexSeparableKernel6mergeLENS0_10BorderModeE.exit161: ; preds = %bb.av, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i159
  %i.sq = getelementptr inbounds [4 x i8], ptr %.pre.i151, i64 %.pre5.i152
  store ptr %i.sq, ptr %.phi.trans.insert.i150, align 8, !tbaa !38
  %i.sr = load i32, ptr %i.c, align 4, !tbaa !43
  %i.ss = add nsw i32 %i.sr, %i.rd
  store i32 %i.ss, ptr %i.c, align 4, !tbaa !43
  store i32 0, ptr %i.a, align 4, !tbaa !46
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %_ZN4Ptex4v2_419PtexSeparableKernel6mergeLENS0_10BorderModeE.exit161, %bb.ah
  br i1 %i.t, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.st = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.su = load i32, ptr %i.st, align 4, !tbaa !28
  %i.sv = icmp sgt i32 %i.su, -1
  br i1 %i.sv, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.sw = load i32, ptr %i.k, align 8, !tbaa !49  ; 2 uses
  %i.sx = load i32, ptr %i.m, align 8, !tbaa !48  ; 5 uses
  %i.sy = load i8, ptr %i.p, align 1, !tbaa !55
  %i.sz = zext nneg i8 %i.sy to i32
  %.neg.i162 = shl nsw i32 -1, %i.sz
  %i.ta = add i32 %.neg.i162, %i.sw               ; 3 uses
  %i.tb = add i32 %i.ta, %i.sx                    ; 3 uses
  %i.tc = icmp slt i32 %i.tb, %i.sx
  %.sroa.0.0.copyload.i163 = load i16, ptr %1, align 8 ; 2 uses
  %i.td = load i32, ptr %i.a, align 4, !tbaa !46  ; 2 uses
  %i.te = load i32, ptr %i.c, align 4, !tbaa !43  ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !38 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !39 ; 2 uses
  br i1 %i.tc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.tj = sext i32 %i.sx to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.tj
  %i.tl = sext i32 %i.tb to i64                   ; 2 uses
  %i.tm = sub nsw i64 0, %i.tl
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.tk, i64 %i.tm
  store i16 %.sroa.0.0.copyload.i163, ptr %4, align 8
  store i32 %i.td, ptr %i.gr, align 4, !tbaa !46
  %i.to = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.to, align 8, !tbaa !49
  %i.tp = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.te, ptr %i.tp, align 4, !tbaa !43
  %i.tq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.tb, ptr %i.tq, align 8, !tbaa !48
  %i.tr = sext i32 %i.te to i64
  %i.ts = shl nsw i64 %i.tr, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 4 %i.tg, i64 %i.ts, i1 false)
  %i.tt = shl nsw i64 %i.tl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 4 %i.tn, i64 %i.tt, i1 false)
  %i.tu = sub i32 0, %i.ta
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_.exit169

bb.bb:                                            ; preds = %bb.az
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !40
  store i16 %.sroa.0.0.copyload.i163, ptr %4, align 8
  store i32 %i.td, ptr %i.gr, align 4, !tbaa !46
  %i.tx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.sw, ptr %i.tx, align 8, !tbaa !49
  %i.ty = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.te, ptr %i.ty, align 4, !tbaa !43
  %i.tz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.sx, ptr %i.tz, align 8, !tbaa !48
  %i.ua = sext i32 %i.te to i64
  %i.ub = shl nsw i64 %i.ua, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 4 %i.tg, i64 %i.ub, i1 false)
  %i.uc = sext i32 %i.sx to i64
  %i.ud = shl nsw i64 %i.uc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 4 %i.ti, i64 %i.ud, i1 false)
  store i32 %i.ta, ptr %i.tx, align 8, !tbaa !49
  store i32 0, ptr %i.k, align 8, !tbaa !49
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_.exit169

_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_.exit169: ; preds = %bb.ba, %bb.bb
  %.sink.i167 = phi i32 [ 0, %bb.ba ], [ %i.tw, %bb.bb ]
  %storemerge.i168 = phi i32 [ %i.tu, %bb.ba ], [ 0, %bb.bb ]
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !38
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !39
  store i32 %.sink.i167, ptr %i.gw, align 8, !tbaa !40
  store i32 %storemerge.i168, ptr %i.m, align 8, !tbaa !48
  call void @_ZN4Ptex4v2_419PtexSeparableFilter15applyAcrossEdgeERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %4, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 noundef 2)
  br label %bb.be

bb.bc:                                            ; preds = %bb.ay
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !36
  %i.ug = load i32, ptr %i.m, align 8, !tbaa !48  ; 3 uses
  %i.uh = load i32, ptr %i.k, align 8, !tbaa !49
  %i.ui = add i32 %i.uh, %i.ug
  %i.uj = load i8, ptr %i.p, align 1, !tbaa !55
  %i.uk = zext nneg i8 %i.uj to i32
  %.neg.i170 = shl nsw i32 -1, %i.uk
  %i.ul = add i32 %i.ui, %.neg.i170               ; 3 uses
  %.not.i171 = icmp eq i32 %i.uf, 1
  br i1 %.not.i171, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeTENS0_10BorderModeE.exit180, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !39
  %i.uo = sext i32 %i.ug to i64
  %i.up = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.uo
  %i.uq = sext i32 %i.ul to i64                   ; 2 uses
  %i.ur = sub nsw i64 0, %i.uq
  %i.us = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.ur ; 4 uses
  %.idx.i.i172 = shl nsw i64 %i.uq, 2             ; 2 uses
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 %.idx.i.i172
  %.not8.i.i173 = icmp eq i32 %i.ul, 0
  br i1 %.not8.i.i173, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i178, label %.lr.ph.i.i174.preheader

.lr.ph.i.i174.preheader:                          ; preds = %bb.bd
  %i.uu = add nsw i64 %.idx.i.i172, -4            ; 2 uses
  %i.uv = lshr exact i64 %i.uu, 2
  %i.uw = add nuw nsw i64 %i.uv, 1
  %xtraiter270 = and i64 %i.uw, 7                 ; 2 uses
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader, %.lr.ph.i.i174.prol
  %.010.i.i175.prol = phi float [ %i.uy, %.lr.ph.i.i174.prol ], [ 0.000000e+00, %.lr.ph.i.i174.preheader ]
  %.079.i.i176.prol = phi ptr [ %i.uz, %.lr.ph.i.i174.prol ], [ %i.us, %.lr.ph.i.i174.preheader ] ; 2 uses
  %prol.iter272 = phi i64 [ %prol.iter272.next, %.lr.ph.i.i174.prol ], [ 0, %.lr.ph.i.i174.preheader ]
  %i.ux = load float, ptr %.079.i.i176.prol, align 4, !tbaa !41
  %i.uy = fadd float %.010.i.i175.prol, %i.ux     ; 3 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.079.i.i176.prol, i64 4 ; 2 uses
  %prol.iter272.next = add i64 %prol.iter272, 1   ; 2 uses
  %prol.iter272.cmp.not = icmp eq i64 %prol.iter272.next, %xtraiter270
  br i1 %prol.iter272.cmp.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol, !llvm.loop !79

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader
  %.lcssa256.unr = phi float [ poison, %.lr.ph.i.i174.preheader ], [ %i.uy, %.lr.ph.i.i174.prol ]
  %.010.i.i175.unr = phi float [ 0.000000e+00, %.lr.ph.i.i174.preheader ], [ %i.uy, %.lr.ph.i.i174.prol ]
  %.079.i.i176.unr = phi ptr [ %i.us, %.lr.ph.i.i174.preheader ], [ %i.uz, %.lr.ph.i.i174.prol ]
  %i.va = icmp ult i64 %i.uu, 28
  br i1 %i.va, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i178, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %.010.i.i175 = phi float [ %i.vx, %.lr.ph.i.i174 ], [ %.010.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ]
  %.079.i.i176 = phi ptr [ %i.vy, %.lr.ph.i.i174 ], [ %.079.i.i176.unr, %.lr.ph.i.i174.prol.loopexit ] ; 9 uses
  %i.vb = load float, ptr %.079.i.i176, align 4, !tbaa !41
  %i.vc = fadd float %.010.i.i175, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %.079.i.i176, i64 4
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !41
  %i.vf = fadd float %i.vc, %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %.079.i.i176, i64 8
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !41
  %i.vi = fadd float %i.vf, %i.vh
  %i.vj = getelementptr inbounds nuw i8, ptr %.079.i.i176, i64 12
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !41
  %i.vl = fadd float %i.vi, %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %.079.i.i176, i64 16
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !41
  %i.vo = fadd float %i.vl, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %.079.i.i176, i64 20
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !41
  %i.vr = fadd float %i.vo, %i.vq
  %i.vs = getelementptr inbounds nuw i8, ptr %.079.i.i176, i64 24
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !41
  %i.vu = fadd float %i.vr, %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %.079.i.i176, i64 28
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !41
  %i.vx = fadd float %i.vu, %i.vw                 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %.079.i.i176, i64 32 ; 2 uses
  %.not.i.i177.7 = icmp eq ptr %i.vy, %i.ut
  br i1 %.not.i.i177.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i178, label %.lr.ph.i.i174, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i178: ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %bb.bd
  %.0.lcssa.i.i179 = phi float [ 0.000000e+00, %bb.bd ], [ %.lcssa256.unr, %.lr.ph.i.i174.prol.loopexit ], [ %i.vx, %.lr.ph.i.i174 ]
  %i.vz = getelementptr inbounds i8, ptr %i.us, i64 -4 ; 2 uses
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !41
  %i.wb = fadd float %.0.lcssa.i.i179, %i.wa
  store float %i.wb, ptr %i.vz, align 4, !tbaa !41
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeTENS0_10BorderModeE.exit180

_ZN4Ptex4v2_419PtexSeparableKernel6mergeTENS0_10BorderModeE.exit180: ; preds = %bb.bc, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i178
  %i.wc = sub nsw i32 %i.ug, %i.ul
  store i32 %i.wc, ptr %i.m, align 8, !tbaa !48
  br label %bb.be

bb.be:                                            ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6splitTERS1_.exit169, %_ZN4Ptex4v2_419PtexSeparableKernel6mergeTENS0_10BorderModeE.exit180, %bb.ax
  br i1 %i.u, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  %i.wd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !28
  %i.wf = icmp sgt i32 %i.we, -1
  br i1 %i.wf, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.wg = load i32, ptr %i.k, align 8, !tbaa !49  ; 5 uses
  %i.wh = sub nsw i32 0, %i.wg                    ; 3 uses
  %i.wi = load i32, ptr %i.m, align 8, !tbaa !48  ; 4 uses
  %i.wj = icmp sgt i32 %i.wi, %i.wh
  %.sroa.0.0.copyload.i181 = load i16, ptr %1, align 8 ; 3 uses
  %i.wk = load i32, ptr %i.a, align 4, !tbaa !46  ; 2 uses
  %i.wl = lshr i16 %.sroa.0.0.copyload.i181, 8    ; 2 uses
  br i1 %i.wj, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %7 = zext nneg i16 %i.wl to i32
  %i.wm = shl nuw i32 1, %7
  %i.wn = add nsw i32 %i.wm, %i.wg
  %i.wo = load i32, ptr %i.c, align 4, !tbaa !43  ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !38
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !39 ; 2 uses
  store i16 %.sroa.0.0.copyload.i181, ptr %4, align 8
  store i32 %i.wk, ptr %i.gr, align 4, !tbaa !46
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.wn, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.wo, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.wh, ptr %10, align 8, !tbaa !48
  %i.wt = sext i32 %i.wo to i64
  %i.wu = shl nsw i64 %i.wt, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 4 %i.wq, i64 %i.wu, i1 false)
  %i.wv = sext i32 %i.wh to i64                   ; 2 uses
  %i.ww = shl nsw i64 %i.wv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 4 %i.ws, i64 %i.ww, i1 false)
  %i.wx = add nsw i32 %i.wi, %i.wg
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.ws, i64 %i.wv
  store ptr %i.wy, ptr %i.wr, align 8, !tbaa !39
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6splitBERS1_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.wz = load i32, ptr %i.c, align 4, !tbaa !43  ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !38
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !39
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !40
  store i16 %.sroa.0.0.copyload.i181, ptr %4, align 8
  store i32 %i.wk, ptr %i.gr, align 4, !tbaa !46
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.wg, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.wz, ptr %12, align 4, !tbaa !43
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.wi, ptr %13, align 8, !tbaa !48
  %i.xg = sext i32 %i.wz to i64
  %i.xh = shl nsw i64 %i.xg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 4 %i.xb, i64 %i.xh, i1 false)
  %i.xi = sext i32 %i.wi to i64
  %i.xj = shl nsw i64 %i.xi, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gv, ptr align 4 %i.xd, i64 %i.xj, i1 false)
  %14 = zext nneg i16 %i.wl to i32
  %i.xk = shl nuw i32 1, %14
  %i.xl = add nsw i32 %i.xk, %i.wg
  store i32 %i.xl, ptr %11, align 8, !tbaa !49
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6splitBERS1_.exit

_ZN4Ptex4v2_419PtexSeparableKernel6splitBERS1_.exit: ; preds = %bb.bh, %bb.bi
  %.sink215 = phi i32 [ 0, %bb.bh ], [ %i.xf, %bb.bi ]
  %.sink.i182 = phi i32 [ %i.wx, %bb.bh ], [ 0, %bb.bi ]
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !38
  store ptr %i.gv, ptr %i.gu, align 8, !tbaa !39
  store i32 %.sink215, ptr %i.gw, align 8, !tbaa !40
  store i32 0, ptr %i.k, align 8, !tbaa !49
  store i32 %.sink.i182, ptr %i.m, align 8, !tbaa !48
  call void @_ZN4Ptex4v2_419PtexSeparableFilter15applyAcrossEdgeERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %4, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i32 noundef 0)
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bf
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !36
  %i.xo = load i32, ptr %i.k, align 8, !tbaa !49  ; 4 uses
  %i.xp = sub nsw i32 0, %i.xo
  %.not.i183 = icmp eq i32 %i.xn, 1
  %.phi.trans.insert.i184 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.pre.i185 = load ptr, ptr %.phi.trans.insert.i184, align 8, !tbaa !39 ; 5 uses
  %.pre5.i186 = sext i32 %i.xp to i64             ; 3 uses
  br i1 %.not.i183, label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit195, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.idx.i.i187 = shl nsw i64 %.pre5.i186, 2
  %i.xq = getelementptr inbounds i8, ptr %.pre.i185, i64 %.idx.i.i187
  %.not8.i.i188 = icmp eq i32 %i.xo, 0
  br i1 %.not8.i.i188, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i193, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %bb.bk
  %i.xr = sext i32 %i.xo to i64
  %i.xs = shl nsw i64 %i.xr, 2                    ; 2 uses
  %i.xt = sub nuw nsw i64 -4, %i.xs
  %i.xu = lshr exact i64 %i.xt, 2
  %i.xv = add nuw nsw i64 %i.xu, 1
  %xtraiter273 = and i64 %i.xv, 7                 ; 2 uses
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol

.lr.ph.i.i189.prol:                               ; preds = %.lr.ph.i.i189.preheader, %.lr.ph.i.i189.prol
  %.010.i.i190.prol = phi float [ %i.xx, %.lr.ph.i.i189.prol ], [ 0.000000e+00, %.lr.ph.i.i189.preheader ]
  %.079.i.i191.prol = phi ptr [ %i.xy, %.lr.ph.i.i189.prol ], [ %.pre.i185, %.lr.ph.i.i189.preheader ] ; 2 uses
  %prol.iter275 = phi i64 [ %prol.iter275.next, %.lr.ph.i.i189.prol ], [ 0, %.lr.ph.i.i189.preheader ]
  %i.xw = load float, ptr %.079.i.i191.prol, align 4, !tbaa !41
  %i.xx = fadd float %.010.i.i190.prol, %i.xw     ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.079.i.i191.prol, i64 4 ; 2 uses
  %prol.iter275.next = add i64 %prol.iter275, 1   ; 2 uses
  %prol.iter275.cmp.not = icmp eq i64 %prol.iter275.next, %xtraiter273
  br i1 %prol.iter275.cmp.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol, !llvm.loop !80

.lr.ph.i.i189.prol.loopexit:                      ; preds = %.lr.ph.i.i189.prol, %.lr.ph.i.i189.preheader
  %.lcssa255.unr = phi float [ poison, %.lr.ph.i.i189.preheader ], [ %i.xx, %.lr.ph.i.i189.prol ]
  %.010.i.i190.unr = phi float [ 0.000000e+00, %.lr.ph.i.i189.preheader ], [ %i.xx, %.lr.ph.i.i189.prol ]
  %.079.i.i191.unr = phi ptr [ %.pre.i185, %.lr.ph.i.i189.preheader ], [ %i.xy, %.lr.ph.i.i189.prol ]
  %i.xz = icmp ugt i64 %i.xs, -32
  br i1 %i.xz, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i193, label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189
  %.010.i.i190 = phi float [ %i.yw, %.lr.ph.i.i189 ], [ %.010.i.i190.unr, %.lr.ph.i.i189.prol.loopexit ]
  %.079.i.i191 = phi ptr [ %i.yx, %.lr.ph.i.i189 ], [ %.079.i.i191.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %i.ya = load float, ptr %.079.i.i191, align 4, !tbaa !41
  %i.yb = fadd float %.010.i.i190, %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %.079.i.i191, i64 4
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !41
  %i.ye = fadd float %i.yb, %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %.079.i.i191, i64 8
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !41
  %i.yh = fadd float %i.ye, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %.079.i.i191, i64 12
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !41
  %i.yk = fadd float %i.yh, %i.yj
  %i.yl = getelementptr inbounds nuw i8, ptr %.079.i.i191, i64 16
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !41
  %i.yn = fadd float %i.yk, %i.ym
  %i.yo = getelementptr inbounds nuw i8, ptr %.079.i.i191, i64 20
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !41
  %i.yq = fadd float %i.yn, %i.yp
  %i.yr = getelementptr inbounds nuw i8, ptr %.079.i.i191, i64 24
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !41
  %i.yt = fadd float %i.yq, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %.079.i.i191, i64 28
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !41
  %i.yw = fadd float %i.yt, %i.yv                 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.079.i.i191, i64 32 ; 2 uses
  %.not.i.i192.7 = icmp eq ptr %i.yx, %i.xq
  br i1 %.not.i.i192.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i193, label %.lr.ph.i.i189, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i193: ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189, %bb.bk
  %.0.lcssa.i.i194 = phi float [ 0.000000e+00, %bb.bk ], [ %.lcssa255.unr, %.lr.ph.i.i189.prol.loopexit ], [ %i.yw, %.lr.ph.i.i189 ]
  %i.yy = getelementptr inbounds [4 x i8], ptr %.pre.i185, i64 %.pre5.i186 ; 2 uses
  %i.yz = load float, ptr %i.yy, align 4, !tbaa !41
  %i.za = fadd float %.0.lcssa.i.i194, %i.yz
  store float %i.za, ptr %i.yy, align 4, !tbaa !41
  br label %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit195

_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit195: ; preds = %bb.bj, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i193
  %i.zb = getelementptr inbounds [4 x i8], ptr %.pre.i185, i64 %.pre5.i186
  store ptr %i.zb, ptr %.phi.trans.insert.i184, align 8, !tbaa !39
  %i.zc = load i32, ptr %i.m, align 8, !tbaa !48
  %i.zd = add nsw i32 %i.zc, %i.xo
  store i32 %i.zd, ptr %i.m, align 8, !tbaa !48
  store i32 0, ptr %i.k, align 8, !tbaa !49
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel6splitBERS1_.exit, %_ZN4Ptex4v2_419PtexSeparableKernel6mergeBENS0_10BorderModeE.exit195, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.o, %bb.bl
  call void @_ZN4Ptex4v2_419PtexSeparableFilter5applyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_419PtexSeparableKernel6mergeTENS0_10BorderModeE(ptr noundef nonnull align 8 dereferenceable(124) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  %i.e = add i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = zext nneg i8 %i.g to i32
  %.neg = shl nsw i32 -1, %i.h
  %i.i = add i32 %i.e, %.neg                      ; 3 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = sext i32 %i.b to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = sext i32 %i.i to i64                     ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.o ; 4 uses
  %.idx.i = shl nsw i64 %i.n, 2                   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.r = add nsw i64 %.idx.i, -4                  ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi float [ %i.v, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.079.i.prol = phi ptr [ %i.w, %.lr.ph.i.prol ], [ %i.p, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.u = load float, ptr %.079.i.prol, align 4, !tbaa !41
  %i.v = fadd float %.010.i.prol, %i.u            ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !84

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %.010.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %.079.i.unr = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph.i.prol ]
  %i.x = icmp ult i64 %i.r, 28
  br i1 %i.x, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi float [ %i.au, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %.079.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.y = load float, ptr %.079.i, align 4, !tbaa !41
  %i.z = fadd float %.010.i, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !41
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !41
  %i.af = fadd float %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !41
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !41
  %i.al = fadd float %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.079.i, i64 20
  %i.an = load float, ptr %i.am, align 4, !tbaa !41
  %i.ao = fadd float %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.079.i, i64 24
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !41
  %i.ar = fadd float %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !41
  %i.au = fadd float %i.ar, %i.at                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i, i64 32 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4Ptex4v2_419PtexSeparableFilter5applyERNS0_19PtexSeparableKernelEiRKNS0_8FaceInfoE:bb.a
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !27
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.em = load i32, ptr %i.el, align 8, !tbaa !31 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !38 ; 3 uses
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !43  ; 2 uses
  %i.eq = sext i32 %i.ep to i64
  %.idx.i.i.i = shl nsw i64 %i.eq, 2              ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.ep, 0
  br i1 %.not8.i.i.i, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l
  %i.es = add nsw i64 %.idx.i.i.i, -4             ; 2 uses
  %i.et = lshr exact i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1
  %xtraiter288 = and i64 %i.eu, 7                 ; 2 uses
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi float [ %i.ew, %.lr.ph.i.i.i.prol ], [ 0.000000e+00, %.lr.ph.i.i.i.preheader ]
  %.079.i.i.i.prol = phi ptr [ %i.ex, %.lr.ph.i.i.i.prol ], [ %i.eo, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter290 = phi i64 [ %prol.iter290.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ev = load float, ptr %.079.i.i.i.prol, align 4, !tbaa !41
  %i.ew = fadd float %.010.i.i.i.prol, %i.ev      ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter290.next = add i64 %prol.iter290, 1   ; 2 uses
  %prol.iter290.cmp.not = icmp eq i64 %prol.iter290.next, %xtraiter288
  br i1 %prol.iter290.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !91

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa268.unr = phi float [ poison, %.lr.ph.i.i.i.preheader ], [ %i.ew, %.lr.ph.i.i.i.prol ]
  %.010.i.i.i.unr = phi float [ 0.000000e+00, %.lr.ph.i.i.i.preheader ], [ %i.ew, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %i.eo, %.lr.ph.i.i.i.preheader ], [ %i.ex, %.lr.ph.i.i.i.prol ]
  %i.ey = icmp ult i64 %i.es, 28
  br i1 %i.ey, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi float [ %i.fv, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.079.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ez = load float, ptr %.079.i.i.i, align 4, !tbaa !41
  %i.fa = fadd float %.010.i.i.i, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !41
  %i.fd = fadd float %i.fa, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !41
  %i.fg = fadd float %i.fd, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !41
  %i.fj = fadd float %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !41
  %i.fm = fadd float %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 20
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !41
  %i.fp = fadd float %i.fm, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 24
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !41
  %i.fs = fadd float %i.fp, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 28
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !41
  %i.fv = fadd float %i.fs, %i.fu                 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.fw, %i.er
  br i1 %.not.i.i.i.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.l
  %.0.lcssa.i.i.i = phi float [ 0.000000e+00, %bb.l ], [ %.lcssa268.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.fv, %.lr.ph.i.i.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !39 ; 3 uses
  %i.fz = load i32, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %.idx.i1.i.i = shl nsw i64 %i.ga, 2             ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 %.idx.i1.i.i
  %.not8.i2.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not8.i2.i.i, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit.i, label %.lr.ph.i3.i.i.preheader

.lr.ph.i3.i.i.preheader:                          ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i
  %i.gc = add nsw i64 %.idx.i1.i.i, -4            ; 2 uses
  %i.gd = lshr exact i64 %i.gc, 2
  %i.ge = add nuw nsw i64 %i.gd, 1
  %xtraiter291 = and i64 %i.ge, 7                 ; 2 uses
  %lcmp.mod292.not = icmp eq i64 %xtraiter291, 0
  br i1 %lcmp.mod292.not, label %.lr.ph.i3.i.i.prol.loopexit, label %.lr.ph.i3.i.i.prol

.lr.ph.i3.i.i.prol:                               ; preds = %.lr.ph.i3.i.i.preheader, %.lr.ph.i3.i.i.prol
  %.010.i4.i.i.prol = phi float [ %i.gg, %.lr.ph.i3.i.i.prol ], [ 0.000000e+00, %.lr.ph.i3.i.i.preheader ]
  %.079.i5.i.i.prol = phi ptr [ %i.gh, %.lr.ph.i3.i.i.prol ], [ %i.fy, %.lr.ph.i3.i.i.preheader ] ; 2 uses
  %prol.iter293 = phi i64 [ %prol.iter293.next, %.lr.ph.i3.i.i.prol ], [ 0, %.lr.ph.i3.i.i.preheader ]
  %i.gf = load float, ptr %.079.i5.i.i.prol, align 4, !tbaa !41
  %i.gg = fadd float %.010.i4.i.i.prol, %i.gf     ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i5.i.i.prol, i64 4 ; 2 uses
  %prol.iter293.next = add i64 %prol.iter293, 1   ; 2 uses
  %prol.iter293.cmp.not = icmp eq i64 %prol.iter293.next, %xtraiter291
  br i1 %prol.iter293.cmp.not, label %.lr.ph.i3.i.i.prol.loopexit, label %.lr.ph.i3.i.i.prol, !llvm.loop !92

.lr.ph.i3.i.i.prol.loopexit:                      ; preds = %.lr.ph.i3.i.i.prol, %.lr.ph.i3.i.i.preheader
  %.lcssa.unr = phi float [ poison, %.lr.ph.i3.i.i.preheader ], [ %i.gg, %.lr.ph.i3.i.i.prol ]
  %.010.i4.i.i.unr = phi float [ 0.000000e+00, %.lr.ph.i3.i.i.preheader ], [ %i.gg, %.lr.ph.i3.i.i.prol ]
  %.079.i5.i.i.unr = phi ptr [ %i.fy, %.lr.ph.i3.i.i.preheader ], [ %i.gh, %.lr.ph.i3.i.i.prol ]
  %i.gi = icmp ult i64 %i.gc, 28
  br i1 %i.gi, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit.i, label %.lr.ph.i3.i.i

.lr.ph.i3.i.i:                                    ; preds = %.lr.ph.i3.i.i.prol.loopexit, %.lr.ph.i3.i.i
  %.010.i4.i.i = phi float [ %i.hf, %.lr.ph.i3.i.i ], [ %.010.i4.i.i.unr, %.lr.ph.i3.i.i.prol.loopexit ]
  %.079.i5.i.i = phi ptr [ %i.hg, %.lr.ph.i3.i.i ], [ %.079.i5.i.i.unr, %.lr.ph.i3.i.i.prol.loopexit ] ; 9 uses
  %i.gj = load float, ptr %.079.i5.i.i, align 4, !tbaa !41
  %i.gk = fadd float %.010.i4.i.i, %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i5.i.i, i64 4
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !41
  %i.gn = fadd float %i.gk, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.079.i5.i.i, i64 8
  %i.gp = load float, ptr %i.go, align 4, !tbaa !41
  %i.gq = fadd float %i.gn, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %.079.i5.i.i, i64 12
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !41
  %i.gt = fadd float %i.gq, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %.079.i5.i.i, i64 16
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !41
  %i.gw = fadd float %i.gt, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.079.i5.i.i, i64 20
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !41
  %i.gz = fadd float %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %.079.i5.i.i, i64 24
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !41
  %i.hc = fadd float %i.gz, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %.079.i5.i.i, i64 28
  %i.he = load float, ptr %i.hd, align 4, !tbaa !41
  %i.hf = fadd float %i.hc, %i.he                 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i5.i.i, i64 32 ; 2 uses
  %.not.i6.i.i.7 = icmp eq ptr %i.hg, %i.gb
  br i1 %.not.i6.i.i.7, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit.i, label %.lr.ph.i3.i.i, !llvm.loop !2

_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit.i: ; preds = %.lr.ph.i3.i.i.prol.loopexit, %.lr.ph.i3.i.i, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i
  %.0.lcssa.i7.i.i = phi float [ 0.000000e+00, %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i3.i.i.prol.loopexit ], [ %i.hf, %.lr.ph.i3.i.i ]
  %i.hh = fmul float %.0.lcssa.i.i.i, %.0.lcssa.i7.i.i
  %i.hi = icmp ult i32 %i.em, 5
  %i.hj = shl nuw nsw i32 %i.em, 2
  %i.hk = select i1 %i.hi, i32 %i.hj, i32 0
  %i.hl = add nsw i32 %i.hk, %i.ek
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [8 x i8], ptr @_ZN4Ptex4v2_49PtexUtils19applyConstFunctionsE, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !105
  invoke void %i.ho(float noundef %i.hh, ptr noundef %i.ea, ptr noundef %i.ei, i32 noundef %i.em)
          to label %_ZN4Ptex4v2_419PtexSeparableKernel10applyConstEPfPvNS0_8DataTypeEi.exit.thread143 unwind label %bb.h, !inline_history !93

bb.m:                                             ; preds = %bb.j
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !106
  %i.hr = icmp eq i32 %i.hq, 1
  br i1 %i.hr, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !31 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !40
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.p, label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %bb.o
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !51
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ia = zext nneg i32 %i.ht to i64
  %i.ib = shl nuw nsw i64 %i.ia, 2                ; 2 uses
  %i.ic = alloca i8, i64 %i.ib, align 16          ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ic, i8 0, i64 %i.ib, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %.thread, %bb.p
  %i.id = phi ptr [ %i.ic, %bb.p ], [ %i.hz, %.thread ] ; 19 uses
  %i.ie = phi i1 [ true, %bb.p ], [ false, %.thread ]
  %i.if = load ptr, ptr %i.dt, align 8, !tbaa !26
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 56
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef zeroext i1 %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ij = load ptr, ptr %i.dt, align 8, !tbaa !26 ; 2 uses
  br i1 %i.ii, label %bb.s, label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 64
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = invoke i16 %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %bb.t unwind label %bb.v       ; 3 uses

bb.t:                                             ; preds = %bb.s
  %.sroa.6.0.extract.shift = lshr i16 %i.im, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.io = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i32 0, ptr %i.is, align 8, !tbaa !40
  store float 0.000000e+00, ptr %i.ip, align 8, !tbaa !41
  store float 0.000000e+00, ptr %i.ir, align 8, !tbaa !41
  store i16 %i.im, ptr %4, align 8
  %i.it = and i16 %i.im, 255
  %i.iu = zext nneg i16 %i.it to i32
  %i.iv = shl nuw i32 1, %i.iu                    ; 4 uses
  %5 = zext nneg i16 %.sroa.6.0.extract.shift to i32
  %i.iw = shl nuw i32 1, %5                       ; 3 uses
  %i.ix = load i8, ptr %1, align 8, !tbaa !54
  %i.iy = zext nneg i8 %i.ix to i32
  %i.iz = shl nuw i32 1, %i.iy
  %i.ja = sdiv i32 %i.iz, %i.iv
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.jc = load i32, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %bb.t
  %i.je = load i32, ptr %i.jb, align 8, !tbaa !49
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.w

._crit_edge167:                                   ; preds = %._crit_edge162, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN4Ptex4v2_419PtexSeparableKernel5applyEPfPvNS0_8DataTypeEii.exit121

bb.u:                                             ; preds = %bb.al, %bb.ak, %bb.q
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.v:                                             ; preds = %bb.s
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.w:                                             ; preds = %.lr.ph166, %._crit_edge162
  %.071164 = phi i32 [ %i.jc, %.lr.ph166 ], [ %i.kh, %._crit_edge162 ] ; 2 uses
  %.072163 = phi i32 [ %i.je, %.lr.ph166 ], [ %i.ki, %._crit_edge162 ] ; 4 uses
  %i.jr = srem i32 %.072163, %i.iw                ; 2 uses
  %i.js = sdiv i32 %.072163, %i.iw
  store i32 %i.jr, ptr %i.jf, align 8, !tbaa !49
  %i.jt = sub nsw i32 %i.iw, %i.jr
  %i.ju = call noundef i32 @llvm.smin.i32(i32 %.071164, i32 %i.jt) ; 2 uses
  store i32 %i.ju, ptr %i.jg, align 8, !tbaa !48
  %i.jv = load ptr, ptr %i.jh, align 8, !tbaa !39
  %i.jw = sext i32 %.072163 to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = load i32, ptr %i.jb, align 8, !tbaa !49
  %i.jz = sext i32 %i.jy to i64
  %i.ka = sub nsw i64 0, %i.jz
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.ka
  store ptr %i.kb, ptr %i.iq, align 8, !tbaa !39
  %i.kc = load i32, ptr %i.a, align 4, !tbaa !43  ; 2 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %.lr.ph161, label %._crit_edge162

.lr.ph161:                                        ; preds = %bb.w
  %i.ke = load i32, ptr %i.ji, align 4, !tbaa !46
  %i.kf = mul nsw i32 %i.js, %i.ja
  br label %bb.x

._crit_edge162.loopexit:                          ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit119
  %.pre184 = load i32, ptr %i.jg, align 8, !tbaa !48
  br label %._crit_edge162

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit, %bb.w
  %i.kg = phi i32 [ %.pre184, %._crit_edge162.loopexit ], [ %i.ju, %bb.w ] ; 2 uses
  %i.kh = sub nsw i32 %.071164, %i.kg             ; 2 uses
  %i.ki = add nsw i32 %i.kg, %.072163
  %i.kj = icmp sgt i32 %i.kh, 0
  br i1 %i.kj, label %bb.w, label %._crit_edge167, !llvm.loop !94

bb.x:                                             ; preds = %.lr.ph161, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit119
  %.069159 = phi i32 [ %i.kc, %.lr.ph161 ], [ %i.pq, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit119 ] ; 2 uses
  %.070158 = phi i32 [ %i.ke, %.lr.ph161 ], [ %i.pr, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit119 ] ; 4 uses
  %i.kk = sdiv i32 %.070158, %i.iv
  %i.kl = srem i32 %.070158, %i.iv                ; 2 uses
  store i32 %i.kl, ptr %i.in, align 4, !tbaa !46
  %i.km = sub nsw i32 %i.iv, %i.kl
  %i.kn = call noundef i32 @llvm.smin.i32(i32 %.069159, i32 %i.km)
  store i32 %i.kn, ptr %i.jj, align 4, !tbaa !43
  %i.ko = load ptr, ptr %i.jk, align 8, !tbaa !38
  %i.kp = sext i32 %.070158 to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kp
  %i.kr = load i32, ptr %i.ji, align 4, !tbaa !46
  %i.ks = sext i32 %i.kr to i64
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.kt
  store ptr %i.ku, ptr %i.io, align 8, !tbaa !38
  %i.kv = add nsw i32 %i.kk, %i.kf
  %i.kw = load ptr, ptr %i.dt, align 8, !tbaa !26
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 72
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = invoke noundef ptr %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 noundef %i.kv)
          to label %bb.y unwind label %bb.ad      ; 10 uses

bb.y:                                             ; preds = %bb.x
  %.not79 = icmp eq ptr %i.kz, null
  br i1 %.not79, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit119, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !26
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = invoke noundef zeroext i1 %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.kz)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.le = load ptr, ptr %i.kz, align 8, !tbaa !26
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  br i1 %i.ld, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.lh = invoke noundef ptr %i.lg(ptr noundef nonnull align 8 dereferenceable(8) %i.kz)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.li = load i32, ptr %i.jl, align 4, !tbaa !29
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds i8, ptr %i.lh, i64 %i.lj
  %i.ll = load i32, ptr %i.jm, align 8, !tbaa !27
  %i.lm = load i32, ptr %i.jn, align 8, !tbaa !31 ; 3 uses
  %i.ln = load ptr, ptr %i.io, align 8, !tbaa !38 ; 3 uses
  %i.lo = load i32, ptr %i.jj, align 4, !tbaa !43 ; 2 uses
  %i.lp = sext i32 %i.lo to i64
  %.idx.i.i.i99 = shl nsw i64 %i.lp, 2            ; 2 uses
  %i.lq = getelementptr inbounds i8, ptr %i.ln, i64 %.idx.i.i.i99
  %.not8.i.i.i100 = icmp eq i32 %i.lo, 0
  br i1 %.not8.i.i.i100, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i105, label %.lr.ph.i.i.i101.preheader

.lr.ph.i.i.i101.preheader:                        ; preds = %bb.ac
  %i.lr = add nsw i64 %.idx.i.i.i99, -4           ; 2 uses
  %i.ls = lshr exact i64 %i.lr, 2
  %i.lt = add nuw nsw i64 %i.ls, 1
  %xtraiter = and i64 %i.lt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i101.prol.loopexit, label %.lr.ph.i.i.i101.prol

.lr.ph.i.i.i101.prol:                             ; preds = %.lr.ph.i.i.i101.preheader, %.lr.ph.i.i.i101.prol
  %.010.i.i.i102.prol = phi float [ %i.lv, %.lr.ph.i.i.i101.prol ], [ 0.000000e+00, %.lr.ph.i.i.i101.preheader ]
  %.079.i.i.i103.prol = phi ptr [ %i.lw, %.lr.ph.i.i.i101.prol ], [ %i.ln, %.lr.ph.i.i.i101.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i101.prol ], [ 0, %.lr.ph.i.i.i101.preheader ]
  %i.lu = load float, ptr %.079.i.i.i103.prol, align 4, !tbaa !41
  %i.lv = fadd float %.010.i.i.i102.prol, %i.lu   ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.079.i.i.i103.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i101.prol.loopexit, label %.lr.ph.i.i.i101.prol, !llvm.loop !95

.lr.ph.i.i.i101.prol.loopexit:                    ; preds = %.lr.ph.i.i.i101.prol, %.lr.ph.i.i.i101.preheader
  %.lcssa269.unr = phi float [ poison, %.lr.ph.i.i.i101.preheader ], [ %i.lv, %.lr.ph.i.i.i101.prol ]
  %.010.i.i.i102.unr = phi float [ 0.000000e+00, %.lr.ph.i.i.i101.preheader ], [ %i.lv, %.lr.ph.i.i.i101.prol ]
  %.079.i.i.i103.unr = phi ptr [ %i.ln, %.lr.ph.i.i.i101.preheader ], [ %i.lw, %.lr.ph.i.i.i101.prol ]
  %i.lx = icmp ult i64 %i.lr, 28
  br i1 %i.lx, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i105, label %.lr.ph.i.i.i101

.lr.ph.i.i.i101:                                  ; preds = %.lr.ph.i.i.i101.prol.loopexit, %.lr.ph.i.i.i101
  %.010.i.i.i102 = phi float [ %i.mu, %.lr.ph.i.i.i101 ], [ %.010.i.i.i102.unr, %.lr.ph.i.i.i101.prol.loopexit ]
  %.079.i.i.i103 = phi ptr [ %i.mv, %.lr.ph.i.i.i101 ], [ %.079.i.i.i103.unr, %.lr.ph.i.i.i101.prol.loopexit ] ; 9 uses
  %i.ly = load float, ptr %.079.i.i.i103, align 4, !tbaa !41
  %i.lz = fadd float %.010.i.i.i102, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %.079.i.i.i103, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !41
  %i.mc = fadd float %i.lz, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.079.i.i.i103, i64 8
  %i.me = load float, ptr %i.md, align 4, !tbaa !41
  %i.mf = fadd float %i.mc, %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %.079.i.i.i103, i64 12
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !41
  %i.mi = fadd float %i.mf, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %.079.i.i.i103, i64 16
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !41
  %i.ml = fadd float %i.mi, %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %.079.i.i.i103, i64 20
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !41
  %i.mo = fadd float %i.ml, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %.079.i.i.i103, i64 24
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !41
  %i.mr = fadd float %i.mo, %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %.079.i.i.i103, i64 28
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !41
  %i.mu = fadd float %i.mr, %i.mt                 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.079.i.i.i103, i64 32 ; 2 uses
  %.not.i.i.i104.7 = icmp eq ptr %i.mv, %i.lq
  br i1 %.not.i.i.i104.7, label %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i105, label %.lr.ph.i.i.i101, !llvm.loop !2

_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i105: ; preds = %.lr.ph.i.i.i101.prol.loopexit, %.lr.ph.i.i.i101, %bb.ac
  %.0.lcssa.i.i.i106 = phi float [ 0.000000e+00, %bb.ac ], [ %.lcssa269.unr, %.lr.ph.i.i.i101.prol.loopexit ], [ %i.mu, %.lr.ph.i.i.i101 ]
  %i.mw = load ptr, ptr %i.iq, align 8, !tbaa !39 ; 3 uses
  %i.mx = load i32, ptr %i.jg, align 8, !tbaa !48 ; 2 uses
  %i.my = sext i32 %i.mx to i64
  %.idx.i1.i.i107 = shl nsw i64 %i.my, 2          ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.mw, i64 %.idx.i1.i.i107
  %.not8.i2.i.i108 = icmp eq i32 %i.mx, 0
  br i1 %.not8.i2.i.i108, label %_ZNK4Ptex4v2_419PtexSeparableKernel6weightEv.exit.i113, label %.lr.ph.i3.i.i109.preheader

.lr.ph.i3.i.i109.preheader:                       ; preds = %_ZN4Ptex4v2_419PtexSeparableKernel10accumulateEPKfi.exit.i.i105
end_hunk_3
