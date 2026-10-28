Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_external?download=true
inline.NumInlined: 954
inline.NumDeleted: 381
begin_hunk_0_@_ZN7CaDiCaL8External4initEib:bb.a

_ZNSt6vectorIiSaIiEE9push_backEOi.exit121:        ; preds = %bb.cj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i120
  %.0 = add i32 %.0140, 1                         ; 2 uses
  %.not31 = icmp ugt i32 %.0, %1
  br i1 %.not31, label %._crit_edge, label %bb.bn, !llvm.loop !247

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit121, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit79
  %i.ob = sext i32 %i.c to i64
  %i.oc = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %. = select i1 %2, i64 5736, i64 5744
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %. ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !212
  %i.of = add nsw i64 %i.oe, %i.ob
  store i64 %i.of, ptr %i.od, align 8, !tbaa !212
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 3672
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !213
  %.not32 = icmp eq i32 %i.oh, 0
  br i1 %.not32, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, label %bb.co

bb.co:                                            ; preds = %._crit_edge
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !53 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !54 ; 2 uses
  %i.on = load ptr, ptr %i.oi, align 8, !tbaa !53 ; 2 uses
  %i.oo = ptrtoint ptr %i.ok to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = shl nsw i64 %i.oq, 3
  %i.os = zext i32 %i.om to i64
  %i.ot = add nsw i64 %i.or, %i.os                ; 3 uses
  %.not33 = icmp sgt i64 %i.ot, %i.h
  br i1 %.not33, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ou = add nsw i64 %i.h, 1                     ; 5 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  br i1 %i.ov, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ow = sdiv i64 %i.ou, 64
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.on, i64 %i.ow
  %i.oy = and i64 %i.ou, -9223372036854775745
  %i.oz = icmp ugt i64 %i.oy, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.oz, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.ox, i64 %storemerge.idx.i.i.i.i
  %i.pa = trunc i64 %i.ou to i32
  %i.pb = and i32 %i.pa, 63
  store ptr %storemerge.i.i.i.i, ptr %i.oj, align 8
  store i32 %i.pb, ptr %i.ol, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.cr:                                            ; preds = %bb.cp
  %i.pc = sub nuw i64 %i.ou, %i.ot
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.oi, ptr %i.ok, i32 %i.om, i64 noundef %i.pc, i1 noundef zeroext false)
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.cr, %bb.cq, %bb.co, %._crit_edge
  store i32 %1, ptr %i.a, align 8, !tbaa !52
  br label %bb.cs

bb.cs:                                            ; preds = %bb.a, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  ret void
}

declare void @_ZN7CaDiCaL8Internal9init_varsEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External17reset_assumptionsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !210
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal17reset_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.e) #21
  ret void
}

declare void @_ZN7CaDiCaL8Internal17reset_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External15reset_concludedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) initializes((225, 226)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 0, ptr %i.a, align 1, !tbaa !214
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal15reset_concludedEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.b) #21
  ret void
}

declare void @_ZN7CaDiCaL8Internal15reset_concludedEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External16reset_constraintEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !210
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal16reset_constraintEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.e) #21
  ret void
}

declare void @_ZN7CaDiCaL8Internal16reset_constraintEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7CaDiCaL8External14reset_extendedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !215, !range !216, !noundef !217
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !215
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External12reset_limitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal12reset_limitsEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.a) #21
  ret void
}

