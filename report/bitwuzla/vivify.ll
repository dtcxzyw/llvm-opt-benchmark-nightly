Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/vivify?download=true
inline.NumInlined: 1487
inline.NumDeleted: 539
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL8Internal24vivify_analyze_redundantERNS_8VivifierEPNS_6ClauseERb:bb.a
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !189 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !171 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 2
  br i1 %i.an, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  store i8 0, ptr %3, align 1, !tbaa !213
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !205
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.ap = zext nneg i32 %i.am to i64
  %.idx63 = shl nuw nsw i64 %i.ap, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx63
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !205
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.as = sext i32 %i.am to i64
  %.idx = shl nsw i64 %i.as, 2
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %.idx
  %.not43 = icmp eq i32 %i.am, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.h
  %i.au = phi ptr [ %i.aq, %.thread ], [ %i.at, %bb.h ]
  %i.av = phi ptr [ %i.ao, %.thread ], [ %i.ar, %bb.h ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit41
  %.02744 = phi ptr [ %i.cy, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit41 ], [ %i.av, %.lr.ph.preheader ] ; 4 uses
  %i.aw = load i32, ptr %.02744, align 4, !tbaa !171
  %i.ax = tail call noundef i32 @llvm.abs.i32(i32 %i.aw, i1 true)
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !174
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !176
  %.not28 = icmp eq i32 %i.bb, 0
  br i1 %.not28, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit41, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !214
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ay ; 2 uses
  %i.be = load i32, ptr %i.bd, align 1            ; 2 uses
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit41, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = or disjoint i32 %i.be, 1
  store i32 %i.bg, ptr %i.bd, align 1
  %i.bh = load ptr, ptr %i.ad, align 8, !tbaa !169 ; 4 uses
  %i.bi = load ptr, ptr %i.ae, align 8, !tbaa !181
  %.not.i30 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = load i32, ptr %.02744, align 4, !tbaa !171
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !171
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bk, ptr %i.ad, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.l:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !170 ; 4 uses
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775804
  br i1 %i.bp, label %bb.m, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bq = ashr exact i64 %i.bo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i31 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i31, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.br, i64 2305843009213693951)
  %i.bu = select i1 %i.bs, i64 2305843009213693951, i64 %i.bt ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.bu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i32)
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #20 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  %i.by = load i32, ptr %.02744, align 4, !tbaa !171
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !171
  %i.bz = icmp sgt i64 %i.bo, 0
  br i1 %i.bz, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.not.i17.i.i33 = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i33, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bl) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bw, ptr %i.ac, align 8, !tbaa !170
  store ptr %i.ca, ptr %i.ad, align 8, !tbaa !169
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cb, ptr %i.ae, align 8, !tbaa !181
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !178 ; 2 uses
  %.not29 = icmp eq ptr %i.cd, null
  br i1 %.not29, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit41, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !205 ; 4 uses
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !207
  %.not.i34 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !189
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cg, ptr %i.c, align 8, !tbaa !205
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit41

bb.r:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !206 ; 4 uses
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 5 uses
  %i.cl = icmp eq i64 %i.ck, 9223372036854775800
  br i1 %i.cl, label %bb.s, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i35

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i35: ; preds = %bb.r
  %i.cm = ashr exact i64 %i.ck, 3                 ; 3 uses
  %.sroa.speculated.i.i.i36 = tail call i64 @llvm.umax.i64(i64 %i.cm, i64 1)
  %i.cn = add nsw i64 %.sroa.speculated.i.i.i36, %i.cm ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.cm
  %i.cp = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 1152921504606846975)
  %i.cq = select i1 %i.co, i64 1152921504606846975, i64 %i.cp ; 3 uses
  %.not.i.i.i37 = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i37)
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #20 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.ck ; 2 uses
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !189
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !189
  %i.cv = icmp sgt i64 %i.ck, 0
  br i1 %i.cv, label %bb.t, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i38

