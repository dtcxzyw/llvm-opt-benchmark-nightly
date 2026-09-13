Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/layout_check?download=true
inline.NumInlined: 4839
inline.NumDeleted: 1623
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN6spdlog7details10circular_qINS0_14log_msg_bufferEE9push_backEOS2_:bb.a
  %i.aa = getelementptr i8, ptr %i.r, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep8, align 8, !tbaa !107
  %wide.load9 = load <16 x i8>, ptr %i.ab, align 8, !tbaa !107
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !107
  store <16 x i8> %wide.load9, ptr %i.ac, align 1, !tbaa !107
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1510

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !394

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.o, -8                     ; 4 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %n.vec11
  %i.af = getelementptr i8, ptr %i.r, i64 %n.vec11
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %next.gep13 = getelementptr i8, ptr %i.l, i64 %index12
  %next.gep14 = getelementptr i8, ptr %i.r, i64 %index12
  %wide.load15 = load <8 x i8>, ptr %next.gep14, align 8, !tbaa !107
  store <8 x i8> %wide.load15, ptr %next.gep13, align 1, !tbaa !107
  %index.next16 = add nuw i64 %index12, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next16, %n.vec11
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1511

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.o, %n.vec11
  br i1 %cmp.n17, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ] ; 3 uses
  %i.ah = add i64 %i.o, %i.a
  %.057.i.i.i.i.ph20 = ptrtoaddr ptr %.057.i.i.i.i.ph to i64 ; 2 uses
  %i.ai = sub i64 %i.o, %.057.i.i.i.i.ph20
  %i.aj = add i64 %i.ah, 127
  %i.ak = sub i64 %i.aj, %.057.i.i.i.i.ph20
  %xtraiter = and i64 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.i.prol ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.prol = phi ptr [ %i.al, %.lr.ph.i.i.i.i.prol ], [ %.057.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.prol, i64 1 ; 2 uses
  %i.am = load i8, ptr %.057.i.i.i.i.prol, align 1, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.am, ptr %.08.i.i.i.i.prol, align 1, !tbaa !107
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1512

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.08.i.i.i.i.unr = phi ptr [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi ptr [ %.057.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.prol ]
  %i.ao = icmp ult i64 %i.ak, 7
  br i1 %i.ao, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 1
  %i.aq = load i8, ptr %.057.i.i.i.i, align 1, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 1
  store i8 %i.aq, ptr %.08.i.i.i.i, align 1, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 2
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 2
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 3
  %i.aw = load i8, ptr %i.as, align 1, !tbaa !107
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 3
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !107
  %i.ay = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 4
  %i.az = load i8, ptr %i.av, align 1, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 4
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 5
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !107
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 5
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !107
  %i.be = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 6
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !107
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 6
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !107
  %i.bh = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 7
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !107
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 7
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !107
  %.not.i.i.i.i.7 = icmp eq ptr %i.bk, %i.u
  br i1 %.not.i.i.i.i.7, label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1513

bb.e:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE10deallocateEv.exit.i.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !121
  store i64 %i.q, ptr %i.t, align 8, !tbaa !122
  store ptr %i.r, ptr %i.i, align 8, !tbaa !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i

_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.d
  %i.bn = load i64, ptr %i.t, align 8, !tbaa !122 ; 2 uses
  %i.bo = icmp ugt i64 %i.o, %i.bn
  br i1 %i.bo, label %bb.f, label %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit

bb.f:                                             ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !120
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(283) %i.j, i64 noundef %i.o) #24, !inline_history !1514
  %.pre.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !122
  br label %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit

_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit:   ; preds = %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i, %bb.f
  %i.br = phi i64 [ %i.bn, %_ZN3fmt3v126detail4copyIcPcS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i.i ], [ %.pre.i.i.i.i.i, %bb.f ]
  %i.bs = tail call noundef i64 @llvm.umin.i64(i64 %i.o, i64 %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !132
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !121 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !318
  store ptr %i.bu, ptr %i.h, align 8, !tbaa !123
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !123
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !1522
  %i.ca = add i64 %i.bz, 1
  %i.cb = load i64, ptr %0, align 8, !tbaa !1521  ; 2 uses
  %i.cc = urem i64 %i.ca, %i.cb
  %.fr = freeze i64 %i.cc                         ; 3 uses
  store i64 %.fr, ptr %i.d, align 8, !tbaa !1522
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1524
  %i.cf = icmp eq i64 %.fr, %i.ce
  br i1 %i.cf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit
  %i.cg = add i64 %.fr, 1                         ; 2 uses
  %i.ch = icmp eq i64 %i.cg, %i.cb
  %i.ci = select i1 %i.ch, i64 0, i64 %i.cg
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !1524
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1525
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !1525
  br label %bb.h

bb.h:                                             ; preds = %_ZN6spdlog7details14log_msg_bufferaSEOS1_.exit, %bb.g, %bb.a
  ret void
}

declare void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef) local_unnamed_addr #4