declare void @_ZN7CaDiCaL8Internal12reset_limitsEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN7CaDiCaL8External11internalizeEib(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit41.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not27 = icmp sle i32 %i.a, %i.c
  %or.cond.not = select i1 %2, i1 %.not27, i1 false
  br i1 %or.cond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str, i32 noundef %i.a) #21
  %.pre = load i32, ptr %i.b, align 8, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = phi i32 [ %.pre, %bb.c ], [ %i.c, %bb.b ]
  %i.e = icmp sgt i32 %i.a, %i.d
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7CaDiCaL8External4initEib(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %i.a, i1 noundef zeroext %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = lshr i32 %i.a, 6
  %.zext = zext nneg i32 %i.h to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.zext ; 2 uses
  %i.j = and i32 %i.a, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = load i64, ptr %i.i, align 8, !tbaa !212
  %i.n = or i64 %i.m, %i.l
  store i64 %i.n, ptr %i.i, align 8, !tbaa !212
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = zext nneg i32 %i.a to i64                ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !199
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  %i.s = load i32, ptr %i.r, align 4, !tbaa !211  ; 2 uses
  %i.t = icmp slt i32 %1, 0                       ; 2 uses
  %i.u = sub nsw i32 0, %i.s
  %spec.select = select i1 %i.t, i32 %i.u, i32 %i.s ; 2 uses
  %.not28 = icmp eq i32 %spec.select, 0
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !51  ; 3 uses
  br i1 %.not28, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.pre61, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !208  ; 2 uses
  %i.x = add i32 %i.w, 1                          ; 3 uses
  tail call void @_ZN7CaDiCaL8Internal9init_varsEi(ptr noundef nonnull align 8 dereferenceable(7296) %.pre61, i32 noundef %i.x) #21
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !199
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.p
  store i32 %i.x, ptr %i.z, align 4, !tbaa !211
  %i.aa = load ptr, ptr %0, align 8, !tbaa !51    ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 528 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 536 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !210 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 544 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !200
  %.not.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.a, ptr %i.ad, align 4, !tbaa !211
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !210
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !199 ; 4 uses
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 5 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775804
  br i1 %i.al, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.am = ashr exact i64 %i.ak, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 2305843009213693951)
  %i.aq = select i1 %i.ao, i64 2305843009213693951, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #23 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  store i32 %i.a, ptr %i.at, align 4, !tbaa !211
  %i.au = icmp sgt i64 %i.ak, 0
  br i1 %i.au, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !200
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ay) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !199
  store ptr %i.av, ptr %i.ac, align 8, !tbaa !210
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.az, ptr %i.ae, align 8, !tbaa !200
  %.pre60.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.pre60 = phi ptr [ %i.aa, %bb.j ], [ %.pre60.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.ba = xor i32 %i.w, -1
  %spec.select34 = select i1 %i.t, i32 %i.ba, i32 %i.x
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.h
  %i.bb = phi ptr [ %.pre61, %bb.h ], [ %.pre60, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.1 = phi i32 [ %spec.select, %bb.h ], [ %spec.select34, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 3672
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !213
  %.not29 = icmp eq i32 %i.bd, 0
  br i1 %.not29, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !53
  %i.bg = lshr i32 %i.a, 6
  %.zext56 = zext nneg i32 %i.bg to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.zext56
  %i.bi = and i64 %i.p, 63
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !212
  %i.bl = and i64 %i.bk, %i.bj
  %.not57 = icmp eq i64 %i.bl, 0
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.1, i32 noundef %i.a) #21
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %i.bm = phi ptr [ %i.bb, %bb.p ], [ %.pre62, %bb.q ], [ %i.bb, %bb.o ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 760
  %i.bo = tail call noundef i32 @llvm.abs.i32(i32 %.1, i1 true)
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !218
  %i.br = getelementptr inbounds nuw [6 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 5
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = lshr i8 %i.bt, 5
  switch i8 %i.bu, label %bb.t [
    i8 0, label %bb.s
    i8 1, label %bb.u
    i8 2, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN7CaDiCaL8Internal11mark_activeEi(ptr noundef nonnull align 8 dereferenceable(7296) %i.bm, i32 noundef %.1) #21
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN7CaDiCaL8Internal10reactivateEi(ptr noundef nonnull align 8 dereferenceable(7296) %i.bm, i32 noundef %.1) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.r, %bb.t, %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.bw = shl nuw i32 %i.a, 1
  %i.bx = add i32 %i.bw, -2                       ; 4 uses
  %.lobit.i.i = lshr i32 %1, 31
  %i.by = or disjoint i32 %i.bx, %.lobit.i.i      ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !53 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !54 ; 2 uses
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !53 ; 3 uses
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = shl nsw i64 %i.ch, 3
  %i.cj = zext i32 %i.cd to i64
  %i.ck = add nsw i64 %i.ci, %i.cj                ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %i.bz               ; 2 uses
  br i1 %i.cl, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit: ; preds = %bb.u
  %i.cm = lshr i32 %i.bx, 6
  %.zext.i = zext nneg i32 %i.cm to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.zext.i
  %i.co = and i64 %i.bz, 63
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !212
  %i.cr = and i64 %i.cq, %i.cp
  %.not58 = icmp eq i64 %i.cr, 0
  br i1 %.not58, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit41.thread

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread: ; preds = %bb.u, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ct = icmp sgt i32 %1, 0
  %.lobit.i.i39 = zext i1 %i.ct to i32
  %i.cu = or disjoint i32 %i.bx, %.lobit.i.i39
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !53
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !54
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !53 ; 2 uses
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = shl nsw i64 %i.dd, 3
  %i.df = zext i32 %i.cz to i64
  %i.dg = add nsw i64 %i.de, %i.df
  %i.dh = icmp ugt i64 %i.dg, %i.cv
  br i1 %i.dh, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit41, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit41.thread

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit41: ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit.thread
  %i.di = lshr i32 %i.bx, 6
  %.zext.i40 = zext nneg i32 %i.di to i64         ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.zext.i40
  %i.dk = and i64 %i.cv, 63
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = load i64, ptr %i.dj, align 8, !tbaa !212
  %i.dn = and i64 %i.dm, %i.dl
  %.not59 = icmp eq i64 %i.dn, 0
  br i1 %.not59, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit41.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit41
  br i1 %i.cl, label %_ZN7CaDiCaL8External4markERSt6vectorIbSaIbEEi.exit, label %bb.w

end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8External9constrainEi:bb.a
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !200
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.aj) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !199
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !210
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ak, ptr %i.p, align 8, !tbaa !200
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.al = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal9constrainEi(ptr noundef nonnull align 8 dereferenceable(7296) %i.al, i32 noundef %i.k) #21
  ret void
}

declare void @_ZN7CaDiCaL5Proof14add_constraintERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN7CaDiCaL8Internal9constrainEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8External17failed_constraintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal17failed_constraintEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.a) #21
  ret i1 %i.b
}

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal17failed_constraintEv(ptr noundef nonnull align 8 dereferenceable(7296)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External5phaseEi(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN7CaDiCaL8External11internalizeEib(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, i1 noundef zeroext false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal5phaseEi(ptr noundef nonnull align 8 dereferenceable(7296) %i.b, i32 noundef %i.a) #21
  ret void
}

declare void @_ZN7CaDiCaL8Internal5phaseEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External7unphaseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp sgt i32 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = zext nneg i32 %i.a to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !199
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  %i.i = load i32, ptr %i.h, align 4, !tbaa !211  ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %1, 0
  %i.k = sub nsw i32 0, %i.i
  %spec.select = select i1 %i.j, i32 %i.k, i32 %i.i
  %i.l = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal7unphaseEi(ptr noundef nonnull align 8 dereferenceable(7296) %i.l, i32 noundef %spec.select) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN7CaDiCaL8Internal7unphaseEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External16add_observed_varEi(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !215, !range !216, !noundef !217
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN7CaDiCaL8External14reset_extendedEv.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.c, align 8, !tbaa !215
  br label %_ZN7CaDiCaL8External14reset_extendedEv.exit

_ZN7CaDiCaL8External14reset_extendedEv.exit:      ; preds = %bb.b, %bb.c
  %i.f = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = zext nneg i32 %i.f to i64                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !53   ; 4 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = shl nsw i64 %i.q, 3
  %i.s = zext i32 %i.m to i64
  %i.t = add nsw i64 %i.r, %i.s                   ; 3 uses
  %.not19 = icmp sgt i64 %i.t, %i.h
  br i1 %.not19, label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, label %bb.d

bb.d:                                             ; preds = %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.u = add nuw nsw i64 %i.h, 1                  ; 4 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.zext35 = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.zext35
  %i.x = trunc nuw i64 %i.u to i32
  %i.y = and i32 %i.x, 63
  store ptr %i.w, ptr %i.j, align 8
  store i32 %i.y, ptr %i.l, align 8
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

bb.f:                                             ; preds = %bb.d
  %i.z = sub nuw nsw i64 %i.u, %i.t
  tail call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr %i.k, i32 %i.m, i64 noundef %i.z, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !53
  br label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.f, %bb.e, %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.aa = phi ptr [ %.pre, %bb.f ], [ %i.n, %bb.e ], [ %i.n, %_ZN7CaDiCaL8External14reset_extendedEv.exit ]
  %i.ab = lshr i32 %i.f, 6
  %.zext = zext nneg i32 %i.ab to i64             ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.zext
  %i.ad = and i64 %i.h, 63
  %i.ae = shl nuw i64 1, %i.ad                    ; 2 uses
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !212
  %i.ag = and i64 %i.af, %i.ae
  %.not37 = icmp eq i64 %i.ag, 0
  br i1 %.not37, label %bb.g, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

bb.g:                                             ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  tail call void @_ZN7CaDiCaL8External6freezeEi(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1)
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.zext ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !212
  %i.ak = or i64 %i.aj, %i.ae
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !212
  %i.al = tail call noundef i32 @_ZN7CaDiCaL8External11internalizeEib(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, i1 noundef zeroext false)
  %i.am = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal16add_observed_varEi(ptr noundef nonnull align 8 dereferenceable(7296) %i.am, i32 noundef %i.al) #21
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !251, !range !216, !noundef !217
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.g, align 8, !tbaa !52
  %i.as = icmp sgt i32 %i.f, %i.ar
  br i1 %i.as, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !199
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.h
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !211 ; 4 uses
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp slt i32 %1, 0
  %i.ay = sub nsw i32 0, %i.aw
  %spec.select.i = select i1 %i.ax, i32 %i.ay, i32 %i.aw
  %i.az = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.aw, i1 true)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 472
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !225
  %i.bd = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !226 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %3 = sext i8 %i.bf to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 712
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !227
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bd
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !229
  %.not9.i.i = icmp eq i32 %i.bj, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 %3, i32 0
  br label %_ZNK7CaDiCaL8External5fixedEi.exit

_ZNK7CaDiCaL8External5fixedEi.exit:               ; preds = %bb.j, %bb.k
  %.0.i.i = phi i32 [ 0, %bb.j ], [ %spec.select.i.i, %bb.k ] ; 2 uses
  %4 = icmp slt i32 %spec.select.i, 0
  %5 = sub nsw i32 0, %.0.i.i
  %spec.select10.i.i = select i1 %4, i32 %5, i32 %.0.i.i ; 2 uses
  %.not20 = icmp eq i32 %spec.select10.i.i, 0
  br i1 %.not20, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK7CaDiCaL8External5fixedEi.exit
  %i.bk = icmp slt i32 %spec.select10.i.i, 0
  %i.bl = sub nsw i32 0, %1
  %i.bm = select i1 %i.bk, i32 %i.bl, i32 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bn = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #23 ; 3 uses
  store ptr %i.bn, ptr %2, align 8, !tbaa !199
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !200
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !211
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !210
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !224 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !231
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(10) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  %i.bv = load ptr, ptr %2, align 8, !tbaa !199   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !200
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

_ZNK7CaDiCaL8External5fixedEi.exit.thread:        ; preds = %bb.i, %bb.h, %_ZNSt6vectorIbSaIbEE6resizeEmb.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNK7CaDiCaL8External5fixedEi.exit, %bb.g, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External6freezeEi(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !215, !range !216, !noundef !217
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN7CaDiCaL8External14reset_extendedEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !215
  br label %_ZN7CaDiCaL8External14reset_extendedEv.exit

_ZN7CaDiCaL8External14reset_extendedEv.exit:      ; preds = %bb.a, %bb.b
  %i.e = tail call noundef i32 @_ZN7CaDiCaL8External11internalizeEib(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, i1 noundef zeroext false)
  %i.f = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232  ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !203  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.g
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.p = add nuw i32 %i.f, 1
  %i.q = zext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !211
  %i.r = sub nuw nsw i64 %i.q, %i.o
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.j, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !203
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.s = phi ptr [ %.pre, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit ], [ %i.k, %_ZN7CaDiCaL8External14reset_extendedEv.exit ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.g ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !211  ; 2 uses
  %.not8 = icmp eq i32 %i.u, -1
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !211
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !51     ; 4 uses
  %i.x = call noundef i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 504 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 512 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !232 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !203 ; 6 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %.not.i = icmp ugt i64 %i.ag, %i.y
  br i1 %.not.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !253 ; 2 uses
  %.not10.i = icmp eq i64 %i.ai, 0
  %i.aj = shl i64 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = add nsw i64 %i.am, 1
  %i.ao = select i1 %.not10.i, i64 %i.an, i64 %i.aj
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i64 [ %i.ao, %bb.f ], [ %i.ap, %bb.g ] ; 6 uses
  %.not11.i = icmp ugt i64 %.0.i, %i.am
  %i.ap = shl i64 %.0.i, 1
  br i1 %.not11.i, label %bb.h, label %bb.g, !llvm.loop !252

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp ugt i64 %.0.i, %i.ag
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = sub nuw i64 %.0.i, %i.ag
  call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.ar)
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !203
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.h
  %i.as = icmp samesign ult i64 %.0.i, %i.ag
  br i1 %i.as, label %bb.k, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.0.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.at
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.at, ptr %i.aa, align 8, !tbaa !232
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i

_ZNSt6vectorIjSaIjEE6resizeEm.exit.i:             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.e
  %i.au = phi ptr [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ], [ %.pre.i, %bb.i ], [ %i.ac, %bb.e ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.y ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !211 ; 2 uses
  %.not12.i = icmp eq i32 %i.aw, -1
  br i1 %.not12.i, label %_ZN7CaDiCaL8Internal6freezeEi.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i
  %i.ax = add nuw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !211
  br label %_ZN7CaDiCaL8Internal6freezeEi.exit

_ZN7CaDiCaL8Internal6freezeEi.exit:               ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit.i, %bb.m
  ret void
}

declare void @_ZN7CaDiCaL8Internal16add_observed_varEi(ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External19remove_observed_varEi(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN7CaDiCaL8External4meltEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %_ZN7CaDiCaL8External4meltEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.c to i64                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = shl nsw i64 %i.p, 3
  %i.r = zext i32 %i.l to i64
  %i.s = add nsw i64 %i.q, %i.r
  %.not9 = icmp ult i64 %i.s, %i.g
  br i1 %.not9, label %bb.d, label %_ZN7CaDiCaL8External4meltEi.exit

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i32 %i.c, 6
  %.zext = zext nneg i32 %i.t to i64              ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.zext
  %i.v = and i64 %i.g, 63
  %i.w = shl nuw i64 1, %i.v                      ; 2 uses
  %i.x = load i64, ptr %i.u, align 8, !tbaa !212
  %i.y = and i64 %i.x, %i.w
  %.not16 = icmp eq i64 %i.y, 0
  br i1 %.not16, label %_ZN7CaDiCaL8External4meltEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !199
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.g
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !211
  %i.ad = load ptr, ptr %0, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal19remove_observed_varEi(ptr noundef nonnull align 8 dereferenceable(7296) %i.ad, i32 noundef %i.ac) #21
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.zext ; 2 uses
  %i.ag = xor i64 %i.w, -1
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !212
  %i.ai = and i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !212
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !215, !range !216, !noundef !217
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.f, label %_ZN7CaDiCaL8External14reset_extendedEv.exit.i

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.aj, align 8, !tbaa !215
  br label %_ZN7CaDiCaL8External14reset_extendedEv.exit.i

_ZN7CaDiCaL8External14reset_extendedEv.exit.i:    ; preds = %bb.f, %bb.e
  %i.am = tail call noundef i32 @_ZN7CaDiCaL8External11internalizeEib(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1, i1 noundef zeroext false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !203
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.g ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !211 ; 3 uses
  %.not.i = icmp eq i32 %i.aq, -1
end_hunk_1
begin_hunk_2_@_ZN7CaDiCaL8External7impliedERSt6vectorIiSaIiEE:bb.a
  %i.an = and i64 %i.al, %i.am                    ; 2 uses
  %i.ao = shl nuw i32 %i.af, 1
  %i.ap = add i32 %i.ao, -2                       ; 2 uses
  %.lobit.i.i = lshr i32 %spec.select.i, 31
  %i.aq = or disjoint i32 %i.ap, %.lobit.i.i
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.at = load i32, ptr %i.l, align 8, !tbaa !54
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !53  ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = zext i32 %i.at to i64
  %i.ba = add nsw i64 %i.ay, %i.az
  %i.bb = icmp ugt i64 %i.ba, %i.ar
  br i1 %i.bb, label %bb.e, label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit

bb.e:                                             ; preds = %bb.d
  %i.bc = lshr i32 %i.ap, 6
  %.zext.i = zext nneg i32 %i.bc to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.zext.i
  %i.be = and i64 %i.ar, 63
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !212
  %i.bh = and i64 %i.bg, %i.bf
  %i.bi = or i64 %i.bh, %i.an
  br label %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit

_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit: ; preds = %bb.d, %bb.e
  %or.cond.in = phi i64 [ %i.bi, %bb.e ], [ %i.an, %bb.d ]
  %or.cond.not = icmp eq i64 %or.cond.in, 0
  br i1 %or.cond.not, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !200
  %.not.i = icmp eq ptr %i.u, %i.bj
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %spec.select.i, ptr %i.u, align 4, !tbaa !211
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  store ptr %i.bk, ptr %i.c, align 8, !tbaa !210
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %bb.f
  %i.bl = ptrtoint ptr %i.u to i64
  %i.bm = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775804
  br i1 %i.bo, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bp = ashr exact i64 %i.bn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 2305843009213693951)
  %i.bt = select i1 %i.br, i64 2305843009213693951, i64 %i.bs ; 3 uses
  %.not.i.i.i8 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i8)
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #23 ; 5 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  store i32 %spec.select.i, ptr %i.bw, align 4, !tbaa !211
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %i.t, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !200
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.cb) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bv, ptr %1, align 8, !tbaa !199
  store ptr %i.by, ptr %i.c, align 8, !tbaa !210
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cc, ptr %i.m, align 8, !tbaa !200
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.g, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit
  %i.cd = phi ptr [ %i.bv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.t, %bb.g ], [ %i.t, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit ]
  %i.ce = phi ptr [ %i.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bk, %bb.g ], [ %i.u, %_ZNK7CaDiCaL8External6markedERKSt6vectorIbSaIbEEi.exit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d
}

declare void @_ZN7CaDiCaL8Internal7impliedERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(7296), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External16conclude_unknownEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3488
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 225 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !214, !range !216, !noundef !217
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 1, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN7CaDiCaL8External7impliedERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.g = load ptr, ptr %0, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3488
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !222
  call void @_ZN7CaDiCaL5Proof16conclude_unknownERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1) #21
  %i.j = load ptr, ptr %1, align 8, !tbaa !199    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !200
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

declare void @_ZN7CaDiCaL5Proof16conclude_unknownERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External17check_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i8, ptr %i.a, align 8, !tbaa !215, !range !216, !noundef !217
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8External6extendEv(ptr noundef nonnull align 8 dereferenceable(616) %0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3680
  %i.f = load i32, ptr %i.e, align 8, !tbaa !220
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8External16check_assignmentEMS0_KFiiE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 ptrtoint (ptr @_ZNK7CaDiCaL8External4ivalEi to i64), i64 0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3660
  %i.i = load i32, ptr %i.h, align 4, !tbaa !255
  %.not1 = icmp eq i32 %i.i, 0
  br i1 %.not1, label %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.09.014.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.ao, %bb.m ] ; 3 uses
  %i.s = load i32, ptr %.sroa.09.014.i, align 4, !tbaa !211 ; 6 uses
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 3 uses
  %i.u = load i32, ptr %i.o, align 8, !tbaa !52
  %.not.i.i = icmp sgt i32 %i.t, %i.u
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External4ivalEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = zext nneg i32 %i.t to i64                ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.x = load i32, ptr %i.r, align 8, !tbaa !54
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 3
  %i.ad = zext i32 %i.x to i64
  %i.ae = add nsw i64 %i.ac, %i.ad
  %i.af = icmp ugt i64 %i.ae, %i.v
  br i1 %i.af, label %bb.i, label %_ZNK7CaDiCaL8External4ivalEi.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ag = lshr i32 %i.t, 6
  %.zext.i.i = zext nneg i32 %i.ag to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.zext.i.i
  %i.ai = and i64 %i.v, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !212
  %i.al = and i64 %i.ak, %i.aj
  %i.am = icmp ne i64 %i.al, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit.i

_ZNK7CaDiCaL8External4ivalEi.exit.i:              ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.i = phi i1 [ %i.am, %bb.i ], [ false, %bb.h ], [ false, %bb.g ]
  %i.an = icmp slt i32 %i.s, 0
  %spec.select.i.i = xor i1 %i.an, %.0.i.i
  %1 = sub nsw i32 0, %i.s
  %2 = select i1 %spec.select.i.i, i32 %i.s, i32 %1 ; 2 uses
  %.not.i = icmp eq i32 %2, %i.s
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit.i
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.s) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK7CaDiCaL8External4ivalEi.exit.i
  %.not8.i = icmp eq i32 %2, 0
  br i1 %.not8.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %3 = load i32, ptr %.sroa.09.014.i, align 4, !tbaa !211
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.8, i32 noundef %3) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 4 ; 2 uses
  %.not12.i = icmp eq ptr %i.ao, %i.m
  br i1 %.not12.i, label %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit.loopexit, label %bb.g

_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit.loopexit: ; preds = %bb.m
  %.pre10 = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit

_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit: ; preds = %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit.loopexit, %bb.f, %bb.e
  %i.ap = phi ptr [ %i.g, %bb.e ], [ %.pre10, %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit.loopexit ], [ %i.g, %bb.f ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3664
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !256
  %.not2 = icmp eq i32 %i.ar, 0
  br i1 %.not2, label %_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58 ; 2 uses
  %i.aw = icmp eq ptr %i.at, %i.av
  br i1 %i.aw, label %_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = zext i32 %i.bd to i64
  %i.bk = add nsw i64 %i.bi, %i.bj
  br label %bb.p

bb.o:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit.i5
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 4 ; 2 uses
  %.not10.i = icmp eq ptr %i.bl, %i.av
  br i1 %.not10.i, label %._crit_edge.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i3
  %.sroa.06.013.i = phi ptr [ %i.at, %.lr.ph.i3 ], [ %i.bl, %bb.o ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.06.013.i, align 4, !tbaa !211 ; 3 uses
  %i.bn = tail call i32 @llvm.abs.i32(i32 %i.bm, i1 true) ; 3 uses
  %.not.i.i4 = icmp sgt i32 %i.bn, %i.ay
  br i1 %.not.i.i4, label %_ZNK7CaDiCaL8External4ivalEi.exit.i5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = icmp ugt i64 %i.bk, %i.bo
  br i1 %i.bp, label %bb.r, label %_ZNK7CaDiCaL8External4ivalEi.exit.i5

bb.r:                                             ; preds = %bb.q
  %i.bq = lshr i32 %i.bn, 6
  %.zext.i.i9 = zext nneg i32 %i.bq to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.zext.i.i9
  %i.bs = and i64 %i.bo, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !212
  %i.bv = and i64 %i.bu, %i.bt
  %i.bw = icmp ne i64 %i.bv, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit.i5

_ZNK7CaDiCaL8External4ivalEi.exit.i5:             ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.i6 = phi i1 [ %i.bw, %bb.r ], [ false, %bb.q ], [ false, %bb.p ]
  %i.bx = icmp slt i32 %i.bm, 0
  %spec.select.i.i7 = xor i1 %i.bx, %.0.i.i6
  %.not11.i = icmp eq i32 %i.bm, 0
  %.not.i8 = or i1 %.not11.i, %spec.select.i.i7
  br i1 %.not.i8, label %_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit, label %bb.o

._crit_edge.i:                                    ; preds = %bb.o
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.9) #21
  br label %_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit

_ZN7CaDiCaL8External26check_constraint_satisfiedEv.exit: ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit.i5, %._crit_edge.i, %bb.n, %_ZN7CaDiCaL8External27check_assumptions_satisfiedEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External16check_assignmentEMS0_KFiiE(ptr noundef nonnull align 8 dereferenceable(616) %0, i64 %1, i64 %2) local_unnamed_addr #1 align 2 {
bb.a:
  %.fr152 = freeze i64 %1                         ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !217, !align !234
  %i.c = load i32, ptr %i.b, align 4, !tbaa !211  ; 3 uses
  %.not116123 = icmp eq i32 %i.c, 0
  br i1 %.not116123, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 %2 ; 9 uses
  %i.e = and i64 %.fr152, 1
  %.not84 = icmp eq i64 %i.e, 0
  %i.f = inttoptr i64 %.fr152 to ptr              ; 3 uses
  br i1 %.not84, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.sroa.0108.0124.us = phi i32 [ %i.k, %bb.e ], [ 1, %.lr.ph ] ; 7 uses
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(616) %i.d, i32 noundef %.sroa.0108.0124.us) #21
  %.not85.us = icmp eq i32 %i.g, 0
  br i1 %.not85.us, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.2, i32 noundef %.sroa.0108.0124.us) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  %i.h = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(616) %i.d, i32 noundef %.sroa.0108.0124.us) #21
  %i.i = sub nsw i32 0, %.sroa.0108.0124.us       ; 2 uses
  %i.j = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(616) %i.d, i32 noundef %i.i) #21
  %.not86.us = icmp eq i32 %i.h, %i.j
  br i1 %.not86.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.3, i32 noundef %.sroa.0108.0124.us, i32 noundef %i.i) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = add i32 %.sroa.0108.0124.us, 1
  %.not116.us = icmp eq i32 %.sroa.0108.0124.us, %i.c
  br i1 %.not116.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !58   ; 3 uses
  %.not117130 = icmp eq ptr %i.o, %i.n
  br i1 %.not117130, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %._crit_edge
  %i.p = getelementptr inbounds i8, ptr %0, i64 %2 ; 2 uses
  %i.q = and i64 %.fr152, 1
  %.not83 = icmp eq i64 %i.q, 0
  %i.r = inttoptr i64 %.fr152 to ptr
  br label %bb.j

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.sroa.0108.0124 = phi i32 [ %i.ai, %bb.i ], [ 1, %.lr.ph ] ; 7 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.t = getelementptr i8, ptr %i.s, i64 %.fr152
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load ptr, ptr %i.u, align 8, !nosanitize !217
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(616) %i.d, i32 noundef %.sroa.0108.0124) #21
  %.not85 = icmp eq i32 %i.w, 0
  br i1 %.not85, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.2, i32 noundef %.sroa.0108.0124) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.y = getelementptr i8, ptr %i.x, i64 %.fr152
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = load ptr, ptr %i.z, align 8, !nosanitize !217
  %i.ab = tail call noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(616) %i.d, i32 noundef %.sroa.0108.0124) #21
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !231
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.fr152
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load ptr, ptr %i.ae, align 8, !nosanitize !217
  %i.ag = sub nsw i32 0, %.sroa.0108.0124         ; 2 uses
  %i.ah = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(616) %i.d, i32 noundef %i.ag) #21
  %.not86 = icmp eq i32 %i.ab, %i.ah
  br i1 %.not86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.3, i32 noundef %.sroa.0108.0124, i32 noundef %i.ag) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = add i32 %.sroa.0108.0124, 1
  %.not116 = icmp eq i32 %.sroa.0108.0124, %i.c
  br i1 %.not116, label %._crit_edge, label %.lr.ph.split

