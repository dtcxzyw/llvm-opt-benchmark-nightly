Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/shrink?download=true
inline.NumInlined: 448
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal25minimize_and_shrink_blockERSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEERjSB_i:bb.a
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
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = or i32 %i.an, 2
  store i32 %i.ao, ptr %i.am, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1288 ; 2 uses
  %i.aq = load i64, ptr %2, align 8, !tbaa !8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1296 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1304 ; 2 uses
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
  %i.bb = ptrtoint ptr %i.az to i64
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
  tail call void @_ZdlPv(ptr noundef nonnull %i.az) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bk, ptr %i.ap, align 8, !tbaa !18
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bp, ptr %i.av, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bq = call noundef i32 @_ZN7CaDiCaL8Internal12shrink_blockERSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEESA_iRjSB_ij(ptr noundef nonnull align 8 dereferenceable(7288) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %5, i32 noundef %spec.select)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.c, %bb.h
  %i.br = phi i32 [ %.pre, %bb.h ], [ 0, %bb.c ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %.0 = phi i32 [ %i.bq, %bb.h ], [ 0, %bb.c ], [ 0, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bs = load i32, ptr %3, align 4, !tbaa !11
  %i.bt = add i32 %i.bs, %.0
  store i32 %i.bt, ptr %3, align 4, !tbaa !11
  %i.bu = load i32, ptr %4, align 4, !tbaa !11
  %i.bv = add i32 %i.bu, %i.br
  store i32 %i.bv, ptr %4, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal26shrink_and_minimize_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"class.std::reverse_iterator", align 8 ; 7 uses
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %3 = alloca %"class.std::vector.20", align 8    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6400
  %i.f = load i32, ptr %i.e, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 3608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !188
  %.not = icmp sgt i32 %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 6368
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 3620
  %i.k = load i32, ptr %i.j, align 4, !tbaa !189
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.d)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.d)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.n = phi double [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.d, ptr noundef nonnull align 8 dereferenceable(36) %i.i, double noundef %i.n)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7256
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 488
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !194
  %.not.i43 = icmp eq ptr %i.r, null
  br i1 %.not.i43, label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(568) %i.p)
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit

