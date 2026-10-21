Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Conv?download=true
inline.NumInlined: 3501
inline.NumDeleted: 1003
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZZN3fmt2v96detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.bh = add nsw i32 %i.bc, -11904
  %or.cond5.i = icmp ult i32 %i.bh, 30288
  %i.bi = icmp ne i32 %i.bc, 12351
  %or.cond7.i = and i1 %i.bi, %or.cond5.i
  %i.bj = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bk = shufflevector <2 x i32> %i.bj, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bl = and <8 x i32> %i.bk, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -65538, i32 -1>
  %i.bm = add <8 x i32> %i.bl, <i32 -44032, i32 -63744, i32 -65040, i32 -65072, i32 -65280, i32 -65504, i32 -131072, i32 -127744>
  %i.bn = icmp ult <8 x i32> %i.bm, <i32 11172, i32 512, i32 10, i32 64, i32 97, i32 7, i32 65534, i32 848>
  %i.bo = bitcast <8 x i1> %i.bn to i8
  %i.bp = icmp ne i8 %i.bo, 0
  %op.rdx = or i1 %i.bp, %or.cond7.i
  br i1 %op.rdx, label %_ZZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = and i32 %i.bc, -256
  %i.br = icmp eq i32 %i.bq, 129280
  %i.bs = select i1 %i.br, i64 2, i64 1
  br label %_ZZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

_ZZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.bt = phi i64 [ 1, %bb.a ], [ 2, %bb.c ], [ 2, %bb.b ], [ %i.bs, %bb.d ]
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.bv = lshr i64 2164195328, %i.c
  %i.bw = and i64 %i.bv, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !877   ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !77
  %i.ca = add i64 %i.bz, %i.bt
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !77
  %i.cb = select i1 %.not, ptr %i.bx, ptr %i.l
  ret ptr %i.cb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail20write_escaped_stringIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #15 comdat {
bb.a:
  %3 = alloca %"struct.fmt::v9::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !118
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !95
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !call_target !133, !inline_history !25
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit

_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit: ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !116
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 34, ptr %i.l, align 1, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = ptrtoint ptr %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit
  %.sroa.023.0 = phi ptr [ %0, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit ], [ %i.ar, %bb.i ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit ], [ %i.aq, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.m, ptr %3, align 8, !tbaa !239, !alias.scope !881
  store ptr null, ptr %i.n, align 8, !tbaa !240, !alias.scope !881
  store i32 0, ptr %i.o, align 8, !tbaa !241, !alias.scope !881
  %i.q = ptrtoint ptr %.0 to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZN3fmt2v96detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.r, ptr nonnull align 8 %3)
  %i.s = load ptr, ptr %3, align 8, !tbaa !239    ; 3 uses
  %.not18.i.i = icmp eq ptr %.0, %i.s
  br i1 %.not18.i.i, label %_ZN3fmt2v96detail8copy_strIcPKcEENS0_8appenderET0_S6_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 8
  %.pre.i.i13 = load i64, ptr %i.u, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i, %.lr.ph.i.i
  %i.x = phi i64 [ %.pre.i.i13, %.lr.ph.i.i ], [ %i.ao, %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i ] ; 2 uses
  %.01419.i.i = phi ptr [ %.0, %.lr.ph.i.i ], [ %i.ap, %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i ] ; 4 uses
  %i.y = ptrtoint ptr %.01419.i.i to i64
  %i.z = sub i64 %i.t, %i.y                       ; 2 uses
  %i.aa = add i64 %i.z, %i.x                      ; 2 uses
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !118 ; 2 uses
  %i.ac = icmp ugt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %.sroa.023.0, align 8, !tbaa !95
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.0, i64 noundef %i.aa), !call_target !133, !inline_history !35
  %.pre20.i.i = load i64, ptr %i.v, align 8, !tbaa !118
  %.pre21.i.i = load i64, ptr %i.u, align 8, !tbaa !117
  br label %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.af = phi i64 [ %i.x, %bb.d ], [ %.pre21.i.i, %bb.e ] ; 2 uses
  %i.ag = phi i64 [ %i.ab, %bb.d ], [ %.pre20.i.i, %bb.e ]
  %i.ah = sub i64 %i.ag, %i.af
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.z) ; 5 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !116
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af ; 2 uses
  %i.ak = icmp sgt i64 %spec.select.i.i, 1
  br i1 %i.ak, label %bb.f, label %bb.g, !prof !93