bb.j:                                             ; preds = %.lr.ph135, %bb.r
  %.sroa.020.0133 = phi ptr [ %i.o, %.lr.ph135 ], [ %.sroa.020.1, %bb.r ] ; 4 uses
  %.077132 = phi i1 [ false, %.lr.ph135 ], [ %.178, %bb.r ] ; 2 uses
  %.sroa.0101.0131 = phi ptr [ %i.o, %.lr.ph135 ], [ %i.az, %bb.r ] ; 5 uses
  %i.aj = load i32, ptr %.sroa.0101.0131, align 4, !tbaa !211 ; 3 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.077132, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL19fatal_message_startEv() #21
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !263
  %fwrite82 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %i.ak) #24 ; 0 uses
  %.not120125 = icmp eq ptr %.sroa.020.0133, %.sroa.0101.0131
  br i1 %.not120125, label %._crit_edge129, label %.lr.ph128

._crit_edge129:                                   ; preds = %.lr.ph128, %bb.l
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !263
end_hunk_2
begin_hunk_3_@_ZN7CaDiCaL8External16check_assignmentEMS0_KFiiE:bb.a
  %i.ax = tail call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(616) %i.p, i32 noundef %i.aj) #21
  %i.ay = icmp eq i32 %i.ax, %i.aj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.m
  %.178 = phi i1 [ true, %bb.n ], [ false, %bb.m ], [ %i.ay, %bb.q ]
  %.sroa.020.1 = phi ptr [ %.sroa.020.0133, %bb.n ], [ %i.ar, %bb.m ], [ %.sroa.020.0133, %bb.q ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0101.0131, i64 4 ; 2 uses
  %.not117 = icmp eq ptr %i.az, %i.n
  br i1 %.not117, label %._crit_edge136, label %bb.j, !llvm.loop !258

._crit_edge136:                                   ; preds = %bb.r, %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.095.0146 = load ptr, ptr %i.ba, align 8, !tbaa !201 ; 2 uses
  %.not118147 = icmp eq ptr %.sroa.095.0146, null
  br i1 %.not118147, label %.critedge, label %.lr.ph150

.lr.ph150:                                        ; preds = %._crit_edge136
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %2 ; 3 uses
  %i.bd = and i64 %.fr152, 1
  %.not80 = icmp eq i64 %i.bd, 0
  %i.be = inttoptr i64 %.fr152 to ptr
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph150, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.sroa.095.0148 = phi ptr [ %.sroa.095.0146, %.lr.ph150 ], [ %.sroa.095.0, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !224
  %.not.not = icmp eq ptr %i.bf, null
  br i1 %.not.not, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.095.0148, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.095.0148, i64 24 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58 ; 5 uses
  %.not119.not137 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not119.not137, label %.critedge121, label %.lr.ph142

.lr.ph142:                                        ; preds = %bb.t
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !211
  %.not81.us.peel = icmp eq i32 %i.bk, 0          ; 2 uses
  br i1 %.not80, label %.lr.ph142.split.us.preheader, label %.lr.ph142.split.preheader

.lr.ph142.split.preheader:                        ; preds = %.lr.ph142
  br i1 %.not81.us.peel, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph142.split.preheader
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %.not119.not.peel = icmp eq ptr %i.bl, %i.bj
  br i1 %.not119.not.peel, label %.critedge121, label %.lr.ph142.split.peel.next

.lr.ph142.split.us.preheader:                     ; preds = %.lr.ph142
  br i1 %.not81.us.peel, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph142.split.us.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %.not119.not.us.peel = icmp eq ptr %i.bm, %i.bj
  br i1 %.not119.not.us.peel, label %.critedge121, label %.lr.ph142.split.us.peel.next

.lr.ph142.split.us.peel.next:                     ; preds = %bb.v, %bb.w
  %.sroa.089.0138.us = phi ptr [ %i.bq, %bb.w ], [ %i.bm, %bb.v ] ; 2 uses
  %i.bn = load i32, ptr %.sroa.089.0138.us, align 4, !tbaa !211 ; 2 uses
  %i.bo = tail call noundef i32 %i.be(ptr noundef nonnull align 8 dereferenceable(616) %i.bc, i32 noundef %i.bn) #21
  %i.bp = icmp eq i32 %i.bo, %i.bn
  br i1 %i.bp, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph142.split.us.peel.next
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.089.0138.us, i64 4 ; 2 uses
  %.not119.not.us = icmp eq ptr %i.bq, %i.bj
  br i1 %.not119.not.us, label %.critedge121, label %.lr.ph142.split.us.peel.next, !llvm.loop !259

.lr.ph142.split.peel.next:                        ; preds = %bb.u, %bb.x
  %.sroa.089.0138 = phi ptr [ %i.by, %bb.x ], [ %i.bl, %bb.u ] ; 2 uses
  %i.br = load i32, ptr %.sroa.089.0138, align 4, !tbaa !211 ; 2 uses
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !231
  %i.bt = getelementptr i8, ptr %i.bs, i64 %.fr152
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %i.bv = load ptr, ptr %i.bu, align 8, !nosanitize !217
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(616) %i.bc, i32 noundef %i.br) #21
  %i.bx = icmp eq i32 %i.bw, %i.br
  br i1 %i.bx, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph142.split.peel.next
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.089.0138, i64 4 ; 2 uses
  %.not119.not = icmp eq ptr %i.by, %i.bj
  br i1 %.not119.not, label %.critedge121, label %.lr.ph142.split.peel.next, !llvm.loop !260

.critedge121:                                     ; preds = %bb.x, %bb.w, %bb.u, %bb.v, %bb.t
  tail call void @_ZN7CaDiCaL19fatal_message_startEv() #21
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !263
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 41, i64 1, ptr %i.bz) #24 ; 0 uses
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !210
  %i.cb = load ptr, ptr %i.bg, align 8, !tbaa !199 ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp ugt i64 %i.ce, 4
  br i1 %i.cf, label %.lr.ph144, label %._crit_edge145

