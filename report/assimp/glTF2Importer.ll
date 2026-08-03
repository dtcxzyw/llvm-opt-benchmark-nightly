inline.NumInlined: 10360
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN6Assimp13glTF2Importer10ImportNodeERN5glTF25AssetERN10glTFCommon3RefINS1_4NodeEEE:bb.a
  store ptr null, ptr %i.azs, align 8
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azo, i64 16
  store ptr %i.azr, ptr %i.azt, align 8
  store ptr %i.azo, ptr %i.azm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #34
  %i.azu = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.azu, ptr %24, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.azu, ptr noundef nonnull align 1 dereferenceable(14) @.str.33, i64 14, i1 false)
  %i.azv = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 14, ptr %i.azv, align 8
  %i.azw = getelementptr inbounds nuw i8, ptr %24, i64 30
  store i8 0, ptr %i.azw, align 2
  %i.azx = load ptr, ptr %i.azg, align 8
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %i.azx, i64 %.pre-phi
  %i.azz = load ptr, ptr %i.azy, align 8
  store i32 14, ptr %i.azp, align 4
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azp, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.baa, ptr noundef nonnull align 1 dereferenceable(14) @.str.33, i64 14, i1 false)
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azp, i64 18
  store i8 0, ptr %i.bab, align 2
  store i32 3, ptr %i.azr, align 8
  %i.bac = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #37
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %.thread28.i
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azz, i64 284
  %i.bae = load float, ptr %i.bad, align 4
  store float %i.bae, ptr %i.bac, align 4
  store ptr %i.bac, ptr %i.azs, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  br label %_ZNK10glTFCommon3RefIN5glTF25LightEEcvbEv.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205: ; preds = %.thread28.i
  %i.baf = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #34
  br label %bb.iy

._crit_edge.i.i206:                               ; preds = %bb.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #34
  %i.bag = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.bag, ptr %25, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.bag, ptr noundef nonnull align 1 dereferenceable(14) @.str.33, i64 14, i1 false)
  %i.bah = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 14, ptr %i.bah, align 8
  %i.bai = getelementptr inbounds nuw i8, ptr %25, i64 30
  store i8 0, ptr %i.bai, align 2
  %i.baj = getelementptr inbounds nuw i8, ptr %i.azi, i64 284
  invoke void @_ZN10aiMetadata3AddIfEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %i.azn, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 4 dereferenceable(4) %i.baj)
          to label %bb.iw unwind label %bb.ix

bb.iw:                                            ; preds = %._crit_edge.i.i206
  %i.bak = load ptr, ptr %25, align 8             ; 2 uses
  %i.bal = icmp eq ptr %i.bak, %i.bag
  br i1 %i.bal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %bb.iw
  %i.bam = load i64, ptr %i.bag, align 8
  %i.ban = add i64 %i.bam, 1
  call void @_ZdlPvm(ptr noundef %i.bak, i64 noundef %i.ban) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212: ; preds = %bb.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %_ZNK10glTFCommon3RefIN5glTF25LightEEcvbEv.exit.thread

bb.ix:                                            ; preds = %._crit_edge.i.i206
  %i.bao = landingpad { ptr, i32 }
          catch ptr null
  %i.bap = load ptr, ptr %25, align 8             ; 2 uses
  %i.baq = icmp eq ptr %i.bap, %i.bag
  br i1 %i.baq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.ix
  %i.bar = load i64, ptr %i.bag, align 8
  %i.bas = add i64 %i.bar, 1
  call void @_ZdlPvm(ptr noundef %i.bap, i64 noundef %i.bas) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.ix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #34
  br label %bb.iy

