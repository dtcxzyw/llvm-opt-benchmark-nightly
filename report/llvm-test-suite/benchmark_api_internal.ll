inline.NumInlined: 197
inline.NumDeleted: 95
begin_hunk_0
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long, std::allocator<long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, benchmark::Counter>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev = comdat any

$_ZN9benchmark13BenchmarkNameD2Ev = comdat any

$_ZN9benchmark5StateD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"min_time:%0.3f\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"min_warmup_time:%0.3f\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"iterations:%lu\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"repeats:%d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"process_time\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"manual_time\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"real_time\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"threads:%d\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_benchmark_api_internal.cc, ptr null }]

@_ZN9benchmark8internal17BenchmarkInstanceC1EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi = hidden unnamed_addr alias void (ptr, ptr, i32, i32, ptr, i32), ptr @_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi

declare noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal17BenchmarkInstanceC2EPNS0_9BenchmarkEiiRKSt6vectorIlSaIlEEi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !12
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  store i64 0, ptr %i.e, align 8, !tbaa !12
  store i8 0, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !12
  store i8 0, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !12
  store i8 0, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  store i64 0, ptr %i.n, align 8, !tbaa !12
  store i8 0, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !12
  store i8 0, ptr %i.p, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  store i64 0, ptr %i.t, align 8, !tbaa !12
  store i8 0, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  store i64 0, ptr %i.w, align 8, !tbaa !12
  store i8 0, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  store ptr %1, ptr %i.x, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %2, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %3, ptr %i.z, align 4, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !38
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %4, ptr %i.ad, align 8, !tbaa !60
  %i.ae = invoke noundef i32 @_ZNK9benchmark8internal9Benchmark11GetTimeUnitEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !62, !nonnull !63, !align !64 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 140
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !65, !range !66, !noundef !63
  store i8 %i.aj, ptr %i.ag, align 4, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 293
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 141
  %i.am = load i8, ptr %i.al, align 1, !tbaa !68, !range !66, !noundef !63
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 294
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 142
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !70, !range !66, !noundef !63
  store i8 %i.ap, ptr %i.an, align 2, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 144
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !72
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !73
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !74
  store ptr %i.av, ptr %i.at, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.ay, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !78
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.bb, align 8, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !81
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !82
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !83
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.bj = load <2 x double>, ptr %i.bi, align 8, !tbaa !84
  store <2 x double> %i.bj, ptr %i.bh, align 8, !tbaa !84
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !85
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !86
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store i32 %5, ptr %i.bn, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.b
  %i.bq = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !88 ; 2 uses
  %.not118127 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not118127, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !90
  %i.cb = invoke noundef zeroext i1 @_ZN9benchmark8internal6IsZeroEd(double noundef %i.ca)
          to label %bb.v unwind label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.d:                                             ; preds = %bb.b
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.025129 = phi i64 [ 0, %.lr.ph ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 3 uses
  %.sroa.0115.0128 = phi ptr [ %i.bq, %.lr.ph ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ] ; 2 uses
  %i.ce = load i64, ptr %i.e, align 8, !tbaa !12  ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = add i64 %i.ce, 1                        ; 3 uses
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.d                 ; 2 uses
  br i1 %i.ci, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.cj = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ck = load i64, ptr %i.d, align 8
  %i.cl = select i1 %i.ci, i64 15, i64 %i.ck
  %i.cm = icmp ugt i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.ce, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !91
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %.noexc
  %i.cn = phi ptr [ %.pre.i.i, %.noexc ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ce
  store i8 47, ptr %i.co, align 1, !tbaa !15
  store i64 %i.cg, ptr %i.e, align 8, !tbaa !12
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cg
  store i8 0, ptr %i.cq, align 1, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %bb.e
  %i.cs = load ptr, ptr %i.bu, align 8, !tbaa !92
  %i.ct = load ptr, ptr %i.bt, align 8, !tbaa !93
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 5
  %i.cy = icmp ult i64 %.025129, %i.cx
  br i1 %i.cy, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !62, !nonnull !63, !align !64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !93
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.025129 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !12
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !91
  invoke void (ptr, ptr, ...) @_ZN9benchmark9StrFormatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str, ptr noundef %i.dg)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dh = load i64, ptr %i.bv, align 8, !tbaa !12 ; 2 uses
  %i.di = load i64, ptr %i.e, align 8, !tbaa !12
  %i.dj = sub i64 4611686018427387903, %i.di
  %i.dk = icmp ult i64 %i.dj, %i.dh
  br i1 %i.dk, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #13
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.dl = load ptr, ptr %6, align 8, !tbaa !91
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef %i.dl, i64 noundef %i.dh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.dn = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bw
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.dp = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.ds = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bw
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.p
  %i.du = load i64, ptr %i.bw, align 8, !tbaa !15
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.o ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36 ], [ %lpad.phi, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ci

bb.q:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.dw = load i64, ptr %.sroa.0115.0128, align 8, !tbaa !94
  invoke void (ptr, ptr, ...) @_ZN9benchmark9StrFormatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.1, i64 noundef %i.dw)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dx = load i64, ptr %i.bx, align 8, !tbaa !12 ; 2 uses
  %i.dy = load i64, ptr %i.e, align 8, !tbaa !12
  %i.dz = sub i64 4611686018427387903, %i.dy
  %i.ea = icmp ult i64 %i.dz, %i.dx
  br i1 %i.ea, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i39

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #13
          to label %.noexc40 unwind label %.loopexit.split-lp120