._crit_edge145:                                   ; preds = %.lr.ph144, %.critedge121
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !263
  %i.ch = tail call i32 @fputc(i32 noundef 48, ptr noundef %i.cg) ; 0 uses
  tail call void @_ZN7CaDiCaL17fatal_message_endEv() #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph144:                                        ; preds = %.critedge121, %.lr.ph144
  %i.ci = phi ptr [ %i.cp, %.lr.ph144 ], [ %i.cb, %.critedge121 ]
  %.0143 = phi i64 [ %i.cn, %.lr.ph144 ], [ 1, %.critedge121 ] ; 2 uses
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !263
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0143
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !211
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.5, i32 noundef %i.cl) #25 ; 0 uses
  %i.cn = add nuw i64 %.0143, 1                   ; 2 uses
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !210
  %i.cp = load ptr, ptr %i.bg, align 8, !tbaa !199 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2
  %i.cu = icmp ult i64 %i.cn, %i.ct
  br i1 %i.cu, label %.lr.ph144, label %._crit_edge145, !llvm.loop !261

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.lr.ph142.split.peel.next, %.lr.ph142.split.us.peel.next, %.lr.ph142.split.us.preheader, %.lr.ph142.split.preheader, %._crit_edge145
  %.sroa.095.0 = load ptr, ptr %.sroa.095.0148, align 8, !tbaa !201 ; 2 uses
  %.not118 = icmp eq ptr %.sroa.095.0, null
  br i1 %.not118, label %.critedge, label %bb.s