declare void @_ZN4LIEF11swap_endianImEEvPT_(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 35 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEET_SH_SH_T0_.exit"
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph42, !llvm.loop !1526

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.hc, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i25.lcssa, 3               ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i25.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i", %._crit_edge
  %.09.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.bh, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.09.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !102  ; 3 uses
  %i.u = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !102 ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !102 ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.aa) #24, !inline_history !1527
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #24, !inline_history !1527
  %i.ak = icmp ult i64 %i.af, %i.aj
  %spec.select.i.i.i.i = select i1 %i.ak, i64 %i.y, i64 %i.w ; 4 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !102
  %i.an = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.034.i.i.i.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !102
  %i.ao = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1528

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ap, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !102
  store ptr %i.aq, ptr %i.r, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ar = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !102 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %i.at) #24, !inline_history !1529
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %i.t) #24, !inline_history !1529
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !102
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.010.i.i.i.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !102
  %i.bf = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i", !llvm.loop !1530

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.t, ptr %i.bg, align 8, !tbaa !102
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bh = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_RT0_.exit.i.i", label %bb.c, !llvm.loop !1531

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_T0_SI_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i25.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_RT0_.exit.i19.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bi, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_RT0_.exit.i19.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_RT0_.exit.i.i" ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !102 ; 3 uses
  %i.bk = load ptr, ptr %.fr26, align 8, !tbaa !102
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !102
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bl, %i.a                     ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 3                 ; 3 uses
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = lshr i64 %i.bo, 1
  %i.bq = icmp sgt i64 %i.bn, 2
  br i1 %i.bq, label %.lr.ph.i.i.i23.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i23.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i23.i
  %.034.i.i.i24.i = phi i64 [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i23.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.br = shl i64 %.034.i.i.i24.i, 1              ; 2 uses
  %i.bs = add i64 %i.br, 2                        ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.bs
  %i.bu = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.bu
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !102 ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !102 ; 2 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(64) %i.bw) #24, !inline_history !1532
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef i64 %i.ce(ptr noundef nonnull align 8 dereferenceable(64) %i.bx) #24, !inline_history !1532
  %i.cg = icmp ult i64 %i.cb, %i.cf
  %spec.select.i.i.i25.i = select i1 %i.cg, i64 %i.bu, i64 %i.bs ; 4 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %spec.select.i.i.i25.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !102
  %i.cj = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.034.i.i.i24.i
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !102
  %i.ck = icmp slt i64 %spec.select.i.i.i25.i, %i.bp
  br i1 %i.ck, label %.lr.ph.i.i.i23.i, label %._crit_edge.i.i.i10.i, !llvm.loop !1528

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i23.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i25.i, %.lr.ph.i.i.i23.i ] ; 5 uses
  %i.cl = and i64 %i.bm, 8
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cn = add nsw i64 %i.bn, -2
  %i.co = ashr exact i64 %i.cn, 1
  %i.cp = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.co
  br i1 %i.cp, label %.thread.i.i22.i, label %bb.h

.thread.i.i22.i:                                  ; preds = %bb.g
  %i.cq = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cr = or disjoint i64 %i.cq, 1                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !102
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !102
  br label %.lr.ph.i.i.i.i15.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_RT0_.exit.i19.i", label %.lr.ph.i.i.i.i15.i.preheader

