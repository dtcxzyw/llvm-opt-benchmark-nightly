Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/writeBF?download=true
inline.NumInlined: 348
inline.NumDeleted: 167
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64, i64 }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.Eigen::WithFormat" = type { ptr, %"struct.Eigen::IOFormat" }
%"struct.Eigen::IOFormat" = type <{ %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [3 x i8], i32, i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.9 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.9 = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }

$_ZN3igl7writeBFIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELin1ELi0ELin1ELin1EEEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EE = comdat any

$_ZN5Eigen8IOFormatC2EiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_S8_S8_c = comdat any

$_ZN5Eigen8IOFormatD2Ev = comdat any

$_ZN5Eigen8IOFormatC2ERKS0_ = comdat any

$_ZN5Eigen8internal12print_matrixINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERSoS4_RKT_RKNS_8IOFormatE = comdat any

$_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev = comdat any

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [38 x i8] c"IOError: writeBF() could not open %s\0A\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external constant { [5 x ptr], [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl7writeBFIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEES3_NS2_IdLin1ELin1ELi0ELin1ELin1EEEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS1_10MatrixBaseIT_EERKNSD_IT0_EERKNSD_IT1_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i:
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  %5 = alloca %"class.std::basic_ofstream", align 8 ; 8 uses
  %6 = alloca %"class.Eigen::WithFormat", align 8 ; 6 uses
  %7 = alloca %"struct.Eigen::IOFormat", align 8  ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 4 uses
  %i.c = trunc i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %sext = shl i64 %i.b, 32                        ; 5 uses
  %i.d = ashr exact i64 %sext, 32                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.not.i = icmp eq i64 %sext, 0
  br i1 %.not.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit, label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.g = icmp sgt i64 %i.d, 0
  br i1 %i.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, label %.sink.split.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.a
  %i.h = mul nuw nsw i64 %i.d, 40
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #19 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %.sink.split.i

bb.b:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !13
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc102 unwind label %bb.c

.noexc102:                                        ; preds = %bb.b
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.a
  %.sink.i = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.a ] ; 2 uses
  store ptr %.sink.i, ptr %4, align 8, !tbaa !16
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