.critedge:                                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.s, %._crit_edge136
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK7CaDiCaL8External4ivalEi(ptr noundef nonnull align 8 dereferenceable(616) %0, i32 noundef %1) #9 comdat align 2 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !52
  %.not = icmp sgt i32 %i.a, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.a to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = shl nsw i64 %i.m, 3
  %i.o = zext i32 %i.i to i64
  %i.p = add nsw i64 %i.n, %i.o
  %i.q = icmp ugt i64 %i.p, %i.d
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i32 %i.a, 6
  %.zext = zext nneg i32 %i.r to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.zext
  %i.t = and i64 %i.d, 63
  %i.u = shl nuw i64 1, %i.t
  %i.v = load i64, ptr %i.s, align 8, !tbaa !212
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp ne i64 %i.w, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ %i.x, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  %i.y = icmp slt i32 %1, 0
  %spec.select = xor i1 %i.y, %.0
  %i.z = sub nsw i32 0, %1
  %i.aa = select i1 %spec.select, i32 %1, i32 %i.z
  ret i32 %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External27check_assumptions_satisfiedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %.not1213 = icmp eq ptr %i.b, %i.d
  br i1 %.not1213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.09.014 = phi ptr [ %i.b, %.lr.ph ], [ %i.af, %bb.h ] ; 3 uses
  %i.i = load i32, ptr %.sroa.09.014, align 4, !tbaa !211 ; 6 uses
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 true) ; 3 uses
  %i.k = load i32, ptr %i.e, align 8, !tbaa !52
  %.not.i = icmp sgt i32 %i.j, %i.k
  br i1 %.not.i, label %_ZNK7CaDiCaL8External4ivalEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %i.j to i64                ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.n = load i32, ptr %i.h, align 8, !tbaa !54
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = shl nsw i64 %i.r, 3
  %i.t = zext i32 %i.n to i64
  %i.u = add nsw i64 %i.s, %i.t
  %i.v = icmp ugt i64 %i.u, %i.l
  br i1 %i.v, label %bb.d, label %_ZNK7CaDiCaL8External4ivalEi.exit

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i32 %i.j, 6
  %.zext.i = zext nneg i32 %i.w to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.zext.i
  %i.y = and i64 %i.l, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !212
  %i.ab = and i64 %i.aa, %i.z
  %i.ac = icmp ne i64 %i.ab, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit

_ZNK7CaDiCaL8External4ivalEi.exit:                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i1 [ %i.ac, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.ad = icmp slt i32 %i.i, 0
  %spec.select.i = xor i1 %i.ad, %.0.i
  %1 = sub nsw i32 0, %i.i
  %2 = select i1 %spec.select.i, i32 %i.i, i32 %1 ; 2 uses
  %.not = icmp eq i32 %2, %i.i
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.7, i32 noundef %i.i) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK7CaDiCaL8External4ivalEi.exit
  %.not8 = icmp eq i32 %2, 0
  br i1 %.not8, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %.sroa.09.014, align 4, !tbaa !211
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.ae) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 4 ; 2 uses
  %.not12 = icmp eq ptr %i.af, %i.d
  br i1 %.not12, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External26check_constraint_satisfiedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  %.not1012 = icmp eq ptr %i.b, %i.d
  br i1 %.not1012, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = shl nsw i64 %i.o, 3
  %i.q = zext i32 %i.k to i64
  %i.r = add nsw i64 %i.p, %i.q
  br label %bb.c

bb.b:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.013, i64 4 ; 2 uses
  %.not10 = icmp eq ptr %i.s, %i.d
  br i1 %.not10, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.06.013 = phi ptr [ %i.b, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %i.t = load i32, ptr %.sroa.06.013, align 4, !tbaa !211 ; 3 uses
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true) ; 3 uses
  %.not.i = icmp sgt i32 %i.u, %i.f
  br i1 %.not.i, label %_ZNK7CaDiCaL8External4ivalEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = icmp ugt i64 %i.r, %i.v
  br i1 %i.w, label %bb.e, label %_ZNK7CaDiCaL8External4ivalEi.exit

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i32 %i.u, 6
  %.zext.i = zext nneg i32 %i.x to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.zext.i
  %i.z = and i64 %i.v, 63
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !212
  %i.ac = and i64 %i.ab, %i.aa
  %i.ad = icmp ne i64 %i.ac, 0
  br label %_ZNK7CaDiCaL8External4ivalEi.exit