bb.f:                                             ; preds = %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %.01419.i.i, i64 %spec.select.i.i, i1 false)
  br label %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i

bb.g:                                             ; preds = %_ZN3fmt2v96detail6bufferIcE11try_reserveEm.exit.i.i
  %i.al = icmp eq i64 %spec.select.i.i, 1
  br i1 %i.al, label %bb.h, label %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %.01419.i.i, align 1, !tbaa !71
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !71
  br label %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i

_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.an = load i64, ptr %i.u, align 8, !tbaa !117
  %i.ao = add i64 %i.an, %spec.select.i.i         ; 2 uses
  store i64 %i.ao, ptr %i.u, align 8, !tbaa !117
  %i.ap = getelementptr inbounds nuw i8, ptr %.01419.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.s
  br i1 %.not.i.i, label %_ZN3fmt2v96detail8copy_strIcPKcEENS0_8appenderET0_S6_S5_.exit, label %bb.d, !llvm.loop !27

_ZN3fmt2v96detail8copy_strIcPKcEENS0_8appenderET0_S6_S5_.exit: ; preds = %_ZSt20uninitialized_copy_nIPKcmPcET1_T_T0_S3_.exit.i.i, %bb.c
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !240 ; 3 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %.thread, label %bb.i

.thread:                                          ; preds = %_ZN3fmt2v96detail8copy_strIcPKcEENS0_8appenderET0_S6_S5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit

bb.i:                                             ; preds = %_ZN3fmt2v96detail8copy_strIcPKcEENS0_8appenderET0_S6_S5_.exit
  %i.ar = call ptr @_ZN3fmt2v96detail16write_escaped_cpINS0_8appenderEcEET_S4_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.023.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not12 = icmp eq ptr %i.aq, %i.m
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !880

.loopexit:                                        ; preds = %bb.i, %.thread
  %.sroa.023.128 = phi ptr [ %.sroa.023.0, %.thread ], [ %i.ar, %bb.i ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.023.128, i64 16 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !117 ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.023.128, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !118
  %i.ax = icmp ugt i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.j, label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit18

bb.j:                                             ; preds = %.loopexit
  %i.ay = load ptr, ptr %.sroa.023.128, align 8, !tbaa !95
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.128, i64 noundef %i.au), !call_target !133, !inline_history !25
  %.pre.i.i16 = load i64, ptr %i.as, align 8, !tbaa !117 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit18

_ZNSt20back_insert_iteratorIN3fmt2v96detail6bufferIcEEEaSEOc.exit18: ; preds = %.loopexit, %bb.j
  %.pre-phi.i.i15 = phi i64 [ %i.au, %.loopexit ], [ %.pre2.i.i17, %bb.j ]
  %i.ba = phi i64 [ %i.at, %.loopexit ], [ %.pre.i.i16, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.023.128, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !116
  store i64 %.pre-phi.i.i15, ptr %i.as, align 8, !tbaa !117
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 34, ptr %i.bd, align 1, !tbaa !71
  ret ptr %.sroa.023.128
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEE(ptr dead_on_unwind noalias writable sret(%"class.folly::ConversionError") align 8 %0, i8 noundef zeroext %1, ptr %2, ptr %3) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %i.a = zext i8 %1 to i64                        ; 2 uses
  %i.b = icmp ult i8 %1, 16
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly19makeConversionErrorENS_14ConversionCodeENS_5RangeIPKcEEE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.59, i64 noundef %i.a) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @_ZN5folly6detail12_GLOBAL__N_113kErrorStringsE, i64 %i.a ; 3 uses
  %i.d = icmp eq i8 %1, 1
  %i.e = icmp eq ptr %2, %3                       ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !883
  tail call void @_ZNSt11range_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %i.f)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly15ConversionErrorE, i64 16), ptr %0, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.g, align 8, !tbaa !890
  br label %bb.aj

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !883  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 21 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !226
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #25 ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !73

