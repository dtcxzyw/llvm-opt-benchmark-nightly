Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/UfarMgr?download=true
inline.NumInlined: 7368
inline.NumDeleted: 2730
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEC2EPKcNSt15regex_constants18syntax_option_typeE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(400) %3, ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !117, !noalias !651
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !95   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !117
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !98
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #37, !inline_history !650
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #37, !inline_history !650
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !52
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit, !prof !102

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #37
  br label %_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit

_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEE10_M_compileEPKcS5_NSt15regex_constants18syntax_option_typeE.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  store i32 %2, ptr %0, align 8, !tbaa !125
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(400) dereferenceable(400) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @_ZN4UFAR16SimUifPairFinder18_collect_sim_nodesEP10Wlc_Ntk_t_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %sh.diff = lshr i64 %i.h, 1
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.i = and i32 %tr.sh.diff, -2                  ; 2 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #41 ; 5 uses
  %i.k = add i32 %i.i, -1
  %or.cond.i = icmp ult i32 %i.k, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.i ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !129
  store i32 %spec.store.select.i, ptr %i.j, align 8, !tbaa !130
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %_ZL12Vec_IntAlloci.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %spec.store.select.i to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #41
  br label %_ZL12Vec_IntAlloci.exit

_ZL12Vec_IntAlloci.exit:                          ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !131
  %i.r = getelementptr i8, ptr %1, i64 40
  %i.s = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %.val1618 = load i32, ptr %i.s, align 4, !tbaa !129 ; 2 uses
  %i.t = icmp sgt i32 %.val1618, 0
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZL12Vec_IntAlloci.exit, %bb.l
  %.val1621 = phi i32 [ %.val16, %bb.l ], [ %.val1618, %_ZL12Vec_IntAlloci.exit ]
  %i.u = phi ptr [ %i.as, %bb.l ], [ %i.p, %_ZL12Vec_IntAlloci.exit ] ; 3 uses
  %i.v = phi ptr [ %i.at, %bb.l ], [ %i.p, %_ZL12Vec_IntAlloci.exit ] ; 5 uses
  %i.w = phi i32 [ %i.au, %bb.l ], [ %spec.store.select.i, %_ZL12Vec_IntAlloci.exit ] ; 8 uses
  %i.x = phi i32 [ %i.av, %bb.l ], [ 0, %_ZL12Vec_IntAlloci.exit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %_ZL12Vec_IntAlloci.exit ] ; 3 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = urem i32 %i.y, 3
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %i.r, align 8, !tbaa !131
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !52
  %i.ad = icmp eq i32 %i.x, %i.w
  br i1 %i.ad, label %bb.d, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp slt i32 %i.w, 16
  br i1 %i.ae, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 64) #42
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i32 %i.w, 1073741823
  %i.ai = shl nuw nsw i32 %i.w, 1
  %spec.select.i = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.w, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %i.v, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %i.ak) #42
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #41
  br label %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i

_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i: ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %storemerge = phi ptr [ %i.ag, %bb.g ], [ %i.af, %bb.f ], [ %i.al, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !131
  store i32 %spec.select.sink.i, ptr %i.j, align 8, !tbaa !130
  br label %_ZL11Vec_IntPushP10Vec_Int_t_i.exit

_ZL11Vec_IntPushP10Vec_Int_t_i.exit:              ; preds = %bb.c, %bb.h, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i
  %i.an = phi ptr [ %i.u, %bb.c ], [ %i.u, %bb.h ], [ %storemerge, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i ] ; 3 uses
  %i.ao = phi i32 [ %i.w, %bb.c ], [ %i.w, %bb.h ], [ %spec.select.sink.i, %_ZL11Vec_IntGrowP10Vec_Int_t_i.exit11.sink.split.i ]
  %i.ap = add nsw i32 %i.x, 1                     ; 2 uses
  store i32 %i.ap, ptr %i.l, align 4, !tbaa !129
  %i.aq = sext i32 %i.x to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.aq
  store i32 %i.ac, ptr %i.ar, align 4, !tbaa !52
  %.val16.pre = load i32, ptr %i.s, align 4, !tbaa !129
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit
  %.val16 = phi i32 [ %.val1621, %.lr.ph ], [ %.val16.pre, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ] ; 2 uses
  %i.as = phi ptr [ %i.u, %.lr.ph ], [ %i.an, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ]
  %i.at = phi ptr [ %i.v, %.lr.ph ], [ %i.an, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ]
  %i.au = phi i32 [ %i.w, %.lr.ph ], [ %i.ao, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ]
  %i.av = phi i32 [ %i.x, %.lr.ph ], [ %i.ap, %_ZL11Vec_IntPushP10Vec_Int_t_i.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = sext i32 %.val16 to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %.lr.ph, label %.critedge, !llvm.loop !652

.critedge:                                        ; preds = %bb.l, %_ZL12Vec_IntAlloci.exit
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4UFAR16SimUifPairFinder14_count_matchesEP10Vec_Ptr_t_i(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.fr = freeze i64 %i.i                          ; 2 uses
  %i.j = lshr i64 %.fr, 2                         ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %sext = shl i64 %.fr, 30                        ; 4 uses
  %i.l = ashr exact i64 %sext, 32                 ; 6 uses
  %i.m = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.m, label %bb.b, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.151) #39
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = ashr exact i64 %sext, 30                 ; 11 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #43 ; 7 uses
  %i.p = and i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.o, i8 0, i64 %i.p, i1 false), !tbaa !52
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %i.r = mul nuw nsw i64 %i.l, 24
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #43 ; 12 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.l ; 3 uses
  %i.u = icmp ugt i64 %i.n, 9223372036854775804
  %i.v = icmp eq i64 %sext, 4294967296
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.i.i.split, !prof !102

.lr.ph.i.i.i.i.i.i.split.us:                      ; preds = %.lr.ph.i.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

.lr.ph.i.i.i.i.i.i.split:                         ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = icmp samesign ugt i64 %i.n, 4
  br i1 %i.w, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us, label %.lr.ph.i.i.i.i.i.i.split.split, !prof !133

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us: ; preds = %.lr.ph.i.i.i.i.i.i.split, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us
  %.010.i.i.i.i.i.i.us107 = phi ptr [ %i.ac, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.s, %.lr.ph.i.i.i.i.i.i.split ] ; 5 uses
  %.069.i.i.i.i.i.i.us108 = phi i64 [ %i.ab, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.l, %.lr.ph.i.i.i.i.i.i.split ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i.i.i.i.i.us107, i8 0, i64 24, i1 false)
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #43 ; 3 uses
  store ptr %i.x, ptr %.010.i.i.i.i.i.i.us107, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.us107, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.us107, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr nonnull align 4 %i.o, i64 %i.n, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !127
  %i.ab = add nsw i64 %.069.i.i.i.i.i.i.us108, -1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.us107, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.us = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.us, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !653

.lr.ph.i.i.i.i.i.i.split.split:                   ; preds = %.lr.ph.i.i.i.i.i.i.split
  br i1 %i.v, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us109, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us109: ; preds = %.lr.ph.i.i.i.i.i.i.split.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #43 ; 3 uses
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !87
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.n ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !134
  %i.ah = load i32, ptr %i.o, align 4, !tbaa !52
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !52
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !127
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.split.split, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.split.split ] ; 5 uses
  %.069.i.i.i.i.i.i = phi i64 [ %i.an, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.split.split ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #43 ; 2 uses
  store ptr %i.aj, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !87
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.n ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !134
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !127
  %i.an = add nsw i64 %.069.i.i.i.i.i.i, -1       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !653

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us109, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.1192.0102 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.q, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.q, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us109 ], [ %i.q, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.091.0100 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.o, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us109 ], [ %i.o, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.14.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.t, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.t, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us109 ], [ %i.t, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.093.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.s, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us109 ], [ %i.s, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ac, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us ], [ %i.ai, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.us109 ], [ %i.ao, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !83  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !135 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !136
  store ptr %.sroa.093.0, ptr %i.a, align 8, !tbaa !83
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.aq, align 8, !tbaa !135
  store ptr %.sroa.14.0, ptr %i.as, align 8, !tbaa !136
  %.not4.i.i.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i ], [ %i.ap, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i68 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i68, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !134
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #40
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i.i
  %i.bb = ptrtoint ptr %i.at to i64
  %i.bc = ptrtoint ptr %i.ap to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bd) #40
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_.exit.i.i.i, %bb.d
  %.not.i.i.i69 = icmp eq ptr %.sroa.091.0100, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  %i.be = ptrtoint ptr %.sroa.1192.0102 to i64
  %i.bf = ptrtoint ptr %.sroa.091.0100 to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0100, i64 noundef %i.bg) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, %bb.e
  %i.bh = icmp sgt i32 %i.k, 0
  br i1 %i.bh, label %.preheader106.lr.ph, label %._crit_edge127.split