common.resume:                                    ; preds = %bb.n, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.m) #18
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit: ; preds = %.sink.split.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.n = phi ptr [ %.sink.i, %.sink.split.i ], [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ] ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 6 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !17
  store i64 5, ptr %i.f, align 8, !tbaa !18
  %i.p = icmp sgt i32 %i.c, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !16     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = lshr exact i64 %sext, 28                 ; 5 uses
  %i.v = load i64, ptr %i.t, align 8, !tbaa !17   ; 4 uses
  %.idx = mul nuw nsw i64 %i.d, 24                ; 7 uses
  %.idx110 = shl i64 %i.v, 4                      ; 4 uses
  %i.w = lshr exact i64 %sext, 27                 ; 5 uses
  %wide.trip.count = and i64 %i.b, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.x = ptrtoaddr ptr %i.s to i64                ; 6 uses
  %i.y = lshr exact i64 %sext, 29                 ; 6 uses
  %i.z = add nsw i64 %i.y, -1
  %diff.check = icmp ult i64 %i.z, 15
  %i.aa = add nsw i64 %.idx, -1
  %diff.check139 = icmp ult i64 %i.aa, 15
  %conflict.rdx140 = or i1 %diff.check, %diff.check139
  %i.ab = add i64 %.idx110, %i.x                  ; 2 uses
  %i.ac = sub i64 %i.ab, %i.o                     ; 3 uses
  %14 = add i64 %i.ac, -1
  %diff.check190 = icmp ult i64 %14, 15
  %conflict.rdx144 = or i1 %conflict.rdx140, %diff.check190
  %i.ad = shl i64 %i.v, 3                         ; 3 uses
  %i.ae = add i64 %i.ad, %i.x                     ; 2 uses
  %i.af = sub i64 %i.ae, %i.o                     ; 2 uses
  %15 = add i64 %i.af, -1
  %diff.check192 = icmp ult i64 %15, 15
  %conflict.rdx146 = or i1 %conflict.rdx144, %diff.check192
  %i.ag = sub i64 %i.x, %i.o                      ; 2 uses
  %16 = add i64 %i.ag, -1
  %diff.check194 = icmp ult i64 %16, 15
  %conflict.rdx148 = or i1 %conflict.rdx146, %diff.check194
  %i.ah = sub nsw i64 %i.y, %i.u
  %diff.check149 = icmp ugt i64 %i.ah, -16
  %conflict.rdx150 = or i1 %conflict.rdx148, %diff.check149
  %i.ai = sub nsw i64 %i.y, %i.w
  %diff.check153 = icmp ugt i64 %i.ai, -16
  %conflict.rdx154 = or i1 %conflict.rdx150, %diff.check153
  %i.aj = sub i64 %i.y, %i.ac
  %diff.check155 = icmp ugt i64 %i.aj, -16
  %conflict.rdx156 = or i1 %conflict.rdx154, %diff.check155
  %i.ak = sub i64 %i.y, %i.af
  %diff.check157 = icmp ugt i64 %i.ak, -16
  %conflict.rdx158 = or i1 %conflict.rdx156, %diff.check157
  %i.al = sub i64 %i.y, %i.ag
  %diff.check159 = icmp ugt i64 %i.al, -16
  %conflict.rdx160 = or i1 %conflict.rdx158, %diff.check159
  %i.am = sub nsw i64 %i.u, %.idx
  %diff.check161 = icmp ugt i64 %i.am, -16
  %conflict.rdx162 = or i1 %conflict.rdx160, %diff.check161
  %i.an = add i64 %i.u, %i.o                      ; 3 uses
  %i.ao = sub i64 %i.an, %i.ab
  %diff.check165 = icmp ugt i64 %i.ao, -16
  %conflict.rdx166 = or i1 %conflict.rdx162, %diff.check165
  %i.ap = sub i64 %i.an, %i.ae
  %diff.check167 = icmp ugt i64 %i.ap, -16
  %conflict.rdx168 = or i1 %conflict.rdx166, %diff.check167
  %i.aq = sub i64 %i.x, %i.an
  %diff.check169 = icmp ugt i64 %i.aq, -16
  %conflict.rdx170 = or i1 %conflict.rdx168, %diff.check169
  %i.ar = sub nsw i64 %.idx, %i.w
  %diff.check171 = icmp ugt i64 %i.ar, -16
  %conflict.rdx172 = or i1 %conflict.rdx170, %diff.check171
  %i.as = sub i64 %.idx, %i.ac
  %diff.check173 = icmp ugt i64 %i.as, -16
  %conflict.rdx174 = or i1 %conflict.rdx172, %diff.check173
  %i.at = add i64 %.idx, %i.o
  %i.au = sub i64 %i.at, %i.x                     ; 2 uses
  %i.av = sub i64 %i.ad, %i.au
  %diff.check175 = icmp ugt i64 %i.av, -16
  %conflict.rdx176 = or i1 %conflict.rdx174, %diff.check175
  %i.aw = add i64 %i.au, -1
  %diff.check177 = icmp ult i64 %i.aw, 15
  %conflict.rdx178 = or i1 %conflict.rdx176, %diff.check177
  %i.ax = add i64 %i.w, %i.o
  %i.ay = sub i64 %i.ax, %i.x                     ; 3 uses
  %i.az = sub i64 %.idx110, %i.ay
  %diff.check179 = icmp ugt i64 %i.az, -16
  %conflict.rdx180 = or i1 %conflict.rdx178, %diff.check179
  %i.ba = sub i64 %i.ad, %i.ay
  %diff.check181 = icmp ugt i64 %i.ba, -16
  %conflict.rdx182 = or i1 %conflict.rdx180, %diff.check181
  %i.bb = add i64 %i.ay, -1
  %diff.check230 = icmp ult i64 %i.bb, 15
  %conflict.rdx184 = or i1 %conflict.rdx182, %diff.check230
  br i1 %conflict.rdx184, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483646               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  %wide.load = load <2 x i32>, ptr %i.bc, align 4, !tbaa !42
  %i.bd = getelementptr [8 x i8], ptr %i.n, i64 %index ; 5 uses
  %i.be = sitofp <2 x i32> %wide.load to <2 x double>
  store <2 x double> %i.be, ptr %i.bd, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index
  %wide.load185 = load <2 x i32>, ptr %i.bf, align 4, !tbaa !42
  %i.bg = getelementptr [8 x i8], ptr %i.bd, i64 %i.d
  %i.bh = sitofp <2 x i32> %wide.load185 to <2 x double>
  store <2 x double> %i.bh, ptr %i.bg, align 8, !tbaa !20
  %i.bi = getelementptr [8 x i8], ptr %i.s, i64 %index ; 3 uses
  %wide.load186 = load <2 x double>, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr i8, ptr %i.bd, i64 %i.u
  store <2 x double> %wide.load186, ptr %i.bj, align 8, !tbaa !20
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.v
  %wide.load187 = load <2 x double>, ptr %i.bk, align 8, !tbaa !20
  %i.bl = getelementptr i8, ptr %i.bd, i64 %.idx
  store <2 x double> %wide.load187, ptr %i.bl, align 8, !tbaa !20
  %i.bm = getelementptr i8, ptr %i.bi, i64 %.idx110
  %wide.load188 = load <2 x double>, ptr %i.bm, align 8, !tbaa !20
  %i.bn = getelementptr i8, ptr %i.bd, i64 %i.w
  store <2 x double> %wide.load188, ptr %i.bn, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %5, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 16)
          to label %bb.d unwind label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !42
  %i.br = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.bs = sitofp i32 %i.bq to double
  store double %i.bs, ptr %i.br, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !42
  %i.bv = getelementptr [8 x i8], ptr %i.br, i64 %i.d
  %i.bw = sitofp i32 %i.bu to double
  store double %i.bw, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !20
  %i.bz = getelementptr i8, ptr %i.br, i64 %i.u
  store double %i.by, ptr %i.bz, align 8, !tbaa !20
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %i.v
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !20
  %i.cc = getelementptr i8, ptr %i.br, i64 %.idx
  store double %i.cb, ptr %i.cc, align 8, !tbaa !20
  %i.cd = getelementptr i8, ptr %i.bx, i64 %.idx110
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !20
  %i.cf = getelementptr i8, ptr %i.br, i64 %i.w
  store double %i.ce, ptr %i.cf, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !36

