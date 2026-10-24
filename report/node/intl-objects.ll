Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/intl-objects?download=true
inline.NumInlined: 4175
inline.NumDeleted: 1528
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 65
loop-unroll.NumUnrolledNotLatch: 5
begin_hunk_0_@_ZN2v88internal4Intl38ValidateAndCanonicalizeUnicodeLocaleIdB5cxx11EPNS0_7IsolateESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.a = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.icu_78::Locale", align 8    ; 9 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %11 = alloca %"class.icu_78::Locale", align 8   ; 5 uses
  %12 = alloca %"class.icu_78::LocaleBuilder", align 8 ; 5 uses
  %13 = alloca %"class.v8::Maybe", align 8        ; 11 uses
  %i.b = tail call noundef zeroext i1 @_ZN2v88internal8JSLocale27StartsWithUnicodeLanguageIdESt17basic_string_viewIcSt11char_traitsIcEE(i64 %2, ptr %3) #25
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %3, i64 %2, i8 noundef zeroext 0) #25 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.138) #27
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedESt17basic_string_viewIcSt11char_traitsIcEENS0_14AllocationTypeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %i.c, ptr %7, align 8
  %i.e = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 248, ptr nonnull %7, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.f = load i64, ptr %i.e, align 8
  %i.g = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.f, ptr noundef null) #25 ; 0 uses
  store i8 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.k, ptr %8, align 8
  %i.l = icmp eq ptr %3, null
  %i.m = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.m, %i.l
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.118) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ugt i64 %2, 15
  br i1 %i.n, label %bb.g, label %._crit_edge.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.o = icmp slt i64 %2, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.p = add nuw i64 %2, 1                        ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !24

bb.j:                                             ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.i
  %i.r = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29 ; 2 uses
  store ptr %i.r, ptr %8, align 8
  store i64 %2, ptr %i.k, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.f
  %i.s = phi ptr [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.k, %bb.f ] ; 3 uses
  switch i64 %2, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.t = load i8, ptr %3, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %3, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.k, %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %2, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %2
  store i8 0, ptr %i.v, align 1
  %i.w = load ptr, ptr %8, align 8                ; 21 uses
  %i.x = load i64, ptr %i.u, align 8              ; 12 uses
  switch i64 %i.x, label %iter.check [
    i64 2, label %bb.m
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 0, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit
  ]

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.y = load i8, ptr %i.w, align 1
  %i.z = add i8 %i.y, -97
  %i.aa = icmp ult i8 %i.z, 26
  br i1 %i.aa, label %_ZN2v88internal12_GLOBAL__N_119IsTwoLetterLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %iter.check

_ZN2v88internal12_GLOBAL__N_119IsTwoLetterLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = add i8 %i.ac, -97
  %i.ae = icmp ult i8 %i.ad, 26
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, label %iter.check

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_119IsTwoLetterLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.af = load i16, ptr %i.w, align 1
  %i.ag = icmp ne i16 %i.af, 28265
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %iter.check, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i23.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i23.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.aj = load i16, ptr %i.w, align 1
  %i.ak = icmp ne i16 %i.aj, 30569
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %iter.check, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i23.i
  %i.an = load i16, ptr %i.w, align 1
  %i.ao = icmp ne i16 %i.an, 26986
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %iter.check, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i
  %i.ar = load i16, ptr %i.w, align 1
  %i.as = icmp ne i16 %i.ar, 30570
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %iter.check, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31.i
  %i.av = load i16, ptr %i.w, align 1
  %i.aw = icmp ne i16 %i.av, 28525
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %iter.check, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35.i
  %i.az = load i16, ptr %i.w, align 1
  %i.ba = icmp ne i16 %i.az, 26739
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %iter.check, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39.i
  %i.bd = load i16, ptr %i.w, align 1
  %i.be = icmp ne i16 %i.bd, 27764
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %iter.check, label %_ZN2v88internal12_GLOBAL__N_128IsDeprecatedOrLegacyLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN2v88internal12_GLOBAL__N_128IsDeprecatedOrLegacyLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43.i
  %i.bh = load i16, ptr %i.w, align 1
  %i.bi = icmp ne i16 %i.bh, 28526
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %iter.check, label %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.bl = load i16, ptr %i.w, align 1
  %i.bm = xor i16 %i.bl, 26982
  %i.bn = getelementptr i8, ptr %i.w, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = zext i8 %i.bo to i16
  %i.bq = xor i16 %i.bp, 108
  %i.br = or i16 %i.bm, %i.bq
  %i.bs = icmp ne i16 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit, label %iter.check

