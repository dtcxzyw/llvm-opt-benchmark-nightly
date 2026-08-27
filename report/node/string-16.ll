Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/string-16?download=true
inline.NumInlined: 553
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt6vectorIDsSaIDsEE15_M_range_insertIPKDsEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EET_S9_St20forward_iterator_tag:bb.a
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -2
  %i.ae = load i16, ptr %1, align 2
  store i16 %i.ae, ptr %i.ad, align 2
  br label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit:      ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !83

bb.k:                                             ; preds = %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 2
  br i1 %i.af, label %bb.m, label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i16, ptr %2, align 2
  store i16 %i.ag, ptr %1, align 2
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKDslEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 2
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 2
  br i1 %i.al, label %bb.n, label %bb.o, !prof !83

bb.n:                                             ; preds = %_ZSt9__advanceIPKDslEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.h, ptr align 2 %i.ai, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKDslEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 2
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i16, ptr %i.ai, align 2
  store i16 %i.an, ptr %i.h, align 2
  br label %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = sub nuw nsw i64 %i.d, %i.n
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ao ; 3 uses
  store ptr %i.aq, ptr %i.g, align 8
  %i.ar = icmp sgt i64 %i.m, 2
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !83

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.aq, ptr align 2 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.as = load i16, ptr %1, align 2
  store i16 %i.as, ptr %i.aq, align 2
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = load ptr, ptr %i.g, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8
  %i.av = icmp sgt i64 %i.m, 2
  br i1 %i.av, label %bb.t, label %bb.u, !prof !83

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47
  %i.aw = icmp eq i64 %i.m, 2
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load i16, ptr %2, align 2
  store i16 %i.ax, ptr %1, align 2
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8               ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 1                 ; 4 uses
  %i.bc = sub nsw i64 4611686018427387903, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #14
  unreachable

_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit:  ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 4611686018427387903)
  %i.bh = select i1 %i.bf, i64 4611686018427387903, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #15
  br label %_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 2
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !83

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bk, ptr align 2 %i.ay, i64 %i.bm, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 2
  br i1 %i.bo, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load i16, ptr %i.ay, align 2
  store i16 %i.bp, ptr %i.bk, align 2
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 2
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !83

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bq, ptr align 2 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit
  %i.bs = icmp eq i64 %i.c, 2
  br i1 %i.bs, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bt = load i16, ptr %2, align 2
  store i16 %i.bt, ptr %i.bq, align 2
  br label %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 2
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !83

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bu, ptr align 2 %1, i64 %i.bv, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKDsPDsDsET0_T_S4_S3_RSaIT1_E.exit49
  %i.bx = icmp eq i64 %i.bv, 2
  br i1 %i.bx, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.by = load i16, ptr %1, align 2
  store i16 %i.by, ptr %i.bu, align 2
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i51 = icmp eq ptr %i.ay, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50
  %i.ca = load ptr, ptr %i.e, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cc) #18
  br label %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit

_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bk, ptr %0, align 8
  store ptr %i.bz, ptr %i.g, align 8
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cd, ptr %i.e, align 8
  br label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIDsSaIDsEE15_M_range_insertIPKcEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 25 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 16 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 1
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.i, %i.l                       ; 6 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 15 uses
  %i.o = icmp ugt i64 %i.n, %i.c
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 0, %i.c
  %i.q = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !83

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %i.c, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.g, ptr nonnull align 2 %i.q, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 1
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i16, ptr %i.q, align 2
  store i16 %i.u, ptr %i.g, align 2
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.f, align 8
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 1                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !83

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ab, ptr align 2 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 2
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.g, i64 -2
  %i.ae = load i16, ptr %1, align 2
  store i16 %i.ae, ptr %i.ad, align 2
  br label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit:      ; preds = %bb.h, %bb.i, %bb.j
  %i.af = icmp sgt i64 %i.c, 0
  br i1 %i.af, label %iter.check164, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