bb.d:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ch = call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.cg) #21 ; 2 uses
  br i1 %i.ch, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.cj = load ptr, ptr %0, align 8, !tbaa !25
  %i.ck = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str, ptr noundef %i.cj) #22 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %._crit_edge
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

._crit_edge.i.i:                                  ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cm, ptr %8, align 8, !tbaa !26
  store i8 32, ptr %i.cm, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.cn, align 8, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.co, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cp, ptr %9, align 8, !tbaa !26
  store i8 10, ptr %i.cp, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.cq, align 8, !tbaa !28
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.cr, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.cs, ptr %10, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !28
  store i8 0, ptr %i.cs, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.cu, ptr %11, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cv, align 8, !tbaa !28
  store i8 0, ptr %i.cu, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.cw, ptr %12, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.cx, align 8, !tbaa !28
  store i8 0, ptr %i.cw, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.cy, ptr %13, align 8, !tbaa !26
  store i8 10, ptr %i.cy, align 8, !tbaa !27
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.cz, align 8, !tbaa !28
  %i.da = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.da, align 1, !tbaa !27
  invoke void @_ZN5Eigen8IOFormatC2EiiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_S8_S8_c(ptr noundef nonnull align 8 dereferenceable(236) %7, i32 noundef -2, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i8 noundef signext 32)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  store ptr %4, ptr %6, align 8, !tbaa !48, !alias.scope !49
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  invoke void @_ZN5Eigen8IOFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(236) %i.db, ptr noundef nonnull align 8 dereferenceable(236) %7)
          to label %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6formatERKNS_8IOFormatE.exit unwind label %bb.i

_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6formatERKNS_8IOFormatE.exit: ; preds = %bb.g
  %i.dc = load ptr, ptr %6, align 8, !tbaa !51, !nonnull !30, !align !52
  %i.dd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5Eigen8internal12print_matrixINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEERSoS4_RKT_RKNS_8IOFormatE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(236) %i.db)
          to label %_ZN5EigenlsERSoRKNS_10WithFormatINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE.exit unwind label %bb.j ; 0 uses

_ZN5EigenlsERSoRKNS_10WithFormatINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6formatERKNS_8IOFormatE.exit
  call void @_ZN5Eigen8IOFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %i.db) #18
  call void @_ZN5Eigen8IOFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(236) dereferenceable(236) %7) #18
  %i.de = load ptr, ptr %13, align 8, !tbaa !25   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cy
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5EigenlsERSoRKNS_10WithFormatINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE.exit
  %i.dg = load i64, ptr %i.cy, align 8, !tbaa !27
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5EigenlsERSoRKNS_10WithFormatINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.di = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cw
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dk = load i64, ptr %i.cw, align 8, !tbaa !27
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.dm = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cu
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.do = load i64, ptr %i.cu, align 8, !tbaa !27
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.dq = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.cs
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.ds = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
end_hunk_0