_ZNK7CaDiCaL8External4ivalEi.exit:                ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.ad, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  %i.ae = icmp slt i32 %i.t, 0
  %spec.select.i = xor i1 %i.ae, %.0.i
  %.not11 = icmp eq i32 %i.t, 0
  %.not = or i1 %.not11, %spec.select.i
  br i1 %.not, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @_ZN7CaDiCaL5fatalEPKcz(ptr noundef nonnull @.str.9) #21
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External19check_unsatisfiableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3668
  %i.c = load i32, ptr %i.b, align 4, !tbaa !221
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN7CaDiCaL8External13check_failingEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External13check_failingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 11 uses
  tail call void @_ZN7CaDiCaL6SolverC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #21
  tail call void @_ZN7CaDiCaL6Solver6prefixEPKc(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull @.str.10) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %.not4954 = icmp eq ptr %i.c, %i.e
  br i1 %.not4954, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8External6failedEi.exit.thread, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !51
  %i.i = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal17failed_constraintEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.h) #21
  br i1 %i.i, label %bb.e, label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8External6failedEi.exit.thread
  %.sroa.043.055 = phi ptr [ %i.c, %.lr.ph ], [ %i.v, %_ZN7CaDiCaL8External6failedEi.exit.thread ] ; 2 uses
  %i.j = load i32, ptr %.sroa.043.055, align 4, !tbaa !211 ; 3 uses
  %i.k = tail call i32 @llvm.abs.i32(i32 %i.j, i1 true) ; 2 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !52
  %i.m = icmp sgt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN7CaDiCaL8External6failedEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %i.k to i64
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !199
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !211  ; 3 uses
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8External6failedEi.exit.thread, label %_ZN7CaDiCaL8External6failedEi.exit

_ZN7CaDiCaL8External6failedEi.exit:               ; preds = %bb.c
  %i.r = icmp slt i32 %i.j, 0
  %i.s = sub nsw i32 0, %i.q
  %spec.select.i = select i1 %i.r, i32 %i.s, i32 %i.q
  %i.t = load ptr, ptr %0, align 8, !tbaa !51
  %i.u = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal6failedEi(ptr noundef nonnull align 8 dereferenceable(7296) %i.t, i32 noundef %spec.select.i) #21
  br i1 %i.u, label %bb.d, label %_ZN7CaDiCaL8External6failedEi.exit.thread

bb.d:                                             ; preds = %_ZN7CaDiCaL8External6failedEi.exit
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.j) #21
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 0) #21
  br label %_ZN7CaDiCaL8External6failedEi.exit.thread

_ZN7CaDiCaL8External6failedEi.exit.thread:        ; preds = %bb.c, %bb.b, %_ZN7CaDiCaL8External6failedEi.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.043.055, i64 4 ; 2 uses
  %.not49 = icmp eq ptr %i.v, %i.e
  br i1 %.not49, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 2 uses
  %.not5056 = icmp eq ptr %i.x, %i.z
  br i1 %.not5056, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %bb.e, %.lr.ph59
  %.sroa.039.057 = phi ptr [ %i.ab, %.lr.ph59 ], [ %i.x, %bb.e ] ; 2 uses
  %i.aa = load i32, ptr %.sroa.039.057, align 4, !tbaa !211
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.aa) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.039.057, i64 4 ; 2 uses
  %.not50 = icmp eq ptr %i.ab, %i.z
  br i1 %.not50, label %.loopexit, label %.lr.ph59

.loopexit:                                        ; preds = %.lr.ph59, %bb.e, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %.not5160 = icmp eq ptr %i.ad, %i.af
  br i1 %.not5160, label %._crit_edge64, label %.lr.ph63

._crit_edge64:                                    ; preds = %.lr.ph63, %.loopexit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 488
  %.sroa.031.071 = load ptr, ptr %i.ag, align 8, !tbaa !201 ; 2 uses
  %.not5272 = icmp eq ptr %.sroa.031.071, null
  br i1 %.not5272, label %._crit_edge76, label %.lr.ph75

.lr.ph63:                                         ; preds = %.loopexit, %.lr.ph63
  %.sroa.035.061 = phi ptr [ %i.ai, %.lr.ph63 ], [ %i.ad, %.loopexit ] ; 2 uses
  %i.ah = load i32, ptr %.sroa.035.061, align 4, !tbaa !211
  tail call void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.ah) #21
end_hunk_3
begin_hunk_4_@_ZN7CaDiCaL8External14generate_cubesEii:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !215, !range !216, !noundef !217
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN7CaDiCaL8External14reset_extendedEv.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !215
  br label %_ZN7CaDiCaL8External14reset_extendedEv.exit

_ZN7CaDiCaL8External14reset_extendedEv.exit:      ; preds = %bb.a, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3672
  %i.f = load i32, ptr %i.e, align 8, !tbaa !213
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN7CaDiCaL8External22update_molten_literalsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7CaDiCaL8External14reset_extendedEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !233, !nonnull !217, !align !234
  %i.i = load i32, ptr %i.h, align 4, !tbaa !211  ; 2 uses
  %.not1619.i = icmp eq i32 %i.i, 0
  br i1 %.not1619.i, label %_ZN7CaDiCaL8External22update_molten_literalsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.012.020.i = phi i32 [ 1, %.lr.ph.i ], [ %i.al, %bb.f ] ; 5 uses
  %i.w = sext i32 %.sroa.012.020.i to i64         ; 2 uses
  %i.x = sdiv i32 %.sroa.012.020.i, 64
  %.sext.i = sext i32 %i.x to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sext.i
  %i.z = and i64 %i.w, -9223372036854775745
  %i.aa = icmp ugt i64 %i.z, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.aa, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.y, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.ab = and i64 %i.w, 63
  %i.ac = shl nuw i64 1, %i.ab                    ; 2 uses
  %i.ad = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !212 ; 2 uses
  %i.ae = and i64 %i.ac, %i.ad
  %.not17.i = icmp eq i64 %i.ae, 0
  br i1 %.not17.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = tail call i32 @llvm.abs.i32(i32 %.sroa.012.020.i, i1 true) ; 3 uses
  %i.ag = icmp sle i32 %i.af, %i.m
  %.not.i.i = icmp slt i32 %i.af, %i.v
  %or.cond.i = select i1 %i.ag, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %_ZN7CaDiCaL8External6frozenEi.exit.i, label %_ZN7CaDiCaL8External6frozenEi.exit.thread.i

_ZN7CaDiCaL8External6frozenEi.exit.i:             ; preds = %bb.e
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !211
  %.not18.i = icmp eq i32 %i.aj, 0
  br i1 %.not18.i, label %_ZN7CaDiCaL8External6frozenEi.exit.thread.i, label %bb.f

_ZN7CaDiCaL8External6frozenEi.exit.thread.i:      ; preds = %_ZN7CaDiCaL8External6frozenEi.exit.i, %bb.e
  %i.ak = or i64 %i.ac, %i.ad
  store i64 %i.ak, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !212
  br label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL8External6frozenEi.exit.thread.i, %_ZN7CaDiCaL8External6frozenEi.exit.i, %bb.d
  %i.al = add i32 %.sroa.012.020.i, 1
  %.not16.i = icmp eq i32 %.sroa.012.020.i, %i.i
  br i1 %.not16.i, label %_ZN7CaDiCaL8External22update_molten_literalsEv.exit, label %bb.d

