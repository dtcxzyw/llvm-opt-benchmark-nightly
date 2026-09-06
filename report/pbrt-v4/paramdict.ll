Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/paramdict?download=true
inline.NumInlined: 2392
inline.NumDeleted: 900
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNK4pbrt19ParameterDictionary12lookupSingleILNS_13ParameterTypeE7EEENS_19ParameterTypeTraitsIXT_EE10ReturnTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_:bb.a
_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread32, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.g
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.a, %bb.f
  %spec.select30 = phi float [ %i.an, %bb.f ], [ %3, %bb.a ], [ %3, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %spec.select = phi <2 x float> [ %i.al, %bb.f ], [ %2, %bb.a ], [ %2, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %spec.select, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %spec.select30, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt19ParameterDictionary14GetOneSpectrumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8SpectrumENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pbrt::Spectrum") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %3, i32 noundef %4, ptr %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = select i1 %.not.i, ptr %i.c, ptr %i.b    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not37 = icmp eq i64 %i.f, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread26
  %.038 = phi ptr [ %i.d, %.lr.ph ], [ %i.aj, %.thread26 ] ; 2 uses
  %i.k = load ptr, ptr %.038, align 8, !tbaa !35  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %i.o = load i64, ptr %i.h, align 8, !tbaa !41
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %.thread26

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !43
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !43
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.s, ptr %i.r, i64 %i.n)
  %.not34 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not34, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21, label %.thread26

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZNK4pbrt19ParameterDictionary20extractSpectrumArrayERKNS_15ParsedParameterENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(233) %i.k, i32 noundef %4, ptr %5)
  %i.t = load ptr, ptr %6, align 8, !tbaa !88     ; 9 uses
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !88   ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 8
  br i1 %i.z, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ae) #29
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit

_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit:   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %i.ab

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21
  %.not.i.i.i19 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i19, label %.thread26.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.t to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ai) #29
  br label %.thread26.sink.split

.thread26.sink.split:                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.thread26

.thread26:                                        ; preds = %.thread26.sink.split, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.038, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

bb.k:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !92
  store i64 %i.ak, ptr %0, align 8, !tbaa !92
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.an) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.l

._crit_edge:                                      ; preds = %.thread26, %bb.a
  %i.ao = load i64, ptr %3, align 8, !tbaa !92
  store i64 %i.ao, ptr %0, align 8, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt19ParameterDictionary20extractSpectrumArrayERKNS_15ParsedParameterENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(233) %2, i32 noundef %3, ptr %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.pstd::optional.117", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.pbrt::Spectrum", align 8    ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.pstd::pmr::polymorphic_allocator.11", align 8 ; 7 uses
  %11 = alloca %class.anon.67, align 8            ; 5 uses
  %12 = alloca %class.anon.68, align 8            ; 5 uses
  store ptr %4, ptr %10, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41   ; 3 uses
  %i.h = icmp eq i64 %i.g, 3
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread90

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.j = load i16, ptr %i.i, align 1
  %i.k = xor i16 %i.j, 26482
  %i.l = getelementptr i8, ptr %i.i, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i16
  %i.o = xor i16 %i.n, 98
  %i.p = or i16 %i.k, %i.o
  %i.q = icmp ne i16 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread90: ; preds = %bb.a
  %i.t = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !204
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 85
  %i.v = load i8, ptr %i.u, align 1, !tbaa !213, !range !93, !noundef !94
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = icmp eq i64 %i.g, 5
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread91

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread90
  %i.y = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = xor i32 %i.z, 1869377379
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = xor i32 %i.ad, 114
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 3, ptr %i.e, align 4, !tbaa !86, !noalias !214
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !54, !noalias !214 ; 4 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %i.an) #27, !noalias !214
  unreachable

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ao = urem i64 %i.ak, 3
  %i.ap = udiv exact i64 %i.ak, 3                 ; 3 uses
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.aq, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.e) #27, !noalias !214
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i8 1, ptr %i.as, align 8, !tbaa !71, !noalias !214
  %i.at = icmp ugt i64 %i.ak, 3458764513820540925
  br i1 %i.at, label %.noexc.i, label %.lr.ph.i

.noexc.i:                                         ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27, !noalias !214
  unreachable

.lr.ph.i:                                         ; preds = %bb.e
  %i.au = shl nuw nsw i64 %i.ap, 3                ; 4 uses
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #31, !noalias !214 ; 6 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !215, !alias.scope !214
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ap
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.av, i8 0, i64 %i.au, i1 false), !tbaa !92, !noalias !214
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.av, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !90, !alias.scope !214
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.ax, align 8, !tbaa !216, !alias.scope !214
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.f

bb.f:                                             ; preds = %bb.o, %.lr.ph.i
  %.040.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cn, %bb.o ] ; 3 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !72, !noalias !214
  %.idx.i = mul nuw i64 %.040.i, 12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i ; 2 uses
  %i.be = load <2 x float>, ptr %i.bd, align 4, !tbaa !74, !noalias !217 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !74, !noalias !217 ; 5 uses
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !218, !noalias !217 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !32, !noalias !217
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bj = phi ptr [ %i.bi, %bb.g ], [ %i.bh, %bb.f ] ; 3 uses
  %i.bk = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.bl = fcmp olt float %i.bk, 0.000000e+00
  %i.bm = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %or.cond.i.i = select i1 %i.bl, i1 true, i1 %i.bn
  %i.bo = fcmp olt float %i.bg, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.bo
  br i1 %or.cond5.i.i, label %.invoke.i, label %bb.i

.invoke.i:                                        ; preds = %bb.j, %bb.h
  %i.bp = phi ptr [ @.str.69, %bb.j ], [ @.str.68, %bb.h ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.br) #27
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !214

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.h
  switch i32 %3, label %bb.m [
    i32 1, label %bb.j
    i32 2, label %bb.l
    i32 0, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.bs = fcmp ogt float %i.bk, 1.000000e+00
  %i.bt = fcmp ogt float %i.bm, 1.000000e+00
  %or.cond8.i.i = select i1 %i.bs, i1 true, i1 %i.bt
  %i.bu = fcmp ogt float %i.bg, 1.000000e+00
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 true, i1 %i.bu
  br i1 %or.cond11.i.i, label %.invoke.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %10, align 8, !tbaa !220, !noalias !217 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !61, !noalias !217
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !217
  %i.bz = invoke noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, i64 noundef 12, i64 noundef 4)
          to label %.noexc25.i unwind label %.loopexit.i, !noalias !214, !inline_history !181 ; 2 uses

.noexc25.i:                                       ; preds = %bb.k
  invoke void @_ZN4pbrt17RGBAlbedoSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 8 dereferenceable(152) %i.bj, <2 x float> %i.be, float %i.bg)
          to label %bb.o unwind label %.loopexit.i, !noalias !214

bb.l:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %10, align 8, !tbaa !220, !noalias !217 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61, !noalias !217
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !217
  %i.ce = invoke noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i64 noundef 16, i64 noundef 4)
          to label %.noexc27.i unwind label %.loopexit.i, !noalias !214, !inline_history !181 ; 2 uses

.noexc27.i:                                       ; preds = %bb.l
  invoke void @_ZN4pbrt20RGBUnboundedSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 4 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(152) %i.bj, <2 x float> %i.be, float %i.bg)
          to label %bb.o unwind label %.loopexit.i, !noalias !214

bb.m:                                             ; preds = %bb.i
  invoke void @_ZN4pbrt8LogFatalIJRA41_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 405, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(41) @.str.70) #27
          to label %.noexc29.i unwind label %.loopexit.split-lp.i, !noalias !214

.noexc29.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %10, align 8, !tbaa !220, !noalias !217 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !61, !noalias !217
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !217
  %i.cj = invoke noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i64 noundef 24, i64 noundef 8)
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !214, !inline_history !181 ; 2 uses

.noexc30.i:                                       ; preds = %bb.n
  invoke void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(152) %i.bj, <2 x float> %i.be, float %i.bg)
          to label %bb.o unwind label %.loopexit.i, !noalias !214

bb.o:                                             ; preds = %.noexc30.i, %.noexc27.i, %.noexc25.i
  %.sink.i22.i = phi ptr [ %i.ce, %.noexc27.i ], [ %i.bz, %.noexc25.i ], [ %i.cj, %.noexc30.i ]
  %.sink39.i.i = phi i64 [ 720575940379279360, %.noexc27.i ], [ 576460752303423488, %.noexc25.i ], [ 864691128455135232, %.noexc30.i ]
  %i.ck = ptrtoint ptr %.sink.i22.i to i64
  %i.cl = or i64 %.sink39.i.i, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.040.i
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !92, !noalias !214
  %i.cn = add nuw nsw i64 %.040.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cn, %i.ap
  br i1 %exitcond.not.i, label %"_ZN4pbrtL11returnArrayINS_8SpectrumEN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEZNKS_19ParameterDictionary20extractSpectrumArrayERKNS_15ParsedParameterENS_12SpectrumTypeENS5_ISt4byteEEE3$_0EESt6vectorIT_SaISH_EERKT0_SB_iT1_.exit", label %bb.f, !llvm.loop !182

.loopexit.i:                                      ; preds = %.noexc30.i, %bb.n, %.noexc27.i, %bb.l, %.noexc25.i, %bb.k
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i

.loopexit.split-lp.i:                             ; preds = %bb.m, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i

common.resume:                                    ; preds = %.body, %.body85, %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i38, %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i ], [ %lpad.phi.i39, %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i38 ], [ %eh.lpad-body86, %.body85 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i: ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.au) #29, !noalias !214
  br label %common.resume

"_ZN4pbrtL11returnArrayINS_8SpectrumEN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEZNKS_19ParameterDictionary20extractSpectrumArrayERKNS_15ParsedParameterENS_12SpectrumTypeENS5_ISt4byteEEE3$_0EESt6vectorIT_SaISH_EERKT0_SB_iT1_.exit": ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4pbrtL11returnArrayINS_8SpectrumEN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEZNKS_19ParameterDictionary20extractSpectrumArrayERKNS_15ParsedParameterENS_12SpectrumTypeENS5_ISt4byteEEE3$_1EESt6vectorIT_SaISH_EERKT0_SB_iT1_.exit"

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread91: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread90
  switch i64 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread97 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread91
  %i.co = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.cp = load i64, ptr %i.co, align 1
  %i.cq = xor i64 %i.cp, 7237111339576028258
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %i.ct, 121
  %i.cv = or i64 %i.cq, %i.cu
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !54, !noalias !221 ; 5 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.dc, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %i.dd) #27, !noalias !221
  unreachable

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i8 1, ptr %i.de, align 8, !tbaa !71, !noalias !221
  %i.df = icmp ugt i64 %i.da, 1152921504606846975
  br i1 %i.df, label %.noexc.i44, label %.lr.ph.preheader.i.i.i.i.i.i

