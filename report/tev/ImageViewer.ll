Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageViewer?download=true
inline.NumInlined: 16088
inline.NumDeleted: 8272
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN3tev11ImageViewer26setBrightnessLimitSoftnessEf:bb.a
  %i.k = load float, ptr %i.j, align 8, !tbaa !87 ; 2 uses
  %i.l = fcmp olt float %i.c, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 260
  %i.n = load float, ptr %i.m, align 4, !tbaa !87 ; 2 uses
  %i.o = select i1 %i.l, float %i.k, float %i.c   ; 2 uses
  %i.p = fcmp olt float %i.n, %i.o
  %i.q = select i1 %i.p, float %i.n, float %i.o
  store float %i.q, ptr %i.f, align 4, !tbaa !393
  br label %_ZN7nanogui6Slider9set_valueEf.exit

_ZN7nanogui6Slider9set_valueEf.exit:              ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !336  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46, !noalias !1104
  store float %i.c, ptr %4, align 16, !tbaa !220, !noalias !1104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46, !noalias !1105
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8, !noalias !1105
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.u, align 8, !tbaa !366, !noalias !1105
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.w, ptr %3, align 8, !tbaa !367, !noalias !1105
  store i64 500, ptr %i.t, align 8, !tbaa !368, !noalias !1105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46, !noalias !1105
  store ptr @.str.132, ptr %2, align 8, !tbaa !358, !noalias !1105
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 28, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !359, !noalias !1105
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !371, !noalias !1105
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %3, ptr %i.y, align 8, !tbaa !373, !noalias !1105
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 9, ptr %i.z, align 8, !tbaa !374, !noalias !1105
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !220, !noalias !1105
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.aa, align 8, !tbaa !216, !noalias !1105
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.132, i64 28, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN7nanogui6Slider9set_valueEf.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46, !noalias !1105
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !375, !noalias !1107 ; 8 uses
  %i.ac = icmp ult i64 %i.ab, -9
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %3, align 8, !tbaa !367, !noalias !1107
  %i.ae = icmp ult i64 %i.ab, 23
  br i1 %i.ae, label %bb.d, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.c
  %i.af = or i64 %i.ab, 7                         ; 2 uses
  %i.ag = icmp eq i64 %i.af, 23
  %i.ah = add nuw i64 %i.af, 1
  %i.ai = select i1 %i.ag, i64 25, i64 %i.ah      ; 2 uses
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #47
          to label %.noexc.i unwind label %bb.h, !noalias !1105 ; 2 uses

.noexc.i:                                         ; preds = %.thread.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !220, !alias.scope !1107
  %i.al = or i64 %i.ai, 1
  store i64 %i.al, ptr %5, align 8, !alias.scope !1107
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ab, ptr %i.am, align 8, !tbaa !220, !alias.scope !1107
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = trunc nuw nsw i64 %i.ab to i8
  %i.ao = shl nuw nsw i8 %i.an, 1
  store i8 %i.ao, ptr %5, align 8, !alias.scope !1107
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc.i
  %.017.i.i.i.i = phi ptr [ %i.aj, %.noexc.i ], [ %i.ap, %bb.d ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i.i.i, ptr align 1 %i.ad, i64 %i.ab, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.018.i.i.i.i = phi ptr [ %i.ap, %bb.d ], [ %.017.i.i.i.i, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 %i.ab
  store i8 0, ptr %i.aq, align 1, !tbaa !220
  %i.ar = load ptr, ptr %3, align 8, !tbaa !367, !noalias !1105 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.w
  br i1 %.not.i.i.i, label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.ar) #46, !noalias !1105
  br label %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.h:                                             ; preds = %_ZN7nanogui6Slider9set_valueEf.exit, %.thread.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !367, !noalias !1105 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.at, %i.w
  br i1 %.not.i.i7.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.at) #46, !noalias !1105
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i ], [ %i.cc, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4 ]
  resume { ptr, i32 } %common.resume.op

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit8.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !1105
  br label %common.resume