iter.check164:                                    ; preds = %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit
  %min.iters.check147 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check147, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %iter.check164
  %i.ag = sub i64 %i.a, %i.b
  %i.ah = shl i64 %i.ag, 1
  %scevgep142 = getelementptr i8, ptr %1, i64 %i.ah
  %bound0144 = icmp ult ptr %1, %3
  %bound1145 = icmp ult ptr %2, %scevgep142
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %vector.memcheck141
  %min.iters.check149 = icmp ult i64 %i.c, 16
  br i1 %min.iters.check149, label %vec.epilog.ph168, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.ai = and i64 %i.c, 12
  %n.vec151 = and i64 %i.c, 9223372036854775792   ; 5 uses
  %i.aj = and i64 %i.c, 15
  %i.ak = shl nuw i64 %n.vec151, 1
  %i.al = getelementptr i8, ptr %1, i64 %i.ak
  %i.am = getelementptr i8, ptr %2, i64 %n.vec151
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 3 uses
  %i.an = shl i64 %index153, 1
  %next.gep154 = getelementptr i8, ptr %1, i64 %i.an ; 2 uses
  %next.gep155 = getelementptr i8, ptr %2, i64 %index153 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep155, i64 8
  %wide.load156 = load <8 x i8>, ptr %next.gep155, align 1, !alias.scope !93
  %wide.load157 = load <8 x i8>, ptr %i.ao, align 1, !alias.scope !93
  %i.ap = sext <8 x i8> %wide.load156 to <8 x i16>
  %i.aq = sext <8 x i8> %wide.load157 to <8 x i16>
  %i.ar = getelementptr i8, ptr %next.gep154, i64 16
  store <8 x i16> %i.ap, ptr %next.gep154, align 2, !alias.scope !96, !noalias !93
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !alias.scope !96, !noalias !93
  %index.next158 = add nuw i64 %index153, 16      ; 2 uses
  %i.as = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.as, label %middle.block159, label %vector.body152, !llvm.loop !98

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.c, %n.vec151
  br i1 %cmp.n160, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block159
  %min.epilog.iters.check167 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph168, !prof !16

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check166
  %vec.epilog.resume.val161 = phi i64 [ %n.vec151, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec169 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.at = and i64 %i.c, 3
  %i.au = shl nuw i64 %n.vec169, 1
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %i.aw = getelementptr i8, ptr %2, i64 %n.vec169
  br label %vec.epilog.vector.body170

vec.epilog.vector.body170:                        ; preds = %vec.epilog.vector.body170, %vec.epilog.ph168
  %index171 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body170 ] ; 3 uses
  %i.ax = shl i64 %index171, 1
  %next.gep172 = getelementptr i8, ptr %1, i64 %i.ax
  %next.gep173 = getelementptr i8, ptr %2, i64 %index171
  %wide.load174 = load <4 x i8>, ptr %next.gep173, align 1, !alias.scope !93
  %i.ay = sext <4 x i8> %wide.load174 to <4 x i16>
  store <4 x i16> %i.ay, ptr %next.gep172, align 2, !alias.scope !96, !noalias !93
  %index.next175 = add nuw i64 %index171, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.az, label %vec.epilog.middle.block176, label %vec.epilog.vector.body170, !llvm.loop !99

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body170
  %cmp.n177 = icmp eq i64 %i.c, %n.vec169
  br i1 %cmp.n177, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck141, %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.012.i.i.i.i.i.ph = phi i64 [ %i.c, %iter.check164 ], [ %i.c, %vector.memcheck141 ], [ %i.aj, %vec.epilog.iter.check166 ], [ %i.at, %vec.epilog.middle.block176 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %iter.check164 ], [ %1, %vector.memcheck141 ], [ %i.al, %vec.epilog.iter.check166 ], [ %i.av, %vec.epilog.middle.block176 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %iter.check164 ], [ %2, %vector.memcheck141 ], [ %i.am, %vec.epilog.iter.check166 ], [ %i.aw, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ba = load i8, ptr %.0910.i.i.i.i.i, align 1
  %i.bb = sext i8 %i.ba to i16
  store i16 %i.bb, ptr %.0811.i.i.i.i.i, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 2
  %i.be = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bf = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, !llvm.loop !100

_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = icmp eq i64 %i.m, 2
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.n ; 9 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.a, %i.bi                     ; 12 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %iter.check, label %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit

iter.check:                                       ; preds = %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = add i64 %i.n, %i.b
  %i.bl = sub i64 %i.a, %4
  %i.bm = shl i64 %i.bl, 1
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.bm
  %bound0 = icmp ult ptr %i.g, %3
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check87 = icmp ult i64 %i.bj, 16
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 9223372036854775792     ; 5 uses
  %i.bo = and i64 %i.bj, 15
  %i.bp = shl nuw i64 %n.vec, 1
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bh, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.bs ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.bh, i64 %index ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep88, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep88, align 1, !alias.scope !101
  %wide.load89 = load <8 x i8>, ptr %i.bt, align 1, !alias.scope !101
  %i.bu = sext <8 x i8> %wide.load to <8 x i16>
  %i.bv = sext <8 x i8> %wide.load89 to <8 x i16>
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.bu, ptr %next.gep, align 2, !alias.scope !104, !noalias !101
  store <8 x i16> %i.bv, ptr %i.bw, align 2, !alias.scope !104, !noalias !101
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %i.bj, 9223372036854775804   ; 4 uses
  %i.by = and i64 %i.bj, 3
  %i.bz = shl nuw i64 %n.vec92, 1
  %i.ca = getelementptr i8, ptr %i.g, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bh, i64 %n.vec92
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %i.cc = shl i64 %index93, 1
  %next.gep94 = getelementptr i8, ptr %i.g, i64 %i.cc
  %next.gep95 = getelementptr i8, ptr %i.bh, i64 %index93
  %wide.load96 = load <4 x i8>, ptr %next.gep95, align 1, !alias.scope !101
  %i.cd = sext <4 x i8> %wide.load96 to <4 x i16>
  store <4 x i16> %i.cd, ptr %next.gep94, align 2, !alias.scope !104, !noalias !101
  %index.next97 = add nuw i64 %index93, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !107

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.bj, %n.vec92
  br i1 %cmp.n98, label %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bj, %iter.check ], [ %i.bj, %vector.memcheck ], [ %i.bo, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.bq, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %iter.check ], [ %i.bh, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cf = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1
  %i.cg = sext i8 %i.cf to i16
  store i16 %i.cg, ptr %.0811.i.i.i.i.i.i.i.i, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 2
  %i.cj = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.ck = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !108

_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit
  %i.cl = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKclEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.cm = sub nuw i64 %i.c, %i.n
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cm ; 3 uses
  store ptr %i.cn, ptr %i.f, align 8
  %i.co = icmp sgt i64 %i.m, 2
  br i1 %i.co, label %bb.k, label %bb.l, !prof !83

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.cn, ptr align 2 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.bg, label %bb.m, label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

bb.m:                                             ; preds = %bb.l
  %i.cp = load i16, ptr %1, align 2
  store i16 %i.cp, ptr %i.cn, align 2
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.k, %bb.l, %bb.m
  %i.cq = load ptr, ptr %i.f, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.m
  store ptr %i.cr, ptr %i.f, align 8
  %i.cs = icmp sgt i64 %i.n, 0
  br i1 %i.cs, label %iter.check124, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

iter.check124:                                    ; preds = %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47
  %min.iters.check107 = icmp ult i64 %i.n, 4
  br i1 %min.iters.check107, label %.lr.ph.i.i.i.i.i49.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %iter.check124
  %bound0104 = icmp ult ptr %1, %i.bh
  %bound1105 = icmp ult ptr %2, %i.g
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %.lr.ph.i.i.i.i.i49.preheader, label %vector.main.loop.iter.check108

vector.main.loop.iter.check108:                   ; preds = %vector.memcheck102
  %min.iters.check109 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check109, label %vec.epilog.ph128, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check108
  %n.vec111 = and i64 %i.n, 9223372036854775792   ; 5 uses
  %i.ct = and i64 %i.n, 15
  %i.cu = shl nuw i64 %n.vec111, 1
  %i.cv = getelementptr i8, ptr %1, i64 %i.cu
  %i.cw = getelementptr i8, ptr %2, i64 %n.vec111
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next118, %vector.body112 ] ; 3 uses
  %i.cx = shl i64 %index113, 1
  %next.gep114 = getelementptr i8, ptr %1, i64 %i.cx ; 2 uses
  %next.gep115 = getelementptr i8, ptr %2, i64 %index113 ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep115, i64 8
  %wide.load116 = load <8 x i8>, ptr %next.gep115, align 1, !alias.scope !109
  %wide.load117 = load <8 x i8>, ptr %i.cy, align 1, !alias.scope !109
  %i.cz = sext <8 x i8> %wide.load116 to <8 x i16>
  %i.da = sext <8 x i8> %wide.load117 to <8 x i16>
  %i.db = getelementptr i8, ptr %next.gep114, i64 16
  store <8 x i16> %i.cz, ptr %next.gep114, align 2, !alias.scope !112, !noalias !109
  store <8 x i16> %i.da, ptr %i.db, align 2, !alias.scope !112, !noalias !109
  %index.next118 = add nuw i64 %index113, 16      ; 2 uses
  %i.dc = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.dc, label %middle.block119, label %vector.body112, !llvm.loop !114

