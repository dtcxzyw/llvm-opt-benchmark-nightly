Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_shrink?download=true
inline.NumInlined: 441
inline.NumDeleted: 162
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal25minimize_and_shrink_blockERSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEERjSB_i:bb.a
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22
  %.not27 = icmp eq i32 %i.l, %i.r
  br i1 %.not27, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.u = phi i64 [ %i.af, %.lr.ph ], [ %i.p, %.lr.ph.preheader ]
  %i.v = phi ptr [ %i.ab, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.02228 = phi i32 [ %spec.select, %.lr.ph ], [ %i.t, %.lr.ph.preheader ]
  %i.w = phi i32 [ %i.aa, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.z, i32 %.02228) ; 2 uses
  %i.aa = add i32 %i.w, 1
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = tail call noundef i32 @llvm.abs.i32(i32 %i.ad, i1 true)
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22
  %.not = icmp eq i32 %i.l, %i.ah
  br i1 %.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %i.ai = add i32 %i.w, 2
  store ptr %i.ab, ptr %0, align 8, !tbaa !33
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.aj = icmp ugt i32 %i.w, -3
  br i1 %i.aj, label %bb.b, label %bb.h

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw [6 x i8], ptr %i.al, i64 %i.i ; 2 uses
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = or i16 %i.an, 2
  store i16 %i.ao, ptr %i.am, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1312 ; 2 uses
  %i.aq = load i64, ptr %2, align 8, !tbaa !8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1320 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1328 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !11
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.ap, align 8, !tbaa !18 ; 4 uses
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 5 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775804
  br i1 %i.bd, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.be = ashr exact i64 %i.bc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 2305843009213693951)
  %i.bi = select i1 %i.bg, i64 2305843009213693951, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #14 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  %i.bm = load i32, ptr %i.as, align 4, !tbaa !11
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !11
  %i.bn = icmp sgt i64 %i.bc, 0
  br i1 %i.bn, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.not.i17.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.br) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bk, ptr %i.ap, align 8, !tbaa !18
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bs, ptr %i.av, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bt = call noundef i32 @_ZN7CaDiCaL8Internal12shrink_blockERSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEESA_iRjSB_ij(ptr noundef nonnull align 8 dereferenceable(7296) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %5, i32 noundef %spec.select)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.c, %bb.h
  %i.bu = phi i32 [ %.pre, %bb.h ], [ 0, %bb.c ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %.0 = phi i32 [ %i.bt, %bb.h ], [ 0, %bb.c ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bv = load i32, ptr %3, align 4, !tbaa !11
  %i.bw = add i32 %i.bv, %.0
  store i32 %i.bw, ptr %3, align 4, !tbaa !11
  %i.bx = load i32, ptr %4, align 4, !tbaa !11
  %i.by = add i32 %i.bx, %i.bu
  store i32 %i.by, ptr %4, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal26shrink_and_minimize_clauseEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %3 = alloca %"class.std::vector.20", align 8    ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !208
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(616) %i.d) #16
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit

_ZN7CaDiCaL8External20check_learned_clauseEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 5 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !8    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4140
  %i.p = load i32, ptr %i.o, align 4, !tbaa !227
  %i.q = sext i32 %i.p to i64
  %.not = icmp ugt i64 %i.n, %i.q
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_T1_(ptr %i.j, ptr %i.i, i64 noundef %i.t, ptr nonnull %0)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_(ptr %i.j, ptr %i.i, ptr nonnull %0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit

bb.e:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  tail call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS_26shrink_trail_negative_rankEEEvT_S9_T0_(ptr %i.j, ptr %i.i, ptr nonnull %0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit: ; preds = %bb.d, %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !8, !noalias !228 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !8, !noalias !231 ; 4 uses
  %4 = ptrtoint ptr %i.w to i64
  store i64 %4, ptr %1, align 8, !tbaa !8, !alias.scope !231
  %i.x = load i32, ptr %i.u, align 4, !tbaa !11   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !234, !range !202, !noundef !203
  %i.aa = trunc nuw i8 %i.z to i1
  %.not6983 = icmp ne ptr %i.u, %i.w
  %or.cond.not = select i1 %i.aa, i1 %.not6983, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.057.087 = phi ptr [ %.sroa.057.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 5 uses
  %.sroa.054.086 = phi ptr [ %i.ar, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.u, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.sroa.11.085 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.sroa.8.084 = phi ptr [ %.sroa.8.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.not.i23 = icmp eq ptr %.sroa.8.084, %.sroa.11.085
  br i1 %.not.i23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ab = load i32, ptr %.sroa.054.086, align 4, !tbaa !11
  store i32 %i.ab, ptr %.sroa.8.084, align 4, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ac = ptrtoint ptr %.sroa.11.085 to i64
  %i.ad = ptrtoint ptr %.sroa.057.087 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 6 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #14 ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  %i.ao = load i32, ptr %.sroa.054.086, align 4, !tbaa !11
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !11
  %i.ap = icmp sgt i64 %i.ae, 0
  br i1 %i.ap, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %.sroa.057.087, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.057.087, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.057.087, i64 noundef %i.ae) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.pn = phi ptr [ %i.an, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.8.084, %bb.f ]
  %.sroa.11.2 = phi ptr [ %i.aq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.085, %bb.f ] ; 2 uses
  %.sroa.057.2 = phi ptr [ %i.am, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.057.087, %bb.f ] ; 2 uses
  %.sroa.8.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.054.086, i64 4 ; 2 uses
  %.not69 = icmp eq ptr %i.ar, %i.w
  br i1 %.not69, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.as = ptrtoint ptr %.sroa.11.2 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit
  %.sroa.11.1 = phi i64 [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ], [ %i.as, %.loopexit.loopexit ]
  %.sroa.057.1 = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ], [ %.sroa.057.2, %.loopexit.loopexit ] ; 4 uses
  %.not7090 = icmp eq ptr %i.w, %i.v
  br i1 %.not7090, label %._crit_edge, label %.lr.ph91

.lr.ph91:                                         ; preds = %.loopexit, %.lr.ph91
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN7CaDiCaL8Internal25minimize_and_shrink_blockERSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEERjSB_i(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.x)
  %i.at = load i64, ptr %2, align 8               ; 2 uses
  store i64 %i.at, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.sroa.0.0.copyload.i.i.i.cast = inttoptr i64 %i.at to ptr
  %.not70 = icmp eq ptr %i.v, %.sroa.0.0.copyload.i.i.i.cast
  br i1 %.not70, label %._crit_edge, label %.lr.ph91, !llvm.loop !235

._crit_edge:                                      ; preds = %.lr.ph91, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !15  ; 5 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !18  ; 13 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = ashr exact i64 %i.ay, 2                 ; 5 uses
  %i.ba = icmp ugt i64 %i.az, 1
  br i1 %i.ba, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.bg = load i8, ptr %i.y, align 8, !tbaa !234, !range !202, !noundef !203
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.lr.ph100.split, label %.lr.ph100.split.us

.lr.ph100.split.us:                               ; preds = %.lr.ph100
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %.not163 = icmp eq i32 %i.bj, %i.x
  %spec.select.us.peel = select i1 %.not163, i64 1, i64 2 ; 3 uses
  %exitcond.peel.not = icmp eq i64 %i.ay, 8
  br i1 %exitcond.peel.not, label %._crit_edge101, label %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader

_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader:   ; preds = %.lr.ph100.split.us
  %i.bk = tail call i64 @llvm.usub.sat.i64(i64 %i.az, i64 2) ; 3 uses
  %xtraiter = and i64 %i.bk, 1
  %i.bl = icmp eq i64 %i.ay, 12
  br i1 %i.bl, label %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.epil.preheader, label %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader.new

_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader.new: ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader
  %unroll_iter = and i64 %i.bk, -2
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit.us

_ZNSt6vectorIlSaIlEE5clearEv.exit.us:             ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit.us, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader.new
  %.098.us = phi i64 [ 2, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader.new ], [ %i.bx, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us ] ; 3 uses
  %.02197.us = phi i64 [ %spec.select.us.peel, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader.new ], [ %spec.select.us.1, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader.new ], [ %niter.next.1, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.098.us
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.02197.us
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !11
  %i.bp = icmp ne i32 %i.bn, %i.x
  %i.bq = zext i1 %i.bp to i64
  %spec.select.us = add i64 %.02197.us, %i.bq     ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.098.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !11 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %spec.select.us
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !11
  %i.bv = icmp ne i32 %i.bt, %i.x
  %i.bw = zext i1 %i.bv to i64
  %spec.select.us.1 = add i64 %spec.select.us, %i.bw ; 3 uses
  %i.bx = add nuw i64 %.098.us, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge101.loopexit178.unr-lcssa, label %_ZNSt6vectorIlSaIlEE5clearEv.exit.us, !llvm.loop !236

._crit_edge101.loopexit178.unr-lcssa:             ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge101, label %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.epil.preheader

_ZNSt6vectorIlSaIlEE5clearEv.exit.us.epil.preheader: ; preds = %._crit_edge101.loopexit178.unr-lcssa, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader
  %.098.us.epil.init = phi i64 [ 2, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader ], [ %i.bx, %._crit_edge101.loopexit178.unr-lcssa ]
  %.02197.us.epil.init = phi i64 [ %spec.select.us.peel, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.preheader ], [ %spec.select.us.1, %._crit_edge101.loopexit178.unr-lcssa ] ; 2 uses
  %lcmp.mod180 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.098.us.epil.init
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !11 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.02197.us.epil.init
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !11
  %i.cb = icmp ne i32 %i.bz, %i.x
  %i.cc = zext i1 %i.cb to i64
  %spec.select.us.epil = add i64 %.02197.us.epil.init, %i.cc
  br label %._crit_edge101

._crit_edge101:                                   ; preds = %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.epil.preheader, %._crit_edge101.loopexit178.unr-lcssa, %_ZNSt6vectorIlSaIlEE5clearEv.exit, %.lr.ph100.split.us, %._crit_edge
  %.021.lcssa = phi i64 [ 1, %._crit_edge ], [ %spec.select, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %spec.select.us.peel, %.lr.ph100.split.us ], [ %spec.select.us.1, %._crit_edge101.loopexit178.unr-lcssa ], [ %spec.select.us.epil, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.epil.preheader ] ; 4 uses
  %.lcssa78 = phi ptr [ %i.au, %._crit_edge ], [ %i.eq, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %i.au, %.lr.ph100.split.us ], [ %i.au, %._crit_edge101.loopexit178.unr-lcssa ], [ %i.au, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.epil.preheader ]
  %.lcssa76 = phi ptr [ %i.av, %._crit_edge ], [ %i.ek, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %i.av, %.lr.ph100.split.us ], [ %i.av, %._crit_edge101.loopexit178.unr-lcssa ], [ %i.av, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.epil.preheader ]
  %.lcssa74 = phi i64 [ %i.az, %._crit_edge ], [ %i.eu, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ 2, %.lr.ph100.split.us ], [ %i.az, %._crit_edge101.loopexit178.unr-lcssa ], [ %i.az, %_ZNSt6vectorIlSaIlEE5clearEv.exit.us.epil.preheader ] ; 3 uses
  %i.cd = icmp ugt i64 %.021.lcssa, %.lcssa74
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge101
  %i.ce = sub nuw i64 %.021.lcssa, %.lcssa74
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ce)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.l:                                             ; preds = %._crit_edge101
  %i.cf = icmp ult i64 %.021.lcssa, %.lcssa74
  br i1 %i.cf, label %bb.m, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.lcssa76, i64 %.021.lcssa ; 2 uses
  %.not.i.i24 = icmp eq ptr %.lcssa78, %i.cg
  br i1 %.not.i.i24, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.cg, ptr %i.h, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS_26shrink_trail_negative_rankEEEvT_S9_T0_:bb.a
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !22
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !28
  %i.av = sext i32 %i.au to i64
  %i.aw = or i64 %i.as, %i.av
  %i.ax = xor i64 %i.aw, -1                       ; 3 uses
  %i.ay = select i1 %.075147, i64 -1, i64 %i.ax
  %.282 = and i64 %i.ay, %.181125                 ; 6 uses
  %i.az = select i1 %.075147, i64 0, i64 %i.ax
  %.264 = or i64 %i.az, %.163128                  ; 6 uses
  %i.ba = lshr i64 %i.ax, %.070150
  %i.bb = and i64 %i.ba, 255                      ; 3 uses
  %i.bc = trunc nuw i8 %.068126 to i1
  %i.bd = icmp samesign ugt i64 %.066127, %i.bb
  %or.cond = select i1 %i.bc, i1 %i.bd, i1 false  ; 2 uses
  %.169 = select i1 %or.cond, i8 0, i8 %.068126   ; 2 uses
  %.167 = select i1 %or.cond, i64 %.066127, i64 %i.bb
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !204
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !204
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.090.0124, i64 4 ; 2 uses
  %.not115 = icmp eq ptr %i.bh, %i.ab
  br i1 %.not115, label %._crit_edge, label %bb.g, !llvm.loop !256

bb.h:                                             ; preds = %._crit_edge
  %i.bi = xor i64 %.264, %.282
  %i.bj = and i64 %i.bi, %.079145
  %i.bk = icmp eq i64 %i.bj, 0
  %or.cond114 = select i1 %i.bk, i1 true, i1 %i.ad
  br i1 %or.cond114, label %.loopexit117, label %.preheader118

bb.i:                                             ; preds = %._crit_edge
  br i1 %i.ad, label %.loopexit117, label %.preheader118

.preheader118:                                    ; preds = %bb.i, %bb.h
  %.not131 = icmp samesign ugt i64 %i.af, %i.ah
  br i1 %.not131, label %._crit_edge135, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %.preheader118
  %i.bl = add nuw nsw i64 %i.ah, 1
  %i.bm = sub nuw nsw i64 %i.bl, %i.af            ; 2 uses
  %i.bn = sub nuw nsw i64 %i.ah, %i.af
  %xtraiter = and i64 %i.bm, 3                    ; 3 uses
  %i.bo = icmp samesign ult i64 %i.bn, 3
  br i1 %i.bo, label %.lr.ph134.epil.preheader, label %.lr.ph134.preheader.new

.lr.ph134.preheader.new:                          ; preds = %.lr.ph134.preheader
  %unroll_iter = and i64 %i.bm, 508
  br label %.lr.ph134

._crit_edge135.loopexit.unr-lcssa:                ; preds = %.lr.ph134
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge135, label %.lr.ph134.epil.preheader

.lr.ph134.epil.preheader:                         ; preds = %._crit_edge135.loopexit.unr-lcssa, %.lr.ph134.preheader
  %.060133.epil.init = phi i64 [ %i.af, %.lr.ph134.preheader ], [ %i.ci, %._crit_edge135.loopexit.unr-lcssa ]
  %.061132.epil.init = phi i64 [ 0, %.lr.ph134.preheader ], [ %i.ch, %._crit_edge135.loopexit.unr-lcssa ]
  %lcmp.mod186 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph134.epil

.lr.ph134.epil:                                   ; preds = %.lr.ph134.epil, %.lr.ph134.epil.preheader
  %.060133.epil = phi i64 [ %i.bs, %.lr.ph134.epil ], [ %.060133.epil.init, %.lr.ph134.epil.preheader ] ; 2 uses
  %.061132.epil = phi i64 [ %i.br, %.lr.ph134.epil ], [ %.061132.epil.init, %.lr.ph134.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph134.epil ], [ 0, %.lr.ph134.epil.preheader ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060133.epil ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !204
  store i64 %.061132.epil, ptr %i.bp, align 8, !tbaa !204
  %i.br = add i64 %i.bq, %.061132.epil
  %i.bs = add nuw nsw i64 %.060133.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge135, label %.lr.ph134.epil, !llvm.loop !257

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit.unr-lcssa, %.lr.ph134.epil, %.preheader118
  br i1 %.059152, label %.lr.ph138, label %bb.j

.lr.ph134:                                        ; preds = %.lr.ph134, %.lr.ph134.preheader.new
  %.060133 = phi i64 [ %i.af, %.lr.ph134.preheader.new ], [ %i.ci, %.lr.ph134 ] ; 5 uses
  %.061132 = phi i64 [ 0, %.lr.ph134.preheader.new ], [ %i.ch, %.lr.ph134 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph134.preheader.new ], [ %niter.next.3, %.lr.ph134 ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060133 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !204
  store i64 %.061132, ptr %i.bt, align 8, !tbaa !204
  %i.bv = add i64 %i.bu, %.061132                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060133
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !204
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !204
  %i.bz = add i64 %i.by, %i.bv                    ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060133
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !204
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !204
  %i.cd = add i64 %i.cc, %i.bz                    ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060133
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !204
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !204
  %i.ch = add i64 %i.cg, %i.cd                    ; 2 uses
  %i.ci = add nuw nsw i64 %.060133, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge135.loopexit.unr-lcssa, label %.lr.ph134, !llvm.loop !258

bb.j:                                             ; preds = %._crit_edge135
  %i.cj = ptrtoint ptr %.sroa.8.0142 to i64       ; 2 uses
  %i.ck = ptrtoint ptr %.sroa.095.0141 to i64     ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 4 uses
  %i.cm = ashr exact i64 %i.cl, 2                 ; 7 uses
  %i.cn = icmp ugt i64 %i.e, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.co = sub nuw nsw i64 %i.e, %i.cm             ; 6 uses
  %i.cp = ptrtoint ptr %.sroa.13.0143 to i64      ; 2 uses
  %i.cq = sub i64 %i.cp, %i.cj
  %i.cr = ashr exact i64 %i.cq, 2                 ; 2 uses
  %i.cs = icmp ult i64 %i.cm, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = xor i64 %i.cm, 2305843009213693951      ; 2 uses
  %i.cu = icmp ule i64 %i.cr, %i.ct
  tail call void @llvm.assume(i1 %i.cu)
  %.not23.i = icmp ult i64 %i.cr, %i.co
  br i1 %.not23.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %.sroa.8.0142, align 4, !tbaa !11
  %i.cv = getelementptr i8, ptr %.sroa.8.0142, i64 4 ; 3 uses
  %i.cw = add nsw i64 %i.co, -1                   ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph138, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.l
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.cw, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cv, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph138

bb.m:                                             ; preds = %bb.k
  %i.cz = icmp ult i64 %i.ct, %i.co
  br i1 %i.cz, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.co)
  %i.da = add nuw nsw i64 %.sroa.speculated.i.i, %i.cm
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.da, i64 2305843009213693951) ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 2
  %i.dd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #14 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cl ; 3 uses
  store i32 0, ptr %i.de, align 4, !tbaa !11
  %i.df = add nsw i64 %i.co, -1                   ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.dh = getelementptr i8, ptr %i.de, i64 4
  %.idx.i.i.i.i.i26.i = shl nuw nsw i64 %i.df, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.idx.i.i.i.i.i26.i, i1 false), !tbaa !11
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i25.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.di = icmp sgt i64 %i.cl, 0
  br i1 %i.di, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.o:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dd, ptr align 4 %.sroa.095.0141, i64 %i.cl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.o, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit28.i
  %.not.i29.i = icmp eq ptr %.sroa.095.0141, null
  br i1 %.not.i29.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.dj = sub i64 %i.cp, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0141, i64 noundef %i.dj) #15
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.co
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.db
  br label %.lr.ph138

bb.q:                                             ; preds = %bb.j
  %i.dm = icmp ult i64 %i.e, %i.cm
  br i1 %i.dm, label %bb.r, label %.lr.ph138

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.095.0141, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.8.0142, %i.dn
  %spec.select = select i1 %.not.i.i, ptr %.sroa.8.0142, ptr %i.dn
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %._crit_edge135, %bb.r, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.l, %bb.q
  %.sroa.0106.1 = phi ptr [ %.sroa.0106.0139, %._crit_edge135 ], [ %.sroa.095.0141, %bb.q ], [ %.sroa.095.0141, %bb.r ], [ %.sroa.095.0141, %bb.l ], [ %.sroa.095.0141, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dd, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ] ; 2 uses
  %.sroa.095.1 = phi ptr [ %.sroa.095.0141, %._crit_edge135 ], [ %.sroa.095.0141, %bb.q ], [ %.sroa.095.0141, %bb.r ], [ %.sroa.095.0141, %bb.l ], [ %.sroa.095.0141, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dd, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ]
  %.sroa.8.1 = phi ptr [ %.sroa.8.0142, %._crit_edge135 ], [ %.sroa.8.0142, %bb.q ], [ %spec.select, %bb.r ], [ %i.cv, %bb.l ], [ %i.cy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0143, %._crit_edge135 ], [ %.sroa.13.0143, %bb.q ], [ %.sroa.13.0143, %bb.r ], [ %.sroa.13.0143, %bb.l ], [ %.sroa.13.0143, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dl, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ]
  %i.do = icmp eq ptr %.sroa.0102.0140, %0
  %i.dp = select i1 %i.do, ptr %.sroa.0106.1, ptr %0 ; 2 uses
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph138, %bb.s
  %.sroa.0.0137 = phi ptr [ %.sroa.0102.0140, %.lr.ph138 ], [ %i.ej, %bb.s ] ; 2 uses
  %i.dr = load i32, ptr %.sroa.0.0137, align 4, !tbaa !11 ; 2 uses
  %i.ds = tail call noundef i32 @llvm.abs.i32(i32 %i.dr, i1 true)
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !22
  %i.dw = sext i32 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !28
  %i.ea = sext i32 %i.dz to i64
  %i.eb = or i64 %i.dx, %i.ea
  %i.ec = xor i64 %i.eb, -1
  %i.ed = lshr i64 %i.ec, %.070150
  %i.ee = and i64 %i.ed, 255
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ee ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !204 ; 2 uses
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !204
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.eg
  store i32 %i.dr, ptr %i.ei, align 4, !tbaa !11
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0137, i64 4 ; 2 uses
  %.not116 = icmp eq ptr %i.ej, %i.ab
  br i1 %.not116, label %.loopexit117, label %bb.s, !llvm.loop !259

.loopexit117:                                     ; preds = %bb.s, %._crit_edge.thread, %bb.h, %bb.i, %bb.e
  %.sroa.0106.3 = phi ptr [ %.sroa.0106.0139, %bb.e ], [ %.sroa.0106.0139, %bb.i ], [ %.sroa.0106.0139, %bb.h ], [ %.sroa.0106.0139, %._crit_edge.thread ], [ %.sroa.0106.1, %bb.s ] ; 9 uses
  %.sroa.0102.2 = phi ptr [ %.sroa.0102.0140, %bb.e ], [ %.sroa.0102.0140, %bb.i ], [ %.sroa.0102.0140, %bb.h ], [ %.sroa.0102.0140, %._crit_edge.thread ], [ %i.dp, %bb.s ] ; 2 uses
  %.sroa.095.3 = phi ptr [ %.sroa.095.0141, %bb.e ], [ %.sroa.095.0141, %bb.i ], [ %.sroa.095.0141, %bb.h ], [ %.sroa.095.0141, %._crit_edge.thread ], [ %.sroa.095.1, %bb.s ] ; 4 uses
  %.sroa.8.3 = phi ptr [ %.sroa.8.0142, %bb.e ], [ %.sroa.8.0142, %bb.i ], [ %.sroa.8.0142, %bb.h ], [ %.sroa.8.0142, %._crit_edge.thread ], [ %.sroa.8.1, %bb.s ]
  %.sroa.13.3 = phi ptr [ %.sroa.13.0143, %bb.e ], [ %.sroa.13.0143, %bb.i ], [ %.sroa.13.0143, %bb.h ], [ %.sroa.13.0143, %._crit_edge.thread ], [ %.sroa.13.1, %bb.s ] ; 2 uses
  %.383 = phi i64 [ %.080144, %bb.e ], [ %.282, %bb.i ], [ %.282, %bb.h ], [ %.080144, %._crit_edge.thread ], [ %.282, %bb.s ]
  %.174 = phi i64 [ %.073148, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ], [ %i.aj, %._crit_edge.thread ], [ %i.af, %bb.s ]
  %.172 = phi i64 [ %.071149, %bb.e ], [ %i.ah, %bb.i ], [ %i.ah, %bb.h ], [ %i.al, %._crit_edge.thread ], [ %i.ah, %bb.s ]
  %.365 = phi i64 [ %.062151, %bb.e ], [ %.264, %bb.i ], [ %.264, %bb.h ], [ %.062151, %._crit_edge.thread ], [ %.264, %bb.s ]
  %.3 = phi i1 [ %.059152, %bb.e ], [ %.059152, %bb.i ], [ %.059152, %bb.h ], [ %.059152, %._crit_edge.thread ], [ true, %bb.s ]
  %i.ek = add nuw nsw i64 %.070150, 8
  %i.el = shl i64 %.079145, 8
  %i.em = icmp samesign ult i64 %.070150, 56
  br i1 %i.em, label %bb.d, label %bb.c, !llvm.loop !260

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0153 = phi i64 [ %i.fc, %.preheader ], [ %.0153.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %.sroa.0106.3, i64 %.0153
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !11
  %i.ep = getelementptr inbounds [4 x i8], ptr %0, i64 %.0153
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !11
  %i.eq = add nuw i64 %.0153, 1                   ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %.sroa.0106.3, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !11
  %i.et = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eq
  store i32 %i.es, ptr %i.et, align 4, !tbaa !11
  %i.eu = add nuw i64 %.0153, 2                   ; 2 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %.sroa.0106.3, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !11
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eu
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !11
  %i.ey = add nuw i64 %.0153, 3                   ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %.sroa.0106.3, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !11
  %i.fb = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ey
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !11
  %i.fc = add nuw i64 %.0153, 4                   ; 2 uses
  %exitcond155.not.3 = icmp eq i64 %i.fc, %i.e
  br i1 %exitcond155.not.3, label %.loopexit, label %.preheader, !llvm.loop !261

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %bb.c
  %.not.i.i.i = icmp eq ptr %.sroa.095.3, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.fd = ptrtoint ptr %.sroa.13.3 to i64
  %i.fe = ptrtoint ptr %.sroa.095.3 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.3, i64 noundef %i.ff) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

declare void @_ZN7CaDiCaL8Internal24calculate_minimize_chainEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal24clear_minimized_literalsEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #4

declare noundef ptr @_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal16minimize_literalEii(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4Reap4pushEj(ptr noundef nonnull align 8 dereferenceable(816), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4Reap3popEv(ptr noundef nonnull align 8 dereferenceable(816)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(616)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph.preheader, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_SC_T0_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph34

.lr.ph:                                           ; preds = %.lr.ph34
  %i.g = icmp eq i64 %i.t, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph34, !llvm.loop !262

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.h = add nsw i64 %.lcssa, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.09.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, i32 noundef %i.k, ptr %3)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.l = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.b, !llvm.loop !263

.lr.ph.i9.i:                                      ; preds = %bb.b, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i9.i ], [ %storemerge20.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11
  %i.o = load i32, ptr %0, align 4, !tbaa !11
  store i32 %i.o, ptr %i.m, align 4, !tbaa !11
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.n, ptr %3)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_SC_T0_.exit, !llvm.loop !264

.lr.ph34:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge2033 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02132 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.t = add nsw i64 %.02132, -1                  ; 3 uses
  %i.u = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEET_SC_SC_T0_(ptr %0, ptr %storemerge2033, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_T1_(ptr %i.u, ptr %storemerge2033, i64 noundef %i.t, ptr %3)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 16
  br i1 %i.y, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_SC_T0_.exit, !llvm.loop !262

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph34, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b
end_hunk_1
