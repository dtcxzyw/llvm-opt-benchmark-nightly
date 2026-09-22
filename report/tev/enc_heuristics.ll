Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_heuristics?download=true
inline.NumInlined: 3479
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm:bb.a
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.prol, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !93, !noalias !803
  %i.ax = getelementptr inbounds i8, ptr %i.au, i64 -1 ; 4 uses
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !93, !noalias !803
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !801

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ay = sub i64 %i.x, %.sroa.2.05.i.i.i.i.i.i.i.ph32
  %i.az = icmp ugt i64 %i.ay, -8
  br i1 %i.az, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %i.ba = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bb = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !93, !noalias !803
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 -1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !93, !noalias !803
  %i.be = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !93, !noalias !803
  %i.bg = getelementptr inbounds i8, ptr %i.ba, i64 -2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !93, !noalias !803
  %i.bh = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !93, !noalias !803
  %i.bj = getelementptr inbounds i8, ptr %i.ba, i64 -3
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !93, !noalias !803
  %i.bk = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !93, !noalias !803
  %i.bm = getelementptr inbounds i8, ptr %i.ba, i64 -4
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !93, !noalias !803
  %i.bn = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !93, !noalias !803
  %i.bp = getelementptr inbounds i8, ptr %i.ba, i64 -5
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !93, !noalias !803
  %i.bq = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !93, !noalias !803
  %i.bs = getelementptr inbounds i8, ptr %i.ba, i64 -6
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !93, !noalias !803
  %i.bt = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !93, !noalias !803
  %i.bv = getelementptr inbounds i8, ptr %i.ba, i64 -7
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !93, !noalias !803
  %i.bw = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !93, !noalias !803
  %i.by = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 3 uses
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !93, !noalias !803
  %.not.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bw, %i.r
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !802

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm.exit
  %storemerge = phi ptr [ %i.u, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE18__construct_at_endEm.exit ], [ %i.an, %vec.epilog.middle.block ], [ %i.ae, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !67
  store ptr %i.w, ptr %i.c, align 8, !tbaa !67
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !67
  store ptr %i.v, ptr %i.a, align 8, !tbaa !67
  %.not.i6 = icmp eq ptr %i.r, null
  br i1 %.not.i6, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.r to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.cc) #25
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit: ; preds = %bb.f, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8nn180100Ev.exit.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8nn180100IPhS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !71     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e                       ; 3 uses
  %i.k = icmp ugt i64 %3, %i.j
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.j ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.j, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !72
  br label %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit

_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.h, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.q, ptr %i.g, align 8, !tbaa !72
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit: ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  store ptr %i.u, ptr %i.g, align 8, !tbaa !72
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.v, align 8, !tbaa !72
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.b, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.x = icmp slt i64 %3, 0
  br i1 %i.x, label %bb.j, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  unreachable

_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  %i.y = ptrtoint ptr %i.w to i64
  %.not.i16 = icmp ult ptr %i.w, inttoptr (i64 4611686018427387903 to ptr)
  %i.z = shl nuw nsw i64 %i.y, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %3)
  %.0.i = select i1 %.not.i16, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i) #26 ; 5 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !67
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %1, i64 %i.af, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8nn180100Em.exit, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit18
  ret void
}

declare i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, i64 noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhLb0EEEvT1_SI_T0_NS_15iterator_traitsISI_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #18 {
bb.a:
  %i.a = zext i1 %4 to i8
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer"

"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer": ; preds = %bb.cm, %bb.a
  %.0149.ph = phi ptr [ %i.rq, %bb.cm ], [ %1, %bb.a ] ; 25 uses
  %.0146.ph = phi ptr [ %.0146, %bb.cm ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph413, %bb.cm ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.id, %bb.cm ], [ %3, %bb.a ]
  %i.b = ptrtoint ptr %.0149.ph to i64
  %i.c = getelementptr inbounds i8, ptr %.0149.ph, i64 -1 ; 9 uses
  %i.d = getelementptr inbounds i8, ptr %.0149.ph, i64 -2 ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %.0149.ph, i64 -3 ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %.0149.ph, i64 -1
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411"