_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46, !noalias !1105
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46, !noalias !1104
  %i.au = load i8, ptr %5, align 8                ; 3 uses
  %i.av = trunc i8 %i.au to i1                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.az = select i1 %i.av, ptr %i.ax, ptr %i.ay   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = lshr i8 %i.au, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = select i1 %i.av, i64 %i.bb, i64 %i.bd   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.s, i64 152 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8             ; 2 uses
  %i.bh = trunc i8 %i.bg to i1                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = lshr i8 %i.bg, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = select i1 %i.bh, i64 %i.bj, i64 %i.bl
  %.not.i.i = icmp eq i64 %i.be, %i.bm
  br i1 %.not.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i: ; preds = %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 153
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = select i1 %i.bh, ptr %i.bp, ptr %i.bn
  %bcmp.i.i = call i32 @bcmp(ptr %i.az, ptr %i.bq, i64 %i.be)
  %i.br = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.br, label %_ZN7nanogui5Label11set_captionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i: ; preds = %_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i
  %i.bs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef %i.az, i64 noundef %i.be)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i unwind label %bb.k ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i
  %.pre.pre = load i8, ptr %5, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i64 -1, ptr %i.bt, align 8, !tbaa !220
  br label %_ZN7nanogui5Label11set_captionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

_ZN7nanogui5Label11set_captionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i
  %i.bu = phi i8 [ %.pre.pre, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i ], [ %i.au, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i ]
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.j, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.j:                                             ; preds = %_ZN7nanogui5Label11set_captionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !220
  %i.bx = load i64, ptr %5, align 8
  %i.by = and i64 %i.bx, -2
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.by) #48
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN7nanogui5Label11set_captionENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !249
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 204
  store float %i.c, ptr %i.cb, align 4, !tbaa !1108
  ret void

bb.k:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load i8, ptr %5, align 8
  %i.ce = trunc i8 %i.cd to i1
  br i1 %i.ce, label %bb.l, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4

bb.l:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr %i.aw, align 8, !tbaa !220
  %i.cg = load i64, ptr %5, align 8
  %i.ch = and i64 %i.cg, -2
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ch) #48
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7nanogui8FloatBoxIfEC2EPNS_6WidgetEf(ptr noundef nonnull align 16 dereferenceable(488) %0, ptr noundef %1, float noundef %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i:
  %3 = alloca [50 x i8], align 16                 ; 6 uses
  tail call void @_ZN7nanogui7TextBoxC2EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(448) %0, ptr noundef %1, ptr nonnull @.str.338, i64 8)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7nanogui8FloatBoxIfEE, i64 16), ptr %0, align 16, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store i8 8, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 449 ; 2 uses
  store i32 1731472933, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load i8, ptr %i.c, align 16
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 1, ptr %i.f, align 8, !tbaa !220
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !220
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i

bb.b:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i
  store i8 2, ptr %i.c, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 177
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.h, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  store i8 48, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.k, align 1, !tbaa !220
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull @.str.341, i64 noundef 38)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 476
  store <2 x float> <float 1.000000e-01, float f0xFF7FFFFF>, ptr %i.n, align 4, !tbaa !87
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 484
  store float f0x7F7FFFFF, ptr %i.o, align 4, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %4 = load i8, ptr %i.a, align 16
  %5 = trunc i8 %4 to i1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 464
  %7 = load ptr, ptr %6, align 16
  %8 = select i1 %5, ptr %7, ptr %i.b
  %9 = fcmp olt float %2, f0xFF7FFFFF
  %10 = fcmp ogt float %2, f0x7F7FFFFF
  %..i.i = select i1 %10, float f0x7F7FFFFF, float %2
  %.0.i.i = select i1 %9, float f0xFF7FFFFF, float %..i.i
  %11 = fpext float %.0.i.i to double
  %12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 50, ptr noundef %8, double noundef %11) #46 ; 0 uses
  %13 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #46 ; 3 uses
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %15 = load i8, ptr %14, align 8                 ; 2 uses
  %16 = trunc i8 %15 to i1                        ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %18 = load i64, ptr %17, align 16
  %19 = lshr i8 %15, 1
  %20 = zext nneg i8 %19 to i64
  %21 = select i1 %16, i64 %18, i64 %20
  %.not.i.i.i = icmp eq i64 %13, %21
  br i1 %.not.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i: ; preds = %bb.c
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 153
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %24 = load ptr, ptr %23, align 8
  %25 = select i1 %16, ptr %24, ptr %22
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %3, ptr %25, i64 %13)
  %26 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %26, label %bb.d, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i: ; preds = %bb.c, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i
  %27 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %3, i64 noundef %13)
          to label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %28, align 16, !tbaa !220
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSINS_17basic_string_viewIcS2_EETnNS_9enable_ifIXaasr33__can_be_converted_to_string_viewIcS2_T_EE5valuentsr17__is_same_uncvrefISA_S5_EE5valueEiE4typeELi0EEERS5_RKSA_.exit.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 149 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !408, !range !331, !noundef !385
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %_ZN7nanogui7TextBox13set_spinnableEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.p, align 1, !tbaa !408
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.r, align 16, !tbaa !220
  br label %_ZN7nanogui7TextBox13set_spinnableEb.exit