_ZN7CaDiCaL8External22update_molten_literalsEv.exit: ; preds = %bb.f, %_ZN7CaDiCaL8External14reset_extendedEv.exit, %bb.c
  tail call void @_ZN7CaDiCaL8Internal12reset_limitsEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.d) #21
  %i.am = load ptr, ptr %1, align 8, !tbaa !51
  tail call void @_ZN7CaDiCaL8Internal14generate_cubesEii(ptr dead_on_unwind writable sret(%"struct.CaDiCaL::CubesWithStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(7296) %i.am, i32 noundef %2, i32 noundef %3) #21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !268 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !268 ; 2 uses
  %.not9.i = icmp eq ptr %i.ao, %i.aq
  br i1 %.not9.i, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEZN7CaDiCaL8External14generate_cubesEiiE3$_1ET0_T_SD_SC_.exit", label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZN7CaDiCaL8External22update_molten_literalsEv.exit, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %.sroa.05.010.i = phi ptr [ %i.bd, %_ZNSt6vectorIiSaIiEED2Ev.exit.i ], [ %i.ao, %_ZN7CaDiCaL8External22update_molten_literalsEv.exit ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !210 ; 2 uses
  %i.at = load ptr, ptr %.sroa.05.010.i, align 8, !tbaa !199 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.as, %i.at      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i8
  %i.ax = icmp ugt i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %bb.h, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i, !prof !269

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i:    ; preds = %bb.g
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #23 ; 3 uses
  %.pre.i = load ptr, ptr %.sroa.05.010.i, align 8, !tbaa !58 ; 2 uses
  %.pre11.i = load ptr, ptr %i.ar, align 8, !tbaa !58
  %.pre12.i = ptrtoint ptr %.pre11.i to i64
  %.pre13.i = ptrtoint ptr %.pre.i to i64
  %.pre = sub i64 %.pre12.i, %.pre13.i            ; 3 uses
  %i.az = icmp sgt i64 %.pre, 4
  br i1 %i.az, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i.thread, !prof !270

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %.pre.i, i64 %.pre, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i.thread: ; preds = %.lr.ph.i8, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i
  %i.ba = phi ptr [ %i.ay, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i ], [ null, %.lr.ph.i8 ]
  %.pre-phi19 = phi i64 [ %.pre, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i ], [ 0, %.lr.ph.i8 ]
  %i.bb = icmp ne i64 %.pre-phi19, 4
  %or.cond.i9 = and i1 %i.bb, %.not.i.i.i.i.i
  br i1 %or.cond.i9, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i:       ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i.thread
  %i.bc = phi ptr [ %i.ba, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i.thread ], [ %i.ay, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.aw) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 24 ; 2 uses
  %.not.i10 = icmp eq ptr %i.bd, %i.aq
  br i1 %.not.i10, label %"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEZN7CaDiCaL8External14generate_cubesEiiE3$_1ET0_T_SD_SC_.exit", label %.lr.ph.i8, !llvm.loop !266

"_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEZN7CaDiCaL8External14generate_cubesEiiE3$_1ET0_T_SD_SC_.exit": ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %_ZN7CaDiCaL8External22update_molten_literalsEv.exit
  ret void
}

declare void @_ZN7CaDiCaL8Internal14generate_cubesEii(ptr dead_on_unwind writable sret(%"struct.CaDiCaL::CubesWithStatus") align 8, ptr noundef nonnull align 8 dereferenceable(7296), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN7CaDiCaL19fatal_message_startEv() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

declare void @_ZN7CaDiCaL17fatal_message_endEv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN7CaDiCaL6SolverC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare void @_ZN7CaDiCaL6Solver6prefixEPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

declare void @_ZN7CaDiCaL6Solver3addEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN7CaDiCaL6Solver5solveEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8External36traverse_all_frozen_units_as_clausesERNS_14ClauseIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i8, ptr %i.b, align 4, !tbaa !236, !range !216, !noundef !217
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !217, !align !234
  %i.g = load i32, ptr %i.f, align 4, !tbaa !211  ; 2 uses
  %.not3134 = icmp eq i32 %i.g, 0
  br i1 %.not3134, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8External6frozenEi.exit.thread
  %i.n = phi ptr [ null, %.lr.ph ], [ %6, %_ZN7CaDiCaL8External6frozenEi.exit.thread ] ; 9 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %7, %_ZN7CaDiCaL8External6frozenEi.exit.thread ] ; 9 uses
  %.sroa.024.035 = phi i32 [ 1, %.lr.ph ], [ %i.bu, %_ZN7CaDiCaL8External6frozenEi.exit.thread ] ; 6 uses
  %i.p = call i32 @llvm.abs.i32(i32 %.sroa.024.035, i1 true) ; 3 uses
  %i.q = load i32, ptr %i.h, align 8, !tbaa !52
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !203  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2
  %i.y = trunc i64 %i.x to i32
  %.not.i = icmp slt i32 %i.p, %i.y
  br i1 %.not.i, label %_ZN7CaDiCaL8External6frozenEi.exit, label %_ZN7CaDiCaL8External6frozenEi.exit.thread

_ZN7CaDiCaL8External6frozenEi.exit:               ; preds = %bb.d
  %i.z = zext nneg i32 %i.p to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !211
  %.not32 = icmp eq i32 %i.ab, 0
  br i1 %.not32, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN7CaDiCaL8External6frozenEi.exit
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !199
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !211 ; 4 uses
  %.not.i19 = icmp eq i32 %i.ae, 0
  br i1 %.not.i19, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp slt i32 %.sroa.024.035, 0
  %i.ag = sub nsw i32 0, %i.ae
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 %i.ae
  %i.ah = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ai = call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 472
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !225
  %i.al = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !226 ; 2 uses
  %.not.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %3 = sext i8 %i.an to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 712
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !227
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.al
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !229
  %.not9.i.i = icmp eq i32 %i.ar, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 %3, i32 0
  br label %_ZNK7CaDiCaL8External5fixedEi.exit

_ZNK7CaDiCaL8External5fixedEi.exit:               ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ 0, %bb.f ], [ %spec.select.i.i, %bb.g ] ; 2 uses
  %4 = icmp slt i32 %spec.select.i, 0
  %5 = sub nsw i32 0, %.0.i.i
  %spec.select10.i.i = select i1 %4, i32 %5, i32 %.0.i.i ; 2 uses
  %.not = icmp eq i32 %spec.select10.i.i, 0
  br i1 %.not, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK7CaDiCaL8External5fixedEi.exit
  %i.as = icmp slt i32 %spec.select10.i.i, 0
  %i.at = sub nsw i32 0, %.sroa.024.035
  %i.au = select i1 %i.as, i32 %i.at, i32 %.sroa.024.035 ; 2 uses
  %i.av = load ptr, ptr %i.m, align 8, !tbaa !200
  %.not.i20 = icmp eq ptr %i.o, %i.av
  br i1 %.not.i20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.au, ptr %i.o, align 4, !tbaa !211
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !210
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 5 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775804
  br i1 %i.ba, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bb = ashr exact i64 %i.az, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951)
  %i.bf = select i1 %i.bd, i64 2305843009213693951, i64 %i.be ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #23 ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.az ; 2 uses
  store i32 %i.au, ptr %i.bi, align 4, !tbaa !211
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr align 4 %i.n, i64 %i.az, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !200
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.bn) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !199
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !210
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bo, ptr %i.m, align 8, !tbaa !200
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bp = load ptr, ptr %1, align 8, !tbaa !231
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !199 ; 6 uses
  br i1 %i.bs, label %bb.n, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !210 ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.bt, %.pre.pre
  br i1 %.not.i.i21, label %_ZN7CaDiCaL8External6frozenEi.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.pre.pre, ptr %i.l, align 8, !tbaa !210
  br label %_ZN7CaDiCaL8External6frozenEi.exit.thread

