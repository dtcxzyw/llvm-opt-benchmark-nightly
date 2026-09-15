Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Importer?download=true
inline.NumInlined: 10361
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %i.baw = load i64, ptr %i.baa, align 8
  %i.bax = add i64 %i.baw, 1
  call void @_ZdlPvm(ptr noundef %i.bau, i64 noundef %i.bax) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %bb.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  br label %bb.iz

._crit_edge.i.i206:                               ; preds = %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  %i.bay = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.bay, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bay, ptr noundef nonnull align 1 dereferenceable(14) @.str.33, i64 14, i1 false)
  %i.baz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 14, ptr %i.baz, align 8
  %i.bba = getelementptr inbounds nuw i8, ptr %25, i64 30
  store i8 0, ptr %i.bba, align 2
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.azo, i64 284
  invoke void @_ZN10aiMetadata3AddIfEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.azt, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 4 dereferenceable(4) %i.bbb)
          to label %bb.ix unwind label %bb.iy

bb.ix:                                            ; preds = %._crit_edge.i.i206
  %i.bbc = load ptr, ptr %25, align 8             ; 2 uses
  %i.bbd = icmp eq ptr %i.bbc, %i.bay
  br i1 %i.bbd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.ix
  %i.bbe = load i64, ptr %i.bay, align 8
  %i.bbf = add i64 %i.bbe, 1
  call void @_ZdlPvm(ptr noundef %i.bbc, i64 noundef %i.bbf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %_ZNK10glTFCommon3RefIN5glTF25LightEEcvbEv.exit.thread

bb.iy:                                            ; preds = %._crit_edge.i.i206
  %i.bbg = landingpad { ptr, i32 }
          catch ptr null
  %i.bbh = load ptr, ptr %25, align 8             ; 2 uses
  %i.bbi = icmp eq ptr %i.bbh, %i.bay
  br i1 %i.bbi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.iy
  %i.bbj = load i64, ptr %i.bay, align 8
  %i.bbk = add i64 %i.bbj, 1
  call void @_ZdlPvm(ptr noundef %i.bbh, i64 noundef %i.bbk) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %bb.iz

bb.iz:                                            ; preds = %.loopexit258, %.loopexit.split-lp259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.ad, %bb.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %bb.k
  %.pn141.pn = phi { ptr, i32 } [ %i.bbg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %i.bat, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %i.he, %bb.ad ], [ %.pn138229, %bb.aa ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %i.cc, %bb.k ], [ %.pn137.pn.pn.pn.pn, %bb.ip ], [ %lpad.loopexit260, %.loopexit258 ], [ %lpad.loopexit.split-lp261, %.loopexit.split-lp259 ]
  %.11 = extractvalue { ptr, i32 } %.pn141.pn, 0
  %i.bbl = call ptr @__cxa_begin_catch(ptr %.11) #34 ; 0 uses
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.aa) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 1144) #35
  invoke void @__cxa_rethrow() #36
          to label %bb.jd unwind label %bb.ja

_ZNK10glTFCommon3RefIN5glTF25LightEEcvbEv.exit.thread: ; preds = %_ZN8aiStringaSERKS_.exit, %_ZN8aiStringaSERKS_.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNK10glTFCommon3RefIN5glTF25LightEEcvbEv.exit
  ret ptr %i.aa

bb.ja:                                            ; preds = %bb.iz
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.jb unwind label %bb.jc

