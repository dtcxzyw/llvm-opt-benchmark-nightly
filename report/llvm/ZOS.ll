Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ZOS?download=true
inline.NumInlined: 849
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK5clang6driver10toolchains3ZOS19AddCXXStdlibLibArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.ja = load ptr, ptr %3, align 8, !tbaa !32, !noalias !254
  %i.jb = load i64, ptr %i.x, align 8, !tbaa !51, !noalias !254 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.jc, ptr %21, align 8, !tbaa !69, !alias.scope !257
  %i.jd = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store i64 0, ptr %i.jd, align 8, !tbaa !51, !alias.scope !257
  store i8 0, ptr %i.jc, align 8, !tbaa !22, !alias.scope !257
  %i.je = add i64 %i.jb, 3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.je) #16
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !51, !alias.scope !257
  %i.jg = add i64 %i.jf, -4611686018427387901
  %i.jh = icmp ult i64 %i.jg, 3
  br i1 %i.jh, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i80

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ji = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.25, i64 noundef 3) #16 ; 0 uses
  %i.jj = load i64, ptr %i.jd, align 8, !tbaa !51, !alias.scope !257
  %i.jk = sub i64 4611686018427387903, %i.jj
  %i.jl = icmp ult i64 %i.jk, %i.jb
  br i1 %i.jl, label %bb.an, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit81

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i80
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #19
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i80
  %i.jm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef %i.ja, i64 noundef %i.jb) #16 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.jn = load i64, ptr %i.jd, align 8, !tbaa !51, !noalias !260
  %i.jo = add i64 %i.jn, -4611686018427387885
  %i.jp = icmp ult i64 %i.jo, 19
  br i1 %i.jp, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82

bb.ao:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit81
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #19, !noalias !260
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit81
  %i.jq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.38, i64 noundef 19) #16, !noalias !260 ; 6 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.jr, ptr %20, align 8, !tbaa !69, !alias.scope !260
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !32 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 16 ; 5 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !51 ; 3 uses
  %i.jx = icmp ult i64 %i.jw, 16
  call void @llvm.assume(i1 %i.jx)
  %i.jy = add nuw nsw i64 %i.jw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jr, ptr noundef nonnull align 8 dereferenceable(1) %i.jt, i64 %i.jy, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82
  store ptr %i.js, ptr %20, align 8, !tbaa !32, !alias.scope !260
  %i.jz = load i64, ptr %i.jt, align 8, !tbaa !22
  store i64 %i.jz, ptr %i.jr, align 8, !tbaa !22, !alias.scope !260
  %.phi.trans.insert.i84 = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %.pre.i85 = load i64, ptr %.phi.trans.insert.i84, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit86

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit86: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.ka = phi i64 [ %i.jw, %bb.ap ], [ %.pre.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.kc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ka, ptr %i.kc, align 8, !tbaa !51, !alias.scope !260
  store ptr %i.jt, ptr %i.jq, align 8, !tbaa !32
  store i64 0, ptr %i.kb, align 8, !tbaa !51
  store i8 0, ptr %i.jt, align 8, !tbaa !22
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 4, ptr %i.kd, align 8, !tbaa !28
  %i.ke = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.ke, align 1, !tbaa !31
  store ptr %20, ptr %19, align 8, !tbaa !22
  %i.kf = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(34) %19) ; 2 uses
  %i.kg = load i32, ptr %i.bd, align 8, !tbaa !10 ; 2 uses
  %i.kh = load i32, ptr %i.bf, align 4, !tbaa !13
  %.not.i87 = icmp ult i32 %i.kg, %i.kh
  br i1 %.not.i87, label %bb.ar, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit86
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.kf)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit88