.noexc40:                                         ; preds = %bb.s
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i39: ; preds = %bb.r
  %i.eb = load ptr, ptr %7, align 8, !tbaa !91
  %i.ec = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef %i.eb, i64 noundef %i.dx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit42 unwind label %.loopexit119 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i39
  %i.ed = load ptr, ptr %7, align 8, !tbaa !91    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.by
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit42
  %i.ef = load i64, ptr %i.by, align 8, !tbaa !15
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.eh = add i64 %.025129, 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0115.0128, i64 8 ; 2 uses
  %.not118 = icmp eq ptr %i.ei, %i.bs
  br i1 %.not118, label %._crit_edge, label %bb.e

bb.t:                                             ; preds = %bb.q
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

.loopexit119:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i39
  %lpad.loopexit121 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp120:                            ; preds = %bb.s
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp120, %.loopexit119
  %lpad.phi123 = phi { ptr, i32 } [ %lpad.loopexit121, %.loopexit119 ], [ %lpad.loopexit.split-lp122, %.loopexit.split-lp120 ] ; 2 uses
  %i.ek = load ptr, ptr %7, align 8, !tbaa !91    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.by
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.u
  %i.em = load i64, ptr %i.by, align 8, !tbaa !15
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.t
  %.pn28 = phi { ptr, i32 } [ %i.ej, %bb.t ], [ %lpad.phi123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %lpad.phi123, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ci

bb.v:                                             ; preds = %._crit_edge
  br i1 %i.cb, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.eo = load ptr, ptr %i.x, align 8, !tbaa !62, !nonnull !63, !align !64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 112
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !90
  invoke void (ptr, ptr, ...) @_ZN9benchmark9StrFormatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.2, double noundef %i.eq)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !91  ; 6 uses
  %i.es = icmp eq ptr %i.er, %i.g
  %i.et = load ptr, ptr %8, align 8, !tbaa !91    ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ev = icmp eq ptr %i.et, %i.eu                ; 2 uses
  br i1 %i.es, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.x
  br i1 %i.ev, label %bb.y, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.x
  br i1 %i.ev, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !12 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 16
  call void @llvm.assume(i1 %i.ey)
  %.not21.i = icmp eq ptr %8, %i.f
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.z, !prof !95

bb.z:                                             ; preds = %bb.y
  switch i64 %i.ex, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ez = load i8, ptr %i.et, align 1, !tbaa !15
  store i8 %i.ez, ptr %i.er, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.et, i64 %i.ex, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
end_hunk_0