bb.jb:                                            ; preds = %bb.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn142 = phi { ptr, i32 } [ %i.bbm, %bb.ja ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  resume { ptr, i32 } %.pn142

bb.jc:                                            ; preds = %bb.ja
  %i.bbn = landingpad { ptr, i32 }
          catch ptr null
  %i.bbo = extractvalue { ptr, i32 } %i.bbn, 0
  call void @__clang_call_terminate(ptr %i.bbo) #38
  unreachable

bb.jd:                                            ; preds = %bb.iz, %bb.y
  unreachable
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.b = load i8, ptr %i.a, align 8, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.e = load float, ptr %i.d, align 8
  store float %i.e, ptr %0, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.g, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.j = load float, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.p = load float, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.s = load float, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.v = load float, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ab = load float, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 348
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ah = load float, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ak, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.an = load float, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 364
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.at = load float, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 372
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.aw, ptr %i.ax, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.az = load i8, ptr %i.ay, align 8, !range !45, !noundef !46
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 380
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.be = load float, ptr %i.bd, align 4
  %.sroa.8143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10146.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.12149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.16155.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18158.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.20161.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.24167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.26170.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.28173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.32179.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.34182.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bf = load <4 x float>, ptr %.sroa.8143.0..sroa_idx144, align 4
  %i.bg = load <4 x float>, ptr %.sroa.10146.0..sroa_idx147, align 4
  %i.bh = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %i.be, i64 3 ; 4 uses
  %i.bi = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bj = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = load <4 x float>, ptr %.sroa.16155.0..sroa_idx156, align 4
  %i.bl = load <4 x float>, ptr %.sroa.18158.0..sroa_idx159, align 4
  %i.bm = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = load <4 x float>, ptr %.sroa.24167.0..sroa_idx168, align 4
  %i.bp = load <4 x float>, ptr %.sroa.26170.0..sroa_idx171, align 4
  %i.bq = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.32179.0.copyload181 = load float, ptr %.sroa.32179.0..sroa_idx180, align 4
  %.sroa.34182.0.copyload184 = load float, ptr %.sroa.34182.0..sroa_idx183, align 4
  %i.bs = load <2 x float>, ptr %.sroa.28173.0..sroa_idx174, align 4 ; 4 uses
  %2 = load <2 x float>, ptr %i.bb, align 4       ; 2 uses
  %3 = load float, ptr %i.bc, align 8
  %4 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = insertelement <2 x float> %2, float 0.000000e+00, i64 0
  %5 = fmul <2 x float> %4, %i.bt                 ; 2 uses
  %6 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x float> %2, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0> ; 4 uses
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %7, <2 x float> %5)
  %i.bv = load <2 x float>, ptr %.sroa.20161.0..sroa_idx162, align 4 ; 4 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %8 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %3, i64 1 ; 3 uses
  %i.bx = fmul <2 x float> %i.bw, %8              ; 2 uses
  %9 = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %9, <2 x float> %i.bx)
  %i.by = load <2 x float>, ptr %.sroa.12149.0..sroa_idx150, align 4 ; 4 uses
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %12 = fmul <2 x float> %11, %8                  ; 2 uses
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %14, <2 x float> %12)
  %16 = load <2 x float>, ptr %0, align 4         ; 4 uses
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %19 = fmul <2 x float> %18, %8                  ; 2 uses
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <2 x float> %i.bs, <2 x float> %i.bv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %21, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %23 = shufflevector <4 x float> %22, <4 x float> %17, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %24 = shufflevector <2 x float> %5, <2 x float> %i.bx, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %25 = shufflevector <4 x float> %24, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %26 = shufflevector <4 x float> %25, <4 x float> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %27 = fadd <4 x float> %23, %26                 ; 4 uses
  %28 = shufflevector <2 x float> %i.bs, <2 x float> %i.bv, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %29 = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %30 = shufflevector <4 x float> %28, <4 x float> %29, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %31 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %32 = shufflevector <4 x float> %30, <4 x float> %31, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %33 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> zeroinitializer, <4 x float> %32) ; 4 uses
  %i.ca = shufflevector <4 x float> %27, <4 x float> %33, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %27, <4 x float> %33, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %27, <4 x float> %33, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.cd = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %7, <2 x float> %i.cd, <2 x float> %19)
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x float> %i.cc, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bi, <4 x float> %i.cg)
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ch)
  %i.cj = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.cb, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bm, <4 x float> %i.ck)
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cl)
  %i.cn = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.ca, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.bq, <4 x float> %i.co)
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cp)
  %i.cr = insertelement <4 x float> poison, float %.sroa.32179.0.copyload181, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = shufflevector <4 x float> %27, <4 x float> %33, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cu = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> %i.cu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bh, <4 x float> %i.cs, <4 x float> %i.cv)
  %i.cx = insertelement <4 x float> poison, float %.sroa.34182.0.copyload184, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.cw)
  store <4 x float> %i.ci, ptr %0, align 4
  store <4 x float> %i.cm, ptr %.sroa.12149.0..sroa_idx150, align 4
  store <4 x float> %i.cq, ptr %.sroa.20161.0..sroa_idx162, align 4
  store <4 x float> %i.cz, ptr %.sroa.28173.0..sroa_idx174, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.db = load i8, ptr %i.da, align 4, !range !45, !noundef !46
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 404
  %.sroa.1298.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.20110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.28122.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dg = load <2 x float>, ptr %i.dd, align 4    ; 4 uses
  %i.dh = load float, ptr %i.de, align 8          ; 5 uses
  %i.di = load <2 x float>, ptr %i.df, align 4    ; 6 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.dl = fneg float %i.dk                        ; 3 uses
  %i.dm = fmul float %i.dj, %i.dk
  %i.dn = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dh, i64 1
  %i.dp = fmul <2 x float> %i.di, %i.do
  %i.dq = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.dr = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.dq, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ds = shufflevector <2 x float> %i.dg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.dt = insertelement <4 x float> %i.ds, float -0.000000e+00, i64 3
  %i.du = shufflevector <2 x float> %i.di, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dv = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dw = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.dv, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.dx = extractelement <2 x float> %i.dg, i64 0
  %i.dy = fmul float %i.dx, %i.dl
  %i.dz = shufflevector <4 x float> %i.ds, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ea = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.dm, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.dy, i64 2
  %i.ec = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ed = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ee = insertelement <2 x float> %i.ed, float %i.dl, i64 0
  %i.ef = insertelement <2 x float> %i.di, float %i.dh, i64 1 ; 2 uses
  %i.eg = fmul <2 x float> %i.ef, %i.ef           ; 2 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 0
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.eh)
  %i.ej = insertelement <4 x float> %i.dt, float %i.ei, i64 0
  %i.ek = shufflevector <4 x float> %i.ej, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %i.ek, <4 x float> %i.dw) ; 2 uses
  %i.em = fmul <4 x float> %i.el, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %i.en = shufflevector <4 x float> %i.ek, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 2, i32 7>
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ed, <2 x float> %i.eg)
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eq = shufflevector <4 x float> %i.en, <4 x float> %i.ep, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.eq, <4 x float> %i.eb) ; 2 uses
  %i.es = fmul <4 x float> %i.er, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %i.et = shufflevector <4 x float> %i.ds, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.eu = shufflevector <4 x float> %i.du, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 poison, i32 7>
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ew = shufflevector <2 x float> %i.ec, <2 x float> %i.di, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ex = shufflevector <2 x float> %i.ee, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ey = fmul <4 x float> %i.ew, %i.ex
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.ev, <4 x float> %i.ez) ; 2 uses
  %i.fb = fmul <4 x float> %i.fa, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.fc = load <4 x float>, ptr %0, align 4       ; 4 uses
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fe = fmul <4 x float> %i.fd, %i.es
  %i.ff = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.ff, <4 x float> %i.fe)
  %i.fh = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.fh, <4 x float> %i.fg)
  %i.fj = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fi)
  store <4 x float> %i.fk, ptr %0, align 4
  %i.fl = load <4 x float>, ptr %.sroa.1298.0..sroa_idx99, align 4 ; 4 uses
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fn = shufflevector <4 x float> %i.es, <4 x float> %i.er, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.fo = insertelement <4 x float> %i.fn, float 0.000000e+00, i64 3 ; 3 uses
  %i.fp = fmul <4 x float> %i.fm, %i.fo
  %i.fq = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fr = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.fs = insertelement <4 x float> %i.fr, float 0.000000e+00, i64 3 ; 3 uses
  %i.ft = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> %i.fs, <4 x float> %i.fp)
  %i.fu = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fv = shufflevector <4 x float> %i.fb, <4 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.fw = insertelement <4 x float> %i.fv, float 0.000000e+00, i64 3 ; 3 uses
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fu, <4 x float> %i.fw, <4 x float> %i.ft)
  %i.fy = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fx)
  store <4 x float> %i.fz, ptr %.sroa.1298.0..sroa_idx99, align 4
  %i.ga = load <4 x float>, ptr %.sroa.20110.0..sroa_idx111, align 4 ; 4 uses
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gc = fmul <4 x float> %i.gb, %i.fo
  %i.gd = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> %i.fs, <4 x float> %i.gc)
  %i.gf = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gf, <4 x float> %i.fw, <4 x float> %i.ge)
  %i.gh = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gg)
  store <4 x float> %i.gi, ptr %.sroa.20110.0..sroa_idx111, align 4
  %i.gj = load <4 x float>, ptr %.sroa.28122.0..sroa_idx123, align 4 ; 4 uses
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gl = fmul <4 x float> %i.gk, %i.fo
  %i.gm = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gm, <4 x float> %i.fs, <4 x float> %i.gl)
  %i.go = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.fw, <4 x float> %i.gn)
  %i.gq = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gp)
  store <4 x float> %i.gr, ptr %.sroa.28122.0..sroa_idx123, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.gt = load i8, ptr %i.gs, align 4, !range !45, !noundef !46
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.20.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.28.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gy = load <4 x float>, ptr %i.gv, align 8    ; 2 uses
  %i.gz = load <4 x float>, ptr %0, align 4       ; 4 uses
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hb = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.gy, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.hc = fmul <4 x float> %i.ha, %i.hb
  %i.hd = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = shufflevector <4 x float> %i.gy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.he, <4 x float> %i.hc)
  %i.hg = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hh = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hi = load <4 x float>, ptr %.sroa.12.0..sroa_idx28, align 4 ; 4 uses
  %i.hj = load <2 x float>, ptr %i.gw, align 4    ; 2 uses
  %i.hk = load float, ptr %i.gx, align 8
  %i.hl = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hm = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hn = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.hm, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ho = fmul <4 x float> %i.hl, %i.hn
  %i.hp = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.hp, <4 x float> %i.ho)
  %i.hr = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hs = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.hm, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.ht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hr, <4 x float> %i.hs, <4 x float> %i.hq)
  %i.hu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> %i.hs, <4 x float> %i.hf)
  %i.hv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hu)
  %i.hw = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ht)
  store <4 x float> %i.hv, ptr %0, align 4
  store <4 x float> %i.hx, ptr %.sroa.12.0..sroa_idx28, align 4
  %i.hy = load <4 x float>, ptr %.sroa.20.0..sroa_idx36, align 4 ; 4 uses
  %i.hz = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ia = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.hz, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.ib = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ic = fmul <4 x float> %i.ia, %i.ib
  %i.id = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ie = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.id, <4 x float> %i.ic)
  %i.if = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ig = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.hk, i64 2 ; 2 uses
  %i.ih = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.if, <4 x float> %i.ig, <4 x float> %i.ie)
  %i.ii = shufflevector <4 x float> %i.hy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ii, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ih)
  store <4 x float> %i.ij, ptr %.sroa.20.0..sroa_idx36, align 4
  %i.ik = load <4 x float>, ptr %.sroa.28.0..sroa_idx44, align 4 ; 4 uses
  %i.il = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.im = fmul <4 x float> %i.ia, %i.il
  %i.in = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> zeroinitializer
  %i.io = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.in, <4 x float> %i.im)
  %i.ip = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.iq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> %i.ig, <4 x float> %i.io)
  %i.ir = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.is = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ir, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.iq)
  store <4 x float> %i.is, ptr %.sroa.28.0..sroa_idx44, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA28_KcmRA12_S1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(36) %5) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6)
  invoke void @_ZN15DeadlyErrorBaseC2IJmRA12_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA36_S1_ERA28_S1_EEN6Assimp9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(36) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
