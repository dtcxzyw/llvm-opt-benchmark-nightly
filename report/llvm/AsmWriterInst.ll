Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmWriterInst?download=true
inline.NumInlined: 538
inline.NumDeleted: 214
begin_hunk_0_@_ZNK4llvm16AsmWriterOperand7getCodeB5cxx11Eb:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_.exit
  %i.gr = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.gk, i64 noundef %i.gl) #15 ; 0 uses
  %i.gs = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gb
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32
  %i.gu = load i64, ptr %i.gb, align 8, !tbaa !21
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  %i.gw = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.fo
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.gy = load i64, ptr %i.fo, align 8, !tbaa !21
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit26
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %i.ha = load ptr, ptr %5, align 8, !tbaa !19, !noalias !94
  %i.hb = load i64, ptr %i.cl, align 8, !tbaa !18, !noalias !94 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.hc, ptr %0, align 8, !tbaa !20, !alias.scope !95
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.hd, align 8, !tbaa !18, !alias.scope !95
  store i8 0, ptr %i.hc, align 8, !tbaa !21, !alias.scope !95
  %i.he = add i64 %i.hb, 2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.he) #15
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !18, !alias.scope !95
  %i.hg = sub i64 4611686018427387903, %i.hf
  %i.hh = icmp ult i64 %i.hg, %i.hb
  br i1 %i.hh, label %bb.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i39

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i39: ; preds = %bb.am
  %i.hi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ha, i64 noundef %i.hb) #15 ; 0 uses
  %i.hj = load i64, ptr %i.hd, align 8, !tbaa !18, !alias.scope !95
  %i.hk = and i64 %i.hj, -2
  %i.hl = icmp eq i64 %i.hk, 4611686018427387902
  br i1 %i.hl, label %bb.ao, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit40

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i39
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #16
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i39
  %i.hm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 2) #15 ; 0 uses
  %i.hn = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ck
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit40
  %i.hp = load i64, ptr %i.ck, align 8, !tbaa !21
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13AsmWriterInstC2ERKNS_18CodeGenInstructionEjj(ptr noundef nonnull align 8 dereferenceable(36) initializes((0, 36)) %0, ptr noundef nonnull align 8 dereferenceable(220) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
.split:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %28 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %31 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 3 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %35 = alloca %"struct.llvm::CGIOperandList::OperandInfo", align 8 ; 15 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.h, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %2, ptr %i.i, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.073.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !30
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.274.0.copyload = load i64, ptr %.sroa.274.0..sroa_idx, align 8, !tbaa !22
  call void @_ZN4llvm18CodeGenInstruction24FlattenAsmStringVariantsB5cxx11ENS_9StringRefEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr %.sroa.073.0.copyload, i64 %.sroa.274.0.copyload, i32 noundef %3) #15
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %.not243 = icmp eq i64 %i.l, 0
  br i1 %.not243, label %._crit_edge, label %.lr.ph245

.lr.ph245:                                        ; preds = %.split
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %35, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %35, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %35, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %35, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %35, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %35, i64 136
  %i.an = getelementptr inbounds nuw i8, ptr %35, i64 152
  %i.ao = getelementptr inbounds nuw i8, ptr %35, i64 104 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %35, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %35, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %35, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 18
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 18
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.be = getelementptr inbounds nuw i8, ptr %17, i64 17
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 18
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 18
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 21
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph245, %.loopexit
  %.0244 = phi i64 [ 0, %.lr.ph245 ], [ %.3, %.loopexit ] ; 11 uses
  %i.bi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, i64 noundef %.0244, i64 noundef 2) #15 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  %i.bk = load i64, ptr %i.k, align 8             ; 10 uses
  %spec.select = select i1 %i.bj, i64 %i.bk, i64 %i.bi ; 3 uses
  %.not106 = icmp eq i64 %spec.select, %.0244
  br i1 %.not106, label %bb.d, label %.preheader221

.preheader221:                                    ; preds = %bb.a, %bb.c
  %.1240 = phi i64 [ %i.cj, %bb.c ], [ %.0244, %bb.a ] ; 2 uses
  %i.bl = load ptr, ptr %4, align 8, !tbaa !19
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.1240 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !21
  switch i8 %i.bn, label %bb.b [
    i8 10, label %._crit_edge.i.i
    i8 9, label %._crit_edge.i.i114
    i8 34, label %._crit_edge.i.i119
    i8 92, label %._crit_edge.i.i124
  ]

