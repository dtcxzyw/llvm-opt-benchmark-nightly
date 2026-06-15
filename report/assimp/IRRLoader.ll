inline.NumInlined: 1776
inline.NumDeleted: 830
begin_hunk_0_@_ZN6Assimp11IRRImporter9ParseNodeERN4pugi8xml_nodeERNS_11BatchLoaderE:bb.a
  %i.ke = load ptr, ptr %i.hy, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  store ptr %i.kf, ptr %i.hy, align 8
  br label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

bb.bs:                                            ; preds = %bb.bq
  %i.kg = load ptr, ptr %i.hx, align 8            ; 5 uses
  %i.kh = ptrtoint ptr %i.kb to i64
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 4 uses
  %i.kk = icmp eq i64 %i.kj, 9223372036854775792
  br i1 %i.kk, label %bb.bt, label %_ZNKSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.bt:                                            ; preds = %bb.bs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNKSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bs
  %i.kl = ashr exact i64 %i.kj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i116 = call i64 @llvm.umax.i64(i64 %i.kl, i64 1)
  %i.km = add nsw i64 %.sroa.speculated.i.i.i116, %i.kl ; 2 uses
  %i.kn = icmp ult i64 %i.km, %i.kl
  %i.ko = call i64 @llvm.umin.i64(i64 %i.km, i64 576460752303423487)
  %i.kp = select i1 %i.kn, i64 576460752303423487, i64 %i.ko ; 3 uses
  %.not.i.i.i117 = icmp ne i64 %i.kp, 0
  call void @llvm.assume(i1 %.not.i.i.i117)
  %i.kq = shl nuw nsw i64 %i.kp, 4
  %i.kr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kq) #28 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kj ; 2 uses
  store ptr null, ptr %i.ks, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store i32 0, ptr %i.kt, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.kg, %i.kb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit31.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i ], [ %i.kr, %_ZNKSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i ], [ %i.kg, %_ZNKSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !49
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ku, %i.kb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit31.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !53

_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit31.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kr, %_ZNKSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.kv, %.lr.ph.i.i.i.i.i ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i32.i.i, label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit31.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kj) #27
  br label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bu, %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit31.i.i
  store ptr %i.kr, ptr %i.hx, align 8
  store ptr %i.kw, ptr %i.hy, align 8
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kr, i64 %i.kp
  store ptr %i.kx, ptr %i.hz, align 8
  br label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit: ; preds = %bb.br, %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.ky = phi ptr [ %i.kf, %bb.br ], [ %i.kw, %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -16
  %i.la = getelementptr inbounds i8, ptr %i.ky, i64 -8
  %i.lb = call noundef ptr @_ZN6Assimp12IrrlichtBase13ParseMaterialERN4pugi8xml_nodeERj(ptr noundef nonnull align 8 dereferenceable(40) %i.ia, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.la)
  store ptr %i.lb, ptr %i.kz, align 8
  %i.lc = load i32, ptr %i.ib, align 4
  %i.ld = add i32 %i.lc, 1
  store i32 %i.ld, ptr %i.ib, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit114, %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE12emplace_backIJEEERS3_DpOT_.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.le = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  %i.lf = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.lf, label %bb.bh, label %._crit_edge

._crit_edge160:                                   ; preds = %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE9push_backERKS3_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret ptr %.0

bb.bw:                                            ; preds = %.lr.ph159, %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.lg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4pugi17xml_node_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
  %i.lh = load i64, ptr %i.lg, align 8
  store i64 %i.lh, ptr %11, align 8
  %i.li = call noundef ptr @_ZNK4pugi8xml_node4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %.06.i118 = phi ptr [ @.str.90, %bb.bw ], [ %i.ln, %bb.bx ] ; 2 uses
  %.0.i119 = phi ptr [ %i.li, %bb.bw ], [ %i.lj, %bb.bx ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.i119, i64 1
  %i.lk = load i8, ptr %.0.i119, align 1
  %i.ll = zext i8 %i.lk to i32
  %i.lm = call i32 @tolower(i32 noundef %i.ll) #30 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.06.i118, i64 1
  %i.lo = load i8, ptr %.06.i118, align 1
  %i.lp = zext i8 %i.lo to i32
  %i.lq = call i32 @tolower(i32 noundef %i.lp) #30
  %i.lr = and i32 %i.lm, 255
  %i.ls = icmp ne i32 %i.lr, 0
  %.unshifted226 = xor i32 %i.lm, %i.lq
  %.mask227 = and i32 %.unshifted226, 255
  %i.lt = icmp eq i32 %.mask227, 0                ; 2 uses
  %i.lu = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %i.lu, label %bb.bx, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit122, !llvm.loop !37

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit122:        ; preds = %bb.bx
  br i1 %i.lt, label %bb.by, label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE9push_backERKS3_.exit

bb.by:                                            ; preds = %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit122
  %i.lv = call noundef ptr @_ZN6Assimp11IRRImporter9ParseNodeERN4pugi8xml_nodeERNS_11BatchLoaderE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.lw = load ptr, ptr %i.ih, align 8            ; 3 uses
  %i.lx = load ptr, ptr %i.ii, align 8
  %.not.i123 = icmp eq ptr %i.lw, %i.lx
  br i1 %.not.i123, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store ptr %i.lv, ptr %i.lw, align 8
  %i.ly = load ptr, ptr %i.ih, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store ptr %i.lz, ptr %i.ih, align 8
  br label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE9push_backERKS3_.exit

bb.ca:                                            ; preds = %bb.by
  %i.ma = load ptr, ptr %i.ig, align 8            ; 4 uses
  %i.mb = ptrtoint ptr %i.lw to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc                    ; 6 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775800
  br i1 %i.me, label %bb.cb, label %_ZNKSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.cb:                                            ; preds = %bb.ca
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #29
  unreachable

_ZNKSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ca
  %i.mf = ashr exact i64 %i.md, 3                 ; 3 uses
  %.sroa.speculated.i.i.i124 = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i124, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = call i64 @llvm.umin.i64(i64 %i.mg, i64 1152921504606846975)
  %i.mj = select i1 %i.mh, i64 1152921504606846975, i64 %i.mi ; 3 uses
  %.not.i.i.i125 = icmp ne i64 %i.mj, 0
  call void @llvm.assume(i1 %.not.i.i.i125)
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #28 ; 4 uses
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 %i.md ; 2 uses
  store ptr %i.lv, ptr %i.mm, align 8
  %i.mn = icmp sgt i64 %i.md, 0
  br i1 %i.mn, label %bb.cc, label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.cc:                                            ; preds = %_ZNKSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ml, ptr align 8 %i.ma, i64 %i.md, i1 false)
  br label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.cc, %_ZNKSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %.not.i17.i.i126 = icmp eq ptr %i.ma, null
  br i1 %.not.i17.i.i126, label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.md) #27
  br label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.cd, %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ml, ptr %i.ig, align 8
  store ptr %i.mo, ptr %i.ih, align 8
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mj
  store ptr %i.mp, ptr %i.ii, align 8
  br label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.bz, %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.mq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4pugi17xml_node_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(16) %9) ; 0 uses
  %i.mr = call noundef zeroext i1 @_ZNK4pugi17xml_node_iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
  br i1 %i.mr, label %bb.bw, label %._crit_edge160