_ZN7CaDiCaL8External20check_learned_clauseEv.exit: ; preds = %bb.e, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8    ; 5 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !8    ; 5 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !213
  %i.ac = sext i32 %i.ab to i64
  %.not31 = icmp ugt i64 %i.z, %i.ac
  br i1 %.not31, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  %.not.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ae = shl nuw nsw i64 %i.ad, 1
  %i.af = xor i64 %i.ae, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_T1_(ptr %i.v, ptr %i.u, i64 noundef %i.af, ptr nonnull %0)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_(ptr %i.v, ptr %i.u, ptr nonnull %0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit

bb.i:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  tail call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS_26shrink_trail_negative_rankEEEvT_S9_T0_(ptr %i.v, ptr %i.u, ptr nonnull %0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit: ; preds = %bb.h, %bb.g, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !8, !noalias !214 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !8, !noalias !217 ; 4 uses
  %4 = ptrtoint ptr %i.ai to i64
  store i64 %4, ptr %1, align 8, !tbaa !8, !alias.scope !217
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !11 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !220, !range !221, !noundef !222
  %i.am = trunc nuw i8 %i.al to i1
  %.not118153 = icmp ne ptr %i.ag, %i.ai
  %or.cond.not = select i1 %i.am, i1 %.not118153, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit127

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.098.0157 = phi ptr [ %i.bd, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ag, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.sroa.13.0156 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.sroa.10.0155 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.sroa.0101.0154 = phi ptr [ %.sroa.0101.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 7 uses
  %.not.i44 = icmp eq ptr %.sroa.10.0155, %.sroa.13.0156
  br i1 %.not.i44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.an = load i32, ptr %.sroa.098.0157, align 4, !tbaa !11
  store i32 %i.an, ptr %.sroa.10.0155, align 4, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ao = ptrtoint ptr %.sroa.13.0156 to i64
  %i.ap = ptrtoint ptr %.sroa.0101.0154 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
          to label %.noexc unwind label %.loopexit.split-lp129

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 2305843009213693951)
  %i.aw = select i1 %i.au, i64 2305843009213693951, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #14
          to label %.noexc45 unwind label %.loopexit128 ; 4 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  %i.ba = load i32, ptr %.sroa.098.0157, align 4, !tbaa !11
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !11
  %i.bb = icmp sgt i64 %i.aq, 0
  br i1 %i.bb, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %.sroa.0101.0154, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc45
  %.not.i17.i.i = icmp eq ptr %.sroa.0101.0154, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0101.0154) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.j
  %.sroa.0101.3 = phi ptr [ %i.ay, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0101.0154, %bb.j ] ; 2 uses
  %.pn = phi ptr [ %i.az, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10.0155, %bb.j ]
  %.sroa.13.1 = phi ptr [ %i.bc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13.0156, %bb.j ]
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.098.0157, i64 4 ; 2 uses
  %.not118 = icmp eq ptr %i.bd, %i.ai
  br i1 %.not118, label %.loopexit127.loopexit, label %.lr.ph

.loopexit128:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp129:                            ; preds = %bb.l
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit127.loopexit:                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.0.0.copyload.i.i.i158.pre = load ptr, ptr %1, align 8, !tbaa !8
  br label %.loopexit127

.loopexit127:                                     ; preds = %.loopexit127.loopexit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit
  %.sroa.0.0.copyload.i.i.i158 = phi ptr [ %i.ai, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ], [ %.sroa.0.0.copyload.i.i.i158.pre, %.loopexit127.loopexit ]
  %.sroa.0101.1 = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ], [ %.sroa.0101.3, %.loopexit127.loopexit ] ; 5 uses
  %.not119159 = icmp eq ptr %.sroa.0.0.copyload.i.i.i158, %i.ah
  br i1 %.not119159, label %._crit_edge, label %.lr.ph160

.lr.ph160:                                        ; preds = %.loopexit127, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZN7CaDiCaL8Internal25minimize_and_shrink_blockERSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEERjSB_i(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.aj)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.lr.ph160
  %i.be = load i64, ptr %2, align 8               ; 2 uses
  store i64 %i.be, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.sroa.0.0.copyload.i.i.i.cast = inttoptr i64 %i.be to ptr
  %.not119 = icmp eq ptr %i.ah, %.sroa.0.0.copyload.i.i.i.cast
  br i1 %.not119, label %._crit_edge, label %.lr.ph160, !llvm.loop !223

bb.p:                                             ; preds = %.lr.ph160
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.bb

._crit_edge:                                      ; preds = %bb.o, %.loopexit127
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.bg = load ptr, ptr %i.t, align 8, !tbaa !15  ; 5 uses
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !18  ; 13 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = ashr exact i64 %i.bk, 2                 ; 5 uses
  %i.bm = icmp ugt i64 %i.bl, 1
  br i1 %i.bm, label %.lr.ph169, label %._crit_edge170

.lr.ph169:                                        ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bs = load i8, ptr %i.ak, align 8, !tbaa !220, !range !221, !noundef !222
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.lr.ph169.split, label %.lr.ph169.split.us

.lr.ph169.split.us:                               ; preds = %.lr.ph169
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !11
  %.not240 = icmp eq i32 %i.bv, %i.aj
  %spec.select.us.peel = select i1 %.not240, i64 1, i64 2 ; 3 uses
  %exitcond.peel.not = icmp eq i64 %i.bk, 8
  br i1 %exitcond.peel.not, label %._crit_edge170, label %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader

_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader:   ; preds = %.lr.ph169.split.us
  %i.bw = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 2) ; 3 uses
  %xtraiter = and i64 %i.bw, 1
  %i.bx = icmp eq i64 %i.bk, 12
  br i1 %i.bx, label %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader, label %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new

_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader
  %unroll_iter = and i64 %i.bw, -2
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.us

