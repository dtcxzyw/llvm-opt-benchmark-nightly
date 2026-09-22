Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Importer?download=true
inline.NumInlined: 10361
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  %i.ban = load float, ptr %i.bam, align 4
  store float %i.ban, ptr %i.bal, align 4
  %i.bao = load ptr, ptr %i.azz, align 8
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 8
  store ptr %i.bal, ptr %i.bap, align 8
  %.pre465 = load ptr, ptr %24, align 8           ; 2 uses
  %i.baq = icmp eq ptr %.pre465, %i.baa
  br i1 %i.baq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %_ZN10aiMetadata3SetIfEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.bar = load i64, ptr %i.baa, align 8
  %i.bas = add i64 %i.bar, 1
  call void @_ZdlPvm(ptr noundef %.pre465, i64 noundef %i.bas) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %_ZN10aiMetadata3SetIfEEbjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  br label %_ZNK10glTFCommon3RefIN5glTF25LightEEcvbEv.exit.thread

bb.iw:                                            ; preds = %.thread28.i
  %i.bat = landingpad { ptr, i32 }
          catch ptr null
  %i.bau = load ptr, ptr %24, align 8             ; 2 uses
  %i.bav = icmp eq ptr %i.bau, %i.baa
  br i1 %i.bav, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.iw
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
  %2 = load float, ptr %i.bd, align 4
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
  %3 = load <4 x float>, ptr %.sroa.8143.0..sroa_idx144, align 4
  %i.be = load <4 x float>, ptr %.sroa.10146.0..sroa_idx147, align 4
  %4 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %2, i64 3 ; 4 uses
  %5 = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  %6 = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %7 = load <4 x float>, ptr %.sroa.16155.0..sroa_idx156, align 4
  %8 = load <4 x float>, ptr %.sroa.18158.0..sroa_idx159, align 4
  %9 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %10 = load <4 x float>, ptr %.sroa.24167.0..sroa_idx168, align 4
  %11 = load <4 x float>, ptr %.sroa.26170.0..sroa_idx171, align 4
  %12 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %13 = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.32179.0.copyload181 = load float, ptr %.sroa.32179.0..sroa_idx180, align 4
  %.sroa.34182.0.copyload184 = load float, ptr %.sroa.34182.0..sroa_idx183, align 4
  %i.bg = load <2 x float>, ptr %i.bb, align 4    ; 2 uses
  %i.bh = load float, ptr %i.bc, align 8
  %14 = insertelement <2 x float> %i.bg, float 0.000000e+00, i64 0
  %15 = shufflevector <2 x float> %i.bg, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0> ; 4 uses
  %16 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bh, i64 1 ; 3 uses
  %17 = load <2 x float>, ptr %.sroa.28173.0..sroa_idx174, align 4 ; 4 uses
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %19 = fmul <2 x float> %18, %14                 ; 2 uses
  %20 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %15, <2 x float> %19)
  %22 = load <2 x float>, ptr %.sroa.20161.0..sroa_idx162, align 4 ; 4 uses
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %23, %16                 ; 2 uses
  %25 = load <2 x float>, ptr %.sroa.12149.0..sroa_idx150, align 4 ; 4 uses
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %27 = load <2 x float>, ptr %0, align 4         ; 4 uses
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <2 x float> %17, <2 x float> %22, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %30 = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %31 = shufflevector <4 x float> %29, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %32 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %33 = shufflevector <4 x float> %31, <4 x float> %32, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %34 = shufflevector <2 x float> %17, <2 x float> %22, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %35 = shufflevector <4 x float> %34, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.bi = shufflevector <4 x float> %35, <4 x float> %32, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> zeroinitializer, <4 x float> %i.bi) ; 4 uses
  %36 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %36, <2 x float> %24)
  %38 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %39 = fmul <2 x float> %38, %16                 ; 2 uses
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %41 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %41, <2 x float> %39)
  %43 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %44 = fmul <2 x float> %43, %16                 ; 2 uses
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %46 = shufflevector <4 x float> %29, <4 x float> %26, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %47 = shufflevector <4 x float> %46, <4 x float> %28, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %48 = shufflevector <2 x float> %19, <2 x float> %24, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %49 = shufflevector <4 x float> %48, <4 x float> %40, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %50 = shufflevector <4 x float> %49, <4 x float> %45, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %51 = fadd <4 x float> %47, %50                 ; 4 uses
  %52 = shufflevector <4 x float> %51, <4 x float> %i.bj, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %53 = shufflevector <4 x float> %51, <4 x float> %i.bj, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %54 = shufflevector <4 x float> %51, <4 x float> %i.bj, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %55 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %55, <2 x float> %44)
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %58 = shufflevector <4 x float> %54, <4 x float> %57, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %59 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %5, <4 x float> %58)
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %6, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %59)
  %60 = shufflevector <2 x float> %42, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %61 = shufflevector <4 x float> %53, <4 x float> %60, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %62 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %9, <4 x float> %61)
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %62)
  %63 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %64 = shufflevector <4 x float> %52, <4 x float> %63, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %65 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %12, <4 x float> %64)
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %13, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %65)
  %66 = insertelement <4 x float> poison, float %.sroa.32179.0.copyload181, i64 0
  %67 = shufflevector <4 x float> %66, <4 x float> poison, <4 x i32> zeroinitializer
  %68 = shufflevector <4 x float> %51, <4 x float> %i.bj, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %69 = shufflevector <2 x float> %21, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %70 = shufflevector <4 x float> %68, <4 x float> %69, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %4, <4 x float> %67, <4 x float> %70)
  %71 = insertelement <4 x float> poison, float %.sroa.34182.0.copyload184, i64 0
  %72 = shufflevector <4 x float> %71, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %72, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.bn)
  store <4 x float> %i.bk, ptr %0, align 4
  store <4 x float> %i.bl, ptr %.sroa.12149.0..sroa_idx150, align 4
  store <4 x float> %i.bm, ptr %.sroa.20161.0..sroa_idx162, align 4
  store <4 x float> %i.bo, ptr %.sroa.28173.0..sroa_idx174, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.bq = load i8, ptr %i.bp, align 4, !range !45, !noundef !46
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 404
  %.sroa.1298.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.20110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.28122.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bs, align 4    ; 4 uses
  %i.bw = load float, ptr %i.bt, align 8          ; 5 uses
  %i.bx = load <2 x float>, ptr %i.bu, align 4    ; 6 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = extractelement <2 x float> %i.bx, i64 1 ; 2 uses
  %i.ca = fneg float %i.bz                        ; 3 uses
  %i.cb = fmul float %i.by, %i.bz
  %i.cc = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cd = insertelement <2 x float> %i.cc, float %i.bw, i64 1
  %i.ce = fmul <2 x float> %i.bx, %i.cd
  %i.cf = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.cg = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.cf, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ch = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.ci = insertelement <4 x float> %i.ch, float -0.000000e+00, i64 3
  %i.cj = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ck = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ck, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cm = extractelement <2 x float> %i.bv, i64 0
  %i.cn = fmul float %i.cm, %i.ca
  %i.co = shufflevector <4 x float> %i.ch, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.cp = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float 1.000000e+00>, float %i.cb, i64 0
  %i.cq = insertelement <4 x float> %i.cp, float %i.cn, i64 2
  %i.cr = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cs = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ct = insertelement <2 x float> %i.cs, float %i.ca, i64 0
  %i.cu = insertelement <2 x float> %i.bx, float %i.bw, i64 1 ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.cu           ; 2 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bw, float %i.cw)
  %i.cy = insertelement <4 x float> %i.ci, float %i.cx, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.cz, <4 x float> %i.cl) ; 2 uses
  %i.db = fmul <4 x float> %i.da, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.cz, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 2, i32 7>
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.cs, <2 x float> %i.cv)
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.df = shufflevector <4 x float> %i.dc, <4 x float> %i.de, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.df, <4 x float> %i.cq) ; 2 uses
  %i.dh = fmul <4 x float> %i.dg, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %i.di = shufflevector <4 x float> %i.ch, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = shufflevector <4 x float> %i.cj, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 poison, i32 7>
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dl = shufflevector <2 x float> %i.cr, <2 x float> %i.bx, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.dm = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dn = fmul <4 x float> %i.dl, %i.dm
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> %i.dk, <4 x float> %i.do) ; 2 uses
  %i.dq = fmul <4 x float> %i.dp, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.dr = load <4 x float>, ptr %0, align 4       ; 4 uses
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dt = fmul <4 x float> %i.ds, %i.dh
  %i.du = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.du, <4 x float> %i.dt)
  %i.dw = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> %i.dw, <4 x float> %i.dv)
  %i.dy = shufflevector <4 x float> %i.dr, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.dx)
  store <4 x float> %i.dz, ptr %0, align 4
  %i.ea = load <4 x float>, ptr %.sroa.1298.0..sroa_idx99, align 4 ; 4 uses
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ec = shufflevector <4 x float> %i.dh, <4 x float> %i.dg, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.ed = insertelement <4 x float> %i.ec, float 0.000000e+00, i64 3 ; 3 uses
  %i.ee = fmul <4 x float> %i.eb, %i.ed
  %i.ef = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = shufflevector <4 x float> %i.da, <4 x float> %i.db, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.eh = insertelement <4 x float> %i.eg, float 0.000000e+00, i64 3 ; 3 uses
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.eh, <4 x float> %i.ee)
  %i.ej = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ek = shufflevector <4 x float> %i.dq, <4 x float> %i.dp, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.el = insertelement <4 x float> %i.ek, float 0.000000e+00, i64 3 ; 3 uses
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ej, <4 x float> %i.el, <4 x float> %i.ei)
  %i.en = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.em)
  store <4 x float> %i.eo, ptr %.sroa.1298.0..sroa_idx99, align 4
  %i.ep = load <4 x float>, ptr %.sroa.20110.0..sroa_idx111, align 4 ; 4 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.er = fmul <4 x float> %i.eq, %i.ed
  %i.es = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> zeroinitializer
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.eh, <4 x float> %i.er)
  %i.eu = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.el, <4 x float> %i.et)
  %i.ew = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ev)
  store <4 x float> %i.ex, ptr %.sroa.20110.0..sroa_idx111, align 4
  %i.ey = load <4 x float>, ptr %.sroa.28122.0..sroa_idx123, align 4 ; 4 uses
  %i.ez = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fa = fmul <4 x float> %i.ez, %i.ed
  %i.fb = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fb, <4 x float> %i.eh, <4 x float> %i.fa)
  %i.fd = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fd, <4 x float> %i.el, <4 x float> %i.fc)
  %i.ff = shufflevector <4 x float> %i.ey, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fe)
  store <4 x float> %i.fg, ptr %.sroa.28122.0..sroa_idx123, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.fi = load i8, ptr %i.fh, align 4, !range !45, !noundef !46
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.20.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.28.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fn = load <4 x float>, ptr %i.fk, align 8    ; 2 uses
  %i.fo = load <4 x float>, ptr %0, align 4       ; 4 uses
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fq = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fn, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.fr = fmul <4 x float> %i.fp, %i.fq
  %i.fs = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 4 uses
  %i.fu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.ft, <4 x float> %i.fr)
  %i.fv = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fw = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fx = load <4 x float>, ptr %.sroa.12.0..sroa_idx28, align 4 ; 4 uses
  %i.fy = load <2 x float>, ptr %i.fl, align 4    ; 2 uses
  %i.fz = load float, ptr %i.fm, align 8
  %i.ga = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gb = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gc = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.gb, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.gd = fmul <4 x float> %i.ga, %i.gc
  %i.ge = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %i.ge, <4 x float> %i.gd)
  %i.gg = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gh = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.gh, <4 x float> %i.gf)
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fv, <4 x float> %i.gh, <4 x float> %i.fu)
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gj)
  %i.gl = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gi)
  store <4 x float> %i.gk, ptr %0, align 4
  store <4 x float> %i.gm, ptr %.sroa.12.0..sroa_idx28, align 4
  %i.gn = load <4 x float>, ptr %.sroa.20.0..sroa_idx36, align 4 ; 4 uses
  %i.go = shufflevector <2 x float> %i.fy, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.gp = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.go, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.gq = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gr = fmul <4 x float> %i.gp, %i.gq
  %i.gs = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %i.gs, <4 x float> %i.gr)
  %i.gu = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gv = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.fz, i64 2 ; 2 uses
  %i.gw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %i.gv, <4 x float> %i.gt)
  %i.gx = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gw)
  store <4 x float> %i.gy, ptr %.sroa.20.0..sroa_idx36, align 4
  %i.gz = load <4 x float>, ptr %.sroa.28.0..sroa_idx44, align 4 ; 4 uses
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hb = fmul <4 x float> %i.gp, %i.ha
  %i.hc = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %i.hc, <4 x float> %i.hb)
  %i.he = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.he, <4 x float> %i.gv, <4 x float> %i.hd)
  %i.hg = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hg, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hf)
  store <4 x float> %i.hh, ptr %.sroa.28.0..sroa_idx44, align 4
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
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %6, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80
end_hunk_0