.preheader106.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bj = icmp sgt i32 %2, 0
  %i.bk = getelementptr i8, ptr %1, i64 8
  %wide.trip.count149 = and i64 %i.j, 2147483647  ; 4 uses
  br i1 %i.bj, label %.preheader106.lr.ph.split.us, label %.preheader106

.preheader106.lr.ph.split.us:                     ; preds = %.preheader106.lr.ph
  %wide.trip.count136.us.us.us = zext nneg i32 %2 to i64
  br label %.preheader106.a

.preheader106.a:                                  ; preds = %._crit_edge125.split.us.us, %.preheader106.lr.ph.split.us
  %indvars.iv146 = phi i64 [ 0, %.preheader106.lr.ph.split.us ], [ %indvars.iv.next146.us, %._crit_edge125.split.us.us ] ; 6 uses
  %indvars148 = trunc i64 %indvars.iv146 to i32
  %i.bl = shl nuw i32 %indvars148, 1
  %i.bm = or disjoint i32 %i.bl, 1                ; 2 uses
  %indvars.iv146.tr = trunc nuw i64 %indvars.iv146 to i32
  %i.bn = shl nuw i32 %indvars.iv146.tr, 1        ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.us.us, %.preheader106.a
  %indvars.iv141 = phi i64 [ 0, %.preheader106.a ], [ %indvars.iv.next.us143.us, %.loopexit.us.us ] ; 5 uses
  %i.bo = icmp eq i64 %indvars.iv146, %indvars.iv141
  br i1 %i.bo, label %.loopexit.us.us, label %.preheader105.a

.preheader105.a:                                  ; preds = %bb.f
  %i.bp = load i32, ptr %i.bi, align 4, !tbaa !113
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph121.a, label %.loopexit.us.us

.lr.ph121.a:                                      ; preds = %.preheader105.a
  %i.br = icmp samesign ult i64 %indvars.iv146, %indvars.iv141 ; 2 uses
  %i.bs = select i1 %i.br, i32 %i.bn, i32 %i.bm
  %i.bt = select i1 %i.br, i32 %i.bm, i32 %i.bn
  %i.bu = sext i32 %i.bs to i64
  %indvars.iv141.tr = trunc nuw i64 %indvars.iv141 to i32
  %i.bv = shl nuw i32 %indvars.iv141.tr, 1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = sext i32 %i.bt to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.us.us.us, %.lr.ph121.a
  %.060120.a = phi i32 [ 0, %.lr.ph121.a ], [ %19, %_ZNSt6vectorImSaImEED2Ev.exit.us.us.us ] ; 2 uses
  %i.by = load i32, ptr %0, align 8, !tbaa !112   ; 3 uses
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = icmp slt i32 %i.by, 0
  br i1 %i.ca, label %.split.us.split.us.split.us, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.a

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.a: ; preds = %bb.g
  %.not.i.i.i.i70.a = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i70.a, label %_ZNSt6vectorImSaImEED2Ev.exit.us.us.us, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.a

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.a:          ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.a
  %i.cb = shl nuw nsw i64 %i.bz, 3                ; 2 uses
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #43 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cc, i8 -1, i64 %i.cb, i1 false), !tbaa !111
  %.pre.pre = load i32, ptr %0, align 8, !tbaa !112 ; 4 uses
  %3 = icmp sgt i32 %.pre.pre, 0
  br i1 %3, label %.preheader.lr.ph.split, label %._crit_edge119.us.us.us