_ZNSt6vectorImSaImEE5clearEv.exit.us:             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.us, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new
  %.0167.us = phi i64 [ 2, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new ], [ %i.cj, %_ZNSt6vectorImSaImEE5clearEv.exit.us ] ; 3 uses
  %.023166.us = phi i64 [ %spec.select.us.peel, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new ], [ %spec.select.us.1, %_ZNSt6vectorImSaImEE5clearEv.exit.us ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new ], [ %niter.next.1, %_ZNSt6vectorImSaImEE5clearEv.exit.us ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0167.us
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !11 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.023166.us
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !11
  %i.cb = icmp ne i32 %i.bz, %i.aj
  %i.cc = zext i1 %i.cb to i64
  %spec.select.us = add i64 %.023166.us, %i.cc    ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0167.us
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %spec.select.us
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !11
  %i.ch = icmp ne i32 %i.cf, %i.aj
  %i.ci = zext i1 %i.ch to i64
  %spec.select.us.1 = add i64 %spec.select.us, %i.ci ; 3 uses
  %i.cj = add nuw i64 %.0167.us, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge170.loopexit259.unr-lcssa, label %_ZNSt6vectorImSaImEE5clearEv.exit.us, !llvm.loop !224

._crit_edge170.loopexit259.unr-lcssa:             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge170, label %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader

_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader: ; preds = %._crit_edge170.loopexit259.unr-lcssa, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader
  %.0167.us.epil.init = phi i64 [ 2, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader ], [ %i.cj, %._crit_edge170.loopexit259.unr-lcssa ]
  %.023166.us.epil.init = phi i64 [ %spec.select.us.peel, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader ], [ %spec.select.us.1, %._crit_edge170.loopexit259.unr-lcssa ] ; 2 uses
  %lcmp.mod263 = trunc i64 %i.bw to i1
  call void @llvm.assume(i1 %lcmp.mod263)
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.0167.us.epil.init
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !11 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.023166.us.epil.init
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !11
  %i.cn = icmp ne i32 %i.cl, %i.aj
  %i.co = zext i1 %i.cn to i64
  %spec.select.us.epil = add i64 %.023166.us.epil.init, %i.co
  br label %._crit_edge170
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS_26shrink_trail_negative_rankEEEvT_S9_T0_:bb.a
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !230
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !230
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0102.0139, i64 4 ; 2 uses
  %.not126 = icmp eq ptr %i.bh, %i.ab
  br i1 %.not126, label %._crit_edge, label %bb.g, !llvm.loop !245

bb.h:                                             ; preds = %._crit_edge
  %i.bi = xor i64 %.283, %.287
  %i.bj = and i64 %i.bi, %.080161
  %i.bk = icmp eq i64 %i.bj, 0
  %or.cond125 = select i1 %i.bk, i1 true, i1 %i.ad
  br i1 %or.cond125, label %.loopexit128, label %.preheader129

bb.i:                                             ; preds = %._crit_edge
  br i1 %i.ad, label %.loopexit128, label %.preheader129

.preheader129:                                    ; preds = %bb.i, %bb.h
  %.not146 = icmp samesign ugt i64 %i.af, %i.ah
  br i1 %.not146, label %._crit_edge150, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %.preheader129
  %i.bl = add nuw nsw i64 %i.ah, 1
  %i.bm = sub nuw nsw i64 %i.bl, %i.af            ; 2 uses
  %i.bn = sub nuw nsw i64 %i.ah, %i.af
  %xtraiter = and i64 %i.bm, 3                    ; 3 uses
  %i.bo = icmp samesign ult i64 %i.bn, 3
  br i1 %i.bo, label %.lr.ph149.epil.preheader, label %.lr.ph149.preheader.new

.lr.ph149.preheader.new:                          ; preds = %.lr.ph149.preheader
  %unroll_iter = and i64 %i.bm, 508
  br label %.lr.ph149

._crit_edge150.loopexit.unr-lcssa:                ; preds = %.lr.ph149
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge150, label %.lr.ph149.epil.preheader

.lr.ph149.epil.preheader:                         ; preds = %._crit_edge150.loopexit.unr-lcssa, %.lr.ph149.preheader
  %.060148.epil.init = phi i64 [ %i.af, %.lr.ph149.preheader ], [ %i.ci, %._crit_edge150.loopexit.unr-lcssa ]
  %.061147.epil.init = phi i64 [ 0, %.lr.ph149.preheader ], [ %i.ch, %._crit_edge150.loopexit.unr-lcssa ]
  %lcmp.mod213 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph149.epil

.lr.ph149.epil:                                   ; preds = %.lr.ph149.epil, %.lr.ph149.epil.preheader
  %.060148.epil = phi i64 [ %i.bs, %.lr.ph149.epil ], [ %.060148.epil.init, %.lr.ph149.epil.preheader ] ; 2 uses
  %.061147.epil = phi i64 [ %i.br, %.lr.ph149.epil ], [ %.061147.epil.init, %.lr.ph149.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph149.epil ], [ 0, %.lr.ph149.epil.preheader ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060148.epil ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !230
  store i64 %.061147.epil, ptr %i.bp, align 8, !tbaa !230
  %i.br = add i64 %i.bq, %.061147.epil
  %i.bs = add nuw nsw i64 %.060148.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge150, label %.lr.ph149.epil, !llvm.loop !246

._crit_edge150:                                   ; preds = %._crit_edge150.loopexit.unr-lcssa, %.lr.ph149.epil, %.preheader129
  br i1 %.062167, label %.lr.ph153, label %bb.j

.lr.ph149:                                        ; preds = %.lr.ph149, %.lr.ph149.preheader.new
  %.060148 = phi i64 [ %i.af, %.lr.ph149.preheader.new ], [ %i.ci, %.lr.ph149 ] ; 5 uses
  %.061147 = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %i.ch, %.lr.ph149 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %niter.next.3, %.lr.ph149 ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060148 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !230
  store i64 %.061147, ptr %i.bt, align 8, !tbaa !230
  %i.bv = add i64 %i.bu, %.061147                 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060148
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !230
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !230
  %i.bz = add i64 %i.by, %i.bv                    ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060148
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !230
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !230
  %i.cd = add i64 %i.cc, %i.bz                    ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060148
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !230
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !230
  %i.ch = add i64 %i.cg, %i.cd                    ; 2 uses
  %i.ci = add nuw nsw i64 %.060148, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge150.loopexit.unr-lcssa, label %.lr.ph149, !llvm.loop !247

bb.j:                                             ; preds = %._crit_edge150
  %i.cj = ptrtoint ptr %.sroa.10.0157 to i64      ; 2 uses
  %i.ck = ptrtoint ptr %.sroa.0107.0156 to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 4 uses
  %i.cm = ashr exact i64 %i.cl, 2                 ; 7 uses
  %i.cn = icmp ugt i64 %i.e, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.co = sub nuw nsw i64 %i.e, %i.cm             ; 6 uses
  %i.cp = ptrtoint ptr %.sroa.15.0158 to i64
  %i.cq = sub i64 %i.cp, %i.cj
  %i.cr = ashr exact i64 %i.cq, 2                 ; 2 uses
  %i.cs = icmp ult i64 %i.cm, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = xor i64 %i.cm, 2305843009213693951      ; 2 uses
  %i.cu = icmp ule i64 %i.cr, %i.ct
  tail call void @llvm.assume(i1 %i.cu)
  %.not28.i = icmp ult i64 %i.cr, %i.co
  br i1 %.not28.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %.sroa.10.0157, align 4, !tbaa !11
  %i.cv = getelementptr i8, ptr %.sroa.10.0157, i64 4 ; 3 uses
  %i.cw = add nsw i64 %i.co, -1                   ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph153, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.l
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.cw, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cv, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph153

bb.m:                                             ; preds = %bb.k
  %i.cz = icmp ult i64 %i.ct, %i.co
  br i1 %i.cz, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
          to label %.noexc96 unwind label %.loopexit.split-lp

.noexc96:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.m
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.co)
  %i.da = add nuw nsw i64 %.sroa.speculated.i.i, %i.cm
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.da, i64 2305843009213693951) ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 2
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #14
          to label %.noexc97 unwind label %.loopexit130 ; 5 uses