._crit_edge.i.i:                                  ; preds = %.preheader221
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.s, ptr %5, align 8, !tbaa !20
  store i16 28252, ptr %i.s, align 8
  store i64 2, ptr %i.t, align 8, !tbaa !18
  store i8 0, ptr %i.bd, align 2, !tbaa !21
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.bo = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.s
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.bq = load i64, ptr %i.s, align 8, !tbaa !21
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.c

._crit_edge.i.i114:                               ; preds = %.preheader221
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %i.q, ptr %6, align 8, !tbaa !20
  store i16 29788, ptr %i.q, align 8
  store i64 2, ptr %i.r, align 8, !tbaa !18
  store i8 0, ptr %i.bc, align 2, !tbaa !21
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.bs = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.q
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %._crit_edge.i.i114
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !21
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %._crit_edge.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.c

._crit_edge.i.i119:                               ; preds = %.preheader221
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr %i.o, ptr %7, align 8, !tbaa !20
  store i16 8796, ptr %i.o, align 8
  store i64 2, ptr %i.p, align 8, !tbaa !18
  store i8 0, ptr %i.bb, align 2, !tbaa !21
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.bw = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.o
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %._crit_edge.i.i119
  %i.by = load i64, ptr %i.o, align 8, !tbaa !21
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %._crit_edge.i.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.c

._crit_edge.i.i124:                               ; preds = %.preheader221
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %i.m, ptr %8, align 8, !tbaa !20
  store i16 23644, ptr %i.m, align 8
  store i64 2, ptr %i.n, align 8, !tbaa !18
  store i8 0, ptr %i.ba, align 2, !tbaa !21
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %i.ca = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.m
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %._crit_edge.i.i124
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !21
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %._crit_edge.i.i124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.c

bb.b:                                             ; preds = %.preheader221
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.ce = load i8, ptr %i.bm, align 1, !tbaa !21
  store ptr %i.u, ptr %9, align 8, !tbaa !20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1, i8 noundef signext %i.ce) #15
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
  %i.cf = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.u
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %bb.b
  %i.ch = load i64, ptr %i.u, align 8, !tbaa !21
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.cj = add i64 %.1240, 1                       ; 2 uses
  %.not113 = icmp eq i64 %i.cj, %spec.select
  br i1 %.not113, label %.loopexit, label %.preheader221, !llvm.loop !96

bb.d:                                             ; preds = %bb.a
  %i.ck = load ptr, ptr %4, align 8, !tbaa !19    ; 9 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.0244
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %i.cn = icmp eq i8 %i.cm, 92
  %i.co = add i64 %.0244, 1                       ; 9 uses
  %.not111 = icmp eq i64 %i.co, %i.bk             ; 2 uses
  br i1 %i.cn, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %.not111, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !21
  switch i8 %i.cq, label %._crit_edge.i.i142 [
    i8 110, label %._crit_edge.i.i132
    i8 116, label %._crit_edge.i.i137
  ]

._crit_edge.i.i132:                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  store ptr %i.av, ptr %10, align 8, !tbaa !20
  store i16 28252, ptr %i.av, align 8
  store i64 2, ptr %i.aw, align 8, !tbaa !18
  store i8 0, ptr %i.bg, align 2, !tbaa !21
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.cr = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.av
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %._crit_edge.i.i132
  %i.ct = load i64, ptr %i.av, align 8, !tbaa !21
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %._crit_edge.i.i132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.i

._crit_edge.i.i137:                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr %i.at, ptr %11, align 8, !tbaa !20
  store i16 29788, ptr %i.at, align 8
  store i64 2, ptr %i.au, align 8, !tbaa !18
  store i8 0, ptr %i.bf, align 2, !tbaa !21
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %11)
  %i.cv = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.at
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %._crit_edge.i.i137
  %i.cx = load i64, ptr %i.at, align 8, !tbaa !21
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %._crit_edge.i.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.i