"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411": ; preds = %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411.backedge", %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer"
  %.0146.ph412 = phi ptr [ %.0146.ph, %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer" ], [ %.0146.ph412.be, %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411.backedge" ]
  %.048.ph413 = phi i8 [ %.048.ph, %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer" ], [ 0, %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411.backedge" ] ; 3 uses
  %.046.ph414 = phi i64 [ %.046.ph, %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer" ], [ %i.id, %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411.backedge" ]
  %i.g = trunc nuw i8 %.048.ph413 to i1           ; 2 uses
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit": ; preds = %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411", %bb.cn
  %.0146 = phi ptr [ %i.rt, %bb.cn ], [ %.0146.ph412, %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411" ] ; 63 uses
  %.046 = phi i64 [ %i.id, %bb.cn ], [ %.046.ph414, %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411" ] ; 2 uses
  %i.h = ptrtoint ptr %.0146 to i64               ; 2 uses
  %i.i = sub i64 %i.b, %i.h                       ; 8 uses
  switch i64 %i.i, label %bb.r [
    i64 0, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"
    i64 1, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.l
    i64 5, label %bb.m
  ]

bb.b:                                             ; preds = %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"
  %i.j = getelementptr inbounds i8, ptr %.0149.ph, i64 -1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !93    ; 2 uses
  %i.l = load i8, ptr %.0146, align 1, !tbaa !93  ; 2 uses
  %.val54 = load ptr, ptr %2, align 8, !tbaa !351
  %.val54.val = load ptr, ptr %.val54, align 8, !tbaa !97 ; 2 uses
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val54.val, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !95
  %i.p = zext i8 %i.l to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val54.val, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !95
  %i.s = icmp ugt i64 %i.o, %i.r
  br i1 %i.s, label %bb.c, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.c:                                             ; preds = %bb.b
  store i8 %i.k, ptr %.0146, align 1, !tbaa !93
  store i8 %i.l, ptr %i.j, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.d:                                             ; preds = %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %.0146, i64 1 ; 6 uses
  %i.u = getelementptr inbounds i8, ptr %.0149.ph, i64 -1 ; 5 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !93    ; 3 uses
  %i.w = load i8, ptr %.0146, align 1, !tbaa !93  ; 4 uses
  %.val13.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val13.val.i.i = load ptr, ptr %.val13.i.i, align 8, !tbaa !97 ; 3 uses
  %i.x = zext i8 %i.v to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i.i, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !95   ; 2 uses
  %i.aa = zext i8 %i.w to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i.i, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !95
  %i.ad = icmp ugt i64 %i.z, %i.ac
  %i.ae = load i8, ptr %i.u, align 1, !tbaa !93   ; 3 uses
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i.i, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !95
  %i.ai = icmp ugt i64 %i.ah, %i.z                ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ai, label %bb.f, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.f:                                             ; preds = %bb.e
  store i8 %i.ae, ptr %i.t, align 1, !tbaa !93
  store i8 %i.v, ptr %i.u, align 1, !tbaa !93
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !93   ; 2 uses
  %i.ak = load i8, ptr %.0146, align 1, !tbaa !93 ; 2 uses
  %.val11.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val11.val.i.i = load ptr, ptr %.val11.i.i, align 8, !tbaa !97 ; 2 uses
  %i.al = zext i8 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i.i, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !95
  %i.ao = zext i8 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i.i, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !95
  %i.ar = icmp ugt i64 %i.an, %i.aq
  br i1 %i.ar, label %bb.g, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.g:                                             ; preds = %bb.f
  store i8 %i.aj, ptr %.0146, align 1, !tbaa !93
  store i8 %i.ak, ptr %i.t, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.h:                                             ; preds = %bb.d
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.ae, ptr %.0146, align 1, !tbaa !93
  store i8 %i.w, ptr %i.u, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.j:                                             ; preds = %bb.h
  store i8 %i.v, ptr %.0146, align 1, !tbaa !93
  store i8 %i.w, ptr %i.t, align 1, !tbaa !93
  %i.as = load i8, ptr %i.u, align 1, !tbaa !93   ; 2 uses
  %.val.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !97 ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !95
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i, i64 %i.aa
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !95
  %i.ay = icmp ugt i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.k:                                             ; preds = %bb.j
  store i8 %i.as, ptr %i.t, align 1, !tbaa !93
  store i8 %i.w, ptr %i.u, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.l:                                             ; preds = %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"
  %i.az = getelementptr inbounds nuw i8, ptr %.0146, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0146, i64 2
  %i.bb = getelementptr inbounds i8, ptr %.0149.ph, i64 -1
  tail call fastcc void @"_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SI_SI_SI_T0_"(ptr noundef %.0146, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #24
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.m:                                             ; preds = %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"
  %i.bc = getelementptr inbounds nuw i8, ptr %.0146, i64 1 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0146, i64 2 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0146, i64 3 ; 5 uses
  %i.bf = getelementptr inbounds i8, ptr %.0149.ph, i64 -1 ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SI_SI_SI_T0_"(ptr noundef %.0146, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #24
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !93  ; 2 uses
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !93  ; 2 uses
  %.val7.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val7.val.i.i = load ptr, ptr %.val7.i.i, align 8, !tbaa !97 ; 2 uses
  %i.bi = zext i8 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val7.val.i.i, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !95
  %i.bl = zext i8 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val7.val.i.i, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !95
  %i.bo = icmp ugt i64 %i.bk, %i.bn
  br i1 %i.bo, label %bb.n, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.n:                                             ; preds = %bb.m
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !93
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !93
  %i.bp = load i8, ptr %i.be, align 1, !tbaa !93  ; 4 uses
  %i.bq = load i8, ptr %i.bd, align 1, !tbaa !93  ; 2 uses
  %.val6.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val6.val.i.i = load ptr, ptr %.val6.i.i, align 8, !tbaa !97 ; 2 uses
  %i.br = zext i8 %i.bp to i64                    ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val6.val.i.i, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !95
  %i.bu = zext i8 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val6.val.i.i, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !95
  %i.bx = icmp ugt i64 %i.bt, %i.bw
  br i1 %i.bx, label %bb.o, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.o:                                             ; preds = %bb.n
  store i8 %i.bp, ptr %i.bd, align 1, !tbaa !93
  store i8 %i.bq, ptr %i.be, align 1, !tbaa !93
  %i.by = load i8, ptr %i.bc, align 1, !tbaa !93  ; 2 uses
  %.val5.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val5.val.i.i = load ptr, ptr %.val5.i.i, align 8, !tbaa !97 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.val5.val.i.i, i64 %i.br
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !95
  %i.cb = zext i8 %i.by to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val5.val.i.i, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !95
  %i.ce = icmp ugt i64 %i.ca, %i.cd
  br i1 %i.ce, label %bb.p, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.p:                                             ; preds = %bb.o
  store i8 %i.bp, ptr %i.bc, align 1, !tbaa !93
  store i8 %i.by, ptr %i.bd, align 1, !tbaa !93
  %i.cf = load i8, ptr %.0146, align 1, !tbaa !93 ; 2 uses
  %.val.i.i55 = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i.i56 = load ptr, ptr %.val.i.i55, align 8, !tbaa !97 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i56, i64 %i.br
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !95
  %i.ci = zext i8 %i.cf to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i56, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !95
  %i.cl = icmp ugt i64 %i.ch, %i.ck
  br i1 %i.cl, label %bb.q, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.q:                                             ; preds = %bb.p
  store i8 %i.bp, ptr %.0146, align 1, !tbaa !93
  store i8 %i.cf, ptr %i.bc, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread"

bb.r:                                             ; preds = %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"
  %i.cm = icmp slt i64 %i.i, 24
  br i1 %i.cm, label %bb.s, label %5

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc nuw i8 %.048.ph413 to i1
  %i.co = icmp eq ptr %.0146, %.0149.ph
  %storemerge26.i = getelementptr inbounds nuw i8, ptr %.0146, i64 1 ; 3 uses
  %.not27.i = icmp eq ptr %storemerge26.i, %.0149.ph
  %or.cond.i = select i1 %i.co, i1 true, i1 %.not27.i ; 2 uses
  br i1 %i.cn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  br i1 %or.cond.i, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
  %.val19.i.pre274 = load ptr, ptr %2, align 8, !tbaa !351
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.u
  %.val19.i = phi ptr [ %.val19.i275, %bb.u ], [ %.val19.i.pre274, %.lr.ph.i.preheader ] ; 2 uses
  %storemerge29.i = phi ptr [ %storemerge.i, %bb.u ], [ %storemerge26.i, %.lr.ph.i.preheader ] ; 4 uses
  %.pn28.i = phi ptr [ %storemerge29.i, %bb.u ], [ %.0146, %.lr.ph.i.preheader ] ; 3 uses
  %i.cp = load i8, ptr %storemerge29.i, align 1, !tbaa !93 ; 2 uses
  %i.cq = load i8, ptr %.pn28.i, align 1, !tbaa !93 ; 2 uses
  %.val19.val.i = load ptr, ptr %.val19.i, align 8, !tbaa !97 ; 2 uses
  %i.cr = zext i8 %i.cp to i64                    ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.val19.val.i, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !95
  %i.cu = zext i8 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.val19.val.i, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !95
  %i.cx = icmp ugt i64 %i.ct, %i.cw
  br i1 %i.cx, label %.preheader.i.preheader, label %bb.u

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  store i8 %i.cq, ptr %storemerge29.i, align 1, !tbaa !93
  %.not18.i400 = icmp eq ptr %.pn28.i, %.0146
  br i1 %.not18.i400, label %.critedge.i, label %.lr.ph402

.preheader.i:                                     ; preds = %.lr.ph402
  store i8 %i.cz, ptr %.024.i401, align 1, !tbaa !93
  %.not18.i = icmp eq ptr %i.cy, %.0146
  br i1 %.not18.i, label %.critedge.i, label %.lr.ph402, !llvm.loop !804

.lr.ph402:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.024.i401 = phi ptr [ %i.cy, %.preheader.i ], [ %.pn28.i, %.preheader.i.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.024.i401, i64 -1 ; 3 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !93  ; 2 uses
  %.val.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !97 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %i.cr
  %i.db = load i64, ptr %i.da, align 8, !tbaa !95
  %i.dc = zext i8 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !95
  %i.df = icmp ugt i64 %i.db, %i.de
  br i1 %i.df, label %.preheader.i, label %..critedge.i_crit_edge, !llvm.loop !804

..critedge.i_crit_edge:                           ; preds = %.lr.ph402
  br label %.critedge.i, !llvm.loop !804

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.024.lcssa.i = phi ptr [ %.0146, %.preheader.i.preheader ], [ %.024.i401, %..critedge.i_crit_edge ], [ %.0146, %.preheader.i ]
  store i8 %i.cp, ptr %.024.lcssa.i, align 1, !tbaa !93
  %.val19.i.pre = load ptr, ptr %2, align 8, !tbaa !351
  br label %bb.u

bb.u:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.val19.i275 = phi ptr [ %.val19.i.pre, %.critedge.i ], [ %.val19.i, %.lr.ph.i ]
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge29.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, %.0149.ph
  br i1 %.not.i, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread", label %.lr.ph.i, !llvm.loop !805

bb.v:                                             ; preds = %bb.s
  br i1 %or.cond.i, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread", label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %bb.v
  %.val15.i.pre271 = load ptr, ptr %2, align 8, !tbaa !351
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %bb.x
  %.val15.i = phi ptr [ %.val15.i272, %bb.x ], [ %.val15.i.pre271, %.lr.ph.i58.preheader ] ; 2 uses
  %storemerge25.i = phi ptr [ %storemerge.i59, %bb.x ], [ %storemerge26.i, %.lr.ph.i58.preheader ] ; 4 uses
  %.pn24.i = phi ptr [ %storemerge25.i, %bb.x ], [ %.0146, %.lr.ph.i58.preheader ] ; 2 uses
  %i.dg = load i8, ptr %storemerge25.i, align 1, !tbaa !93 ; 2 uses
  %i.dh = load i8, ptr %.pn24.i, align 1, !tbaa !93 ; 2 uses
  %.val15.val.i = load ptr, ptr %.val15.i, align 8, !tbaa !97 ; 2 uses
  %i.di = zext i8 %i.dg to i64                    ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !95
  %i.dl = zext i8 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !95
  %i.do = icmp ugt i64 %i.dk, %i.dn
  br i1 %i.do, label %.preheader.i61, label %bb.x

.preheader.i61:                                   ; preds = %.lr.ph.i58, %.preheader.i61
  %i.dp = phi i8 [ %i.dr, %.preheader.i61 ], [ %i.dh, %.lr.ph.i58 ]
  %.020.i = phi ptr [ %i.dq, %.preheader.i61 ], [ %.pn24.i, %.lr.ph.i58 ] ; 3 uses
  %.0.i62 = phi ptr [ %.020.i, %.preheader.i61 ], [ %storemerge25.i, %.lr.ph.i58 ]
  store i8 %i.dp, ptr %.0.i62, align 1, !tbaa !93
  %i.dq = getelementptr inbounds i8, ptr %.020.i, i64 -1 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !93  ; 2 uses
  %.val.i63 = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i64 = load ptr, ptr %.val.i63, align 8, !tbaa !97 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i64, i64 %i.di
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !95
  %i.du = zext i8 %i.dr to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i64, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !95
  %i.dx = icmp ugt i64 %i.dt, %i.dw
  br i1 %i.dx, label %.preheader.i61, label %bb.w, !llvm.loop !806

bb.w:                                             ; preds = %.preheader.i61
  store i8 %i.dg, ptr %.020.i, align 1, !tbaa !93
  %.val15.i.pre = load ptr, ptr %2, align 8, !tbaa !351
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i58
  %.val15.i272 = phi ptr [ %.val15.i.pre, %bb.w ], [ %.val15.i, %.lr.ph.i58 ]
  %storemerge.i59 = getelementptr inbounds nuw i8, ptr %storemerge25.i, i64 1 ; 2 uses
  %.not.i60 = icmp eq ptr %storemerge.i59, %.0149.ph
  br i1 %.not.i60, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread", label %.lr.ph.i58, !llvm.loop !807

5:                                                ; preds = %bb.r
  %6 = icmp eq i64 %.046, 0
  br i1 %6, label %bb.y, label %bb.ao

bb.y:                                             ; preds = %5
  %i.dy = icmp eq ptr %.0146, %.0149.ph
  br i1 %i.dy, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = add nsw i64 %i.i, -2
  %i.ea = lshr i64 %i.dz, 1                       ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_OT0_NS_15iterator_traitsISI_E15difference_typeESI_.exit.i.i.i", %bb.z
  %.012.i.i.i = phi i64 [ %i.ea, %bb.z ], [ %i.fy, %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_OT0_NS_15iterator_traitsISI_E15difference_typeESI_.exit.i.i.i" ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0146, i64 %.012.i.i.i ; 2 uses
  %i.ec = shl nuw nsw i64 %.012.i.i.i, 1          ; 2 uses
  %i.ed = or disjoint i64 %i.ec, 1                ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0146, i64 %i.ed ; 4 uses
  %i.ef = add nuw nsw i64 %i.ec, 2                ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %i.i
  %i.eh = load i8, ptr %i.ee, align 1, !tbaa !93  ; 4 uses
  br i1 %i.eg, label %bb.ab, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.aa
  %.val29.pre.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val29.val.pre.i.i.i.i = load ptr, ptr %.val29.pre.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.phi.trans.insert.i.i.i.i = zext i8 %i.eh to i64
  %.phi.trans.insert49.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.val29.val.pre.i.i.i.i, i64 %.phi.trans.insert.i.i.i.i
  %.pre50.i.i.i.i = load i64, ptr %.phi.trans.insert49.i.i.i.i, align 8, !tbaa !95
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !93  ; 2 uses
  %.val30.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val30.val.i.i.i.i = load ptr, ptr %.val30.i.i.i.i, align 8, !tbaa !97 ; 3 uses
  %i.ek = zext i8 %i.eh to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.val30.val.i.i.i.i, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !95 ; 2 uses
  %i.en = zext i8 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.val30.val.i.i.i.i, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !95 ; 2 uses
  %i.eq = icmp ugt i64 %i.em, %i.ep               ; 3 uses
  %spec.select.i.i.i.i = select i1 %i.eq, ptr %i.ei, ptr %i.ee
  %spec.select44.i.i.i.i = select i1 %i.eq, i64 %i.ef, i64 %i.ed
  %i.er = select i1 %i.eq, i8 %i.ej, i8 %i.eh
  %i.es = tail call i64 @llvm.umin.i64(i64 %i.em, i64 %i.ep)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i.i
  %i.et = phi i8 [ %i.eh, %._crit_edge.i.i.i.i ], [ %i.er, %bb.ab ]
  %i.eu = phi i64 [ %.pre50.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.es, %bb.ab ]
  %.val29.val.i.i.i.i = phi ptr [ %.val29.val.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.val30.val.i.i.i.i, %bb.ab ]
  %.040.i.i.i.i = phi ptr [ %i.ee, %._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.ab ]
  %.0.i.i.i.i = phi i64 [ %i.ed, %._crit_edge.i.i.i.i ], [ %spec.select44.i.i.i.i, %bb.ab ]
  %i.ev = load i8, ptr %i.eb, align 1, !tbaa !93  ; 2 uses
  %i.ew = zext i8 %i.ev to i64                    ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val29.val.i.i.i.i, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !95
  %i.ez = icmp ugt i64 %i.eu, %i.ey
  br i1 %i.ez, label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_OT0_NS_15iterator_traitsISI_E15difference_typeESI_.exit.i.i.i", label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ac, %bb.af
  %i.fa = phi i8 [ %i.fu, %bb.af ], [ %i.et, %bb.ac ]
  %.043.i.i.i.i = phi ptr [ %.141.i.i.i.i, %bb.af ], [ %i.eb, %bb.ac ]
  %.141.i.i.i.i = phi ptr [ %.242.i.i.i.i, %bb.af ], [ %.040.i.i.i.i, %bb.ac ] ; 2 uses
  %.1.i.i.i.i = phi i64 [ %.2.i.i.i.i, %bb.af ], [ %.0.i.i.i.i, %bb.ac ] ; 2 uses
  store i8 %i.fa, ptr %.043.i.i.i.i, align 1, !tbaa !93
  %i.fb = icmp slt i64 %i.ea, %.1.i.i.i.i
  br i1 %i.fb, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.preheader.i.i.i.i
  %i.fc = shl nsw i64 %.1.i.i.i.i, 1              ; 2 uses
  %i.fd = or disjoint i64 %i.fc, 1                ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %.0146, i64 %i.fd ; 4 uses
  %i.ff = add nsw i64 %i.fc, 2                    ; 2 uses
  %i.fg = icmp slt i64 %i.ff, %i.i
  %i.fh = load i8, ptr %i.fe, align 1, !tbaa !93  ; 4 uses
  br i1 %i.fg, label %bb.ae, label %._crit_edge51.i.i.i.i

._crit_edge51.i.i.i.i:                            ; preds = %bb.ad
  %.val.pre.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.pre.i.i.i.i = load ptr, ptr %.val.pre.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.phi.trans.insert55.i.i.i.i = zext i8 %i.fh to i64
  %.phi.trans.insert56.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.val.val.pre.i.i.i.i, i64 %.phi.trans.insert55.i.i.i.i
  %.pre57.i.i.i.i = load i64, ptr %.phi.trans.insert56.i.i.i.i, align 8, !tbaa !95
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !93  ; 2 uses
  %.val28.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val28.val.i.i.i.i = load ptr, ptr %.val28.i.i.i.i, align 8, !tbaa !97 ; 3 uses
  %i.fk = zext i8 %i.fh to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.val28.val.i.i.i.i, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !95 ; 2 uses
  %i.fn = zext i8 %i.fj to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.val28.val.i.i.i.i, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !95 ; 2 uses
  %i.fq = icmp ugt i64 %i.fm, %i.fp               ; 3 uses
  %spec.select45.i.i.i.i = select i1 %i.fq, ptr %i.fi, ptr %i.fe
  %spec.select46.i.i.i.i = select i1 %i.fq, i64 %i.ff, i64 %i.fd
  %i.fr = select i1 %i.fq, i8 %i.fj, i8 %i.fh
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fm, i64 %i.fp)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge51.i.i.i.i
  %i.ft = phi i64 [ %.pre57.i.i.i.i, %._crit_edge51.i.i.i.i ], [ %i.fs, %bb.ae ]
  %.val.val.i.i.i.i = phi ptr [ %.val.val.pre.i.i.i.i, %._crit_edge51.i.i.i.i ], [ %.val28.val.i.i.i.i, %bb.ae ]
  %i.fu = phi i8 [ %i.fh, %._crit_edge51.i.i.i.i ], [ %i.fr, %bb.ae ]
  %.242.i.i.i.i = phi ptr [ %i.fe, %._crit_edge51.i.i.i.i ], [ %spec.select45.i.i.i.i, %bb.ae ]
  %.2.i.i.i.i = phi i64 [ %i.fd, %._crit_edge51.i.i.i.i ], [ %spec.select46.i.i.i.i, %bb.ae ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i, i64 %i.ew
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !95
  %i.fx = icmp ugt i64 %i.ft, %i.fw
  br i1 %i.fx, label %bb.ag, label %.preheader.i.i.i.i, !llvm.loop !808

bb.ag:                                            ; preds = %bb.af, %.preheader.i.i.i.i
  store i8 %i.ev, ptr %.141.i.i.i.i, align 1, !tbaa !93
  br label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_OT0_NS_15iterator_traitsISI_E15difference_typeESI_.exit.i.i.i"

"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_OT0_NS_15iterator_traitsISI_E15difference_typeESI_.exit.i.i.i": ; preds = %bb.ag, %bb.ac
  %i.fy = add nsw i64 %.012.i.i.i, -1
  %i.fz = icmp sgt i64 %.012.i.i.i, 0
  br i1 %i.fz, label %bb.aa, label %.lr.ph.i.i.i, !llvm.loop !809

.lr.ph.i.i.i:                                     ; preds = %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_OT0_NS_15iterator_traitsISI_E15difference_typeESI_.exit.i.i.i", %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i"
  %.015.i.i.i = phi i64 [ %i.ib, %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i" ], [ %i.i, %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_OT0_NS_15iterator_traitsISI_E15difference_typeESI_.exit.i.i.i" ] ; 4 uses
  %.01314.i.i.i = phi ptr [ %i.gw, %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i" ], [ %.0149.ph, %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_OT0_NS_15iterator_traitsISI_E15difference_typeESI_.exit.i.i.i" ]
  %i.ga = load i8, ptr %.0146, align 1, !tbaa !93 ; 2 uses
  %i.gb = add nsw i64 %.015.i.i.i, -2
  %i.gc = lshr i64 %i.gb, 1
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %.0146, %.lr.ph.i.i.i ], [ %.117.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %.1.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.gd = getelementptr i8, ptr %.016.i.i.i.i.i, i64 %.0.i.i.i.i.i ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 1      ; 3 uses
  %i.gf = shl nsw i64 %.0.i.i.i.i.i, 1            ; 2 uses
  %i.gg = or disjoint i64 %i.gf, 1                ; 2 uses
  %i.gh = add nsw i64 %i.gf, 2                    ; 2 uses
  %i.gi = icmp slt i64 %i.gh, %.015.i.i.i
  %i.gj = load i8, ptr %i.ge, align 1, !tbaa !93  ; 3 uses
  br i1 %i.gi, label %bb.ai, label %._crit_edge.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr i8, ptr %i.gd, i64 2      ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !93  ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %i.gm = zext i8 %i.gj to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.gm
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !95
  %i.gp = zext i8 %i.gl to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !95
  %i.gs = icmp ugt i64 %i.go, %i.gr               ; 3 uses
  %spec.select.i.i.i.i.i = select i1 %i.gs, ptr %i.gk, ptr %i.ge
  %spec.select18.i.i.i.i.i = select i1 %i.gs, i64 %i.gh, i64 %i.gg
  %i.gt = select i1 %i.gs, i8 %i.gl, i8 %i.gj
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ai, %bb.ah
  %i.gu = phi i8 [ %i.gt, %bb.ai ], [ %i.gj, %bb.ah ]
  %.117.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.ai ], [ %i.ge, %bb.ah ] ; 7 uses
  %.1.i.i.i.i.i = phi i64 [ %spec.select18.i.i.i.i.i, %bb.ai ], [ %i.gg, %bb.ah ] ; 2 uses
  store i8 %i.gu, ptr %.016.i.i.i.i.i, align 1, !tbaa !93
  %i.gv = icmp sgt i64 %.1.i.i.i.i.i, %i.gc
  br i1 %i.gv, label %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEET1_SI_OT0_NS_15iterator_traitsISI_E15difference_typeE.exit.i.i.i.i", label %bb.ah, !llvm.loop !810

"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEET1_SI_OT0_NS_15iterator_traitsISI_E15difference_typeE.exit.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i
  %i.gw = getelementptr inbounds i8, ptr %.01314.i.i.i, i64 -1 ; 4 uses
  %i.gx = icmp eq ptr %.117.i.i.i.i.i, %i.gw
  br i1 %i.gx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEET1_SI_OT0_NS_15iterator_traitsISI_E15difference_typeE.exit.i.i.i.i"
  store i8 %i.ga, ptr %.117.i.i.i.i.i, align 1, !tbaa !93
  br label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i"

bb.ak:                                            ; preds = %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEET1_SI_OT0_NS_15iterator_traitsISI_E15difference_typeE.exit.i.i.i.i"
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !93
  store i8 %i.gy, ptr %.117.i.i.i.i.i, align 1, !tbaa !93
  %i.gz = getelementptr inbounds nuw i8, ptr %.117.i.i.i.i.i, i64 1
  store i8 %i.ga, ptr %i.gw, align 1, !tbaa !93
  %i.ha = ptrtoint ptr %i.gz to i64
  %i.hb = sub i64 %i.ha, %i.h                     ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, 1
  br i1 %i.hc, label %bb.al, label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i"

bb.al:                                            ; preds = %bb.ak
  %i.hd = add nsw i64 %i.hb, -2
  %i.he = lshr i64 %i.hd, 1                       ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0146, i64 %i.he ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !93  ; 2 uses
  %i.hh = load i8, ptr %.117.i.i.i.i.i, align 1, !tbaa !93 ; 2 uses
  %.val12.i.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val12.val.i.i.i.i.i = load ptr, ptr %.val12.i.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %i.hi = zext i8 %i.hg to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.val12.val.i.i.i.i.i, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !95
  %i.hl = zext i8 %i.hh to i64                    ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.val12.val.i.i.i.i.i, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !95
  %i.ho = icmp ugt i64 %i.hk, %i.hn
  br i1 %i.ho, label %.preheader.i.i.i.i.i, label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i"

.preheader.i.i.i.i.i:                             ; preds = %bb.al, %bb.am
  %i.hp = phi i8 [ %i.hu, %bb.am ], [ %i.hg, %bb.al ]
  %.019.i.i.i.i.i = phi ptr [ %.018.i.i.i.i.i, %bb.am ], [ %.117.i.i.i.i.i, %bb.al ]
  %.018.i.i.i.i.i = phi ptr [ %i.ht, %bb.am ], [ %i.hf, %bb.al ] ; 2 uses
  %.0.i13.i.i.i.i = phi i64 [ %i.hs, %bb.am ], [ %i.he, %bb.al ] ; 2 uses
  store i8 %i.hp, ptr %.019.i.i.i.i.i, align 1, !tbaa !93
  %i.hq = icmp eq i64 %.0.i13.i.i.i.i, 0
  br i1 %i.hq, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader.i.i.i.i.i
  %i.hr = add nsw i64 %.0.i13.i.i.i.i, -1
  %i.hs = lshr i64 %i.hr, 1                       ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.0146, i64 %i.hs ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !93  ; 2 uses
  %.val.i14.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i15.i.i.i.i = load ptr, ptr %.val.i14.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i15.i.i.i.i, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !95
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i15.i.i.i.i, i64 %i.hl
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !95
  %i.ia = icmp ugt i64 %i.hx, %i.hz
  br i1 %i.ia, label %.preheader.i.i.i.i.i, label %bb.an, !llvm.loop !811

bb.an:                                            ; preds = %bb.am, %.preheader.i.i.i.i.i
  store i8 %i.hh, ptr %.018.i.i.i.i.i, align 1, !tbaa !93
  br label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i": ; preds = %bb.an, %bb.al, %bb.ak, %bb.aj
  %i.ib = add nsw i64 %.015.i.i.i, -1
  %i.ic = icmp sgt i64 %.015.i.i.i, 2
  br i1 %i.ic, label %.lr.ph.i.i.i, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread", !llvm.loop !812

bb.ao:                                            ; preds = %5
  %i.id = add nsw i64 %.046, -1                   ; 4 uses
  %i.ie = lshr i64 %i.i, 1
  %i.if = icmp samesign ugt i64 %i.i, 128
  %i.ig = getelementptr i8, ptr %.0146, i64 %i.ie ; 19 uses
  %.val13.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val13.val.i = load ptr, ptr %.val13.i, align 8, !tbaa !97 ; 5 uses
  %i.ih = load i8, ptr %i.c, align 1, !tbaa !93   ; 5 uses
  %i.ii = zext i8 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i, i64 %i.ii
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !95 ; 2 uses
  br i1 %i.if, label %bb.ap, label %bb.bs

bb.ap:                                            ; preds = %bb.ao
  %i.il = load i8, ptr %i.ig, align 1, !tbaa !93  ; 3 uses
  %i.im = load i8, ptr %.0146, align 1, !tbaa !93 ; 4 uses
  %i.in = zext i8 %i.il to i64
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i, i64 %i.in
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !95 ; 2 uses
  %i.iq = zext i8 %i.im to i64                    ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !95
  %i.it = icmp ugt i64 %i.ip, %i.is
  %i.iu = icmp ugt i64 %i.ik, %i.ip               ; 2 uses
  br i1 %i.it, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.iu, label %bb.ar, label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit"

bb.ar:                                            ; preds = %bb.aq
  store i8 %i.ih, ptr %i.ig, align 1, !tbaa !93
  store i8 %i.il, ptr %i.c, align 1, !tbaa !93
  %i.iv = load i8, ptr %i.ig, align 1, !tbaa !93  ; 2 uses
  %i.iw = load i8, ptr %.0146, align 1, !tbaa !93 ; 2 uses
  %.val11.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val11.val.i = load ptr, ptr %.val11.i, align 8, !tbaa !97 ; 2 uses
  %i.ix = zext i8 %i.iv to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i, i64 %i.ix
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !95
  %i.ja = zext i8 %i.iw to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i, i64 %i.ja
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !95
  %i.jd = icmp ugt i64 %i.iz, %i.jc
  br i1 %i.jd, label %bb.as, label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit"

bb.as:                                            ; preds = %bb.ar
  store i8 %i.iv, ptr %.0146, align 1, !tbaa !93
  store i8 %i.iw, ptr %i.ig, align 1, !tbaa !93
  br label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit"

bb.at:                                            ; preds = %bb.ap
  br i1 %i.iu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i8 %i.ih, ptr %.0146, align 1, !tbaa !93
  store i8 %i.im, ptr %i.c, align 1, !tbaa !93
  br label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit"

bb.av:                                            ; preds = %bb.at
  store i8 %i.il, ptr %.0146, align 1, !tbaa !93
  store i8 %i.im, ptr %i.ig, align 1, !tbaa !93
  %i.je = load i8, ptr %i.c, align 1, !tbaa !93   ; 2 uses
  %.val.i68 = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i69 = load ptr, ptr %.val.i68, align 8, !tbaa !97 ; 2 uses
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i69, i64 %i.jf
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !95
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i69, i64 %i.iq
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !95
  %i.jk = icmp ugt i64 %i.jh, %i.jj
  br i1 %i.jk, label %bb.aw, label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit"

bb.aw:                                            ; preds = %bb.av
  store i8 %i.je, ptr %i.ig, align 1, !tbaa !93
  store i8 %i.im, ptr %i.c, align 1, !tbaa !93
  br label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit"

"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit": ; preds = %bb.aq, %bb.ar, %bb.as, %bb.au, %bb.av, %bb.aw
  %i.jl = getelementptr inbounds nuw i8, ptr %.0146, i64 1 ; 5 uses
  %i.jm = getelementptr i8, ptr %i.ig, i64 -1     ; 10 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !93  ; 3 uses
  %i.jo = load i8, ptr %i.jl, align 1, !tbaa !93  ; 4 uses
  %.val13.i70 = load ptr, ptr %2, align 8, !tbaa !351
  %.val13.val.i71 = load ptr, ptr %.val13.i70, align 8, !tbaa !97 ; 3 uses
  %i.jp = zext i8 %i.jn to i64
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i71, i64 %i.jp
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !95 ; 2 uses
  %i.js = zext i8 %i.jo to i64                    ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i71, i64 %i.js
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !95
  %i.jv = icmp ugt i64 %i.jr, %i.ju
  %i.jw = load i8, ptr %i.d, align 1, !tbaa !93   ; 3 uses
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i71, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !95
  %i.ka = icmp ugt i64 %i.jz, %i.jr               ; 2 uses
  br i1 %i.jv, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit"
  br i1 %i.ka, label %bb.ay, label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77"

bb.ay:                                            ; preds = %bb.ax
  store i8 %i.jw, ptr %i.jm, align 1, !tbaa !93
  store i8 %i.jn, ptr %i.d, align 1, !tbaa !93
  %i.kb = load i8, ptr %i.jm, align 1, !tbaa !93  ; 2 uses
  %i.kc = load i8, ptr %i.jl, align 1, !tbaa !93  ; 2 uses
  %.val11.i73 = load ptr, ptr %2, align 8, !tbaa !351
  %.val11.val.i74 = load ptr, ptr %.val11.i73, align 8, !tbaa !97 ; 2 uses
  %i.kd = zext i8 %i.kb to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i74, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !95
  %i.kg = zext i8 %i.kc to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i74, i64 %i.kg
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !95
  %i.kj = icmp ugt i64 %i.kf, %i.ki
  br i1 %i.kj, label %bb.az, label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77"

bb.az:                                            ; preds = %bb.ay
  store i8 %i.kb, ptr %i.jl, align 1, !tbaa !93
  store i8 %i.kc, ptr %i.jm, align 1, !tbaa !93
  br label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77"

bb.ba:                                            ; preds = %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit"
  br i1 %i.ka, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i8 %i.jw, ptr %i.jl, align 1, !tbaa !93
  store i8 %i.jo, ptr %i.d, align 1, !tbaa !93
  br label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77"

bb.bc:                                            ; preds = %bb.ba
  store i8 %i.jn, ptr %i.jl, align 1, !tbaa !93
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !93
  %i.kk = load i8, ptr %i.d, align 1, !tbaa !93   ; 2 uses
  %.val.i75 = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i76 = load ptr, ptr %.val.i75, align 8, !tbaa !97 ; 2 uses
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i76, i64 %i.kl
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !95
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i76, i64 %i.js
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !95
  %i.kq = icmp ugt i64 %i.kn, %i.kp
  br i1 %i.kq, label %bb.bd, label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77"

bb.bd:                                            ; preds = %bb.bc
  store i8 %i.kk, ptr %i.jm, align 1, !tbaa !93
  store i8 %i.jo, ptr %i.d, align 1, !tbaa !93
  br label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77"

"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77": ; preds = %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.bd
  %i.kr = getelementptr inbounds nuw i8, ptr %.0146, i64 2 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ig, i64 1 ; 10 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !93  ; 3 uses
  %i.ku = load i8, ptr %i.kr, align 1, !tbaa !93  ; 4 uses
  %.val13.i78 = load ptr, ptr %2, align 8, !tbaa !351
  %.val13.val.i79 = load ptr, ptr %.val13.i78, align 8, !tbaa !97 ; 3 uses
  %i.kv = zext i8 %i.kt to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i79, i64 %i.kv
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !95 ; 2 uses
  %i.ky = zext i8 %i.ku to i64                    ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i79, i64 %i.ky
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !95
  %i.lb = icmp ugt i64 %i.kx, %i.la
  %i.lc = load i8, ptr %i.e, align 1, !tbaa !93   ; 3 uses
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i79, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !95
  %i.lg = icmp ugt i64 %i.lf, %i.kx               ; 2 uses
  br i1 %i.lb, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77"
  br i1 %i.lg, label %bb.bf, label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit85"

bb.bf:                                            ; preds = %bb.be
  store i8 %i.lc, ptr %i.ks, align 1, !tbaa !93
  store i8 %i.kt, ptr %i.e, align 1, !tbaa !93
  %i.lh = load i8, ptr %i.ks, align 1, !tbaa !93  ; 2 uses
  %i.li = load i8, ptr %i.kr, align 1, !tbaa !93  ; 2 uses
  %.val11.i81 = load ptr, ptr %2, align 8, !tbaa !351
  %.val11.val.i82 = load ptr, ptr %.val11.i81, align 8, !tbaa !97 ; 2 uses
  %i.lj = zext i8 %i.lh to i64
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i82, i64 %i.lj
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !95
  %i.lm = zext i8 %i.li to i64
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i82, i64 %i.lm
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !95
  %i.lp = icmp ugt i64 %i.ll, %i.lo
  br i1 %i.lp, label %bb.bg, label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit85"

bb.bg:                                            ; preds = %bb.bf
  store i8 %i.lh, ptr %i.kr, align 1, !tbaa !93
  store i8 %i.li, ptr %i.ks, align 1, !tbaa !93
  br label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit85"

bb.bh:                                            ; preds = %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit77"
  br i1 %i.lg, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i8 %i.lc, ptr %i.kr, align 1, !tbaa !93
  store i8 %i.ku, ptr %i.e, align 1, !tbaa !93
  br label %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit85"
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhLb0EEEvT1_SI_T0_NS_15iterator_traitsISI_E15difference_typeEb":bb.a
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !93
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %.val19.val.i112.pre, i64 %i.pe
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !95
  %i.ph = icmp ugt i64 %i.oe, %i.pg
  br i1 %i.ph, label %.preheader41.i, label %.loopexit.i, !llvm.loop !815

.loopexit.i:                                      ; preds = %.preheader41.i, %.critedge.i104
  %.1.i = phi ptr [ %.0149.ph, %.critedge.i104 ], [ %i.pc, %.preheader41.i ] ; 3 uses
  %i.pi = icmp ult ptr %.239.i, %.1.i
  br i1 %i.pi, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %.pre.i = load i8, ptr %.239.i, align 1, !tbaa !93
  %.pre57.i = load i8, ptr %.1.i, align 1, !tbaa !93
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.cd, %.lr.ph.preheader.i
  %i.pj = phi i8 [ %i.pu, %bb.cd ], [ %.pre57.i, %.lr.ph.preheader.i ]
  %i.pk = phi i8 [ %i.po, %bb.cd ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.251.i = phi ptr [ %i.pt, %bb.cd ], [ %.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %.34050.i = phi ptr [ %i.pn, %bb.cd ], [ %.239.i, %.lr.ph.preheader.i ] ; 2 uses
  store i8 %i.pj, ptr %.34050.i, align 1, !tbaa !93
  store i8 %i.pk, ptr %.251.i, align 1, !tbaa !93
  %.val15.i107 = load ptr, ptr %2, align 8, !tbaa !351
  %.val15.val.i108 = load ptr, ptr %.val15.i107, align 8, !tbaa !97 ; 3 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i108, i64 %i.oc
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !95 ; 2 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.lr.ph.i106
  %.4.i = phi ptr [ %.34050.i, %.lr.ph.i106 ], [ %i.pn, %bb.cc ]
  %i.pn = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 5 uses
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !93  ; 2 uses
  %i.pp = zext i8 %i.po to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i108, i64 %i.pp
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !95
  %i.ps = icmp ugt i64 %i.pm, %i.pr
  br i1 %i.ps, label %.preheader.i109, label %bb.cc, !llvm.loop !816

.preheader.i109:                                  ; preds = %bb.cc, %.preheader.i109
  %.3.i = phi ptr [ %i.pt, %.preheader.i109 ], [ %.251.i, %bb.cc ]
  %i.pt = getelementptr inbounds i8, ptr %.3.i, i64 -1 ; 4 uses
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !93  ; 2 uses
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i108, i64 %i.pv
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !95
  %i.py = icmp ugt i64 %i.pm, %i.px
  br i1 %i.py, label %.preheader.i109, label %bb.cd, !llvm.loop !817

bb.cd:                                            ; preds = %.preheader.i109
  %i.pz = icmp ult ptr %i.pn, %i.pt
  br i1 %i.pz, label %.lr.ph.i106, label %._crit_edge.i, !llvm.loop !818

._crit_edge.i:                                    ; preds = %bb.cd, %.loopexit.i
  %.340.lcssa.i = phi ptr [ %.239.i, %.loopexit.i ], [ %i.pn, %bb.cd ] ; 2 uses
  %i.qa = getelementptr inbounds i8, ptr %.340.lcssa.i, i64 -1 ; 3 uses
  %.not.i105 = icmp eq ptr %.0146, %i.qa
  br i1 %.not.i105, label %"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EET0_SI_SI_T1_.exit", label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !93
  store i8 %i.qb, ptr %.0146, align 1, !tbaa !93
  br label %"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EET0_SI_SI_T1_.exit"

"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EET0_SI_SI_T1_.exit": ; preds = %._crit_edge.i, %bb.ce
  store i8 %.pre, ptr %i.qa, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411.backedge"

bb.cf:                                            ; preds = %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit101._crit_edge", %bb.ca
  %.pre-phi = phi i64 [ %.phi.trans.insert, %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit101._crit_edge" ], [ %i.oc, %bb.ca ]
  %i.qc = phi i64 [ %.pre270, %"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEjT1_SI_SI_T0_.exit101._crit_edge" ], [ %i.oe, %bb.ca ] ; 3 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %bb.cf
  %.037.i113 = phi ptr [ %.0146, %bb.cf ], [ %i.qd, %bb.cg ] ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.037.i113, i64 1 ; 6 uses
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !93  ; 2 uses
  %i.qf = zext i8 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %.val19.val.i112.pre, i64 %i.qf
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !95
  %i.qi = icmp ugt i64 %i.qh, %i.qc
  br i1 %i.qi, label %bb.cg, label %bb.ch, !llvm.loop !819

bb.ch:                                            ; preds = %bb.cg
  %i.qj = icmp eq ptr %.0146, %.037.i113
  br i1 %i.qj, label %.preheader40.i.preheader, label %.preheader41.i114

.preheader40.i.preheader:                         ; preds = %bb.ch
  %i.qk = icmp ult ptr %i.qd, %.0149.ph
  br i1 %i.qk, label %.lr.ph397, label %.critedge.i116

.preheader40.i:                                   ; preds = %.lr.ph397
  %i.ql = icmp ult ptr %i.qd, %i.qm
  br i1 %i.ql, label %.lr.ph397, label %.critedge.i116, !llvm.loop !820

.lr.ph397:                                        ; preds = %.preheader40.i.preheader, %.preheader40.i
  %.0.i125396 = phi ptr [ %i.qm, %.preheader40.i ], [ %.0149.ph, %.preheader40.i.preheader ]
  %i.qm = getelementptr inbounds i8, ptr %.0.i125396, i64 -1 ; 5 uses
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !93
  %i.qo = zext i8 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %.val19.val.i112.pre, i64 %i.qo
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !95
  %i.qr = icmp ugt i64 %i.qq, %i.qc
  br i1 %i.qr, label %..critedge.i116.loopexit_crit_edge, label %.preheader40.i, !llvm.loop !820

.preheader41.i114:                                ; preds = %bb.ch, %.preheader41.i114
  %.1.i115 = phi ptr [ %i.qs, %.preheader41.i114 ], [ %.0149.ph, %bb.ch ]
  %i.qs = getelementptr inbounds i8, ptr %.1.i115, i64 -1 ; 3 uses
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !93
  %i.qu = zext i8 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %.val19.val.i112.pre, i64 %i.qu
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !95
  %i.qx = icmp ugt i64 %i.qw, %i.qc
  br i1 %i.qx, label %.critedge.i116, label %.preheader41.i114, !llvm.loop !821

..critedge.i116.loopexit_crit_edge:               ; preds = %.lr.ph397
  br label %.critedge.i116, !llvm.loop !820

.critedge.i116:                                   ; preds = %.preheader41.i114, %.preheader40.i, %.preheader40.i.preheader, %..critedge.i116.loopexit_crit_edge
  %.2.i = phi ptr [ %i.qm, %.preheader40.i ], [ %.0149.ph, %.preheader40.i.preheader ], [ %i.qm, %..critedge.i116.loopexit_crit_edge ], [ %i.qs, %.preheader41.i114 ] ; 3 uses
  %i.qy = icmp ult ptr %i.qd, %.2.i               ; 2 uses
  br i1 %i.qy, label %.lr.ph.preheader.i119, label %._crit_edge.i117

.lr.ph.preheader.i119:                            ; preds = %.critedge.i116
  %.pre.i120 = load i8, ptr %.2.i, align 1, !tbaa !93
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %bb.cj, %.lr.ph.preheader.i119
  %i.qz = phi i8 [ %i.rk, %bb.cj ], [ %.pre.i120, %.lr.ph.preheader.i119 ]
  %i.ra = phi i8 [ %i.re, %bb.cj ], [ %i.qe, %.lr.ph.preheader.i119 ]
  %.350.i = phi ptr [ %i.rj, %bb.cj ], [ %.2.i, %.lr.ph.preheader.i119 ] ; 2 uses
  %.13849.i = phi ptr [ %i.rd, %bb.cj ], [ %i.qd, %.lr.ph.preheader.i119 ] ; 2 uses
  store i8 %i.qz, ptr %.13849.i, align 1, !tbaa !93
  store i8 %i.ra, ptr %.350.i, align 1, !tbaa !93
  %.val16.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val16.val.i = load ptr, ptr %.val16.i, align 8, !tbaa !97 ; 3 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i, i64 %.pre-phi
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !95 ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i121
  %.239.i122 = phi ptr [ %.13849.i, %.lr.ph.i121 ], [ %i.rd, %bb.ci ] ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.239.i122, i64 1 ; 4 uses
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !93  ; 2 uses
  %i.rf = zext i8 %i.re to i64
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i, i64 %i.rf
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !95
  %i.ri = icmp ugt i64 %i.rh, %i.rc
  br i1 %i.ri, label %bb.ci, label %.preheader.i123, !llvm.loop !822

.preheader.i123:                                  ; preds = %bb.ci, %.preheader.i123
  %.4.i124 = phi ptr [ %i.rj, %.preheader.i123 ], [ %.350.i, %bb.ci ]
  %i.rj = getelementptr inbounds i8, ptr %.4.i124, i64 -1 ; 4 uses
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !93  ; 2 uses
  %i.rl = zext i8 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %.val16.val.i, i64 %i.rl
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !95
  %i.ro = icmp ugt i64 %i.rn, %i.rc
  br i1 %i.ro, label %bb.cj, label %.preheader.i123, !llvm.loop !823

bb.cj:                                            ; preds = %.preheader.i123
  %i.rp = icmp ult ptr %i.rd, %i.rj
  br i1 %i.rp, label %.lr.ph.i121, label %._crit_edge.i117, !llvm.loop !824

._crit_edge.i117:                                 ; preds = %bb.cj, %.critedge.i116
  %i.rq = phi ptr [ %.037.i113, %.critedge.i116 ], [ %.239.i122, %bb.cj ] ; 8 uses
  %.not.i118 = icmp eq ptr %.0146, %i.rq
  br i1 %.not.i118, label %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EENS_4pairIT0_bEESJ_SJ_T1_.exit", label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i117
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !93
  store i8 %i.rr, ptr %.0146, align 1, !tbaa !93
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EENS_4pairIT0_bEESJ_SJ_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EENS_4pairIT0_bEESJ_SJ_T1_.exit": ; preds = %._crit_edge.i117, %bb.ck
  store i8 %.pre, ptr %i.rq, align 1, !tbaa !93
  br i1 %i.qy, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EENS_4pairIT0_bEESJ_SJ_T1_.exit"
  %i.rs = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEbT1_SI_T0_"(ptr noundef nonnull %.0146, ptr noundef nonnull %i.rq, ptr noundef nonnull align 8 dereferenceable(8) %2) #24 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 1 ; 2 uses
  %i.ru = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEbT1_SI_T0_"(ptr noundef nonnull %i.rt, ptr noundef %.0149.ph, ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  br i1 %i.ru, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.rs, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread", label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer", !llvm.loop !825

bb.cn:                                            ; preds = %bb.cl
  br i1 %i.rs, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit", label %bb.co, !llvm.loop !825

bb.co:                                            ; preds = %bb.cn, %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EENS_4pairIT0_bEESJ_SJ_T1_.exit"
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhLb0EEEvT1_SI_T0_NS_15iterator_traitsISI_E15difference_typeEb"(ptr noundef nonnull %.0146, ptr noundef nonnull %i.rq, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.id, i1 noundef zeroext %i.g) #24
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 1
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411.backedge"

"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411.backedge": ; preds = %bb.co, %"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EET0_SI_SI_T1_.exit"
  %.0146.ph412.be = phi ptr [ %.340.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPhRZN3jxl25FindBestBlockEntropyModelERKNS3_14CompressParamsERKNS3_5PlaneIiEERKNS3_15AcStrategyImageEPNS3_11BlockCtxMapEE3$_0EET0_SI_SI_T1_.exit" ], [ %i.rv, %bb.co ]
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.outer411", !llvm.loop !825

"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit.thread": ; preds = %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit", %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit", %bb.cm, %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SH_RT0_NS_15iterator_traitsISH_E15difference_typeE.exit.i.i.i", %bb.x, %bb.u, %bb.y, %bb.v, %bb.t, %bb.p, %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.c, %bb.l, %bb.k, %bb.q, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEbT1_SI_T0_"(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #20 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  switch i64 %i.c, label %bb.r [
    i64 0, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"
    i64 1, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.l
    i64 5, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %1, i64 -1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !93    ; 2 uses
  %i.f = load i8, ptr %0, align 1, !tbaa !93      ; 2 uses
  %.val31 = load ptr, ptr %2, align 8, !tbaa !351
  %.val31.val = load ptr, ptr %.val31, align 8, !tbaa !97 ; 2 uses
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val31.val, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !95
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val31.val, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !95
  %i.m = icmp ugt i64 %i.i, %i.l
  br i1 %i.m, label %bb.c, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.c:                                             ; preds = %bb.b
  store i8 %i.e, ptr %0, align 1, !tbaa !93
  store i8 %i.f, ptr %i.d, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.o = getelementptr inbounds i8, ptr %1, i64 -1 ; 5 uses
  %i.p = load i8, ptr %i.n, align 1, !tbaa !93    ; 3 uses
  %i.q = load i8, ptr %0, align 1, !tbaa !93      ; 4 uses
  %.val13.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val13.val.i.i = load ptr, ptr %.val13.i.i, align 8, !tbaa !97 ; 3 uses
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i.i, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  %i.u = zext i8 %i.q to i64                      ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i.i, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !95
  %i.x = icmp ugt i64 %i.t, %i.w
  %i.y = load i8, ptr %i.o, align 1, !tbaa !93    ; 3 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i.i, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !95
  %i.ac = icmp ugt i64 %i.ab, %i.t                ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ac, label %bb.f, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.f:                                             ; preds = %bb.e
  store i8 %i.y, ptr %i.n, align 1, !tbaa !93
  store i8 %i.p, ptr %i.o, align 1, !tbaa !93
  %i.ad = load i8, ptr %i.n, align 1, !tbaa !93   ; 2 uses
  %i.ae = load i8, ptr %0, align 1, !tbaa !93     ; 2 uses
  %.val11.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val11.val.i.i = load ptr, ptr %.val11.i.i, align 8, !tbaa !97 ; 2 uses
  %i.af = zext i8 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i.i, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !95
  %i.ai = zext i8 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.val11.val.i.i, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !95
  %i.al = icmp ugt i64 %i.ah, %i.ak
  br i1 %i.al, label %bb.g, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.g:                                             ; preds = %bb.f
  store i8 %i.ad, ptr %0, align 1, !tbaa !93
  store i8 %i.ae, ptr %i.n, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.h:                                             ; preds = %bb.d
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.y, ptr %0, align 1, !tbaa !93
  store i8 %i.q, ptr %i.o, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.j:                                             ; preds = %bb.h
  store i8 %i.p, ptr %0, align 1, !tbaa !93
  store i8 %i.q, ptr %i.n, align 1, !tbaa !93
  %i.am = load i8, ptr %i.o, align 1, !tbaa !93   ; 2 uses
  %.val.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i.i = load ptr, ptr %.val.i.i, align 8, !tbaa !97 ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !95
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i, i64 %i.u
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !95
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.k:                                             ; preds = %bb.j
  store i8 %i.am, ptr %i.n, align 1, !tbaa !93
  store i8 %i.q, ptr %i.o, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.l:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.av = getelementptr inbounds i8, ptr %1, i64 -1
  tail call fastcc void @"_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SI_SI_SI_T0_"(ptr noundef %0, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #24
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.m:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %1, i64 -1 ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhEEvT1_SI_SI_SI_T0_"(ptr noundef %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(8) %2) #24
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !93  ; 2 uses
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !93  ; 2 uses
  %.val7.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val7.val.i.i = load ptr, ptr %.val7.i.i, align 8, !tbaa !97 ; 2 uses
  %i.bc = zext i8 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val7.val.i.i, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !95
  %i.bf = zext i8 %i.bb to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val7.val.i.i, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !95
  %i.bi = icmp ugt i64 %i.be, %i.bh
  br i1 %i.bi, label %bb.n, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.n:                                             ; preds = %bb.m
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !93
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !93
  %i.bj = load i8, ptr %i.ay, align 1, !tbaa !93  ; 4 uses
  %i.bk = load i8, ptr %i.ax, align 1, !tbaa !93  ; 2 uses
  %.val6.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val6.val.i.i = load ptr, ptr %.val6.i.i, align 8, !tbaa !97 ; 2 uses
  %i.bl = zext i8 %i.bj to i64                    ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val6.val.i.i, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !95
  %i.bo = zext i8 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val6.val.i.i, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !95
  %i.br = icmp ugt i64 %i.bn, %i.bq
  br i1 %i.br, label %bb.o, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.o:                                             ; preds = %bb.n
  store i8 %i.bj, ptr %i.ax, align 1, !tbaa !93
  store i8 %i.bk, ptr %i.ay, align 1, !tbaa !93
  %i.bs = load i8, ptr %i.aw, align 1, !tbaa !93  ; 2 uses
  %.val5.i.i = load ptr, ptr %2, align 8, !tbaa !351
  %.val5.val.i.i = load ptr, ptr %.val5.i.i, align 8, !tbaa !97 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val5.val.i.i, i64 %i.bl
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !95
  %i.bv = zext i8 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.val5.val.i.i, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !95
  %i.by = icmp ugt i64 %i.bu, %i.bx
  br i1 %i.by, label %bb.p, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.p:                                             ; preds = %bb.o
  store i8 %i.bj, ptr %i.aw, align 1, !tbaa !93
  store i8 %i.bs, ptr %i.ax, align 1, !tbaa !93
  %i.bz = load i8, ptr %0, align 1, !tbaa !93     ; 2 uses
  %.val.i.i32 = load ptr, ptr %2, align 8, !tbaa !351
  %.val.val.i.i33 = load ptr, ptr %.val.i.i32, align 8, !tbaa !97 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i33, i64 %i.bl
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !95
  %i.cc = zext i8 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i33, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !95
  %i.cf = icmp ugt i64 %i.cb, %i.ce
  br i1 %i.cf, label %bb.q, label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.q:                                             ; preds = %bb.p
  store i8 %i.bj, ptr %0, align 1, !tbaa !93
  store i8 %i.bz, ptr %i.aw, align 1, !tbaa !93
  br label %"_ZNSt3__124__sort3_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl25FindBestBlockEntropyModelERKNS2_14CompressParamsERKNS2_5PlaneIiEERKNS2_15AcStrategyImageEPNS2_11BlockCtxMapEE3$_0PhTnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSK_SK_SK_SJ_.exit"

bb.r:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !93  ; 3 uses
  %i.cj = load i8, ptr %0, align 1, !tbaa !93     ; 5 uses
  %.val13.i.i34 = load ptr, ptr %2, align 8, !tbaa !351
  %.val13.val.i.i35 = load ptr, ptr %.val13.i.i34, align 8, !tbaa !97 ; 3 uses
  %i.ck = zext i8 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i.i35, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !95 ; 2 uses
  %i.cn = zext i8 %i.cj to i64                    ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.val13.val.i.i35, i64 %i.cn
end_hunk_1
