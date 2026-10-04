Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/main?download=true
inline.NumInlined: 255
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5ModelD2Ev:bb.a
  br i1 %.not.i.i.i.i3, label %_ZN8TGAImageD2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN8TGAImageD2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #16
  br label %_ZN8TGAImageD2Ev.exit4

_ZN8TGAImageD2Ev.exit4:                           ; preds = %_ZN8TGAImageD2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8TGAImageD2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !116
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN8TGAImageD2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit6, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !116
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !116
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !119 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !120
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #16
  br label %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit8, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !124
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #16
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorI3vecILi2EESaIS1_EED2Ev.exit, %bb.i
  %i.be = load ptr, ptr %0, align 8, !tbaa !123   ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !124
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #16
  br label %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12

_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit12:       ; preds = %_ZNSt6vectorI3vecILi4EESaIS1_EED2Ev.exit, %bb.j
  ret void
}

declare noundef zeroext i1 @_ZNK8TGAImage14write_tga_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40), ptr nofree noundef align 8 dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i48 @_ZNK11PhongShader8fragmentE3vecILi3EE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef byval(%struct.vec) align 8 %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.vec.19, align 8             ; 7 uses
  %3 = alloca %struct.vec.18, align 16            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.9239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.22247.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.3.0.copyload.i = load double, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load double, ptr %.in.i.i, align 8, !tbaa !14 ; 3 uses
  %i.g = fsub double %.sroa.3.0.copyload.i, %i.f  ; 2 uses
  %i.h = load double, ptr %i.d, align 8, !tbaa !14 ; 3 uses
  %i.i = fsub double %.sroa.0.0.copyload.i, %i.h  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0.0.copyload.i15 = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %.sroa.3.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.3.0.copyload.i17 = load double, ptr %.sroa.3.0..sroa_idx.i16, align 8, !tbaa !14 ; 2 uses
  %i.k = fsub double %.sroa.3.0.copyload.i17, %i.f ; 2 uses
  %i.l = fsub double %.sroa.0.0.copyload.i15, %i.h
  %i.m = fneg double %i.g
  %i.n = fneg double %i.l                         ; 2 uses
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %i.g, double 0.000000e+00)
  %i.p = tail call noundef double @llvm.fmuladd.f64(double %i.k, double %i.i, double %i.o)
  %i.q = load <2 x double>, ptr %.sroa.9239.0..sroa_idx, align 8, !tbaa !14
  %i.r = load <2 x double>, ptr %spec.select.i.1.i, align 8, !tbaa !14, !noalias !129 ; 2 uses
  %i.s = fsub <2 x double> %i.q, %i.r             ; 2 uses
  %i.t = load <2 x double>, ptr %.sroa.22247.32..sroa_idx, align 8, !tbaa !14
  %i.u = fsub <2 x double> %i.t, %i.r             ; 2 uses
  %i.v = insertelement <2 x double> poison, double %i.m, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.k, i64 1
  %i.x = insertelement <2 x double> poison, double %i.p, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fdiv <2 x double> %i.w, %i.y             ; 2 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.u, <2 x double> zeroinitializer)
  %i.ac = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.s, <2 x double> %i.ab) ; 3 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.af = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.ag = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  %i.ah = load <2 x double>, ptr %i.a, align 8, !tbaa !14, !noalias !129 ; 2 uses
  %i.ai = fsub <2 x double> %i.ag, %i.ah          ; 2 uses
  %i.aj = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.ak = fsub <2 x double> %i.aj, %i.ah          ; 2 uses
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ak, <2 x double> zeroinitializer)
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ai, <2 x double> %i.al) ; 3 uses
  %i.an = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.n, i64 1
  %i.ap = fdiv <2 x double> %i.ao, %i.y           ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.u, <2 x double> zeroinitializer)
  %i.as = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.s, <2 x double> %i.ar) ; 4 uses
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double 0.000000e+00)
  %i.av = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double %i.au)
  %i.aw = shufflevector <2 x double> %i.am, <2 x double> %i.at, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ax = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.av, i64 0
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.aw, <2 x double> %i.ax) ; 2 uses
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ak, <2 x double> zeroinitializer)
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ai, <2 x double> %i.az) ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.9173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bg = load <2 x double>, ptr %.sroa.8183.0..sroa_idx, align 8, !tbaa !14
  %i.bh = load <2 x double>, ptr %.sroa.9173.0..sroa_idx, align 8, !tbaa !14
  %i.bi = load <2 x double>, ptr %.sroa.9164.0..sroa_idx, align 8, !tbaa !14
  %i.bj = load <2 x double>, ptr %i.bb, align 8, !tbaa !14
  %i.bk = load <2 x double>, ptr %i.bc, align 8, !tbaa !14
  %i.bl = load <2 x double>, ptr %i.be, align 8, !tbaa !14
  %i.bm = load double, ptr %1, align 8, !tbaa !14 ; 3 uses
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = fmul <2 x double> %i.bo, %i.bg
  %i.bq = fmul <2 x double> %i.bo, %i.bj
  %i.br = load double, ptr %i.bd, align 8, !tbaa !14 ; 3 uses
  %i.bs = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bu = fmul <2 x double> %i.bt, %i.bh
  %i.bv = fmul <2 x double> %i.bt, %i.bk
  %i.bw = fadd <2 x double> %i.bp, %i.bu
  %i.bx = fadd <2 x double> %i.bq, %i.bv
  %i.by = load double, ptr %i.bf, align 8, !tbaa !14 ; 3 uses
  %i.bz = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cb = fmul <2 x double> %i.ca, %i.bi
  %i.cc = fmul <2 x double> %i.ca, %i.bl
  %i.cd = fadd <2 x double> %i.bw, %i.cb          ; 3 uses
  %i.ce = fadd <2 x double> %i.bx, %i.cc          ; 3 uses
  %4 = insertelement <2 x double> %i.at, double 0.000000e+00, i64 1
  %5 = insertelement <2 x double> %i.at, double -0.000000e+00, i64 1
  %i.cf = shufflevector <2 x double> %i.ay, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %6 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %4, <2 x double> %5, <2 x double> %i.cf)
  %i.cg = shufflevector <2 x double> %i.ba, <2 x double> %i.cd, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.cg, <2 x double> %6) ; 2 uses
  %i.ci = shufflevector <2 x double> %i.am, <2 x double> %i.ba, <2 x i32> <i32 0, i32 2> ; 2 uses
  %7 = shufflevector <2 x double> %i.ay, <2 x double> %i.ch, <2 x i32> <i32 0, i32 2>
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.ci, <2 x double> %7)
  %i.cj = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %8) ; 2 uses
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = fdiv <2 x double> %i.ad, %i.ck
  %i.cm = fdiv <2 x double> %i.am, %i.ck
  %i.cn = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.co = fdiv <2 x double> %i.at, %i.cn
  %i.cp = fdiv <2 x double> %i.ba, %i.cn
  %9 = extractelement <2 x double> %i.cd, i64 0   ; 2 uses
  %i.cq = extractelement <2 x double> %i.ch, i64 1
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %i.cq)
  %i.cr = extractelement <2 x double> %i.ce, i64 1 ; 2 uses
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cr, double %10)
  %i.ct = extractelement <2 x double> %i.ce, i64 0 ; 2 uses
  %i.cu = tail call noundef double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cs)
  %sqrt.i.i35 = tail call noundef double @llvm.sqrt.f64(double %i.cu)
  %i.cv = insertelement <2 x double> poison, double %sqrt.i.i35, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = fdiv <2 x double> %i.cd, %i.cw
  %i.cy = fdiv <2 x double> %i.ce, %i.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.cz = fmul double %i.f, %i.bm
  %i.da = fmul double %i.h, %i.bm
  %i.db = fmul double %.sroa.3.0.copyload.i, %i.br
  %i.dc = fmul double %.sroa.0.0.copyload.i, %i.br
  %i.dd = fadd double %i.cz, %i.db
  %i.de = fadd double %i.da, %i.dc
  %i.df = fmul double %.sroa.3.0.copyload.i17, %i.by
  %i.dg = fmul double %.sroa.0.0.copyload.i15, %i.by
  %i.dh = fadd double %i.dd, %i.df
  %i.di = fadd double %i.de, %i.dg
  store double %i.di, ptr %2, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store double %i.dh, ptr %i.dj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %spec.select.i11.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %spec.select.i11.1.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select.i11.2.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dm = load double, ptr %spec.select.i11.i.i, align 8, !tbaa !14, !noalias !130
  %i.dn = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer) ; 2 uses
  %i.dq = load <2 x double>, ptr %spec.select.i11.1.i.i, align 16
  %i.dr = load <2 x double>, ptr %spec.select.i11.2.i.i, align 8
  %i.ds = load <2 x double>, ptr %3, align 16
  %i.dt = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.dt, <2 x double> %i.dp)
  %i.dv = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.dv, <2 x double> %i.du)
  %i.dx = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.dx, <2 x double> %i.dw) ; 3 uses
  %i.dz = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.dt, <2 x double> %i.dz)
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.dv, <2 x double> %i.ea)
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.dx, <2 x double> %i.eb) ; 3 uses
  %i.ed = extractelement <2 x double> %i.dy, i64 1 ; 2 uses
  %i.ee = call double @llvm.fmuladd.f64(double %i.ed, double %i.ed, double 0.000000e+00)
  %i.ef = extractelement <2 x double> %i.dy, i64 0 ; 2 uses
  %i.eg = call double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.ee)
  %i.eh = extractelement <2 x double> %i.ec, i64 1 ; 2 uses
  %i.ei = call double @llvm.fmuladd.f64(double %i.eh, double %i.eh, double %i.eg)
  %i.ej = extractelement <2 x double> %i.ec, i64 0 ; 2 uses
  %i.ek = call noundef double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double %i.ei)
  %sqrt.i.i73 = call noundef double @llvm.sqrt.f64(double %i.ek)
  %i.el = insertelement <2 x double> poison, double %sqrt.i.i73, i64 0
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = fdiv <2 x double> %i.dy, %i.em          ; 2 uses
  %i.eo = fdiv <2 x double> %i.ec, %i.em          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eq = load double, ptr %spec.select.i11.i, align 8, !tbaa !14 ; 2 uses
  %i.er = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.es = call double @llvm.fmuladd.f64(double %i.er, double %i.eq, double 0.000000e+00)
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.et = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14 ; 2 uses
  %i.eu = extractelement <2 x double> %i.en, i64 0 ; 2 uses
  %i.ev = call double @llvm.fmuladd.f64(double %i.eu, double %i.et, double %i.es)
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ew = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14 ; 2 uses
  %i.ex = extractelement <2 x double> %i.eo, i64 1 ; 2 uses
  %i.ey = call double @llvm.fmuladd.f64(double %i.ex, double %i.ew, double %i.ev)
  %i.ez = load double, ptr %i.ep, align 8, !tbaa !14 ; 2 uses
  %i.fa = extractelement <2 x double> %i.eo, i64 0 ; 2 uses
  %i.fb = call noundef double @llvm.fmuladd.f64(double %i.fa, double %i.ez, double %i.ey) ; 6 uses
  %i.fc = fmul double %i.er, %i.fb
  %i.fd = fmul double %i.eu, %i.fb
  %i.fe = fmul double %i.ex, %i.fb
  %i.ff = fmul double %i.fa, %i.fb
  %i.fg = fmul double %i.fc, 2.000000e+00
  %i.fh = fmul double %i.fd, 2.000000e+00
  %i.fi = fmul double %i.fe, 2.000000e+00
  %i.fj = fmul double %i.ff, 2.000000e+00
  %i.fk = fsub double %i.fg, %i.eq                ; 2 uses
  %i.fl = fsub double %i.fi, %i.ew                ; 2 uses
  %i.fm = fsub double %i.fj, %i.ez                ; 2 uses
  %i.fn = call double @llvm.fmuladd.f64(double %i.fk, double %i.fk, double 0.000000e+00)
  %i.fo = fcmp ogt double %i.fb, 0.000000e+00
  %.sroa.speculated102 = select i1 %i.fo, double %i.fb, double 0.000000e+00
  %i.fp = load ptr, ptr %i.dk, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.fq = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fp) ; 3 uses
  %i.fr = load double, ptr %2, align 8, !tbaa !14
  %i.fs = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fq)
  %i.ft = sitofp i32 %i.fs to double
  %i.fu = fmul double %i.fr, %i.ft
  %i.fv = fptosi double %i.fu to i32
  %i.fw = load double, ptr %i.dj, align 8, !tbaa !14
  %i.fx = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fq)
  %i.fy = sitofp i32 %i.fx to double
  %i.fz = fmul double %i.fw, %i.fy
  %i.ga = fptosi double %i.fz to i32
  %i.gb = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.fq, i32 noundef %i.fv, i32 noundef %i.ga)
  %.sroa.0100.0.extract.trunc = trunc i40 %i.gb to i8
  %i.gc = uitofp i8 %.sroa.0100.0.extract.trunc to double
  %i.gd = fsub double %i.fh, %i.et                ; 3 uses
  %i.ge = call double @llvm.fmuladd.f64(double %i.gd, double %i.gd, double %i.fn)
  %i.gf = call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double %i.ge)
  %i.gg = call noundef double @llvm.fmuladd.f64(double %i.fm, double %i.fm, double %i.gf)
  %sqrt.i.i83 = call noundef double @llvm.sqrt.f64(double %i.gg)
  %i.gh = fmul nnan double %i.gc, 2.000000e+00
  %i.gi = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gh, i64 1
  %i.gk = insertelement <2 x double> <double poison, double 2.550000e+02>, double %sqrt.i.i83, i64 0
  %i.gl = fdiv <2 x double> %i.gj, %i.gk          ; 2 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 1
  %i.gn = fadd nnan double %i.gm, 5.000000e-01
  %i.go = extractelement <2 x double> %i.gl, i64 0 ; 2 uses
  %i.gp = fcmp olt double %i.go, 0.000000e+00
  %.sroa.speculated99 = select i1 %i.gp, double 0.000000e+00, double %i.go
  %i.gq = call noundef double @pow(double noundef %.sroa.speculated99, double noundef 3.500000e+01) #13
  %i.gr = fmul double %i.gq, %i.gn
  %i.gs = load ptr, ptr %i.dk, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.gt = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gs) ; 3 uses
  %i.gu = load double, ptr %2, align 8, !tbaa !14
  %i.gv = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gt)
  %i.gw = sitofp i32 %i.gv to double
  %i.gx = fmul double %i.gu, %i.gw
  %i.gy = fptosi double %i.gx to i32
  %i.gz = load double, ptr %i.dj, align 8, !tbaa !14
  %i.ha = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gt)
  %i.hb = sitofp i32 %i.ha to double
  %i.hc = fmul double %i.gz, %i.hb
  %i.hd = fptosi double %i.hc to i32
  %i.he = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.gt, i32 noundef %i.gy, i32 noundef %i.hd) ; 4 uses
  %.sroa.7.0.extract.shift = and i40 %i.he, -16777216
  %i.hf = fadd nnan double %.sroa.speculated102, 4.000000e-01
  %i.hg = fadd double %i.hf, %i.gr                ; 3 uses
  %i.hh = trunc i40 %i.he to i8
  %i.hi = uitofp i8 %i.hh to double
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = fptosi double %i.hj to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.hk, i32 255)
  %i.hl = lshr i40 %i.he, 8
  %i.hm = trunc i40 %i.hl to i8
  %i.hn = uitofp i8 %i.hm to double
  %i.ho = fmul double %i.hg, %i.hn
  %i.hp = fptosi double %i.ho to i32
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.hp, i32 255)
  %i.hq = lshr i40 %i.he, 16
  %i.hr = trunc i40 %i.hq to i8
  %i.hs = uitofp i8 %i.hr to double
  %i.ht = fmul double %i.hg, %i.hs
  %i.hu = fptosi double %i.ht to i32
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.hu, i32 255)
  %.mask = shl i32 %.sroa.speculated.2, 16
  %i.hv = and i32 %.mask, 16711680
  %.sroa.6.0.insert.shift = zext nneg i32 %i.hv to i40
  %.sroa.6.0.insert.insert = or disjoint i40 %.sroa.7.0.extract.shift, %.sroa.6.0.insert.shift
  %.mask253 = shl i32 %.sroa.speculated.1, 8
  %i.hw = and i32 %.mask253, 65280
  %.sroa.5.0.insert.shift = zext nneg i32 %i.hw to i40
  %.sroa.5.0.insert.insert = or disjoint i40 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.mask254 = and i32 %.sroa.speculated, 255
  %.sroa.0.0.insert.ext = zext nneg i32 %.mask254 to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.sroa.2.0.insert.ext = zext i40 %.sroa.0.0.insert.insert to i48
  %.sroa.2.0.insert.shift = shl nuw i48 %.sroa.2.0.insert.ext, 8
  ret i48 %.sroa.2.0.insert.shift
}

