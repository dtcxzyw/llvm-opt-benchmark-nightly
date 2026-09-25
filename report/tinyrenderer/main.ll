Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinyrenderer/original/main?download=true
inline.NumInlined: 255
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5ModelD2Ev:bb.a
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
  %4 = load double, ptr %i.bf, align 8, !tbaa !14 ; 3 uses
  %5 = load double, ptr %i.bd, align 8, !tbaa !14 ; 3 uses
  %i.bm = load double, ptr %1, align 8, !tbaa !14 ; 3 uses
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bp = fmul <2 x double> %i.bo, %i.bg
  %i.bq = fmul <2 x double> %i.bo, %i.bj
  %i.br = insertelement <2 x double> poison, double %5, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = fmul <2 x double> %i.bs, %i.bh
  %i.bu = fmul <2 x double> %i.bs, %i.bk
  %i.bv = fadd <2 x double> %i.bp, %i.bt
  %i.bw = fadd <2 x double> %i.bq, %i.bu
  %i.bx = insertelement <2 x double> poison, double %4, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = fmul <2 x double> %i.by, %i.bi
  %i.ca = fmul <2 x double> %i.by, %i.bl
  %i.cb = fadd <2 x double> %i.bv, %i.bz          ; 3 uses
  %i.cc = fadd <2 x double> %i.bw, %i.ca          ; 3 uses
  %i.cd = insertelement <2 x double> %i.at, double 0.000000e+00, i64 1
  %i.ce = insertelement <2 x double> %i.at, double -0.000000e+00, i64 1
  %i.cf = shufflevector <2 x double> %i.ay, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.ce, <2 x double> %i.cf)
  %i.ch = shufflevector <2 x double> %i.ba, <2 x double> %i.cb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ch, <2 x double> %i.cg) ; 2 uses
  %i.cj = shufflevector <2 x double> %i.am, <2 x double> %i.ba, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ck = shufflevector <2 x double> %i.ay, <2 x double> %i.ci, <2 x i32> <i32 0, i32 2>
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cj, <2 x double> %i.ck)
  %i.cm = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cl) ; 2 uses
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fdiv <2 x double> %i.ad, %i.cn
  %i.cp = fdiv <2 x double> %i.am, %i.cn
  %i.cq = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cr = fdiv <2 x double> %i.at, %i.cq
  %i.cs = fdiv <2 x double> %i.ba, %i.cq
  %i.ct = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cu = extractelement <2 x double> %i.ci, i64 1
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.cu)
  %i.cw = extractelement <2 x double> %i.cc, i64 1 ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.cv)
  %i.cy = extractelement <2 x double> %i.cc, i64 0 ; 2 uses
  %i.cz = tail call noundef double @llvm.fmuladd.f64(double %i.cy, double %i.cy, double %i.cx)
  %sqrt.i.i35 = tail call noundef double @llvm.sqrt.f64(double %i.cz)
  %i.da = insertelement <2 x double> poison, double %sqrt.i.i35, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dc = fdiv <2 x double> %i.cb, %i.db
  %i.dd = fdiv <2 x double> %i.cc, %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.de = fmul double %i.f, %i.bm
  %i.df = fmul double %i.h, %i.bm
  %i.dg = fmul double %.sroa.3.0.copyload.i, %5
  %i.dh = fmul double %.sroa.0.0.copyload.i, %5
  %i.di = fadd double %i.de, %i.dg
  %i.dj = fadd double %i.df, %i.dh
  %i.dk = fmul double %.sroa.3.0.copyload.i17, %4
  %i.dl = fmul double %.sroa.0.0.copyload.i15, %4
  %i.dm = fadd double %i.di, %i.dk
  %i.dn = fadd double %i.dj, %i.dl
  store double %i.dn, ptr %2, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store double %i.dm, ptr %i.do, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !20, !nonnull !21, !align !22
  call void @_ZNK5Model6normalERK3vecILi2EE(ptr dead_on_unwind nonnull writable sret(%struct.vec.18) align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %spec.select.i11.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %spec.select.i11.1.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select.i11.2.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load double, ptr %spec.select.i11.i.i, align 8, !tbaa !14, !noalias !130
  %i.ds = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> <double 0.000000e+00, double 1.000000e+00>, <2 x double> zeroinitializer) ; 2 uses
  %i.dv = load <2 x double>, ptr %spec.select.i11.1.i.i, align 16
  %i.dw = load <2 x double>, ptr %spec.select.i11.2.i.i, align 8
  %i.dx = load <2 x double>, ptr %3, align 16
  %i.dy = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dy, <2 x double> %i.du)
  %i.ea = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ea, <2 x double> %i.dz)
  %i.ec = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.ec, <2 x double> %i.eb) ; 3 uses
  %i.ee = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ef = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.dy, <2 x double> %i.ee)
  %i.eg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.ea, <2 x double> %i.ef)
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.ec, <2 x double> %i.eg) ; 3 uses
  %i.ei = extractelement <2 x double> %i.ed, i64 1 ; 2 uses
  %i.ej = call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double 0.000000e+00)
  %i.ek = extractelement <2 x double> %i.ed, i64 0 ; 2 uses
  %i.el = call double @llvm.fmuladd.f64(double %i.ek, double %i.ek, double %i.ej)
  %i.em = extractelement <2 x double> %i.eh, i64 1 ; 2 uses
  %i.en = call double @llvm.fmuladd.f64(double %i.em, double %i.em, double %i.el)
  %i.eo = extractelement <2 x double> %i.eh, i64 0 ; 2 uses
  %i.ep = call noundef double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %i.en)
  %sqrt.i.i73 = call noundef double @llvm.sqrt.f64(double %i.ep)
  %i.eq = insertelement <2 x double> poison, double %sqrt.i.i73, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fdiv <2 x double> %i.ed, %i.er          ; 2 uses
  %i.et = fdiv <2 x double> %i.eh, %i.er          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ev = load double, ptr %spec.select.i11.i, align 8, !tbaa !14 ; 2 uses
  %i.ew = extractelement <2 x double> %i.es, i64 1 ; 2 uses
  %i.ex = call double @llvm.fmuladd.f64(double %i.ew, double %i.ev, double 0.000000e+00)
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ey = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14 ; 2 uses
  %i.ez = extractelement <2 x double> %i.es, i64 0 ; 2 uses
  %i.fa = call double @llvm.fmuladd.f64(double %i.ez, double %i.ey, double %i.ex)
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fb = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14 ; 2 uses
  %i.fc = extractelement <2 x double> %i.et, i64 1 ; 2 uses
  %i.fd = call double @llvm.fmuladd.f64(double %i.fc, double %i.fb, double %i.fa)
  %i.fe = load double, ptr %i.eu, align 8, !tbaa !14 ; 2 uses
  %i.ff = extractelement <2 x double> %i.et, i64 0 ; 2 uses
  %i.fg = call noundef double @llvm.fmuladd.f64(double %i.ff, double %i.fe, double %i.fd) ; 6 uses
  %i.fh = fmul double %i.ew, %i.fg
  %i.fi = fmul double %i.ez, %i.fg
  %i.fj = fmul double %i.fc, %i.fg
  %i.fk = fmul double %i.ff, %i.fg
  %i.fl = fmul double %i.fh, 2.000000e+00
  %i.fm = fmul double %i.fi, 2.000000e+00
  %i.fn = fmul double %i.fj, 2.000000e+00
  %i.fo = fmul double %i.fk, 2.000000e+00
  %i.fp = fsub double %i.fl, %i.ev                ; 2 uses
  %i.fq = fsub double %i.fn, %i.fb                ; 2 uses
  %i.fr = fsub double %i.fo, %i.fe                ; 2 uses
  %i.fs = call double @llvm.fmuladd.f64(double %i.fp, double %i.fp, double 0.000000e+00)
  %i.ft = fcmp ogt double %i.fg, 0.000000e+00
  %.sroa.speculated102 = select i1 %i.ft, double %i.fg, double 0.000000e+00
  %i.fu = load ptr, ptr %i.dp, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.fv = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model8specularEv(ptr noundef nonnull align 8 dereferenceable(264) %i.fu) ; 3 uses
  %i.fw = load double, ptr %2, align 8, !tbaa !14
  %i.fx = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  %i.fy = sitofp i32 %i.fx to double
  %i.fz = fmul double %i.fw, %i.fy
  %i.ga = fptosi double %i.fz to i32
  %i.gb = load double, ptr %i.do, align 8, !tbaa !14
  %i.gc = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fv)
  %i.gd = sitofp i32 %i.gc to double
  %i.ge = fmul double %i.gb, %i.gd
  %i.gf = fptosi double %i.ge to i32
  %i.gg = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.fv, i32 noundef %i.ga, i32 noundef %i.gf)
  %.sroa.0100.0.extract.trunc = trunc i40 %i.gg to i8
  %i.gh = uitofp i8 %.sroa.0100.0.extract.trunc to double
  %6 = fmul nnan double %i.gh, 2.000000e+00
  %i.gi = fsub double %i.fm, %i.ey                ; 3 uses
  %i.gj = call double @llvm.fmuladd.f64(double %i.gi, double %i.gi, double %i.fs)
  %i.gk = call double @llvm.fmuladd.f64(double %i.fq, double %i.fq, double %i.gj)
  %i.gl = call noundef double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double %i.gk)
  %sqrt.i.i83 = call noundef double @llvm.sqrt.f64(double %i.gl)
  %i.gm = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %6, i64 1
  %i.go = insertelement <2 x double> <double poison, double 2.550000e+02>, double %sqrt.i.i83, i64 0
  %i.gp = fdiv <2 x double> %i.gn, %i.go          ; 2 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 1
  %i.gr = fadd nnan double %i.gq, 5.000000e-01
  %i.gs = extractelement <2 x double> %i.gp, i64 0 ; 2 uses
  %i.gt = fcmp olt double %i.gs, 0.000000e+00
  %.sroa.speculated99 = select i1 %i.gt, double 0.000000e+00, double %i.gs
  %i.gu = call noundef double @pow(double noundef %.sroa.speculated99, double noundef 3.500000e+01) #13
  %i.gv = fmul double %i.gu, %i.gr
  %i.gw = load ptr, ptr %i.dp, align 8, !tbaa !20, !nonnull !21, !align !22
  %i.gx = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNK5Model7diffuseEv(ptr noundef nonnull align 8 dereferenceable(264) %i.gw) ; 3 uses
  %i.gy = load double, ptr %2, align 8, !tbaa !14
  %i.gz = call noundef i32 @_ZNK8TGAImage5widthEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gx)
  %i.ha = sitofp i32 %i.gz to double
  %i.hb = fmul double %i.gy, %i.ha
  %i.hc = fptosi double %i.hb to i32
  %i.hd = load double, ptr %i.do, align 8, !tbaa !14
  %i.he = call noundef i32 @_ZNK8TGAImage6heightEv(ptr noundef nonnull align 8 dereferenceable(40) %i.gx)
  %i.hf = sitofp i32 %i.he to double
  %i.hg = fmul double %i.hd, %i.hf
  %i.hh = fptosi double %i.hg to i32
  %i.hi = call i40 @_ZNK8TGAImage3getEii(ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i32 noundef %i.hc, i32 noundef %i.hh) ; 4 uses
  %.sroa.7.0.extract.shift = and i40 %i.hi, -16777216
  %i.hj = fadd nnan double %.sroa.speculated102, 4.000000e-01
  %i.hk = fadd double %i.hj, %i.gv                ; 3 uses
  %i.hl = trunc i40 %i.hi to i8
  %i.hm = uitofp i8 %i.hl to double
  %i.hn = fmul double %i.hk, %i.hm
  %i.ho = fptosi double %i.hn to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ho, i32 255)
  %i.hp = lshr i40 %i.hi, 8
  %i.hq = trunc i40 %i.hp to i8
  %i.hr = uitofp i8 %i.hq to double
  %i.hs = fmul double %i.hk, %i.hr
  %i.ht = fptosi double %i.hs to i32
  %.sroa.speculated.1 = call i32 @llvm.smin.i32(i32 %i.ht, i32 255)
  %i.hu = lshr i40 %i.hi, 16
  %i.hv = trunc i40 %i.hu to i8
  %i.hw = uitofp i8 %i.hv to double
  %i.hx = fmul double %i.hk, %i.hw
  %i.hy = fptosi double %i.hx to i32
  %.sroa.speculated.2 = call i32 @llvm.smin.i32(i32 %i.hy, i32 255)
  %.mask = shl i32 %.sroa.speculated.2, 16
  %i.hz = and i32 %.mask, 16711680
  %.sroa.6.0.insert.shift = zext nneg i32 %i.hz to i40
  %.sroa.6.0.insert.insert = or disjoint i40 %.sroa.7.0.extract.shift, %.sroa.6.0.insert.shift
  %.mask253 = shl i32 %.sroa.speculated.1, 8
  %i.ia = and i32 %.mask253, 65280
  %.sroa.5.0.insert.shift = zext nneg i32 %i.ia to i40
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
  %.0612 = phi i32 [ 4, %bb.a ], [ %i.bu, %.preheader ] ; 3 uses
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
  %i.k = load double, ptr %i.c, align 8, !tbaa !14
  %spec.select.i.1.1.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.220.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %spec.select.i.1.2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load double, ptr %spec.select.i.1.2.i, align 8, !tbaa !14 ; 3 uses
  %i.n = load double, ptr %i.i, align 8, !tbaa !14 ; 3 uses
  %i.o = fneg double %i.k                         ; 2 uses
  %i.p = load <2 x double>, ptr %spec.select.i.1.1.i, align 8, !tbaa !14 ; 4 uses
  %i.q = insertelement <2 x double> poison, double %i.o, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> zeroinitializer) ; 2 uses
  %3 = extractelement <2 x double> %i.s, i64 1
  %i.t = extractelement <2 x double> %i.s, i64 0
  %i.u = extractelement <2 x double> %i.p, i64 0
  %i.v = and i64 %indvars.iv, 1
  %.not13.i.not = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %spec.select.i.119.i.1 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.x = load double, ptr %spec.select.i.119.i.1, align 8, !tbaa !14 ; 3 uses
  %spec.select.i.220.i.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %4 = load double, ptr %spec.select.i.1.i9, align 8, !tbaa !14 ; 2 uses
  %i.y = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %4, double %i.t) ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %i.o, double 0.000000e+00)
  %i.aa = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.x, i64 1
  %i.ac = and i64 %indvars.iv, 1
  %.not13.i.1 = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ae = and i64 %indvars.iv, 1
  %.not13.i.2.not = icmp eq i64 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ag = load double, ptr %spec.select.i.220.i.1, align 8, !tbaa !14 ; 2 uses
  %5 = load double, ptr %spec.select.i.220.i, align 8, !tbaa !14 ; 3 uses
  %6 = insertelement <2 x double> %i.p, double %5, i64 0
  %7 = load <2 x double>, ptr %spec.select.i.i8, align 8, !tbaa !14 ; 4 uses
  %i.ah = extractelement <2 x double> %7, i64 1   ; 2 uses
  %i.ai = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.ah, double %i.z)
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %4, i64 1
  %i.al = fneg <2 x double> %i.ak                 ; 3 uses
  %i.am = insertelement <2 x double> %i.al, double %i.y, i64 0
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.am, <2 x double> zeroinitializer) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.y, double 0.000000e+00)
  %i.aq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ap, i64 0
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.al, <2 x double> %i.aq) ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1
  %i.at = tail call noundef double @llvm.fmuladd.f64(double %i.u, double %i.ah, double %i.as) ; 2 uses
  %i.au = extractelement <2 x double> %i.ar, i64 0
  %8 = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.at, double %i.au) ; 2 uses
  %9 = fneg double %8
  %10 = select i1 %.not13.i.1, double %8, double %9
  store double %10, ptr %i.ad, align 16, !tbaa !14
  %i.av = extractelement <2 x double> %i.al, i64 0
  %i.aw = extractelement <2 x double> %7, i64 0
  %11 = tail call noundef double @llvm.fmuladd.f64(double %i.l, double %i.aw, double %3) ; 2 uses
  %12 = fneg double %11
  %13 = tail call double @llvm.fmuladd.f64(double %i.m, double %12, double %i.ao)
  %14 = insertelement <2 x double> poison, double %i.ag, i64 0 ; 2 uses
  %i.ax = insertelement <2 x double> %14, double %i.x, i64 1
  %i.ay = insertelement <2 x double> poison, double %11, i64 0
  %i.az = fneg <2 x double> %7
  %15 = shufflevector <2 x double> %i.ay, <2 x double> %i.az, <2 x i32> <i32 0, i32 2>
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %15, <2 x double> zeroinitializer) ; 2 uses
  %i.bb = shufflevector <2 x double> %i.an, <2 x double> %i.ba, <2 x i32> <i32 1, i32 3>
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %7, <2 x double> %i.bb) ; 3 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  %i.be = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.bd, double %13) ; 2 uses
  %i.bf = fneg double %i.be
  %i.bg = select i1 %.not13.i.not, double %i.bf, double %i.be
  store double %i.bg, ptr %i.w, align 8, !tbaa !14
  %i.bh = extractelement <2 x double> %i.ba, i64 0
  %i.bi = tail call double @llvm.fmuladd.f64(double %5, double %i.av, double %i.bh)
  %i.bj = insertelement <2 x double> %14, double %i.n, i64 1
  %i.bk = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bi, i64 1
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bc, <2 x double> %i.bk) ; 2 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bn = fneg double %i.bm
  %i.bo = select i1 %.not13.i.2.not, double %i.bn, double %i.bm
  store double %i.bo, ptr %i.af, align 8, !tbaa !14
  %i.bp = fneg double %i.at
  %i.bq = extractelement <2 x double> %i.bl, i64 0
  %i.br = tail call double @llvm.fmuladd.f64(double %5, double %i.bp, double %i.bq)
  %i.bs = extractelement <2 x double> %i.bc, i64 1
  %i.bt = tail call noundef double @llvm.fmuladd.f64(double %i.m, double %i.bs, double %i.br)
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bv = and i32 %i.bu, 1
  %.not13.i.3 = icmp eq i32 %i.bv, 0
  %i.bw = select i1 %.not13.i.3, i32 1, i32 -1
  %i.bx = sitofp i32 %i.bw to double
  %i.by = fmul double %i.bt, %i.bx
  store double %i.by, ptr %i.j, align 16, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !131