bb.iy:                                            ; preds = %.loopexit258, %.loopexit.split-lp259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.ad, %bb.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %bb.k
  %.pn141.pn = phi { ptr, i32 } [ %i.bao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215 ], [ %i.baf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %i.ha, %bb.ad ], [ %.pn138229, %bb.aa ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %i.ca, %bb.k ], [ %.pn137.pn.pn.pn.pn, %bb.ip ], [ %lpad.loopexit260, %.loopexit258 ], [ %lpad.loopexit.split-lp261, %.loopexit.split-lp259 ]
  %.11 = extractvalue { ptr, i32 } %.pn141.pn, 0
  %i.bat = call ptr @__cxa_begin_catch(ptr %.11) #34 ; 0 uses
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.aa) #34
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 1144) #35
  invoke void @__cxa_rethrow() #36
          to label %bb.jc unwind label %bb.iz

_ZNK10glTFCommon3RefIN5glTF25LightEEcvbEv.exit.thread: ; preds = %_ZN8aiStringaSERKS_.exit, %_ZN8aiStringaSERKS_.exit193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %_ZNK10glTFCommon3RefIN5glTF25LightEEcvbEv.exit
  ret ptr %i.aa

bb.iz:                                            ; preds = %bb.iy
  %i.bau = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ja unwind label %bb.jb

bb.ja:                                            ; preds = %bb.iz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  %.pn142 = phi { ptr, i32 } [ %i.bau, %bb.iz ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ]
  resume { ptr, i32 } %.pn142

bb.jb:                                            ; preds = %bb.iz
  %i.bav = landingpad { ptr, i32 }
          catch ptr null
  %i.baw = extractvalue { ptr, i32 } %i.bav, 0
  call void @__clang_call_terminate(ptr %i.baw) #38
  unreachable