_ZN7nanogui7TextBox13set_spinnableEb.exit:        ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__assign_shortEPKcm.exit.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load i8, ptr %i.a, align 16
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !220
  %i.x = load i64, ptr %i.a, align 16
  %i.y = and i64 %i.x, -2
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #48
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @_ZN7nanogui7TextBoxD2Ev(ptr noundef nonnull align 16 dead_on_return(448) dereferenceable(448) %0) #46
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7nanogui8FloatBoxIfE9set_valueEf(ptr noundef nonnull align 16 dereferenceable(488) %0, float noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [50 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.c = load i8, ptr %i.b, align 16
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 449
  %i.h = select i1 %i.d, ptr %i.f, ptr %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.j = load float, ptr %i.i, align 16, !tbaa !435 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.l = load float, ptr %i.k, align 4, !tbaa !434 ; 2 uses
  %i.m = fcmp olt float %1, %i.j
  %i.n = fcmp ogt float %1, %i.l
  %..i = select i1 %i.n, float %i.l, float %1
  %.0.i = select i1 %i.m, float %i.j, float %..i
  %i.o = fpext float %.0.i to double
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 50, ptr noundef %i.h, double noundef %i.o) #46 ; 0 uses
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #46 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8               ; 2 uses
  %i.t = trunc i8 %i.s to i1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i64, ptr %i.u, align 16
  %i.w = lshr i8 %i.s, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = select i1 %i.t, i64 %i.v, i64 %i.x
  %.not.i.i = icmp eq i64 %i.q, %i.y
  br i1 %.not.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %i.t, ptr %i.ab, ptr %i.z
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.a, ptr %i.ac, i64 %i.q)
  %i.ad = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ad, label %_ZN7nanogui7TextBox9set_valueENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i: ; preds = %bb.a, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull %i.a, i64 noundef %i.q) ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.af, align 16, !tbaa !220
  br label %_ZN7nanogui7TextBox9set_valueENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

_ZN7nanogui7TextBox9set_valueENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

declare float @glfwGetWindowSdrWhiteLevel(ptr noundef) local_unnamed_addr #5

declare void @_ZNSt3__19to_stringEf(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, float noundef) local_unnamed_addr #5

declare void @_ZN7nanogui8ComboBoxC1EPNS_6WidgetERKNSt3__16vectorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS8_ISA_EEEE(ptr noundef nonnull align 16 dereferenceable(500), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !348    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !350  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !220
  %i.i = load i64, ptr %i.d, align 8
  %i.j = and i64 %i.i, -2
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #48
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyB8ne180100IS6_vvEEvRS7_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !348
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !350
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !349
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.p) #48
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7nanogui8FloatBoxIfE12set_callbackERKNSt3__18functionIFvfEEE(ptr noundef nonnull align 16 dereferenceable(488) %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::function.210", align 16 ; 5 uses
  %3 = alloca %class.anon.1535, align 16          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !319 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.d, align 16, !tbaa !319
  br label %_ZNSt3__18functionIFvfEEC2ERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.b, %1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %3, ptr %i.f, align 16, !tbaa !319
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 16 dereferenceable(48) %3), !inline_history !1109
  br label %_ZNSt3__18functionIFvfEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !1109
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.m, ptr %i.n, align 16, !tbaa !319
  br label %_ZNSt3__18functionIFvfEEC2ERKS2_.exit

_ZNSt3__18functionIFvfEEC2ERKS2_.exit:            ; preds = %bb.b, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %0, ptr %i.o, align 16, !tbaa !437
  %i.p = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #47
          to label %.noexc unwind label %bb.k     ; 12 uses