bb.ar:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit86
  %i.ki = zext i32 %i.kg to i64
  %i.kj = load ptr, ptr %2, align 8, !tbaa !15
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ki
  store ptr %i.kf, ptr %i.kk, align 1
  %i.kl = load i32, ptr %i.bd, align 8, !tbaa !10
  %i.km = add i32 %i.kl, 1
  store i32 %i.km, ptr %i.bd, align 8, !tbaa !10
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit88

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit88: ; preds = %bb.aq, %bb.ar
  %i.kn = load ptr, ptr %20, align 8, !tbaa !32   ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.jr
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit88
  %i.kp = load i64, ptr %i.jr, align 8, !tbaa !22
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.kr = load ptr, ptr %21, align 8, !tbaa !32   ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.jc
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.kt = load i64, ptr %i.jc, align 8, !tbaa !22
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.kv = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !22
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZNK5clang6driver10toolchains3ZOS14buildAssemblerEv(ptr noundef nonnull align 8 dereferenceable(2568) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  tail call void @_ZN5clang6driver4ToolC2EPKcS3_RKNS0_9ToolChainE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef nonnull align 8 dereferenceable(2568) %0) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5clang6driver5tools3zos9AssemblerE, i64 16), ptr %i.a, align 8, !tbaa !8
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZNK5clang6driver10toolchains3ZOS11buildLinkerEv(ptr noundef nonnull align 8 dereferenceable(2568) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18 ; 3 uses
  tail call void @_ZN5clang6driver4ToolC2EPKcS3_RKNS0_9ToolChainE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull align 8 dereferenceable(2568) %0) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5clang6driver5tools3zos6LinkerE, i64 16), ptr %i.a, align 8, !tbaa !8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains3ZOS25AddClangSystemIncludeArgsERKN4llvm3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.llvm::SmallString", align 8 ; 11 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::SmallString", align 8 ; 11 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.llvm::SmallString", align 8 ; 10 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.d = tail call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 3254)
  %.not101 = icmp eq ptr %i.d, null
  br i1 %.not101, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114, !nonnull !26, !align !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !69
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 %i.k, ptr %i.c, align 8, !tbaa !71
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #16 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !32
  %i.n = load i64, ptr %i.c, align 8, !tbaa !71
  store i64 %i.n, ptr %i.h, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !22
  store i8 %i.p, ptr %i.o, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.q = load i64, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !51
  %i.s = load ptr, ptr %3, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %i.u = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 3233)
  %.not102 = icmp eq ptr %i.u, null
  br i1 %.not102, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.v = load ptr, ptr %3, align 8, !tbaa !32
  %i.w = load i64, ptr %i.r, align 8, !tbaa !51   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store ptr %i.x, ptr %4, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 0, ptr %i.y, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 128, ptr %i.z, align 8, !tbaa !50
  %i.aa = icmp ugt i64 %i.w, 128
  br i1 %i.aa, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i: ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull %i.x, i64 noundef %i.w, i64 noundef 1) #16
  %.pre8.pre.i.i.i = load i64, ptr %i.y, align 8, !tbaa !49
  %.pre = load ptr, ptr %4, align 8, !tbaa !47
  br label %bb.g

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp samesign eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i
  %i.ab = phi ptr [ %.pre, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ %i.x, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %.pre8.i.i4.i = phi i64 [ %.pre8.pre.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.pre8.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.v, i64 %i.w, i1 false)
  %.pre.i.i.i = load i64, ptr %i.y, align 8, !tbaa !49
  br label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %bb.g
  %i.ad = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.g ]
  %i.ae = add i64 %i.ad, %i.w
  store i64 %i.ae, ptr %i.y, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ag, align 1, !tbaa !31
  store ptr @.str.39, ptr %5, align 8, !tbaa !22
  store i8 3, ptr %i.af, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ai, align 1, !tbaa !31
  store ptr @.str.40, ptr %6, align 8, !tbaa !22
  store i8 3, ptr %i.ah, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i16 257, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i16 257, ptr %i.ak, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull align 8 dereferenceable(34) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.al = load ptr, ptr %4, align 8, !tbaa !47
  %i.am = load i64, ptr %i.y, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 5, ptr %i.an, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ao, align 1, !tbaa !31
  store ptr %i.al, ptr %9, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.am, ptr %i.ap, align 8, !tbaa !22
  call void @_ZN5clang6driver9ToolChain16addSystemIncludeERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(34) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.aq = load ptr, ptr %3, align 8, !tbaa !32
  %i.ar = load i64, ptr %i.r, align 8, !tbaa !51  ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  store ptr %i.as, ptr %10, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.at, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 128, ptr %i.au, align 8, !tbaa !50
  %i.av = icmp ugt i64 %i.ar, 128
  br i1 %i.av, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i43, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i39

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i43: ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %10, ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef 1) #16
  %.pre8.pre.i.i.i44 = load i64, ptr %i.at, align 8, !tbaa !49
  %.pre108 = load ptr, ptr %10, align 8, !tbaa !47
  br label %bb.h

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i39: ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit
  %.not.i.i.i.i40 = icmp samesign eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i40, label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit45, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i39, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i43
  %i.aw = phi ptr [ %.pre108, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i43 ], [ %i.as, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i39 ]
  %.pre8.i.i4.i41 = phi i64 [ %.pre8.pre.i.i.i44, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i43 ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i39 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.pre8.i.i4.i41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  %.pre.i.i.i42 = load i64, ptr %i.at, align 8, !tbaa !49
  br label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit45

_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit45: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i39, %bb.h
  %i.ay = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i39 ], [ %.pre.i.i.i42, %bb.h ]
  %i.az = add i64 %i.ay, %i.ar
  store i64 %i.az, ptr %i.at, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bb, align 1, !tbaa !31
  store ptr @.str.39, ptr %11, align 8, !tbaa !22
  store i8 3, ptr %i.ba, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i16 257, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i16 257, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i16 257, ptr %i.be, align 8
  call void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull align 8 dereferenceable(34) %12, ptr noundef nonnull align 8 dereferenceable(34) %13, ptr noundef nonnull align 8 dereferenceable(34) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.bf = load ptr, ptr %10, align 8, !tbaa !47
  %i.bg = load i64, ptr %i.at, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 5, ptr %i.bh, align 8, !tbaa !28
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.bi, align 1, !tbaa !31
  store ptr %i.bf, ptr %15, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.bg, ptr %i.bj, align 8, !tbaa !22
  call void @_ZN5clang6driver9ToolChain16addSystemIncludeERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(34) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.bk = load ptr, ptr %10, align 8, !tbaa !47   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.as
  br i1 %i.bl, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit45
  call void @free(ptr noundef %i.bk) #16
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit:          ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit45, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.bm = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.x
  br i1 %i.bn, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit48, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit
  call void @free(ptr noundef %i.bm) #16
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit48

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit48:        ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bo = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef 3185) ; 2 uses
  %.not = icmp eq ptr %i.bo, null
  br i1 %.not, label %.critedge38, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !15
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !59 ; 7 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %.critedge38, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.l
  %i.bs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #16 ; 7 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.critedge38, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.bu = call ptr @memchr(ptr noundef nonnull %i.br, i32 noundef 58, i64 noundef %i.bs) #16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.br to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %or.cond = or i1 %.not.i.i, %i.by
  br i1 %or.cond, label %_ZNK4llvm9StringRef4findEcm.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 33
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 8
  br label %bb.o