.noexc11.i:                                       ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.g
  %i.o = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #30 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !217
  store i64 %i.j, ptr %i.i, align 8, !tbaa !71
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.e
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.i, %bb.e ] ; 3 uses
  switch i64 %i.j, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !71
  store i8 %i.q, ptr %i.p, align 1, !tbaa !71
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i64 %i.j, ptr %i.r, align 8, !tbaa !227
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !71
  %i.t = load i64, ptr %i.r, align 8, !tbaa !227  ; 5 uses
  %i.u = and i64 %i.t, -2
  %i.v = icmp eq i64 %i.u, 9223372036854775806
  br i1 %i.v, label %.invoke107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.j
  %i.w = add nsw i64 %i.t, 2                      ; 3 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !217    ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.z = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aa = load i64, ptr %i.i, align 8, !tbaa !71
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.w, %i.ab
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  store i16 8250, ptr %i.ac, align 1
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.t, i64 noundef 0, ptr noundef nonnull @.str.60, i64 noundef 2)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.l
  store i64 %i.w, ptr %i.r, align 8, !tbaa !227
  %i.ad = load ptr, ptr %4, align 8, !tbaa !217
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.w
  store i8 0, ptr %i.ae, align 1, !tbaa !71
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %6 = load i8, ptr %5, align 8, !tbaa !891, !range !86, !noundef !78
  %7 = trunc nuw i8 %6 to i1                      ; 2 uses
  br i1 %7, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.af = load i64, ptr %i.r, align 8, !tbaa !227 ; 8 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775807
  br i1 %i.ag, label %.invoke107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.n
  %i.ah = add nsw i64 %i.af, 1                    ; 7 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !217   ; 3 uses
  %i.aj = icmp eq ptr %i.ai, %i.i
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ak = icmp samesign ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ak)
  %.not.i.i23 = icmp eq i64 %i.af, 15
  br i1 %.not.i.i23, label %.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.al = load i64, ptr %i.i, align 8, !tbaa !71  ; 3 uses
  %.not.i.i2379 = icmp ugt i64 %i.ah, %i.al
  br i1 %.not.i.i2379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread
  %i.am = icmp slt i64 %i.af, -1
  br i1 %i.am, label %.invoke107, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.an = icmp ugt i64 %i.ah, %i.al
  br i1 %i.an, label %.thread, label %bb.q

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22, %bb.o
  %i.ao = phi i64 [ %i.al, %bb.o ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22 ]
  %i.ap = shl nuw i64 %i.ao, 1                    ; 2 uses
  %i.aq = icmp ult i64 %i.ah, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.ap, i64 9223372036854775807)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread, %bb.o
  %.0.i = phi i64 [ %spec.store.select.i.i, %bb.p ], [ %i.ah, %.thread ], [ %i.ah, %bb.o ] ; 2 uses
  %i.ar = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.q
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30
          to label %.noexc52 unwind label %bb.t   ; 4 uses

.noexc52:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %.pre.i.pre = load ptr, ptr %4, align 8, !tbaa !217 ; 4 uses
  switch i64 %i.af, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %.noexc52
  %i.au = load i8, ptr %.pre.i.pre, align 1, !tbaa !71
  store i8 %i.au, ptr %i.at, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.s:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %.pre.i.pre, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %.noexc52, %bb.r, %bb.s
  %i.av = icmp eq ptr %.pre.i.pre, %i.i
  br i1 %i.av, label %.noexc26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.aw = load i64, ptr %i.i, align 8, !tbaa !71
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.pre.i.pre, i64 noundef %i.ax) #29
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.at, ptr %4, align 8, !tbaa !217
  store i64 %.0.i, ptr %i.i, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22, %.noexc26
  %i.ay = phi ptr [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22.thread ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i22 ], [ %i.at, %.noexc26 ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.af
  store i8 34, ptr %i.az, align 1, !tbaa !71
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !227
  %i.ba = load ptr, ptr %4, align 8, !tbaa !217
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ah
  store i8 0, ptr %i.bb, align 1, !tbaa !71
  br label %bb.u

bb.t:                                             ; preds = %.invoke107, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.ah, %bb.z, %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %4, align 8, !tbaa !217   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.i
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.bf = load i64, ptr %i.i, align 8, !tbaa !71
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit, %bb.m
  br i1 %i.e, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = ptrtoint ptr %3 to i64
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  %i.bk = load i64, ptr %i.r, align 8, !tbaa !227 ; 5 uses
  %i.bl = sub i64 9223372036854775807, %i.bk
  %i.bm = icmp ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %.invoke107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i27: ; preds = %bb.v
  %i.bn = add i64 %i.bk, %i.bj                    ; 3 uses
  %i.bo = load ptr, ptr %4, align 8, !tbaa !217   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.i
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i27
  %i.bq = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i27
  %i.br = load i64, ptr %i.i, align 8, !tbaa !71
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33
  %i.bs = phi i64 [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i33 ]
  %.not.i.i30 = icmp ugt i64 %i.bn, %i.bs
  br i1 %.not.i.i30, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bk ; 2 uses
  %cond.i.i32 = icmp eq i64 %i.bj, 1
  br i1 %cond.i.i32, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bu = load i8, ptr %2, align 1, !tbaa !71
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %2, i64 %i.bj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bk, i64 noundef 0, ptr noundef %2, i64 noundef %i.bj)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.z, %bb.x, %bb.y
  store i64 %i.bn, ptr %i.r, align 8, !tbaa !227
  %i.bv = load ptr, ptr %4, align 8, !tbaa !217
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i8 0, ptr %i.bw, align 1, !tbaa !71
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.u
  br i1 %7, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.bx = load i64, ptr %i.r, align 8, !tbaa !227 ; 8 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %.invoke107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36: ; preds = %bb.ab
  %i.bz = add nsw i64 %i.bx, 1                    ; 7 uses
  %i.ca = load ptr, ptr %4, align 8, !tbaa !217   ; 3 uses
  %i.cb = icmp eq ptr %i.ca, %i.i
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36
  %i.cc = icmp samesign ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.cc)
  %.not.i.i39 = icmp eq i64 %i.bx, 15
  br i1 %.not.i.i39, label %.thread106, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i36
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !71  ; 3 uses
  %.not.i.i3980 = icmp ugt i64 %i.bz, %i.cd
  br i1 %.not.i.i3980, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread
  %i.ce = icmp slt i64 %i.bx, -1
  br i1 %i.ce, label %.invoke107, label %bb.ac