_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN2v88internal12_GLOBAL__N_128IsDeprecatedOrLegacyLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit
  store i8 1, ptr %0, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 1 %i.w, i64 %i.x, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.by, align 8, !alias.scope !213
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.x
  store i8 0, ptr %i.bz, align 1
  br label %bb.y

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i23.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i27.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i35.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i39.i, %bb.m, %_ZN2v88internal12_GLOBAL__N_128IsDeprecatedOrLegacyLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN2v88internal12_GLOBAL__N_119IsTwoLetterLanguageESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  %min.iters.check = icmp ult i64 %i.x, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check87 = icmp ult i64 %i.x, 32
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cb = and i64 %i.x, 24
  %n.vec = and i64 %i.x, -32                      ; 4 uses
  %i.cc = getelementptr i8, ptr %i.w, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %index ; 3 uses
  %next.gep.a = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 2 uses
  %wide.load.a = load <16 x i8>, ptr %next.gep.a, align 1 ; 2 uses
  %14 = add <16 x i8> %wide.load, splat (i8 -65)
  %15 = add <16 x i8> %wide.load.a, splat (i8 -65)
  %16 = icmp ult <16 x i8> %14, splat (i8 26)
  %i.cd = icmp ult <16 x i8> %15, splat (i8 26)
  %17 = select <16 x i1> %16, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.ce = select <16 x i1> %i.cd, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %18 = or <16 x i8> %17, %wide.load
  %i.cf = or <16 x i8> %i.ce, %wide.load.a
  store <16 x i8> %18, ptr %next.gep, align 1
  store <16 x i8> %i.cf, ptr %next.gep.a, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !210

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !31

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec88 = and i64 %i.x, -8                     ; 3 uses
  %i.ch = getelementptr i8, ptr %i.w, i64 %n.vec88
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.w, i64 %index89 ; 2 uses
  %wide.load92 = load <8 x i8>, ptr %next.gep90, align 1 ; 2 uses
  %19 = add <8 x i8> %wide.load92, splat (i8 -65)
  %20 = icmp ult <8 x i8> %19, splat (i8 26)
  %21 = select <8 x i1> %20, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %22 = or <8 x i8> %21, %wide.load92
  store <8 x i8> %22, ptr %next.gep90, align 1
  %index.next92 = add nuw i64 %index89, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next92, %n.vec88
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !211

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n93 = icmp eq i64 %i.x, %n.vec88
  br i1 %cmp.n93, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.07.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.ch, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.cn, %.lr.ph.i ], [ %.sroa.0.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cj = load i8, ptr %.sroa.0.07.i, align 1     ; 2 uses
  %23 = add i8 %i.cj, -65
  %i.ck = icmp ult i8 %23, 26
  %i.cl = select i1 %i.ck, i8 32, i8 0
  %i.cm = or i8 %i.cl, %i.cj
  store i8 %i.cm, ptr %.sroa.0.07.i, align 1
  %i.cn = getelementptr i8, ptr %.sroa.0.07.i, i64 1 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ca
  br i1 %i.co, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !212

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit.loopexit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %8, align 8
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit.loopexit
  %i.cp = phi ptr [ %.pre, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit.loopexit ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef %i.cp) #25
  %i.cq = load ptr, ptr %10, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cs = load i32, ptr %i.cr, align 8
  call void @_ZN6icu_786Locale14forLanguageTagENS_11StringPieceER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %9, ptr %i.cq, i32 %i.cs, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  %i.ct = load i32, ptr %i.a, align 4
  %i.cu = icmp slt i32 %i.ct, 1
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 8
  %.not = icmp eq i8 %i.cw, 0
  br i1 %.not, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFjjEET0_T_SD_SC_T1_.exit, %bb.n
  %i.cx = load ptr, ptr %8, align 8               ; 2 uses
  %i.cy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cx) #26
  %i.cz = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.cx, i64 %i.cy, i8 noundef zeroext 0) #25 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.p, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit, !prof !24

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.138) #27
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %i.cz, ptr %6, align 8
  %i.db = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 248, ptr nonnull %6, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.dc, ptr noundef null) #25 ; 0 uses
  store i8 0, ptr %0, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.df, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dg, align 8
  store i8 0, ptr %i.df, align 8
  br label %bb.x

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @_ZN6icu_7813LocaleBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #25
  %i.dh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder9setLocaleERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(40) %9) #25
  call void @_ZN6icu_7813LocaleBuilder5buildER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.dh, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  %i.di = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %11) #25 ; 0 uses
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #25
  call void @_ZN6icu_7813LocaleBuilderD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN6icu_786Locale12canonicalizeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  %i.dj = load i32, ptr %i.a, align 4
  %i.dk = icmp sgt i32 %i.dj, 0
  %i.dl = load i8, ptr %i.cv, align 8
  %.not70 = icmp eq i8 %i.dl, 0
  %or.cond = select i1 %i.dk, i1 true, i1 %.not70
  br i1 %or.cond, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dm = load ptr, ptr %8, align 8               ; 2 uses
  %i.dn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dm) #26
  %i.do = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr nonnull %i.dm, i64 %i.dn, i8 noundef zeroext 0) #25 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.s, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit49, !prof !24

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.138) #27
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit49: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.do, ptr %5, align 8
  %i.dq = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 248, ptr nonnull %5, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.dr, ptr noundef null) #25 ; 0 uses
  store i8 0, ptr %0, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dv, align 8
  store i8 0, ptr %i.du, align 8
  br label %bb.x

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZN2v88internal4Intl13ToLanguageTagB5cxx11ERKN6icu_786LocaleE(ptr dead_on_unwind nonnull writable sret(%"class.v8::Maybe") align 8 %13, ptr noundef nonnull align 8 dereferenceable(40) %9)
  %i.dw = load i8, ptr %13, align 8, !range !22, !noundef !23
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %0, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ea, ptr %i.dy, align 8
  %i.eb = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ef = load i64, ptr %i.ee, align 8            ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eg)
  %i.eh = add nuw nsw i64 %i.ef, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(1) %i.ec, i64 %i.eh, i1 false)
  br label %.thread85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  store ptr %i.eb, ptr %i.dy, align 8
  %i.ei = load i64, ptr %i.ec, align 8
  store i64 %i.ei, ptr %i.ea, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.pre71 = load i64, ptr %.phi.trans.insert, align 8
  br label %.thread85