._crit_edge.i.i142:                               ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  store ptr %i.ax, ptr %12, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ax, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, i64 5, i1 false)
  store i64 5, ptr %i.ay, align 8, !tbaa !18
  store i8 0, ptr %i.bh, align 1, !tbaa !21
  %i.cz = load i8, ptr %i.cp, align 1, !tbaa !21
  %i.da = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 noundef signext %i.cz, i64 noundef 0) #15
  %.not112 = icmp eq i64 %i.da, -1
  %i.db = load ptr, ptr %12, align 8, !tbaa !19   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.ax
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

end_hunk_0
begin_hunk_1_@_ZN4llvm13AsmWriterInstC2ERKNS_18CodeGenInstructionEjj:.split
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.dy = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.dz, align 1, !tbaa !34
  store ptr @.str.18, ptr %16, align 8, !tbaa !21
  store i8 3, ptr %i.dy, align 8, !tbaa !33
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %14, ptr noundef nonnull align 8 dereferenceable(34) %15, ptr noundef nonnull align 8 dereferenceable(34) %16)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.do, i64 %i.dr, ptr noundef nonnull align 8 dereferenceable(34) %14) #16
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.ea = add i64 %.0244, 2
  br label %.loopexit, !llvm.loop !99

bb.j:                                             ; preds = %bb.d
  br i1 %.not111, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !21
  %i.ed = icmp eq i8 %i.ec, 36
  br i1 %i.ed, label %._crit_edge.i.i150, label %bb.l

._crit_edge.i.i150:                               ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  store ptr %i.v, ptr %17, align 8, !tbaa !20
  store i8 36, ptr %i.v, align 8, !tbaa !21
  store i64 1, ptr %i.w, align 8, !tbaa !18
  store i8 0, ptr %i.be, align 1, !tbaa !21
  call void @_ZN4llvm13AsmWriterInst16AddLiteralStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %17)
  %i.ee = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.v
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %._crit_edge.i.i150
  %i.eg = load i64, ptr %i.v, align 8, !tbaa !21
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %._crit_edge.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  %i.ei = add i64 %.0244, 2
  br label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ej = icmp ult i64 %i.co, %i.bk
  br i1 %i.ej, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.co
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !21
  %i.em = icmp eq i8 %i.el, 123
  br i1 %i.em, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.en = add i64 %.0244, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.099 = phi i1 [ true, %bb.n ], [ false, %bb.m ], [ false, %bb.l ] ; 2 uses
  %.095 = phi i64 [ %i.en, %bb.n ], [ %i.co, %bb.m ], [ %i.co, %bb.l ] ; 3 uses
  %.194 = phi i64 [ %i.co, %bb.n ], [ %.0244, %bb.m ], [ %.0244, %bb.l ] ; 2 uses
  %i.eo = icmp ult i64 %.095, %i.bk
  br i1 %i.eo, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.196241 = phi i64 [ %i.ez, %bb.p ], [ %.095, %bb.o ] ; 8 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.196241
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !21  ; 3 uses
  %i.er = and i8 %i.eq, -33
  %i.es = add i8 %i.er, -65
  %i.et = icmp ult i8 %i.es, 26
  %i.eu = add i8 %i.eq, -48
  %i.ev = icmp ult i8 %i.eu, 10
  %i.ew = or i1 %i.ev, %i.et
  %i.ex = icmp eq i8 %i.eq, 95
  %i.ey = or i1 %i.ex, %i.ew
  br i1 %i.ey, label %bb.p, label %.critedge

bb.p:                                             ; preds = %.lr.ph
  %i.ez = add i64 %.196241, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ez, %i.bk
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !100

.critedge:                                        ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store ptr %i.x, ptr %18, align 8, !tbaa !20
  store i64 0, ptr %i.y, align 8, !tbaa !18
  store i8 0, ptr %i.x, align 8, !tbaa !21
  br i1 %.099, label %bb.r, label %bb.ah