.noexc97:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cl ; 3 uses
  store i32 0, ptr %i.de, align 4, !tbaa !11
  %i.df = add nsw i64 %i.co, -1                   ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc97
  %i.dh = getelementptr i8, ptr %i.de, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.df, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dh, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !11
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc97
  %i.di = icmp sgt i64 %i.cl, 0
  br i1 %i.di, label %bb.o, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.o:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dd, ptr align 4 %.sroa.0107.0156, i64 %i.cl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.o, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0107.0156, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0107.0156) #15
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.co
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.db
  br label %.lr.ph153

bb.q:                                             ; preds = %bb.j
  %i.dl = icmp ult i64 %i.e, %i.cm
  br i1 %i.dl, label %bb.r, label %.lr.ph153

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0107.0156, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.10.0157, %i.dm
  %spec.select = select i1 %.not.i.i, ptr %.sroa.10.0157, ptr %i.dm
  br label %.lr.ph153

.loopexit130:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp, %.loopexit130
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit130 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %.sroa.0107.0156, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.u

.lr.ph153:                                        ; preds = %._crit_edge150, %bb.r, %bb.q, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.l
  %.sroa.0117.1 = phi ptr [ %.sroa.0117.0154, %._crit_edge150 ], [ %.sroa.0107.0156, %bb.q ], [ %.sroa.0107.0156, %bb.r ], [ %.sroa.0107.0156, %bb.l ], [ %.sroa.0107.0156, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dd, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 2 uses
  %.sroa.0107.1 = phi ptr [ %.sroa.0107.0156, %._crit_edge150 ], [ %.sroa.0107.0156, %bb.q ], [ %.sroa.0107.0156, %bb.r ], [ %.sroa.0107.0156, %bb.l ], [ %.sroa.0107.0156, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dd, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0157, %._crit_edge150 ], [ %.sroa.10.0157, %bb.q ], [ %spec.select, %bb.r ], [ %i.cv, %bb.l ], [ %i.cy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dj, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.0158, %._crit_edge150 ], [ %.sroa.15.0158, %bb.q ], [ %.sroa.15.0158, %bb.r ], [ %.sroa.15.0158, %bb.l ], [ %.sroa.15.0158, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.dk, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %i.dn = icmp eq ptr %.sroa.0113.0155, %0
  %i.do = select i1 %i.dn, ptr %.sroa.0117.1, ptr %0 ; 2 uses
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph153, %bb.t
  %.sroa.0.0152 = phi ptr [ %.sroa.0113.0155, %.lr.ph153 ], [ %i.ei, %bb.t ] ; 2 uses
  %i.dq = load i32, ptr %.sroa.0.0152, align 4, !tbaa !11 ; 2 uses
  %i.dr = tail call noundef i32 @llvm.abs.i32(i32 %i.dq, i1 true)
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !22
  %i.dv = sext i32 %i.du to i64
  %i.dw = shl nsw i64 %i.dv, 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !28
  %i.dz = sext i32 %i.dy to i64
  %i.ea = or i64 %i.dw, %i.dz
  %i.eb = xor i64 %i.ea, -1
  %i.ec = lshr i64 %i.eb, %.071166
  %i.ed = and i64 %i.ec, 255
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ed ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !230 ; 2 uses
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !230
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ef
  store i32 %i.dq, ptr %i.eh, align 4, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.0152, i64 4 ; 2 uses
  %.not127 = icmp eq ptr %i.ei, %i.ab
  br i1 %.not127, label %.loopexit128, label %bb.t, !llvm.loop !248

.loopexit128:                                     ; preds = %bb.t, %._crit_edge.thread, %bb.h, %bb.i, %bb.e
  %.sroa.0117.3 = phi ptr [ %.sroa.0117.0154, %bb.e ], [ %.sroa.0117.0154, %bb.i ], [ %.sroa.0117.0154, %bb.h ], [ %.sroa.0117.0154, %._crit_edge.thread ], [ %.sroa.0117.1, %bb.t ] ; 9 uses
  %.sroa.0113.2 = phi ptr [ %.sroa.0113.0155, %bb.e ], [ %.sroa.0113.0155, %bb.i ], [ %.sroa.0113.0155, %bb.h ], [ %.sroa.0113.0155, %._crit_edge.thread ], [ %i.do, %bb.t ] ; 2 uses
  %.sroa.0107.3 = phi ptr [ %.sroa.0107.0156, %bb.e ], [ %.sroa.0107.0156, %bb.i ], [ %.sroa.0107.0156, %bb.h ], [ %.sroa.0107.0156, %._crit_edge.thread ], [ %.sroa.0107.1, %bb.t ] ; 3 uses
  %.sroa.10.3 = phi ptr [ %.sroa.10.0157, %bb.e ], [ %.sroa.10.0157, %bb.i ], [ %.sroa.10.0157, %bb.h ], [ %.sroa.10.0157, %._crit_edge.thread ], [ %.sroa.10.1, %bb.t ]
  %.sroa.15.3 = phi ptr [ %.sroa.15.0158, %bb.e ], [ %.sroa.15.0158, %bb.i ], [ %.sroa.15.0158, %bb.h ], [ %.sroa.15.0158, %._crit_edge.thread ], [ %.sroa.15.1, %bb.t ]
  %.388 = phi i64 [ %.085159, %bb.e ], [ %.287, %bb.i ], [ %.287, %bb.h ], [ %.085159, %._crit_edge.thread ], [ %.287, %bb.t ]
  %.384 = phi i64 [ %.081160, %bb.e ], [ %.283, %bb.i ], [ %.283, %bb.h ], [ %.081160, %._crit_edge.thread ], [ %.283, %bb.t ]
  %.175 = phi i64 [ %.074164, %bb.e ], [ %i.af, %bb.i ], [ %i.af, %bb.h ], [ %i.aj, %._crit_edge.thread ], [ %i.af, %bb.t ]
  %.173 = phi i64 [ %.072165, %bb.e ], [ %i.ah, %bb.i ], [ %i.ah, %bb.h ], [ %i.al, %._crit_edge.thread ], [ %i.ah, %bb.t ]
  %.3 = phi i1 [ %.062167, %bb.e ], [ %.062167, %bb.i ], [ %.062167, %bb.h ], [ %.062167, %._crit_edge.thread ], [ true, %bb.t ]
  %i.ej = add nuw nsw i64 %.071166, 8
  %i.ek = shl i64 %.080161, 8
  %i.el = icmp samesign ult i64 %.071166, 56
  br i1 %i.el, label %bb.d, label %bb.c, !llvm.loop !249

bb.u:                                             ; preds = %bb.s
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0107.0156) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  resume { ptr, i32 } %lpad.phi

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.0168 = phi i64 [ %i.fb, %.preheader ], [ %.0168.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %.sroa.0117.3, i64 %.0168
  %i.en = load i32, ptr %i.em, align 4, !tbaa !11
  %i.eo = getelementptr inbounds [4 x i8], ptr %0, i64 %.0168
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !11
  %i.ep = add nuw i64 %.0168, 1                   ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %.sroa.0117.3, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !11
  %i.es = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ep
  store i32 %i.er, ptr %i.es, align 4, !tbaa !11
  %i.et = add nuw i64 %.0168, 2                   ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.0117.3, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !11
  %i.ew = getelementptr inbounds [4 x i8], ptr %0, i64 %i.et
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !11
  %i.ex = add nuw i64 %.0168, 3                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %.sroa.0117.3, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !11
  %i.fa = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ex
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !11
  %i.fb = add nuw i64 %.0168, 4                   ; 2 uses
  %exitcond173.not.3 = icmp eq i64 %i.fb, %i.e
  br i1 %exitcond173.not.3, label %.loopexit, label %.preheader, !llvm.loop !250

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %bb.c
  %.not.i.i.i94 = icmp eq ptr %.sroa.0107.3, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorIiSaIiEED2Ev.exit95, label %bb.v

bb.v:                                             ; preds = %.loopexit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0107.3) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit95

_ZNSt6vectorIiSaIiEED2Ev.exit95:                  ; preds = %.loopexit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit95
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7CaDiCaL8Internal24calculate_minimize_chainEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal24clear_minimized_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #4

declare noundef ptr @_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal16minimize_literalEii(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4Reap4pushEj(ptr noundef nonnull align 8 dereferenceable(816), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN4Reap3popEv(ptr noundef nonnull align 8 dereferenceable(816)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #4

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
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
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph34, !llvm.loop !251

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
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.b, !llvm.loop !252

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
  br i1 %i.s, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_SC_T0_.exit, !llvm.loop !253

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
  br i1 %i.y, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_SC_T0_.exit, !llvm.loop !251

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph34, %.lr.ph.i9.i, %bb.a
  ret void
}

end_hunk_1