.noexc.i44:                                       ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27, !noalias !221
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.q
  %i.dg = shl nuw nsw i64 %i.da, 3                ; 4 uses
  %i.dh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #31, !noalias !221 ; 6 uses
  store ptr %i.dh, ptr %0, align 8, !tbaa !215, !alias.scope !221
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.da
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dh, i8 0, i64 %i.dg, i1 false), !tbaa !92, !noalias !221
  %scevgep.i.i.i.i.i.i35 = getelementptr i8, ptr %i.dh, i64 %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !90, !alias.scope !221
  store ptr %scevgep.i.i.i.i.i.i35, ptr %i.dj, align 8, !tbaa !216, !alias.scope !221
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 96
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %.lr.ph.preheader.i.i.i.i.i.i
  %.026.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.fe, %bb.w ] ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !72, !noalias !221
  %.val.val.i = load ptr, ptr %10, align 8, !tbaa !220, !noalias !221 ; 2 uses
  %i.dn = load ptr, ptr %.val.val.i, align 8, !tbaa !61, !noalias !222
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !222
  %i.dq = invoke noundef ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %.val.val.i, i64 noundef 8, i64 noundef 4)
          to label %.noexc22.i unwind label %.loopexit.i36, !noalias !221, !inline_history !187 ; 3 uses

.noexc22.i:                                       ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.026.i
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !74, !noalias !222 ; 4 uses
  store float %i.ds, ptr %i.dq, align 4, !tbaa !224, !noalias !222
  %i.dt = fcmp ugt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.noexc22.i
  %i.du = fdiv float f0x3B3DE88C, %i.ds
  %i.dv = fmul float %i.du, 1.000000e+09
  %i.dw = fmul float %i.dv, f0x3089705F           ; 4 uses
  %i.dx = fmul float %i.dw, %i.dw                 ; 2 uses
  %i.dy = fmul float %i.dx, %i.dx
  %i.dz = fmul float %i.dw, %i.dy
  %i.ea = fmul float %i.dw, f0x19858735
  %i.eb = fmul float %i.ds, %i.ea
  %i.ec = fdiv float f0x1675E8FA, %i.eb
  %i.ed = fmul float %i.ec, f0x3FB8AA3B           ; 2 uses
  %i.ee = tail call noundef float @llvm.floor.f32(float %i.ed) ; 2 uses
  %i.ef = fsub float %i.ed, %i.ee                 ; 3 uses
  %i.eg = fptosi float %i.ee to i32
  %i.eh = tail call noundef float @llvm.fma.f32(float %i.ef, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ei = tail call noundef float @llvm.fma.f32(float %i.ef, float %i.eh, float f0x3F321004)
  %i.ej = tail call noundef float @llvm.fma.f32(float %i.ef, float %i.ei, float 1.000000e+00)
  %i.ek = bitcast float %i.ej to i32              ; 2 uses
  %i.el = lshr i32 %i.ek, 23
  %i.em = add i32 %i.eg, -127
  %i.en = add i32 %i.em, %i.el                    ; 3 uses
  %i.eo = icmp slt i32 %i.en, -126
  br i1 %i.eo, label %_ZN4pbrt7FastExpEf.exit.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ep = icmp sgt i32 %i.en, 127
  br i1 %i.ep, label %_ZN4pbrt7FastExpEf.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = and i32 %i.ek, -2139095041
  %i.er = shl nsw i32 %i.en, 23
  %i.es = add nsw i32 %i.er, 1065353216
  %i.et = or i32 %i.es, %i.eq
  %i.eu = bitcast i32 %i.et to float
  %i.ev = fadd float %i.eu, -1.000000e+00
  br label %_ZN4pbrt7FastExpEf.exit.i.i.i.i.i.i

_ZN4pbrt7FastExpEf.exit.i.i.i.i.i.i:              ; preds = %bb.u, %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i = phi float [ %i.ev, %bb.u ], [ -1.000000e+00, %bb.s ], [ +inf, %bb.t ]
  %i.ew = fmul float %i.dz, %.0.i.i.i.i.i.i.i
  %i.ex = fdiv float f0x25095161, %i.ew           ; 2 uses
  %i.ey = fcmp uno float %i.ex, 0.000000e+00
  br i1 %i.ey, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i.i.i.i
  invoke void @_ZN4pbrt8LogFatalIJRA11_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.71, i32 noundef 78, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(11) @.str.72) #27
          to label %.noexc23.i unwind label %.loopexit.split-lp.i42, !noalias !221

.noexc23.i:                                       ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i.i.i.i, %.noexc22.i
  %.0.i.i.i.i.i.i = phi float [ 0.000000e+00, %.noexc22.i ], [ %i.ex, %_ZN4pbrt7FastExpEf.exit.i.i.i.i.i.i ]
  %i.ez = fdiv float 1.000000e+00, %.0.i.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store float %i.ez, ptr %i.fa, align 4, !tbaa !225, !noalias !222
  %i.fb = ptrtoint ptr %i.dq to i64
  %i.fc = or i64 %i.fb, 1008806316530991104
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.026.i
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !92, !noalias !221
  %i.fe = add nuw nsw i64 %.026.i, 1              ; 2 uses
  %exitcond.not.i41 = icmp eq i64 %i.fe, %i.da
  br i1 %exitcond.not.i41, label %"_ZN4pbrtL11returnArrayINS_8SpectrumEN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEZNKS_19ParameterDictionary20extractSpectrumArrayERKNS_15ParsedParameterENS_12SpectrumTypeENS5_ISt4byteEEE3$_1EESt6vectorIT_SaISH_EERKT0_SB_iT1_.exit", label %bb.r, !llvm.loop !188

.loopexit.i36:                                    ; preds = %bb.r
  %lpad.loopexit.i37 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i38

.loopexit.split-lp.i42:                           ; preds = %bb.v
  %lpad.loopexit.split-lp.i43 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i38

_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i38: ; preds = %.loopexit.split-lp.i42, %.loopexit.i36
  %lpad.phi.i39 = phi { ptr, i32 } [ %lpad.loopexit.i37, %.loopexit.i36 ], [ %lpad.loopexit.split-lp.i43, %.loopexit.split-lp.i42 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dg) #29, !noalias !221
  br label %common.resume

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread91
  %i.ff = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 1
  %i.fh = icmp ne i64 %i.fg, 7887336166618656883
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65

bb.x:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !54 ; 4 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = and i64 %i.fl, 1
  %.not = icmp eq i64 %i.fn, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.fo, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %i.fp) #27
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.fq = lshr exact i64 %i.fl, 1
  %i.fr = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %i.ft, ptr noundef nonnull @.str.17)
  %.pre = load i64, ptr %i.fk, align 8, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fu = phi i64 [ %.pre, %bb.ab ], [ %i.fl, %bb.aa ] ; 2 uses
  %i.fv = trunc i64 %i.fu to i32
  store ptr %1, ptr %11, align 8, !tbaa !228
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i32 %i.fr, ptr %i.fw, align 8, !tbaa !229
  %i.fx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %10, ptr %i.fx, align 8, !tbaa !230
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  call void @_ZN4pbrt15ParsedParameterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(233) %i.fy, ptr noundef nonnull align 8 dereferenceable(233) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.fv, ptr %i.d, align 4, !tbaa !86, !noalias !231
  %i.fz = load i64, ptr %i.fk, align 8, !tbaa !54, !noalias !231 ; 3 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.gb, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %i.gc) #27
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %sext = shl i64 %i.fu, 32
  %i.gd = ashr exact i64 %sext, 32                ; 3 uses
  %i.ge = urem i64 %i.fz, %i.gd
  %i.gf = udiv exact i64 %i.fz, %i.gd             ; 4 uses
  %.not.i47 = icmp eq i64 %i.ge, 0
  br i1 %.not.i47, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.gg, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #27
          to label %.noexc61 unwind label %bb.as

.noexc61:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i8 1, ptr %i.gi, align 8, !tbaa !71, !noalias !231
  %i.gj = icmp ugt i64 %i.gf, 1152921504606846975
  br i1 %i.gj, label %.noexc.i60, label %.lr.ph.i50

.noexc.i60:                                       ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27
          to label %.noexc62 unwind label %bb.as

.noexc62:                                         ; preds = %.noexc.i60
  unreachable

.lr.ph.i50:                                       ; preds = %bb.ag
  %i.gk = shl nuw nsw i64 %i.gf, 3                ; 4 uses
  %i.gl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gk) #31
          to label %.noexc63 unwind label %bb.as  ; 6 uses

.noexc63:                                         ; preds = %.lr.ph.i50
  store ptr %i.gl, ptr %0, align 8, !tbaa !215, !alias.scope !231
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gf
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gl, i8 0, i64 %i.gk, i1 false), !tbaa !92, !noalias !231
  %scevgep.i.i.i.i.i.i51 = getelementptr i8, ptr %i.gl, i64 %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gm, ptr %i.go, align 8, !tbaa !90, !alias.scope !231
  store ptr %scevgep.i.i.i.i.i.i51, ptr %i.gn, align 8, !tbaa !216, !alias.scope !231
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 96
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ar, %.noexc63
  %.057.i = phi i64 [ 0, %.noexc63 ], [ %i.jc, %bb.ar ] ; 3 uses
  %i.gq = mul i64 %.057.i, %i.gd
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !72, !noalias !231
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gq ; 3 uses
  %i.gt = load i32, ptr %i.fw, align 8, !tbaa !229, !noalias !232 ; 3 uses
  %i.gu = sext i32 %i.gt to i64                   ; 3 uses
  %i.gv = icmp slt i32 %i.gt, 0
  br i1 %i.gv, label %.noexc.i.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27
          to label %.noexc23.i59 unwind label %.loopexit.split-lp.i57, !noalias !231

.noexc23.i59:                                     ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.ah
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gt, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i, label %.noexc25.i.i

.noexc25.i.i:                                     ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.gw = shl nuw nsw i64 %i.gu, 2
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #31
          to label %.noexc24.i unwind label %.loopexit.i52, !noalias !231 ; 13 uses

.noexc24.i:                                       ; preds = %.noexc25.i.i
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gu ; 7 uses
  store float 0.000000e+00, ptr %i.gx, align 4, !tbaa !74, !noalias !232
  %i.gz = getelementptr i8, ptr %i.gx, i64 4      ; 3 uses
  %i.ha = add nsw i64 %i.gu, -1                   ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit.i.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i: ; preds = %.noexc24.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ha, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.gz, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !74, !noalias !232
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit.i.i

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit.i.i:           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i, %.noexc24.i
  %.0.i.i.i.i.i.ph.i.i = phi ptr [ %i.gz, %.noexc24.i ], [ %i.hc, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i ] ; 4 uses
  %.pr.i.i = load i32, ptr %i.fw, align 8, !tbaa !229, !noalias !232 ; 3 uses
  %i.hd = zext nneg i32 %.pr.i.i to i64           ; 3 uses
  %i.he = icmp slt i32 %.pr.i.i, 0
  br i1 %i.he, label %bb.ai, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i