middle.block119:                                  ; preds = %vector.body112
  %cmp.n120 = icmp eq i64 %i.n, %n.vec111
  br i1 %cmp.n120, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check126

vec.epilog.iter.check126:                         ; preds = %middle.block119
  %i.dd = and i64 %i.m, 24
  %min.epilog.iters.check127 = icmp eq i64 %i.dd, 0
  br i1 %min.epilog.iters.check127, label %.lr.ph.i.i.i.i.i49.preheader, label %vec.epilog.ph128, !prof !16

vec.epilog.ph128:                                 ; preds = %vector.main.loop.iter.check108, %vec.epilog.iter.check126
  %vec.epilog.resume.val121 = phi i64 [ %n.vec111, %vec.epilog.iter.check126 ], [ 0, %vector.main.loop.iter.check108 ]
  %n.vec129 = and i64 %i.n, 9223372036854775804   ; 4 uses
  %i.de = and i64 %i.n, 3
  %i.df = shl nuw i64 %n.vec129, 1
  %i.dg = getelementptr i8, ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %2, i64 %n.vec129
  br label %vec.epilog.vector.body130

vec.epilog.vector.body130:                        ; preds = %vec.epilog.vector.body130, %vec.epilog.ph128
  %index131 = phi i64 [ %vec.epilog.resume.val121, %vec.epilog.ph128 ], [ %index.next135, %vec.epilog.vector.body130 ] ; 3 uses
  %i.di = shl i64 %index131, 1
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.di
  %next.gep133 = getelementptr i8, ptr %2, i64 %index131
  %wide.load134 = load <4 x i8>, ptr %next.gep133, align 1, !alias.scope !109
  %i.dj = sext <4 x i8> %wide.load134 to <4 x i16>
  store <4 x i16> %i.dj, ptr %next.gep132, align 2, !alias.scope !112, !noalias !109
  %index.next135 = add nuw i64 %index131, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.dk, label %vec.epilog.middle.block136, label %vec.epilog.vector.body130, !llvm.loop !115