bb.b:                                             ; preds = %.preheader
  %spec.select.i11.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load double, ptr %spec.select.i11.i, align 8, !tbaa !14
  %spec.select.i.1.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %spec.select.i11.1.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load double, ptr %spec.select.i11.1.i, align 8, !tbaa !14
  %spec.select.i11.2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load double, ptr %spec.select.i11.2.i, align 8, !tbaa !14
  %i.cc = load double, ptr %1, align 8, !tbaa !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.8.0..sroa_idx7.1.i = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.8.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0..sroa_idx7.2.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.8.0..sroa_idx.2.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cj = load <2 x double>, ptr %2, align 16, !tbaa !14 ; 3 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  %i.cl = extractelement <2 x double> %i.cj, i64 0
  %.sroa.8.0..sroa_idx.3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load <2 x double>, ptr %spec.select.i.1.i, align 16, !tbaa !14 ; 3 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 1
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.bz, double 0.000000e+00)
  %i.cp = extractelement <2 x double> %i.cm, i64 0
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.ca, double %i.co)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cb, double %i.cq)
  %i.cs = tail call noundef double @llvm.fmuladd.f64(double %i.cl, double %i.cc, double %i.cr)
  %i.ct = load <2 x double>, ptr %i.cd, align 16, !tbaa !14, !noalias !134
  %i.cu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  %i.cw = fdiv <2 x double> %i.ct, %i.cv
  store <2 x double> %i.cw, ptr %i.ce, align 8, !tbaa !14, !alias.scope !134
  %i.cx = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.i, align 16, !tbaa !14, !noalias !134
  %i.cy = fdiv <2 x double> %i.cx, %i.cv
  store <2 x double> %i.cy, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14, !alias.scope !134
  %i.cz = load <2 x double>, ptr %i.cf, align 16, !tbaa !14, !noalias !134
  %i.da = fdiv <2 x double> %i.cz, %i.cv
  store <2 x double> %i.da, ptr %i.cg, align 8, !tbaa !14, !alias.scope !134
  %i.db = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.1.i, align 16, !tbaa !14, !noalias !134
  %i.dc = fdiv <2 x double> %i.db, %i.cv
  store <2 x double> %i.dc, ptr %.sroa.8.0..sroa_idx.1.i, align 8, !tbaa !14, !alias.scope !134
  %i.dd = load <2 x double>, ptr %i.ch, align 16, !tbaa !14, !noalias !134
  %i.de = fdiv <2 x double> %i.dd, %i.cv
  store <2 x double> %i.de, ptr %i.ci, align 8, !tbaa !14, !alias.scope !134
  %i.df = load <2 x double>, ptr %.sroa.8.0..sroa_idx7.2.i, align 16, !tbaa !14, !noalias !134
  %i.dg = fdiv <2 x double> %i.df, %i.cv
  store <2 x double> %i.dg, ptr %.sroa.8.0..sroa_idx.2.i, align 8, !tbaa !14, !alias.scope !134
  %i.dh = fdiv <2 x double> %i.cm, %i.cv
  %i.di = fdiv <2 x double> %i.cj, %i.cv
  store <2 x double> %i.di, ptr %0, align 8, !tbaa !14, !alias.scope !134
  store <2 x double> %i.dh, ptr %.sroa.8.0..sroa_idx.3.i, align 8, !tbaa !14, !alias.scope !134
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
!27 = distinct !{!27, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!28 = distinct !{!28, !27, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !"_ZN11PhongShader6vertexEii"}
!31 = distinct !{!31, !30, !"_ZN11PhongShader6vertexEii: argument 0"}
!32 = distinct !{!32, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!33 = distinct !{!33, !32, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!34 = distinct !{!34, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!35 = distinct !{!35, !34, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!36 = distinct !{!36, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!37 = distinct !{!37, !36, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!38 = distinct !{!38, !"_ZN11PhongShader6vertexEii"}
!39 = distinct !{!39, !38, !"_ZN11PhongShader6vertexEii: argument 0"}
!40 = distinct !{!40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!41 = distinct !{!41, !40, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!42 = distinct !{!42, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!43 = distinct !{!43, !42, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!44 = distinct !{!44, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!45 = distinct !{!45, !44, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!46 = distinct !{!46, !"_ZN11PhongShader6vertexEii"}
!47 = distinct !{!47, !46, !"_ZN11PhongShader6vertexEii: argument 0"}
!48 = distinct !{!48, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!49 = distinct !{!49, !48, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!50 = distinct !{!50, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
!51 = distinct !{!51, !50, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE: argument 0"}
!52 = distinct !{!52, !"_ZmlILi4ELi4EE3vecIXT_EERK3matIXT_EXT0_EERKS0_IXT0_EE"}
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
end_hunk_0
