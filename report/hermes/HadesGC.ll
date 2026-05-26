inline.NumInlined: 3052
inline.NumDeleted: 1336
begin_hunk_0_@_ZN6hermes2vm7HadesGC30addSegmentExtentToCrashManagerERKNS1_11HeapSegmentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !275, !noalias !490 ; 2 uses
  %i.u = load i64, ptr %i.i, align 8, !tbaa !275, !noalias !490
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.t
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #37, !noalias !490
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !274, !noalias !490
  %i.y = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.x, i64 noundef %i.t) #35, !noalias !490 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !273, !alias.scope !490
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !274 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !275 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.aa, ptr %3, align 8, !tbaa !274, !alias.scope !490
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !59
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !59, !alias.scope !490
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !275
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = phi i64 [ %i.ae, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !275, !alias.scope !490
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !274
  store i64 0, ptr %i.aj, align 8, !tbaa !275
  store i8 0, ptr %i.ab, align 8, !tbaa !59
  %i.al = load ptr, ptr %4, align 8, !tbaa !274   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.h
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.an = load i64, ptr %i.h, align 8, !tbaa !59
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.ap = load ptr, ptr %1, align 8, !tbaa !108
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 18, ptr noundef nonnull @.str.18, ptr noundef %i.ap) #35 ; 0 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !274
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !222
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef %i.as, ptr noundef nonnull %i.a) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.aw = load ptr, ptr %3, align 8, !tbaa !274   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.z
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.z, align 8, !tbaa !59
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC17finalizeCompacteeEv(ptr noundef nonnull align 8 dereferenceable(8112) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8080 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 86016 ; 2 uses
  %i.g = icmp ult ptr %i.f, %i.d
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63, !nonnull !61
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.041 = phi ptr [ %i.f, %.lr.ph ], [ %.1, %bb.g ] ; 3 uses
  %.02040 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.g ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %.041, align 4, !tbaa !3 ; 5 uses
  %i.k = trunc i32 %.sroa.0.0.copyload.i.i.i to i1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.m, %i.j
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 16777215                   ; 2 uses
  %i.r = add i32 %i.q, %.02040
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.s = and i32 %.sroa.0.0.copyload.i.i.i, 16777214 ; 3 uses
  %.mask.i.i.i.i.i.i.i = and i32 %.sroa.0.0.copyload.i.i.i, -16777216
  %i.t = icmp eq i32 %.mask.i.i.i.i.i.i.i, 33554432
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = lshr i32 %.sroa.0.0.copyload.i.i.i, 24
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !131
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !138  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNK6hermes2vm6VTable16finalizeIfExistsEPNS0_6GCCellERNS0_7HadesGCE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.z(ptr noundef nonnull %.041, ptr noundef nonnull align 8 dereferenceable(8112) %0) #35, !inline_history !139
  br label %_ZNK6hermes2vm6VTable16finalizeIfExistsEPNS0_6GCCellERNS0_7HadesGCE.exit

_ZNK6hermes2vm6VTable16finalizeIfExistsEPNS0_6GCCellERNS0_7HadesGCE.exit: ; preds = %bb.e, %bb.f
  %i.aa = add i32 %i.s, %.02040
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZNK6hermes2vm6VTable16finalizeIfExistsEPNS0_6GCCellERNS0_7HadesGCE.exit, %bb.c
  %.2 = phi i32 [ %i.r, %bb.c ], [ %.02040, %bb.d ], [ %i.aa, %_ZNK6hermes2vm6VTable16finalizeIfExistsEPNS0_6GCCellERNS0_7HadesGCE.exit ] ; 2 uses
  %.pn.in = phi i32 [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.s, %_ZNK6hermes2vm6VTable16finalizeIfExistsEPNS0_6GCCellERNS0_7HadesGCE.exit ]
  %.pn = zext nneg i32 %.pn.in to i64
  %.1 = getelementptr inbounds nuw i8, ptr %.041, i64 %.pn ; 2 uses
  %i.ab = icmp ult ptr %.1, %i.d
  br i1 %i.ab, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !493

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !278
  %.pre47 = load ptr, ptr %.pre, align 8, !tbaa !108
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ac = phi ptr [ %i.e, %bb.a ], [ %.pre47, %._crit_edge.loopexit ]
  %.020.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %._crit_edge.loopexit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.ae = sub nsw i32 0, %.020.lcssa
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.ai = add i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !27
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !284 ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !281 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !302
  %.not.i22 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  store i64 %i.ak, ptr %i.an, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !281
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.i:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !282 ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 6 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.j, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.aw = ashr exact i64 %i.au, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i, %i.aw ; 2 uses
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #36 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.au ; 2 uses
  store i64 %i.ak, ptr %i.bb, align 8, !tbaa !51
  %i.bc = icmp sgt i64 %i.au, 0
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ar, i64 %i.au, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.au) #38
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ba, ptr %i.al, align 8, !tbaa !282
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !281
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.be, ptr %i.ao, align 8, !tbaa !302
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.h, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.bf = icmp ult i32 %i.aj, 10
  br i1 %i.bf, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.r
  %.02229.i.i = phi i64 [ %i.bm, %bb.r ], [ %i.ak, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.bn, %bb.r ], [ 1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.bg = icmp samesign ult i64 %.02229.i.i, 100
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bh = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bi = icmp samesign ult i64 %.02229.i.i, 1000
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bk = icmp samesign ult i64 %.02229.i.i, 10000
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bm = udiv i64 %.02229.i.i, 10000
  %i.bn = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.bo = icmp samesign ult i64 %.02229.i.i, 100000
  br i1 %i.bo, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !289

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.0.i.i = phi i32 [ %i.bl, %bb.q ], [ %i.bh, %bb.m ], [ %i.bj, %bb.o ], [ 1, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.bn, %bb.r ]
  %i.bp = zext i32 %.0.i.i to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.bq, ptr %1, align 8, !tbaa !273, !alias.scope !494
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bp, i8 noundef signext 0) #35
  %i.br = load ptr, ptr %1, align 8, !tbaa !274, !alias.scope !494 ; 4 uses
  %i.bs = icmp ugt i32 %i.aj, 99
  br i1 %i.bs, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !275, !alias.scope !494
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = add i32 %i.bv, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bz, %.lr.ph.i2.i ], [ %i.ak, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cj, %.lr.ph.i2.i ], [ %i.bw, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bx = urem i64 %.020.i.i, 100
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.by ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !59, !noalias !494
  %i.cd = zext i32 %.01819.i.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cd
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !59
  %i.cf = load i8, ptr %i.ca, align 2, !tbaa !59, !noalias !494
  %i.cg = add i32 %.01819.i.i, -1
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.ch
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !59
  %i.cj = add i32 %.01819.i.i, -2
  %i.ck = icmp samesign ugt i64 %.020.i.i, 9999
  br i1 %i.ck, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !290

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.ak, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.bz, %.lr.ph.i2.i ] ; 3 uses
  %i.cl = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.cl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.cm = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.cn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !59, !noalias !494
  %i.cq = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !59
  %i.cr = load i8, ptr %i.cn, align 2, !tbaa !59, !noalias !494
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.cs = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ct = or disjoint i8 %i.cs, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.s, %bb.t
  %storemerge.i.i = phi i8 [ %i.ct, %bb.t ], [ %i.cr, %bb.s ]
  store i8 %storemerge.i.i, ptr %i.br, align 1, !tbaa !59
  call void @_ZN6hermes2vm7HadesGC35removeSegmentExtentFromCrashManagerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.cu = load ptr, ptr %1, align 8, !tbaa !274   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bq
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.cw = load i64, ptr %i.bq, align 8, !tbaa !59
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx119to_stringEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.cy, ptr %2, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cy, ptr noundef nonnull align 1 dereferenceable(7) @.str.22, i64 7, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 7, ptr %i.cz, align 8, !tbaa !275
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 23
  store i8 0, ptr %i.da, align 1, !tbaa !59
  call void @_ZN6hermes2vm7HadesGC35removeSegmentExtentFromCrashManagerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8112) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.db = load ptr, ptr %2, align 8, !tbaa !274   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cy
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dd = load i64, ptr %i.cy, align 8, !tbaa !59
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8, !tbaa !268
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8056
  store i32 1, ptr %i.df, align 8, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8064
  store ptr inttoptr (i64 1 to ptr), ptr %i.dg, align 8, !tbaa !269
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8072
  store i32 1, ptr %i.dh, align 8, !tbaa !3
  store ptr null, ptr %i.a, align 8, !tbaa !126
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8088 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !217 ; 8 uses
  store ptr null, ptr %i.di, align 8, !tbaa !217
  %.not.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes2vm7HadesGC14CompacteeStateD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.dk, align 8, !tbaa !219
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !221
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !222
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #35, !inline_history !497
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !222
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #35, !inline_history !497
  br label %_ZN6hermes2vm7HadesGC14CompacteeStateD2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.x ], [ %i.dx, %bb.y ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.z, label %_ZN6hermes2vm7HadesGC14CompacteeStateD2Ev.exit, !prof !137

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #35
  br label %_ZN6hermes2vm7HadesGC14CompacteeStateD2Ev.exit

_ZN6hermes2vm7HadesGC14CompacteeStateD2Ev.exit:   ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC35removeSegmentExtentFromCrashManagerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #5 align 2 {
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7HadesGC35removeSegmentExtentFromCrashManagerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #38
  %.pre = load ptr, ptr %2, align 8, !tbaa !274
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.ap = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2 ], [ %i.ah, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !218 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !222
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ap) #35
  %i.au = load ptr, ptr %2, align 8, !tbaa !274   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.y
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = load i64, ptr %i.y, align 8, !tbaa !59
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes2vm7HadesGC21updateOldGenThresholdEv(ptr noundef nonnull align 8 captures(none) dereferenceable(8112) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7640
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  %i.d = load i64, ptr %i.c, align 8, !tbaa !455
  %i.e = uitofp i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !145
  %i.j = uitofp i64 %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = uitofp i64 %i.l to double
  %i.n = fsub double %i.m, %i.j                   ; 2 uses
  %i.o = fcmp olt double %i.n, 1.000000e+00
  %.sroa.speculated8 = select i1 %i.o, double 1.000000e+00, double %i.n
  %i.p = fdiv double %i.e, %.sroa.speculated8     ; 2 uses
  %i.q = fcmp ogt double %i.p, 2.000000e+01
  %.sroa.speculated = select i1 %i.q, double 2.000000e+01, double %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7672
  %i.s = fadd double %.sroa.speculated, 1.000000e+00
  %i.t = fdiv double %.sroa.speculated, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7680 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !203
  %i.w = load double, ptr %i.r, align 8, !tbaa !204 ; 2 uses
  %i.x = fsub double 1.000000e+00, %i.w
  %i.y = fmul double %i.w, %i.t
  %i.z = tail call double @llvm.fmuladd.f64(double %i.v, double %i.x, double %i.y)
  store double %i.z, ptr %i.u, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8112) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7640 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_7HadesGC21markWeakMapEntrySlotsEvE3$_0EEvT_.exit", %bb.a
  %.018.i = load ptr, ptr %i.a, align 8, !tbaa !507 ; 2 uses
  %.not19.i = icmp eq ptr %.018.i, null
  br i1 %.not19.i, label %"_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_7HadesGC21markWeakMapEntrySlotsEvE3$_0EEvT_.exit", label %.preheader.i