.invoke107:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.n, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54, %bb.ab, %bb.v
  %i.cf = phi ptr [ @.str.79, %bb.ab ], [ @.str.79, %bb.n ], [ @.str.78, %bb.v ], [ @.str.21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54 ], [ @.str.78, %bb.j ], [ @.str.21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.cf) #27
          to label %.cont108 unwind label %bb.t

.cont108:                                         ; preds = %.invoke107
  unreachable

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i54
  %i.cg = icmp ugt i64 %i.bz, %i.cd
  br i1 %i.cg, label %.thread106, label %bb.ae

.thread106:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38, %bb.ac
  %i.ch = phi i64 [ %i.cd, %bb.ac ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38 ]
  %i.ci = shl nuw i64 %i.ch, 1                    ; 2 uses
  %i.cj = icmp ult i64 %i.bz, %i.ci
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread106
  %spec.store.select.i.i66 = call i64 @llvm.umin.i64(i64 %i.ci, i64 9223372036854775807)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread106, %bb.ac
  %.0.i55 = phi i64 [ %spec.store.select.i.i66, %bb.ad ], [ %i.bz, %.thread106 ], [ %i.bz, %bb.ac ] ; 2 uses
  %i.ck = add nuw i64 %.0.i55, 1                  ; 2 uses
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i56, !prof !73

.invoke:                                          ; preds = %bb.q, %bb.ae
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.cont unwind label %bb.t

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i56: ; preds = %bb.ae
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #30
          to label %.noexc70 unwind label %bb.t   ; 4 uses

.noexc70:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i56
  %.pre.i61.pre = load ptr, ptr %4, align 8, !tbaa !217 ; 4 uses
  switch i64 %i.bx, label %bb.ag [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %.noexc70
  %i.cn = load i8, ptr %.pre.i61.pre, align 1, !tbaa !71
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63

bb.ag:                                            ; preds = %.noexc70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr align 1 %.pre.i61.pre, i64 %i.bx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63: ; preds = %.noexc70, %bb.af, %bb.ag
  %i.co = icmp eq ptr %.pre.i61.pre, %i.i
  br i1 %i.co, label %.noexc42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63
  %i.cp = load i64, ptr %i.i, align 8, !tbaa !71
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %.pre.i61.pre, i64 noundef %i.cq) #29
  br label %.noexc42

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i64
  store ptr %i.cm, ptr %4, align 8, !tbaa !217
  store i64 %.0.i55, ptr %i.i, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38, %.noexc42
  %i.cr = phi ptr [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38.thread ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38 ], [ %i.cm, %.noexc42 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.bx
  store i8 34, ptr %i.cs, align 1, !tbaa !71
  store i64 %i.bz, ptr %i.r, align 8, !tbaa !227
  %i.ct = load ptr, ptr %4, align 8, !tbaa !217
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.bz
  store i8 0, ptr %i.cu, align 1, !tbaa !71
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit43, %bb.aa
  invoke void @_ZNSt11range_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ai unwind label %bb.t

bb.ai:                                            ; preds = %bb.ah
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly15ConversionErrorE, i64 16), ptr %0, align 8, !tbaa !95
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %1, ptr %i.cv, align 8, !tbaa !890
  %i.cw = load ptr, ptr %4, align 8, !tbaa !217   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.i
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.ai
  %i.cy = load i64, ptr %i.i, align 8, !tbaa !71
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.bc

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.d
  ret void
}

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly15ConversionErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt11range_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