vec.epilog.middle.block136:                       ; preds = %vec.epilog.vector.body130
  %cmp.n137 = icmp eq i64 %i.n, %n.vec129
  br i1 %cmp.n137, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %vector.memcheck102, %iter.check124, %vec.epilog.iter.check126, %vec.epilog.middle.block136
  %.012.i.i.i.i.i50.ph = phi i64 [ %i.n, %iter.check124 ], [ %i.n, %vector.memcheck102 ], [ %i.ct, %vec.epilog.iter.check126 ], [ %i.de, %vec.epilog.middle.block136 ]
  %.0811.i.i.i.i.i51.ph = phi ptr [ %1, %iter.check124 ], [ %1, %vector.memcheck102 ], [ %i.cv, %vec.epilog.iter.check126 ], [ %i.dg, %vec.epilog.middle.block136 ]
  %.0910.i.i.i.i.i52.ph = phi ptr [ %2, %iter.check124 ], [ %2, %vector.memcheck102 ], [ %i.cw, %vec.epilog.iter.check126 ], [ %i.dh, %vec.epilog.middle.block136 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader, %.lr.ph.i.i.i.i.i49
  %.012.i.i.i.i.i50 = phi i64 [ %i.dp, %.lr.ph.i.i.i.i.i49 ], [ %.012.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %.0811.i.i.i.i.i51 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i49 ], [ %.0811.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %.0910.i.i.i.i.i52 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i49 ], [ %.0910.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i49.preheader ] ; 2 uses
  %i.dl = load i8, ptr %.0910.i.i.i.i.i52, align 1
  %i.dm = sext i8 %i.dl to i16
  store i16 %i.dm, ptr %.0811.i.i.i.i.i51, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i52, i64 1
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i51, i64 2
  %i.dp = add nsw i64 %.012.i.i.i.i.i50, -1
  %i.dq = icmp samesign ugt i64 %.012.i.i.i.i.i50, 1
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i49, label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, !llvm.loop !116

bb.n:                                             ; preds = %bb.b
  %i.dr = load ptr, ptr %0, align 8               ; 5 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 3 uses
  %i.dt = sub i64 %i.i, %i.ds
  %i.du = ashr exact i64 %i.dt, 1                 ; 4 uses
  %i.dv = sub nsw i64 4611686018427387903, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.c
  br i1 %i.dw, label %bb.o, label %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #14
  unreachable

_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit:  ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.c)
  %i.dx = add i64 %.sroa.speculated.i, %i.du      ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.du
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 4611686018427387903)
  %i.ea = select i1 %i.dy, i64 4611686018427387903, i64 %i.dz ; 3 uses
  %.not.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit
  %i.eb = shl nuw nsw i64 %i.ea, 1
  %i.ec = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #15
  br label %_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit, %bb.p
  %i.ed = phi ptr [ %i.ec, %bb.p ], [ null, %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.ee = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ef = sub i64 %i.ee, %i.ds                    ; 4 uses
  %i.eg = icmp sgt i64 %i.ef, 2
  br i1 %i.eg, label %bb.q, label %bb.r, !prof !83

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ed, ptr align 2 %i.dr, i64 %i.ef, i1 false)
  br label %iter.check198

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIDsSaIDsEE11_M_allocateEm.exit
  %i.eh = icmp eq i64 %i.ef, 2
  br i1 %i.eh, label %bb.s, label %iter.check198

bb.s:                                             ; preds = %bb.r
  %i.ei = load i16, ptr %i.dr, align 2
  store i16 %i.ei, ptr %i.ed, align 2
  br label %iter.check198

iter.check198:                                    ; preds = %bb.q, %bb.r, %bb.s
  %i.ej = getelementptr inbounds i8, ptr %i.ed, i64 %i.ef ; 5 uses
  %i.ek = sub i64 %i.a, %i.b                      ; 7 uses
  %min.iters.check181 = icmp ult i64 %i.ek, 4
  br i1 %min.iters.check181, label %.lr.ph.i.i.i.i.i.i.i.i55.preheader, label %vector.main.loop.iter.check182

vector.main.loop.iter.check182:                   ; preds = %iter.check198
  %min.iters.check183 = icmp ult i64 %i.ek, 16
  br i1 %min.iters.check183, label %vec.epilog.ph202, label %vector.ph184

vector.ph184:                                     ; preds = %vector.main.loop.iter.check182
  %i.el = and i64 %i.ek, 12
  %n.vec185 = and i64 %i.ek, -16                  ; 6 uses
  %i.em = sub i64 %i.c, %n.vec185
  %i.en = shl i64 %n.vec185, 1
  %i.eo = getelementptr i8, ptr %i.ej, i64 %i.en  ; 2 uses
  %i.ep = getelementptr i8, ptr %2, i64 %n.vec185
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next192, %vector.body186 ] ; 3 uses
  %i.eq = shl i64 %index187, 1
  %next.gep188 = getelementptr i8, ptr %i.ej, i64 %i.eq ; 2 uses
  %next.gep189 = getelementptr i8, ptr %2, i64 %index187 ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep189, i64 8
  %wide.load190 = load <8 x i8>, ptr %next.gep189, align 1
  %wide.load191 = load <8 x i8>, ptr %i.er, align 1
  %i.es = sext <8 x i8> %wide.load190 to <8 x i16>
  %i.et = sext <8 x i8> %wide.load191 to <8 x i16>
  %i.eu = getelementptr i8, ptr %next.gep188, i64 16
  store <8 x i16> %i.es, ptr %next.gep188, align 2
  store <8 x i16> %i.et, ptr %i.eu, align 2
  %index.next192 = add nuw i64 %index187, 16      ; 2 uses
  %i.ev = icmp eq i64 %index.next192, %n.vec185
  br i1 %i.ev, label %middle.block193, label %vector.body186, !llvm.loop !117