.noexc:                                           ; preds = %_ZNSt3__18functionIFvfEEC2ERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVNSt3__110__function6__funcIZN7nanogui8FloatBoxIfE12set_callbackERKNS_8functionIFvfEEEEUlRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEE_NSD_ISI_EEFbSH_EEE, i64 16), ptr %i.p, align 16, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !319 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.sink.split.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.u = icmp eq ptr %i.s, %3
  br i1 %i.u, label %bb.g, label %.noexc4.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.q, ptr %i.v, align 16, !tbaa !319
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %i.q)
          to label %bb.h unwind label %_ZNSt3__110unique_ptrINS_10__function6__baseIFbRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_22__allocator_destructorINS6_INS1_6__funcIZN7nanogui8FloatBoxIfE12set_callbackERKNS_8functionIFvfEEEEUlSA_E_NS6_ISN_EESB_EEEEEEED2B8ne180100Ev.exit7.i.i.i, !inline_history !1110

.noexc4.i.i.i.i:                                  ; preds = %bb.f
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.sink.split.i.i.i unwind label %_ZNSt3__110unique_ptrINS_10__function6__baseIFbRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_22__allocator_destructorINS6_INS1_6__funcIZN7nanogui8FloatBoxIfE12set_callbackERKNS_8functionIFvfEEEEUlSA_E_NS6_ISN_EESB_EEEEEEED2B8ne180100Ev.exit7.i.i.i, !inline_history !1110

_ZNSt3__110unique_ptrINS_10__function6__baseIFbRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEENS_22__allocator_destructorINS6_INS1_6__funcIZN7nanogui8FloatBoxIfE12set_callbackERKNS_8functionIFvfEEEEUlSA_E_NS6_ISN_EESB_EEEEEEED2B8ne180100Ev.exit7.i.i.i: ; preds = %.noexc4.i.i.i.i, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 80) #48
  br label %.body

.sink.split.i.i.i:                                ; preds = %.noexc4.i.i.i.i, %.noexc
  %.sink.i.i.i = phi ptr [ null, %.noexc ], [ %i.ac, %.noexc4.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %.sink.i.i.i, ptr %i.ae, align 16, !tbaa !319
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i.i.i, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ag = load ptr, ptr %i.o, align 16, !tbaa !437
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1894 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
  %.v.i.i.i = select i1 %i.x, i64 -32, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %.v.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !745, !noalias !1894 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !746, !noalias !1894
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.01215.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.k, !llvm.loop !65

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01215.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01215.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !748, !noalias !1894 ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #46, !noalias !1894 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr %.sroa.0.0.copyload, i64 %i.ag), !noalias !1894
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ah = icmp eq i64 %i.af, %.sroa.2.0.copyload
  %i.ai = select i1 %.not.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !749, !noalias !1894 ; 6 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.am = icmp sgt i64 %i.t, -1
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = trunc i64 %i.t to i32
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ap
  br label %_ZNK3fmt3v127context3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.ar = icmp samesign ugt i32 %i.ak, 14
  br i1 %i.ar, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = shl nuw nsw i32 %i.ak, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.t, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.aq, %bb.n ], [ %i.j, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !220 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc73 = trunc i128 %storemerge to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 = lshr i128 %storemerge, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc89 = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 to i32
  %.sroa.010.sroa.11.0.extract.shift61 = lshr i128 %storemerge, 64
  %.sroa.010.sroa.11.0.extract.trunc62 = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift61 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !656 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.227) #49
  unreachable

