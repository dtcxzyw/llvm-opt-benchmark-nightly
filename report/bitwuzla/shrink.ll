Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/shrink?download=true
inline.NumInlined: 448
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal28mark_shrinkable_as_removableEim:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.07.012 = phi ptr [ %i.b, %.lr.ph ], [ %i.al, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.i = load i32, ptr %.sroa.07.012, align 4, !tbaa !12 ; 3 uses
  %i.j = tail call noundef i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.k = zext nneg i32 %i.j to i64
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k ; 3 uses
  %i.n = load i32, ptr %i.m, align 1              ; 3 uses
  %i.o = and i32 %i.n, -17
  store i32 %i.o, ptr %i.m, align 1
  %i.p = and i32 %i.n, 8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %i.n, -25
  %i.r = or disjoint i32 %i.q, 8
  store i32 %i.r, ptr %i.m, align 1
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !17   ; 4 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.i, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store ptr %i.u, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775804
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 2                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 2305843009213693951)
  %i.ae = select i1 %i.ac, i64 2305843009213693951, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #14 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store i32 %i.i, ptr %i.ah, align 4, !tbaa !12
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ag, ptr align 4 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.not.i17.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !19
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 4 ; 2 uses
  %.not10 = icmp eq ptr %i.al, %i.d
  br i1 %.not10, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal18shrunken_block_uipEiiRSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEESA_mi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0, i32 noundef %1, i32 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, i64 %5, i32 noundef %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub nsw i32 0, %1                        ; 3 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !11
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  store i32 %i.a, ptr %i.d, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.f = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.g = zext nneg i32 %i.f to i64                ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.k = load i32, ptr %i.i, align 8, !tbaa !25
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !184
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %i.p, ptr %i.r, align 4, !tbaa !187
  store i32 1, ptr %i.q, align 4, !tbaa !188
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.g ; 3 uses
  %i.v = load i32, ptr %i.u, align 1              ; 2 uses
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.a, ptr %i.z, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !19  ; 4 uses
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ai = ashr exact i64 %i.ag, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 2305843009213693951)
  %i.am = select i1 %i.ak, i64 2305843009213693951, i64 %i.al ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #14 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store i32 %i.a, ptr %i.ap, align 4, !tbaa !12
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ao, ptr %i.x, align 8, !tbaa !19
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !17
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !18
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.at = load i32, ptr %i.u, align 1
  %i.au = or i32 %i.at, 1
  store i32 %i.au, ptr %i.u, align 1
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !15  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.g
  %.pre26 = load i32, ptr %.phi.trans.insert, align 1
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.a
  %i.av = phi i32 [ %.pre26, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.v, %bb.a ]
  %i.aw = phi ptr [ %.pre, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.t, %bb.a ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.g
  %i.ay = or i32 %i.av, 2
  store i32 %i.ay, ptr %i.ax, align 1
  %i.az = load ptr, ptr %3, align 8, !tbaa !30, !noalias !189 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 11 uses
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %4, align 8, !tbaa !11 ; 3 uses
  %.not23 = icmp eq ptr %i.ba, %.sroa.0.0.copyload.i2.i.i
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %7 = sub nsw i32 0, %6                          ; 2 uses
  %i.bb = ptrtoaddr ptr %i.az to i64
  %8 = ptrtoaddr ptr %.sroa.0.0.copyload.i2.i.i to i64
  %i.bc = add i64 %i.bb, -8
  %i.bd = sub i64 %i.bc, %8                       ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 28
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
  %i.bg = mul i64 %n.vec, -4
  %i.bh = getelementptr i8, ptr %i.ba, i64 %i.bg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue55, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue55 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %pred.store.continue55 ]
  %vec.phi32 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi56, %pred.store.continue55 ]
  %i.bi = mul i64 %index, -4                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %i.bi ; 3 uses
  %i.bj = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bl = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bm = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bn = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bo = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bp = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.br = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bq, align 4, !tbaa !12
  %wide.load40 = load <4 x i32>, ptr %i.br, align 4, !tbaa !12
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse41 = shufflevector <4 x i32> %wide.load40, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bs = icmp ne <4 x i32> %reverse, %broadcast.splat ; 5 uses
  %i.bt = icmp ne <4 x i32> %reverse41, %broadcast.splat ; 5 uses
  %i.bu = extractelement <4 x i1> %i.bs, i64 0
  br i1 %i.bu, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bv = getelementptr inbounds i8, ptr %next.gep, i64 -4
  store i32 %6, ptr %i.bv, align 4, !tbaa !12
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bw = extractelement <4 x i1> %i.bs, i64 1
  br i1 %i.bw, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue
  %i.bx = getelementptr i8, ptr %i.bj, i64 -8
  store i32 %6, ptr %i.bx, align 4, !tbaa !12
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue
  %i.by = extractelement <4 x i1> %i.bs, i64 2
  br i1 %i.by, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.bz = getelementptr i8, ptr %i.bk, i64 -12
  store i32 %6, ptr %i.bz, align 4, !tbaa !12
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.ca = extractelement <4 x i1> %i.bs, i64 3
  br i1 %i.ca, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.cb = getelementptr i8, ptr %i.bl, i64 -16
  store i32 %6, ptr %i.cb, align 4, !tbaa !12
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.cc = extractelement <4 x i1> %i.bt, i64 0
  br i1 %i.cc, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.cd = getelementptr i8, ptr %i.bm, i64 -20
  store i32 %6, ptr %i.cd, align 4, !tbaa !12
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.ce = extractelement <4 x i1> %i.bt, i64 1
  br i1 %i.ce, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.cf = getelementptr i8, ptr %i.bn, i64 -24
  store i32 %6, ptr %i.cf, align 4, !tbaa !12
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.cg = extractelement <4 x i1> %i.bt, i64 2
  br i1 %i.cg, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.ch = getelementptr i8, ptr %i.bo, i64 -28
  store i32 %6, ptr %i.ch, align 4, !tbaa !12
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.ci = extractelement <4 x i1> %i.bt, i64 3
  br i1 %i.ci, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.cj = getelementptr i8, ptr %i.bp, i64 -32
  store i32 %6, ptr %i.cj, align 4, !tbaa !12
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.ck = zext <4 x i1> %i.bs to <4 x i32>
  %predphi = add <4 x i32> %vec.phi, %i.ck        ; 2 uses
  %i.cl = zext <4 x i1> %i.bt to <4 x i32>
  %predphi56 = add <4 x i32> %vec.phi32, %i.cl    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %pred.store.continue55
  %bin.rdx = add <4 x i32> %predphi56, %predphi
  %i.cn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.025.ph = phi i32 [ 0, %.lr.ph ], [ %i.cn, %middle.block ]
  %.sroa.0.024.ph = phi ptr [ %i.ba, %.lr.ph ], [ %i.bh, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %bb.j, %middle.block, %bb.h
  %.0.lcssa = phi i32 [ 0, %bb.h ], [ %i.cn, %middle.block ], [ %.1, %bb.j ]
  tail call void @_ZN7CaDiCaL8Internal28mark_shrinkable_as_removableEim(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 poison, i64 poison)
  ret i32 %.0.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.j
  %.025 = phi i32 [ %.1, %bb.j ], [ %.025.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.024 = phi ptr [ %i.co, %bb.j ], [ %.sroa.0.024.ph, %scalar.ph.preheader ]
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.024, i64 -4 ; 4 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !12
  %i.cq = icmp eq i32 %i.cp, %7
  br i1 %i.cq, label %bb.j, label %bb.i

bb.i:                                             ; preds = %scalar.ph
  store i32 %6, ptr %i.co, align 4, !tbaa !12
  %i.cr = add i32 %.025, 1
  br label %bb.j

bb.j:                                             ; preds = %scalar.ph, %bb.i
  %.1 = phi i32 [ %i.cr, %bb.i ], [ %.025, %scalar.ph ] ; 2 uses
  %.not = icmp eq ptr %i.co, %.sroa.0.0.copyload.i2.i.i
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !183
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal22push_literals_of_blockERKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEESB_ij(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !11
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i2.i.i5 = load ptr, ptr %2, align 8, !tbaa !11
  %.not6 = icmp eq ptr %.sroa.0.0.copyload.i2.i.i5, %i.b
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.07 = phi ptr [ %i.c, %.lr.ph ], [ %i.b, %bb.a ]
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = tail call noundef i32 @_ZN7CaDiCaL8Internal14shrink_literalEiij(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.d, i32 noundef %3, i32 noundef %4) ; 0 uses
  %.sroa.0.0.copyload.i2.i.i = load ptr, ptr %2, align 8, !tbaa !11
  %.not = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN7CaDiCaL8Internal14shrink_literalEiij(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.c ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !190
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sub nsw i32 0, %1
  %i.p = tail call noundef ptr @_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.o, i32 noundef 0, i1 noundef zeroext true) ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !34
  %.not15 = icmp eq ptr %i.p, null
  br i1 %.not15, label %bb.q, label %bb.d
end_hunk_0