_ZNK4llvm9StringRef4findEcm.exit.thread:          ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.cf, ptr %17, align 8, !tbaa !69, !alias.scope !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16, !noalias !263
  store i64 %i.bs, ptr %i.b, align 8, !tbaa !71, !noalias !263
  %i.cg = icmp ugt i64 %i.bs, 15
  br i1 %i.cg, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %_ZNK4llvm9StringRef4findEcm.exit.thread
  %i.ch = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #16 ; 2 uses
  store ptr %i.ch, ptr %17, align 8, !tbaa !32, !alias.scope !263
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !71, !noalias !263
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !22, !alias.scope !263
  br label %bb.n

._crit_edge.i.i.i:                                ; preds = %_ZNK4llvm9StringRef4findEcm.exit.thread
  %cond = icmp eq i64 %i.bs, 1
  br i1 %cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  %i.cj = load i8, ptr %i.br, align 1, !tbaa !22
  store i8 %i.cj, ptr %i.cf, align 8, !tbaa !22
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.n:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.ck = phi ptr [ %i.ch, %._crit_edge.i.i.i.thread ], [ %i.cf, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 1 %i.br, i64 %i.bs, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.m, %bb.n
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !71, !noalias !263 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !51, !alias.scope !263
  %i.cn = load ptr, ptr %17, align 8, !tbaa !32, !alias.scope !263
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16, !noalias !263
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 4, ptr %i.cp, align 8, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.cq, align 1, !tbaa !31
  store ptr %17, ptr %16, align 8, !tbaa !22
  call void @_ZN5clang6driver9ToolChain16addSystemIncludeERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(34) %16) #16
  %i.cr = load ptr, ptr %17, align 8, !tbaa !32   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.ct = load i64, ptr %i.cf, align 8, !tbaa !22
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.w