bb.jc:                                            ; preds = %bb.iy, %bb.y
  unreachable
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL16GetNodeTransformR12aiMatrix4x4tIfERKN5glTF24NodeE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.b = load i8, ptr %i.a, align 8, !range !19, !noundef !20
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
  %i.az = load i8, ptr %i.ay, align 8, !range !19, !noundef !20
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 380
  %2 = load float, ptr %i.bb, align 4             ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 384
  %3 = load float, ptr %i.bc, align 8             ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.be = load float, ptr %i.bd, align 4
  %.sroa.6140.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.8143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.12149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.14152.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.16155.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.20161.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.22164.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.24167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.28173.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.30176.0..sroa_idx177 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.32179.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.6140.0.copyload142 = load float, ptr %.sroa.6140.0..sroa_idx141, align 4 ; 3 uses
  %.sroa.0138.0.copyload139 = load float, ptr %0, align 4 ; 4 uses
  %4 = fmul float %.sroa.6140.0.copyload142, 0.000000e+00 ; 2 uses
  %5 = fadd float %.sroa.0138.0.copyload139, %4
  %i.bf = tail call float @llvm.fmuladd.f32(float %.sroa.0138.0.copyload139, float 0.000000e+00, float %.sroa.6140.0.copyload142)
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %7 = insertelement <2 x float> %6, float %i.bf, i64 1
  %8 = fmul float %3, %.sroa.6140.0.copyload142
  %9 = tail call float @llvm.fmuladd.f32(float %2, float %.sroa.0138.0.copyload139, float %8)
  %10 = load <2 x float>, ptr %.sroa.8143.0..sroa_idx144, align 4 ; 3 uses
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> zeroinitializer, <2 x float> %7)
  %i.bh = insertelement <2 x float> %11, float %.sroa.0138.0.copyload139, i64 0
  %i.bi = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.be, i64 1 ; 4 uses
  %i.bj = insertelement <2 x float> poison, float %4, i64 0
  %12 = insertelement <2 x float> %i.bj, float %9, i64 1
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bi, <2 x float> %12)
  %14 = fadd <2 x float> %10, %13
  %15 = shufflevector <2 x float> %10, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %15, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %17 = shufflevector <2 x float> %i.bg, <2 x float> %14, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> zeroinitializer, <4 x float> %17)
  store <4 x float> %18, ptr %0, align 4
  %.sroa.14152.0.copyload154 = load float, ptr %.sroa.14152.0..sroa_idx153, align 4 ; 3 uses
  %.sroa.12149.0.copyload151 = load float, ptr %.sroa.12149.0..sroa_idx150, align 4 ; 4 uses
  %19 = fmul float %.sroa.14152.0.copyload154, 0.000000e+00 ; 2 uses
  %20 = fadd float %.sroa.12149.0.copyload151, %19
  %21 = tail call float @llvm.fmuladd.f32(float %.sroa.12149.0.copyload151, float 0.000000e+00, float %.sroa.14152.0.copyload154)
  %i.bk = insertelement <2 x float> poison, float %20, i64 0
  %22 = insertelement <2 x float> %i.bk, float %21, i64 1
  %23 = fmul float %3, %.sroa.14152.0.copyload154
  %i.bl = tail call float @llvm.fmuladd.f32(float %2, float %.sroa.12149.0.copyload151, float %23)
  %i.bm = load <2 x float>, ptr %.sroa.16155.0..sroa_idx156, align 4 ; 3 uses
  %24 = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> zeroinitializer, <2 x float> %22)
  %26 = insertelement <2 x float> %24, float %.sroa.12149.0.copyload151, i64 0
  %i.bn = insertelement <2 x float> poison, float %19, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bl, i64 1
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %i.bi, <2 x float> %i.bo)
  %27 = fadd <2 x float> %i.bm, %i.bp
  %i.bq = shufflevector <2 x float> %i.bm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %28 = shufflevector <2 x float> %25, <2 x float> %27, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %29 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> zeroinitializer, <4 x float> %28)
  store <4 x float> %29, ptr %.sroa.12149.0..sroa_idx150, align 4
  %.sroa.22164.0.copyload166 = load float, ptr %.sroa.22164.0..sroa_idx165, align 4 ; 3 uses
  %i.bs = load float, ptr %.sroa.20161.0..sroa_idx162, align 4 ; 4 uses
  %30 = fmul float %.sroa.22164.0.copyload166, 0.000000e+00 ; 2 uses
  %31 = fadd float %i.bs, %30
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float 0.000000e+00, float %.sroa.22164.0.copyload166)
  %32 = insertelement <2 x float> poison, float %31, i64 0
  %i.bu = insertelement <2 x float> %32, float %i.bt, i64 1
  %33 = fmul float %3, %.sroa.22164.0.copyload166
  %34 = tail call float @llvm.fmuladd.f32(float %2, float %i.bs, float %33)
  %35 = load <2 x float>, ptr %.sroa.24167.0..sroa_idx168, align 4 ; 3 uses
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> zeroinitializer, <2 x float> %i.bu)
  %38 = insertelement <2 x float> %36, float %i.bs, i64 0
  %39 = insertelement <2 x float> poison, float %30, i64 0
  %i.bv = insertelement <2 x float> %39, float %34, i64 1
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %38, <2 x float> %i.bi, <2 x float> %i.bv)
  %i.bx = fadd <2 x float> %35, %i.bw
  %40 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %41 = shufflevector <4 x float> %40, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %42 = shufflevector <2 x float> %37, <2 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %43 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> zeroinitializer, <4 x float> %42)
  store <4 x float> %43, ptr %.sroa.20161.0..sroa_idx162, align 4
  %.sroa.30176.0.copyload178 = load float, ptr %.sroa.30176.0..sroa_idx177, align 4 ; 3 uses
  %.sroa.28173.0.copyload175 = load float, ptr %.sroa.28173.0..sroa_idx174, align 4 ; 4 uses
  %44 = fmul float %.sroa.30176.0.copyload178, 0.000000e+00 ; 2 uses
  %45 = fadd float %.sroa.28173.0.copyload175, %44
  %46 = tail call float @llvm.fmuladd.f32(float %.sroa.28173.0.copyload175, float 0.000000e+00, float %.sroa.30176.0.copyload178)
  %47 = insertelement <2 x float> poison, float %45, i64 0
  %48 = insertelement <2 x float> %47, float %46, i64 1
  %i.by = fmul float %3, %.sroa.30176.0.copyload178
  %49 = tail call float @llvm.fmuladd.f32(float %2, float %.sroa.28173.0.copyload175, float %i.by)
  %50 = load <2 x float>, ptr %.sroa.32179.0..sroa_idx180, align 4 ; 3 uses
  %51 = shufflevector <2 x float> %50, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %51, <2 x float> zeroinitializer, <2 x float> %48)
  %i.ca = insertelement <2 x float> %51, float %.sroa.28173.0.copyload175, i64 0
  %i.cb = insertelement <2 x float> poison, float %44, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %49, i64 1
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.bi, <2 x float> %i.cc)
  %i.ce = fadd <2 x float> %50, %i.cd
  %i.cf = shufflevector <2 x float> %50, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ch = shufflevector <2 x float> %i.bz, <2 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> zeroinitializer, <4 x float> %i.ch)
  store <4 x float> %i.ci, ptr %.sroa.28173.0..sroa_idx174, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.ck = load i8, ptr %i.cj, align 4, !range !19, !noundef !20
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 404
  %i.cp = load float, ptr %i.co, align 4          ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.cr = load float, ptr %i.cq, align 8          ; 4 uses
  %i.cs = fmul float %i.cp, %i.cp                 ; 2 uses
  %i.ct = fneg float %i.cr                        ; 3 uses
  %i.cu = fmul float %i.cp, %i.ct
  %i.cv = fmul float %i.cp, %i.cr
  %.sroa.689.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.892.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.1095.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.1298.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.14101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.16104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.20110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.22113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.24116.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.28122.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.30125.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.32128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = load <2 x float>, ptr %i.cm, align 4    ; 3 uses
  %i.cx = load float, ptr %i.cn, align 8          ; 6 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cs)
  %i.cz = fmul float %i.cx, %i.cr
  %i.da = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.db = shufflevector <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.da, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dc = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 3 uses
  %i.dd = insertelement <4 x float> %i.dc, float -0.000000e+00, i64 3
  %i.de = insertelement <4 x float> %i.dd, float %i.cy, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.cp, i64 2 ; 3 uses
  %i.dg = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float 1.000000e+00>, float %i.cu, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.cz, i64 2
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> %i.df, <4 x float> %i.dh) ; 2 uses
  %i.dj = fmul <4 x float> %i.di, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00> ; 2 uses
  %i.dk = extractelement <2 x float> %i.cw, i64 0 ; 6 uses
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.cs)
  %i.dm = fmul float %i.dk, %i.ct
  %i.dn = load <2 x float>, ptr %0, align 4       ; 3 uses
  %.sroa.689.0.copyload91 = load float, ptr %.sroa.689.0..sroa_idx90, align 4
  %i.do = load <2 x float>, ptr %.sroa.892.0..sroa_idx93, align 4 ; 3 uses
  %.sroa.1095.0.copyload97 = load float, ptr %.sroa.1095.0..sroa_idx96, align 4
  %i.dp = fmul float %.sroa.689.0.copyload91, 0.000000e+00
  %i.dq = extractelement <2 x float> %i.dn, i64 0
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float 0.000000e+00, float %i.dp)
  %i.ds = extractelement <2 x float> %i.do, i64 0
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float 0.000000e+00, float %i.dr)
  %i.du = fadd float %.sroa.1095.0.copyload97, %i.dt
  %i.dv = shufflevector <4 x float> %i.dc, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.dw = shufflevector <4 x float> %i.df, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 2, i32 7>
  %i.dx = insertelement <4 x float> %i.dw, float %i.dl, i64 1
  %i.dy = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cv, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %i.dm, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.du, i64 3
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dx, <4 x float> %i.ea) ; 2 uses
  %i.ec = fmul <4 x float> %i.eb, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 5 uses
  %i.ed = fmul float %i.cx, %i.ct
  %i.ee = fmul float %i.dk, %i.cr
  %i.ef = fmul float %i.cx, %i.cx
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.ef)
  %i.eh = shufflevector <4 x float> %i.dc, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ei = shufflevector <4 x float> %i.df, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.ej = insertelement <4 x float> %i.ei, float %i.eg, i64 2
  %i.ek = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %i.ed, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %i.ee, i64 1
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.ej, <4 x float> %i.el) ; 2 uses
  %i.en = fmul <4 x float> %i.em, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.eo = shufflevector <2 x float> %i.dn, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ep = fmul <4 x float> %i.eo, %i.ec
  %i.eq = shufflevector <2 x float> %i.dn, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.er = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %i.eq, <4 x float> %i.ep)
  %i.es = shufflevector <2 x float> %i.do, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.et = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.en, <4 x float> %i.es, <4 x float> %i.er)
  %i.eu = shufflevector <2 x float> %i.do, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> zeroinitializer, <4 x float> %i.et)
  store <4 x float> %i.ev, ptr %0, align 4
  %i.ew = load <4 x float>, ptr %.sroa.1298.0..sroa_idx99, align 4 ; 6 uses
  %.sroa.16104.0.copyload106 = load float, ptr %.sroa.16104.0..sroa_idx105, align 4
  %.sroa.14101.0.copyload103 = load float, ptr %.sroa.14101.0..sroa_idx102, align 4
  %i.ex = fmul float %.sroa.14101.0.copyload103, 0.000000e+00
  %i.ey = extractelement <4 x float> %i.ew, i64 0
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.ey, float 0.000000e+00, float %i.ex)
  %i.fa = tail call float @llvm.fmuladd.f32(float %.sroa.16104.0.copyload106, float 0.000000e+00, float %i.ez)
  %i.fb = shufflevector <4 x float> %i.ec, <4 x float> %i.eb, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison> ; 3 uses
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 5, i32 7> ; 2 uses
  %i.fd = shufflevector <4 x float> %i.ew, <4 x float> %i.ec, <4 x i32> <i32 1, i32 1, i32 6, i32 poison>
  %i.fe = insertelement <4 x float> %i.fd, float %i.fa, i64 3 ; 2 uses
  %i.ff = fmul <4 x float> %i.fc, %i.fe
  %i.fg = fadd <4 x float> %i.fc, %i.fe
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.fi = shufflevector <4 x float> %i.di, <4 x float> %i.dj, <4 x i32> <i32 0, i32 5, i32 6, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float 0.000000e+00, i64 3 ; 3 uses
  %i.fk = shufflevector <4 x float> %i.ew, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.fk, <4 x float> %i.fh)
  %i.fm = shufflevector <4 x float> %i.en, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.fn = insertelement <4 x float> %i.fm, float 0.000000e+00, i64 3 ; 3 uses
  %i.fo = shufflevector <4 x float> %i.ew, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.fp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fo, <4 x float> %i.fl)
  %i.fq = shufflevector <4 x float> %i.ew, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fq, <4 x float> zeroinitializer, <4 x float> %i.fp)
  store <4 x float> %i.fr, ptr %.sroa.1298.0..sroa_idx99, align 4
  %i.fs = load <4 x float>, ptr %.sroa.20110.0..sroa_idx111, align 4 ; 6 uses
  %.sroa.24116.0.copyload118 = load float, ptr %.sroa.24116.0..sroa_idx117, align 4
  %.sroa.22113.0.copyload115 = load float, ptr %.sroa.22113.0..sroa_idx114, align 4
  %i.ft = fmul float %.sroa.22113.0.copyload115, 0.000000e+00
  %i.fu = extractelement <4 x float> %i.fs, i64 0
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float 0.000000e+00, float %i.ft)
  %i.fw = tail call float @llvm.fmuladd.f32(float %.sroa.24116.0.copyload118, float 0.000000e+00, float %i.fv)
  %i.fx = shufflevector <4 x float> %i.fb, <4 x float> %i.fs, <4 x i32> <i32 0, i32 1, i32 5, i32 7> ; 2 uses
  %i.fy = shufflevector <4 x float> %i.fs, <4 x float> %i.ec, <4 x i32> <i32 1, i32 1, i32 6, i32 poison>
  %i.fz = insertelement <4 x float> %i.fy, float %i.fw, i64 3 ; 2 uses
  %i.ga = fmul <4 x float> %i.fx, %i.fz
  %i.gb = fadd <4 x float> %i.fx, %i.fz
  %i.gc = shufflevector <4 x float> %i.ga, <4 x float> %i.gb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gd = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.gd, <4 x float> %i.gc)
  %i.gf = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.gg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.gf, <4 x float> %i.ge)
  %i.gh = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.gi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gh, <4 x float> zeroinitializer, <4 x float> %i.gg)
  store <4 x float> %i.gi, ptr %.sroa.20110.0..sroa_idx111, align 4
  %i.gj = load <4 x float>, ptr %.sroa.28122.0..sroa_idx123, align 4 ; 6 uses
  %.sroa.32128.0.copyload130 = load float, ptr %.sroa.32128.0..sroa_idx129, align 4
  %.sroa.30125.0.copyload127 = load float, ptr %.sroa.30125.0..sroa_idx126, align 4
  %i.gk = fmul float %.sroa.30125.0.copyload127, 0.000000e+00
  %i.gl = extractelement <4 x float> %i.gj, i64 0
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.gl, float 0.000000e+00, float %i.gk)
  %i.gn = tail call float @llvm.fmuladd.f32(float %.sroa.32128.0.copyload130, float 0.000000e+00, float %i.gm)
  %i.go = shufflevector <4 x float> %i.fb, <4 x float> %i.gj, <4 x i32> <i32 0, i32 1, i32 5, i32 7> ; 2 uses
  %i.gp = shufflevector <4 x float> %i.gj, <4 x float> %i.ec, <4 x i32> <i32 1, i32 1, i32 6, i32 poison>
  %i.gq = insertelement <4 x float> %i.gp, float %i.gn, i64 3 ; 2 uses
  %i.gr = fmul <4 x float> %i.go, %i.gq
  %i.gs = fadd <4 x float> %i.go, %i.gq
  %i.gt = shufflevector <4 x float> %i.gr, <4 x float> %i.gs, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gu = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.gv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fj, <4 x float> %i.gu, <4 x float> %i.gt)
  %i.gw = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.gx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.gw, <4 x float> %i.gv)
  %i.gy = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> zeroinitializer, <4 x float> %i.gx)
  store <4 x float> %i.gz, ptr %.sroa.28122.0..sroa_idx123, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.hb = load i8, ptr %i.ha, align 4, !range !19, !noundef !20
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.he = load float, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.hg = load float, ptr %i.hf, align 4          ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.hi = load float, ptr %i.hh, align 8
  %.sroa.0.0.copyload21 = load float, ptr %0, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0.copyload23 = load float, ptr %.sroa.6.0..sroa_idx22, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.12.0.copyload29 = load float, ptr %.sroa.12.0..sroa_idx28, align 4 ; 2 uses
  %.sroa.14.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.14.0.copyload31 = load float, ptr %.sroa.14.0..sroa_idx30, align 4 ; 2 uses
  %.sroa.16.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.20.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.20.0.copyload37 = load float, ptr %.sroa.20.0..sroa_idx36, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.22.0.copyload39 = load float, ptr %.sroa.22.0..sroa_idx38, align 4 ; 2 uses
  %.sroa.24.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.26.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.28.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.28.0.copyload45 = load float, ptr %.sroa.28.0..sroa_idx44, align 4 ; 2 uses
  %.sroa.30.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.30.0.copyload47 = load float, ptr %.sroa.30.0..sroa_idx46, align 4 ; 2 uses
  %.sroa.32.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.34.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hj = load <2 x float>, ptr %.sroa.8.0..sroa_idx24, align 4 ; 3 uses
  %.sroa.10.0.copyload27 = load float, ptr %.sroa.10.0..sroa_idx26, align 4
  %i.hk = fmul float %.sroa.6.0.copyload23, 0.000000e+00 ; 2 uses
  %i.hl = fmul float %i.hg, %.sroa.6.0.copyload23
  %i.hm = insertelement <2 x float> poison, float %.sroa.0.0.copyload21, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.he, i64 0 ; 4 uses
end_hunk_0