declare void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #3

declare i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #11

declare { double, double } @_ZNK5Model2uvEii(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK3matILi4ELi4EE16invert_transposeEv(ptr dead_on_unwind noalias writable sret(%struct.mat) align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.mat, align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 3, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 7 uses
  %.0612 = phi i32 [ 4, %bb.a ], [ %i.ah, %.preheader ] ; 3 uses
  %i.a = icmp samesign ult i32 %.0612, 4
  %i.b = select i1 %i.a, i64 3, i64 2
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = icmp samesign ult i32 %.0612, 3
  %i.e = select i1 %i.d, i64 2, i64 1
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e ; 3 uses
  %i.g = icmp samesign ult i32 %.0612, 2
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds [32 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %spec.select.i.i8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %spec.select.i.1.i9 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = load double, ptr %spec.select.i.1.i9, align 8, !tbaa !14 ; 2 uses
  %i.k = load double, ptr %i.c, align 8, !tbaa !14
  %spec.select.i.1.1.i.a = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.220.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %spec.select.i.1.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load double, ptr %spec.select.i.1.2.i, align 8, !tbaa !14 ; 3 uses
  %i.n = load double, ptr %i.i, align 8, !tbaa !14 ; 3 uses
  %i.o = fneg double %i.k                         ; 2 uses
  %i.p = load <2 x double>, ptr %spec.select.i.1.1.i.a, align 8, !tbaa !14 ; 4 uses
  %i.q = insertelement <2 x double> poison, double %i.o, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> zeroinitializer) ; 2 uses
  %4 = extractelement <2 x double> %i.s, i64 0
  %5 = extractelement <2 x double> %i.p, i64 0
  %6 = and i64 %indvars.iv, 1
  %.not13.i.not = icmp eq i64 %6, 0
  %7 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %spec.select.i.119.i.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %8 = load double, ptr %spec.select.i.119.i.1, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.220.i.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %9 = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %3, double %4) ; 2 uses
  %10 = tail call double @llvm.fmuladd.f64(double %8, double %i.o, double 0.000000e+00)
  %i.t = insertelement <2 x double> poison, double %i.m, i64 0
  %i.u = insertelement <2 x double> %i.t, double %8, i64 1
  %11 = and i64 %indvars.iv, 1
  %.not13.i.1 = icmp eq i64 %11, 0
  %12 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %13 = and i64 %indvars.iv, 1
  %.not13.i.2.not = icmp eq i64 %13, 0
  %14 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %15 = load double, ptr %spec.select.i.220.i, align 8, !tbaa !14 ; 3 uses
  %16 = insertelement <2 x double> %i.p, double %15, i64 0
  %17 = load <2 x double>, ptr %spec.select.i.i8, align 8, !tbaa !14 ; 4 uses
  %18 = load double, ptr %spec.select.i.220.i.1, align 8, !tbaa !14 ; 2 uses
  %i.v = extractelement <2 x double> %17, i64 1   ; 2 uses
  %i.w = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.v, double %10)
  %19 = insertelement <2 x double> poison, double %i.w, i64 0
  %20 = insertelement <2 x double> %19, double %3, i64 1
  %21 = fneg <2 x double> %20                     ; 3 uses
  %22 = insertelement <2 x double> %21, double %9, i64 0
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %22, <2 x double> zeroinitializer) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0
  %25 = tail call double @llvm.fmuladd.f64(double %18, double %9, double 0.000000e+00)
  %26 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %25, i64 0
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %21, <2 x double> %26) ; 2 uses
  %28 = extractelement <2 x double> %27, i64 1
  %29 = tail call noundef double @llvm.fmuladd.f64(double %5, double %i.v, double %28) ; 2 uses
  %30 = extractelement <2 x double> %21, i64 0
  %31 = insertelement <2 x double> poison, double %i.n, i64 0
  %32 = insertelement <2 x double> %31, double %i.l, i64 1
  %33 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.x = insertelement <2 x double> %33, double %29, i64 0
  %34 = shufflevector <2 x double> %27, <2 x double> %i.s, <2 x i32> <i32 0, i32 3>
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %i.x, <2 x double> %34) ; 3 uses
  %36 = fneg <2 x double> %35                     ; 2 uses
  %37 = extractelement <2 x double> %36, i64 0
  %38 = extractelement <2 x double> %35, i64 0
  %39 = select i1 %.not13.i.1, double %38, double %37
  store double %39, ptr %12, align 16, !tbaa !14
  %i.y = extractelement <2 x double> %36, i64 1
  %i.z = tail call double @llvm.fmuladd.f64(double %i.m, double %i.y, double %24)
  %40 = insertelement <2 x double> poison, double %18, i64 0 ; 2 uses
  %41 = insertelement <2 x double> %40, double %8, i64 1
  %42 = fneg <2 x double> %17
  %43 = shufflevector <2 x double> %35, <2 x double> %42, <2 x i32> <i32 1, i32 2>
  %44 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %41, <2 x double> %43, <2 x double> zeroinitializer) ; 2 uses
  %45 = shufflevector <2 x double> %23, <2 x double> %44, <2 x i32> <i32 1, i32 3>
  %46 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %17, <2 x double> %45) ; 3 uses
  %47 = extractelement <2 x double> %46, i64 0
  %i.aa = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %47, double %i.z) ; 2 uses
  %i.ab = fneg double %i.aa
  %48 = select i1 %.not13.i.not, double %i.ab, double %i.aa
  store double %48, ptr %7, align 8, !tbaa !14
  %49 = extractelement <2 x double> %44, i64 0
  %i.ac = tail call double @llvm.fmuladd.f64(double %15, double %30, double %49)
  %50 = insertelement <2 x double> %40, double %i.n, i64 1
  %51 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ac, i64 1
  %52 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> %46, <2 x double> %51) ; 2 uses
  %53 = extractelement <2 x double> %52, i64 1    ; 2 uses
  %i.ad = fneg double %53
  %i.ae = select i1 %.not13.i.2.not, double %i.ad, double %53
  store double %i.ae, ptr %14, align 8, !tbaa !14
  %54 = fneg double %29
  %55 = extractelement <2 x double> %52, i64 0
  %i.af = tail call double @llvm.fmuladd.f64(double %15, double %54, double %55)
  %56 = extractelement <2 x double> %46, i64 1
  %i.ag = tail call noundef double @llvm.fmuladd.f64(double %i.m, double %56, double %i.af)
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ai = and i32 %i.ah, 1
  %.not13.i.3 = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not13.i.3, i32 1, i32 -1
  %i.ak = sitofp i32 %i.aj to double
  %i.al = fmul double %i.ag, %i.ak
  store double %i.al, ptr %i.j, align 16, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !131