_ZN7CaDiCaL8External6frozenEi.exit.thread:        ; preds = %bb.e, %bb.d, %bb.c, %_ZN7CaDiCaL8External6frozenEi.exit, %_ZNK7CaDiCaL8External5fixedEi.exit, %bb.n, %bb.o
  %6 = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.c ], [ %i.n, %_ZN7CaDiCaL8External6frozenEi.exit ], [ %i.n, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ %.pre.pre, %bb.n ], [ %.pre.pre, %bb.o ] ; 2 uses
  %7 = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ %i.o, %_ZN7CaDiCaL8External6frozenEi.exit ], [ %i.o, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ %i.bt, %bb.n ], [ %.pre.pre, %bb.o ]
  %i.bu = add i32 %.sroa.024.035, 1
  %.not31 = icmp eq i32 %.sroa.024.035, %i.g
  br i1 %.not31, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.c

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZN7CaDiCaL8External6frozenEi.exit.thread
  %i.bv = phi ptr [ %6, %_ZN7CaDiCaL8External6frozenEi.exit.thread ], [ %.pre.pre, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.not31.lcssa = phi i1 [ true, %_ZN7CaDiCaL8External6frozenEi.exit.thread ], [ false, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !200
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.p
  %.not31.lcssa49 = phi i1 [ %.not31.lcssa, %bb.p ], [ %.not31.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.6 = phi i1 [ %.not31.lcssa49, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8External42traverse_all_non_frozen_units_as_witnessesERNS_15WitnessIteratorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i8, ptr %i.b, align 4, !tbaa !236, !range !216, !noundef !217
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233, !nonnull !217, !align !234
  %i.g = load i32, ptr %i.f, align 4, !tbaa !211  ; 2 uses
  %.not3639 = icmp eq i32 %i.g, 0
  br i1 %.not3639, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK7CaDiCaL8External5fixedEi.exit.thread
  %i.n = phi ptr [ null, %.lr.ph ], [ %6, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ] ; 8 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %7, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ] ; 8 uses
  %.sroa.028.040 = phi i32 [ 1, %.lr.ph ], [ %i.cn, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ] ; 7 uses
  %i.p = call i32 @llvm.abs.i32(i32 %.sroa.028.040, i1 true) ; 3 uses
  %i.q = load i32, ptr %i.h, align 8, !tbaa !52
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !232
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !203  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2
  %i.y = trunc i64 %i.x to i32
  %.not.i = icmp slt i32 %i.p, %i.y
  %i.z = zext nneg i32 %i.p to i64                ; 2 uses
  br i1 %.not.i, label %_ZN7CaDiCaL8External6frozenEi.exit, label %.thread

_ZN7CaDiCaL8External6frozenEi.exit:               ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !211
  %.not37 = icmp eq i32 %i.ab, 0
  br i1 %.not37, label %.thread, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

.thread:                                          ; preds = %bb.d, %_ZN7CaDiCaL8External6frozenEi.exit
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !199 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !211 ; 4 uses
  %.not.i23 = icmp eq i32 %i.ae, 0
  br i1 %.not.i23, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.af = icmp slt i32 %.sroa.028.040, 0
  %i.ag = sub nsw i32 0, %i.ae
  %spec.select.i = select i1 %i.af, i32 %i.ag, i32 %i.ae
  %i.ah = load ptr, ptr %0, align 8, !tbaa !51    ; 4 uses
  %i.ai = call i32 @llvm.abs.i32(i32 %i.ae, i1 true)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 472
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !225
  %i.al = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !226 ; 2 uses
  %.not.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i, label %_ZNK7CaDiCaL8External5fixedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = sext i8 %i.an to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 712
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !227
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.al
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !229
  %.not9.i.i = icmp eq i32 %i.ar, 0
  %spec.select.i.i = select i1 %.not9.i.i, i32 %3, i32 0
  br label %_ZNK7CaDiCaL8External5fixedEi.exit

_ZNK7CaDiCaL8External5fixedEi.exit:               ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ 0, %bb.e ], [ %spec.select.i.i, %bb.f ] ; 2 uses
  %4 = icmp slt i32 %spec.select.i, 0
  %5 = sub nsw i32 0, %.0.i.i
  %spec.select10.i.i = select i1 %4, i32 %5, i32 %.0.i.i ; 2 uses
  %.not = icmp eq i32 %spec.select10.i.i, 0
  br i1 %.not, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK7CaDiCaL8External5fixedEi.exit
  %i.as = icmp slt i32 %spec.select10.i.i, 0      ; 2 uses
  %i.at = sub nsw i32 0, %.sroa.028.040
  %i.au = select i1 %i.as, i32 %i.at, i32 %.sroa.028.040 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 344
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !223, !range !216, !noundef !217
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = sext i32 %.sroa.028.040 to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !211 ; 3 uses
  %i.bb = sub nsw i32 0, %i.ba
  %i.bc = select i1 %i.as, i32 %i.bb, i32 %i.ba
  %i.bd = call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.be = call noundef i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bc, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  %i.bg = zext i32 %i.be to i64
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !205
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !212
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bk = phi i64 [ %i.bj, %bb.h ], [ 1, %bb.g ]
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !200
  %.not.i24 = icmp eq ptr %i.o, %i.bl
  br i1 %.not.i24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.au, ptr %i.o, align 4, !tbaa !211
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.bm, ptr %i.l, align 8, !tbaa !210
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.k:                                             ; preds = %bb.i
  %i.bn = ptrtoint ptr %i.o to i64
  %i.bo = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 5 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775804
  br i1 %i.bq, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.br = ashr exact i64 %i.bp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951)
  %i.bv = select i1 %i.bt, i64 2305843009213693951, i64 %i.bu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bw = shl nuw nsw i64 %i.bv, 2
  %i.bx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #23 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store i32 %i.au, ptr %i.by, align 4, !tbaa !211
  %i.bz = icmp sgt i64 %i.bp, 0
  br i1 %i.bz, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr align 4 %i.n, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !200
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.cd) #20
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bx, ptr %2, align 8, !tbaa !199
  store ptr %i.ca, ptr %i.l, align 8, !tbaa !210
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.ce, ptr %i.m, align 8, !tbaa !200
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.cf = load i32, ptr %i.h, align 8, !tbaa !52
  %i.cg = sext i32 %i.cf to i64
  %i.ch = add nsw i64 %i.bk, %i.cg
  %i.ci = load ptr, ptr %1, align 8, !tbaa !231
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ch) #21
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !199 ; 6 uses
  br i1 %i.cl, label %bb.o, label %_ZNSt6vectorIiSaIiEE5clearEv.exit

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !210 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.cm, %.pre.pre
  br i1 %.not.i.i25, label %_ZNK7CaDiCaL8External5fixedEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %.pre.pre, ptr %i.l, align 8, !tbaa !210
  br label %_ZNK7CaDiCaL8External5fixedEi.exit.thread

_ZNK7CaDiCaL8External5fixedEi.exit.thread:        ; preds = %bb.c, %.thread, %_ZN7CaDiCaL8External6frozenEi.exit, %_ZNK7CaDiCaL8External5fixedEi.exit, %bb.o, %bb.p
  %6 = phi ptr [ %i.n, %bb.c ], [ %i.n, %.thread ], [ %i.n, %_ZN7CaDiCaL8External6frozenEi.exit ], [ %i.n, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ %.pre.pre, %bb.o ], [ %.pre.pre, %bb.p ] ; 2 uses
  %7 = phi ptr [ %i.o, %bb.c ], [ %i.o, %.thread ], [ %i.o, %_ZN7CaDiCaL8External6frozenEi.exit ], [ %i.o, %_ZNK7CaDiCaL8External5fixedEi.exit ], [ %i.cm, %bb.o ], [ %.pre.pre, %bb.p ]
  %i.cn = add i32 %.sroa.028.040, 1
  %.not36 = icmp eq i32 %.sroa.028.040, %i.g
  br i1 %.not36, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.c

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNK7CaDiCaL8External5fixedEi.exit.thread
  %i.co = phi ptr [ %6, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ], [ %.pre.pre, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.not36.lcssa = phi i1 [ true, %_ZNK7CaDiCaL8External5fixedEi.exit.thread ], [ false, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !200
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.q
  %.not36.lcssa55 = phi i1 [ %.not36.lcssa, %bb.q ], [ %.not36.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.6 = phi i1 [ %.not36.lcssa55, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK7CaDiCaL8External10copy_flagsERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 760
  %i.c = load ptr, ptr %1, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 760
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !211
  %i.h = load i32, ptr %i.e, align 8, !tbaa !211
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %.not25 = icmp eq i32 %i.i, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = add i32 %i.i, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.l, i32 2)
  %wide.trip.count = zext i32 %umax to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !199
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !211  ; 2 uses
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !199
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !211  ; 2 uses
  %.not22 = icmp eq i32 %i.r, 0
  br i1 %.not22, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 760
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.x = getelementptr inbounds nuw [6 x i8], ptr %i.w, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.z = load i8, ptr %i.y, align 1
  %.mask.i.i = and i8 %i.z, -32
  %i.aa = icmp eq i8 %.mask.i.i, 32
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %1, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 760
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !218
  %i.ag = getelementptr inbounds nuw [6 x i8], ptr %i.af, i64 %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 5
  %i.ai = load i8, ptr %i.ah, align 1
  %.mask.i.i23 = and i8 %i.ai, -32
  %i.aj = icmp eq i8 %.mask.i.i23, 32
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.al = getelementptr inbounds nuw [6 x i8], ptr %i.ak, i64 %i.v ; 9 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !218
  %i.an = getelementptr inbounds nuw [6 x i8], ptr %i.am, i64 %i.ae ; 10 uses
  %i.ao = load i16, ptr %i.al, align 1
  %.lobit.i = and i16 %i.ao, 64
  %i.ap = load i16, ptr %i.an, align 1
  %i.aq = and i16 %i.ap, -65
  %i.ar = or disjoint i16 %i.aq, %.lobit.i        ; 2 uses
  store i16 %i.ar, ptr %i.an, align 1
  %i.as = load i16, ptr %i.al, align 1
  %.lobit10.i = and i16 %i.as, 128
  %i.at = and i16 %i.ar, -129
  %i.au = or disjoint i16 %i.at, %.lobit10.i      ; 2 uses
  store i16 %i.au, ptr %i.an, align 1
  %i.av = load i16, ptr %i.al, align 1
  %.lobit11.i = and i16 %i.av, 256
  %i.aw = and i16 %i.au, -257
  %i.ax = or disjoint i16 %i.aw, %.lobit11.i      ; 2 uses
  store i16 %i.ax, ptr %i.an, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = and i8 %i.bc, -4
  %i.be = or disjoint i8 %i.bd, %i.ba
  store i8 %i.be, ptr %i.bb, align 1
  %i.bf = load i16, ptr %i.al, align 1
  %.lobit12.i = and i16 %i.bf, 512
  %i.bg = and i16 %i.ax, -513
  %i.bh = or disjoint i16 %.lobit12.i, %i.bg      ; 2 uses
  store i16 %i.bh, ptr %i.an, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !273, !range !216, !noundef !217
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !273
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !274, !range !216, !noundef !217
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !274
  %i.bo = load i16, ptr %i.al, align 1
  %.lobit13.i = and i16 %i.bo, 32
  %i.bp = and i16 %i.bh, -33
  %i.bq = or disjoint i16 %.lobit13.i, %i.bp      ; 2 uses
  store i16 %i.bq, ptr %i.an, align 1
  %i.br = load i16, ptr %i.al, align 1
  %i.bs = and i16 %i.br, 24576
  %i.bt = and i16 %i.bq, -24577
  %i.bu = or disjoint i16 %i.bt, %i.bs
  store i16 %i.bu, ptr %i.an, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %._crit_edge, label %bb.b, !llvm.loop !271
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External27export_learned_empty_clauseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 0) #21
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !231
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i32 noundef 0) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8External26export_learned_unit_clauseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(616) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef 1) #21
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !51
  %i.h = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.j = zext nneg i32 %i.h to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !199
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.j
  %i.m = load i32, ptr %i.l, align 4, !tbaa !211  ; 2 uses
  %i.n = icmp slt i32 %1, 0
  %i.o = sub nsw i32 0, %i.m
end_hunk_4