.preheader.lr.ph.split:                           ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.a
  %i.cd = mul nuw nsw i32 %.pre.pre, %.060120.a
  %.val66 = load ptr, ptr %i.bk, align 8, !tbaa !669 ; 3 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.val66, i64 %i.bu
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !117
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %.val2.i = load ptr, ptr %i.cg, align 8, !tbaa !139
  %i.ch = getelementptr [8 x i8], ptr %.val66, i64 %i.bw ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !117
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val2.i75 = load ptr, ptr %i.cj, align 8, !tbaa !139
  %i.ck = getelementptr inbounds [8 x i8], ptr %.val66, i64 %i.bx
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !117
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %.val2.i76 = load ptr, ptr %i.cm, align 8, !tbaa !139
  %i.cn = getelementptr i8, ptr %i.ch, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !117
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %.val2.i77 = load ptr, ptr %i.cp, align 8, !tbaa !139
  %i.cq = zext nneg i32 %i.cd to i64              ; 3 uses
  %wide.trip.count = zext nneg i32 %.pre.pre to i64 ; 4 uses
  %i.cr = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cq, 3                ; 5 uses
  %i.ct = add nuw nsw i64 %i.cr, %i.cs            ; 4 uses
  %scevgep = getelementptr i8, ptr %i.cc, i64 %i.cr
  %i.cu = insertelement <4 x ptr> poison, ptr %i.cc, i64 0
  %i.cv = shufflevector <4 x ptr> %i.cu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cw = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cx = shufflevector <4 x ptr> %i.cw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %.pre.pre, 6
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us.us.us, %.preheader.lr.ph.split
  %indvars.iv133 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next134.us.us.us, %._crit_edge.us.us.us ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.val2.i, i64 %indvars.iv133
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !117 ; 4 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val2.i75, i64 %indvars.iv133
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !117 ; 4 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val2.i76, i64 %indvars.iv133
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !117 ; 4 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.val2.i77, i64 %indvars.iv133
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !117 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.dg = getelementptr nuw i8, ptr %i.cz, i64 %i.cs
  %i.dh = getelementptr i8, ptr %i.cz, i64 %i.ct
  %i.di = getelementptr nuw i8, ptr %i.db, i64 %i.cs
  %i.dj = getelementptr i8, ptr %i.db, i64 %i.ct
  %i.dk = getelementptr nuw i8, ptr %i.dd, i64 %i.cs
  %i.dl = getelementptr i8, ptr %i.dd, i64 %i.ct
  %i.dm = getelementptr nuw i8, ptr %i.df, i64 %i.cs
  %i.dn = getelementptr i8, ptr %i.df, i64 %i.ct
  %i.do = insertelement <4 x ptr> poison, ptr %i.dh, i64 0
  %i.dp = insertelement <4 x ptr> %i.do, ptr %i.dj, i64 1
  %i.dq = insertelement <4 x ptr> %i.dp, ptr %i.dl, i64 2
  %i.dr = insertelement <4 x ptr> %i.dq, ptr %i.dn, i64 3
  %i.ds = icmp ult <4 x ptr> %i.cv, %i.dr
  %i.dt = insertelement <4 x ptr> poison, ptr %i.dg, i64 0
  %i.du = insertelement <4 x ptr> %i.dt, ptr %i.di, i64 1
  %i.dv = insertelement <4 x ptr> %i.du, ptr %i.dk, i64 2
  %i.dw = insertelement <4 x ptr> %i.dv, ptr %i.dm, i64 3
  %i.dx = icmp ult <4 x ptr> %i.dw, %i.cx
  %i.dy = and <4 x i1> %i.ds, %i.dx
  %i.dz = bitcast <4 x i1> %i.dy to i4
  %.not = icmp eq i4 %i.dz, 0
  br i1 %.not, label %vector.body, label %scalar.ph.preheader

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ea = add nuw nsw i64 %index, %i.cq           ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ea
  %wide.load = load <2 x i64>, ptr %i.eb, align 8, !tbaa !111, !alias.scope !670
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.ea
  %wide.load227 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !111, !alias.scope !671
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index ; 3 uses
  %wide.load228 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !111, !alias.scope !672, !noalias !673
  %i.ee = xor <2 x i64> %wide.load, %wide.load227
  %i.ef = xor <2 x i64> %i.ee, splat (i64 -1)
  %i.eg = and <2 x i64> %wide.load228, %i.ef      ; 2 uses
  store <2 x i64> %i.eg, ptr %i.ed, align 8, !tbaa !111, !alias.scope !672, !noalias !673
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ea
  %wide.load229 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !111, !alias.scope !674
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ea
  %wide.load230 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !111, !alias.scope !675
  %i.ej = xor <2 x i64> %wide.load229, %wide.load230
  %i.ek = xor <2 x i64> %i.ej, splat (i64 -1)
  %i.el = and <2 x i64> %i.eg, %i.ek
  store <2 x i64> %i.el, ptr %i.ed, align 8, !tbaa !111, !alias.scope !672, !noalias !673
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !660

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.en = add nuw nsw i64 %indvars.iv.a, %i.cq    ; 4 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !111
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.en
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !111
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.a ; 3 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !111
  %i.eu = xor i64 %i.ep, %i.er
  %i.ev = xor i64 %i.eu, -1
  %i.ew = and i64 %i.et, %i.ev                    ; 2 uses
  store i64 %i.ew, ptr %i.es, align 8, !tbaa !111
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.en
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !111
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.en
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !111
  %i.fb = xor i64 %i.ey, %i.fa
  %i.fc = xor i64 %i.fb, -1
  %i.fd = and i64 %i.ew, %i.fc
  store i64 %i.fd, ptr %i.es, align 8, !tbaa !111
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond.not.a, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !661

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next134.us.us.us = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.us.us.us.not = icmp eq i64 %indvars.iv.next134.us.us.us, %wide.trip.count136.us.us.us
  br i1 %exitcond137.us.us.us.not, label %.lr.ph.us.us.us, label %.preheader, !llvm.loop !662

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us
  %4 = load ptr, ptr %i.a, align 8, !tbaa !83
  %5 = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv146
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv141 ; 2 uses
  br label %8

8:                                                ; preds = %_ZN4UFARL9bit_countEm.exit.us.us.us, %.lr.ph.us.us.us
  %indvars.iv138.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next139.us.us.us, %_ZN4UFARL9bit_countEm.exit.us.us.us ] ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv138.us.us.us
  %10 = load i64, ptr %9, align 8, !tbaa !111     ; 2 uses
  %.not7.i.us.us.us = icmp eq i64 %10, 0
  br i1 %.not7.i.us.us.us, label %_ZN4UFARL9bit_countEm.exit.us.us.us, label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %8, %.lr.ph.i.us.us.us
  %.09.i.us.us.us = phi i32 [ %spec.select.i.us.us.us, %.lr.ph.i.us.us.us ], [ 0, %8 ]
  %.058.i.us.us.us = phi i64 [ %13, %.lr.ph.i.us.us.us ], [ %10, %8 ] ; 2 uses
  %11 = trunc i64 %.058.i.us.us.us to i32
  %12 = and i32 %11, 1
  %spec.select.i.us.us.us = add i32 %12, %.09.i.us.us.us ; 2 uses
  %13 = lshr i64 %.058.i.us.us.us, 1              ; 2 uses
  %.not.i.us.us.us = icmp eq i64 %13, 0
  br i1 %.not.i.us.us.us, label %_ZN4UFARL9bit_countEm.exit.us.us.us, label %.lr.ph.i.us.us.us, !llvm.loop !663

_ZN4UFARL9bit_countEm.exit.us.us.us:              ; preds = %.lr.ph.i.us.us.us, %8
  %.0.lcssa.i.us.us.us = phi i32 [ 0, %8 ], [ %spec.select.i.us.us.us, %.lr.ph.i.us.us.us ]
  %14 = load i32, ptr %7, align 4, !tbaa !52
  %15 = add i32 %14, %.0.lcssa.i.us.us.us
  store i32 %15, ptr %7, align 4, !tbaa !52
  %indvars.iv.next139.us.us.us = add nuw nsw i64 %indvars.iv138.us.us.us, 1 ; 2 uses
  %16 = load i32, ptr %0, align 8, !tbaa !112
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %indvars.iv.next139.us.us.us, %17
  br i1 %18, label %8, label %._crit_edge119.us.us.us, !llvm.loop !664

._crit_edge119.us.us.us:                          ; preds = %_ZN4UFARL9bit_countEm.exit.us.us.us, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit.a
  %.idx198 = shl nuw nsw i64 %i.bz, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %.idx198) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit.us.us.us

_ZNSt6vectorImSaImEED2Ev.exit.us.us.us:           ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.a, %._crit_edge119.us.us.us
  %19 = add nuw nsw i32 %.060120.a, 1             ; 2 uses
  %20 = load i32, ptr %i.bi, align 4, !tbaa !113
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %bb.g, label %.loopexit.us.us, !llvm.loop !665

.loopexit.us.us:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.us.us.us, %.preheader105.a, %bb.f
  %indvars.iv.next.us143.us = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond.us144.us.not = icmp eq i64 %indvars.iv.next.us143.us, %wide.trip.count149
  br i1 %exitcond.us144.us.not, label %._crit_edge125.split.us.us, label %bb.f, !llvm.loop !666

._crit_edge125.split.us.us:                       ; preds = %.loopexit.us.us
  %indvars.iv.next146.us = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond149.us.not = icmp eq i64 %indvars.iv.next146.us, %wide.trip.count149
  br i1 %exitcond149.us.not, label %._crit_edge127.split, label %.preheader106.a, !llvm.loop !667