_ZNK3fmt3v127context3argEi.exit.thread37.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ak, %bb.p ]
  %.sink107 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.039.ph = phi i32 [ %i.p, %bb.g ], [ %i.aw, %bb.p ]
  %i.ax = zext nneg i32 %.sink to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sink107, i64 %i.ax
  %.sroa.010.0.copyload25 = load i128, ptr %i.ay, align 16, !tbaa !220 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.010.0.copyload25 to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift102 = lshr i128 %.sroa.010.0.copyload25, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift102 to i32
  %.sroa.010.sroa.11.0.extract.shift = lshr i128 %.sroa.010.0.copyload25, 64
  %.sroa.010.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread37:         ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.010.sroa.0.sroa.11.0 = phi i32 [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc89, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 4 uses
  %.sroa.010.sroa.0.sroa.0.0 = phi i32 [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc73, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 7 uses
  %.sroa.010.sroa.11.0 = phi i64 [ %.sroa.010.sroa.11.0.extract.trunc62, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  %.sroa.23.039 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.23.039.ph, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  switch i32 %.sroa.23.039, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63.a = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65.a = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63.a
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65.a, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.240) #49
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.q, %bb.u, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.239) #49
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !227
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  store i32 0, ptr %i.a, align 4, !tbaa !751
  %i.b = load i8, ptr %0, align 1, !tbaa !220     ; 3 uses
  %i.c = add i8 %i.b, -48
  %or.cond23 = icmp ult i8 %i.c, 10
  br i1 %or.cond23, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %scevgep.i = getelementptr i8, ptr %i.g, i64 %i.d ; 2 uses
  %i.h = sub i64 %i.d, %i.e
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.h ; 2 uses
  %i.i = zext nneg i8 %i.b to i32
  %i.j = add nsw i32 %i.i, -48                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i35 = icmp eq ptr %i.k, %1
  br i1 %.not34.i35, label %.critedge.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = mul i32 %i.r, 10
  %i.m = zext nneg i8 %i.s to i32
  %i.n = add nsw i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %.not34.i = icmp eq ptr %i.p, %1
  br i1 %.not34.i, label %.critedge.i, label %.lr.ph, !llvm.loop !64

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.r = phi i32 [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 4 uses
  %.0.i37 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.b ]
  %.027.i36 = phi i32 [ %i.r, %bb.c ], [ 0, %bb.b ]
  %i.s = load i8, ptr %i.q, align 1, !tbaa !220   ; 2 uses
  %i.t = add i8 %i.s, -48
  %or.cond.i = icmp ult i8 %i.t, 10
  br i1 %or.cond.i, label %bb.c, label %..critedge.i_crit_edge, !llvm.loop !64

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !64

.critedge.i:                                      ; preds = %bb.c, %..critedge.i_crit_edge, %bb.b
  %.027.i.lcssa = phi i32 [ %.027.i36, %..critedge.i_crit_edge ], [ 0, %bb.b ], [ %i.r, %bb.c ]
  %.lcssa = phi i32 [ %i.r, %..critedge.i_crit_edge ], [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.0.i37, %..critedge.i_crit_edge ], [ %scevgep.i, %bb.b ], [ %scevgep.i, %bb.c ]
  %.lcssa.i = phi ptr [ %i.q, %..critedge.i_crit_edge ], [ %scevgep37.i, %bb.b ], [ %scevgep37.i, %bb.c ] ; 2 uses
  %i.u = ptrtoint ptr %.lcssa.i to i64
  %i.v = ptrtoint ptr %0 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp slt i64 %i.w, 10
  br i1 %i.x, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = icmp eq i64 %i.w, 10
  br i1 %i.y, label %bb.e, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = zext i32 %.027.i.lcssa to i64
  %i.aa = mul nuw nsw i64 %i.z, 10
  %i.ab = load i8, ptr %.0.lcssa.i, align 1, !tbaa !220
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967294
  %i.af = add nuw nsw i64 %i.ae, %i.aa
  %i.ag = icmp samesign ugt i64 %i.af, 2147483647
  %i.ah = icmp eq i32 %.lcssa, -1
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit: ; preds = %.critedge.i
  %.old = icmp eq i32 %.lcssa, -1
  br i1 %.old, label %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread, label %bb.f

_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit.thread: ; preds = %bb.e, %bb.d, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.224) #49
  unreachable

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i.exit
  store i32 %.lcssa, ptr %2, align 4, !tbaa !227
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.ai = icmp eq i8 %i.b, 123
  br i1 %i.ai, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not = icmp eq ptr %i.aj, %1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !220
  switch i8 %i.ak, label %bb.l [
    i8 125, label %bb.j
    i8 58, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !371 ; 3 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.k, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.232) #49
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.j
  %i.ao = add nuw nsw i32 %i.am, 1
  store i32 %i.ao, ptr %i.al, align 8, !tbaa !371
  store i32 %i.am, ptr %3, align 8
  store i32 1, ptr %i.a, align 4, !tbaa !751
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  store ptr %4, ptr %5, align 8, !tbaa !1895
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.ap, align 8, !tbaa !1896
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !216
  %i.ar = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.aj, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.l, %bb.h
  %.0 = phi ptr [ %i.aj, %bb.h ], [ %i.ar, %bb.l ], [ %i.aj, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ] ; 3 uses
  %.not22 = icmp eq ptr %.0, %1
  br i1 %.not22, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i8, ptr %.0, align 1, !tbaa !220
  %i.at = icmp eq i8 %i.as, 125
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.a, align 4, !tbaa !751
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.g
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.229) #49
  unreachable