middle.block193:                                  ; preds = %vector.body186
  %cmp.n194 = icmp eq i64 %i.ek, %n.vec185
  br i1 %cmp.n194, label %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit59, label %vec.epilog.iter.check200

vec.epilog.iter.check200:                         ; preds = %middle.block193
  %min.epilog.iters.check201 = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check201, label %.lr.ph.i.i.i.i.i.i.i.i55.preheader, label %vec.epilog.ph202, !prof !16

vec.epilog.ph202:                                 ; preds = %vector.main.loop.iter.check182, %vec.epilog.iter.check200
  %vec.epilog.resume.val195 = phi i64 [ %n.vec185, %vec.epilog.iter.check200 ], [ 0, %vector.main.loop.iter.check182 ]
  %n.vec203 = and i64 %i.ek, -4                   ; 5 uses
  %i.ew = sub i64 %i.c, %n.vec203
  %i.ex = shl i64 %n.vec203, 1
  %i.ey = getelementptr i8, ptr %i.ej, i64 %i.ex  ; 2 uses
  %i.ez = getelementptr i8, ptr %2, i64 %n.vec203
  br label %vec.epilog.vector.body204

vec.epilog.vector.body204:                        ; preds = %vec.epilog.vector.body204, %vec.epilog.ph202
  %index205 = phi i64 [ %vec.epilog.resume.val195, %vec.epilog.ph202 ], [ %index.next209, %vec.epilog.vector.body204 ] ; 3 uses
  %i.fa = shl i64 %index205, 1
  %next.gep206 = getelementptr i8, ptr %i.ej, i64 %i.fa
  %next.gep207 = getelementptr i8, ptr %2, i64 %index205
  %wide.load208 = load <4 x i8>, ptr %next.gep207, align 1
  %i.fb = sext <4 x i8> %wide.load208 to <4 x i16>
  store <4 x i16> %i.fb, ptr %next.gep206, align 2
  %index.next209 = add nuw i64 %index205, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.fc, label %vec.epilog.middle.block210, label %vec.epilog.vector.body204, !llvm.loop !118

vec.epilog.middle.block210:                       ; preds = %vec.epilog.vector.body204
  %cmp.n211 = icmp eq i64 %i.ek, %n.vec203
  br i1 %cmp.n211, label %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit59, label %.lr.ph.i.i.i.i.i.i.i.i55.preheader

.lr.ph.i.i.i.i.i.i.i.i55.preheader:               ; preds = %iter.check198, %vec.epilog.iter.check200, %vec.epilog.middle.block210
  %.012.i.i.i.i.i.i.i.i56.ph = phi i64 [ %i.c, %iter.check198 ], [ %i.em, %vec.epilog.iter.check200 ], [ %i.ew, %vec.epilog.middle.block210 ]
  %.0811.i.i.i.i.i.i.i.i57.ph = phi ptr [ %i.ej, %iter.check198 ], [ %i.eo, %vec.epilog.iter.check200 ], [ %i.ey, %vec.epilog.middle.block210 ]
  %.0910.i.i.i.i.i.i.i.i58.ph = phi ptr [ %2, %iter.check198 ], [ %i.ep, %vec.epilog.iter.check200 ], [ %i.ez, %vec.epilog.middle.block210 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i55

.lr.ph.i.i.i.i.i.i.i.i55:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i55.preheader, %.lr.ph.i.i.i.i.i.i.i.i55
  %.012.i.i.i.i.i.i.i.i56 = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i.i.i.i55.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i57 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i.i.i.i55.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i58 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i.i.i.i55.preheader ] ; 2 uses
  %i.fd = load i8, ptr %.0910.i.i.i.i.i.i.i.i58, align 1
  %i.fe = sext i8 %i.fd to i16
  store i16 %i.fe, ptr %.0811.i.i.i.i.i.i.i.i57, align 2
  %i.ff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i58, i64 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i57, i64 2 ; 2 uses
  %i.fh = add nsw i64 %.012.i.i.i.i.i.i.i.i56, -1
  %i.fi = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i56, 1
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i.i.i55, label %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit59, !llvm.loop !119

_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit59: ; preds = %.lr.ph.i.i.i.i.i.i.i.i55, %vec.epilog.middle.block210, %middle.block193
  %.lcssa = phi ptr [ %i.ey, %vec.epilog.middle.block210 ], [ %i.eo, %middle.block193 ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i55 ] ; 3 uses
  %i.fj = sub i64 %i.i, %i.ee                     ; 4 uses
  %i.fk = icmp sgt i64 %i.fj, 2
  br i1 %i.fk, label %bb.t, label %bb.u, !prof !83

bb.t:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit59
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.lcssa, ptr align 2 %1, i64 %i.fj, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit60

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKcPDsDsET0_T_S4_S3_RSaIT1_E.exit59
  %i.fl = icmp eq i64 %i.fj, 2
  br i1 %i.fl, label %bb.v, label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit60

bb.v:                                             ; preds = %bb.u
  %i.fm = load i16, ptr %1, align 2
  store i16 %i.fm, ptr %.lcssa, align 2
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit60