bb.b:                                             ; preds = %.preheader
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load double, ptr %spec.select.i11.i, align 8, !tbaa !14
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14
  %i.ap = load double, ptr %1, align 8, !tbaa !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.8.0..sroa_idx7.1.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.8.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0..sroa_idx7.2.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load <2 x double>, ptr %2, align 16, !tbaa !14 ; 3 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1
  %i.ay = extractelement <2 x double> %i.aw, i64 0
  %.sroa.8.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load <2 x double>, ptr %spec.select.i.1.i, align 16, !tbaa !14 ; 3 uses
  %i.ba = extractelement <2 x double> %i.az, i64 1
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.am, double 0.000000e+00)
  %i.bc = extractelement <2 x double> %i.az, i64 0
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.an, double %i.bb)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ao, double %i.bd)
  %i.bf = tail call noundef double @llvm.fmuladd.f64(double %i.ay, double %i.ap, double %i.be)
  %i.bg = load <2 x double>, ptr %i.aq, align 16, !tbaa !14, !noalias !134
  %i.bh = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.bj = fdiv <2 x double> %i.bg, %i.bi
  store <2 x double> %i.bj, ptr %i.ar, align 8, !tbaa !14, !alias.scope !134
  %i.bk = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.i, align 16, !tbaa !14, !noalias !134
  %i.bl = fdiv <2 x double> %i.bk, %i.bi
  store <2 x double> %i.bl, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14, !alias.scope !134
  %i.bm = load <2 x double>, ptr %i.as, align 16, !tbaa !14, !noalias !134
  %i.bn = fdiv <2 x double> %i.bm, %i.bi
  store <2 x double> %i.bn, ptr %i.at, align 8, !tbaa !14, !alias.scope !134
  %i.bo = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.1.i, align 16, !tbaa !14, !noalias !134
  %i.bp = fdiv <2 x double> %i.bo, %i.bi
  store <2 x double> %i.bp, ptr %.sroa.8.0..sroa_idx.1.i, align 8, !tbaa !14, !alias.scope !134
  %i.bq = load <2 x double>, ptr %i.au, align 16, !tbaa !14, !noalias !134
  %i.br = fdiv <2 x double> %i.bq, %i.bi
  store <2 x double> %i.br, ptr %i.av, align 8, !tbaa !14, !alias.scope !134
  %i.bs = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.2.i, align 16, !tbaa !14, !noalias !134
  %i.bt = fdiv <2 x double> %i.bs, %i.bi
  store <2 x double> %i.bt, ptr %.sroa.8.0..sroa_idx.2.i, align 8, !tbaa !14, !alias.scope !134
  %i.bu = fdiv <2 x double> %i.az, %i.bi
  %i.bv = fdiv <2 x double> %i.aw, %i.bi
  store <2 x double> %i.bv, ptr %0, align 8, !tbaa !14, !alias.scope !134
  store <2 x double> %i.bu, ptr %.sroa.8.0..sroa_idx.3.i, align 8, !tbaa !14, !alias.scope !134
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @_ZNK5Model6normalEii(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZNK5Model4vertEii(ptr dead_on_unwind writable sret(%struct.vec.18) align 8, ptr noundef nonnull align 8 dereferenceable(264), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = !{!"double", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS5Model", !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"_ZTS7IShader"}
!18 = !{!"_ZTS3vecILi4EE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!19 = !{!"_ZTS11PhongShader", !17, i64 0, !15, i64 8, !18, i64 16, !6, i64 48, !6, i64 96, !6, i64 192}
!20 = !{!19, !15, i64 8}
!21 = !{}
!22 = !{i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!24 = !{!23, !11, i64 0}
!25 = !{!23, !11, i64 16}
!26 = distinct !{null, null, null, null}
!27 = distinct !{!27, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!28 = distinct !{!28, !27, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, i1 false, !"_ZN11PhongShader6vertexEii"}
!31 = distinct !{!31, !30, !"_ZN11PhongShader6vertexEii: argument 0"}
!32 = distinct !{!32, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!33 = distinct !{!33, !32, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!34 = distinct !{!34, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!35 = distinct !{!35, !34, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!36 = distinct !{!36, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!37 = distinct !{!37, !36, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!38 = distinct !{!38, i1 false, !"_ZN11PhongShader6vertexEii"}
!39 = distinct !{!39, !38, !"_ZN11PhongShader6vertexEii: argument 0"}
!40 = distinct !{!40, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!41 = distinct !{!41, !40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!42 = distinct !{!42, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!43 = distinct !{!43, !42, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!44 = distinct !{!44, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!45 = distinct !{!45, !44, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!46 = distinct !{!46, i1 false, !"_ZN11PhongShader6vertexEii"}
!47 = distinct !{!47, !46, !"_ZN11PhongShader6vertexEii: argument 0"}
!48 = distinct !{!48, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!49 = distinct !{!49, !48, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!50 = distinct !{!50, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!51 = distinct !{!51, !50, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!52 = distinct !{!52, i1 false, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!53 = distinct !{!53, !52, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!54 = distinct !{!54, !16}
!55 = !{!11, !11, i64 0}
!56 = !{!"vtable pointer", !5, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"long", !6, i64 0}
!59 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!60 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!61 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!62 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !58, i64 8}
!63 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!64 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!65 = !{!"_ZTSSt6locale", !64, i64 0}
!66 = !{!"_ZTSSt8ios_base", !58, i64 8, !58, i64 16, !59, i64 24, !60, i64 28, !60, i64 32, !61, i64 40, !62, i64 48, !6, i64 64, !7, i64 192, !63, i64 200, !65, i64 208}
!67 = !{!66, !60, i64 32}
!68 = !{!"p1 _ZTSSo", !10, i64 0}
!69 = !{!"bool", !6, i64 0}
!70 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!71 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!72 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!73 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!74 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !66, i64 0, !68, i64 216, !6, i64 224, !69, i64 225, !70, i64 232, !71, i64 240, !72, i64 248, !73, i64 256}
!75 = !{!74, !71, i64 240}
!76 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!77 = !{!"p1 _ZTS15__locale_struct", !10, i64 0}
!78 = !{!"p1 short", !10, i64 0}
!79 = !{!"_ZTSSt5ctypeIcE", !76, i64 0, !77, i64 16, !69, i64 24, !12, i64 32, !12, i64 40, !78, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!80 = !{!79, !6, i64 56}
!81 = !{!6, !6, i64 0}
!82 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!83 = !{!82, !11, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !82, i64 0, !58, i64 8, !6, i64 16}
!85 = !{!84, !58, i64 8}
!86 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