bb.ai:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27
          to label %.noexc32.i.i unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.split-lp.i, !noalias !232

.noexc32.i.i:                                     ; preds = %bb.ai
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit.i.i
  %.not.i.i.i.i27.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %.not.i.i.i.i27.i.i, label %._crit_edge.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i
  %i.hf = shl nuw nsw i64 %i.hd, 2
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #31
          to label %.noexc33.i.i unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.i, !noalias !232 ; 9 uses

.noexc33.i.i:                                     ; preds = %bb.aj
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.hd ; 4 uses
  store float 0.000000e+00, ptr %i.hg, align 4, !tbaa !74, !noalias !232
  %i.hi = getelementptr i8, ptr %i.hg, i64 4      ; 3 uses
  %i.hj = add nsw i64 %i.hd, -1                   ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28.i.i: ; preds = %.noexc33.i.i
  %.idx.i.i.i.i.i.i.i29.i.i = shl nuw nsw i64 %i.hj, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.hi, i8 0, i64 %.idx.i.i.i.i.i.i.i29.i.i, i1 false), !tbaa !74, !noalias !232
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.idx.i.i.i.i.i.i.i29.i.i
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i:         ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28.i.i, %.noexc33.i.i
  %.0.i.i.i.i.i30.ph.i.ph.i = phi ptr [ %i.hl, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i28.i.i ], [ %i.hi, %.noexc33.i.i ] ; 3 uses
  %.pr59.i.pr.i = load i32, ptr %i.fw, align 8, !tbaa !229, !noalias !232 ; 3 uses
  %i.hm = icmp sgt i32 %.pr59.i.pr.i, 0
  br i1 %i.hm, label %bb.ak, label %._crit_edge.i.i

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i
  %wide.trip.count.i.i = zext nneg i32 %.pr59.i.pr.i to i64
  %.pre.i.i = load float, ptr %i.gs, align 4, !tbaa !74, !noalias !232 ; 2 uses
  store float %.pre.i.i, ptr %i.gx, align 4, !tbaa !74, !noalias !232
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !74, !noalias !232
  store float %i.ho, ptr %i.hg, align 4, !tbaa !74, !noalias !232
  %exitcond.peel.not.i.i = icmp eq i32 %.pr59.i.pr.i, 1
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i.i, label %.lr.ph.peel.next.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge26.i.i, %bb.ak, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i3075.i.i = phi ptr [ %.0.i.i.i.i.i30.ph.i.ph.i, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i ], [ %.0.i.i.i.i.i30.ph.i.ph.i, %bb.ak ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i ], [ %.0.i.i.i.i.i30.ph.i.ph.i, %._crit_edge26.i.i ]
  %.sroa.12.074.i.i = phi ptr [ %i.hh, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i ], [ %i.hh, %bb.ak ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i ], [ %i.hh, %._crit_edge26.i.i ] ; 2 uses
  %.sroa.01.072.i.i = phi ptr [ %i.hg, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i ], [ %i.hg, %bb.ak ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i ], [ %i.hg, %._crit_edge26.i.i ] ; 6 uses
  %.0.i.i.i.i.i434870.i.i = phi ptr [ %.0.i.i.i.i.i.ph.i.i, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i ], [ %.0.i.i.i.i.i.ph.i.i, %bb.ak ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i ], [ %.0.i.i.i.i.i.ph.i.i, %._crit_edge26.i.i ]
  %.sroa.07.0424969.i.i = phi ptr [ %i.gx, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i ], [ %i.gx, %bb.ak ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.gx, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i ], [ %i.gx, %._crit_edge26.i.i ] ; 6 uses
  %.sroa.14.0395067.i.i = phi ptr [ %i.gy, %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit34.i.i ], [ %i.gy, %bb.ak ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.gy, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i26.i.i ], [ %i.gy, %._crit_edge26.i.i ] ; 3 uses
  %i.hp = load ptr, ptr %i.fx, align 8, !tbaa !233, !noalias !232, !nonnull !94, !align !234 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !220, !noalias !232 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !61, !noalias !232
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !232
  %i.hu = invoke noundef ptr %i.ht(ptr noundef nonnull align 8 dereferenceable(8) %i.hq, i64 noundef 64, i64 noundef 8)
          to label %.noexc35.i.i unwind label %bb.ap, !noalias !232, !inline_history !193 ; 2 uses

.noexc35.i.i:                                     ; preds = %._crit_edge.i.i
  %i.hv = ptrtoint ptr %.0.i.i.i.i.i434870.i.i to i64
  %i.hw = ptrtoint ptr %.sroa.07.0424969.i.i to i64 ; 2 uses
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 2
  %i.hz = ptrtoint ptr %.0.i.i.i.i.i3075.i.i to i64
  %i.ia = ptrtoint ptr %.sroa.01.072.i.i to i64   ; 2 uses
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = ashr exact i64 %i.ib, 2
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.hp, align 8, !tbaa !20, !noalias !232
  invoke void @_ZN4pbrt23PiecewiseLinearSpectrumC1EN4pstd4spanIKfEES4_NS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(64) %i.hu, ptr %.sroa.07.0424969.i.i, i64 %i.hy, ptr %.sroa.01.072.i.i, i64 %i.ic, ptr %.sroa.0.0.copyload.i.i.i.i)
          to label %bb.am unwind label %bb.ap, !noalias !232

_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.i: ; preds = %bb.aj
  %lpad.loopexit44.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.split-lp.i: ; preds = %bb.ai
  %lpad.loopexit.split-lp45.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.i

.lr.ph.peel.next.i.i:                             ; preds = %bb.ak, %._crit_edge26.i.i
  %i.id = phi float [ %i.if, %._crit_edge26.i.i ], [ %.pre.i.i, %bb.ak ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge26.i.i ], [ 1, %bb.ak ] ; 5 uses
  %.idx.i55 = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.idx.i55 ; 3 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !74, !noalias !232 ; 3 uses
  %i.ig = fcmp ugt float %i.if, %i.id
  br i1 %i.ig, label %._crit_edge26.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.peel.next.i.i
  %i.ih = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.ii = trunc nsw i64 %i.ih to i32
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !232
  store i32 %i.ii, ptr %i.c, align 4, !tbaa !86, !noalias !232
  invoke void @_ZN4pbrt9ErrorExitIJiRfRKfEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.ik, ptr noundef nonnull @.str.73, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.ij, ptr noundef nonnull align 4 dereferenceable(4) %i.ie) #27
          to label %bb.al unwind label %.thread.i56, !noalias !232

bb.al:                                            ; preds = %.loopexit.i.i
  unreachable

.thread.i56:                                      ; preds = %.loopexit.i.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !232
  br label %bb.aq

._crit_edge26.i.i:                                ; preds = %.lr.ph.peel.next.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %.pre28.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !74, !noalias !232
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.i.i
  store float %i.if, ptr %i.im, align 4, !tbaa !74, !noalias !232
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i.i
  store float %.pre28.i.i, ptr %i.in, align 4, !tbaa !74, !noalias !232
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.peel.next.i.i, !llvm.loop !194

bb.am:                                            ; preds = %.noexc35.i.i
  %i.io = ptrtoint ptr %i.hu to i64
  %i.ip = or i64 %i.io, 432345564227567616
  %.not.i.i.i.i22.i = icmp eq ptr %.sroa.01.072.i.i, null
  br i1 %.not.i.i.i.i22.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iq = ptrtoint ptr %.sroa.12.074.i.i to i64
  %i.ir = sub i64 %i.iq, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01.072.i.i, i64 noundef %i.ir) #29, !noalias !232
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.an, %bb.am
  %.not.i.i.i37.i.i = icmp eq ptr %.sroa.07.0424969.i.i, null
  br i1 %.not.i.i.i37.i.i, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.is = ptrtoint ptr %.sroa.14.0395067.i.i to i64
  %i.it = sub i64 %i.is, %i.hw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.0424969.i.i, i64 noundef %i.it) #29, !noalias !232
  br label %bb.ar

bb.ap:                                            ; preds = %.noexc35.i.i, %._crit_edge.i.i
  %i.iu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i39.i.i = icmp eq ptr %.sroa.01.072.i.i, null
  br i1 %.not.i.i.i39.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.i56
  %.pn.i42.i = phi { ptr, i32 } [ %i.il, %.thread.i56 ], [ %i.iu, %bb.ap ]
  %.sroa.14.0395066.i40.i = phi ptr [ %i.gy, %.thread.i56 ], [ %.sroa.14.0395067.i.i, %bb.ap ]
  %.sroa.07.0424968.i38.i = phi ptr [ %i.gx, %.thread.i56 ], [ %.sroa.07.0424969.i.i, %bb.ap ]
  %.sroa.01.071.i37.i = phi ptr [ %i.hg, %.thread.i56 ], [ %.sroa.01.072.i.i, %bb.ap ] ; 2 uses
  %.sroa.12.073.i36.i = phi ptr [ %i.hh, %.thread.i56 ], [ %.sroa.12.074.i.i, %bb.ap ]
  %i.iv = ptrtoint ptr %.sroa.12.073.i36.i to i64
  %i.iw = ptrtoint ptr %.sroa.01.071.i37.i to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01.071.i37.i, i64 noundef %i.ix) #29, !noalias !232
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i:              ; preds = %bb.aq, %bb.ap
  %.pn.i43.i = phi { ptr, i32 } [ %.pn.i42.i, %bb.aq ], [ %i.iu, %bb.ap ] ; 2 uses
  %.sroa.14.0395066.i41.i = phi ptr [ %.sroa.14.0395066.i40.i, %bb.aq ], [ %.sroa.14.0395067.i.i, %bb.ap ]
  %.sroa.07.0424968.i39.i = phi ptr [ %.sroa.07.0424968.i38.i, %bb.aq ], [ %.sroa.07.0424969.i.i, %bb.ap ] ; 2 uses
  %.not.i.i.i41.i.i = icmp eq ptr %.sroa.07.0424968.i39.i, null
  br i1 %.not.i.i.i41.i.i, label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i54, label %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.i:       ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.split-lp.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.i
  %.pn.pn57.i.i = phi { ptr, i32 } [ %.pn.i43.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i ], [ %lpad.loopexit44.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.i ], [ %lpad.loopexit.split-lp45.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.split-lp.i ]
  %.sroa.14.03756.i.i = phi ptr [ %.sroa.14.0395066.i41.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i ], [ %i.gy, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.i ], [ %i.gy, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.split-lp.i ]
  %.sroa.07.04055.i.i = phi ptr [ %.sroa.07.0424968.i39.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i ], [ %i.gx, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.i ], [ %i.gx, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.loopexit.split-lp.i ] ; 2 uses
  %i.iy = ptrtoint ptr %.sroa.14.03756.i.i to i64
  %i.iz = ptrtoint ptr %.sroa.07.04055.i.i to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.07.04055.i.i, i64 noundef %i.ja) #29, !noalias !232
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i54