.preheader106:                                    ; preds = %.preheader106.lr.ph, %._crit_edge125.split
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %._crit_edge125.split ], [ 0, %.preheader106.lr.ph ] ; 3 uses
  br label %22

._crit_edge127.split:                             ; preds = %._crit_edge125.split, %._crit_edge125.split.us.us, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

._crit_edge125.split:                             ; preds = %.loopexit
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count149
  br i1 %exitcond149.not, label %._crit_edge127.split, label %.preheader106, !llvm.loop !667

22:                                               ; preds = %.preheader106, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader106 ], [ %indvars.iv.next142, %.loopexit ] ; 3 uses
  %23 = icmp eq i64 %indvars.iv145, %indvars.iv
  br i1 %23, label %.loopexit, label %.preheader105

.preheader105:                                    ; preds = %22
  %24 = load i32, ptr %i.bi, align 4, !tbaa !113
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %.lr.ph121, label %.loopexit

.lr.ph121:                                        ; preds = %.preheader105, %_ZNSt6vectorImSaImEED2Ev.exit
  %.060120 = phi i32 [ %i.fe, %_ZNSt6vectorImSaImEED2Ev.exit ], [ 0, %.preheader105 ]
  %26 = load i32, ptr %0, align 8, !tbaa !112     ; 3 uses
  %27 = sext i32 %26 to i64                       ; 2 uses
  %28 = icmp slt i32 %26, 0
  br i1 %28, label %.split.us.split.us.split.us, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.split.us.split.us.split.us:                      ; preds = %.lr.ph121, %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.151) #39
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.lr.ph121
  %.not.i.i.i.i70 = icmp eq i32 %26, 0
  br i1 %.not.i.i.i.i70, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %29 = shl nuw nsw i64 %27, 3                    ; 2 uses
  %30 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %29) #43 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %30, i8 -1, i64 %29, i1 false), !tbaa !111
  %.pre = load i32, ptr %0, align 8, !tbaa !112
  %31 = icmp sgt i32 %.pre, 0
  br i1 %31, label %.lr.ph, label %._crit_edge119

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %32 = load ptr, ptr %i.a, align 8, !tbaa !83
  %33 = getelementptr inbounds nuw [24 x i8], ptr %32, i64 %indvars.iv145
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  %35 = getelementptr inbounds nuw [4 x i8], ptr %34, i64 %indvars.iv ; 2 uses
  br label %bb.h

._crit_edge119:                                   ; preds = %_ZN4UFARL9bit_countEm.exit, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %.idx = shl nuw nsw i64 %27, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %30, i64 noundef %.idx) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge119
  %i.fe = add nuw nsw i32 %.060120, 1             ; 2 uses
  %i.ff = load i32, ptr %i.bi, align 4, !tbaa !113
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %.lr.ph121, label %.loopexit, !llvm.loop !665

bb.h:                                             ; preds = %.lr.ph, %_ZN4UFARL9bit_countEm.exit
  %indvars.iv138 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next139, %_ZN4UFARL9bit_countEm.exit ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %indvars.iv138
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !111 ; 2 uses
  %.not7.i = icmp eq i64 %i.fi, 0
  br i1 %.not7.i, label %_ZN4UFARL9bit_countEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.09.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.h ]
  %.058.i = phi i64 [ %i.fl, %.lr.ph.i ], [ %i.fi, %bb.h ] ; 2 uses
  %i.fj = trunc i64 %.058.i to i32
  %i.fk = and i32 %i.fj, 1
  %spec.select.i = add i32 %i.fk, %.09.i          ; 2 uses
  %i.fl = lshr i64 %.058.i, 1                     ; 2 uses
  %.not.i = icmp eq i64 %i.fl, 0
  br i1 %.not.i, label %_ZN4UFARL9bit_countEm.exit, label %.lr.ph.i, !llvm.loop !663

_ZN4UFARL9bit_countEm.exit:                       ; preds = %.lr.ph.i, %bb.h
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %spec.select.i, %.lr.ph.i ]
  %i.fm = load i32, ptr %35, align 4, !tbaa !52
  %i.fn = add i32 %i.fm, %.0.lcssa.i
  store i32 %i.fn, ptr %35, align 4, !tbaa !52
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.fo = load i32, ptr %0, align 8, !tbaa !112
  %i.fp = sext i32 %i.fo to i64
  %i.fq = icmp slt i64 %indvars.iv.next139, %i.fp
  br i1 %i.fq, label %bb.h, label %._crit_edge119, !llvm.loop !664

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.preheader105, %22
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count149
  br i1 %exitcond145.not, label %._crit_edge125.split, label %22, !llvm.loop !666
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4UFAR16SimUifPairFinder19_simulate_and_countEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.3", align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !102

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #43
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !142 ; 2 uses
  %.pre13 = load ptr, ptr %i.c, align 8, !tbaa !142
  %.pre14 = ptrtoint ptr %.pre13 to i64
  %.pre15 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i:      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi16 = phi i64 [ %.pre15, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre14, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !87
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !134
  %i.p = sub i64 %.pre-phi, %.pre-phi16           ; 4 uses
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !133

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i
  %i.r = icmp eq i64 %i.p, 4
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.k, align 4, !tbaa !52
  store i32 %i.s, ptr %i.l, align 4, !tbaa !52
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  store ptr %i.t, ptr %i.m, align 8, !tbaa !127
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i32, ptr %i.w, align 8, !tbaa !144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.z = load i32, ptr %i.y, align 4, !tbaa !145
  %i.aa = call noundef ptr @_ZN4UFAR21AddAuxPOsForOperatorsEP10Wlc_Ntk_t_RSt6vectorIiSaIiEEii(ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.x, i32 noundef %i.z) #37 ; 4 uses
  %i.ab = call noundef ptr @_ZN4UFAR16SimUifPairFinder18_collect_sim_nodesEP10Wlc_Ntk_t_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.aa) ; 3 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !112
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !113
  %i.af = call ptr @Wlc_NtkSimulate(ptr noundef %i.aa, ptr noundef %i.ab, i32 noundef %i.ac, i32 noundef %i.ae) #37 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !131
  %i.ah = load i32, ptr %.val, align 4, !tbaa !52
  %i.ai = getelementptr i8, ptr %i.aa, i64 640
  %.val10 = load ptr, ptr %i.ai, align 8, !tbaa !153
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [24 x i8], ptr %.val10, i64 %i.aj ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val11 = load i32, ptr %i.al, align 8, !tbaa !155
  %i.am = getelementptr i8, ptr %i.ak, i64 12
  %.val12 = load i32, ptr %i.am, align 4, !tbaa !156
  %i.an = sub nsw i32 %.val11, %.val12
  %i.ao = call i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = add nuw nsw i32 %i.ao, 1
  call void @_ZN4UFAR16SimUifPairFinder14_count_matchesEP10Vec_Ptr_t_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.af, i32 noundef %i.ap)
  call void @Wlc_NtkFree(ptr noundef %i.aa) #37
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !131 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZL11Vec_IntFreeP10Vec_Int_t_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  call void @free(ptr noundef nonnull %i.aq) #37
  br label %_ZL11Vec_IntFreeP10Vec_Int_t_.exit

