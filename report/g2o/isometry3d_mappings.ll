Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/isometry3d_mappings?download=true
inline.NumInlined: 1877
inline.NumDeleted: 1050
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Quaternion" = type { %"class.Eigen::Matrix" }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [4 x double] }
%"class.Eigen::Matrix.3" = type { %"class.Eigen::PlainObjectBase.4" }
%"class.Eigen::PlainObjectBase.4" = type { %"class.Eigen::DenseStorage.11" }
%"class.Eigen::DenseStorage.11" = type { %"struct.Eigen::internal::plain_array.12" }
%"struct.Eigen::internal::plain_array.12" = type { [3 x double] }
%"class.Eigen::Matrix.13" = type { %"class.Eigen::PlainObjectBase.14" }
%"class.Eigen::PlainObjectBase.14" = type { %"class.Eigen::DenseStorage.21" }
%"class.Eigen::DenseStorage.21" = type { %"struct.Eigen::internal::plain_array.22" }
%"struct.Eigen::internal::plain_array.22" = type { [9 x double] }
%"class.Eigen::Matrix.35" = type { %"class.Eigen::PlainObjectBase.36" }
%"class.Eigen::PlainObjectBase.36" = type { %"class.Eigen::DenseStorage.43" }
%"class.Eigen::DenseStorage.43" = type { %"struct.Eigen::internal::plain_array.44" }
%"struct.Eigen::internal::plain_array.44" = type { [6 x double] }
%"class.Eigen::Matrix.88" = type { %"class.Eigen::PlainObjectBase.89" }
%"class.Eigen::PlainObjectBase.89" = type { %"class.Eigen::DenseStorage.96" }
%"class.Eigen::DenseStorage.96" = type { %"struct.Eigen::internal::plain_array.97" }
%"struct.Eigen::internal::plain_array.97" = type { [7 x double] }
%"class.Eigen::Transform" = type { %"class.Eigen::Matrix.55" }
%"class.Eigen::Matrix.55" = type { %"class.Eigen::PlainObjectBase.56" }
%"class.Eigen::PlainObjectBase.56" = type { %"class.Eigen::DenseStorage.63" }
%"class.Eigen::DenseStorage.63" = type { %"struct.Eigen::internal::plain_array.64" }
%"struct.Eigen::internal::plain_array.64" = type { [16 x double] }
%"class.g2o::SE3Quat" = type { %"class.Eigen::Quaternion", %"class.Eigen::Matrix.3", [8 x i8] }

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2o8internal10normalizedERKN5Eigen10QuaternionIdLi0EEE(ptr dead_on_unwind noalias nofree writable sret(%"class.Eigen::Quaternion") align 16 captures(none) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !11
  %i.a = load <2 x double>, ptr %0, align 16, !tbaa !8 ; 4 uses
  %i.b = fmul <2 x double> %i.a, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load <2 x double>, ptr %i.c, align 16    ; 5 uses
  %i.e = fmul <2 x double> %i.d, %i.d
  %i.f = fadd <2 x double> %i.b, %i.e             ; 2 uses
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.g = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = extractelement <2 x double> %i.d, i64 1
  br i1 %i.h, label %bb.b, label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit.i

bb.b:                                             ; preds = %bb.a
  %.scalar.i.i.i = tail call double @llvm.sqrt.f64(double %i.g)
  %i.j = insertelement <2 x double> poison, double %.scalar.i.i.i, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fdiv <2 x double> %i.a, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %0, align 16, !tbaa !8
  %i.m = fdiv <2 x double> %i.d, %i.k             ; 3 uses
  store <2 x double> %i.m, ptr %i.c, align 16, !tbaa !8
  %i.n = extractelement <2 x double> %i.m, i64 1
  br label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit.i

_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit.i: ; preds = %bb.b, %bb.a
  %i.o = phi <2 x double> [ %i.d, %bb.a ], [ %i.m, %bb.b ]
  %i.p = phi <2 x double> [ %i.a, %bb.a ], [ %i.l, %bb.b ]
  %i.q = phi double [ %i.i, %bb.a ], [ %i.n, %bb.b ]
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.c, label %_ZN3g2o8internal9normalizeERN5Eigen10QuaternionIdLi0EEE.exit

bb.c:                                             ; preds = %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit.i
  %i.s = fneg <2 x double> %i.p
  store <2 x double> %i.s, ptr %0, align 16, !tbaa !8
  %i.t = fneg <2 x double> %i.o
  store <2 x double> %i.t, ptr %i.c, align 16, !tbaa !8
  br label %_ZN3g2o8internal9normalizeERN5Eigen10QuaternionIdLi0EEE.exit

_ZN3g2o8internal9normalizeERN5Eigen10QuaternionIdLi0EEE.exit: ; preds = %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 16 dereferenceable(32) ptr @_ZN3g2o8internal9normalizeERN5Eigen10QuaternionIdLi0EEE(ptr nofree noundef nonnull returned align 16 captures(ret: address, provenance) dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 16, !tbaa !8 ; 4 uses
  %i.b = fmul <2 x double> %i.a, %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load <2 x double>, ptr %i.c, align 16    ; 5 uses
  %i.e = fmul <2 x double> %i.d, %i.d
  %i.f = fadd <2 x double> %i.b, %i.e             ; 2 uses
  %shift = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.f, %shift
  %i.g = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  %i.i = extractelement <2 x double> %i.d, i64 1
  br i1 %i.h, label %bb.b, label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit

bb.b:                                             ; preds = %bb.a
  %.scalar.i.i = tail call double @llvm.sqrt.f64(double %i.g)
  %i.j = insertelement <2 x double> poison, double %.scalar.i.i, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fdiv <2 x double> %i.a, %i.k             ; 2 uses
  store <2 x double> %i.l, ptr %0, align 16, !tbaa !8
  %i.m = fdiv <2 x double> %i.d, %i.k             ; 3 uses
  store <2 x double> %i.m, ptr %i.c, align 16, !tbaa !8
  %i.n = extractelement <2 x double> %i.m, i64 1
  br label %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit

_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit: ; preds = %bb.a, %bb.b
  %i.o = phi <2 x double> [ %i.d, %bb.a ], [ %i.m, %bb.b ]
  %i.p = phi <2 x double> [ %i.a, %bb.a ], [ %i.l, %bb.b ]
  %i.q = phi double [ %i.i, %bb.a ], [ %i.n, %bb.b ]
  %i.r = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit
  %i.s = fneg <2 x double> %i.p
  store <2 x double> %i.s, ptr %0, align 16, !tbaa !8
  %i.t = fneg <2 x double> %i.o
  store <2 x double> %i.t, ptr %i.c, align 16, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE9normalizeEv.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal7toEulerERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.3") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Quaternion", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load double, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.f = fadd double %i.c, %i.e
  %i.g = fadd double %i.a, %i.f                   ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fadd double %i.g, 1.000000e+00
  %i.j = tail call double @sqrt(double noundef %i.i) #7 ; 2 uses
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = fdiv double 5.000000e-01, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load double, ptr %i.p, align 8, !tbaa !10
  %i.r = load double, ptr %i.o, align 8, !tbaa !10
  %i.s = load <2 x double>, ptr %i.n, align 8, !tbaa !10 ; 2 uses
  %i.t = load <2 x double>, ptr %i.m, align 8, !tbaa !10 ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.v = insertelement <2 x double> %i.u, double %i.q, i64 0
  %i.w = fsub <2 x double> %i.s, %i.v
  %i.x = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.y = insertelement <2 x double> %i.x, double %i.r, i64 1
  %i.z = fsub <2 x double> %i.y, %i.t
  %i.aa = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul <2 x double> %i.ab, %i.w
  %i.ad = fmul <2 x double> %i.ab, %i.z
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.ae = fcmp ogt double %i.c, %i.a              ; 2 uses
  %spec.select.i.i.i = zext i1 %i.ae to i64       ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %1, i64 %spec.select.i.i.i
  %.idx.i.i.i.i = select i1 %i.ae, i64 24, i64 0
  %i.ag = getelementptr i8, ptr %i.af, i64 %.idx.i.i.i.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !10
  %i.ai = fcmp ogt double %i.e, %i.ah
  %.1.i.i.i = select i1 %i.ai, i64 2, i64 %spec.select.i.i.i ; 4 uses
  %3 = add nuw nsw i64 %.1.i.i.i, 1               ; 2 uses
  %4 = icmp eq i64 %3, 3
  %i.aj = select i1 %4, i64 0, i64 %3
  %.fr.i.i.i = freeze i64 %i.aj                   ; 5 uses
  %5 = add i64 %.fr.i.i.i, 1                      ; 2 uses
  %.urem.i.i.i = add i64 %.fr.i.i.i, -2
  %.cmp.i.i.i = icmp ult i64 %5, 3
  %6 = select i1 %.cmp.i.i.i, i64 %5, i64 %.urem.i.i.i ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %1, i64 %.1.i.i.i ; 3 uses
  %.idx.i66.i.i.i = mul nuw nsw i64 %.1.i.i.i, 24 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 %.idx.i66.i.i.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !10
  %i.an = getelementptr [8 x i8], ptr %1, i64 %.fr.i.i.i ; 3 uses
  %.idx.i67.i.i.i = mul nuw nsw i64 %.fr.i.i.i, 24 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 %.idx.i67.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !10
  %i.aq = fsub double %i.am, %i.ap
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %6  ; 3 uses
  %.idx.i68.i.i.i = mul i64 %6, 24                ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 %.idx.i68.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !10
  %i.au = fsub double %i.aq, %i.at
  %i.av = fadd double %i.au, 1.000000e+00
  %i.aw = tail call double @sqrt(double noundef %i.av) #7 ; 2 uses
  %i.ax = fmul double %i.aw, 5.000000e-01
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1.i.i.i
  store double %i.ax, ptr %i.ay, align 8, !tbaa !10
  %i.az = fdiv double 5.000000e-01, %i.aw         ; 3 uses
  %i.ba = getelementptr i8, ptr %i.ar, i64 %.idx.i67.i.i.i
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !10
  %i.bc = getelementptr i8, ptr %i.an, i64 %.idx.i68.i.i.i
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !10
  %i.be = fsub double %i.bb, %i.bd
  %i.bf = fmul double %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store double %i.bf, ptr %i.bg, align 8, !tbaa !10
  %i.bh = getelementptr i8, ptr %i.an, i64 %.idx.i66.i.i.i
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bj = getelementptr i8, ptr %i.ak, i64 %.idx.i67.i.i.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !10
  %i.bl = fadd double %i.bi, %i.bk
  %i.bm = fmul double %i.az, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %2, i64 %.fr.i.i.i
  store double %i.bm, ptr %i.bn, align 8, !tbaa !10
  %i.bo = getelementptr i8, ptr %i.ar, i64 %.idx.i66.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr i8, ptr %i.ak, i64 %.idx.i68.i.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !10
  %i.bs = fadd double %i.bp, %i.br
  %i.bt = fmul double %i.az, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %2, i64 %6
  store double %i.bt, ptr %i.bu, align 8, !tbaa !10
  %.pre = load double, ptr %i.bg, align 8, !tbaa !10
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load <2 x double>, ptr %2, align 16, !tbaa !10
  %i.bw = load <2 x double>, ptr %.phi.trans.insert24, align 8, !tbaa !10
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.b, %bb.c
  %i.bx = phi double [ %i.k, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.by = phi <2 x double> [ %i.ac, %bb.b ], [ %i.bv, %bb.c ] ; 4 uses
  %i.bz = phi <2 x double> [ %i.ad, %bb.b ], [ %i.bw, %bb.c ] ; 3 uses
  %i.ca = extractelement <2 x double> %i.by, i64 1 ; 3 uses
  %i.cb = extractelement <2 x double> %i.bz, i64 1 ; 3 uses
  %i.cc = fmul double %i.ca, %i.cb
  %i.cd = extractelement <2 x double> %i.by, i64 0 ; 3 uses
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cd, double %i.cc)
  %i.cf = fmul double %i.ce, 2.000000e+00
  %i.cg = fmul <2 x double> %i.bz, %i.bz
  %i.ch = fneg double %i.cd
  %i.ci = fmul double %i.cb, %i.ch
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.ca, double %i.ci)
  %i.ck = fmul double %i.cj, 2.000000e+00
  %i.cl = fmul double %i.cd, %i.ca
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.cb, double %i.cl)
  %i.cn = fmul double %i.cm, 2.000000e+00
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.by, <2 x double> %i.cg)
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> splat (double -2.000000e+00), <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = tail call double @atan2(double noundef %i.cf, double noundef %i.cq) #7
  %i.cs = tail call double @asin(double noundef %i.ck) #7
  %i.ct = extractelement <2 x double> %i.cp, i64 1
  %i.cu = tail call double @atan2(double noundef %i.cn, double noundef %i.ct) #7
  store double %i.cr, ptr %0, align 8, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.cs, ptr %i.cv, align 8, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.cu, ptr %i.cw, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal9fromEulerERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.13") align 8 captures(none) initializes((0, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !10
  %i.d = fmul <2 x double> %i.c, splat (double 5.000000e-01) ; 2 uses
  %i.e = extractelement <2 x double> %i.d, i64 1  ; 2 uses
  %i.f = tail call double @sin(double noundef %i.e) #7 ; 4 uses
  %i.g = tail call double @cos(double noundef %i.e) #7 ; 4 uses
  %i.h = extractelement <2 x double> %i.d, i64 0  ; 2 uses
  %i.i = tail call double @sin(double noundef %i.h) #7 ; 2 uses
  %i.j = tail call double @cos(double noundef %i.h) #7 ; 2 uses
  %i.k = fmul double %i.a, 5.000000e-01           ; 2 uses
  %i.l = tail call double @sin(double noundef %i.k) #7 ; 2 uses
  %i.m = tail call double @cos(double noundef %i.k) #7 ; 2 uses
  %i.n = fmul double %i.j, %i.m                   ; 2 uses
  %i.o = fmul double %i.i, %i.l                   ; 2 uses
  %i.p = fmul double %i.f, %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.g, double %i.p) ; 3 uses
  %i.r = fmul double %i.j, %i.l                   ; 2 uses
  %i.s = fmul double %i.i, %i.m                   ; 2 uses
  %i.t = fneg double %i.f
  %i.u = fmul double %i.s, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.r, double %i.g, double %i.u) ; 4 uses
  %i.w = fmul double %i.f, %i.r
  %i.x = tail call double @llvm.fmuladd.f64(double %i.s, double %i.g, double %i.w) ; 3 uses
  %i.y = fneg double %i.g
  %i.z = fmul double %i.o, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.n, double %i.f, double %i.z) ; 2 uses
  %i.ab = fmul double %i.v, 2.000000e+00          ; 2 uses
  %i.ac = fmul double %i.x, 2.000000e+00          ; 3 uses
  %i.ad = fmul double %i.aa, 2.000000e+00         ; 4 uses
  %i.ae = fmul double %i.q, %i.ab                 ; 2 uses
  %i.af = fmul double %i.q, %i.ac                 ; 2 uses
  %i.ag = fmul double %i.q, %i.ad                 ; 2 uses
  %i.ah = fmul double %i.v, %i.ab                 ; 2 uses
  %i.ai = fmul double %i.v, %i.ac                 ; 2 uses
  %i.aj = fmul double %i.v, %i.ad                 ; 2 uses
  %i.ak = fmul double %i.x, %i.ac                 ; 2 uses
  %i.al = fmul double %i.x, %i.ad                 ; 2 uses
  %i.am = fmul double %i.aa, %i.ad                ; 2 uses
  %i.an = fadd double %i.ak, %i.am
  %i.ao = fsub double 1.000000e+00, %i.an
  store double %i.ao, ptr %0, align 8, !tbaa !10, !alias.scope !14
  %i.ap = fsub double %i.ai, %i.ag
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ap, ptr %i.aq, align 8, !tbaa !10, !alias.scope !14
  %i.ar = fadd double %i.aj, %i.af
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ar, ptr %i.as, align 8, !tbaa !10, !alias.scope !14
  %i.at = fadd double %i.ai, %i.ag
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.at, ptr %i.au, align 8, !tbaa !10, !alias.scope !14
  %i.av = fadd double %i.am, %i.ah
  %i.aw = fsub double 1.000000e+00, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.aw, ptr %i.ax, align 8, !tbaa !10, !alias.scope !14
  %i.ay = fsub double %i.al, %i.ae
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ay, ptr %i.az, align 8, !tbaa !10, !alias.scope !14
  %i.ba = fsub double %i.aj, %i.af
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ba, ptr %i.bb, align 8, !tbaa !10, !alias.scope !14
  %i.bc = fadd double %i.al, %i.ae
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bc, ptr %i.bd, align 8, !tbaa !10, !alias.scope !14
  %i.be = fadd double %i.ak, %i.ah
  %i.bf = fsub double 1.000000e+00, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.bf, ptr %i.bg, align 8, !tbaa !10, !alias.scope !14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal19toCompactQuaternionERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.3") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Quaternion", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load double, ptr %1, align 8, !tbaa !10  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load double, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.f = fadd double %i.c, %i.e
  %i.g = fadd double %i.a, %i.f                   ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fadd double %i.g, 1.000000e+00
  %i.j = tail call double @sqrt(double noundef %i.i) #7 ; 2 uses
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.k, ptr %i.l, align 8, !tbaa !10
  %i.m = fdiv double 5.000000e-01, %i.j           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load <2 x double>, ptr %i.q, align 8
  %i.s = load double, ptr %i.n, align 8, !tbaa !10
  %i.t = load <2 x double>, ptr %i.o, align 8, !tbaa !10
  %i.u = insertelement <2 x double> %i.r, double %i.s, i64 1
  %i.v = fsub <2 x double> %i.t, %i.u
  %i.w = insertelement <2 x double> poison, double %i.m, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x double> %i.x, %i.v
  store <2 x double> %i.y, ptr %2, align 16, !tbaa !10
  %i.z = load double, ptr %i.p, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !10
  %i.ac = fsub double %i.z, %i.ab
  %i.ad = fmul double %i.m, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.ad, ptr %i.ae, align 16, !tbaa !10
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.af = fcmp ogt double %i.c, %i.a              ; 2 uses
  %spec.select.i.i.i = zext i1 %i.af to i64       ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %spec.select.i.i.i
  %.idx.i.i.i.i = select i1 %i.af, i64 24, i64 0
  %i.ah = getelementptr i8, ptr %i.ag, i64 %.idx.i.i.i.i
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !10
  %i.aj = fcmp ogt double %i.e, %i.ai
  %.1.i.i.i = select i1 %i.aj, i64 2, i64 %spec.select.i.i.i ; 4 uses
  %3 = add nuw nsw i64 %.1.i.i.i, 1               ; 2 uses
  %4 = icmp eq i64 %3, 3
  %i.ak = select i1 %4, i64 0, i64 %3
  %.fr.i.i.i = freeze i64 %i.ak                   ; 5 uses
  %5 = add i64 %.fr.i.i.i, 1                      ; 2 uses
  %.urem.i.i.i = add i64 %.fr.i.i.i, -2
  %.cmp.i.i.i = icmp ult i64 %5, 3
  %6 = select i1 %.cmp.i.i.i, i64 %5, i64 %.urem.i.i.i ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %1, i64 %.1.i.i.i ; 3 uses
  %.idx.i66.i.i.i = mul nuw nsw i64 %.1.i.i.i, 24 ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %.idx.i66.i.i.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !10
  %i.ao = getelementptr [8 x i8], ptr %1, i64 %.fr.i.i.i ; 3 uses
  %.idx.i67.i.i.i = mul nuw nsw i64 %.fr.i.i.i, 24 ; 3 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 %.idx.i67.i.i.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !10
  %i.ar = fsub double %i.an, %i.aq
  %i.as = getelementptr [8 x i8], ptr %1, i64 %6  ; 3 uses
  %.idx.i68.i.i.i = mul i64 %6, 24                ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %.idx.i68.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !10
  %i.av = fsub double %i.ar, %i.au
  %i.aw = fadd double %i.av, 1.000000e+00
  %i.ax = tail call double @sqrt(double noundef %i.aw) #7 ; 2 uses
  %i.ay = fmul double %i.ax, 5.000000e-01
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1.i.i.i
  store double %i.ay, ptr %i.az, align 8, !tbaa !10
  %i.ba = fdiv double 5.000000e-01, %i.ax         ; 3 uses
  %i.bb = getelementptr i8, ptr %i.as, i64 %.idx.i67.i.i.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10
  %i.bd = getelementptr i8, ptr %i.ao, i64 %.idx.i68.i.i.i
  %i.be = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bf = fsub double %i.bc, %i.be
  %i.bg = fmul double %i.ba, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.bg, ptr %i.bh, align 8, !tbaa !10
  %i.bi = getelementptr i8, ptr %i.ao, i64 %.idx.i66.i.i.i
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !10
  %i.bk = getelementptr i8, ptr %i.al, i64 %.idx.i67.i.i.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !10
  %i.bm = fadd double %i.bj, %i.bl
  %i.bn = fmul double %i.ba, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %2, i64 %.fr.i.i.i
  store double %i.bn, ptr %i.bo, align 8, !tbaa !10
  %i.bp = getelementptr i8, ptr %i.as, i64 %.idx.i66.i.i.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !10
  %i.br = getelementptr i8, ptr %i.al, i64 %.idx.i68.i.i.i
  %i.bs = load double, ptr %i.br, align 8, !tbaa !10
  %i.bt = fadd double %i.bq, %i.bs
  %i.bu = fmul double %i.ba, %i.bt
  %i.bv = getelementptr inbounds [8 x i8], ptr %2, i64 %6
  store double %i.bu, ptr %i.bv, align 8, !tbaa !10
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.b, %bb.c
  %i.bw = load <2 x double>, ptr %2, align 16, !tbaa !8 ; 4 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load <2 x double>, ptr %i.by, align 16  ; 4 uses
  %i.ca = fmul <2 x double> %i.bz, %i.bz
  %i.cb = fadd <2 x double> %i.bx, %i.ca          ; 2 uses
  %shift = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cb, %shift
  %i.cc = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cd = fcmp ogt double %i.cc, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i = tail call double @llvm.sqrt.f64(double %i.cc)
  %i.ce = insertelement <2 x double> poison, double %.scalar.i.i.i, i64 0
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = fdiv <2 x double> %i.bw, %i.cf
  %i.ch = fdiv <2 x double> %i.bz, %i.cf
  %i.ci = select i1 %i.cd, <2 x double> %i.cg, <2 x double> %i.bw ; 2 uses
  %i.cj = select i1 %i.cd, <2 x double> %i.ch, <2 x double> %i.bz ; 3 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  %i.cl = fcmp olt double %i.ck, 0.000000e+00     ; 2 uses
  %i.cm = fneg <2 x double> %i.ci
  %i.cn = extractelement <2 x double> %i.cj, i64 0
  %i.co = fneg double %i.cn
  %i.cp = extractelement <2 x double> %i.cj, i64 0
  %i.cq = select i1 %i.cl, double %i.co, double %i.cp
  %i.cr = select i1 %i.cl, <2 x double> %i.cm, <2 x double> %i.ci
  store <2 x double> %i.cr, ptr %0, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.cq, ptr %i.cs, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal21fromCompactQuaternionERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.13") align 8 captures(none) initializes((0, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8       ; 4 uses
  %i.b = fmul <2 x double> %i.a, %i.a             ; 2 uses
  %shift = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.b, %shift
  %i.c = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !10 ; 4 uses
  %i.f = fmul double %i.e, %i.e
  %i.g = fadd double %i.f, %i.c
  %i.h = fsub double 1.000000e+00, %i.g           ; 2 uses
  %i.i = fcmp olt double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = extractelement <2 x double> %i.a, i64 1  ; 3 uses
  %i.m = extractelement <2 x double> %i.a, i64 0  ; 4 uses
  %i.n = tail call double @sqrt(double noundef %i.h) #7 ; 3 uses
  %i.o = fmul double %i.m, 2.000000e+00           ; 2 uses
  %i.p = fmul double %i.l, 2.000000e+00           ; 3 uses
  %i.q = fmul double %i.e, 2.000000e+00           ; 4 uses
  %i.r = fmul double %i.n, %i.o                   ; 2 uses
  %i.s = fmul double %i.n, %i.p                   ; 2 uses
  %i.t = fmul double %i.q, %i.n                   ; 2 uses
  %i.u = fmul double %i.m, %i.o                   ; 2 uses
  %i.v = fmul double %i.m, %i.p                   ; 2 uses
  %i.w = fmul double %i.q, %i.m                   ; 2 uses
  %i.x = fmul double %i.l, %i.p                   ; 2 uses
  %i.y = fmul double %i.q, %i.l                   ; 2 uses
  %i.z = fmul double %i.e, %i.q                   ; 2 uses
  %i.aa = fadd double %i.z, %i.x
  %i.ab = fsub double 1.000000e+00, %i.aa
  %i.ac = fsub double %i.v, %i.t
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ac, ptr %i.ad, align 8, !tbaa !10, !alias.scope !17
  %i.ae = fadd double %i.w, %i.s
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ae, ptr %i.af, align 8, !tbaa !10, !alias.scope !17
  %i.ag = fadd double %i.t, %i.v
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ag, ptr %i.ah, align 8, !tbaa !10, !alias.scope !17
  %i.ai = fadd double %i.z, %i.u
  %i.aj = fsub double 1.000000e+00, %i.ai
  %i.ak = fsub double %i.y, %i.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.ak, ptr %i.al, align 8, !tbaa !10, !alias.scope !17
  %i.am = fsub double %i.w, %i.s
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.am, ptr %i.an, align 8, !tbaa !10, !alias.scope !17
  %i.ao = fadd double %i.y, %i.r
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ao, ptr %i.ap, align 8, !tbaa !10, !alias.scope !17
  %i.aq = fadd double %i.u, %i.x
  %i.ar = fsub double 1.000000e+00, %i.aq
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink6 = phi double [ 1.000000e+00, %bb.b ], [ %i.ab, %bb.c ]
  %.sink5 = phi double [ 1.000000e+00, %bb.b ], [ %i.aj, %bb.c ]
  %.sink = phi double [ 1.000000e+00, %bb.b ], [ %i.ar, %bb.c ]
  store double %.sink6, ptr %0, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %.sink5, ptr %i.as, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %.sink, ptr %i.at, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal11toVectorMQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.35") align 16 captures(none) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Quaternion", align 16 ; 12 uses
  %3 = alloca %"class.Eigen::Matrix.13", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = load <2 x double>, ptr %1, align 16, !tbaa !8 ; 3 uses
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 16, !tbaa !10 ; 2 uses
  store double %i.d, ptr %i.b, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 16, !tbaa !8 ; 3 uses
  store <2 x double> %i.g, ptr %i.e, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 16, !tbaa !10 ; 2 uses
  store double %i.j, ptr %i.h, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !8 ; 3 uses
  store <2 x double> %i.m, ptr %i.k, align 16, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load double, ptr %i.o, align 16, !tbaa !10 ; 3 uses
  store double %i.p, ptr %i.n, align 16, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7, !noalias !20
  %i.q = extractelement <2 x double> %i.a, i64 0  ; 2 uses
  %i.r = extractelement <2 x double> %i.g, i64 1  ; 2 uses
  %i.s = fadd double %i.p, %i.r
  %i.t = fadd double %i.s, %i.q                   ; 2 uses
  %i.u = fcmp ogt double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = extractelement <2 x double> %i.m, i64 0
  %i.w = extractelement <2 x double> %i.m, i64 1
  %i.x = fadd double %i.t, 1.000000e+00
  %i.y = tail call double @sqrt(double noundef %i.x) #7, !noalias !20 ; 2 uses
  %i.z = fmul double %i.y, 5.000000e-01
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.z, ptr %i.aa, align 8, !tbaa !10, !noalias !20
  %i.ab = fdiv double 5.000000e-01, %i.y          ; 3 uses
  %i.ac = fsub double %i.j, %i.w
  %i.ad = fmul double %i.ab, %i.ac
  store double %i.ad, ptr %2, align 16, !tbaa !10, !noalias !20
  %i.ae = fsub double %i.v, %i.d
  %i.af = fmul double %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !10, !noalias !20
  %shift = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.g
  %i.ah = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ai = fmul double %i.ab, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.ai, ptr %i.aj, align 16, !tbaa !10, !noalias !20
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.ak = fcmp ogt double %i.r, %i.q              ; 3 uses
  %spec.select.i.i.i.i = zext i1 %i.ak to i64
  %spec.select.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ak, i64 8, i64 0
  %spec.select.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i.i = select i1 %i.ak, i64 24, i64 0
  %i.al = getelementptr i8, ptr %spec.select.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !10, !noalias !20
  %i.an = fcmp ogt double %i.p, %i.am
  %.1.i.i.i.i = select i1 %i.an, i64 2, i64 %spec.select.i.i.i.i ; 4 uses
  %4 = add nuw nsw i64 %.1.i.i.i.i, 1             ; 2 uses
  %5 = icmp eq i64 %4, 3
  %i.ao = select i1 %5, i64 0, i64 %4
  %.fr.i.i.i.i = freeze i64 %i.ao                 ; 5 uses
  %6 = add i64 %.fr.i.i.i.i, 1                    ; 2 uses
  %.urem.i.i.i.i = add i64 %.fr.i.i.i.i, -2
  %.cmp.i.i.i.i = icmp ult i64 %6, 3
  %7 = select i1 %.cmp.i.i.i.i, i64 %6, i64 %.urem.i.i.i.i ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %3, i64 %.1.i.i.i.i ; 3 uses
  %.idx.i66.i.i.i.i = mul nuw nsw i64 %.1.i.i.i.i, 24 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx.i66.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10, !noalias !20
  %i.as = getelementptr [8 x i8], ptr %3, i64 %.fr.i.i.i.i ; 3 uses
  %.idx.i67.i.i.i.i = mul nuw nsw i64 %.fr.i.i.i.i, 24 ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 %.idx.i67.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !10, !noalias !20
  %i.av = fsub double %i.ar, %i.au
  %i.aw = getelementptr [8 x i8], ptr %3, i64 %7  ; 3 uses
  %.idx.i68.i.i.i.i = mul i64 %7, 24              ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.idx.i68.i.i.i.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !10, !noalias !20
  %i.az = fsub double %i.av, %i.ay
  %i.ba = fadd double %i.az, 1.000000e+00
  %i.bb = tail call double @sqrt(double noundef %i.ba) #7, !noalias !20 ; 2 uses
  %i.bc = fmul double %i.bb, 5.000000e-01
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1.i.i.i.i
  store double %i.bc, ptr %i.bd, align 8, !tbaa !10, !noalias !20
  %i.be = fdiv double 5.000000e-01, %i.bb         ; 3 uses
  %i.bf = getelementptr i8, ptr %i.aw, i64 %.idx.i67.i.i.i.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !10, !noalias !20
  %i.bh = getelementptr i8, ptr %i.as, i64 %.idx.i68.i.i.i.i
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10, !noalias !20
  %i.bj = fsub double %i.bg, %i.bi
  %i.bk = fmul double %i.be, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.bk, ptr %i.bl, align 8, !tbaa !10, !noalias !20
  %i.bm = getelementptr i8, ptr %i.as, i64 %.idx.i66.i.i.i.i
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10, !noalias !20
  %i.bo = getelementptr i8, ptr %i.ap, i64 %.idx.i67.i.i.i.i
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !10, !noalias !20
  %i.bq = fadd double %i.bn, %i.bp
  %i.br = fmul double %i.be, %i.bq
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %.fr.i.i.i.i
  store double %i.br, ptr %i.bs, align 8, !tbaa !10, !noalias !20
  %i.bt = getelementptr i8, ptr %i.aw, i64 %.idx.i66.i.i.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !10, !noalias !20
  %i.bv = getelementptr i8, ptr %i.ap, i64 %.idx.i68.i.i.i.i
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !10, !noalias !20
  %i.bx = fadd double %i.bu, %i.bw
  %i.by = fmul double %i.be, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %2, i64 %7
  store double %i.by, ptr %i.bz, align 8, !tbaa !10, !noalias !20
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit.i

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit.i: ; preds = %bb.c, %bb.b
  %i.ca = load <2 x double>, ptr %2, align 16, !tbaa !8, !noalias !20 ; 4 uses
  %i.cb = fmul <2 x double> %i.ca, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load <2 x double>, ptr %i.cc, align 16, !noalias !20 ; 4 uses
  %i.ce = fmul <2 x double> %i.cd, %i.cd
  %i.cf = fadd <2 x double> %i.cb, %i.ce          ; 2 uses
  %shift33 = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop34 = fadd <2 x double> %i.cf, %shift33
  %i.cg = extractelement <2 x double> %foldExtExtBinop34, i64 0 ; 2 uses
  %i.ch = fcmp ogt double %i.cg, 0.000000e+00     ; 2 uses
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.cg)
  %i.ci = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fdiv <2 x double> %i.ca, %i.cj
  %i.cl = fdiv <2 x double> %i.cd, %i.cj
  %i.cm = select i1 %i.ch, <2 x double> %i.ck, <2 x double> %i.ca ; 2 uses
  %i.cn = select i1 %i.ch, <2 x double> %i.cl, <2 x double> %i.cd ; 2 uses
  %i.co = extractelement <2 x double> %i.cn, i64 1
  %i.cp = fcmp olt double %i.co, 0.000000e+00     ; 2 uses
  %i.cq = fneg <2 x double> %i.cm
  %i.cr = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cs = fneg double %i.cr
  %i.ct = select i1 %i.cp, double %i.cs, double %i.cr
  %i.cu = select i1 %i.cp, <2 x double> %i.cq, <2 x double> %i.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7, !noalias !20
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.cu, ptr %i.cv, align 8, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ct, ptr %i.cw, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cy = load <2 x double>, ptr %i.cx, align 16, !tbaa !8
  store <2 x double> %i.cy, ptr %0, align 16, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.db = load double, ptr %i.da, align 16, !tbaa !10
  store double %i.db, ptr %i.cz, align 16, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal10toVectorETERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.35") align 16 captures(none) initializes((0, 48)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.3", align 16  ; 5 uses
  %3 = alloca %"class.Eigen::Matrix.13", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = load <2 x double>, ptr %1, align 16, !tbaa !8
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 16, !tbaa !10
  store double %i.d, ptr %i.b, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 16, !tbaa !8
  store <2 x double> %i.g, ptr %i.e, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 16, !tbaa !10
  store double %i.j, ptr %i.h, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !8
  store <2 x double> %i.m, ptr %i.k, align 16, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load double, ptr %i.o, align 16, !tbaa !10
  store double %i.p, ptr %i.n, align 16, !tbaa !10
  call void @_ZN3g2o8internal7toEulerERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix.3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %3)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load <2 x double>, ptr %2, align 16, !tbaa !8
  store <2 x double> %i.r, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load double, ptr %i.t, align 16, !tbaa !10
  store double %i.u, ptr %i.s, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = load <2 x double>, ptr %i.v, align 16, !tbaa !8
  store <2 x double> %i.w, ptr %0, align 16, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.z = load double, ptr %i.y, align 16, !tbaa !10
  store double %i.z, ptr %i.x, align 16, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal10toVectorQTERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Matrix.88") align 8 captures(none) initializes((0, 56)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Quaternion", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load double, ptr %1, align 16, !tbaa !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load double, ptr %i.d, align 16, !tbaa !10 ; 2 uses
  %i.f = fadd double %i.c, %i.e
  %i.g = fadd double %i.a, %i.f                   ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fadd double %i.g, 1.000000e+00
  %i.j = tail call double @sqrt(double noundef %i.i) #7 ; 2 uses
  %i.k = fmul double %i.j, 5.000000e-01
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.k, ptr %i.l, align 8, !tbaa !10
  %i.m = fdiv double 5.000000e-01, %i.j           ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load double, ptr %i.o, align 16, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load double, ptr %i.r, align 8, !tbaa !10
  %i.t = fsub double %i.p, %i.s
  %i.u = fmul double %i.m, %i.t
  store double %i.u, ptr %2, align 16, !tbaa !10
  %i.v = load double, ptr %i.q, align 16, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load double, ptr %i.w, align 16, !tbaa !10
  %i.y = fsub double %i.v, %i.x
  %i.z = fmul double %i.m, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !10
  %i.ad = load double, ptr %i.n, align 16, !tbaa !10
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fmul double %i.m, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.af, ptr %i.ag, align 16, !tbaa !10
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi3ELi3ELb0EEEEERKNS_10MatrixBaseIT_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.ah = fcmp ogt double %i.c, %i.a              ; 2 uses
  %spec.select.i.i.i = zext i1 %i.ah to i64       ; 2 uses
  %.idx.i.i.i.i = select i1 %i.ah, i64 32, i64 0
  %i.ai = getelementptr i8, ptr %1, i64 %.idx.i.i.i.i
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %spec.select.i.i.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !10
  %i.al = fcmp ogt double %i.e, %i.ak
  %.1.i.i.i = select i1 %i.al, i64 2, i64 %spec.select.i.i.i ; 6 uses
  %3 = add nuw nsw i64 %.1.i.i.i, 1               ; 2 uses
  %4 = icmp eq i64 %3, 3
  %i.am = select i1 %4, i64 0, i64 %3
  %.fr.i.i.i = freeze i64 %i.am                   ; 7 uses
  %5 = add i64 %.fr.i.i.i, 1                      ; 2 uses
  %.urem.i.i.i = add i64 %.fr.i.i.i, -2
  %.cmp.i.i.i = icmp ult i64 %5, 3
  %6 = select i1 %.cmp.i.i.i, i64 %5, i64 %.urem.i.i.i ; 5 uses
  %.idx.i46.i.i.i = shl nuw nsw i64 %.1.i.i.i, 5
  %i.an = getelementptr i8, ptr %1, i64 %.idx.i46.i.i.i ; 3 uses
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.1.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !10
  %.idx.i47.i.i.i = shl nuw nsw i64 %.fr.i.i.i, 5
  %i.aq = getelementptr i8, ptr %1, i64 %.idx.i47.i.i.i ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %.fr.i.i.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !10
  %i.at = fsub double %i.ap, %i.as
  %.idx.i48.i.i.i = shl i64 %6, 5
  %i.au = getelementptr i8, ptr %1, i64 %.idx.i48.i.i.i ; 3 uses
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %6
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10
  %i.ax = fsub double %i.at, %i.aw
  %i.ay = fadd double %i.ax, 1.000000e+00
  %i.az = tail call double @sqrt(double noundef %i.ay) #7 ; 2 uses
  %i.ba = fmul double %i.az, 5.000000e-01
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1.i.i.i
  store double %i.ba, ptr %i.bb, align 8, !tbaa !10
  %i.bc = fdiv double 5.000000e-01, %i.az         ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %i.aq, i64 %6
  %i.be = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bf = getelementptr [8 x i8], ptr %i.au, i64 %.fr.i.i.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !10
  %i.bh = fsub double %i.be, %i.bg
  %i.bi = fmul double %i.bc, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.bi, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr [8 x i8], ptr %i.an, i64 %.fr.i.i.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr [8 x i8], ptr %i.aq, i64 %.1.i.i.i
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bo = fadd double %i.bl, %i.bn
  %i.bp = fmul double %i.bc, %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %2, i64 %.fr.i.i.i
  store double %i.bp, ptr %i.bq, align 8, !tbaa !10
  %i.br = getelementptr [8 x i8], ptr %i.an, i64 %6
  %i.bs = load double, ptr %i.br, align 8, !tbaa !10
  %i.bt = getelementptr [8 x i8], ptr %i.au, i64 %.1.i.i.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !10
  %i.bv = fadd double %i.bs, %i.bu
  %i.bw = fmul double %i.bc, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %2, i64 %6
  store double %i.bw, ptr %i.bx, align 8, !tbaa !10
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi3ELi3ELb0EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELi3ELi3ELb0EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.b, %bb.c
  %i.by = load <2 x double>, ptr %2, align 16     ; 4 uses
  %i.bz = fmul <2 x double> %i.by, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load <2 x double>, ptr %i.ca, align 16  ; 4 uses
  %i.cc = fmul <2 x double> %i.cb, %i.cb
  %i.cd = fadd <2 x double> %i.bz, %i.cc          ; 2 uses
  %shift = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cd, %shift
  %i.ce = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.cf = fcmp ogt double %i.ce, 0.000000e+00     ; 2 uses
  %.scalar.i.i = tail call double @llvm.sqrt.f64(double %i.ce)
  %i.cg = insertelement <2 x double> poison, double %.scalar.i.i, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ci = fdiv <2 x double> %i.by, %i.ch
  %i.cj = fdiv <2 x double> %i.cb, %i.ch
  %i.ck = select i1 %i.cf, <2 x double> %i.ci, <2 x double> %i.by
  %i.cl = select i1 %i.cf, <2 x double> %i.cj, <2 x double> %i.cb
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.ck, ptr %i.cm, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x double> %i.cl, ptr %i.cn, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cp = load <2 x double>, ptr %i.co, align 16, !tbaa !8
  store <2 x double> %i.cp, ptr %0, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cs = load double, ptr %i.cr, align 16, !tbaa !10
  store double %i.cs, ptr %i.cq, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal13fromVectorMQTERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Transform") align 16 captures(none) initializes((0, 128)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load <2 x double>, ptr %i.a, align 8, !tbaa !8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load double, ptr %i.c, align 8, !tbaa !10 ; 4 uses
  %i.e = fmul <2 x double> %i.b, %i.b             ; 2 uses
  %shift = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.e, %shift
  %i.f = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.g = fmul double %i.d, %i.d
  %i.h = fadd double %i.g, %i.f
  %i.i = fsub double 1.000000e+00, %i.h           ; 2 uses
  %i.j = fcmp olt double %i.i, 0.000000e+00
  br i1 %i.j, label %_ZN3g2o8internal21fromCompactQuaternionERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractelement <2 x double> %i.b, i64 1  ; 3 uses
  %i.l = extractelement <2 x double> %i.b, i64 0  ; 4 uses
  %i.m = tail call double @sqrt(double noundef %i.i) #7, !noalias !23 ; 3 uses
  %i.n = fmul double %i.l, 2.000000e+00           ; 2 uses
  %i.o = fmul double %i.k, 2.000000e+00           ; 3 uses
  %i.p = fmul double %i.d, 2.000000e+00           ; 4 uses
  %i.q = fmul double %i.n, %i.m                   ; 2 uses
  %i.r = fmul double %i.o, %i.m                   ; 2 uses
  %i.s = fmul double %i.p, %i.m                   ; 2 uses
  %i.t = fmul double %i.l, %i.n                   ; 2 uses
  %i.u = fmul double %i.l, %i.o                   ; 2 uses
  %i.v = fmul double %i.l, %i.p                   ; 2 uses
  %i.w = fmul double %i.k, %i.o                   ; 2 uses
  %i.x = fmul double %i.k, %i.p                   ; 2 uses
  %i.y = fmul double %i.d, %i.p                   ; 2 uses
  %i.z = fadd double %i.y, %i.w
  %i.aa = fsub double 1.000000e+00, %i.z
  %i.ab = fsub double %i.u, %i.s
  %.sroa.8.24.vec.insert = insertelement <2 x double> <double poison, double undef>, double %i.ab, i64 0
  %i.ac = fadd double %i.v, %i.r
  %.sroa.14.48.vec.insert = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ad = fadd double %i.u, %i.s
  %.sroa.017.8.vec.insert = insertelement <2 x double> <double undef, double poison>, double %i.ad, i64 1
  %i.ae = fadd double %i.y, %i.t
  %i.af = fsub double 1.000000e+00, %i.ae
  %i.ag = fsub double %i.x, %i.q
  %.sroa.14.56.vec.insert = insertelement <2 x double> %.sroa.14.48.vec.insert, double %i.ag, i64 1
  %i.ah = fsub double %i.v, %i.r
  %i.ai = fadd double %i.x, %i.q
  %i.aj = fadd double %i.t, %i.w
  %i.ak = fsub double 1.000000e+00, %i.aj
  br label %_ZN3g2o8internal21fromCompactQuaternionERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE.exit