bb.ar:                                            ; preds = %bb.ao, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.057.i
  store i64 %i.ip, ptr %i.jb, align 8, !tbaa !92, !noalias !231
  %i.jc = add nuw i64 %.057.i, 1                  ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.gf
  br i1 %i.jd, label %bb.ah, label %.loopexit, !llvm.loop !195

.loopexit.i52:                                    ; preds = %.noexc25.i.i
  %lpad.loopexit.i53 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i54

.loopexit.split-lp.i57:                           ; preds = %.noexc.i.i
  %lpad.loopexit.split-lp.i58 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i54

_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i54: ; preds = %.loopexit.split-lp.i57, %.loopexit.i52, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i43.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.i.i ], [ %.pn.pn57.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit40.thread.i.i ], [ %lpad.loopexit.i53, %.loopexit.i52 ], [ %lpad.loopexit.split-lp.i58, %.loopexit.split-lp.i57 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gk) #29, !noalias !231
  br label %.body

.loopexit:                                        ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN4pbrt15ParsedParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %i.fy) #28
  br label %"_ZN4pbrtL11returnArrayINS_8SpectrumEN4pstd6vectorIfNS2_3pmr21polymorphic_allocatorIfEEEEZNKS_19ParameterDictionary20extractSpectrumArrayERKNS_15ParsedParameterENS_12SpectrumTypeENS5_ISt4byteEEE3$_1EESt6vectorIT_SaISH_EERKT0_SB_iT1_.exit"

bb.as:                                            ; preds = %.lr.ph.i50, %.noexc.i60, %bb.af, %bb.ad
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i54, %bb.as
  %eh.lpad-body = phi { ptr, i32 } [ %i.je, %bb.as ], [ %eh.lpad-body.i, %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i54 ]
  call void @_ZN4pbrt15ParsedParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %i.fy) #28
  br label %common.resume

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65: ; preds = %bb.x, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit46
  %i.jf = load i64, ptr %i.ff, align 1
  %i.jg = icmp ne i64 %i.jf, 7887336166618656883
  %i.jh = zext i1 %i.jg to i32
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !58
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread97, label %bb.at

bb.at:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread
  call void @_ZN4pbrt15ParsedParameterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(233) %12, ptr noundef nonnull align 8 dereferenceable(233) %2)
  %i.jm = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 2 uses
  store ptr %10, ptr %i.jm, align 8, !tbaa !230
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.jn = load i64, ptr %i.jj, align 8, !tbaa !58, !noalias !236 ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 32
  invoke void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.jp, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %i.jq) #27
          to label %.noexc82 unwind label %bb.bt

.noexc82:                                         ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 216
  store i8 1, ptr %i.jr, align 8, !tbaa !71, !noalias !236
  %i.js = icmp ugt i64 %i.jn, 1152921504606846975
  br i1 %i.js, label %.noexc.i81, label %.lr.ph.preheader.i.i.i.i.i.i66

.noexc.i81:                                       ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27
          to label %.noexc83 unwind label %bb.bt

.noexc83:                                         ; preds = %.noexc.i81
  unreachable

.lr.ph.preheader.i.i.i.i.i.i66:                   ; preds = %bb.av
  %i.jt = shl nuw nsw i64 %i.jn, 3                ; 4 uses
  %i.ju = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jt) #31
          to label %.noexc84 unwind label %bb.bt  ; 6 uses