bb.t:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cs, ptr align 8 %i.ch, i64 %i.ck, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i38

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i38: ; preds = %bb.t, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i35
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.not.i17.i.i39 = icmp eq ptr %i.ch, null
  br i1 %.not.i17.i.i39, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i40, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i38
  tail call void @_ZdlPv(ptr noundef nonnull %i.ch) #21
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i40

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i40: ; preds = %bb.u, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i38
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !206
  store ptr %i.cw, ptr %i.c, align 8, !tbaa !205
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cq
  store ptr %i.cx, ptr %i.f, align 8, !tbaa !207
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit41

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit41: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i40, %bb.q, %bb.i, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %.02744, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cy, %i.au
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal20vivify_all_decisionsEPNS_6ClauseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %.not26 = icmp eq i32 %i.c, 0
  br i1 %.not26, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.i = load ptr, ptr %i.h, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.j = load ptr, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %.01827 = phi ptr [ %i.a, %.lr.ph ], [ %i.z, %select.unfold ] ; 2 uses
  %i.k = load i32, ptr %.01827, align 4, !tbaa !171 ; 3 uses
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !180
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !176
  %.not23 = icmp eq i32 %i.t, 0
  br i1 %.not23, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !178
  %.not24 = icmp eq ptr %i.v, null
  br i1 %.not24, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.r
  %i.x = load i32, ptr %i.w, align 1
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.f, %bb.b, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.01827, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.e
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %select.unfold, %bb.c, %bb.e, %bb.f, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ true, %select.unfold ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal28vivify_post_process_analysisEPNS_6ClauseEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = sext i32 %i.c to i64
  %.idx.i = shl nsw i64 %i.d, 2
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i ; 2 uses
  %.not26.i = icmp eq i32 %i.c, 0
  br i1 %.not26.i, label %_ZN7CaDiCaL8Internal20vivify_all_decisionsEPNS_6ClauseEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.j = load ptr, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.01827.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.z, %select.unfold.i ] ; 2 uses
  %i.k = load i32, ptr %.01827.i, align 4, !tbaa !171 ; 3 uses
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !180
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !176
  %.not23.i = icmp eq i32 %i.t, 0
  br i1 %.not23.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !178
  %.not24.i = icmp eq ptr %i.v, null
  br i1 %.not24.i, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.r
  %i.x = load i32, ptr %i.w, align 1
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %select.unfold.i, label %.lr.ph

select.unfold.i:                                  ; preds = %bb.f, %bb.d, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.01827.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.e
  br i1 %.not.i, label %_ZN7CaDiCaL8Internal20vivify_all_decisionsEPNS_6ClauseEi.exit, label %bb.b

_ZN7CaDiCaL8Internal20vivify_all_decisionsEPNS_6ClauseEi.exit: ; preds = %select.unfold.i, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !170 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !169
  %.not.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZN7CaDiCaL8Internal20vivify_all_decisionsEPNS_6ClauseEi.exit
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !169
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

.lr.ph:                                           ; preds = %bb.c, %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %.01828 = phi ptr [ %i.a, %.lr.ph ], [ %i.bt, %.critedge ] ; 3 uses
  %i.ah = load i32, ptr %.01828, align 4, !tbaa !171 ; 4 uses
  %i.ai = icmp eq i32 %i.ah, %2
  br i1 %i.ai, label %.critedge23, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !179
  %i.ak = sext i32 %i.ah to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !180
  %i.an = icmp sgt i8 %i.am, -1
  br i1 %i.an, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call noundef i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !174
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !176
  %.not20 = icmp ne i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %.not21 = icmp eq ptr %i.au, null
  %or.cond = select i1 %.not20, i1 %.not21, i1 false
  br i1 %or.cond, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %3, align 8, !tbaa !214
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ap
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.critedge23, label %.critedge

.critedge23:                                      ; preds = %bb.g, %bb.j
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !169 ; 4 uses
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !181
  %.not.i25 = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge23
  store i32 %i.ah, ptr %i.az, align 4, !tbaa !171
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.bb, ptr %i.af, align 8, !tbaa !169
  br label %.critedge

bb.l:                                             ; preds = %.critedge23
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !170 ; 4 uses
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775804
  br i1 %i.bg, label %bb.m, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bh = ashr exact i64 %i.bf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 2305843009213693951)
  %i.bl = select i1 %i.bj, i64 2305843009213693951, i64 %i.bk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #20 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 2 uses
  %i.bp = load i32, ptr %.01828, align 4, !tbaa !171
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !171
  %i.bq = icmp sgt i64 %i.bf, 0
  br i1 %i.bq, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr align 4 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bc) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bn, ptr %i.ae, align 8, !tbaa !170
  store ptr %i.br, ptr %i.af, align 8, !tbaa !169
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.bs, ptr %i.ag, align 8, !tbaa !181
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.k, %bb.h, %bb.i, %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.01828, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.e
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.g

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %.critedge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %_ZN7CaDiCaL8Internal20vivify_all_decisionsEPNS_6ClauseEi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal17vivify_strengthenEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5072 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !215
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !169  ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !170  ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 2
  %i.l = icmp eq i64 %i.j, 4
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !170
  %i.n = load i32, ptr %i.m, align 4, !tbaa !171
  tail call void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5112 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !216
  %i.q = add nsw i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !216
  %i.r = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.r, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19vivify_better_watchEEvT_S9_T0_.exit, label %bb.e
end_hunk_0