declare void @_ZNSt11range_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !227  ; 4 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !217
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !71
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umax.i8
!691 = distinct !{!691, !690, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi: argument 0"}
!692 = !{!685, !683, !681}
!693 = !{!681}
!694 = !{!691, !689, !687}
!695 = !{!687}
!696 = !{i64 0, i64 8, !124, i64 8, i64 8, !71}
!697 = !{!"_ZTSZN3fmt2v96detail19parse_format_stringILb0EcZNS1_10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS5_EENS0_17basic_format_argsINS0_20basic_format_contextINSt11conditionalIXsr3std7is_sameINS0_13type_identityIS5_E4typeEcEE5valueENS0_8appenderESt20back_insert_iteratorINS4_ISF_EEEE4typeESF_EEEENS1_10locale_refEE14format_handlerEEvNS8_IT0_EEOT1_E6writer", !198, i64 0}
!698 = !{!697, !198, i64 0}
!699 = distinct !{!699, i1 true, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_"}
!700 = distinct !{!700, !699, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_: argument 0"}
!701 = distinct !{!701, i1 true, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi"}
!702 = distinct !{!702, !701, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi: argument 0"}
!703 = distinct !{!703, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi"}
!704 = distinct !{!704, !703, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi: argument 0"}
!705 = distinct !{null, null}
!706 = distinct !{!706, i1 true, !"_ZN3fmt2v96detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE"}
!707 = distinct !{!707, !706, !"_ZN3fmt2v96detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE: argument 0"}
!708 = distinct !{!708, i1 true, !"_ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE"}
!709 = distinct !{!709, !708, !"_ZN3fmt2v96detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4sign4typeE: argument 0"}
!710 = !{!704, !702, !700}
!711 = !{!700}
!712 = !{!195, !67, i64 0}
!713 = !{!195, !76, i64 8}
!714 = !{!359, !359, i64 0}
!715 = !{!707}
!716 = !{!"_ZTSN3fmt2v96detail13write_int_argIoEE", !110, i64 0, !63, i64 16}
!717 = !{!716, !110, i64 0}
!718 = !{!716, !63, i64 16}
!719 = !{!709}
!720 = distinct !{!720, !72}
!721 = !{!357, !198, i64 0}
!722 = distinct !{!722, i1 true, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argENS1_7auto_idE"}
!723 = distinct !{!723, !722, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argENS1_7auto_idE: argument 0"}
!724 = distinct !{!724, i1 true, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_"}
!725 = distinct !{!725, !724, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_: argument 0"}
!726 = distinct !{!726, i1 true, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi"}
!727 = distinct !{!727, !726, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi: argument 0"}
!728 = distinct !{!728, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi"}
!729 = distinct !{!729, !728, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi: argument 0"}
!730 = !{!723}
!731 = !{!725}
!732 = !{!727}
!733 = !{!729}
!734 = !{!729, !727, !725, !723}
!735 = !{!725, !723}
!736 = distinct !{!736, i1 true, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argENS1_7auto_idE"}
!737 = distinct !{!737, !736, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argENS1_7auto_idE: argument 0"}
!738 = distinct !{!738, i1 true, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_"}
!739 = distinct !{!739, !738, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_: argument 0"}
!740 = distinct !{!740, i1 true, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi"}
!741 = distinct !{!741, !740, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi: argument 0"}
!742 = distinct !{!742, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi"}
!743 = distinct !{!743, !742, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi: argument 0"}
!744 = !{!737}
!745 = !{!739}
!746 = !{!741}
!747 = !{!743}
!748 = !{!743, !741, !739, !737}
!749 = !{!739, !737}
!750 = distinct !{!750, i1 true, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argEi"}
!751 = distinct !{!751, !750, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argEi: argument 0"}
!752 = distinct !{!752, i1 true, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_"}
!753 = distinct !{!753, !752, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_: argument 0"}
!754 = distinct !{!754, i1 true, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi"}
!755 = distinct !{!755, !754, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi: argument 0"}
!756 = distinct !{!756, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi"}
!757 = distinct !{!757, !756, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi: argument 0"}
!758 = distinct !{!758, !72}
!759 = !{!"_ZTSZN3fmt2v96detail11parse_widthIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_E13width_adapter", !374, i64 0}
!760 = !{!759, !374, i64 0}
!761 = !{!751}
!762 = !{!753}
!763 = !{!755}
!764 = !{!757}
!765 = !{!757, !755, !753, !751}
!766 = !{!753, !751}
!767 = distinct !{!767, i1 true, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argENS0_17basic_string_viewIcEE"}
!768 = distinct !{!768, !767, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argENS0_17basic_string_viewIcEE: argument 0"}
!769 = distinct !{!769, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getIcEENS0_16basic_format_argIS4_EENS0_17basic_string_viewIT_EE"}
!770 = distinct !{!770, !769, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getIcEENS0_16basic_format_argIS4_EENS0_17basic_string_viewIT_EE: argument 0"}
!771 = distinct !{!771, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi"}
!772 = distinct !{!772, !771, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi: argument 0"}
!773 = distinct !{!773, i1 true, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEENS0_17basic_string_viewIcEEEENT_10format_argERS8_T0_"}
!774 = distinct !{!774, !773, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEENS0_17basic_string_viewIcEEEENT_10format_argERS8_T0_: argument 0"}
!775 = !{!768}
!776 = !{!770}
!777 = !{!772, !770}
!778 = !{!774, !768}
!779 = distinct !{!779, i1 true, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argEi"}
!780 = distinct !{!780, !779, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argEi: argument 0"}
!781 = distinct !{!781, i1 true, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_"}
!782 = distinct !{!782, !781, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEEiEENT_10format_argERS6_T0_: argument 0"}
!783 = distinct !{!783, i1 true, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi"}
!784 = distinct !{!784, !783, !"_ZNK3fmt2v920basic_format_contextINS0_8appenderEcE3argEi: argument 0"}
!785 = distinct !{!785, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi"}
!786 = distinct !{!786, !785, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi: argument 0"}
!787 = distinct !{!787, !72}
!788 = !{!"_ZTSZN3fmt2v96detail15parse_precisionIcRNS1_13specs_checkerINS1_13specs_handlerIcEEEEEEPKT_SA_SA_OT0_E17precision_adapter", !374, i64 0}
!789 = !{!788, !374, i64 0}
!790 = !{!780}
!791 = !{!782}
!792 = !{!784}
!793 = !{!786}
!794 = !{!786, !784, !782, !780}
!795 = !{!782, !780}
!796 = distinct !{!796, i1 true, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argENS0_17basic_string_viewIcEE"}
!797 = distinct !{!797, !796, !"_ZN3fmt2v96detail13specs_handlerIcE7get_argENS0_17basic_string_viewIcEE: argument 0"}
!798 = distinct !{!798, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getIcEENS0_16basic_format_argIS4_EENS0_17basic_string_viewIT_EE"}
!799 = distinct !{!799, !798, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getIcEENS0_16basic_format_argIS4_EENS0_17basic_string_viewIT_EE: argument 0"}
!800 = distinct !{!800, i1 true, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi"}
!801 = distinct !{!801, !800, !"_ZNK3fmt2v917basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEE3getEi: argument 0"}
!802 = distinct !{!802, i1 true, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEENS0_17basic_string_viewIcEEEENT_10format_argERS8_T0_"}
!803 = distinct !{!803, !802, !"_ZN3fmt2v96detail7get_argINS0_20basic_format_contextINS0_8appenderEcEENS0_17basic_string_viewIcEEEENT_10format_argERS8_T0_: argument 0"}
!804 = !{!797}
!805 = !{!799}
!806 = !{!801, !799}
!807 = !{!803, !797}
!808 = distinct !{!808, !72}
!809 = distinct !{!809, !72}
!810 = distinct !{!810, !72}
!811 = distinct !{!811, !72}
!812 = distinct !{!812, !72}
!813 = distinct !{null, null, null, null, null}
!814 = distinct !{null, null, null, null}
!815 = distinct !{!815, !72}
!816 = distinct !{!816, !72}
!817 = distinct !{!817, !72}
!818 = distinct !{!818, !72}
!819 = distinct !{null, null, null, null, null}
!820 = distinct !{null, null, null, null}
!821 = distinct !{!821, !72}
!822 = distinct !{null, null, null, null, null}
!823 = distinct !{null, null, null, null}
!824 = distinct !{!824, !72}
!825 = !{!384, !76, i64 16}
!826 = !{!383, !76, i64 0}
!827 = !{!383, !63, i64 8}
!828 = distinct !{!828, !72}
!829 = !{!387, !76, i64 16}
!830 = !{!386, !76, i64 0}
!831 = !{!386, !63, i64 8}
!832 = !{!386, !80, i64 12}
!833 = distinct !{!833, !72}
!834 = distinct !{!834, !72}
!835 = distinct !{!835, !72}
!836 = distinct !{!836, !72}
!837 = distinct !{!837, !72}
!838 = distinct !{!838, !72}
!839 = distinct !{null, null, null, null, null}
!840 = distinct !{null, null, null, null}
!841 = distinct !{!841, !72}
!842 = distinct !{!842, !72}
!843 = distinct !{!843, !72}
!844 = distinct !{!844, !72}
!845 = distinct !{null, null, null, null, null}
!846 = distinct !{null, null, null, null}
!847 = distinct !{!847, !72}
!848 = distinct !{null, null, null, null, null}
!849 = distinct !{null, null, null, null, null}
!850 = distinct !{null, null, null, null}
!851 = distinct !{!851, !72}
!852 = !{!390, !76, i64 16}
!853 = !{!389, !110, i64 0}
!854 = !{!389, !63, i64 16}
!855 = distinct !{!855, !72}
!856 = !{!393, !76, i64 16}
!857 = !{!392, !110, i64 0}
!858 = !{!392, !63, i64 16}
!859 = !{!392, !80, i64 20}
!860 = distinct !{!860, !72}
!861 = distinct !{!861, !72}
!862 = distinct !{!862, !72}
!863 = distinct !{!863, !72}
!864 = distinct !{!864, !72}
!865 = distinct !{!865, !72}
!866 = distinct !{!866, !72}
!867 = distinct !{!867, i1 true, !"_ZN3fmt2v96detail11find_escapeEPKcS3_"}
!868 = distinct !{!868, !867, !"_ZN3fmt2v96detail11find_escapeEPKcS3_: argument 0"}
!869 = distinct !{!869, !72}
!870 = distinct !{!870, !72}
!871 = distinct !{!871, !72}
!872 = !{!868}
!873 = distinct !{null, null, null, null}
!874 = distinct !{!874, !72}
!875 = distinct !{!875, !72}
!876 = !{!"_ZTSZN3fmt2v96detail13compute_widthENS0_17basic_string_viewIcEEE17count_code_points", !273, i64 0}
!877 = !{!876, !273, i64 0}
!878 = distinct !{!878, i1 true, !"_ZN3fmt2v96detail11find_escapeEPKcS3_"}
!879 = distinct !{!879, !878, !"_ZN3fmt2v96detail11find_escapeEPKcS3_: argument 0"}
!880 = distinct !{!880, !72}
!881 = !{!879}
!882 = !{!"_ZTSN5folly6detail12_GLOBAL__N_111ErrorStringE", !67, i64 0, !80, i64 8}
!883 = !{!882, !67, i64 0}
!884 = !{!"_ZTSSt9exception"}
!885 = !{!"_ZTSSt12__cow_string", !62, i64 0}
!886 = !{!"_ZTSSt13runtime_error", !884, i64 0, !885, i64 8}
!887 = !{!"_ZTSSt11range_error", !886, i64 0}
!888 = !{!"_ZTSN5folly19ConversionErrorBaseE", !887, i64 0}
!889 = !{!"_ZTSN5folly15ConversionErrorE", !888, i64 0, !108, i64 16}
!890 = !{!889, !108, i64 16}
!891 = !{!882, !80, i64 8}
end_hunk_1