bb.ce:                                            ; preds = %bb.bg, %bb.be, %bb.bb, %bb.ay, %bb.au, %bb.aq, %bb.al, %bb.aa, %bb.p, %bb.k, %bb.f
  %.sink = phi ptr [ %i.hq, %bb.bg ], [ %i.hn, %bb.be ], [ %i.hi, %bb.bb ], [ %i.he, %bb.ay ], [ %i.gp, %bb.au ], [ %i.fx, %bb.aq ], [ %i.dz, %bb.al ], [ %i.cb, %bb.aa ], [ %i.bj, %bb.p ], [ %i.ar, %bb.k ], [ %i.ac, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.hr, %bb.bg ], [ %i.ho, %bb.be ], [ %i.hj, %bb.bb ], [ %i.hf, %bb.ay ], [ %i.gq, %bb.au ], [ %i.gb, %bb.aq ], [ %i.fj, %bb.al ], [ %i.dl, %bb.aa ], [ %i.bn, %bb.p ], [ %i.av, %bb.k ], [ %i.ad, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 216) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn
}

declare ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK4pugi13xml_attribute5valueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11IRRImporter4NodeC2ENS1_2ETE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  store i32 %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.i, i8 0, i64 36, i1 false)
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float 1.000000e+00, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 100, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 100, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.r, ptr %i.s, align 8
  store ptr %i.r, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.u = load i32, ptr @_ZZN6Assimp11IRRImporter4NodeC1ENS1_2ETEE3cnt, align 4 ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr @_ZZN6Assimp11IRRImporter4NodeC1ENS1_2ETEE3cnt, align 4
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.103, i32 noundef %i.u) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.x, ptr %2, align 8
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.y, ptr %i.a, align 8
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.aa, ptr %2, align 8
  %i.ab = load i64, ptr %i.a, align 8
  store i64 %i.ab, ptr %i.x, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.x, %bb.a ] ; 2 uses
  switch i64 %i.y, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ad = load i8, ptr %i.b, align 16
  store i8 %i.ad, ptr %i.ac, align 1
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 16 %i.b, i64 %i.y, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.ae = load i64, ptr %i.a, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.ae, ptr %i.af, align 8
  %i.ag = load ptr, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ai = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  %i.ak = load ptr, ptr %2, align 8               ; 5 uses
  %i.al = icmp eq ptr %i.ak, %i.x                 ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.al, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = load i64, ptr %i.af, align 8            ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  switch i64 %i.am, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ao = load i8, ptr %i.ak, align 1
  store i8 %i.ao, ptr %i.ai, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ap = load i64, ptr %i.af, align 8            ; 2 uses
  store i64 %i.ap, ptr %i.h, align 8
  %i.aq = load ptr, ptr %i.f, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ak, ptr %i.f, align 8
  %i.as = load <2 x i64>, ptr %i.af, align 8
  store <2 x i64> %i.as, ptr %i.h, align 8
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.at = load i64, ptr %i.g, align 8
  store ptr %i.ak, ptr %i.f, align 8
  %i.au = load <2 x i64>, ptr %i.af, align 8
  store <2 x i64> %i.au, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ai, ptr %2, align 8
  store i64 %i.at, ptr %i.x, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.x, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %3 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ai, %bb.h ], [ %i.x, %bb.i ]
  store i64 0, ptr %i.af, align 8
  store i8 0, ptr %3, align 1
  %i.av = load ptr, ptr %2, align 8               ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.x
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ax = load i64, ptr %i.x, align 8
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = icmp ult i64 %i.be, 65
  br i1 %i.bf, label %_ZNSt12_Vector_baseISt4pairIP10aiMaterialjESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairIP10aiMaterialjESaIS3_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.bd
  %i.bk = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc5 unwind label %bb.n    ; 4 uses