_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit60: ; preds = %bb.t, %bb.u, %bb.v
  %i.fn = getelementptr inbounds i8, ptr %.lcssa, i64 %i.fj
  %.not.i61 = icmp eq ptr %i.dr, null
  br i1 %.not.i61, label %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit60
  %i.fo = load ptr, ptr %i.d, align 8
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = sub i64 %i.fp, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.fq) #18
  br label %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit

_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit60, %bb.w
  store ptr %i.ed, ptr %0, align 8
  store ptr %i.fn, ptr %i.f, align 8
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %i.ea
  store ptr %i.fr, ptr %i.d, align 8
  br label %_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i49, %.lr.ph.i.i.i.i.i, %middle.block119, %vec.epilog.middle.block136, %middle.block159, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47, %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIDsSaIDsEE13_M_deallocateEPDsm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIDsSaIDsEE15_M_range_insertIPcEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EET_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_S9_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 25 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 16 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 1
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.i, %i.l                       ; 6 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 15 uses
  %i.o = icmp ugt i64 %i.n, %i.c
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPclEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 0, %i.c
  %i.q = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !83

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %i.c, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.g, ptr nonnull align 2 %i.q, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 1
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i16, ptr %i.q, align 2
  store i16 %i.u, ptr %i.g, align 2
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.f, align 8
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 1                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !83

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ab, ptr align 2 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 2
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.g, i64 -2
  %i.ae = load i16, ptr %1, align 2
  store i16 %i.ae, ptr %i.ad, align 2
  br label %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit:      ; preds = %bb.h, %bb.i, %bb.j
  %i.af = icmp sgt i64 %i.c, 0
  br i1 %i.af, label %iter.check164, label %_ZSt4copyIPcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_S9_S8_.exit

iter.check164:                                    ; preds = %_ZSt13move_backwardIPDsS0_ET0_T_S2_S1_.exit
  %min.iters.check147 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check147, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %iter.check164
  %i.ag = sub i64 %i.a, %i.b
  %i.ah = shl i64 %i.ag, 1
  %scevgep142 = getelementptr i8, ptr %1, i64 %i.ah
  %bound0144 = icmp ult ptr %1, %3
  %bound1145 = icmp ult ptr %2, %scevgep142
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %vector.memcheck141
  %min.iters.check149 = icmp ult i64 %i.c, 16
  br i1 %min.iters.check149, label %vec.epilog.ph168, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.ai = and i64 %i.c, 12
  %n.vec151 = and i64 %i.c, 9223372036854775792   ; 5 uses
  %i.aj = and i64 %i.c, 15
  %i.ak = shl nuw i64 %n.vec151, 1
  %i.al = getelementptr i8, ptr %1, i64 %i.ak
  %i.am = getelementptr i8, ptr %2, i64 %n.vec151
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 3 uses
  %i.an = shl i64 %index153, 1
  %next.gep154 = getelementptr i8, ptr %1, i64 %i.an ; 2 uses
  %next.gep155 = getelementptr i8, ptr %2, i64 %index153 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep155, i64 8
  %wide.load156 = load <8 x i8>, ptr %next.gep155, align 1, !alias.scope !120
  %wide.load157 = load <8 x i8>, ptr %i.ao, align 1, !alias.scope !120
  %i.ap = sext <8 x i8> %wide.load156 to <8 x i16>
  %i.aq = sext <8 x i8> %wide.load157 to <8 x i16>
  %i.ar = getelementptr i8, ptr %next.gep154, i64 16
  store <8 x i16> %i.ap, ptr %next.gep154, align 2, !alias.scope !123, !noalias !120
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !alias.scope !123, !noalias !120
  %index.next158 = add nuw i64 %index153, 16      ; 2 uses
  %i.as = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.as, label %middle.block159, label %vector.body152, !llvm.loop !125

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.c, %n.vec151
  br i1 %cmp.n160, label %_ZSt4copyIPcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_S9_S8_.exit, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block159
  %min.epilog.iters.check167 = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check167, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph168, !prof !16