.critedge.thread:                                 ; preds = %bb.p, %bb.o
  %.196.lcssa = phi i64 [ %.095, %bb.o ], [ %i.bk, %bb.p ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store ptr %i.x, ptr %18, align 8, !tbaa !20
  store i64 0, ptr %i.y, align 8, !tbaa !18
  store i8 0, ptr %i.x, align 8, !tbaa !21
  br i1 %.099, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %.critedge.thread
  %i.fa = load ptr, ptr %1, align 8, !tbaa !141   ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !143
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !144
  %i.ff = zext i32 %i.fe to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !180 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %.sroa.0.0.copyload.i.i.i157 = load ptr, ptr %i.fh, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i.i158 = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %.sroa.2.0.copyload.i.i.i159 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i158, align 8, !tbaa !22
  %i.fi = getelementptr inbounds nuw i8, ptr %20, i64 32
  store i8 3, ptr %i.fi, align 8, !tbaa !33, !alias.scope !182
  %i.fj = getelementptr inbounds nuw i8, ptr %20, i64 33
  store i8 5, ptr %i.fj, align 1, !tbaa !34, !alias.scope !182
  store ptr @.str.20, ptr %20, align 8, !tbaa !21, !alias.scope !182
  %i.fk = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i157, ptr %i.fk, align 8, !tbaa !21, !alias.scope !182
  %i.fl = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i159, ptr %i.fl, align 8, !tbaa !21, !alias.scope !182
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.fm = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 33
  store i8 1, ptr %i.fn, align 1, !tbaa !34
  store ptr @.str.21, ptr %21, align 8, !tbaa !21
  store i8 3, ptr %i.fm, align 8, !tbaa !33
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %19, ptr noundef nonnull align 8 dereferenceable(34) %20, ptr noundef nonnull align 8 dereferenceable(34) %21)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.fc, i64 %i.ff, ptr noundef nonnull align 8 dereferenceable(34) %19) #16
  unreachable

bb.r:                                             ; preds = %.critedge
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.196241
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !21  ; 2 uses
  %i.fq = icmp ne i8 %i.fp, 58                    ; 2 uses
  br i1 %i.fq, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fr = add nuw i64 %.196241, 1                 ; 4 uses
  %.not109 = icmp ult i64 %i.fr, %i.bk
  br i1 %.not109, label %.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = load ptr, ptr %1, align 8, !tbaa !141   ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !143
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !144
  %i.fx = zext i32 %i.fw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !180 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %.sroa.0.0.copyload.i.i.i164 = load ptr, ptr %i.fz, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %.sroa.2.0.copyload.i.i.i166 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i165, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i8 3, ptr %i.ga, align 8, !tbaa !33, !alias.scope !183
  %i.gb = getelementptr inbounds nuw i8, ptr %23, i64 33
  store i8 5, ptr %i.gb, align 1, !tbaa !34, !alias.scope !183
  store ptr @.str.20, ptr %23, align 8, !tbaa !21, !alias.scope !183
  %i.gc = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i164, ptr %i.gc, align 8, !tbaa !21, !alias.scope !183
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i166, ptr %i.gd, align 8, !tbaa !21, !alias.scope !183
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.ge = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %24, i64 33
  store i8 1, ptr %i.gf, align 1, !tbaa !34
  store ptr @.str.21, ptr %24, align 8, !tbaa !21
  store i8 3, ptr %i.ge, align 8, !tbaa !33
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %22, ptr noundef nonnull align 8 dereferenceable(34) %23, ptr noundef nonnull align 8 dereferenceable(34) %24)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.fu, i64 %i.fx, ptr noundef nonnull align 8 dereferenceable(34) %22) #16
  unreachable