.thread85:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v
  %i.ej = phi i64 [ %i.ef, %bb.v ], [ %.pre71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ej, ptr %i.el, align 8
  store ptr %i.ec, ptr %i.dz, align 8
  store i64 0, ptr %i.ek, align 8
  br label %_ZN2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.w:                                             ; preds = %bb.t
  %i.em = load ptr, ptr %8, align 8
  %i.en = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %i.em, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.en, ptr %4, align 8
  %i.eo = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 248, ptr nonnull %4, i64 1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.ep, ptr noundef null) #25 ; 0 uses
  store i8 0, ptr %0, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.es, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.et, align 8
  store i8 0, ptr %i.es, align 8
  %.phi.trans.insert72 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre73 = load ptr, ptr %.phi.trans.insert72, align 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ev = icmp eq ptr %.pre73, %i.eu
  br i1 %i.ev, label %_ZN2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.ew = load i64, ptr %i.eu, align 8
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %.pre73, i64 noundef %i.ex) #28
  br label %_ZN2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.w, %.thread85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v85MaybeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit49, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.pre74 = load ptr, ptr %8, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit
  %i.ey = phi ptr [ %.pre74, %bb.x ], [ %i.w, %_ZN2v84JustINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_5MaybeIT_EERKS8_.exit ] ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.k
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.y
  %i.fa = load i64, ptr %i.k, align 8
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
end_hunk_0