vec.epilog.ph168:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check166
  %vec.epilog.resume.val161 = phi i64 [ %n.vec151, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec169 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.at = and i64 %i.c, 3
  %i.au = shl nuw i64 %n.vec169, 1
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  %i.aw = getelementptr i8, ptr %2, i64 %n.vec169
  br label %vec.epilog.vector.body170

vec.epilog.vector.body170:                        ; preds = %vec.epilog.vector.body170, %vec.epilog.ph168
  %index171 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph168 ], [ %index.next175, %vec.epilog.vector.body170 ] ; 3 uses
  %i.ax = shl i64 %index171, 1
  %next.gep172 = getelementptr i8, ptr %1, i64 %i.ax
  %next.gep173 = getelementptr i8, ptr %2, i64 %index171
  %wide.load174 = load <4 x i8>, ptr %next.gep173, align 1, !alias.scope !120
  %i.ay = sext <4 x i8> %wide.load174 to <4 x i16>
  store <4 x i16> %i.ay, ptr %next.gep172, align 2, !alias.scope !123, !noalias !120
  %index.next175 = add nuw i64 %index171, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next175, %n.vec169
  br i1 %i.az, label %vec.epilog.middle.block176, label %vec.epilog.vector.body170, !llvm.loop !126

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body170
  %cmp.n177 = icmp eq i64 %i.c, %n.vec169
  br i1 %cmp.n177, label %_ZSt4copyIPcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck141, %iter.check164, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.012.i.i.i.i.i.ph = phi i64 [ %i.c, %iter.check164 ], [ %i.c, %vector.memcheck141 ], [ %i.aj, %vec.epilog.iter.check166 ], [ %i.at, %vec.epilog.middle.block176 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %iter.check164 ], [ %1, %vector.memcheck141 ], [ %i.al, %vec.epilog.iter.check166 ], [ %i.av, %vec.epilog.middle.block176 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %iter.check164 ], [ %2, %vector.memcheck141 ], [ %i.am, %vec.epilog.iter.check166 ], [ %i.aw, %vec.epilog.middle.block176 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ba = load i8, ptr %.0910.i.i.i.i.i, align 1
  %i.bb = sext i8 %i.ba to i16
  store i16 %i.bb, ptr %.0811.i.i.i.i.i, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 2
  %i.be = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bf = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_S9_S8_.exit, !llvm.loop !127

_ZSt9__advanceIPclEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = icmp eq i64 %i.m, 2
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.n ; 9 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.a, %i.bi                     ; 12 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %iter.check, label %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit

iter.check:                                       ; preds = %_ZSt9__advanceIPclEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %4 = add i64 %i.n, %i.b
  %i.bl = sub i64 %i.a, %4
  %i.bm = shl i64 %i.bl, 1
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.bm
  %bound0 = icmp ult ptr %i.g, %3
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check87 = icmp ult i64 %i.bj, 16
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 9223372036854775792     ; 5 uses
  %i.bo = and i64 %i.bj, 15
  %i.bp = shl nuw i64 %n.vec, 1
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bh, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.bs ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.bh, i64 %index ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep88, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep88, align 1, !alias.scope !128
  %wide.load89 = load <8 x i8>, ptr %i.bt, align 1, !alias.scope !128
  %i.bu = sext <8 x i8> %wide.load to <8 x i16>
  %i.bv = sext <8 x i8> %wide.load89 to <8 x i16>
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.bu, ptr %next.gep, align 2, !alias.scope !131, !noalias !128
  store <8 x i16> %i.bv, ptr %i.bw, align 2, !alias.scope !131, !noalias !128
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %i.bj, 9223372036854775804   ; 4 uses
  %i.by = and i64 %i.bj, 3
  %i.bz = shl nuw i64 %n.vec92, 1
  %i.ca = getelementptr i8, ptr %i.g, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bh, i64 %n.vec92
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %i.cc = shl i64 %index93, 1
  %next.gep94 = getelementptr i8, ptr %i.g, i64 %i.cc
  %next.gep95 = getelementptr i8, ptr %i.bh, i64 %index93
  %wide.load96 = load <4 x i8>, ptr %next.gep95, align 1, !alias.scope !128
  %i.cd = sext <4 x i8> %wide.load96 to <4 x i16>
  store <4 x i16> %i.cd, ptr %next.gep94, align 2, !alias.scope !131, !noalias !128
  %index.next97 = add nuw i64 %index93, 4         ; 2 uses
  %i.ce = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !134

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.bj, %n.vec92
  br i1 %cmp.n98, label %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bj, %iter.check ], [ %i.bj, %vector.memcheck ], [ %i.bo, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.g, %vector.memcheck ], [ %i.bq, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %iter.check ], [ %i.bh, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.cf = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1
  %i.cg = sext i8 %i.cf to i16
  store i16 %i.cg, ptr %.0811.i.i.i.i.i.i.i.i, align 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 2
  %i.cj = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.ck = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit.loopexit, !llvm.loop !135

_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPclEvRT_T0_St26random_access_iterator_tag.exit
  %i.cl = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPclEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.cm = sub nuw i64 %i.c, %i.n
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cm ; 3 uses
  store ptr %i.cn, ptr %i.f, align 8
  %i.co = icmp sgt i64 %i.m, 2
  br i1 %i.co, label %bb.k, label %bb.l, !prof !83

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.cn, ptr align 2 %1, i64 %i.m, i1 false)
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPcPDsDsET0_T_S3_S2_RSaIT1_E.exit
  br i1 %i.bg, label %bb.m, label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

bb.m:                                             ; preds = %bb.l
  %i.cp = load i16, ptr %1, align 2
  store i16 %i.cp, ptr %i.cn, align 2
  br label %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.k, %bb.l, %bb.m
  %i.cq = load ptr, ptr %i.f, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.m
  store ptr %i.cr, ptr %i.f, align 8
  %i.cs = icmp sgt i64 %i.n, 0
  br i1 %i.cs, label %iter.check124, label %_ZSt4copyIPcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_S9_S8_.exit

iter.check124:                                    ; preds = %_ZSt22__uninitialized_move_aIPDsS0_SaIDsEET0_T_S3_S2_RT1_.exit47
  %min.iters.check107 = icmp ult i64 %i.n, 4
  br i1 %min.iters.check107, label %.lr.ph.i.i.i.i.i49.preheader, label %vector.memcheck102

vector.memcheck102:                               ; preds = %iter.check124
  %bound0104 = icmp ult ptr %1, %i.bh
  %bound1105 = icmp ult ptr %2, %i.g
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %.lr.ph.i.i.i.i.i49.preheader, label %vector.main.loop.iter.check108