.lr.ph.i.i.i.i15.i.preheader:                     ; preds = %bb.h, %.thread.i.i22.i
  %.010.i.i.i.i16.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.h ], [ %i.cr, %.thread.i.i22.i ]
  br label %.lr.ph.i.i.i.i15.i

.lr.ph.i.i.i.i15.i:                               ; preds = %.lr.ph.i.i.i.i15.i.preheader, %bb.i
  %.010.i.i.i.i16.i = phi i64 [ %.0911.i.i56.i.i18.i, %bb.i ], [ %.010.i.i.i.i16.i.ph, %.lr.ph.i.i.i.i15.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i17.i = add nsw i64 %.010.i.i.i.i16.i, -1
  %.0911.i.i56.i.i18.i = lshr i64 %.0911.in.i.i.i.i17.i, 1 ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0911.i.i56.i.i18.i ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !102 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(64) %i.cw) #24, !inline_history !1533
  %i.db = load ptr, ptr %i.bj, align 8, !tbaa !62
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = tail call noundef i64 %i.dd(ptr noundef nonnull align 8 dereferenceable(64) %i.bj) #24, !inline_history !1533
  %i.df = icmp ult i64 %i.da, %i.de
  br i1 %i.df, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_RT0_.exit.i19.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i15.i
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !102
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.010.i.i.i.i16.i
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !102
  %.not7.i.i21.i = icmp eq i64 %.0911.i.i56.i.i18.i, 0
  br i1 %.not7.i.i21.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_RT0_.exit.i19.i", label %.lr.ph.i.i.i.i15.i, !llvm.loop !1530

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_RT0_.exit.i19.i": ; preds = %bb.i, %.lr.ph.i.i.i.i15.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i16.i, %.lr.ph.i.i.i.i15.i ], [ 0, %bb.i ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i
  store ptr %i.bj, ptr %i.di, align 8, !tbaa !102
  %i.dj = icmp sgt i64 %i.bm, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !1534

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 3 uses
  %.02440 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.hd, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02440, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.dm ; 7 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2341, i64 -8 ; 7 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !102 ; 2 uses
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !62
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = tail call noundef i64 %i.dt(ptr noundef nonnull align 8 dereferenceable(64) %i.dp) #24, !inline_history !1535
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !62
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = tail call noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.dq) #24, !inline_history !1535
  %i.dz = icmp ult i64 %i.du, %i.dy
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !102 ; 4 uses
  br i1 %i.dz, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !102 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !62
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call noundef i64 %i.ee(ptr noundef nonnull align 8 dereferenceable(64) %i.eb) #24, !inline_history !1535
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef i64 %i.ei(ptr noundef nonnull align 8 dereferenceable(64) %i.ea) #24, !inline_history !1535
  %i.ek = icmp ult i64 %i.ef, %i.ej
  br i1 %i.ek, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.el = load ptr, ptr %.fr26, align 8, !tbaa !102
  %i.em = load ptr, ptr %i.dn, align 8, !tbaa !102
  store ptr %i.em, ptr %.fr26, align 8, !tbaa !102
  store ptr %i.el, ptr %i.dn, align 8, !tbaa !102
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %i.eo = load ptr, ptr %i.do, align 8, !tbaa !102 ; 2 uses
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !62
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 80
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef i64 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %i.en) #24, !inline_history !1535
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = tail call noundef i64 %i.ev(ptr noundef nonnull align 8 dereferenceable(64) %i.eo) #24, !inline_history !1535
  %i.ex = icmp ult i64 %i.es, %i.ew
  %i.ey = load ptr, ptr %.fr26, align 8, !tbaa !102 ; 2 uses
  br i1 %i.ex, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ez = load ptr, ptr %i.do, align 8, !tbaa !102
  store ptr %i.ez, ptr %.fr26, align 8, !tbaa !102
  store ptr %i.ey, ptr %i.do, align 8, !tbaa !102
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.fa = load ptr, ptr %i.f, align 8, !tbaa !102
  store ptr %i.fa, ptr %.fr26, align 8, !tbaa !102
  store ptr %i.ey, ptr %i.f, align 8, !tbaa !102
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph42
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !102 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !62
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 80
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = tail call noundef i64 %i.fe(ptr noundef nonnull align 8 dereferenceable(64) %i.fb) #24, !inline_history !1535
  %i.fg = load ptr, ptr %i.ea, align 8, !tbaa !62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 80
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef i64 %i.fi(ptr noundef nonnull align 8 dereferenceable(64) %i.ea) #24, !inline_history !1535
  %i.fk = icmp ult i64 %i.ff, %i.fj
  br i1 %i.fk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fl = load <2 x ptr>, ptr %.fr26, align 8, !tbaa !102
  %i.fm = shufflevector <2 x ptr> %i.fl, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.fm, ptr %.fr26, align 8, !tbaa !102
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.fn = load ptr, ptr %i.dn, align 8, !tbaa !102 ; 2 uses
  %i.fo = load ptr, ptr %i.do, align 8, !tbaa !102 ; 2 uses
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !62
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = tail call noundef i64 %i.fr(ptr noundef nonnull align 8 dereferenceable(64) %i.fn) #24, !inline_history !1535
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !62
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 80
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = tail call noundef i64 %i.fv(ptr noundef nonnull align 8 dereferenceable(64) %i.fo) #24, !inline_history !1535
  %i.fx = icmp ult i64 %i.fs, %i.fw
  %i.fy = load ptr, ptr %.fr26, align 8, !tbaa !102 ; 2 uses
  br i1 %i.fx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fz = load ptr, ptr %i.do, align 8, !tbaa !102
  store ptr %i.fz, ptr %.fr26, align 8, !tbaa !102
  store ptr %i.fy, ptr %i.do, align 8, !tbaa !102
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.ga = load ptr, ptr %i.dn, align 8, !tbaa !102
  store ptr %i.ga, ptr %.fr26, align 8, !tbaa !102
  store ptr %i.fy, ptr %i.dn, align 8, !tbaa !102
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader", %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.gm, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2341, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i.preheader" ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i"
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i" ], [ %i.gm, %bb.t ] ; 9 uses
  %i.gb = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !102 ; 2 uses
  %i.gc = load ptr, ptr %.fr26, align 8, !tbaa !102 ; 2 uses
  %i.gd = load ptr, ptr %i.gb, align 8, !tbaa !62
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 80
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = tail call noundef i64 %i.gf(ptr noundef nonnull align 8 dereferenceable(64) %i.gb) #24, !inline_history !1536
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !62
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 80
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = tail call noundef i64 %i.gj(ptr noundef nonnull align 8 dereferenceable(64) %i.gc) #24, !inline_history !1536
  %i.gl = icmp ult i64 %i.gg, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  br i1 %i.gl, label %bb.t, label %.preheader.i.i, !llvm.loop !1537

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.gn = load ptr, ptr %.fr26, align 8, !tbaa !102 ; 2 uses
  %i.go = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !102 ; 2 uses
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !62
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 80
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = tail call noundef i64 %i.gr(ptr noundef nonnull align 8 dereferenceable(64) %i.gn) #24, !inline_history !1536
  %i.gt = load ptr, ptr %i.go, align 8, !tbaa !62
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 80
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = tail call noundef i64 %i.gv(ptr noundef nonnull align 8 dereferenceable(64) %i.go) #24, !inline_history !1536
  %i.gx = icmp ult i64 %i.gs, %i.gw
  br i1 %i.gx, label %.preheader.i.i, label %bb.u, !llvm.loop !1538