_ZN3g2o8internal21fromCompactQuaternionERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.017.0 = phi <2 x double> [ %.sroa.017.8.vec.insert, %bb.b ], [ <double undef, double 0.000000e+00>, %bb.a ]
  %.sroa.8.0 = phi <2 x double> [ %.sroa.8.24.vec.insert, %bb.b ], [ <double 0.000000e+00, double undef>, %bb.a ]
  %.sroa.14.0 = phi <2 x double> [ %.sroa.14.56.vec.insert, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.11.0 = phi double [ %i.ai, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.620.0 = phi double [ %i.ah, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink6.i = phi double [ %i.aa, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink5.i = phi double [ %i.af, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink.i = phi double [ %i.ak, %bb.b ], [ 1.000000e+00, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.017.0.vec.insert = insertelement <2 x double> %.sroa.017.0, double %.sink6.i, i64 0
  %.sroa.8.32.vec.insert = insertelement <2 x double> %.sroa.8.0, double %.sink5.i, i64 1
  store <2 x double> %.sroa.017.0.vec.insert, ptr %0, align 16, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.620.0, ptr %i.ap, align 16, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %.sroa.8.32.vec.insert, ptr %i.aq, align 16, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.11.0, ptr %i.ar, align 16, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %.sroa.14.0, ptr %i.as, align 16, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %.sink.i, ptr %i.at, align 16, !tbaa !10
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !10
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !10
  store i64 0, ptr %i.am, align 8
  store double 1.000000e+00, ptr %i.al, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = load <2 x double>, ptr %1, align 16, !tbaa !8
  store <2 x double> %i.av, ptr %i.au, align 16, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load double, ptr %i.ax, align 16, !tbaa !10
  store double %i.ay, ptr %i.aw, align 16, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal12fromVectorETERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Transform") align 16 captures(none) initializes((0, 128)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(48) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load double, ptr %i.g, align 8, !tbaa !10
  %i.i = fmul double %i.h, 5.000000e-01           ; 2 uses
  %i.j = tail call double @sin(double noundef %i.i) #7, !noalias !26 ; 4 uses
  %i.k = tail call double @cos(double noundef %i.i) #7, !noalias !26 ; 4 uses
  %i.l = fmul <2 x double> %i.f, splat (double 5.000000e-01) ; 2 uses
  %i.m = extractelement <2 x double> %i.l, i64 1  ; 2 uses
  %i.n = tail call double @sin(double noundef %i.m) #7, !noalias !26 ; 2 uses
  %i.o = tail call double @cos(double noundef %i.m) #7, !noalias !26 ; 2 uses
  %i.p = extractelement <2 x double> %i.l, i64 0  ; 2 uses
  %i.q = tail call double @sin(double noundef %i.p) #7, !noalias !26 ; 2 uses
  %i.r = tail call double @cos(double noundef %i.p) #7, !noalias !26 ; 2 uses
  %i.s = fmul double %i.o, %i.r                   ; 2 uses
  %i.t = fmul double %i.n, %i.q                   ; 2 uses
  %i.u = fmul double %i.j, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.s, double %i.k, double %i.u) ; 3 uses
  %i.w = fmul double %i.o, %i.q                   ; 2 uses
  %i.x = fmul double %i.n, %i.r                   ; 2 uses
  %i.y = fneg double %i.j
  %i.z = fmul double %i.x, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.w, double %i.k, double %i.z) ; 4 uses
  %i.ab = fmul double %i.j, %i.w
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.k, double %i.ab) ; 3 uses
  %i.ad = fneg double %i.k
  %i.ae = fmul double %i.t, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.s, double %i.j, double %i.ae) ; 2 uses
  %i.ag = fmul double %i.aa, 2.000000e+00         ; 2 uses
  %i.ah = fmul double %i.ac, 2.000000e+00         ; 3 uses
  %i.ai = fmul double %i.af, 2.000000e+00         ; 4 uses
  %i.aj = fmul double %i.v, %i.ag                 ; 2 uses
  %i.ak = fmul double %i.v, %i.ah                 ; 2 uses
  %i.al = fmul double %i.v, %i.ai                 ; 2 uses
  %i.am = fmul double %i.aa, %i.ag                ; 2 uses
  %i.an = fmul double %i.aa, %i.ah                ; 2 uses
  %i.ao = fmul double %i.aa, %i.ai                ; 2 uses
  %i.ap = fmul double %i.ac, %i.ah                ; 2 uses
  %i.aq = fmul double %i.ac, %i.ai                ; 2 uses
  %i.ar = fmul double %i.af, %i.ai                ; 2 uses
  %i.as = fadd double %i.ap, %i.ar
  %i.at = fsub double 1.000000e+00, %i.as
  %.sroa.017.0.vec.insert = insertelement <2 x double> poison, double %i.at, i64 0
  %i.au = fsub double %i.an, %i.al
  %.sroa.720.24.vec.insert = insertelement <2 x double> poison, double %i.au, i64 0
  %i.av = fadd double %i.ao, %i.ak
  %.sroa.12.48.vec.insert = insertelement <2 x double> poison, double %i.av, i64 0
  %i.aw = fadd double %i.an, %i.al
  %.sroa.017.8.vec.insert = insertelement <2 x double> %.sroa.017.0.vec.insert, double %i.aw, i64 1
  %i.ax = fadd double %i.ar, %i.am
  %i.ay = fsub double 1.000000e+00, %i.ax
  %.sroa.720.32.vec.insert = insertelement <2 x double> %.sroa.720.24.vec.insert, double %i.ay, i64 1
  %i.az = fsub double %i.aq, %i.aj
  %.sroa.12.56.vec.insert = insertelement <2 x double> %.sroa.12.48.vec.insert, double %i.az, i64 1
  %i.ba = fsub double %i.ao, %i.ak
  %i.bb = fadd double %i.aq, %i.aj
  %i.bc = fadd double %i.ap, %i.am
  %i.bd = fsub double 1.000000e+00, %i.bc
  store <2 x double> %.sroa.017.8.vec.insert, ptr %0, align 16, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ba, ptr %i.be, align 16, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %.sroa.720.32.vec.insert, ptr %i.bf, align 16, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.bb, ptr %i.bg, align 16, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %.sroa.12.56.vec.insert, ptr %i.bh, align 16, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.bd, ptr %i.bi, align 16, !tbaa !10
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !10
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !10
  store i64 0, ptr %i.c, align 8
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bk = load <2 x double>, ptr %1, align 16, !tbaa !8
  store <2 x double> %i.bk, ptr %i.bj, align 16, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load double, ptr %i.bm, align 16, !tbaa !10
  store double %i.bn, ptr %i.bl, align 16, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Transform") align 16 captures(none) initializes((0, 128)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load double, ptr %i.f, align 8, !tbaa !10 ; 4 uses
  %i.j = load double, ptr %i.g, align 8, !tbaa !10 ; 3 uses
  %i.k = load double, ptr %i.h, align 8, !tbaa !10 ; 2 uses
  %i.l = load double, ptr %i.e, align 8, !tbaa !10 ; 3 uses
  %i.m = fmul double %i.i, 2.000000e+00           ; 2 uses
  %i.n = fmul double %i.j, 2.000000e+00           ; 3 uses
  %i.o = fmul double %i.k, 2.000000e+00           ; 4 uses
  %i.p = fmul double %i.m, %i.l                   ; 2 uses
  %i.q = fmul double %i.n, %i.l                   ; 2 uses
  %i.r = fmul double %i.o, %i.l                   ; 2 uses
  %i.s = fmul double %i.i, %i.m                   ; 2 uses
  %i.t = fmul double %i.i, %i.n                   ; 2 uses
  %i.u = fmul double %i.i, %i.o                   ; 2 uses
  %i.v = fmul double %i.j, %i.n                   ; 2 uses
  %i.w = fmul double %i.j, %i.o                   ; 2 uses
  %i.x = fmul double %i.k, %i.o                   ; 2 uses
  %i.y = fadd double %i.v, %i.x
  %i.z = fsub double 1.000000e+00, %i.y
  %.sroa.015.0.vec.insert = insertelement <2 x double> poison, double %i.z, i64 0
  %i.aa = fsub double %i.t, %i.r
  %.sroa.718.24.vec.insert = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ab = fadd double %i.u, %i.q
  %.sroa.12.48.vec.insert = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ac = fadd double %i.t, %i.r
  %.sroa.015.8.vec.insert = insertelement <2 x double> %.sroa.015.0.vec.insert, double %i.ac, i64 1
  %i.ad = fadd double %i.s, %i.x
  %i.ae = fsub double 1.000000e+00, %i.ad
  %.sroa.718.32.vec.insert = insertelement <2 x double> %.sroa.718.24.vec.insert, double %i.ae, i64 1
  %i.af = fsub double %i.w, %i.p
  %.sroa.12.56.vec.insert = insertelement <2 x double> %.sroa.12.48.vec.insert, double %i.af, i64 1
  %i.ag = fsub double %i.u, %i.q
  %i.ah = fadd double %i.w, %i.p
  %i.ai = fadd double %i.s, %i.v
  %i.aj = fsub double 1.000000e+00, %i.ai
  store <2 x double> %.sroa.015.8.vec.insert, ptr %0, align 16, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ag, ptr %i.ak, align 16, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %.sroa.718.32.vec.insert, ptr %i.al, align 16, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ah, ptr %i.am, align 16, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %.sroa.12.56.vec.insert, ptr %i.an, align 16, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.aj, ptr %i.ao, align 16, !tbaa !10
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !10
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !10
  store i64 0, ptr %i.c, align 8
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load <2 x double>, ptr %1, align 8, !tbaa !8
  store <2 x double> %i.aq, ptr %i.ap, align 16, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load double, ptr %i.as, align 8, !tbaa !10
  store double %i.at, ptr %i.ar, align 16, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN3g2o8internal9toSE3QuatERKN5Eigen9TransformIdLi3ELi1ELi0EEE(ptr dead_on_unwind noalias nofree writable sret(%"class.g2o::SE3Quat") align 16 captures(none) initializes((24, 56)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(128) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.13", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load <2 x double>, ptr %1, align 16, !tbaa !8 ; 3 uses
  store <2 x double> %i.a, ptr %2, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 16, !tbaa !10 ; 2 uses
  store double %i.d, ptr %i.b, align 16, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 16, !tbaa !8 ; 3 uses
  store <2 x double> %i.g, ptr %i.e, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 16, !tbaa !10 ; 2 uses
  store double %i.j, ptr %i.h, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load <2 x double>, ptr %i.l, align 16, !tbaa !8 ; 3 uses
  store <2 x double> %i.m, ptr %i.k, align 16, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load double, ptr %i.o, align 16, !tbaa !10 ; 3 uses
  store double %i.p, ptr %i.n, align 16, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load <2 x double>, ptr %i.q, align 16, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.t = load double, ptr %i.s, align 16, !tbaa !10
  %i.u = extractelement <2 x double> %i.a, i64 0  ; 2 uses
  %i.v = extractelement <2 x double> %i.g, i64 1  ; 2 uses
  %i.w = fadd double %i.p, %i.v
  %i.x = fadd double %i.w, %i.u                   ; 2 uses
  %i.y = fcmp ogt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = extractelement <2 x double> %i.m, i64 0
  %i.aa = extractelement <2 x double> %i.m, i64 1
  %i.ab = fadd double %i.x, 1.000000e+00
  %i.ac = tail call double @sqrt(double noundef %i.ab) #7 ; 2 uses
  %i.ad = fmul double %i.ac, 5.000000e-01         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = fdiv double 5.000000e-01, %i.ac         ; 3 uses
  %i.ag = fsub double %i.j, %i.aa
  %i.ah = fmul double %i.af, %i.ag
  store double %i.ah, ptr %0, align 16, !tbaa !10
  %i.ai = fsub double %i.z, %i.d
  %i.aj = fmul double %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aj, ptr %i.ak, align 8, !tbaa !10
  %shift = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.g
  %i.al = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.am = fmul double %i.af, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.am, ptr %i.an, align 16, !tbaa !10
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.ao = fcmp ogt double %i.v, %i.u              ; 3 uses
  %spec.select.i.i.i.i = zext i1 %i.ao to i64
  %spec.select.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ao, i64 8, i64 0
  %spec.select.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i.i = select i1 %i.ao, i64 24, i64 0
  %i.ap = getelementptr i8, ptr %spec.select.i.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !10
  %i.ar = fcmp ogt double %i.p, %i.aq
  %.1.i.i.i.i = select i1 %i.ar, i64 2, i64 %spec.select.i.i.i.i ; 4 uses
  %3 = add nuw nsw i64 %.1.i.i.i.i, 1             ; 2 uses
  %4 = icmp eq i64 %3, 3
  %i.as = select i1 %4, i64 0, i64 %3
  %.fr.i.i.i.i = freeze i64 %i.as                 ; 5 uses
  %5 = add i64 %.fr.i.i.i.i, 1                    ; 2 uses
  %.urem.i.i.i.i = add i64 %.fr.i.i.i.i, -2
  %.cmp.i.i.i.i = icmp ult i64 %5, 3
  %6 = select i1 %.cmp.i.i.i.i, i64 %5, i64 %.urem.i.i.i.i ; 3 uses
  %i.at = getelementptr [8 x i8], ptr %2, i64 %.1.i.i.i.i ; 3 uses
  %.idx.i66.i.i.i.i = mul nuw nsw i64 %.1.i.i.i.i, 24 ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 %.idx.i66.i.i.i.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %.fr.i.i.i.i ; 3 uses
  %.idx.i67.i.i.i.i = mul nuw nsw i64 %.fr.i.i.i.i, 24 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 %.idx.i67.i.i.i.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !10
  %i.az = fsub double %i.av, %i.ay
  %i.ba = getelementptr [8 x i8], ptr %2, i64 %6  ; 3 uses
  %.idx.i68.i.i.i.i = mul i64 %6, 24              ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.idx.i68.i.i.i.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !10
  %i.bd = fsub double %i.az, %i.bc
  %i.be = fadd double %i.bd, 1.000000e+00
  %i.bf = tail call double @sqrt(double noundef %i.be) #7 ; 2 uses
  %i.bg = fmul double %i.bf, 5.000000e-01
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1.i.i.i.i
  store double %i.bg, ptr %i.bh, align 8, !tbaa !10
  %i.bi = fdiv double 5.000000e-01, %i.bf         ; 3 uses
  %i.bj = getelementptr i8, ptr %i.ba, i64 %.idx.i67.i.i.i.i
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !10
  %i.bl = getelementptr i8, ptr %i.aw, i64 %.idx.i68.i.i.i.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !10
  %i.bn = fsub double %i.bk, %i.bm
  %i.bo = fmul double %i.bi, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store double %i.bo, ptr %i.bp, align 8, !tbaa !10
  %i.bq = getelementptr i8, ptr %i.aw, i64 %.idx.i66.i.i.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr i8, ptr %i.at, i64 %.idx.i67.i.i.i.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !10
  %i.bu = fadd double %i.br, %i.bt
  %i.bv = fmul double %i.bi, %i.bu
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %.fr.i.i.i.i
  store double %i.bv, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr i8, ptr %i.ba, i64 %.idx.i66.i.i.i.i
  %i.by = load double, ptr %i.bx, align 8, !tbaa !10
  %i.bz = getelementptr i8, ptr %i.at, i64 %.idx.i68.i.i.i.i
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !10
  %i.cb = fadd double %i.by, %i.ca
  %i.cc = fmul double %i.bi, %i.cb
  %i.cd = getelementptr inbounds [8 x i8], ptr %0, i64 %6
  store double %i.cc, ptr %i.cd, align 8, !tbaa !10
  %.pre.i = load double, ptr %i.bp, align 8, !tbaa !10
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit.i

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit.i: ; preds = %bb.c, %bb.b
  %i.ce = phi double [ %i.ad, %bb.b ], [ %.pre.i, %bb.c ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.r, ptr %i.cf, align 16
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.t, ptr %.sroa.44.0..sroa_idx, align 16, !tbaa !8
  %i.cg = fcmp olt double %i.ce, 0.000000e+00
  %.pre.i.i = load <2 x double>, ptr %0, align 16, !tbaa !8 ; 2 uses
  br i1 %i.cg, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre1.i.i = load <2 x double>, ptr %.phi.trans.insert.i.i, align 16, !tbaa !8
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit.i
  %i.ch = fneg <2 x double> %.pre.i.i             ; 2 uses
  store <2 x double> %i.ch, ptr %0, align 16, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = load <2 x double>, ptr %i.ci, align 16, !tbaa !8
  %i.ck = fneg <2 x double> %i.cj                 ; 2 uses
  store <2 x double> %i.ck, ptr %i.ci, align 16, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.cl = phi <2 x double> [ %i.ck, %bb.d ], [ %.pre1.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cm = phi <2 x double> [ %i.ch, %bb.d ], [ %.pre.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cn = fmul <2 x double> %i.cm, %i.cm
  %i.co = fmul <2 x double> %i.cl, %i.cl
  %i.cp = fadd <2 x double> %i.co, %i.cn          ; 2 uses
  %shift21 = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop22 = fadd <2 x double> %i.cp, %shift21
  %i.cq = extractelement <2 x double> %foldExtExtBinop22, i64 0 ; 2 uses
  %i.cr = fcmp ogt double %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.f, label %_ZN3g2o7SE3QuatC2ERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEERKNS2_IdLi3ELi1ELi0ELi3ELi1EEE.exit

bb.f:                                             ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.cq)
  %i.ct = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fdiv <2 x double> %i.cm, %i.cu
  store <2 x double> %i.cv, ptr %0, align 16, !tbaa !8
  %i.cw = fdiv <2 x double> %i.cl, %i.cu
  store <2 x double> %i.cw, ptr %i.cs, align 16, !tbaa !8
  br label %_ZN3g2o7SE3QuatC2ERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEERKNS2_IdLi3ELi1ELi0ELi3ELi1EEE.exit

_ZN3g2o7SE3QuatC2ERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEERKNS2_IdLi3ELi1ELi0ELi3ELi1EEE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3g2o8internal11fromSE3QuatERKNS_7SE3QuatE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Eigen::Transform") align 16 captures(none) initializes((0, 128)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %1, align 16, !tbaa !10, !noalias !33 ; 4 uses
  %i.b = fmul double %i.a, 2.000000e+00           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !10, !noalias !33 ; 3 uses
  %i.e = fmul double %i.d, 2.000000e+00           ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 16, !tbaa !10, !noalias !33 ; 2 uses
  %i.h = fmul double %i.g, 2.000000e+00           ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !10, !noalias !33 ; 3 uses
  %i.k = fmul double %i.b, %i.j                   ; 2 uses
  %i.l = fmul double %i.e, %i.j                   ; 2 uses
  %i.m = fmul double %i.h, %i.j                   ; 2 uses
  %i.n = fmul double %i.a, %i.b                   ; 2 uses
  %i.o = fmul double %i.a, %i.e                   ; 2 uses
  %i.p = fmul double %i.a, %i.h                   ; 2 uses
  %i.q = fmul double %i.d, %i.e                   ; 2 uses
  %i.r = fmul double %i.d, %i.h                   ; 2 uses
  %i.s = fmul double %i.g, %i.h                   ; 2 uses
  %i.t = fadd double %i.q, %i.s
  %i.u = fsub double 1.000000e+00, %i.t
  %.sroa.08.0.vec.insert.i.i = insertelement <2 x double> poison, double %i.u, i64 0
  %i.v = fsub double %i.o, %i.m
  %.sroa.711.24.vec.insert.i.i = insertelement <2 x double> poison, double %i.v, i64 0
  %i.w = fadd double %i.p, %i.l
  %.sroa.12.48.vec.insert.i.i = insertelement <2 x double> poison, double %i.w, i64 0
  %i.x = fadd double %i.o, %i.m
  %.sroa.08.8.vec.insert.i.i = insertelement <2 x double> %.sroa.08.0.vec.insert.i.i, double %i.x, i64 1
  %i.y = fadd double %i.n, %i.s
  %i.z = fsub double 1.000000e+00, %i.y
  %.sroa.711.32.vec.insert.i.i = insertelement <2 x double> %.sroa.711.24.vec.insert.i.i, double %i.z, i64 1
  %i.aa = fsub double %i.r, %i.k
  %.sroa.12.56.vec.insert.i.i = insertelement <2 x double> %.sroa.12.48.vec.insert.i.i, double %i.aa, i64 1
  %i.ab = fsub double %i.p, %i.l
  %i.ac = fadd double %i.r, %i.k
  %i.ad = fadd double %i.n, %i.q
  %i.ae = fsub double 1.000000e+00, %i.ad
  store <2 x double> %.sroa.08.8.vec.insert.i.i, ptr %0, align 16, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ab, ptr %i.af, align 16, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %.sroa.711.32.vec.insert.i.i, ptr %i.ag, align 16, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ac, ptr %i.ah, align 16, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %.sroa.12.56.vec.insert.i.i, ptr %i.ai, align 16, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ae, ptr %i.aj, align 16, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.ak, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.am, align 8
  store double 1.000000e+00, ptr %i.an, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load <2 x double>, ptr %i.ao, align 16, !tbaa !8
  store <2 x double> %i.aq, ptr %i.ap, align 16, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load double, ptr %i.as, align 16, !tbaa !10
  store double %i.at, ptr %i.ar, align 16, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i64 0, i64 32, !8}
!12 = distinct !{!12, !"_ZNK5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE16toRotationMatrixEv"}
!13 = distinct !{!13, !12, !"_ZNK5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE16toRotationMatrixEv: argument 0"}
!14 = !{!13}
!15 = distinct !{!15, !"_ZNK5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE16toRotationMatrixEv"}
!16 = distinct !{!16, !15, !"_ZNK5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE16toRotationMatrixEv: argument 0"}
!17 = !{!16}
!18 = distinct !{!18, !"_ZN3g2o8internal19toCompactQuaternionERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE"}
!19 = distinct !{!19, !18, !"_ZN3g2o8internal19toCompactQuaternionERKN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE: argument 0"}
!20 = !{!19}
!21 = distinct !{!21, !"_ZN3g2o8internal21fromCompactQuaternionERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE"}
!22 = distinct !{!22, !21, !"_ZN3g2o8internal21fromCompactQuaternionERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE: argument 0"}
!23 = !{!22}
!24 = distinct !{!24, !"_ZN3g2o8internal9fromEulerERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE"}
!25 = distinct !{!25, !24, !"_ZN3g2o8internal9fromEulerERKN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE: argument 0"}
!26 = !{!25}
!27 = distinct !{!27, !"_ZN5Eigen8internalL16toRotationMatrixIdLi3ENS_10QuaternionIdLi0EEEEENS_6MatrixIT_XT0_EXT0_EXorLNS_14StorageOptionsE0EquaaeqT0_Li1EneT0_Li1ELS6_1EquaaeqT0_Li1EneT0_Li1ELS6_0ELS6_0EEXT0_EXT0_EEERKNS_12RotationBaseIT1_XT0_EEE"}
!28 = distinct !{!28, !27, !"_ZN5Eigen8internalL16toRotationMatrixIdLi3ENS_10QuaternionIdLi0EEEEENS_6MatrixIT_XT0_EXT0_EXorLNS_14StorageOptionsE0EquaaeqT0_Li1EneT0_Li1ELS6_1EquaaeqT0_Li1EneT0_Li1ELS6_0ELS6_0EEXT0_EXT0_EEERKNS_12RotationBaseIT1_XT0_EEE: argument 0"}
!29 = distinct !{!29, !"_ZNK5Eigen12RotationBaseINS_10QuaternionIdLi0EEELi3EE16toRotationMatrixEv"}
!30 = distinct !{!30, !29, !"_ZNK5Eigen12RotationBaseINS_10QuaternionIdLi0EEELi3EE16toRotationMatrixEv: argument 0"}
!31 = distinct !{!31, !"_ZNK5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE16toRotationMatrixEv"}
!32 = distinct !{!32, !31, !"_ZNK5Eigen14QuaternionBaseINS_10QuaternionIdLi0EEEE16toRotationMatrixEv: argument 0"}
!33 = !{!32, !30, !28}
end_hunk_0