_ZL11Vec_IntFreeP10Vec_Int_t_.exit:               ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit, %bb.g
  call void @free(ptr noundef nonnull %i.ab) #37
  call void @Wlc_NtkDeleteSim(ptr noundef %i.af) #37
  %i.ar = load ptr, ptr %1, align 8, !tbaa !87    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZL11Vec_IntFreeP10Vec_Int_t_.exit
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #40
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZL11Vec_IntFreeP10Vec_Int_t_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret void
}

declare noundef ptr @_ZN4UFAR21AddAuxPOsForOperatorsEP10Wlc_Ntk_t_RSt6vectorIiSaIiEEii(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Wlc_NtkSimulate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @Wlc_NtkFree(ptr noundef) local_unnamed_addr #3

declare void @Wlc_NtkDeleteSim(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4UFAR16SimUifPairFinder17_insert_sim_pairsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157
  tail call void @_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  store ptr null, ptr %i.c, align 8, !tbaa !157
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !158
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.g, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !135
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 24                  ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.preheader.lr.ph, label %._crit_edge161.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count168 = and i64 %i.o, 2147483647  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv165 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next166, %._crit_edge ] ; 18 uses
  br label %bb.b

._crit_edge161.split:                             ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_.exit
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge161.split, label %.preheader, !llvm.loop !676

bb.b:                                             ; preds = %.preheader, %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_.exit ] ; 18 uses
  %i.s = icmp eq i64 %indvars.iv165, %indvars.iv
  br i1 %i.s, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %indvars.iv165
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !87
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = load i32, ptr %i.r, align 8, !tbaa !81
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp samesign ult i64 %indvars.iv165, %indvars.iv
  %.02635.i = load ptr, ptr %i.c, align 8, !tbaa !161 ; 3 uses
  %.not36.i = icmp eq ptr %.02635.i, null         ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  br i1 %.not36.i, label %._crit_edge.thread.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.e, %.lr.ph.split.i.backedge
  %.02637.i = phi ptr [ %.02637.i.be, %.lr.ph.split.i.backedge ], [ %.02635.i, %bb.e ] ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.02637.i, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.umax.i32