bb.o:                                             ; preds = %.preheader, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit68
  %.0106 = phi i64 [ %i.bx, %.preheader ], [ %.1.i.i64, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit68 ] ; 2 uses
  %.sroa.0.0105 = phi ptr [ %i.br, %.preheader ], [ %i.dc, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit68 ] ; 2 uses
  %.sroa.10.0104 = phi i64 [ %i.bs, %.preheader ], [ %i.dd, %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit68 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.10.0104, i64 %.0106) ; 5 uses
  store ptr %i.bz, ptr %18, align 8, !tbaa !47
  store i64 0, ptr %i.ca, align 8, !tbaa !49
  store i64 128, ptr %i.cb, align 8, !tbaa !50
  %i.cv = icmp ugt i64 %.sroa.speculated.i, 128
  br i1 %i.cv, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i56, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i52

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i56: ; preds = %bb.o
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %18, ptr noundef nonnull %i.bz, i64 noundef %.sroa.speculated.i, i64 noundef 1) #16
  %.pre8.pre.i.i.i57 = load i64, ptr %i.ca, align 8, !tbaa !49
  %.pre109 = load ptr, ptr %18, align 8, !tbaa !47
  br label %bb.p

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i52: ; preds = %bb.o
  %.not.i.i.i.i53 = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %.not.i.i.i.i53, label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit58, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i52, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i56
  %i.cw = phi ptr [ %.pre109, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i56 ], [ %i.bz, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i52 ]
  %.pre8.i.i4.i54 = phi i64 [ %.pre8.pre.i.i.i57, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.thread.i56 ], [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i52 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.pre8.i.i4.i54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %.sroa.0.0105, i64 %.sroa.speculated.i, i1 false)
  %.pre.i.i.i55 = load i64, ptr %i.ca, align 8, !tbaa !49
  %.pre110 = load ptr, ptr %18, align 8, !tbaa !47
  br label %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit58

_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit58: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i52, %bb.p
  %i.cy = phi ptr [ %i.bz, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i52 ], [ %.pre110, %bb.p ]
  %i.cz = phi i64 [ 0, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i52 ], [ %.pre.i.i.i55, %bb.p ]
  %i.da = add i64 %i.cz, %.sroa.speculated.i      ; 2 uses
  store i64 %i.da, ptr %i.ca, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i8 5, ptr %i.cc, align 8, !tbaa !28
  store i8 1, ptr %i.cd, align 1, !tbaa !31
  store ptr %i.cy, ptr %19, align 8, !tbaa !22
  store i64 %i.da, ptr %i.ce, align 8, !tbaa !22
  call void @_ZN5clang6driver9ToolChain16addSystemIncludeERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(34) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.db = add nuw i64 %.0106, 1
  %.sroa.speculated4.i = call i64 @llvm.umin.i64(i64 %.sroa.10.0104, i64 %i.db) ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 %.sroa.speculated4.i ; 5 uses
  %i.dd = sub i64 %.sroa.10.0104, %.sroa.speculated4.i ; 7 uses
  %.not103 = icmp eq i64 %i.dd, 0                 ; 2 uses
  br i1 %.not103, label %_ZNK4llvm9StringRef4findEcm.exit67, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i65

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i65:   ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit58
  %i.de = call ptr @memchr(ptr noundef %i.dc, i32 noundef 58, i64 noundef %i.dd) #16 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.de, null
  br i1 %.not.i.i66, label %_ZNK4llvm9StringRef4findEcm.exit67, label %bb.q

bb.q:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i65
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  br label %_ZNK4llvm9StringRef4findEcm.exit67

_ZNK4llvm9StringRef4findEcm.exit67:               ; preds = %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit58, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i65, %bb.q
  %.1.i.i64 = phi i64 [ -1, %_ZN4llvm11SmallStringILj128EEC2ENS_9StringRefE.exit58 ], [ %i.dh, %bb.q ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i65 ] ; 2 uses
  %i.di = load ptr, ptr %18, align 8, !tbaa !47   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bz
  br i1 %i.dj, label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit68, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm9StringRef4findEcm.exit67
  call void @free(ptr noundef %i.di) #16
  br label %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit68