bb.q:                                             ; preds = %bb.f, %bb.o
  %.sroa.3.0 = phi i32 [ 0, %bb.f ], [ %.sroa.3.0.pre, %bb.o ]
  %.sroa.0.0 = phi ptr [ %.lcssa.i, %bb.f ], [ %i.au, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !220     ; 5 uses
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.c, 48
  br i1 %.not28, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %scevgep.i = getelementptr i8, ptr %i.f, i64 %i.b ; 2 uses
  %i.g = sub i64 %i.b, %i.a
  %scevgep37.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  %i.h = zext nneg i8 %i.c to i32
  %i.i = add nsw i32 %i.h, -48                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not34.i47 = icmp eq ptr %i.j, %1
  br i1 %.not34.i47, label %.critedge.i, label %.lr.ph50

bb.d:                                             ; preds = %.lr.ph50
end_hunk_1
begin_hunk_2_@_ZN4tlog6Logger6globalEv:bb.a

bb.n:                                             ; preds = %.loopexit, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.loopexit ], [ %i.l, %bb.j ]
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4tlog6Logger6globalEvE6logger) #46
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4tlog13ConsoleOutput6globalEv() local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4tlog13ConsoleOutput6globalEvE13consoleOutput acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.g, !prof !773

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4tlog13ConsoleOutput6globalEvE13consoleOutput) #46
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %bb.d unwind label %bb.h       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4tlog13ConsoleOutputC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt3__110shared_ptrIN4tlog13ConsoleOutputEEC2B8ne180100IS2_vEEPT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4tlog13ConsoleOutput6globalEvE13consoleOutput, ptr noundef nonnull %i.d)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3__110shared_ptrIN4tlog13ConsoleOutputEED2B8ne180100Ev, ptr nonnull @_ZZN4tlog13ConsoleOutput6globalEvE13consoleOutput, ptr nonnull @__dso_handle) #46 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4tlog13ConsoleOutput6globalEvE13consoleOutput) #46
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  ret ptr @_ZZN4tlog13ConsoleOutput6globalEvE13consoleOutput

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.f, %bb.h ], [ %i.g, %bb.i ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4tlog13ConsoleOutput6globalEvE13consoleOutput) #46
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrIN4tlog7IOutputEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !777  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #46, !inline_history !15
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #46
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEEC2B8ne180100ESt16initializer_listIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::__1::__exception_guard_exceptions.920", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  store ptr %0, ptr %3, align 8, !tbaa !779, !alias.scope !2031
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.c, align 8, !tbaa !782, !alias.scope !2031
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.d, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNKSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #49
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i: ; preds = %bb.b
  %i.e = shl nuw i64 %2, 4                        ; 3 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #47
          to label %bb.d unwind label %bb.h       ; 8 uses

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i
  store ptr %i.f, ptr %0, align 8, !tbaa !429
  store ptr %i.f, ptr %i.a, align 8, !tbaa !430
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %2
  store ptr %i.g, ptr %i.b, align 8, !tbaa !783
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.i = add i64 %i.e, -16                        ; 2 uses
  %i.j = and i64 %i.i, 16
  %lcmp.mod.not.not = icmp eq i64 %i.j, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.prol, label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol:                                ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !777  ; 2 uses
  %i.m = load <2 x ptr>, ptr %1, align 8, !tbaa !216
  store <2 x ptr> %i.m, ptr %i.f, align 8, !tbaa !216
  %.not.i.i.i.i.i.i.i.prol = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.prol, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.prol, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.prol

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.prol: ; preds = %bb.e, %.lr.ph.i.i.i.prol
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.prol, %bb.d
  %.lcssa.unr = phi ptr [ poison, %bb.d ], [ %i.q, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.prol ]
  %.010.i.i.i.unr = phi ptr [ %1, %bb.d ], [ %i.p, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.prol ]
  %storemerge9.i.i.i.unr = phi ptr [ %i.f, %bb.d ], [ %i.q, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.prol ]
  %i.r = icmp eq i64 %i.i, 0
  br i1 %i.r, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.1
  %.010.i.i.i = phi ptr [ %i.ae, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.1 ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %storemerge9.i.i.i = phi ptr [ %i.af, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.1 ], [ %storemerge9.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !777  ; 2 uses
  %i.u = load <2 x ptr>, ptr %.010.i.i.i, align 8, !tbaa !216
  store <2 x ptr> %i.u, ptr %storemerge9.i.i.i, align 8, !tbaa !216
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !777 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !216
  store <2 x ptr> %i.ab, ptr %i.y, align 8, !tbaa !216
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.1, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.1

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.1: ; preds = %bb.g, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.1 = icmp eq ptr %i.ae, %i.h
  br i1 %.not.i.i.i.1, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_m.exit, label %.lr.ph.i.i.i, !llvm.loop !2030

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_m.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.1, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.af, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRKS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.1 ]
  %i.ag = ptrtoint ptr %.lcssa to i64
  %i.ah = ptrtoint ptr %i.f to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.f, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !430
  br label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEED2B8ne180100Ev.exit

bb.h:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  resume { ptr, i32 } %i.ak

_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPKS4_SA_EEvT_T0_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4tlog6LoggerC2ENSt3__16vectorINS1_10shared_ptrINS_7IOutputEEENS1_9allocatorIS5_EEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit:
  %2 = alloca %"struct.std::__1::__exception_guard_exceptions.920", align 8 ; 6 uses
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__1::vector.873", align 8 ; 10 uses
  store i8 0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %1, align 8, !tbaa !429    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !430  ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  store ptr %4, ptr %2, align 8, !tbaa !779, !alias.scope !2035
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !782, !alias.scope !2035
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %bb.e, label %bb.a

bb.a:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.b, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNKSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #49
          to label %.noexc.i.i unwind label %.body.thread

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i.i.i: ; preds = %bb.a
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #47
          to label %bb.c unwind label %.body.thread ; 6 uses

bb.c:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i.i.i
  store ptr %i.l, ptr %4, align 8, !tbaa !429
  store ptr %i.l, ptr %i.b, align 8, !tbaa !430
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store ptr %i.m, ptr %i.c, align 8, !tbaa !783
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i, %bb.c
  %.010.i.i.i.i.i = phi ptr [ %i.s, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %storemerge9.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !777  ; 2 uses
  %i.p = load <2 x ptr>, ptr %.010.i.i.i.i.i, align 8, !tbaa !216
  store <2 x ptr> %i.p, ptr %storemerge9.i.i.i.i.i, align 8, !tbaa !216
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPS4_S9_EEvT_T0_m.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !68

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPS4_S9_EEvT_T0_m.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE9constructB8ne180100IS5_JRS5_EvvEEvRS6_PT_DpOT0_.exit.i.i.i.i.i
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.w
  store ptr %i.x, ptr %i.b, align 8, !tbaa !430
  br label %bb.e

.body.thread:                                     ; preds = %bb.b, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEEEDaRT_m.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS5_EEE16__destroy_vectorEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit5

bb.e:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE18__construct_at_endIPS4_S9_EEvT_T0_m.exit.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  invoke void @_ZN4tlog6LoggerC2ENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6vectorINS1_10shared_ptrINS_7IOutputEEENS5_ISB_EEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %.body

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %4, align 8, !tbaa !429    ; 5 uses
  %.not.i.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i.i4, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !430 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ab, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !777 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = atomicrmw add ptr %i.ae, i64 -1 acq_rel, align 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !89
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #46, !inline_history !2034
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #46
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %4, align 8, !tbaa !429
  br label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.g
  %i.ak = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.z, %bb.g ] ; 2 uses
  store ptr %i.z, ptr %i.b, align 8, !tbaa !430
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !783
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #48
  br label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit: ; preds = %bb.f, %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i.i
  %i.ap = load i8, ptr %3, align 8
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !220
  %i.at = load i64, ptr %3, align 8
  %i.au = and i64 %i.at, -2
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #48
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev.exit, %bb.j
  ret void

.body:                                            ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #46
  %.pre = load i8, ptr %3, align 8
  %i.aw = trunc i8 %.pre to i1
  br i1 %i.aw, label %bb.k, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit5

bb.k:                                             ; preds = %.body
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !220
  %i.az = load i64, ptr %3, align 8
  %i.ba = and i64 %i.az, -2
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.ba) #48
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit5

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit5: ; preds = %.body.thread, %.body, %bb.k
  %.pn15 = phi { ptr, i32 } [ %i.y, %.body.thread ], [ %i.av, %.body ], [ %i.av, %bb.k ]
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !429    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !430  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrIN4tlog7IOutputEEENS_9allocatorIS4_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !777  ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrIN4tlog7IOutputEEEEEE7destroyB8ne180100IS5_vvEEvRS6_PT_.exit.i.i.i, label %bb.c

end_hunk_2