!454 = !{!396, !48, i64 232}
!455 = !{!431, !71, i64 40}
!456 = !{!427, !219, i64 8}
!457 = !{!427, !219, i64 16}
!458 = !{!427, !219, i64 0}
!459 = !{!"_ZTSSt8functionIFbcEE", !450, i64 0, !63, i64 24}
!460 = !{!459, !63, i64 24}
!461 = !{!121, !121, i64 0}
!462 = !{!"_ZTSNSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEE", !121, i64 0, !71, i64 8, !71, i64 16}
!463 = !{!462, !71, i64 8}
!464 = !{!462, !71, i64 16}
!465 = !{!402, !400, i64 64}
!466 = !{i64 0, i64 8, !461, i64 8, i64 8, !111, i64 16, i64 8, !111}
!467 = !{!219, !219, i64 0}
!468 = !{!"_ZTSSt4pairIcNSt8__detail12_ScannerBase7_TokenTEE", !48, i64 0, !393, i64 4}
!469 = !{!468, !48, i64 0}
!470 = !{!468, !393, i64 4}
!471 = !{!"_ZTSSt4pairIccE", !48, i64 0, !48, i64 1}
!472 = !{!471, !48, i64 0}
!473 = !{!471, !48, i64 1}
!474 = !{!395, !394, i64 152}
!475 = !{!395, !88, i64 160}
!476 = !{!395, !58, i64 168}
!477 = !{!396, !184, i64 192}
!478 = !{!201, !200, i64 48}
!479 = !{!"short", !48, i64 0}
!480 = !{!479, !479, i64 0}
!481 = !{!431, !118, i64 24}
!482 = !{i64 0, i64 16, !101}
!483 = !{!462, !121, i64 0}
!484 = !{!408, !407, i64 384}
!485 = !{!"p2 long", !137, i64 0}
!486 = !{!"_ZTSSt15_Deque_iteratorIlRlPlE", !219, i64 0, !219, i64 8, !219, i64 16, !485, i64 24}
!487 = !{!"_ZTSNSt11_Deque_baseIlSaIlEE16_Deque_impl_dataE", !485, i64 0, !71, i64 8, !486, i64 16, !486, i64 48}
!488 = !{!487, !71, i64 8}
!489 = !{!487, !485, i64 0}
!490 = !{!486, !485, i64 24}
!491 = !{!486, !219, i64 8}
!492 = !{!486, !219, i64 16}
!493 = !{!487, !219, i64 16}
!494 = !{!487, !219, i64 48}
!495 = !{!486, !219, i64 0}
!496 = !{!487, !219, i64 64}
!497 = !{!487, !485, i64 72}
!498 = !{!487, !485, i64 40}
!499 = !{!431, !58, i64 48}
!500 = !{!408, !184, i64 392}
!501 = !{!"_ZTSNSt12_Vector_baseISt4pairIccESaIS1_EE17_Vector_impl_dataE", !394, i64 0, !394, i64 8, !394, i64 16}
!502 = !{!"_ZTSNSt12_Vector_baseISt4pairIccESaIS1_EE12_Vector_implE", !501, i64 0}
!503 = !{!"_ZTSSt12_Vector_baseISt4pairIccESaIS1_EE", !502, i64 0}
!504 = !{!"_ZTSSt6vectorISt4pairIccESaIS1_EE", !503, i64 0}
!505 = !{!"p1 _ZTSNSt7__cxx1112regex_traitsIcE10_RegexMaskE", !63, i64 0}
!506 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_Vector_impl_dataE", !505, i64 0, !505, i64 8, !505, i64 16}
!507 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_Vector_implE", !506, i64 0}
!508 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE", !507, i64 0}
!509 = !{!"_ZTSSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE", !508, i64 0}
!510 = !{!"_ZTSNSt7__cxx1112regex_traitsIcE10_RegexMaskE", !479, i64 0, !48, i64 2}
!511 = !{!"_ZTSNSt8__detail16_RegexTranslatorINSt7__cxx1112regex_traitsIcEELb0ELb0EEE"}
!512 = !{!"_ZTSSt12_Base_bitsetILm4EE", !48, i64 0}
!513 = !{!"_ZTSSt6bitsetILm256EE", !512, i64 0}
!514 = !{!"_ZTSNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEE", !285, i64 0, !273, i64 24, !504, i64 48, !509, i64 72, !510, i64 96, !511, i64 100, !407, i64 104, !58, i64 112, !513, i64 120}
!515 = !{!514, !58, i64 112}
!516 = !{!255, !255, i64 0}
!517 = !{!501, !394, i64 0}
!518 = !{!501, !394, i64 8}
!519 = !{!501, !394, i64 16}
!520 = !{!505, !505, i64 0}
!521 = !{!506, !505, i64 16}
!522 = !{!"p1 _ZTSNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEE", !63, i64 0}
!523 = !{!522, !522, i64 0}
!524 = !{!506, !505, i64 0}
!525 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !63, i64 0}
!526 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_Vector_impl_dataE", !525, i64 0, !525, i64 8, !525, i64 16}
!527 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_Vector_implE", !526, i64 0}
!528 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !527, i64 0}
!529 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE", !528, i64 0}
!530 = !{!"_ZTSNSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb0ELb1EEE", !407, i64 0}
!531 = !{!"_ZTSNSt8__detail16_RegexTranslatorINSt7__cxx1112regex_traitsIcEELb0ELb1EEE", !530, i64 0}
!532 = !{!"_ZTSNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEE", !285, i64 0, !273, i64 24, !529, i64 48, !509, i64 72, !510, i64 96, !531, i64 104, !407, i64 112, !58, i64 120, !513, i64 128}
!533 = !{!532, !58, i64 120}
!534 = !{!526, !525, i64 0}
!535 = !{!526, !525, i64 8}
!536 = !{!526, !525, i64 16}
!537 = !{!"p1 _ZTSNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEE", !63, i64 0}
!538 = !{!537, !537, i64 0}
!539 = !{!"_ZTSNSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb0EEE", !407, i64 0}
!540 = !{!"_ZTSNSt8__detail16_RegexTranslatorINSt7__cxx1112regex_traitsIcEELb1ELb0EEE", !539, i64 0}
!541 = !{!"_ZTSNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEE", !285, i64 0, !273, i64 24, !504, i64 48, !509, i64 72, !510, i64 96, !540, i64 104, !407, i64 112, !58, i64 120, !513, i64 128}
!542 = !{!541, !58, i64 120}
!543 = !{!"p1 _ZTSNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEE", !63, i64 0}
!544 = !{!543, !543, i64 0}
!545 = !{!"_ZTSNSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb1ELb1EEE", !407, i64 0}
!546 = !{!"_ZTSNSt8__detail16_RegexTranslatorINSt7__cxx1112regex_traitsIcEELb1ELb1EEE", !545, i64 0}
!547 = !{!"_ZTSNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEE", !285, i64 0, !273, i64 24, !529, i64 48, !509, i64 72, !510, i64 96, !546, i64 104, !407, i64 112, !58, i64 120, !513, i64 128}
!548 = !{!547, !58, i64 120}
!549 = !{!"p1 _ZTSNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEE", !63, i64 0}
!550 = !{!549, !549, i64 0}
!551 = !{!"branch_weights", i32 1, i32 1048575}
!552 = !{!"p1 _ZTSSt9type_info", !63, i64 0}
!553 = !{!552, !552, i64 0}
!554 = !{!539, !407, i64 0}
!555 = !{!545, !407, i64 0}
!556 = !{!514, !407, i64 104}
!557 = !{!510, !479, i64 0}
!558 = !{!510, !48, i64 2}
!559 = !{!506, !505, i64 8}
!560 = !{!"_ZTSZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEEUlvE_", !522, i64 0, !48, i64 8}
!561 = !{!560, !522, i64 0}
!562 = !{!560, !48, i64 8}
!563 = !{!394, !394, i64 0}
!564 = !{!"branch_weights", i32 4, i32 12}
!565 = !{!532, !407, i64 112}
!566 = !{!"_ZTSZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_applyEcSt17integral_constantIbLb0EEEUlvE_", !537, i64 0, !48, i64 8}
!567 = !{!566, !537, i64 0}
!568 = !{!566, !48, i64 8}
!569 = !{!530, !407, i64 0}
!570 = !{!525, !525, i64 0}
!571 = !{!541, !407, i64 112}
!572 = !{!"_ZTSZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_applyEcSt17integral_constantIbLb0EEEUlvE_", !543, i64 0, !48, i64 8}
!573 = !{!572, !543, i64 0}
!574 = !{!572, !48, i64 8}
!575 = !{!547, !407, i64 112}
!576 = !{!"_ZTSZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_applyEcSt17integral_constantIbLb0EEEUlvE_", !549, i64 0, !48, i64 8}
!577 = !{!576, !549, i64 0}
!578 = !{!576, !48, i64 8}
!579 = !{!"_ZTSNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_BracketState5_TypeE", !48, i64 0}
!580 = !{!"_ZTSNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_BracketStateE", !579, i64 0, !48, i64 1}
!581 = !{!580, !579, i64 0}
!582 = !{!580, !48, i64 1}
!583 = !{!"p1 _ZTSNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_BracketStateE", !63, i64 0}
!584 = !{!583, !583, i64 0}
!585 = !{!"_ZTSSt4pairIKllE", !71, i64 0, !71, i64 8}
!586 = !{!585, !71, i64 8}
!587 = !{!122, !121, i64 0}
!588 = !{!"p1 _ZTSNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEEE", !63, i64 0}
!589 = !{!"p1 _ZTSSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE", !63, i64 0}
!590 = !{!589, !589, i64 0}
!591 = !{!"p1 _ZTSSt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiE", !63, i64 0}
!592 = !{!"_ZTSNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE17_Vector_impl_dataE", !591, i64 0, !591, i64 8, !591, i64 16}
!593 = !{!592, !591, i64 0}
!594 = !{!592, !591, i64 16}
!595 = !{!105, !88, i64 0}
!596 = !{!"_ZTSSt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiE", !105, i64 0, !49, i64 8}
!597 = !{!596, !49, i64 8}
!598 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE12_Vector_implE", !114, i64 0}
!599 = !{!"_ZTSSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE", !598, i64 0}
!600 = !{!"_ZTSSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE", !599, i64 0}
!601 = !{!"_ZTSNSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE12_Vector_implE", !592, i64 0}
!602 = !{!"_ZTSSt12_Vector_baseISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE", !601, i64 0}
!603 = !{!"_ZTSSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EE", !602, i64 0}
!604 = !{!"p1 _ZTSSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEE", !63, i64 0}
!605 = !{!"_ZTSNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE17_Vector_impl_dataE", !604, i64 0, !604, i64 8, !604, i64 16}
!606 = !{!"_ZTSNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE12_Vector_implE", !605, i64 0}
!607 = !{!"_ZTSSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE", !606, i64 0}
!608 = !{!"_ZTSSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE", !607, i64 0}
!609 = !{!"p1 bool", !63, i64 0}
!610 = !{!"_ZTSNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EEE", !608, i64 0, !609, i64 24, !71, i64 32}
!611 = !{!"_ZTSNSt15regex_constants15match_flag_typeE", !48, i64 0}
!612 = !{!"_ZTSNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EEE", !600, i64 0, !105, i64 24, !105, i64 32, !105, i64 40, !588, i64 48, !121, i64 56, !589, i64 64, !603, i64 72, !610, i64 96, !611, i64 136, !58, i64 140}
!613 = !{!612, !121, i64 56}
!614 = !{!592, !591, i64 8}
!615 = !{!610, !609, i64 24}
!616 = !{!611, !611, i64 0}
!617 = !{!612, !611, i64 136}
!618 = !{!605, !604, i64 0}
!619 = !{!605, !604, i64 8}
!620 = !{!605, !604, i64 16}
!621 = !{!"_ZTSNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_State_infoISt17integral_constantIbLb1EESt6vectorISD_SE_EEE", !71, i64 0, !105, i64 8}
!622 = !{!"_ZTSNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EEE", !600, i64 0, !105, i64 24, !105, i64 32, !105, i64 40, !588, i64 48, !121, i64 56, !589, i64 64, !603, i64 72, !621, i64 96, !611, i64 112, !58, i64 116}
!623 = !{!622, !58, i64 116}
!624 = !{!622, !71, i64 96}
!625 = !{!622, !589, i64 64}
!626 = !{!622, !611, i64 112}
!627 = !{!114, !103, i64 8}
!628 = !{!612, !71, i64 128}
!629 = !{!612, !589, i64 64}
!630 = !{!"_ZTSSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEE", !71, i64 0, !600, i64 8}
!631 = !{!630, !71, i64 0}
!632 = !{!612, !58, i64 140}
!633 = !{!612, !588, i64 48}
!634 = !{!"_ZTSNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEEE", !58, i64 0, !407, i64 8}
!635 = !{!634, !58, i64 0}
!636 = !{!622, !121, i64 56}
!637 = !{!622, !588, i64 48}
!638 = distinct !{null, null, null, null}
!639 = distinct !{!639, i1 true, !"_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv"}
!640 = distinct !{!640, !639, !"_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv: argument 0"}
!641 = distinct !{!641, i1 true, !"_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv"}
!642 = distinct !{!642, !641, !"_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv: argument 0"}
!643 = distinct !{!643, i1 true, !"_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv"}
!644 = distinct !{!644, !643, !"_ZNKSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS_12basic_stringIcSt11char_traitsIcESaIcEEEEEE3strEv: argument 0"}
!645 = !{!640}
!646 = !{!642}
!647 = !{!644}
!648 = distinct !{!648, i1 true, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE10_M_get_nfaEv"}
!649 = distinct !{!649, !648, !"_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE10_M_get_nfaEv: argument 0"}
!650 = distinct !{null, null, null, null, null, null}
!651 = !{!649}
!652 = distinct !{!652, !132}
!653 = distinct !{!653, !132}
!654 = distinct !{!654, i1 false, !"LVerDomain"}
!655 = distinct !{!655, !654}
!656 = distinct !{!656, !654}
!657 = distinct !{!657, !654}
!658 = distinct !{!658, !654}
!659 = distinct !{!659, !654}
!660 = distinct !{!660, !132, !140, !141}
!661 = distinct !{!661, !132, !140}
!662 = distinct !{!662, !132}
!663 = distinct !{!663, !132}
!664 = distinct !{!664, !132}
!665 = distinct !{!665, !132}
!666 = distinct !{!666, !132}
!667 = distinct !{!667, !132}
!668 = !{!"_ZTS10Vec_Vec_t_", !49, i64 0, !49, i64 4, !137, i64 8}
!669 = !{!668, !137, i64 8}
!670 = !{!655}
!671 = !{!656}
!672 = !{!657}
!673 = !{!655, !656, !659, !658}
!674 = !{!659}
!675 = !{!658}
!676 = distinct !{!676, !132}
!677 = distinct !{!677, !132}
!678 = distinct !{!678, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!679 = distinct !{!679, !678, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!680 = distinct !{!680, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!681 = distinct !{!681, !680, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!682 = !{!679}
!683 = !{!681}
!684 = !{!681, !679}
!685 = distinct !{!685, !132, !140, !141}
!686 = distinct !{!686, !132, !140, !141}
!687 = distinct !{!687, !204}
!688 = distinct !{!688, !132, !140}
!689 = distinct !{!689, i1 true, !"_ZSt19__relocate_object_aIN4UFAR7UifPairES1_SaIS1_EEvPT_PT0_RT1_"}
!690 = distinct !{!690, !689, !"_ZSt19__relocate_object_aIN4UFAR7UifPairES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!691 = distinct !{!691, !689, !"_ZSt19__relocate_object_aIN4UFAR7UifPairES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!692 = distinct !{!692, !132}
!693 = !{!691, !690}
!694 = !{!217, !58, i64 23}
!695 = distinct !{!695, !132}
!696 = distinct !{!696, !132, !228}
!697 = distinct !{!697, !132}
!698 = !{!163, !163, i64 0}
!699 = !{!223, !49, i64 0}
!700 = distinct !{!700, !204}
!701 = distinct !{!701, !132}
!702 = distinct !{!702, !132}
!703 = distinct !{!703, !132}
!704 = distinct !{!704, !132}
!705 = distinct !{!705, !132}
!706 = distinct !{!706, !132}
!707 = distinct !{!707, !132}
!708 = !{!241, !88, i64 0}
!709 = !{!241, !85, i64 232}
!710 = distinct !{!710, !132}
!711 = distinct !{!711, !132}
!712 = distinct !{!712, !132}
!713 = distinct !{!713, !132}
!714 = distinct !{!714, i1 true, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!715 = distinct !{!715, !714, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!716 = distinct !{!716, i1 true, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!717 = distinct !{!717, !716, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!718 = distinct !{!718, !132}
!719 = distinct !{!719, !132}
!720 = distinct !{!720, !132}
!721 = distinct !{!721, !132}
!722 = distinct !{!722, !132}
!723 = distinct !{!723, !132}
!724 = !{!"p1 _ZTS10Aig_Man_t_", !63, i64 0}
!725 = !{!"_ZTS10Cnf_Dat_t_", !724, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !249, i64 24, !85, i64 32, !85, i64 40, !85, i64 48, !88, i64 56, !146, i64 64}
!726 = !{!725, !49, i64 8}
!727 = !{!725, !49, i64 16}
!728 = !{!"p1 _ZTS10Aig_Obj_t_", !63, i64 0}
!729 = !{!"_ZTS10Aig_Obj_t_", !48, i64 0, !728, i64 8, !728, i64 16, !49, i64 24, !49, i64 24, !49, i64 24, !49, i64 24, !49, i64 24, !49, i64 28, !49, i64 31, !49, i64 32, !49, i64 36, !48, i64 40}
!730 = !{!"p2 _ZTS10Aig_Obj_t_", !137, i64 0}
!731 = !{!"p1 _ZTS14Aig_MmFixed_t_", !63, i64 0}
!732 = !{!"_ZTS10Aig_Man_t_", !88, i64 0, !88, i64 8, !149, i64 16, !149, i64 24, !149, i64 32, !149, i64 40, !728, i64 48, !729, i64 56, !49, i64 104, !49, i64 108, !49, i64 112, !49, i64 116, !49, i64 120, !49, i64 124, !48, i64 128, !49, i64 156, !730, i64 160, !49, i64 168, !85, i64 176, !49, i64 184, !238, i64 192, !49, i64 200, !49, i64 204, !49, i64 208, !85, i64 216, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !730, i64 248, !730, i64 256, !49, i64 264, !731, i64 272, !146, i64 280, !49, i64 288, !63, i64 296, !63, i64 304, !49, i64 312, !49, i64 316, !49, i64 320, !730, i64 328, !63, i64 336, !63, i64 344, !63, i64 352, !63, i64 360, !85, i64 368, !85, i64 376, !149, i64 384, !146, i64 392, !146, i64 400, !163, i64 408, !149, i64 416, !724, i64 424, !149, i64 432, !49, i64 440, !146, i64 448, !238, i64 456, !146, i64 464, !146, i64 472, !49, i64 480, !71, i64 488, !71, i64 496, !71, i64 504, !149, i64 512, !149, i64 520}
!733 = !{!732, !149, i64 24}
!734 = !{!138, !49, i64 4}
!735 = !{!725, !249, i64 24}
!736 = !{!725, !85, i64 32}
!737 = !{!729, !49, i64 36}
!738 = !{!732, !149, i64 16}
!739 = !{!715}
!740 = !{!717}
!741 = !{!717, !715}
!742 = !{!"_ZTS10Sat_Mem_t_", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !249, i64 48}
!743 = !{!"p1 _ZTS8clause_t", !63, i64 0}
!744 = !{!"p1 _ZTS6veci_t", !63, i64 0}
!745 = !{!"_ZTS6veci_t", !49, i64 0, !49, i64 4, !85, i64 8}
!746 = !{!"double", !48, i64 0}
!747 = !{!"_ZTS7stats_t", !49, i64 0, !49, i64 4, !49, i64 8, !71, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64}
!748 = !{!"p1 double", !63, i64 0}
!749 = !{!"p1 _ZTS8_IO_FILE", !63, i64 0}
!750 = !{!"_ZTS12sat_solver_t", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !742, i64 16, !49, i64 72, !49, i64 76, !743, i64 80, !744, i64 88, !49, i64 96, !49, i64 100, !49, i64 104, !49, i64 108, !49, i64 112, !71, i64 120, !71, i64 128, !71, i64 136, !219, i64 144, !219, i64 152, !49, i64 160, !49, i64 164, !745, i64 168, !88, i64 184, !49, i64 192, !85, i64 200, !88, i64 208, !88, i64 216, !88, i64 224, !88, i64 232, !85, i64 240, !85, i64 248, !85, i64 256, !745, i64 264, !745, i64 280, !745, i64 296, !745, i64 312, !85, i64 328, !745, i64 336, !49, i64 352, !49, i64 356, !49, i64 360, !746, i64 368, !746, i64 376, !49, i64 384, !49, i64 388, !49, i64 392, !747, i64 400, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !71, i64 496, !71, i64 504, !71, i64 512, !745, i64 520, !748, i64 536, !49, i64 544, !49, i64 548, !49, i64 552, !745, i64 560, !745, i64 576, !49, i64 592, !49, i64 596, !49, i64 600, !85, i64 608, !63, i64 616, !49, i64 624, !749, i64 632, !49, i64 640, !49, i64 644, !745, i64 648, !745, i64 664, !745, i64 680, !63, i64 696, !63, i64 704, !49, i64 712, !63, i64 720}
!751 = !{!750, !49, i64 340}
!752 = !{!750, !85, i64 344}
!753 = !{!750, !85, i64 328}
!754 = distinct !{!754, !132}
!755 = distinct !{!755, i1 true, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb"}
!756 = distinct !{!756, !755, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb: argument 0"}
!757 = distinct !{!757, !132, !140, !141}
!758 = distinct !{!758, !132, !140, !141}
!759 = distinct !{!759, !204}
!760 = distinct !{!760, !132, !140}
!761 = distinct !{!761, i1 true, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb"}
!762 = distinct !{!762, !761, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb: argument 0"}
!763 = distinct !{!763, !132, !140, !141}
!764 = distinct !{!764, !132, !140, !141}
!765 = distinct !{!765, !204}
!766 = distinct !{!766, !132, !140}
!767 = distinct !{!767, i1 true, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb"}
!768 = distinct !{!768, !767, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb: argument 0"}
!769 = distinct !{!769, !132, !140, !141}
!770 = distinct !{!770, !132, !140, !141}
!771 = distinct !{!771, !204}
!772 = distinct !{!772, !132, !140}
!773 = distinct !{!773, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!774 = distinct !{!774, !773, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!775 = distinct !{!775, !773, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!776 = distinct !{!776, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!777 = distinct !{!777, !776, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!778 = distinct !{!778, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!779 = distinct !{!779, !778, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!780 = distinct !{!780, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!781 = distinct !{!781, !780, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!782 = distinct !{!782, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!783 = distinct !{!783, !782, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!784 = distinct !{!784, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!785 = distinct !{!785, !784, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!786 = distinct !{!786, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!787 = distinct !{!787, !786, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!788 = distinct !{!788, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!789 = distinct !{!789, !788, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!790 = distinct !{!790, !788, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!791 = distinct !{!791, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!792 = distinct !{!792, !791, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!793 = distinct !{!793, !791, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!794 = distinct !{!794, !132}
!795 = distinct !{!795, !132}
!796 = distinct !{!796, !132}
!797 = distinct !{!797, !132}
!798 = !{!756}
!799 = !{!762}
!800 = !{!768}
!801 = !{!774}
!802 = !{!775}
!803 = !{!774, !775}
!804 = !{!777}
!805 = !{!779, !777}
!806 = !{!781}
!807 = !{!783}
!808 = !{!785, !783}
!809 = !{!787}
!810 = !{!789}
!811 = !{!790}
!812 = !{!789, !790}
!813 = !{!792}
!814 = !{!793}
!815 = !{!792, !793}
!816 = distinct !{!816, !132}
!817 = distinct !{!817, i1 true, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb"}
!818 = distinct !{!818, !817, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb: argument 0"}
!819 = distinct !{!819, !132, !140, !141}
!820 = distinct !{!820, !132, !140, !141}
!821 = distinct !{!821, !204}
!822 = distinct !{!822, !132, !140}
!823 = distinct !{!823, i1 true, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb"}
!824 = distinct !{!824, !823, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb: argument 0"}
!825 = distinct !{!825, !132, !140, !141}
!826 = distinct !{!826, !132, !140, !141}
!827 = distinct !{!827, !204}
!828 = distinct !{!828, !132, !140}
!829 = distinct !{!829, i1 true, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb"}
!830 = distinct !{!830, !829, !"_ZN4UFAR16CexUifPairFinder11_get_bitstrB5cxx11EP10Wlc_Obj_t_RKSt6vectorIcSaIcEERjb: argument 0"}
!831 = distinct !{!831, !132, !140, !141}
!832 = distinct !{!832, !132, !140, !141}
!833 = distinct !{!833, !204}
!834 = distinct !{!834, !132, !140}
!835 = distinct !{!835, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!836 = distinct !{!836, !835, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!837 = distinct !{!837, !835, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!838 = distinct !{!838, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!839 = distinct !{!839, !838, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!840 = distinct !{!840, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!841 = distinct !{!841, !840, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!842 = distinct !{!842, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!843 = distinct !{!843, !842, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!844 = distinct !{!844, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_"}
!845 = distinct !{!845, !844, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_: argument 0"}
!846 = distinct !{!846, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!847 = distinct !{!847, !846, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!848 = distinct !{!848, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!849 = distinct !{!849, !848, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!850 = distinct !{!850, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!851 = distinct !{!851, !850, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!852 = distinct !{!852, !850, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!853 = distinct !{!853, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!854 = distinct !{!854, !853, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!855 = distinct !{!855, !853, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!856 = distinct !{!856, !132}
!857 = distinct !{!857, !132}
!858 = distinct !{!858, !132}
!859 = distinct !{!859, !132}
!860 = !{!818}
!861 = !{!824}
!862 = !{!830}
!863 = !{!836}
!864 = !{!837}
!865 = !{!836, !837}
!866 = !{!839}
!867 = !{!841, !839}
!868 = !{!843}
!869 = !{!845}
!870 = !{!847, !845}
!871 = !{!849}
!872 = !{!851}
!873 = !{!852}
!874 = !{!851, !852}
!875 = !{!854}
end_hunk_1