_ZN4llvm11SmallVectorIcLj128EED2Ev.exit68:        ; preds = %_ZNK4llvm9StringRef4findEcm.exit67, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %.not35 = icmp eq i64 %.1.i.i64, -1
  br i1 %.not35, label %bb.s, label %bb.o, !llvm.loop !266

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIcLj128EED2Ev.exit68
  br i1 %.not103, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.dk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.dk, ptr %21, align 8, !tbaa !69, !alias.scope !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !267
  store i64 %i.dd, ptr %i.a, align 8, !tbaa !71, !noalias !267
  %i.dl = icmp ugt i64 %i.dd, 15
  br i1 %i.dl, label %._crit_edge.i.i.i70.thread, label %._crit_edge.i.i.i70

._crit_edge.i.i.i70.thread:                       ; preds = %bb.t
  %i.dm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.dm, ptr %21, align 8, !tbaa !32, !alias.scope !267
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !71, !noalias !267
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !22, !alias.scope !267
  br label %bb.v

._crit_edge.i.i.i70:                              ; preds = %bb.t
  %cond97 = icmp eq i64 %i.dd, 1
  br i1 %cond97, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i.i70
  %i.do = load i8, ptr %i.dc, align 1, !tbaa !22
  store i8 %i.do, ptr %i.dk, align 8, !tbaa !22
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit72

bb.v:                                             ; preds = %._crit_edge.i.i.i70.thread, %._crit_edge.i.i.i70
  %i.dp = phi ptr [ %i.dm, %._crit_edge.i.i.i70.thread ], [ %i.dk, %._crit_edge.i.i.i70 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr nonnull align 1 %i.dc, i64 %i.dd, i1 false)
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit72

_ZNK4llvm9StringRef3strB5cxx11Ev.exit72:          ; preds = %bb.v, %bb.u
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !71, !noalias !267 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !51, !alias.scope !267
  %i.ds = load ptr, ptr %21, align 8, !tbaa !32, !alias.scope !267
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 0, ptr %i.dt, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !267
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 4, ptr %i.du, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 1, ptr %i.dv, align 1, !tbaa !31
  store ptr %21, ptr %20, align 8, !tbaa !22
  call void @_ZN5clang6driver9ToolChain16addSystemIncludeERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(34) %20) #16
  %i.dw = load ptr, ptr %21, align 8, !tbaa !32   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dk
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit72
  %i.dy = load i64, ptr %i.dk, align 8, !tbaa !22
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %bb.w

.critedge38:                                      ; preds = %bb.l, %_ZN4llvm9StringRefC2EPKc.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.ea = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.eb, align 1, !tbaa !31
  store ptr @.str.42, ptr %22, align 8, !tbaa !22
  store i8 3, ptr %i.ea, align 8, !tbaa !28
  call void @_ZN5clang6driver9ToolChain16addSystemIncludeERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(34) %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %bb.s, %.critedge38
  %i.ec = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.h
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.w
  %i.ee = load i64, ptr %i.h, align 8, !tbaa !22
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  ret void
}

declare void @_ZN4llvm3sys4path6appendERNS_15SmallVectorImplIcEERKNS_5TwineES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #1

declare void @_ZN5clang6driver9ToolChain16addSystemIncludeERKN4llvm3opt7ArgListERNS2_11SmallVectorIPKcLj16EEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %2 = alloca [1 x %"class.llvm::opt::OptSpecifier"], align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !270
  store i32 %1, ptr %2, align 4, !noalias !270
  %i.a = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nonnull %2, i64 1) #16, !noalias !270 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.a, 32  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !270
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15, !noalias !270 ; 3 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = and i64 %i.a, 4294967295                 ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.c, i64 %.sroa.4.0.extract.shift.i ; 7 uses
  %.not29.i.i.i = icmp samesign eq i64 %i.e, %.sroa.4.0.extract.shift.i
  br i1 %.not29.i.i.i, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %.not26.i.i.i = icmp eq i32 %1, 0
  br i1 %.not26.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.preheader.i, %.thread25.i.i.i
  %.sroa.024.0.i = phi ptr [ %i.j, %.thread25.i.i.i ], [ %i.f, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.024.0.i, align 8, !tbaa !55, !noalias !270 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not14.i.i.i, label %.thread25.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 %1) #16, !noalias !270
  br i1 %i.i, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.thread25.i.i.i