vector.main.loop.iter.check108:                   ; preds = %vector.memcheck102
  %min.iters.check109 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check109, label %vec.epilog.ph128, label %vector.ph110

vector.ph110:                                     ; preds = %vector.main.loop.iter.check108
  %n.vec111 = and i64 %i.n, 9223372036854775792   ; 5 uses
  %i.ct = and i64 %i.n, 15
  %i.cu = shl nuw i64 %n.vec111, 1
  %i.cv = getelementptr i8, ptr %1, i64 %i.cu
  %i.cw = getelementptr i8, ptr %2, i64 %n.vec111
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next118, %vector.body112 ] ; 3 uses
  %i.cx = shl i64 %index113, 1
  %next.gep114 = getelementptr i8, ptr %1, i64 %i.cx ; 2 uses
  %next.gep115 = getelementptr i8, ptr %2, i64 %index113 ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep115, i64 8
  %wide.load116 = load <8 x i8>, ptr %next.gep115, align 1, !alias.scope !136
  %wide.load117 = load <8 x i8>, ptr %i.cy, align 1, !alias.scope !136
  %i.cz = sext <8 x i8> %wide.load116 to <8 x i16>
  %i.da = sext <8 x i8> %wide.load117 to <8 x i16>
  %i.db = getelementptr i8, ptr %next.gep114, i64 16
  store <8 x i16> %i.cz, ptr %next.gep114, align 2, !alias.scope !139, !noalias !136
  store <8 x i16> %i.da, ptr %i.db, align 2, !alias.scope !139, !noalias !136
  %index.next118 = add nuw i64 %index113, 16      ; 2 uses
  %i.dc = icmp eq i64 %index.next118, %n.vec111
  br i1 %i.dc, label %middle.block119, label %vector.body112, !llvm.loop !141

middle.block119:                                  ; preds = %vector.body112
  %cmp.n120 = icmp eq i64 %i.n, %n.vec111
  br i1 %cmp.n120, label %_ZSt4copyIPcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_S9_S8_.exit, label %vec.epilog.iter.check126

vec.epilog.iter.check126:                         ; preds = %middle.block119
  %i.dd = and i64 %i.m, 24
  %min.epilog.iters.check127 = icmp eq i64 %i.dd, 0
  br i1 %min.epilog.iters.check127, label %.lr.ph.i.i.i.i.i49.preheader, label %vec.epilog.ph128, !prof !16

vec.epilog.ph128:                                 ; preds = %vector.main.loop.iter.check108, %vec.epilog.iter.check126
  %vec.epilog.resume.val121 = phi i64 [ %n.vec111, %vec.epilog.iter.check126 ], [ 0, %vector.main.loop.iter.check108 ]
  %n.vec129 = and i64 %i.n, 9223372036854775804   ; 4 uses
  %i.de = and i64 %i.n, 3
  %i.df = shl nuw i64 %n.vec129, 1
  %i.dg = getelementptr i8, ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %2, i64 %n.vec129
  br label %vec.epilog.vector.body130

vec.epilog.vector.body130:                        ; preds = %vec.epilog.vector.body130, %vec.epilog.ph128
  %index131 = phi i64 [ %vec.epilog.resume.val121, %vec.epilog.ph128 ], [ %index.next135, %vec.epilog.vector.body130 ] ; 3 uses
  %i.di = shl i64 %index131, 1
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.di
  %next.gep133 = getelementptr i8, ptr %2, i64 %index131
  %wide.load134 = load <4 x i8>, ptr %next.gep133, align 1, !alias.scope !136
  %i.dj = sext <4 x i8> %wide.load134 to <4 x i16>
  store <4 x i16> %i.dj, ptr %next.gep132, align 2, !alias.scope !139, !noalias !136
  %index.next135 = add nuw i64 %index131, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next135, %n.vec129
  br i1 %i.dk, label %vec.epilog.middle.block136, label %vec.epilog.vector.body130, !llvm.loop !142

vec.epilog.middle.block136:                       ; preds = %vec.epilog.vector.body130
  %cmp.n137 = icmp eq i64 %i.n, %n.vec129
  br i1 %cmp.n137, label %_ZSt4copyIPcN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.i.i49.preheader

.lr.ph.i.i.i.i.i49.preheader:                     ; preds = %vector.memcheck102, %iter.check124, %vec.epilog.iter.check126, %vec.epilog.middle.block136
  %.012.i.i.i.i.i50.ph = phi i64 [ %i.n, %iter.check124 ], [ %i.n, %vector.memcheck102 ], [ %i.ct, %vec.epilog.iter.check126 ], [ %i.de, %vec.epilog.middle.block136 ]
  %.0811.i.i.i.i.i51.ph = phi ptr [ %1, %iter.check124 ], [ %1, %vector.memcheck102 ], [ %i.cv, %vec.epilog.iter.check126 ], [ %i.dg, %vec.epilog.middle.block136 ]
  %.0910.i.i.i.i.i52.ph = phi ptr [ %2, %iter.check124 ], [ %2, %vector.memcheck102 ], [ %i.cw, %vec.epilog.iter.check126 ], [ %i.dh, %vec.epilog.middle.block136 ]
  br label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.lr.ph.i.i.i.i.i49.preheader, %.lr.ph.i.i.i.i.i49
end_hunk_0