bb.u:                                             ; preds = %.preheader.i.i
  %i.gy = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.gy, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEET_SH_SH_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.gz = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !102
  %i.ha = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !102
  store ptr %i.ha, ptr %.sroa.010.1.i.i, align 8, !tbaa !102
  store ptr %i.gz, ptr %.sroa.0.1.i.i, align 8, !tbaa !102
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_SH_T0_.exit.i", !llvm.loop !1539

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEET_SH_SH_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2341, i64 noundef %i.dl)
  %i.hb = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.hc = sub i64 %i.hb, %i.a                     ; 2 uses
  %i.hd = ashr exact i64 %i.hc, 3                 ; 2 uses
  %i.he = icmp sgt i64 %i.hd, 16
  br i1 %i.he, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_T0_.exit", !llvm.loop !1526

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEET_SH_SH_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_SH_RT0_.exit.i19.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4LIEF5MachO7SectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_13LayoutChecker24check_section_contiguityEvE3$_1EEEvT_SH_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog6logger4log_IJRKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %7 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %8 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 11 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.1429", align 16 ; 4 uses
  %10 = alloca %"struct.spdlog::details::log_msg", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  %i.c = icmp sge i32 %2, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.f = load atomic i8, ptr %i.e monotonic, align 8, !range !118, !noundef !53
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = or i1 %i.c, %i.g
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.j, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.i, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.k, ptr %8, align 8, !tbaa !121
  store i64 250, ptr %i.h, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.l = load i64, ptr %5, align 8, !tbaa !91     ; 6 uses
  %.sroa.019.0.insert.ext = zext i64 %i.l to i128
  store i128 %.sroa.019.0.insert.ext, ptr %9, align 16
  %i.m = icmp eq i64 %4, 2
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %3, align 1
  %i.o = icmp ne i16 %i.n, 32123
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = or i64 %i.l, 1
  %i.s = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = xor i64 %i.s, 63
  %i.u = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !107   ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = zext i8 %i.v to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !91
  %i.aa = icmp ult i64 %i.l, %i.z
  %.neg.i.i.i.i = sext i1 %i.aa to i32
  %i.ab = add nsw i32 %.neg.i.i.i.i, %i.w         ; 4 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp ugt i32 %i.ab, 250
  br i1 %i.ad, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.d
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 375) ; 2 uses
  %i.ae = call noalias ptr @malloc(i64 noundef %spec.select.i) #29 ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i27, label %bb.e, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %6, align 8, !tbaa !62
  %i.af = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #24
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.127, i32 noundef 752, ptr noundef %i.af) #28
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.ae, ptr %8, align 8, !tbaa !121
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !122
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.d, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.ag = phi ptr [ %i.ae, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.k, %bb.d ] ; 3 uses
  store i64 %i.ac, ptr %i.j, align 8, !tbaa !132
  %i.ah = icmp ugt i64 %i.l, 99
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i12

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.ai, %.lr.ph.i.i.i ], [ %i.ab, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %i.l, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.ai = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  %i.al = urem i64 %.01819.i.i.i, 100
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  store i16 %i.ao, ptr %i.ak, align 1
  %i.ap = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.aq = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.aq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i12, !llvm.loop !0

._crit_edge.i.i.i12:                              ; preds = %.lr.ph.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread
  %.018.lcssa.i.i.i = phi i64 [ %i.l, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.ap, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.ab, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.ar = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i12
  %i.as = add i32 %.0.lcssa.i.i.i, -2
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.at
  %i.av = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2
  store i16 %i.ax, ptr %i.au, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i12
  %i.ay = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.az = or disjoint i8 %i.ay, 48
  %i.ba = add i32 %.0.lcssa.i.i.i, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !107
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %3, ptr %7, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.bd, align 8, !tbaa !126
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %8, ptr %i.be, align 8, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 4, ptr %i.bf, align 8, !tbaa !130
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %9, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !107
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr null, ptr %i.bg, align 8, !tbaa !131
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(56) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.g, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !134
  %i.bl = load ptr, ptr %8, align 8, !tbaa !121
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !132
  %i.bn = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #24
  store ptr %i.bi, ptr %10, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bk, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %2, ptr %i.bo, align 8, !tbaa !404
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !91
  %i.bq = load i8, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.i, label %._crit_edge.i.i.i, !prof !405

._crit_edge.i.i.i:                                ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.pre.i.i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !91
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

bb.i:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.bs = call noundef i64 (i64, ...) @syscall(i64 noundef 186) #24 ; 2 uses
  %i.bt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !91
  %i.bu = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6spdlog7details2os9thread_idEvE3tid) ; 0 uses
  store i8 1, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit: ; preds = %._crit_edge.i.i.i, %bb.i
  %i.bv = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i ], [ %i.bs, %bb.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !406
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %i.bl, ptr %i.bz, align 8, !tbaa !123
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i64 %i.bm, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !91
  br i1 %i.c, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  %i.ca = load ptr, ptr %0, align 8, !tbaa !62
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %10) #24, !inline_history !36
  br label %bb.k

end_hunk_0