.thread25.i.i.i:                                  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.g
  br i1 %.not.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i, !llvm.loop !57

_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit: ; preds = %bb.b, %bb.a
  %.sroa.024.1.i = phi ptr [ %i.f, %bb.a ], [ %.sroa.024.0.i, %bb.b ] ; 3 uses
  %.not36 = icmp eq ptr %.sroa.024.1.i, %i.g
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit
  %.not26.i.i = icmp eq i32 %1, 0
  br i1 %.not26.i.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.k = shl nuw nsw i64 %.sroa.4.0.extract.shift.i, 3
  %i.l = add i64 %i.k, %i.d
  %i.m = add i64 %i.l, -16
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit.us
  %.sroa.0.037.us = phi ptr [ %scevgep43, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit.us ], [ %.sroa.024.1.i, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.n = load ptr, ptr %.sroa.0.037.us, align 8, !tbaa !55 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !273  ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.p, null
  %spec.select.i.i.us = select i1 %.not.i.i.us, ptr %i.n, ptr %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %spec.select.i.i.us, i64 44 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4
  %i.s = or i8 %i.r, 1
  store i8 %i.s, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.037.us, i64 8
  %.not29.i.i.us = icmp eq ptr %i.t, %i.g
  br i1 %.not29.i.i.us, label %._crit_edge, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit.us

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.0.037.us42 = ptrtoaddr ptr %.sroa.0.037.us to i64
  %scevgep = getelementptr i8, ptr %.sroa.0.037.us, i64 16
  %i.u = sub i64 %i.m, %.sroa.0.037.us42
  %i.v = and i64 %i.u, -8
  %scevgep43 = getelementptr i8, ptr %scevgep, i64 %i.v ; 2 uses
  %.not.us = icmp eq ptr %scevgep43, %i.g
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %.thread25.i.i.i, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, %.lr.ph.split.us, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit.us, %.lr.ph.i.i.preheader.i, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit
  %.0.lcssa = phi ptr [ null, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ], [ %i.w, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ null, %.lr.ph.i.i.preheader.i ], [ %i.n, %.lr.ph.split.us ], [ %i.n, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit.us ], [ null, %.thread25.i.i.i ]
  ret ptr %.0.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit
  %.sroa.0.037 = phi ptr [ %.sroa.0.2, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ %.sroa.024.1.i, %.lr.ph ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.0.037, align 8, !tbaa !55 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !273  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  %spec.select.i.i = select i1 %.not.i.i, ptr %i.w, ptr %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 44 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = or i8 %i.aa, 1
  store i8 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.037, i64 8 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.ac, %i.g
  br i1 %.not29.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %.thread25.i.i
  %.sroa.0.1 = phi ptr [ %i.af, %.thread25.i.i ], [ %i.ac, %.lr.ph.split ] ; 3 uses
  %i.ad = load ptr, ptr %.sroa.0.1, align 8, !tbaa !55 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.ad, null
  br i1 %.not14.i.i, label %.thread25.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ae = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i32 %1) #16
  br i1 %i.ae, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.thread25.i.i

.thread25.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.af, %i.g
  br i1 %.not.i.i6, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i, !llvm.loop !57

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit: ; preds = %bb.c, %.thread25.i.i, %.lr.ph.split
  %.sroa.0.2 = phi ptr [ %i.ac, %.lr.ph.split ], [ %.sroa.0.1, %bb.c ], [ %i.af, %.thread25.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.2, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK5clang6driver10toolchains3ZOS21TryAddIncludeFromPathEN4llvm11SmallStringILj128EEERKNS3_3opt7ArgListERNS3_11SmallVectorIPKcLj16EEE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(144) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK5clang6driver9ToolChain6getVFSEv(ptr noundef nonnull align 8 dereferenceable(2568) %0) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 5, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.c, align 1, !tbaa !31
  %i.d = load ptr, ptr %1, align 8, !tbaa !47
  store ptr %i.d, ptr %4, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %i.k, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %2, i32 noundef 3616)
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit7, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #16
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor7warningERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr nonnull @.str.43, i64 5, i1 noundef zeroext false) #16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !289
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !293  ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 32
  br i1 %i.v, label %bb.d, label %bb.e
end_hunk_0