.noexc5:                                          ; preds = %_ZNSt12_Vector_baseISt4pairIP10aiMaterialjESaIS3_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bb, %i.bh
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc5, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %i.bk, %.noexc5 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bb, %.noexc5 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !54
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !53

_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc5
  %.not.i8.i = icmp eq ptr %i.bb, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt4pairIP10aiMaterialjESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #27
  br label %_ZNSt12_Vector_baseISt4pairIP10aiMaterialjESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt4pairIP10aiMaterialjESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.j, %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.bk, ptr %i.n, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store ptr %i.bn, ptr %i.bg, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store ptr %i.bo, ptr %i.az, align 8
  br label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt4pairIP10aiMaterialjESaIS3_EE13_M_deallocateEPS3_m.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.i, align 8             ; 4 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 33
  br i1 %i.bv, label %_ZNSt12_Vector_baseIPN6Assimp11IRRImporter4NodeESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIPN6Assimp11IRRImporter4NodeESaIS3_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE7reserveEm.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bt                    ; 3 uses
  %i.ca = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #28
          to label %.noexc7 unwind label %bb.n    ; 4 uses

.noexc7:                                          ; preds = %_ZNSt12_Vector_baseIPN6Assimp11IRRImporter4NodeESaIS3_EE11_M_allocateEm.exit.i
  %i.cb = icmp sgt i64 %i.bz, 0
  br i1 %i.cb, label %bb.k, label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.k:                                             ; preds = %.noexc7
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr align 8 %i.br, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.k, %.noexc7
  %.not.i8.i6 = icmp eq ptr %i.br, null
  br i1 %.not.i8.i6, label %_ZNSt12_Vector_baseIPN6Assimp11IRRImporter4NodeESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bu) #27
  br label %_ZNSt12_Vector_baseIPN6Assimp11IRRImporter4NodeESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIPN6Assimp11IRRImporter4NodeESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.ca, ptr %i.i, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cc, ptr %i.bw, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store ptr %i.cd, ptr %i.bp, align 8
  br label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN6Assimp11IRRImporter4NodeESaIS3_EE13_M_deallocateEPS3_m.exit.i, %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void

bb.m:                                             ; preds = %.noexc.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIPN6Assimp11IRRImporter4NodeESaIS3_EE11_M_allocateEm.exit.i, %_ZNSt12_Vector_baseISt4pairIP10aiMaterialjESaIS3_EE11_M_allocateEm.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.n ], [ %i.ce, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZNSt7__cxx1110_List_baseIN6Assimp11IRRImporter8AnimatorESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #26
  %i.cg = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #27
  br label %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EED2Ev.exit: ; preds = %bb.o, %bb.p
  %i.cm = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.k
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EED2Ev.exit
  %i.co = load i64, ptr %i.k, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt6vectorISt4pairIP10aiMaterialjESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.cq = load ptr, ptr %i.i, align 8             ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #27
  br label %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %bb.q
  %i.cw = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.g
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EED2Ev.exit
  %i.cy = load i64, ptr %i.g, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt6vectorIPN6Assimp11IRRImporter4NodeESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger4warnIJRA26_KcPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #26
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #26
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA26_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
end_hunk_0