.loopexit.i:                                      ; preds = %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i"
  %.0.i = load ptr, ptr %.020.i, align 8, !tbaa !507 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %"_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_7HadesGC21markWeakMapEntrySlotsEvE3$_0EEvT_.exit", label %.preheader.i, !llvm.loop !508

.preheader.i:                                     ; preds = %bb.b, %.loopexit.i
  %.020.i = phi ptr [ %.0.i, %.loopexit.i ], [ %.018.i, %bb.b ] ; 3 uses
  %.012.ptr15.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i", %.preheader.i
  %.012.ptr17.i = phi ptr [ %.012.ptr15.i, %.preheader.i ], [ %.012.ptr.i, %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i" ] ; 4 uses
  %.012.idx16.i = phi i64 [ 8, %.preheader.i ], [ %.012.add.i, %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i" ]
  %i.d = load atomic i8, ptr %.012.ptr17.i monotonic, align 1, !range !257, !noundef !61
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.012.ptr17.i, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !107  ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.012.ptr17.i, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !107  ; 2 uses
  %.not1.i.i = icmp eq i32 %i.i, 0
  br i1 %.not1.i.i, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !63, !nonnull !61
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = zext i32 %i.i to i64
  %i.m = add i64 %i.k, %i.l                       ; 2 uses
  %i.n = and i64 %i.m, -4194304
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16384 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.m, %i.q
  %i.s = ashr i64 %i.r, 3                         ; 2 uses
  %i.t = and i64 %i.s, 63
  %i.u = shl nuw i64 1, %i.t
  %i.v = lshr i64 %i.s, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !51
  %i.y = and i64 %i.u, %i.x
  %.not2.i.i = icmp eq i64 %i.y, 0
  br i1 %.not2.i.i, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = zext i32 %i.g to i64
  %i.aa = add i64 %i.k, %i.z                      ; 2 uses
  %i.ab = and i64 %i.aa, -4194304
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16384 ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.aa, %i.ae
  %i.ag = ashr i64 %i.af, 3                       ; 2 uses
  %i.ah = and i64 %i.ag, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = lshr i64 %i.ag, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51
  %i.am = and i64 %i.al, %i.ai
  %.not3.i.i = icmp eq i64 %i.am, 0
  br i1 %.not3.i.i, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !294 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.ptr17.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !509 ; 6 uses
  %i.aq = icmp ugt i64 %i.ap, -844424930131969
  br i1 %i.aq, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ar = and i64 %i.ap, 281474976710655          ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = and i64 %i.ap, 281474972516352
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16384 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub nsw i64 %i.ar, %i.aw
  %i.ay = ashr i64 %i.ax, 3                       ; 2 uses
  %i.az = and i64 %i.ay, 63
  %i.ba = shl nuw i64 1, %i.az                    ; 2 uses
  %i.bb = lshr i64 %i.ay, 6
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bb ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !51 ; 2 uses
  %i.be = and i64 %i.bd, %i.ba
  %.not.i19 = icmp eq i64 %i.be, 0
  br i1 %.not.i19, label %bb.j, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i"

bb.j:                                             ; preds = %bb.i
  %i.bf = or i64 %i.bd, %i.ba
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !292 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !299
  %.not.i.i.i.i20 = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i.i.i.i20, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.as, ptr %i.bi, align 8, !tbaa !350
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !292
  br label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i"

bb.l:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !291 ; 4 uses
  %i.bn = ptrtoint ptr %i.bi to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.m, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.l
  %i.br = ashr exact i64 %i.bp, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.br ; 2 uses
  %i.bt = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #36 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bp ; 2 uses
  store ptr %i.as, ptr %i.bw, align 8, !tbaa !350
  %i.bx = icmp sgt i64 %i.bp, 0
  br i1 %i.bx, label %bb.n, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bp) #38
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i.i
  store ptr %i.bv, ptr %i.bg, align 8, !tbaa !291
  store ptr %i.by, ptr %i.bh, align 8, !tbaa !292
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.bz, ptr %i.bj, align 8, !tbaa !299
  br label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i"

bb.p:                                             ; preds = %bb.h
  %.mask.i.i.i.i = and i64 %i.ap, -140737488355328
  %i.ca = icmp eq i64 %.mask.i.i.i.i, -1266637395197952
  br i1 %i.ca, label %bb.q, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i"

bb.q:                                             ; preds = %bb.p
  %i.cb = trunc i64 %i.ap to i32                  ; 2 uses
  %i.cc = and i32 %i.cb, 268435455                ; 2 uses
  %i.cd = icmp ult i32 %i.cb, 536870910
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 1160
  %i.cf = load i32, ptr %i.ce, align 8
  %.not.i.i.i.i = icmp ult i32 %i.cc, %i.cf
  %or.cond.i.i.i.i = select i1 %i.cd, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.r, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i"

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 1144
  %i.ch = lshr i32 %i.cc, 6
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !295
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  %i.cl = and i64 %i.ap, 63
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = load i64, ptr %i.ck, align 8, !tbaa !51
  %i.co = or i64 %i.cn, %i.cm
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !51
  br label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i"

"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_0clERNS0_16WeakMapEntrySlotE.exit.i": ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.k, %bb.i, %bb.r, %bb.q, %bb.p, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.012.add.i = add nuw nsw i64 %.012.idx16.i, 24 ; 3 uses
  %.012.ptr.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 %.012.add.i
  %.not13.i = icmp eq i64 %.012.add.i, 392
  br i1 %.not13.i, label %.loopexit.i, label %bb.c

"_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_7HadesGC21markWeakMapEntrySlotsEvE3$_0EEvT_.exit": ; preds = %.loopexit.i, %bb.b
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !294 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !397
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !397
  %i.cu = icmp eq ptr %i.cr, %i.ct
  %i.cv = tail call noundef zeroext i1 @_ZN6hermes2vm7HadesGC12MarkAcceptor13drainSomeWorkEm(ptr noundef nonnull align 8 dereferenceable(1208) %i.cp, i64 noundef -1) ; 0 uses
  br i1 %i.cu, label %bb.s, label %bb.b, !llvm.loop !511

bb.s:                                             ; preds = %"_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_7HadesGC21markWeakMapEntrySlotsEvE3$_0EEvT_.exit"
  %.018.i2 = load ptr, ptr %i.a, align 8, !tbaa !507 ; 2 uses
  %.not19.i3 = icmp eq ptr %.018.i2, null
  br i1 %.not19.i3, label %"_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_7HadesGC21markWeakMapEntrySlotsEvE3$_1EEvT_.exit", label %.preheader.i5

.loopexit.i16:                                    ; preds = %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_1clERNS0_16WeakMapEntrySlotE.exit.i"
  %.0.i17 = load ptr, ptr %.020.i6, align 8, !tbaa !507 ; 2 uses
  %.not.i18 = icmp eq ptr %.0.i17, null
  br i1 %.not.i18, label %"_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_7HadesGC21markWeakMapEntrySlotsEvE3$_1EEvT_.exit", label %.preheader.i5, !llvm.loop !512

.preheader.i5:                                    ; preds = %bb.s, %.loopexit.i16
  %.020.i6 = phi ptr [ %.0.i17, %.loopexit.i16 ], [ %.018.i2, %bb.s ] ; 3 uses
  %.012.ptr15.i7 = getelementptr inbounds nuw i8, ptr %.020.i6, i64 8
  %i.cw = load ptr, ptr %i.b, align 8, !nonnull !61
  %i.cx = ptrtoint ptr %i.cw to i64               ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_1clERNS0_16WeakMapEntrySlotE.exit.i", %.preheader.i5
  %.012.ptr17.i8 = phi ptr [ %.012.ptr15.i7, %.preheader.i5 ], [ %.012.ptr.i14, %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_1clERNS0_16WeakMapEntrySlotE.exit.i" ] ; 4 uses
  %.012.idx16.i9 = phi i64 [ 8, %.preheader.i5 ], [ %.012.add.i13, %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_1clERNS0_16WeakMapEntrySlotE.exit.i" ]
  %i.cy = load atomic i8, ptr %.012.ptr17.i8 monotonic, align 1, !range !257, !noundef !61
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_1clERNS0_16WeakMapEntrySlotE.exit.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %.012.ptr17.i8, i64 8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !107 ; 2 uses
  %.not.i.i10 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i10, label %.sink.split.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.ptr17.i8, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !107 ; 2 uses
  %.not2.i.i11 = icmp eq i32 %i.dd, 0
  br i1 %.not2.i.i11, label %.sink.split.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = zext i32 %i.db to i64
  %i.df = add i64 %i.cx, %i.de                    ; 2 uses
  %i.dg = and i64 %i.df, -4194304
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16384 ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.df, %i.dj
  %i.dl = ashr i64 %i.dk, 3                       ; 2 uses
  %i.dm = and i64 %i.dl, 63
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = lshr i64 %i.dl, 6
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !51
  %i.dr = and i64 %i.dn, %i.dq
  %.not3.i.i12 = icmp eq i64 %i.dr, 0
  br i1 %.not3.i.i12, label %.sink.split.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ds = zext i32 %i.dd to i64
  %i.dt = add i64 %i.cx, %i.ds                    ; 2 uses
  %i.du = and i64 %i.dt, -4194304
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16384 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dt, %i.dx
  %i.dz = ashr i64 %i.dy, 3                       ; 2 uses
  %i.ea = and i64 %i.dz, 63
  %i.eb = shl nuw i64 1, %i.ea
  %i.ec = lshr i64 %i.dz, 6
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !51
  %i.ef = and i64 %i.ee, %i.eb
  %.not4.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not4.i.i, label %.sink.split.i.i, label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_1clERNS0_16WeakMapEntrySlotE.exit.i"

.sink.split.i.i:                                  ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.ptr17.i8, i64 16
  store i64 -1970324836974592, ptr %i.eg, align 8, !tbaa !509
  br label %"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_1clERNS0_16WeakMapEntrySlotE.exit.i"

"_ZZN6hermes2vm7HadesGC21markWeakMapEntrySlotsEvENK3$_1clERNS0_16WeakMapEntrySlotE.exit.i": ; preds = %.sink.split.i.i, %bb.x, %bb.t
  %.012.add.i13 = add nuw nsw i64 %.012.idx16.i9, 24 ; 3 uses
  %.012.ptr.i14 = getelementptr inbounds nuw i8, ptr %.020.i6, i64 %.012.add.i13
  %.not13.i15 = icmp eq i64 %.012.add.i13, 392
  br i1 %.not13.i15, label %.loopexit.i16, label %bb.t

"_ZNK6hermes18ManagedChunkedListINS_2vm16WeakMapEntrySlotELm16EE7forEachIZNS1_7HadesGC21markWeakMapEntrySlotsEvE3$_1EEvT_.exit": ; preds = %.loopexit.i16, %bb.s
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7HadesGC11finalizeAllEv(ptr noundef nonnull align 8 dereferenceable(8112) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7520 ; 2 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #37
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7632
  store i8 0, ptr %i.c, align 8, !tbaa !248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !397  ; 2 uses
  %.not9.i = icmp eq ptr %i.e, %i.g
  br i1 %.not9.i, label %_ZN6hermes2vm7HadesGC23finalizeYoungGenObjectsEv.exit, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !291 ; 2 uses
  %.pre11.i = load ptr, ptr %i.f, align 8, !tbaa !292
  %i.h = icmp eq ptr %.pre11.i, %.pre.i
  br i1 %i.h, label %_ZN6hermes2vm7HadesGC23finalizeYoungGenObjectsEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  store ptr %.pre.i, ptr %i.f, align 8, !tbaa !292
  br label %_ZN6hermes2vm7HadesGC23finalizeYoungGenObjectsEv.exit

.lr.ph.i:                                         ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.e
  %.sroa.06.010.i = phi ptr [ %i.q, %bb.e ], [ %i.e, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ] ; 2 uses
  %i.i = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !350 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !3 ; 2 uses
  %i.j = trunc i32 %.sroa.0.0.copyload.i.i.i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = lshr i32 %.sroa.0.0.copyload.i.i.i.i, 24
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !131
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !138
  tail call void %i.p(ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(8112) %0) #35, !inline_history !398
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN6hermes2vm7HadesGC23finalizeYoungGenObjectsEv.exit: ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %._crit_edge.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8040 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !267
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !112
  %i.w = add i64 %i.v, %i.t
  store i64 %i.w, ptr %i.u, align 8, !tbaa !112
  store i64 0, ptr %i.r, align 8, !tbaa !267
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @_ZN6hermes2vm18AlignedHeapSegment25clearExternalMemoryChargeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x) #35
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8080
end_hunk_1
begin_hunk_2_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops16_Iter_equals_valIKS7_EEET_SH_SH_T0_St26random_access_iterator_tag:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275  ; 12 uses
  %i.h = and i64 %i.c, -128
  %scevgep = getelementptr i8, ptr %0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %i.g, 0
  %i.j = icmp eq i64 %i.g, 0
  %i.k = icmp eq i64 %i.g, 0
  %i.l = icmp eq i64 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49
  %.055 = phi i64 [ %i.d, %.lr.ph ], [ %i.ao, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49 ] ; 2 uses
  %.sroa.037.054 = phi ptr [ %0, %.lr.ph ], [ %i.an, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49 ] ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !275
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %bb.c, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !274
  %i.q = load ptr, ptr %.sroa.037.054, align 8, !tbaa !274
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.p, i64 %i.g)
  %i.r = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.r, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 32 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !275
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %bb.d, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17: ; preds = %bb.d
  %i.w = load ptr, ptr %2, align 8, !tbaa !274
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !274
  %bcmp.i.i16 = tail call i32 @bcmp(ptr %i.x, ptr %i.w, i64 %i.g)
  %i.y = icmp eq i32 %bcmp.i.i16, 0
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread46, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 64 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !275
  %i.ac = icmp eq i64 %i.ab, %i.g
  br i1 %i.ac, label %bb.e, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19: ; preds = %bb.e
  %i.ad = load ptr, ptr %2, align 8, !tbaa !274
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !274
  %bcmp.i.i18 = tail call i32 @bcmp(ptr %i.ae, ptr %i.ad, i64 %i.g)
  %i.af = icmp eq i32 %bcmp.i.i18, 0
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17.thread47, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 96 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 104
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !275
  %i.aj = icmp eq i64 %i.ai, %i.g
  br i1 %i.aj, label %bb.f, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21: ; preds = %bb.f
  %i.ak = load ptr, ptr %2, align 8, !tbaa !274
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !274
  %bcmp.i.i20 = tail call i32 @bcmp(ptr %i.al, ptr %i.ak, i64 %i.g)
  %i.am = icmp eq i32 %bcmp.i.i20, 0
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19.thread48, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 128
  %i.ao = add nsw i64 %.055, -1
  %i.ap = icmp sgt i64 %.055, 1
  br i1 %i.ap, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !599

._crit_edge.loopexit:                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21.thread49
  %.pre59 = ptrtoint ptr %scevgep to i64
  %.pre60 = sub i64 %i.a, %.pre59
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi61 = phi i64 [ %.pre60, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.sroa.037.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 7 uses
  %i.aq = ashr exact i64 %.pre-phi61, 5
  switch i64 %i.aq, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge56
  ]

._crit_edge._crit_edge56:                         ; preds = %._crit_edge
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre58 = load i64, ptr %.phi.trans.insert57, align 8, !tbaa !275
  br label %bb.k

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !275
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !275 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !275 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i64 %i.as, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23: ; preds = %bb.h
  %i.ax = load ptr, ptr %2, align 8, !tbaa !274
  %i.ay = load ptr, ptr %.sroa.037.0.lcssa, align 8, !tbaa !274
  %bcmp.i.i22 = tail call i32 @bcmp(ptr %i.ay, ptr %i.ax, i64 %i.as)
  %i.az = icmp eq i32 %bcmp.i.i22, 0
  br i1 %i.az, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 32
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50
  %i.bb = phi i64 [ %i.au, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50 ], [ %.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.sroa.037.1 = phi ptr [ %i.ba, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23.thread50 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !275
  %i.be = icmp eq i64 %i.bd, %i.bb
  br i1 %i.be, label %bb.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25: ; preds = %bb.j
  %i.bg = load ptr, ptr %2, align 8, !tbaa !274
  %i.bh = load ptr, ptr %.sroa.037.1, align 8, !tbaa !274
  %bcmp.i.i24 = tail call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bb)
  %i.bi = icmp eq i32 %bcmp.i.i24, 0
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.037.1, i64 32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge56, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51
  %i.bk = phi i64 [ %i.bb, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51 ], [ %.pre58, %._crit_edge._crit_edge56 ] ; 3 uses
  %.sroa.037.2 = phi ptr [ %i.bj, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25.thread51 ], [ %.sroa.037.0.lcssa, %._crit_edge._crit_edge56 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.037.2, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !275
  %i.bn = icmp eq i64 %i.bm, %i.bk
  br i1 %i.bn, label %bb.l, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

bb.l:                                             ; preds = %bb.k
  %i.bo = icmp eq i64 %i.bk, 0
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27: ; preds = %bb.l
  %i.bp = load ptr, ptr %2, align 8, !tbaa !274
  %i.bq = load ptr, ptr %.sroa.037.2, align 8, !tbaa !274
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bq, ptr %i.bp, i64 %i.bk)
  %i.br = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit, %bb.l, %bb.j, %bb.h, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.037.1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.037.1, %bb.j ], [ %.sroa.037.0.lcssa, %bb.h ], [ %.sroa.037.2, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27 ], [ %.sroa.037.2, %bb.l ], [ %.sroa.037.0.lcssa, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit27.thread52 ], [ %i.ag, %bb.f ], [ %i.z, %bb.e ], [ %i.s, %bb.d ], [ %.sroa.037.054, %bb.c ], [ %i.ag, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit21 ], [ %i.z, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit19 ], [ %i.s, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit17 ], [ %.sroa.037.054, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !372    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %i.j, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !273
  %i.r = load ptr, ptr %2, align 8, !tbaa !274    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !275  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !274
  %i.y = load i64, ptr %i.s, align 8, !tbaa !59
  store i64 %i.y, ptr %i.q, align 8, !tbaa !59
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !275
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !275
  store ptr %i.s, ptr %2, align 8, !tbaa !274
  store i64 0, ptr %i.aa, align 8, !tbaa !275
  store i8 0, ptr %i.s, align 8, !tbaa !59
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !273, !alias.scope !600, !noalias !603
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !274, !alias.scope !603, !noalias !600 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !275, !alias.scope !603, !noalias !600 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !605
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !274, !alias.scope !600, !noalias !603
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !59, !alias.scope !603, !noalias !600
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !59, !alias.scope !600, !noalias !603
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !275, !alias.scope !603, !noalias !600
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.al = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !275, !alias.scope !600, !noalias !603
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !274, !alias.scope !603, !noalias !600
  store i64 0, ptr %i.am, align 8, !tbaa !275, !alias.scope !603, !noalias !600
  store i8 0, ptr %i.ae, align 8, !tbaa !59, !alias.scope !603, !noalias !600
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !606

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !273, !alias.scope !607, !noalias !610
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !274, !alias.scope !610, !noalias !607 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !275, !alias.scope !610, !noalias !607 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !612
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !274, !alias.scope !607, !noalias !610
  %i.az = load i64, ptr %i.at, align 8, !tbaa !59, !alias.scope !610, !noalias !607
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !59, !alias.scope !607, !noalias !610
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !275, !alias.scope !610, !noalias !607
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !275, !alias.scope !607, !noalias !610
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !274, !alias.scope !610, !noalias !607
  store i64 0, ptr %i.bb, align 8, !tbaa !275, !alias.scope !610, !noalias !607
  store i8 0, ptr %i.at, align 8, !tbaa !59, !alias.scope !610, !noalias !607
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !606

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !375
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #38
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !372
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !373
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.j
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !375
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC12MarkAcceptorD2Ev(ptr noundef nonnull align 8 dereferenceable(1208) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295
  tail call void @free(ptr noundef %i.b) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295
  tail call void @free(ptr noundef %i.d) #35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !297  ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZN6hermes2vm12MarkWorklistD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.f) #35
  br label %_ZN6hermes2vm12MarkWorklistD2Ev.exit

_ZN6hermes2vm12MarkWorklistD2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !291  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIPN6hermes2vm6GCCellESt6vectorIS3_SaIS3_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm12MarkWorklistD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !299
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #38
  br label %_ZNSt5stackIPN6hermes2vm6GCCellESt6vectorIS3_SaIS3_EEED2Ev.exit

_ZNSt5stackIPN6hermes2vm6GCCellESt6vectorIS3_SaIS3_EEED2Ev.exit: ; preds = %_ZN6hermes2vm12MarkWorklistD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC12MarkAcceptorD0Ev(ptr noundef nonnull align 8 dereferenceable(1208) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295
  tail call void @free(ptr noundef %i.b) #35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295
  tail call void @free(ptr noundef %i.d) #35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !297  ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZN6hermes2vm12MarkWorklistD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.f) #35
  br label %_ZN6hermes2vm12MarkWorklistD2Ev.exit.i

_ZN6hermes2vm12MarkWorklistD2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !291  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes2vm7HadesGC12MarkAcceptorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm12MarkWorklistD2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !299
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #38
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptorD2Ev.exit

_ZN6hermes2vm7HadesGC12MarkAcceptorD2Ev.exit:     ; preds = %_ZN6hermes2vm12MarkWorklistD2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1208) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !350    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptRootEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17PinnedHermesValueE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !509    ; 5 uses
  %i.b = icmp ugt i64 %i.a, -844424930131969
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptRootEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef %i.d)
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit

bb.c:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.a, -140737488355328
  %i.e = icmp eq i64 %.mask.i, -1266637395197952
  br i1 %i.e, label %bb.d, label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %i.a to i32                    ; 2 uses
  %i.g = and i32 %i.f, 268435455                  ; 2 uses
  %i.h = icmp ult i32 %i.f, 536870910
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp ult i32 %i.g, %i.j
  %or.cond.i = select i1 %i.h, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.l = lshr i32 %i.g, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !295
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = and i64 %i.a, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = load i64, ptr %i.o, align 8, !tbaa !51
  %i.s = or i64 %i.r, %i.q
  store i64 %i.s, ptr %i.o, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC12MarkAcceptor14acceptNullableERNS0_17PinnedHermesValueE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !509    ; 5 uses
  %i.b = icmp ugt i64 %i.a, -844424930131969
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 281474976710655            ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptRootEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull %i.d)
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit

bb.d:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.a, -140737488355328
  %i.e = icmp eq i64 %.mask.i, -1266637395197952
  br i1 %i.e, label %bb.e, label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit

bb.e:                                             ; preds = %bb.d
  %i.f = trunc i64 %i.a to i32                    ; 2 uses
  %i.g = and i32 %i.f, 268435455                  ; 2 uses
  %i.h = icmp ult i32 %i.f, 536870910
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp ult i32 %i.g, %i.j
  %or.cond.i = select i1 %i.h, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.l = lshr i32 %i.g, 6
  %i.m = zext nneg i32 %i.l to i64
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !295
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %i.p = and i64 %i.a, 63
  %i.q = shl nuw i64 1, %i.p
  %i.r = load i64, ptr %i.o, align 8, !tbaa !51
  %i.s = or i64 %i.r, %i.q
  store i64 %i.s, ptr %i.o, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor9acceptSymENS0_8SymbolIDE.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERKNS0_12RootSymbolIDE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !3 ; 3 uses
  %i.a = and i32 %.sroa.0.0.copyload, 268435455   ; 2 uses
  %i.b = icmp ult i32 %.sroa.0.0.copyload, 536870910
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.d = load i32, ptr %i.c, align 8
  %.not.i = icmp ult i32 %i.a, %i.d
end_hunk_2
begin_hunk_3_@_ZThn8_N6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_13GCPointerBaseE:bb.a
  br i1 %.not.i, label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_13GCPointerBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !613, !nonnull !61
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = zext i32 %i.a to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  tail call void @_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptHeapEPNS0_6GCCellEPKv(ptr noundef nonnull align 8 dereferenceable(1208) %i.b, ptr noundef %i.h, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_13GCPointerBaseE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_13GCPointerBaseE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = load volatile i64, ptr %1, align 8, !tbaa !51 ; 5 uses
  %i.b = icmp ugt i64 %i.a, -844424930131969
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -8
  %i.d = and i64 %i.a, 281474976710655
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptHeapEPNS0_6GCCellEPKv(ptr noundef nonnull align 8 dereferenceable(1208) %i.c, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE.exit

bb.c:                                             ; preds = %bb.a
  %.mask.i.i = and i64 %i.a, -140737488355328
  %i.f = icmp eq i64 %.mask.i.i, -1266637395197952
  br i1 %i.f, label %bb.d, label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.g = trunc i64 %i.a to i32                    ; 2 uses
  %i.h = and i32 %i.g, 268435455                  ; 2 uses
  %i.i = icmp ult i32 %i.g, 536870910
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.k = load i32, ptr %i.j, align 8
  %.not.i.i = icmp ult i32 %i.h, %i.k
  %or.cond.i.i = select i1 %i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.m = lshr i32 %i.h, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !295
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = and i64 %i.a, 63
  %i.r = shl nuw i64 1, %i.q
  %i.s = load i64, ptr %i.p, align 8, !tbaa !51
  %i.t = or i64 %i.s, %i.r
  store i64 %i.t, ptr %i.p, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_11HermesValueEEE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = load volatile i32, ptr %1, align 4, !tbaa !3 ; 5 uses
  %i.b = and i32 %i.a, 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !613, !nonnull !61
  %i.g = and i32 %i.a, -8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = zext i32 %i.g to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptHeapEPNS0_6GCCellEPKv(ptr noundef nonnull align 8 dereferenceable(1208) %i.d, ptr noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = and i32 %i.a, 7
  %i.m = icmp eq i32 %i.l, 5
  br i1 %i.m, label %bb.d, label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE.exit

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %i.a, 3                         ; 2 uses
  %i.o = and i32 %i.n, 268435455                  ; 2 uses
  %i.p = icmp ult i32 %i.a, -16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.r = load i32, ptr %i.q, align 8
  %.not.i.i = icmp ult i32 %i.o, %i.r
  %or.cond.i.i = select i1 %i.p, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.t = lshr i32 %i.o, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !295
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u ; 2 uses
  %i.x = and i32 %i.n, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw i64 1, %i.y
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !51
  %i.ab = or i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERNS0_17GCHermesValueBaseINS0_13HermesValue32EEE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N6hermes2vm7HadesGC12MarkAcceptor6acceptERKNS0_10GCSymbolIDE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = load volatile i32, ptr %1, align 4, !tbaa !3 ; 3 uses
  %i.b = and i32 %i.a, 268435455                  ; 2 uses
  %i.c = icmp ult i32 %i.a, 536870910
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.e = load i32, ptr %i.d, align 8
  %.not.i.i = icmp ult i32 %i.b, %i.e
  %or.cond.i.i = select i1 %i.c, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERKNS0_10GCSymbolIDE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.g = lshr i32 %i.b, 6
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !295
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = and i32 %i.a, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 1, %i.l
  %i.n = load i64, ptr %i.j, align 8, !tbaa !51
  %i.o = or i64 %i.n, %i.m
  store i64 %i.o, ptr %i.j, align 8, !tbaa !51
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERKNS0_10GCSymbolIDE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor6acceptERKNS0_10GCSymbolIDE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #26

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptRootEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, -4194304
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16384 ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = sub i64 %i.a, %i.e
  %i.g = ashr i64 %i.f, 3                         ; 2 uses
  %i.h = and i64 %i.g, 63
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  %i.j = lshr i64 %i.g, 6
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %i.m = and i64 %i.l, %i.i
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.b, label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = or i64 %i.l, %i.i
  store i64 %i.n, ptr %i.k, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !292  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !299
  %.not.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.q, align 8, !tbaa !350
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.p, align 8, !tbaa !292
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

bb.d:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !291  ; 4 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.e, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.z = ashr exact i64 %i.x, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.z ; 2 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #36 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.x ; 2 uses
  store ptr %1, ptr %i.ae, align 8, !tbaa !350
  %i.af = icmp sgt i64 %i.x, 0
  br i1 %i.af, label %bb.f, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.u, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.x) #38
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !291
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !292
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ah, ptr %i.r, align 8, !tbaa !299
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit: ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC12MarkAcceptor10acceptHeapEPNS0_6GCCellEPKv(ptr noundef nonnull align 8 dereferenceable(1208) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !614, !nonnull !61, !align !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8048
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268  ; 2 uses
  %i.e = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.f = and i64 %i.e, -4194304
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = icmp eq ptr %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.j = and i64 %i.i, -4194304
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = icmp eq ptr %i.d, %i.k
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %i.i, 9
  %i.n = and i64 %i.m, 8191
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  store atomic i8 1, ptr %i.o monotonic, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16384 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.e, %i.q
  %i.s = ashr i64 %i.r, 3                         ; 2 uses
  %i.t = and i64 %i.s, 63
  %i.u = shl nuw i64 1, %i.t                      ; 2 uses
  %i.v = lshr i64 %i.s, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !51   ; 2 uses
  %i.y = and i64 %i.x, %i.u
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.e, label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

bb.e:                                             ; preds = %bb.d
  %i.z = or i64 %i.x, %i.u
  store i64 %i.z, ptr %i.w, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !292 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !299
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %1, ptr %i.ac, align 8, !tbaa !350
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !292
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !291 ; 4 uses
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.h, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.g
  %i.al = ashr exact i64 %i.aj, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.al ; 2 uses
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #36 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.aj ; 2 uses
  store ptr %1, ptr %i.aq, align 8, !tbaa !350
  %i.ar = icmp sgt i64 %i.aj, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ag, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #38
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !291
  store ptr %i.as, ptr %i.ab, align 8, !tbaa !292
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.ad, align 8, !tbaa !299
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit: ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn8_N6hermes2vm16DroppingAcceptorINS0_7HadesGC12MarkAcceptorEED1Ev(ptr noundef %0) unnamed_addr #24 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_oneEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes2vm7HadesGC12MarkAcceptor13drainSomeWorkEm(ptr noundef nonnull align 8 dereferenceable(1208) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.hermes::vm::SlotVisitor", align 8 ; 6 uses
  %3 = alloca %"class.llvh::SmallVector.92", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !297, !alias.scope !615
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !425, !alias.scope !615
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !426, !alias.scope !615
  %i.e = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(1088) %i.a) #35 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #37
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  call void @_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.g = load i32, ptr %i.c, align 8, !tbaa !425, !alias.scope !615 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.i = load i32, ptr %i.h, align 4, !tbaa !426, !noalias !615
  %i.j = icmp ugt i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN6hermes2vm12MarkWorklist5drainEv.exit

bb.c:                                             ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1144
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %i.l, i64 noundef %i.k, i64 noundef 8) #35
  br label %_ZN6hermes2vm12MarkWorklist5drainEv.exit

_ZN6hermes2vm12MarkWorklist5drainEv.exit:         ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit.i, %bb.c
  %i.m = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(1088) %i.a) #35 ; 0 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !297    ; 2 uses
  %i.o = load i32, ptr %i.c, align 8, !tbaa !425  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm12MarkWorklist5drainEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.d

.preheader:                                       ; preds = %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit, %_ZN6hermes2vm12MarkWorklist5drainEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !397
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !397  ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x                   ; 2 uses
  %i.z = icmp eq i64 %1, 0
  %.not1722 = or i1 %i.y, %i.z
  br i1 %.not1722, label %._crit_edge, label %.lr.ph24

bb.d:                                             ; preds = %.lr.ph, %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit
  %.021 = phi ptr [ %i.n, %.lr.ph ], [ %i.bg, %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit ] ; 2 uses
  %i.aa = load ptr, ptr %.021, align 8, !tbaa !350 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = and i64 %i.ab, -4194304
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16384 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.ab, %i.af
  %i.ah = ashr i64 %i.ag, 3                       ; 2 uses
  %i.ai = and i64 %i.ah, 63
  %i.aj = shl nuw i64 1, %i.ai                    ; 2 uses
  %i.ak = lshr i64 %i.ah, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !51 ; 2 uses
  %i.an = and i64 %i.aj, %i.am
  %.not19 = icmp eq i64 %i.an, 0
  br i1 %.not19, label %bb.e, label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

bb.e:                                             ; preds = %bb.d
  %i.ao = or i64 %i.aj, %i.am
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !51
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !292 ; 4 uses
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !299
  %.not.i.i.i18 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.aa, ptr %i.ap, align 8, !tbaa !350
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ar, ptr %i.s, align 8, !tbaa !292
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

bb.g:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !291 ; 4 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 6 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775800
  br i1 %i.aw, label %bb.h, label %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #37
  unreachable

_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.g
  %i.ax = ashr exact i64 %i.av, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ax ; 2 uses
  %i.az = call i64 @llvm.umin.i64(i64 %i.ay, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #36 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.av ; 2 uses
  store ptr %i.aa, ptr %i.bc, align 8, !tbaa !350
  %i.bd = icmp sgt i64 %i.av, 0
  br i1 %i.bd, label %bb.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN6hermes2vm6GCCellESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #38
  br label %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  store ptr %i.bb, ptr %i.r, align 8, !tbaa !291
  store ptr %i.be, ptr %i.s, align 8, !tbaa !292
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bf, ptr %i.t, align 8, !tbaa !299
  br label %_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit

_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE.exit: ; preds = %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.f, %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.q
  br i1 %.not, label %.preheader, label %bb.d

.lr.ph24:                                         ; preds = %.preheader, %_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit
  %i.bh = phi ptr [ %i.bx, %_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit ], [ %i.x, %.preheader ]
  %.01523 = phi i64 [ %i.bn, %_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit ], [ 0, %.preheader ]
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !350 ; 3 uses
  store ptr %i.bi, ptr %i.v, align 8, !tbaa !292
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = and i32 %i.bk, 16777215
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %.01523, %i.bm                  ; 3 uses
  %i.bo = lshr i32 %i.bk, 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %0, ptr %2, align 8, !tbaa !294
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [96 x i8], ptr @_ZN6hermes2vm8Metadata13metadataTableE, i64 %i.bp ; 3 uses
  call void @_ZN6hermes2vm11SlotVisitorINS0_7HadesGC12MarkAcceptorEE11visitFieldsEPcRKNS0_8Metadata11SlotOffsetsE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bj, ptr noundef nonnull align 1 dereferenceable(17) %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !555, !range !257, !noundef !61
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.k, label %_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit

bb.k:                                             ; preds = %.lr.ph24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bv = load ptr, ptr %2, align 8, !tbaa !618, !nonnull !61, !align !62
  call void @_ZN6hermes2vm11BaseVisitor10visitArrayINS0_7HadesGC12MarkAcceptorELb0EEEvRT_PcRKNS0_8Metadata9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(1208) %i.bv, ptr noundef nonnull %i.bj, ptr noundef nonnull align 1 dereferenceable(4) %i.bu)
  br label %_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit

_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit: ; preds = %.lr.ph24, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !397
  %i.bx = load ptr, ptr %i.v, align 8, !tbaa !397 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx                ; 2 uses
  %i.bz = icmp uge i64 %i.bn, %1
  %.not17 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %.not17, label %._crit_edge, label %.lr.ph24, !llvm.loop !620

._crit_edge:                                      ; preds = %_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit, %.preheader
  %.015.lcssa = phi i64 [ 0, %.preheader ], [ %i.bn, %_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit ]
  %.lcssa = phi i1 [ %i.y, %.preheader ], [ %i.by, %_ZN6hermes2vm6GCBase8markCellINS0_7HadesGC12MarkAcceptorEEEvPNS0_6GCCellERT_.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !455
  %i.cc = add i64 %i.cb, %.015.lcssa
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !455
  %i.cd = load ptr, ptr %3, align 8, !tbaa !297   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.b
  br i1 %i.ce, label %_ZN4llvh11SmallVectorIPN6hermes2vm6GCCellELj0EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.cd) #35
  br label %_ZN4llvh11SmallVectorIPN6hermes2vm6GCCellELj0EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes2vm6GCCellELj0EED2Ev.exit: ; preds = %._crit_edge, %bb.l
  %i.cf = xor i1 %.lcssa, true
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret i1 %i.cf
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !297    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !297    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %0, align 8, !tbaa !216
  store ptr %i.b, ptr %1, align 8, !tbaa !216
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.h, align 8, !tbaa !3
  %i.k = load i32, ptr %i.i, align 8, !tbaa !3
  store i32 %i.k, ptr %i.h, align 8, !tbaa !3
  store i32 %i.j, ptr %i.i, align 8, !tbaa !3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !3
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  store i32 %i.o, ptr %i.l, align 4, !tbaa !3
  store i32 %i.n, ptr %i.m, align 4, !tbaa !3
  br label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !425  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !426
  %i.t = icmp ugt i32 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %i.q to i64
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.c, i64 noundef %i.u, i64 noundef 8) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !425  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !426
  %i.z = icmp ugt i32 %i.w, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = zext i32 %i.w to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 8) #35
  %.pre = load i32, ptr %i.v, align 8, !tbaa !425
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = phi i32 [ %.pre, %bb.h ], [ %i.w, %bb.g ] ; 6 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !425 ; 6 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = icmp ugt i32 %i.ac, %i.ae
  %spec.select44 = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ae) ; 5 uses
  %spec.select = zext i32 %spec.select44 to i64   ; 10 uses
  %.not49 = icmp eq i32 %spec.select44, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !297   ; 6 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !297   ; 6 uses
  %min.iters.check = icmp ult i32 %spec.select44, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aj = shl nuw nsw i64 %spec.select, 3         ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.aj
  %scevgep60 = getelementptr i8, ptr %i.ai, i64 %i.aj
  %bound0 = icmp ult ptr %i.ah, %scevgep60
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %spec.select, 4294967292       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !350, !alias.scope !621, !noalias !624
  %wide.load61 = load <2 x ptr>, ptr %i.am, align 8, !tbaa !350, !alias.scope !621, !noalias !624
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %wide.load62 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !350, !alias.scope !624
  %wide.load63 = load <2 x ptr>, ptr %i.an, align 8, !tbaa !350, !alias.scope !624
  store <2 x ptr> %wide.load62, ptr %i.ak, align 8, !tbaa !350, !alias.scope !621, !noalias !624
  store <2 x ptr> %wide.load63, ptr %i.am, align 8, !tbaa !350, !alias.scope !621, !noalias !624
  store <2 x ptr> %wide.load, ptr %i.al, align 8, !tbaa !350, !alias.scope !624
  store <2 x ptr> %wide.load61, ptr %i.an, align 8, !tbaa !350, !alias.scope !624
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !626

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %spec.select
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.03850.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %spec.select, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.03850.ph ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.03850.ph ; 2 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !350
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !350
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !350
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !350
  %i.at = or disjoint i64 %.03850.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.03850.unr = phi i64 [ %.03850.ph, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %i.au = add nsw i64 %spec.select, -1
  %i.av = icmp eq i64 %.03850.ph, %i.au
end_hunk_3