.noexc84:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i.i66
  store ptr %i.ju, ptr %0, align 8, !tbaa !215, !alias.scope !236
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jn
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ju, i8 0, i64 %i.jt, i1 false), !tbaa !92, !noalias !236
  %scevgep.i.i.i.i.i.i67 = getelementptr i8, ptr %i.ju, i64 %i.jt
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.jv, ptr %i.jx, align 8, !tbaa !90, !alias.scope !236
  store ptr %scevgep.i.i.i.i.i.i67, ptr %i.jw, align 8, !tbaa !216, !alias.scope !236
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.jz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ke = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.bs, %.noexc84
  %.064.i = phi i64 [ 0, %.noexc84 ], [ %i.nl, %bb.bs ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !236
  %i.kg = load ptr, ptr %i.jy, align 8, !tbaa !78, !noalias !236
  %i.kh = getelementptr inbounds nuw [32 x i8], ptr %i.kg, i64 %.064.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !236
  store ptr %i.jz, ptr %8, align 8, !tbaa !39, !noalias !238
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !43, !noalias !238 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !41, !noalias !238 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !238
  store i64 %i.kk, ptr %i.b, align 8, !tbaa !28, !noalias !238
  %i.kl = icmp ugt i64 %i.kk, 15
  br i1 %i.kl, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aw
  %i.km = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc22.i80 unwind label %.loopexit.i77, !noalias !236 ; 2 uses

.noexc22.i80:                                     ; preds = %.noexc.i.i.i
  store ptr %i.km, ptr %8, align 8, !tbaa !43, !noalias !238
  %i.kn = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !238
  store i64 %i.kn, ptr %i.jz, align 8, !tbaa !42, !noalias !238
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc22.i80, %bb.aw
  %i.ko = phi ptr [ %i.km, %.noexc22.i80 ], [ %i.jz, %bb.aw ] ; 2 uses
  switch i64 %i.kk, label %bb.ay [
    i64 1, label %bb.ax
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i
  %i.kp = load i8, ptr %i.ki, align 1, !tbaa !42, !noalias !236
  store i8 %i.kp, ptr %i.ko, align 1, !tbaa !42, !noalias !236
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ko, ptr align 1 %i.ki, i64 %i.kk, i1 false), !noalias !236
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i.i.i
  %i.kq = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !238 ; 2 uses
  store i64 %i.kq, ptr %i.ka, align 8, !tbaa !41, !noalias !238
  %i.kr = load ptr, ptr %8, align 8, !tbaa !43, !noalias !238
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kq
  store i8 0, ptr %i.ks, align 1, !tbaa !42, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !238
  invoke void @_ZN4pbrt16GetNamedSpectrumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Spectrum") align 8 %9, ptr nofree noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.az unwind label %bb.ba, !noalias !236

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.kt = load ptr, ptr %8, align 8, !tbaa !43, !noalias !238 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.jz
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.az
  %i.kv = load i64, ptr %i.jz, align 8, !tbaa !42, !noalias !238
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #29, !noalias !236
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.kx = load i64, ptr %9, align 8, !tbaa !92, !alias.scope !237, !noalias !236 ; 2 uses
  %i.ky = and i64 %i.kx, 144115188075855871
  %.not.i.i71 = icmp eq i64 %i.ky, 0
  br i1 %.not.i.i71, label %bb.bb, label %bb.bs

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %8, align 8, !tbaa !43, !noalias !238 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.jz
  br i1 %i.lb, label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.ba
  %i.lc = load i64, ptr %i.jz, align 8, !tbaa !42, !noalias !238
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #29, !noalias !236
  br label %_ZNSt6vectorIN4pbrt8SpectrumESaIS1_EED2Ev.exit.i68

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.le = load ptr, ptr %i.jm, align 8, !tbaa !240, !noalias !238, !nonnull !94, !align !234
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.le, align 8, !tbaa !20, !noalias !236
  %.val.i.i = load ptr, ptr %i.kh, align 8, !tbaa !43, !noalias !238 ; 2 uses
  %.val5.i.i = load i64, ptr %i.kj, align 8, !tbaa !41, !noalias !238 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !238
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !241
  store ptr %i.kb, ptr %6, align 8, !tbaa !39, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !241
  store i64 %.val5.i.i, ptr %i.a, align 8, !tbaa !28, !noalias !241
  %i.lf = icmp ugt i64 %.val5.i.i, 15
  br i1 %i.lf, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.bb
  %i.lg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc23.i79 unwind label %.loopexit.i77, !noalias !236 ; 2 uses

.noexc23.i79:                                     ; preds = %.noexc.i.i.i.i
  store ptr %i.lg, ptr %6, align 8, !tbaa !43, !noalias !241
  %i.lh = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !241
  store i64 %i.lh, ptr %i.kb, align 8, !tbaa !42, !noalias !241
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc23.i79, %bb.bb
  %i.li = phi ptr [ %i.lg, %.noexc23.i79 ], [ %i.kb, %bb.bb ] ; 2 uses
  switch i64 %.val5.i.i, label %bb.bd [
    i64 1, label %bb.bc
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.lj = load i8, ptr %.val.i.i, align 1, !tbaa !42, !noalias !242
  store i8 %i.lj, ptr %i.li, align 1, !tbaa !42, !noalias !242
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.bd:                                            ; preds = %._crit_edge.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK4pbrt19ParameterDictionary11lookupArrayILNS_13ParameterTypeE4EEESt6vectorINS_19ParameterTypeTraitsIXT_EE10ReturnTypeESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !74, !noalias !316
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bw
  store <2 x float> %i.by, ptr %i.bz, align 4, !noalias !316
  %i.ca = or disjoint i64 %.023.i.i, 3            ; 2 uses
  %.idx.3 = shl nuw nsw i64 %i.ca, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.3
  %i.cc = load <2 x float>, ptr %i.cb, align 4, !tbaa !74, !noalias !316
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ca
  store <2 x float> %i.cc, ptr %i.cd, align 4, !noalias !316
  %i.ce = or disjoint i64 %.023.i.i, 4            ; 2 uses
  %.idx.4 = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.4
  %i.cg = load <2 x float>, ptr %i.cf, align 4, !tbaa !74, !noalias !316
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ce
  store <2 x float> %i.cg, ptr %i.ch, align 4, !noalias !316
  %i.ci = or disjoint i64 %.023.i.i, 5            ; 2 uses
  %.idx.5 = shl nuw nsw i64 %i.ci, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.5
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !74, !noalias !316
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ci
  store <2 x float> %i.ck, ptr %i.cl, align 4, !noalias !316
  %i.cm = or disjoint i64 %.023.i.i, 6            ; 2 uses
  %.idx.6 = shl nuw nsw i64 %i.cm, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.6
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !74, !noalias !316
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cm
  store <2 x float> %i.co, ptr %i.cp, align 4, !noalias !316
  %i.cq = or disjoint i64 %.023.i.i, 7            ; 2 uses
  %.idx.7 = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.7
  %i.cs = load <2 x float>, ptr %i.cr, align 4, !tbaa !74, !noalias !316
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cq
  store <2 x float> %i.cs, ptr %i.ct, align 4, !noalias !316
  %i.cu = add nuw nsw i64 %.023.i.i, 8            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.unr-lcssa, label %bb.f, !llvm.loop !312

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split
  %i.cv = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.cv, %i.h
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.split

.loopexit.i.unr-lcssa:                            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.unr-lcssa, %.lr.ph.i.i
  %.023.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cu, %.loopexit.i.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.023.i.i.epil = phi i64 [ %.023.i.i.epil.init, %.epil.preheader ], [ %i.cz, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %.idx.epil = shl nuw nsw i64 %.023.i.i.epil, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.epil
  %i.cx = load <2 x float>, ptr %i.cw, align 4, !tbaa !74, !noalias !316
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.023.i.i.epil
  store <2 x float> %i.cx, ptr %i.cy, align 4, !noalias !316
  %i.cz = add nuw nsw i64 %.023.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.g, !llvm.loop !313

.loopexit.i:                                      ; preds = %bb.g, %.loopexit.i.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !314
  br label %_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Vector2IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !314
  br label %_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Vector2IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit

_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Vector2IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit: ; preds = %.loopexit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt19ParameterDictionary15GetPoint3fArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK4pbrt19ParameterDictionary11lookupArrayILNS_13ParameterTypeE5EEESt6vectorINS_19ParameterTypeTraitsIXT_EE10ReturnTypeESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt19ParameterDictionary11lookupArrayILNS_13ParameterTypeE5EEESt6vectorINS_19ParameterTypeTraitsIXT_EE10ReturnTypeESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !328 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27, !noalias !328 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %.not24.i = icmp eq i64 %i.g, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41, !noalias !328
  %.fr7 = freeze i64 %i.j                         ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !noalias !328
  %i.l = icmp eq i64 %.fr7, 0
  br i1 %i.l, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us
  %.01725.i.us = phi ptr [ %i.ae, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.m = load ptr, ptr %.01725.i.us, align 8, !tbaa !35, !noalias !328 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41, !noalias !328
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us: ; preds = %.lr.ph.i.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41, !noalias !328
  %i.s = icmp eq i64 %i.r, 6
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !43, !noalias !328 ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = xor i32 %i.u, 1852403568
  %i.w = getelementptr i8, ptr %i.t, i64 4
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = xor i32 %i.y, 13172
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.critedge.i.split.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us, %.lr.ph.i.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.01725.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ae, %i.h
  br i1 %.not.i.us, label %._crit_edge.i, label %.lr.ph.i.split.us

.critedge.i.split.us:                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  br label %.critedge.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i
  %.01725.i = phi ptr [ %i.cp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.ag = load ptr, ptr %.01725.i, align 8, !tbaa !35, !noalias !328 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41, !noalias !328
  %i.ak = icmp eq i64 %i.aj, %.fr7
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i.split
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !43, !noalias !328
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.k, i64 %.fr7), !noalias !328
  %i.am = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41, !noalias !328
  %i.ap = icmp eq i64 %i.ao, 6
  br i1 %i.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !43, !noalias !328 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = xor i32 %i.ar, 1852403568
  %i.at = getelementptr i8, ptr %i.aq, i64 4
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i32
  %i.aw = xor i32 %i.av, 13172
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.critedge.i.split.us
  %.us-phi = phi ptr [ %i.m, %.critedge.i.split.us ], [ %i.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 5 uses
  %.us-phi5 = phi ptr [ %i.af, %.critedge.i.split.us ], [ %i.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !328
  store i32 3, ptr %i.a, align 4, !tbaa !86, !noalias !330
  %i.bb = getelementptr inbounds nuw i8, ptr %.us-phi, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !54, !noalias !330 ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge.i
  %i.be = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi5) #27, !noalias !330
  unreachable

bb.c:                                             ; preds = %.critedge.i
  %i.bf = urem i64 %i.bc, 3
  %i.bg = udiv exact i64 %i.bc, 3                 ; 4 uses
  %.not.i19.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #27, !noalias !330
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %.us-phi, i64 216
  store i8 1, ptr %i.bi, align 8, !tbaa !71, !noalias !330
  %i.bj = icmp ugt i64 %i.bc, 2305843009213693950
  br i1 %i.bj, label %.noexc.i.i, label %.lr.ph.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27, !noalias !330
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.bk = mul nuw nsw i64 %i.bg, 12               ; 3 uses
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #31, !noalias !330 ; 9 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !333, !alias.scope !330
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bg
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bl, i8 0, i64 %i.bk, i1 false), !noalias !330
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bl, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !334, !alias.scope !330
  store ptr %scevgep.i.i.i.i.i.i.i, ptr %i.bn, align 8, !tbaa !335, !alias.scope !330
  %i.bp = getelementptr inbounds nuw i8, ptr %.us-phi, i64 96
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !72, !noalias !330 ; 5 uses
  %xtraiter = and i64 %i.bg, 3                    ; 3 uses
  %i.bq = icmp ult i64 %i.bc, 12
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.bg, 1152921504606846972
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.024.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.co, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.f ]
  %.idx = mul nuw nsw i64 %.024.i.i, 12
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 2 uses
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !74, !noalias !330
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !74, !noalias !330
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %.024.i.i ; 2 uses
  store <2 x float> %i.bs, ptr %i.bv, align 4, !noalias !330
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store float %i.bu, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !330
  %i.bw = or disjoint i64 %.024.i.i, 1            ; 2 uses
  %.idx.1 = mul nuw nsw i64 %i.bw, 12
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.1 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !74, !noalias !330
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !74, !noalias !330
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bw ; 2 uses
  store <2 x float> %i.by, ptr %i.cb, align 4, !noalias !330
  %.sroa.5.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.ca, ptr %.sroa.5.0..sroa_idx.i.i.1, align 4, !noalias !330
  %i.cc = or disjoint i64 %.024.i.i, 2            ; 2 uses
  %.idx.2 = mul nuw nsw i64 %i.cc, 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.2 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.cd, align 4, !tbaa !74, !noalias !330
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !74, !noalias !330
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.cc ; 2 uses
  store <2 x float> %i.ce, ptr %i.ch, align 4, !noalias !330
  %.sroa.5.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store float %i.cg, ptr %.sroa.5.0..sroa_idx.i.i.2, align 4, !noalias !330
  %i.ci = or disjoint i64 %.024.i.i, 3            ; 2 uses
  %.idx.3 = mul nuw nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.3 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !74, !noalias !330
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !74, !noalias !330
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.ci ; 2 uses
  store <2 x float> %i.ck, ptr %i.cn, align 4, !noalias !330
  %.sroa.5.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store float %i.cm, ptr %.sroa.5.0..sroa_idx.i.i.3, align 4, !noalias !330
  %i.co = add nuw nsw i64 %.024.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !326

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split
  %i.cp = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, %i.h
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.split

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.024.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.co, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.024.i.i.epil = phi i64 [ %.024.i.i.epil.init, %.epil.preheader ], [ %i.cv, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %.idx.epil = mul nuw nsw i64 %.024.i.i.epil, 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.epil ; 2 uses
  %i.cr = load <2 x float>, ptr %i.cq, align 4, !tbaa !74, !noalias !330
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !74, !noalias !330
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %.024.i.i.epil ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4, !noalias !330
  %.sroa.5.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store float %i.ct, ptr %.sroa.5.0..sroa_idx.i.i.epil, align 4, !noalias !330
  %i.cv = add nuw nsw i64 %.024.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.g, !llvm.loop !327

.loopexit.i:                                      ; preds = %bb.g, %.loopexit.i.loopexit.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !328
  br label %_ZNK4pbrt19ParameterDictionary11lookupArrayINS_6Point3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !328
  br label %_ZNK4pbrt19ParameterDictionary11lookupArrayINS_6Point3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit

_ZNK4pbrt19ParameterDictionary11lookupArrayINS_6Point3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit: ; preds = %.loopexit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt19ParameterDictionary16GetVector3fArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK4pbrt19ParameterDictionary11lookupArrayILNS_13ParameterTypeE6EEESt6vectorINS_19ParameterTypeTraitsIXT_EE10ReturnTypeESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt19ParameterDictionary11lookupArrayILNS_13ParameterTypeE6EEESt6vectorINS_19ParameterTypeTraitsIXT_EE10ReturnTypeESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.45") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !342 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27, !noalias !342 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %.not24.i = icmp eq i64 %i.g, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41, !noalias !342
  %.fr7 = freeze i64 %i.j                         ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !noalias !342
  %i.l = icmp eq i64 %.fr7, 0
  br i1 %i.l, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us
  %.01725.i.us = phi ptr [ %i.ad, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.m = load ptr, ptr %.01725.i.us, align 8, !tbaa !35, !noalias !342 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41, !noalias !342
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us: ; preds = %.lr.ph.i.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41, !noalias !342
  %i.s = icmp eq i64 %i.r, 7
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !43, !noalias !342 ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = xor i32 %i.u, 1952671094
  %i.w = getelementptr i8, ptr %i.t, i64 3
  %i.x = load i32, ptr %i.w, align 1
  %i.y = xor i32 %i.x, 863137652
  %i.z = or i32 %i.v, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.critedge.i.split.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us, %.lr.ph.i.split.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.01725.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ad, %i.h
  br i1 %.not.i.us, label %._crit_edge.i, label %.lr.ph.i.split.us

.critedge.i.split.us:                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  br label %.critedge.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i
  %.01725.i = phi ptr [ %i.cn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.af = load ptr, ptr %.01725.i, align 8, !tbaa !35, !noalias !342 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41, !noalias !342
  %i.aj = icmp eq i64 %i.ai, %.fr7
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i.split
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !43, !noalias !342
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %i.k, i64 %.fr7), !noalias !342
  %i.al = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !41, !noalias !342
  %i.ao = icmp eq i64 %i.an, 7
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !43, !noalias !342 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = xor i32 %i.aq, 1952671094
  %i.as = getelementptr i8, ptr %i.ap, i64 3
  %i.at = load i32, ptr %i.as, align 1
  %i.au = xor i32 %i.at, 863137652
  %i.av = or i32 %i.ar, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.critedge.i.split.us
  %.us-phi = phi ptr [ %i.m, %.critedge.i.split.us ], [ %i.af, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 5 uses
  %.us-phi5 = phi ptr [ %i.ae, %.critedge.i.split.us ], [ %i.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !342
  store i32 3, ptr %i.a, align 4, !tbaa !86, !noalias !344
  %i.az = getelementptr inbounds nuw i8, ptr %.us-phi, i64 112
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !54, !noalias !344 ; 5 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi5) #27, !noalias !344
  unreachable

bb.c:                                             ; preds = %.critedge.i
  %i.bd = urem i64 %i.ba, 3
  %i.be = udiv exact i64 %i.ba, 3                 ; 4 uses
  %.not.i19.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.bf, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #27, !noalias !344
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %.us-phi, i64 216
  store i8 1, ptr %i.bg, align 8, !tbaa !71, !noalias !344
  %i.bh = icmp ugt i64 %i.ba, 2305843009213693950
  br i1 %i.bh, label %.noexc.i.i, label %.lr.ph.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27, !noalias !344
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.bi = mul nuw nsw i64 %i.be, 12               ; 3 uses
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #31, !noalias !344 ; 9 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !347, !alias.scope !344
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %i.be
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bj, i8 0, i64 %i.bi, i1 false), !noalias !344
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bj, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !348, !alias.scope !344
  store ptr %scevgep.i.i.i.i.i.i.i, ptr %i.bl, align 8, !tbaa !349, !alias.scope !344
  %i.bn = getelementptr inbounds nuw i8, ptr %.us-phi, i64 96
  %.pre = load ptr, ptr %i.bn, align 8, !tbaa !72, !noalias !344 ; 5 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bo = icmp ult i64 %i.ba, 12
  br i1 %i.bo, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.be, 1152921504606846972
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.024.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cm, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.f ]
  %.idx = mul nuw nsw i64 %.024.i.i, 12
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 2 uses
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !74, !noalias !344
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !74, !noalias !344
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %.024.i.i ; 2 uses
  store <2 x float> %i.bq, ptr %i.bt, align 4, !noalias !344
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store float %i.bs, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !344
  %i.bu = or disjoint i64 %.024.i.i, 1            ; 2 uses
  %.idx.1 = mul nuw nsw i64 %i.bu, 12
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.1 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bv, align 4, !tbaa !74, !noalias !344
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !74, !noalias !344
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %i.bu ; 2 uses
  store <2 x float> %i.bw, ptr %i.bz, align 4, !noalias !344
  %.sroa.5.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store float %i.by, ptr %.sroa.5.0..sroa_idx.i.i.1, align 4, !noalias !344
  %i.ca = or disjoint i64 %.024.i.i, 2            ; 2 uses
  %.idx.2 = mul nuw nsw i64 %i.ca, 12
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.2 ; 2 uses
  %i.cc = load <2 x float>, ptr %i.cb, align 4, !tbaa !74, !noalias !344
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !74, !noalias !344
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %i.ca ; 2 uses
  store <2 x float> %i.cc, ptr %i.cf, align 4, !noalias !344
  %.sroa.5.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %i.ce, ptr %.sroa.5.0..sroa_idx.i.i.2, align 4, !noalias !344
  %i.cg = or disjoint i64 %.024.i.i, 3            ; 2 uses
  %.idx.3 = mul nuw nsw i64 %i.cg, 12
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.3 ; 2 uses
  %i.ci = load <2 x float>, ptr %i.ch, align 4, !tbaa !74, !noalias !344
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !74, !noalias !344
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %i.cg ; 2 uses
  store <2 x float> %i.ci, ptr %i.cl, align 4, !noalias !344
  %.sroa.5.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store float %i.ck, ptr %.sroa.5.0..sroa_idx.i.i.3, align 4, !noalias !344
  %i.cm = add nuw nsw i64 %.024.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !340

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split
  %i.cn = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.cn, %i.h
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.split

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.024.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cm, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.024.i.i.epil = phi i64 [ %.024.i.i.epil.init, %.epil.preheader ], [ %i.ct, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %.idx.epil = mul nuw nsw i64 %.024.i.i.epil, 12
  %i.co = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.epil ; 2 uses
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !74, !noalias !344
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !74, !noalias !344
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.bj, i64 %.024.i.i.epil ; 2 uses
  store <2 x float> %i.cp, ptr %i.cs, align 4, !noalias !344
  %.sroa.5.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store float %i.cr, ptr %.sroa.5.0..sroa_idx.i.i.epil, align 4, !noalias !344
  %i.ct = add nuw nsw i64 %.024.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.g, !llvm.loop !341

.loopexit.i:                                      ; preds = %bb.g, %.loopexit.i.loopexit.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !342
  br label %_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Vector3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !342
  br label %_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Vector3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit

_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Vector3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit: ; preds = %.loopexit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt19ParameterDictionary16GetNormal3fArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNK4pbrt19ParameterDictionary11lookupArrayILNS_13ParameterTypeE7EEESt6vectorINS_19ParameterTypeTraitsIXT_EE10ReturnTypeESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::vector.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt19ParameterDictionary11lookupArrayILNS_13ParameterTypeE7EEESt6vectorINS_19ParameterTypeTraitsIXT_EE10ReturnTypeESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.50") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26, !noalias !356 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27, !noalias !356 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %.not24.i = icmp eq i64 %i.g, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41, !noalias !356
  %.fr7 = freeze i64 %i.j                         ; 3 uses
  %i.k = load ptr, ptr %2, align 8, !noalias !356
  %i.l = icmp eq i64 %.fr7, 0
  br i1 %i.l, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us
  %.01725.i.us = phi ptr [ %i.ae, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.m = load ptr, ptr %.01725.i.us, align 8, !tbaa !35, !noalias !356 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41, !noalias !356
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us: ; preds = %.lr.ph.i.split.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41, !noalias !356
  %i.s = icmp eq i64 %i.r, 6
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !43, !noalias !356 ; 2 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = xor i32 %i.u, 1836216174
  %i.w = getelementptr i8, ptr %i.t, i64 4
  %i.x = load i16, ptr %i.w, align 1
  %i.y = zext i16 %i.x to i32
  %i.z = xor i32 %i.y, 27745
  %i.aa = or i32 %i.v, %i.z
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.critedge.i.split.us, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.us, %.lr.ph.i.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.01725.i.us, i64 8 ; 2 uses
  %.not.i.us = icmp eq ptr %i.ae, %i.h
  br i1 %.not.i.us, label %._crit_edge.i, label %.lr.ph.i.split.us

.critedge.i.split.us:                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  br label %.critedge.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i
  %.01725.i = phi ptr [ %i.cp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i ], [ %i.e, %.lr.ph.i ] ; 2 uses
  %i.ag = load ptr, ptr %.01725.i, align 8, !tbaa !35, !noalias !356 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41, !noalias !356
  %i.ak = icmp eq i64 %i.aj, %.fr7
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i.split
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !43, !noalias !356
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.al, ptr %i.k, i64 %.fr7), !noalias !356
  %i.am = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41, !noalias !356
  %i.ap = icmp eq i64 %i.ao, 6
  br i1 %i.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !43, !noalias !356 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = xor i32 %i.ar, 1836216174
  %i.at = getelementptr i8, ptr %i.aq, i64 4
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i32
  %i.aw = xor i32 %i.av, 27745
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.critedge.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.critedge.i.split.us
  %.us-phi = phi ptr [ %i.m, %.critedge.i.split.us ], [ %i.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 5 uses
  %.us-phi5 = phi ptr [ %i.af, %.critedge.i.split.us ], [ %i.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !356
  store i32 3, ptr %i.a, align 4, !tbaa !86, !noalias !358
  %i.bb = getelementptr inbounds nuw i8, ptr %.us-phi, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !54, !noalias !358 ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge.i
  %i.be = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.be, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi5) #27, !noalias !358
  unreachable

bb.c:                                             ; preds = %.critedge.i
  %i.bf = urem i64 %i.bc, 3
  %i.bg = udiv exact i64 %i.bc, 3                 ; 4 uses
  %.not.i19.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i19.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %.us-phi, i64 64
  call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.bh, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %.us-phi5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #27, !noalias !358
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %.us-phi, i64 216
  store i8 1, ptr %i.bi, align 8, !tbaa !71, !noalias !358
  %i.bj = icmp ugt i64 %i.bc, 2305843009213693950
  br i1 %i.bj, label %.noexc.i.i, label %.lr.ph.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27, !noalias !358
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.bk = mul nuw nsw i64 %i.bg, 12               ; 3 uses
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #31, !noalias !358 ; 9 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !361, !alias.scope !358
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bg
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bl, i8 0, i64 %i.bk, i1 false), !noalias !358
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.bl, i64 %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !362, !alias.scope !358
  store ptr %scevgep.i.i.i.i.i.i.i, ptr %i.bn, align 8, !tbaa !363, !alias.scope !358
  %i.bp = getelementptr inbounds nuw i8, ptr %.us-phi, i64 96
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !72, !noalias !358 ; 5 uses
  %xtraiter = and i64 %i.bg, 3                    ; 3 uses
  %i.bq = icmp ult i64 %i.bc, 12
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.bg, 1152921504606846972
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.024.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.co, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.f ]
  %.idx = mul nuw nsw i64 %.024.i.i, 12
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx ; 2 uses
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !74, !noalias !358
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !74, !noalias !358
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %.024.i.i ; 2 uses
  store <2 x float> %i.bs, ptr %i.bv, align 4, !noalias !358
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store float %i.bu, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !358
  %i.bw = or disjoint i64 %.024.i.i, 1            ; 2 uses
  %.idx.1 = mul nuw nsw i64 %i.bw, 12
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.1 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bx, align 4, !tbaa !74, !noalias !358
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !74, !noalias !358
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bw ; 2 uses
  store <2 x float> %i.by, ptr %i.cb, align 4, !noalias !358
  %.sroa.5.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store float %i.ca, ptr %.sroa.5.0..sroa_idx.i.i.1, align 4, !noalias !358
  %i.cc = or disjoint i64 %.024.i.i, 2            ; 2 uses
  %.idx.2 = mul nuw nsw i64 %i.cc, 12
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.2 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.cd, align 4, !tbaa !74, !noalias !358
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !74, !noalias !358
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.cc ; 2 uses
  store <2 x float> %i.ce, ptr %i.ch, align 4, !noalias !358
  %.sroa.5.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store float %i.cg, ptr %.sroa.5.0..sroa_idx.i.i.2, align 4, !noalias !358
  %i.ci = or disjoint i64 %.024.i.i, 3            ; 2 uses
  %.idx.3 = mul nuw nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.3 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !74, !noalias !358
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !74, !noalias !358
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.ci ; 2 uses
  store <2 x float> %i.ck, ptr %i.cn, align 4, !noalias !358
  %.sroa.5.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store float %i.cm, ptr %.sroa.5.0..sroa_idx.i.i.3, align 4, !noalias !358
  %i.co = add nuw nsw i64 %.024.i.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !354

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split
  %i.cp = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, %i.h
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.split

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.024.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.co, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.024.i.i.epil = phi i64 [ %.024.i.i.epil.init, %.epil.preheader ], [ %i.cv, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %.idx.epil = mul nuw nsw i64 %.024.i.i.epil, 12
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.epil ; 2 uses
  %i.cr = load <2 x float>, ptr %i.cq, align 4, !tbaa !74, !noalias !358
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !74, !noalias !358
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %.024.i.i.epil ; 2 uses
  store <2 x float> %i.cr, ptr %i.cu, align 4, !noalias !358
  %.sroa.5.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store float %i.ct, ptr %.sroa.5.0..sroa_idx.i.i.epil, align 4, !noalias !358
  %i.cv = add nuw nsw i64 %.024.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %bb.g, !llvm.loop !355

.loopexit.i:                                      ; preds = %bb.g, %.loopexit.i.loopexit.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !356
  br label %_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Normal3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i.us, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !356
  br label %_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Normal3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit

_ZNK4pbrt19ParameterDictionary11lookupArrayINS_7Normal3IfEEPFRKN4pstd6vectorIfNS4_3pmr21polymorphic_allocatorIfEEEERKNS_15ParsedParameterEEPFS3_PKfPKNS_7FileLocEEEESt6vectorIT_SaISP_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13ParameterTypeEPKciT0_T1_.exit: ; preds = %.loopexit.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt8SpectrumESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt8SpectrumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt8SpectrumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt8SpectrumEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #8

declare void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt15ParsedParameterC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(233) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !39
  %i.e = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %i.g, ptr %i.c, align 8, !tbaa !28
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !43
  %i.j = load i64, ptr %i.c, align 8, !tbaa !28
  store i64 %i.j, ptr %i.d, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !42
  store i8 %i.l, ptr %i.k, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !41
  %i.o = load ptr, ptr %0, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !39
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !43   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.v, ptr %i.b, align 8, !tbaa !28
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i19, label %._crit_edge.i.i18

.noexc.i19:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc.i19
  store ptr %i.x, ptr %i.q, align 8, !tbaa !43
  %i.y = load i64, ptr %i.b, align 8, !tbaa !28
  store i64 %i.y, ptr %i.s, align 8, !tbaa !42
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i18
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !42
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i18
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !tbaa.struct !386
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ai = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #28 ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !54 ; 5 uses
  %.not.i.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.not.i, label %.loopexit80, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = shl i64 %i.ao, 2                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.thread, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.thread: ; preds = %bb.g
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !84
  store ptr null, ptr %i.ak, align 8, !tbaa !72
  br label %iter.check125

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i: ; preds = %bb.g
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %i.ap, i64 noundef 4)
          to label %.noexc22 unwind label %bb.o, !inline_history !364 ; 14 uses

.noexc22:                                         ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.pre.i = load i64, ptr %i.am, align 8, !tbaa !54 ; 11 uses
  %.pre.i.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 14 uses
  %.not13.i.i = icmp eq i64 %.pre.i, 0
  br i1 %.not13.i.i, label %._crit_edge.i.i21, label %iter.check

iter.check:                                       ; preds = %.noexc22
  %.pre.i.pre.i97 = ptrtoaddr ptr %.pre.i.pre.i to i64
  %i.av = ptrtoaddr ptr %i.au to i64
  %min.iters.check = icmp ult i64 %.pre.i, 4
  %i.aw = sub i64 %.pre.i.pre.i97, %i.av
  %diff.check = icmp ugt i64 %i.aw, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check98 = icmp ult i64 %.pre.i, 32
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %.pre.i, 28
  %n.vec = and i64 %.pre.i, -32                   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.pre.i, i64 %index ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %wide.load = load <8 x float>, ptr %i.az, align 4, !tbaa !74
  %wide.load99 = load <8 x float>, ptr %i.ba, align 4, !tbaa !74
  %wide.load100 = load <8 x float>, ptr %i.bb, align 4, !tbaa !74
  %wide.load101 = load <8 x float>, ptr %i.bc, align 4, !tbaa !74
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 96
  store <8 x float> %wide.load, ptr %i.ay, align 4, !tbaa !74
end_hunk_1
begin_hunk_2_@_ZNK4pbrt19ParameterDictionary10GetTextureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = select i1 %.not.i, ptr %i.d, ptr %i.c    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not34 = icmp eq i64 %i.g, 0
  br i1 %.not34, label %._crit_edge.i.i23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = load ptr, ptr %2, align 8
  %i.l = icmp eq i64 %i.j, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.035 = phi ptr [ %i.e, %.lr.ph ], [ %i.au, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 2 uses
  %i.m = load ptr, ptr %.035, align 8, !tbaa !35  ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41
  %i.q = icmp eq i64 %i.p, %i.j
  br i1 %i.q, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !43
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.r, ptr %i.k, i64 %i.j)
  %.not31 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not31, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25: ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = icmp eq i64 %i.t, 7
  br i1 %i.u, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1954047348
  %i.y = getelementptr i8, ptr %i.v, i64 3
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = xor i32 %i.z, 1701999988
  %i.ab = or i32 %i.x, %i.aa
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32
  %.not32 = icmp eq i32 %i.ad, 0
  br i1 %.not32, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !58
  switch i64 %i.af, label %bb.e [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
  unreachable

bb.e:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
  unreachable

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  store i8 1, ptr %i.ai, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !39
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !28
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !43
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.as = phi ptr [ %i.aq, %.noexc.i ], [ %i.al, %bb.f ] ; 2 uses
  switch i64 %i.ao, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.at = load i8, ptr %i.am, align 1, !tbaa !42
  store i8 %i.at, ptr %i.as, align 1, !tbaa !42
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %bb.i

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.au, %i.h
  br i1 %.not, label %._crit_edge.i.i23, label %bb.b

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.av = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !41
  %i.ax = load ptr, ptr %0, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.j

._crit_edge.i.i23:                                ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ba, align 8, !tbaa !41
  store i8 0, ptr %i.az, align 8, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt19ParameterDictionary11GetRGBArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.74") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(108) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = select i1 %.not.i, ptr %i.c, ptr %i.b    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not38 = icmp eq i64 %i.f, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %i.j = load ptr, ptr %2, align 8
  %i.k = icmp eq i64 %i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35
  %.02839 = phi ptr [ %i.d, %.lr.ph ], [ %i.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35 ] ; 2 uses
  %i.l = load ptr, ptr %.02839, align 8, !tbaa !35 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41
  %i.p = icmp eq i64 %i.o, %i.i
  br i1 %i.p, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !43
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr %i.j, i64 %i.i)
  %i.r = icmp eq i32 %bcmp.i, 0
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = icmp eq i64 %i.t, 3
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %i.w = load i16, ptr %i.v, align 1
  %i.x = xor i16 %i.w, 26482
  %i.y = getelementptr i8, ptr %i.v, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = xor i16 %i.aa, 98
  %i.ac = or i16 %i.x, %i.ab
  %i.ad = icmp ne i16 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54 ; 4 uses
  %i.ai = urem i64 %i.ah, 3
  %i.aj = udiv exact i64 %i.ah, 3                 ; 2 uses
  %.not31 = icmp eq i64 %i.ai, 0
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  tail call void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.20) #27
  unreachable

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.al = icmp ugt i64 %i.ah, 2305843009213693950
  br i1 %i.al, label %.noexc, label %_ZNSt6vectorIN4pbrt3RGBESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27
  unreachable

_ZNSt6vectorIN4pbrt3RGBESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.f

.thread:                                          ; preds = %_ZNSt6vectorIN4pbrt3RGBESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge43

bb.f:                                             ; preds = %_ZNSt6vectorIN4pbrt3RGBESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.am = mul nuw nsw i64 %i.aj, 12               ; 3 uses
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #31 ; 12 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !395
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.an, i8 0, i64 %i.am, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.an, i64 %i.am
  %.pre = load i64, ptr %i.ag, align 8, !tbaa !54 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !396
  store ptr %scevgep.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !397
  %3 = udiv i64 %.pre, 3                          ; 6 uses
  %.not44 = icmp ult i64 %.pre, 3
  br i1 %.not44, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72 ; 8 uses
  %min.iters.check = icmp ult i64 %.pre, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph42
  %i.at = mul i64 %3, 12                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.at
  %scevgep57 = getelementptr i8, ptr %i.as, i64 %i.at
  %bound0 = icmp ult ptr %i.an, %scevgep57
  %bound1 = icmp ult ptr %i.as, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775800        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = mul nuw nsw i64 %index, 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au
  %wide.vec = load <24 x float>, ptr %i.av, align 4, !tbaa !74, !alias.scope !398
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %index
  store <24 x float> %wide.vec, ptr %i.aw, align 4, !tbaa !74, !alias.scope !399, !noalias !398
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !390

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge43, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph42 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %.idx50.prol = mul nuw nsw i64 %indvars.iv.prol, 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx50.prol ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !74
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %indvars.iv.prol ; 2 uses
  %i.bc = load <2 x float>, ptr %i.ay, align 4, !tbaa !74
  store <2 x float> %i.bc, ptr %i.bb, align 4, !tbaa !74
  %.sroa.5.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store float %i.ba, ptr %.sroa.5.0..sroa_idx.prol, align 4, !tbaa !74
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !391

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.ph, %3
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge43, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.idx50 = mul nuw nsw i64 %indvars.iv, 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx50 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !74
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.bj = load <2 x float>, ptr %i.bf, align 4, !tbaa !74
  store <2 x float> %i.bj, ptr %i.bi, align 4, !tbaa !74
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store float %i.bh, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.idx50.1 = mul nuw nsw i64 %indvars.iv.next, 12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx50.1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !74
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %indvars.iv.next ; 2 uses
  %i.bo = load <2 x float>, ptr %i.bk, align 4, !tbaa !74
  store <2 x float> %i.bo, ptr %i.bn, align 4, !tbaa !74
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store float %i.bm, ptr %.sroa.5.0..sroa_idx.1, align 4, !tbaa !74
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.idx50.2 = mul nuw nsw i64 %indvars.iv.next.1, 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx50.2 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !74
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %indvars.iv.next.1 ; 2 uses
  %i.bt = load <2 x float>, ptr %i.bp, align 4, !tbaa !74
  store <2 x float> %i.bt, ptr %i.bs, align 4, !tbaa !74
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.br, ptr %.sroa.5.0..sroa_idx.2, align 4, !tbaa !74
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %.idx50.3 = mul nuw nsw i64 %indvars.iv.next.2, 12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx50.3 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !74
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %indvars.iv.next.2 ; 2 uses
  %i.by = load <2 x float>, ptr %i.bu, align 4, !tbaa !74
  store <2 x float> %i.by, ptr %i.bx, align 4, !tbaa !74
  %.sroa.5.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store float %i.bw, ptr %.sroa.5.0..sroa_idx.3, align 4, !tbaa !74
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %3
  br i1 %exitcond.not.3, label %._crit_edge43, label %scalar.ph, !llvm.loop !392

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.02839, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bz, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge43:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.thread, %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  store i8 1, ptr %i.ca, align 8, !tbaa !71
  br label %bb.g

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge43, %._crit_edge
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt19ParameterDictionary9GetOneRGBERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.79") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(108) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = select i1 %.not.i, ptr %i.c, ptr %i.b    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not23 = icmp eq i64 %i.f, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %i.j = load ptr, ptr %2, align 8
  %i.k = icmp eq i64 %i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19
  %.01724 = phi ptr [ %i.d, %.lr.ph ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19 ] ; 2 uses
  %i.l = load ptr, ptr %.01724, align 8, !tbaa !35 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41
  %i.p = icmp eq i64 %i.o, %i.i
  br i1 %i.p, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !43
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr %i.j, i64 %i.i)
  %i.r = icmp eq i32 %bcmp.i, 0
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = icmp eq i64 %i.t, 3
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %i.w = load i16, ptr %i.v, align 1
  %i.x = xor i16 %i.w, 26482
  %i.y = getelementptr i8, ptr %i.v, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = xor i16 %i.aa, 98
  %i.ac = or i16 %i.x, %i.ab
  %i.ad = icmp ne i16 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54
  %i.ai = icmp ult i64 %i.ah, 3
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.aj, ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #27
  unreachable

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.01724, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.ap, align 4, !tbaa !401
  %i.aq = load <2 x float>, ptr %i.am, align 4, !tbaa !74
  store <2 x float> %i.aq, ptr %0, align 4, !tbaa !74
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ao, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !74
  br label %bb.f

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN4pbrt19ParameterDictionary16UpgradeBlackbodyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(108) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = select i1 %.not.i, ptr %i.c, ptr %i.b    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not22 = icmp eq i64 %i.f, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41   ; 3 uses
  %i.j = load ptr, ptr %1, align 8
  %i.k = icmp eq i64 %i.i, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19, %bb.a
  %.016.lcssa = phi float [ 1.000000e+00, %bb.a ], [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19 ]
  ret float %.016.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19
  %.024 = phi ptr [ %i.d, %.lr.ph ], [ %i.ao, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19 ] ; 2 uses
  %.01623 = phi float [ 1.000000e+00, %.lr.ph ], [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19 ] ; 5 uses
  %i.l = load ptr, ptr %.024, align 8, !tbaa !35  ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41
  %i.p = icmp eq i64 %i.o, %i.i
  br i1 %i.p, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !43
  %bcmp.i = tail call i32 @bcmp(ptr %i.q, ptr %i.j, i64 %i.i)
  %i.r = icmp eq i32 %bcmp.i, 0
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = icmp eq i64 %i.t, 9
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 7237111339576028258
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i64
  %i.ab = xor i64 %i.aa, 121
  %i.ac = or i64 %i.x, %i.ab
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54
  %.not17 = icmp eq i64 %i.ah, 2
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  tail call void @_ZN4pbrt9ErrorExitEPKNS_7FileLocEPKc(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.22) #27
  unreachable

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !39, !alias.scope !657
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !41, !alias.scope !657
  store i8 0, ptr %i.cr, align 8, !tbaa !42, !alias.scope !657
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !43, !alias.scope !657
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(4) %2) #28 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !41, !alias.scope !657
  %i.cw = add i64 %i.cv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #30
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !43, !alias.scope !657 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !41 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !41
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #27
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !43
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !42
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !43    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !42
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #29
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.56, %bb.c ], [ @.str.57, %bb.r ], [ @.str.55, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #27
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !103
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !42
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !42
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt19ParameterDictionary11lookupArrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFRKN4pstd6vectorIS7_NS8_3pmr21polymorphic_allocatorIS7_EEEERKNS_15ParsedParameterEEPFS7_PKS7_PKNS_7FileLocEEEESt6vectorIT_SaIST_EERSL_NS_13ParameterTypeEPKciT0_T1_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.69") align 8 %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = select i1 %.not.i, ptr %i.d, ptr %i.c    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not26 = icmp eq i64 %i.g, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = load ptr, ptr %2, align 8
  %i.l = icmp eq i64 %i.j, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21
  %.01727 = phi ptr [ %i.e, %.lr.ph ], [ %i.db, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21 ] ; 2 uses
  %i.m = load ptr, ptr %.01727, align 8, !tbaa !35 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41
  %i.q = icmp eq i64 %i.p, %i.j
  br i1 %i.q, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !43
  %bcmp.i = tail call i32 @bcmp(ptr %i.r, ptr %i.k, i64 %i.j)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41   ; 3 uses
  %i.v = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #28
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %.critedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !43
  %bcmp.i18 = tail call i32 @bcmp(ptr %i.y, ptr nonnull %4, i64 %i.u)
  %i.z = icmp eq i32 %bcmp.i18, 0
  br i1 %i.z, label %.critedge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21

.critedge:                                        ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr %6(ptr noundef nonnull align 8 dereferenceable(233) %i.m) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %5, ptr %i.a, align 4, !tbaa !86, !noalias !663
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !58, !noalias !663 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  tail call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.65, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #27, !noalias !663
  unreachable

bb.f:                                             ; preds = %.critedge
  %i.af = sext i32 %5 to i64                      ; 3 uses
  %i.ag = urem i64 %i.ac, %i.af
  %i.ah = udiv exact i64 %i.ac, %i.af             ; 8 uses
  %.not.i19 = icmp eq i64 %i.ag, 0
  br i1 %.not.i19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @_ZN4pbrt9ErrorExitIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #27, !noalias !663
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  store i8 1, ptr %i.aj, align 8, !tbaa !71, !noalias !663
  %i.ak = icmp ugt i64 %i.ah, 288230376151711743
  br i1 %i.ak, label %.noexc.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i

.noexc.i:                                         ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #27, !noalias !663
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i: ; preds = %bb.h
  %i.al = shl nuw nsw i64 %i.ah, 5
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #31, !noalias !663 ; 5 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !144, !alias.scope !663
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !145, !alias.scope !663
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.am, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i ] ; 4 uses
  %.057.i.i.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ah, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.ap, ptr %.08.i.i.i.i.i.i.prol, align 8, !tbaa !39, !noalias !663
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.ap, align 8, !tbaa !42, !noalias !663
  %i.ar = add i64 %.057.i.i.i.i.i.i.prol, -1      ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !660

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.am, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.unr = phi i64 [ %i.ah, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.at = icmp ult i64 %i.ah, 8
  br i1 %i.at, label %.lr.ph.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 25 uses
  %.057.i.i.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.au, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !663
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.au, align 8, !tbaa !42, !noalias !663
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !39, !noalias !663
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ay, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.ax, align 8, !tbaa !42, !noalias !663
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !39, !noalias !663
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  store i64 0, ptr %i.bb, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.ba, align 8, !tbaa !42, !noalias !663
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !39, !noalias !663
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 104
  store i64 0, ptr %i.be, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.bd, align 8, !tbaa !42, !noalias !663
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 144 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !39, !noalias !663
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 136
  store i64 0, ptr %i.bh, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.bg, align 8, !tbaa !42, !noalias !663
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 160
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 176 ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !39, !noalias !663
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 168
  store i64 0, ptr %i.bk, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.bj, align 8, !tbaa !42, !noalias !663
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 192
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 208 ; 2 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !39, !noalias !663
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 200
  store i64 0, ptr %i.bn, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.bm, align 8, !tbaa !42, !noalias !663
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 224
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 240 ; 2 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !39, !noalias !663
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 232
  store i64 0, ptr %i.bq, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.bp, align 8, !tbaa !42, !noalias !663
  %i.br = add i64 %.057.i.i.i.i.i.i, -8           ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.7, label %.lr.ph.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !661

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bs, %.lr.ph.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa, ptr %i.bt, align 8, !tbaa !146, !alias.scope !663
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i
  %.023.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !663
  %i.by = mul i64 %.023.i, %i.af
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !78, !noalias !663
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.by
  invoke void %7(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.bv)
          to label %bb.j unwind label %bb.p, !noalias !663

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %.023.i ; 8 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43, !noalias !663 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  %i.cf = load ptr, ptr %8, align 8, !tbaa !43, !noalias !663 ; 5 uses
  %i.cg = icmp eq ptr %i.cf, %i.bw                ; 2 uses
  br i1 %i.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  br i1 %i.cg, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.j
  br i1 %i.cg, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !41, !noalias !663 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  switch i64 %i.ch, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.cj = load i8, ptr %i.cf, align 1, !tbaa !42, !noalias !663
  store i8 %i.cj, ptr %i.cc, align 1, !tbaa !42, !noalias !663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.cf, i64 %i.ch, i1 false), !noalias !663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.ck = load i64, ptr %i.bx, align 8, !tbaa !41, !noalias !663 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !41, !noalias !663
  %i.cm = load ptr, ptr %i.cb, align 8, !tbaa !43, !noalias !663
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ck
  store i8 0, ptr %i.cn, align 1, !tbaa !42, !noalias !663
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !43, !noalias !663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !43, !noalias !663
  %i.cp = load <2 x i64>, ptr %i.bx, align 8, !tbaa !42, !noalias !663
  store <2 x i64> %i.cp, ptr %i.co, align 8, !tbaa !42, !noalias !663
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cq = load i64, ptr %i.cd, align 8, !tbaa !42, !noalias !663
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !43, !noalias !663
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cs = load <2 x i64>, ptr %i.bx, align 8, !tbaa !42, !noalias !663
  store <2 x i64> %i.cs, ptr %i.cr, align 8, !tbaa !42, !noalias !663
  %.not.i.i20 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.cc, ptr %8, align 8, !tbaa !43, !noalias !663
  store i64 %i.cq, ptr %i.bw, align 8, !tbaa !42, !noalias !663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.bw, ptr %8, align 8, !tbaa !43, !noalias !663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.ct = phi ptr [ %i.cc, %bb.n ], [ %i.bw, %bb.o ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.bx, align 8, !tbaa !41, !noalias !663
  store i8 0, ptr %i.ct, align 1, !tbaa !42, !noalias !663
  %i.cu = load ptr, ptr %8, align 8, !tbaa !43, !noalias !663 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bw
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.cw = load i64, ptr %i.bw, align 8, !tbaa !42, !noalias !663
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #29, !noalias !663
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !663
  %i.cy = add nuw i64 %.023.i, 1                  ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.ah
  br i1 %i.cz, label %bb.i, label %.loopexit, !llvm.loop !662

bb.p:                                             ; preds = %bb.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !663
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #28
  resume { ptr, i32 } %i.da

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %.01727, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.db, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread21, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !144    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !43 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !42
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !664

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !144
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA2_KcJRA18_S2_S4_RiS6_RmEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(18) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 42, i64 noundef 0) #28
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 115, i64 noundef 0) #28
  %.not21 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 100, i64 noundef 0) #28
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.x
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq i64 %i.d, -1
  br i1 %.not22, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not21, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.i = load ptr, ptr %8, align 8, !tbaa !43     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.j, ptr %11, align 8, !tbaa !39, !alias.scope !675
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !41, !alias.scope !675
  store i8 0, ptr %i.j, align 8, !tbaa !42, !alias.scope !675
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !125, !noalias !675 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !675 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126, !noalias !675 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %11, align 8, !tbaa !43, !alias.scope !675 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %11, align 8, !tbaa !43   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #28, !noalias !676
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ae, ptr %10, align 8, !tbaa !39, !alias.scope !676
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !41, !alias.scope !676
  store i8 0, ptr %i.ae, align 8, !tbaa !42, !alias.scope !676
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ad, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %10, align 8, !tbaa !43, !alias.scope !676
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #28 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !41, !alias.scope !676
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #30
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %10, align 8, !tbaa !43, !alias.scope !676 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body31, label %.body31.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !41
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #27
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.au = load ptr, ptr %10, align 8, !tbaa !43
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.au, i64 noundef %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.o ; 0 uses
end_hunk_3