.preheader:                                       ; preds = %bb.s, %bb.u
  %.297242 = phi i64 [ %i.gq, %bb.u ], [ %i.fr, %bb.s ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.297242
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !21  ; 3 uses
  %i.gi = and i8 %i.gh, -33
  %i.gj = add i8 %i.gi, -65
  %i.gk = icmp ult i8 %i.gj, 26
  %i.gl = add i8 %i.gh, -48
  %i.gm = icmp ult i8 %i.gl, 10
  %i.gn = or i1 %i.gm, %i.gk
  %i.go = icmp eq i8 %i.gh, 95
  %i.gp = or i1 %i.go, %i.gn
  br i1 %i.gp, label %bb.u, label %.critedge2

bb.u:                                             ; preds = %.preheader
  %i.gq = add i64 %.297242, 1                     ; 2 uses
  %exitcond249.not = icmp eq i64 %i.gq, %i.bk
  br i1 %exitcond249.not, label %.critedge2, label %.preheader, !llvm.loop !105

.critedge2:                                       ; preds = %bb.u, %.preheader
  %.297.lcssa = phi i64 [ %i.bk, %bb.u ], [ %.297242, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  store ptr %i.z, ptr %25, align 8, !tbaa !20, !alias.scope !184
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.fr ; 2 uses
  %37 = call i64 @llvm.umin.i64(i64 %.297.lcssa, i64 %i.bk)
  %spec.select.i.i.i = sub nuw i64 %37, %i.fr     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !184
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !22, !noalias !184
  %i.gs = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.gs, label %bb.v, label %._crit_edge.i.i.i

bb.v:                                             ; preds = %.critedge2
  %i.gt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #15 ; 2 uses
  store ptr %i.gt, ptr %25, align 8, !tbaa !19, !alias.scope !184
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !22, !noalias !184
  store i64 %i.gu, ptr %i.z, align 8, !tbaa !21, !alias.scope !184
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.v, %.critedge2
  %i.gv = phi ptr [ %i.gt, %bb.v ], [ %i.z, %.critedge2 ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.gw = load i8, ptr %i.gr, align 1, !tbaa !21
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.x:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gv, ptr nonnull align 1 %i.gr, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.w, %bb.x
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !22, !noalias !184 ; 2 uses
  store i64 %i.gx, ptr %i.aa, align 8, !tbaa !18, !alias.scope !184
  %i.gy = load ptr, ptr %25, align 8, !tbaa !19, !alias.scope !184
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gx
  store i8 0, ptr %i.gz, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !184
  %i.ha = load ptr, ptr %18, align 8, !tbaa !19   ; 6 uses
  %i.hb = icmp eq ptr %i.ha, %i.x
  %i.hc = load ptr, ptr %25, align 8, !tbaa !19   ; 5 uses
  %i.hd = icmp eq ptr %i.hc, %i.z                 ; 2 uses
  br i1 %i.hb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.hd, label %bb.y, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  br i1 %i.hd, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.he = load i64, ptr %i.aa, align 8, !tbaa !18 ; 3 uses
  %i.hf = icmp ult i64 %i.he, 16
  call void @llvm.assume(i1 %i.hf)
  switch i64 %i.he, label %bb.aa [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.hg = load i8, ptr %i.hc, align 1, !tbaa !21
  store i8 %i.hg, ptr %i.ha, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %i.hc, i64 %i.he, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aa, %bb.z, %bb.y
  %i.hh = load i64, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  store i64 %i.hh, ptr %i.y, align 8, !tbaa !18
  %i.hi = load ptr, ptr %18, align 8, !tbaa !19
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hh
  store i8 0, ptr %i.hj, align 1, !tbaa !21
  %.pre.i = load ptr, ptr %25, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.hc, ptr %18, align 8, !tbaa !19
  %i.hk = load <2 x i64>, ptr %i.aa, align 8, !tbaa !21
  store <2 x i64> %i.hk, ptr %i.y, align 8, !tbaa !21
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hl = load i64, ptr %i.x, align 8, !tbaa !21
  store ptr %i.hc, ptr %18, align 8, !tbaa !19
  %i.hm = load <2 x i64>, ptr %i.aa, align 8, !tbaa !21
  store <2 x i64> %i.hm, ptr %i.y, align 8, !tbaa !21
  %.not.i = icmp eq ptr %i.ha, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ha, ptr %25, align 8, !tbaa !19
  store i64 %i.hl, ptr %i.z, align 8, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.z, ptr %25, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ab, %bb.ac
  %i.hn = phi ptr [ %i.ha, %bb.ab ], [ %i.z, %bb.ac ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.aa, align 8, !tbaa !18
  store i8 0, ptr %i.hn, align 1, !tbaa !21
  %i.ho = load ptr, ptr %25, align 8, !tbaa !19   ; 2 uses
  %i.hp = icmp eq ptr %i.ho, %i.z
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hq = load i64, ptr %i.z, align 8, !tbaa !21
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.hs = load i64, ptr %i.y, align 8, !tbaa !18
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %.pre = load ptr, ptr %4, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 %.297.lcssa
  %.pre250 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !21
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.hu = load ptr, ptr %1, align 8, !tbaa !141   ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !143
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !144
  %i.hz = zext i32 %i.hy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.ia = load ptr, ptr %i.hu, align 8, !tbaa !180 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %.sroa.0.0.copyload.i.i.i174 = load ptr, ptr %i.ib, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i.i175 = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %.sroa.2.0.copyload.i.i.i176 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i175, align 8, !tbaa !22
  %i.ic = getelementptr inbounds nuw i8, ptr %27, i64 32
  store i8 3, ptr %i.ic, align 8, !tbaa !33, !alias.scope !185
  %i.id = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 5, ptr %i.id, align 1, !tbaa !34, !alias.scope !185
  store ptr @.str.22, ptr %27, align 8, !tbaa !21, !alias.scope !185
  %i.ie = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i174, ptr %i.ie, align 8, !tbaa !21, !alias.scope !185
  %i.if = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i176, ptr %i.if, align 8, !tbaa !21, !alias.scope !185
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.ig = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %28, i64 33
  store i8 1, ptr %i.ih, align 1, !tbaa !34
  store ptr @.str.21, ptr %28, align 8, !tbaa !21
  store i8 3, ptr %i.ig, align 8, !tbaa !33
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %26, ptr noundef nonnull align 8 dereferenceable(34) %27, ptr noundef nonnull align 8 dereferenceable(34) %28)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.hw, i64 %i.hz, ptr noundef nonnull align 8 dereferenceable(34) %26) #16
  unreachable

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge, %bb.r
  %i.ii = phi i8 [ %i.fp, %bb.r ], [ %.pre250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge ]
  %.398 = phi i64 [ %.196241, %bb.r ], [ %.297.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171._crit_edge ]
  %.not110 = icmp eq i8 %i.ii, 125
  br i1 %.not110, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ij = load ptr, ptr %1, align 8, !tbaa !141   ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !143
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.in = load i32, ptr %i.im, align 8, !tbaa !144
  %i.io = zext i32 %i.in to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  %i.ip = load ptr, ptr %i.ij, align 8, !tbaa !180 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24
  %.sroa.0.0.copyload.i.i.i181 = load ptr, ptr %i.iq, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i.i182 = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %.sroa.2.0.copyload.i.i.i183 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i182, align 8, !tbaa !22
  %i.ir = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i8 3, ptr %i.ir, align 8, !tbaa !33, !alias.scope !186
  %i.is = getelementptr inbounds nuw i8, ptr %30, i64 33
  store i8 5, ptr %i.is, align 1, !tbaa !34, !alias.scope !186
  store ptr @.str.23, ptr %30, align 8, !tbaa !21, !alias.scope !186
  %i.it = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i181, ptr %i.it, align 8, !tbaa !21, !alias.scope !186
  %i.iu = getelementptr inbounds nuw i8, ptr %30, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i183, ptr %i.iu, align 8, !tbaa !21, !alias.scope !186
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  %i.iv = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.iw = getelementptr inbounds nuw i8, ptr %31, i64 33
  store i8 1, ptr %i.iw, align 1, !tbaa !34
  store ptr @.str.21, ptr %31, align 8, !tbaa !21
  store i8 3, ptr %i.iv, align 8, !tbaa !33
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %29, ptr noundef nonnull align 8 dereferenceable(34) %30, ptr noundef nonnull align 8 dereferenceable(34) %31)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.il, i64 %i.io, ptr noundef nonnull align 8 dereferenceable(34) %29) #16
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ix = add i64 %.398, 1
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.thread, %bb.ag, %.critedge
  %i.iy = phi i1 [ %i.fq, %bb.ag ], [ true, %.critedge ], [ true, %.critedge.thread ]
  %.196223 = phi i64 [ %.196241, %bb.ag ], [ %.196241, %.critedge ], [ %.196.lcssa, %.critedge.thread ]
  %.4 = phi i64 [ %i.ix, %bb.ag ], [ %.196241, %.critedge ], [ %.196.lcssa, %.critedge.thread ]
  %.pn = xor i64 %.194, -1
  %i.iz = add i64 %.196223, %.pn                  ; 2 uses
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.iy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.jb = load ptr, ptr %1, align 8, !tbaa !141   ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !143
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !144
  %i.jg = zext i32 %i.jf to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  %i.jh = load ptr, ptr %i.jb, align 8, !tbaa !180 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %.sroa.0.0.copyload.i.i.i188 = load ptr, ptr %i.ji, align 8, !tbaa !30
  %.sroa.2.0..sroa_idx.i.i.i189 = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %.sroa.2.0.copyload.i.i.i190 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i189, align 8, !tbaa !22
  %i.jj = getelementptr inbounds nuw i8, ptr %33, i64 32
end_hunk_1
