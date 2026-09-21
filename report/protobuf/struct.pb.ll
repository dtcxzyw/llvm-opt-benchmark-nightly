Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/struct.pb?download=true
inline.NumInlined: 784
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6google8protobuf5Value9MergeImplERNS0_11MessageLiteERKS2_:bb.a
bb.f:                                             ; preds = %bb.e
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.c, label %bb.h, label %bb.i, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i64 %i.b, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.q = inttoptr i64 %i.b to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.p, %bb.h ], [ %i.q, %bb.i ]
  %i.r = icmp eq ptr %.0.i.i.i, null
  br i1 %i.r, label %bb.j, label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !42   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN6google8protobuf5Value10clear_kindEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6google8protobuf6StructD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 56) #27
  br label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.l:                                             ; preds = %bb.e
  br i1 %i.c, label %bb.m, label %bb.n, !prof !44

bb.m:                                             ; preds = %bb.l
  %i.u = add nsw i64 %i.b, -1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i

bb.n:                                             ; preds = %bb.l
  %i.x = inttoptr i64 %i.b to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i: ; preds = %bb.n, %bb.m
  %.0.i.i2.i = phi ptr [ %i.w, %bb.m ], [ %i.x, %bb.n ]
  %i.y = icmp eq ptr %.0.i.i2.i, null
  br i1 %i.y, label %bb.o, label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.o:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !42   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN6google8protobuf5Value10clear_kindEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN6google8protobuf9ListValueD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 40) #27
  br label %_ZN6google8protobuf5Value10clear_kindEv.exit

_ZN6google8protobuf5Value10clear_kindEv.exit:     ; preds = %bb.p, %bb.o, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i, %bb.k, %bb.j, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, %bb.f, %bb.e
  store i32 %i.j, ptr %i.l, align 4, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %_ZN6google8protobuf5Value10clear_kindEv.exit, %bb.d
  switch i32 %i.j, label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit [
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.w
    i32 5, label %bb.x
    i32 6, label %bb.ac
  ]

bb.r:                                             ; preds = %bb.q
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !42
  store i32 %i.ab, ptr %i.k, align 8, !tbaa !42
  br label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

bb.s:                                             ; preds = %bb.q
  %i.ac = load double, ptr %i.h, align 8, !tbaa !42
  store double %i.ac, ptr %i.k, align 8, !tbaa !42
  br label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

bb.t:                                             ; preds = %bb.q
  br i1 %.not39, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE to i64), ptr %i.k, align 8, !tbaa !64
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !42
  %.not.i = icmp eq i32 %i.ad, 3
  %i.ae = load ptr, ptr %i.h, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, -4
  %i.ah = inttoptr i64 %i.ag to ptr
  %.0.i41 = select i1 %.not.i, ptr %i.ah, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.0.i41, ptr noundef %.0.i.i)
  br label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

bb.w:                                             ; preds = %bb.q
  %i.ai = load i8, ptr %i.h, align 8, !tbaa !42, !range !53, !noundef !54
  store i8 %i.ai, ptr %i.k, align 8, !tbaa !42
  br label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

bb.x:                                             ; preds = %bb.q
  br i1 %.not39, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.ak = tail call noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_6StructEEEPvPS1_PKv(ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.aj)
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !42
  br label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

bb.z:                                             ; preds = %bb.x
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !42  ; 4 uses
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !42  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %i.ap = and i32 %i.ao, 1
  %.not43 = icmp eq i32 %i.ap, 0
  br i1 %.not43, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aq), !inline_history !115
  %i.as = load atomic ptr, ptr %i.aq acquire, align 8
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = trunc i64 %i.at to i1
  br i1 %i.au, label %_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i, label %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i

_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i: ; preds = %bb.aa
  %i.av = add nsw i64 %i.at, -1                   ; 2 uses
  %i.aw = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = inttoptr i64 %i.av to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store atomic i32 0, ptr %i.ay monotonic, align 4
  br label %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i

_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i: ; preds = %_ZNK6google8protobuf8internal12MapFieldBase13maybe_payloadEv.exit.i.i.i, %bb.aa
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  tail call void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ar), !inline_history !115
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  tail call void @_ZN6google8protobuf8internal12MapMergeFromIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEEEvRNS0_3MapIDpT_EERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba), !inline_history !116
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE10MutableMapEv.exit.i, %bb.z
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !11
  %i.bd = or i32 %i.bc, %i.ao
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bg = trunc i64 %i.bf to i1
  br i1 %i.bg, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i: ; preds = %bb.ab
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bi = add nsw i64 %i.bf, -1
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bk), !inline_history !115
  br label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

bb.ac:                                            ; preds = %bb.q
  br i1 %.not39, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.bm = tail call noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_9ListValueEEEPvPS1_PKv(ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.bl)
  store ptr %i.bm, ptr %i.k, align 8, !tbaa !42
  br label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !42  ; 3 uses
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !42  ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !15 ; 3 uses
  %i.br = trunc i64 %i.bq to i1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !44

bb.af:                                            ; preds = %bb.ae
  %i.bs = add nsw i64 %i.bq, -1
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.bv = inttoptr i64 %i.bq to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i = phi ptr [ %i.bu, %bb.af ], [ %i.bv, %bb.ag ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !11 ; 2 uses
  %i.by = and i32 %i.bx, 1
  %.not.i.i.a = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.a, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, label %2

2:                                                ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %3 = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef %.0.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_5ValueEEEPvPS1_PKv), !inline_history !3
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i: ; preds = %bb.ah, %2, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !11
  %i.cd = or i32 %i.cc, %i.bx
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !15 ; 2 uses
  %i.cg = trunc i64 %i.cf to i1
  br i1 %i.cg, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i
  %i.ch = add nsw i64 %i.cf, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.cj), !inline_history !4
  br label %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit

_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i, %bb.ab, %bb.q, %bb.r, %bb.s, %bb.v, %bb.w, %bb.y, %bb.ad, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !15 ; 2 uses
  %i.cm = trunc i64 %i.cl to i1
  br i1 %i.cm, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit
  %i.cn = add nsw i64 %i.cl, -1
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %_ZN6google8protobuf6Struct9MergeImplERNS0_11MessageLiteERKS2_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf5Value12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf17Value_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf17Value_class_data_E, i64 8), align 8, !tbaa !32
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf17Value_class_data_E
}

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf5Value5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42
  switch i32 %i.c, label %_ZN6google8protobuf5Value10clear_kindEv.exit [
    i32 6, label %bb.h
    i32 5, label %bb.c
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i64 %i.e, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = inttoptr i64 %i.e to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.k = icmp eq ptr %.0.i.i.i, null
  br i1 %i.k, label %bb.f, label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6google8protobuf5Value10clear_kindEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN6google8protobuf6StructD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 56) #27
  br label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.i, label %bb.j, !prof !44

bb.i:                                             ; preds = %bb.h
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i

bb.j:                                             ; preds = %bb.h
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i: ; preds = %bb.j, %bb.i
  %.0.i.i2.i = phi ptr [ %i.s, %bb.i ], [ %i.t, %bb.j ]
  %i.u = icmp eq ptr %.0.i.i2.i, null
  br i1 %i.u, label %bb.k, label %_ZN6google8protobuf5Value10clear_kindEv.exit

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN6google8protobuf5Value10clear_kindEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6google8protobuf9ListValueD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 40) #27
  br label %_ZN6google8protobuf5Value10clear_kindEv.exit

_ZN6google8protobuf5Value10clear_kindEv.exit:     ; preds = %bb.a, %bb.b, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, %bb.f, %bb.g, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit3.i, %bb.k, %bb.l
  store i32 0, ptr %i.b, align 4, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.m, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.m:                                             ; preds = %_ZN6google8protobuf5Value10clear_kindEv.exit
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %_ZN6google8protobuf5Value10clear_kindEv.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf5Value18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  switch i32 %i.b, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.e
    i32 4, label %bb.h
    i32 5, label %bb.j
    i32 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !74
  %.not.i = icmp ult ptr %1, %i.c
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, !prof !75

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1) ; 3 uses
  %.pre49 = load i32, ptr %i.a, align 4, !tbaa !42
  %.pre49.fr = freeze i32 %.pre49
  %i.e = icmp eq i32 %.pre49.fr, 1
  br i1 %i.e, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread, label %.thread

.thread:                                          ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 8, ptr %i.d, align 1, !tbaa !42
  br label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread: ; preds = %bb.b, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %.0.i3355 = phi ptr [ %i.d, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit ], [ %1, %bb.b ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %.in, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i3355, i64 1 ; 2 uses
  store i8 8, ptr %.0.i3355, align 1, !tbaa !42
  %i.i = sext i32 %i.g to i64                     ; 2 uses
  %i.j = icmp ugt i32 %i.g, 127
  br i1 %i.j, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !118

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread ] ; 2 uses
  %.07.i1.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread ] ; 3 uses
  %i.k = trunc i64 %.07.i1.i.i to i8
  %i.l = or i8 %i.k, -128
  store i8 %i.l, ptr %.0.i2.i.i, align 1, !tbaa !42
  %i.m = lshr i64 %.07.i1.i.i, 7                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.o = icmp ugt i64 %.07.i1.i.i, 16383
  br i1 %i.o, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !prof !76, !llvm.loop !117

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.lr.ph.i.i, %.thread, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread
  %.07.i.lcssa.i.i = phi i64 [ %i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread ], [ 0, %.thread ], [ %i.m, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.h, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.thread ], [ %i.f, %.thread ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %i.p = trunc nuw nsw i64 %.07.i.lcssa.i.i to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.p, ptr %.0.i.lcssa.i.i, align 1, !tbaa !42
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjSt17basic_string_viewIcSt11char_traitsIcEEPh.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %2, align 8, !tbaa !74
  %.not.i35 = icmp ult ptr %1, %i.r
  br i1 %.not.i35, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37.thread, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit37, !prof !75

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf9ListValue9MergeImplERNS0_11MessageLiteERKS2_:bb.a

; Function Attrs: mustprogress uwtable
define weak noundef ptr @_ZNK6google8protobuf9ListValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.prefetch.p0(ptr nonnull @_ZN6google8protobuf21ListValue_class_data_E, i32 0, i32 3, i32 1)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf21ListValue_class_data_E, i64 8), align 8, !tbaa !32
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 3, i32 1)
  ret ptr @_ZN6google8protobuf21ListValue_class_data_E
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser8FastMtR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress noinline uwtable
define void @_ZN6google8protobuf9ListValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %.not = trunc i32 %i.b to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit: ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

bb.c:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINS0_15UnknownFieldSetEEEvv.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE5ClearEv.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf9ListValue18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !79   ; 2 uses
  %.not20 = icmp eq i32 %i.e, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.019 = phi ptr [ %1, %.lr.ph ], [ %i.s, %bb.c ]
  %.01718 = phi i32 [ 0, %.lr.ph ], [ %i.t, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = add i64 %i.h, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = sext i32 %.01718 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %.0.i.i.i.i = select i1 %i.j, ptr %i.f, ptr %i.o
  %i.p = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal14WireFormatLite20InternalWriteMessageEiRKNS0_11MessageLiteEiPhPNS0_2io19EpsCopyOutputStreamE(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i32 noundef %i.r, ptr noundef %.019, ptr noundef %2) ; 2 uses
  %i.t = add nuw i32 %.01718, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !125

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %1, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15   ; 2 uses
  %i.w = trunc i64 %i.v to i1
  br i1 %i.w, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %bb.d, !prof !44

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %.loopexit
  %i.x = add nsw i64 %i.v, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = tail call noundef ptr @_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef %.1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, %.loopexit
  %.2 = phi ptr [ %i.aa, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit ], [ %.1, %.loopexit ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf9ListValue12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit:
  %i.a = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.b = add i64 %i.a, 448
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 512
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %i.f = add i64 %i.a, 576
  %i.g = inttoptr i64 %i.f to ptr
  tail call void @llvm.prefetch.p0(ptr %i.g, i32 0, i32 3, i32 1)
  %i.h = add i64 %i.a, 640
  %i.i = inttoptr i64 %i.h to ptr
  tail call void @llvm.prefetch.p0(ptr %i.i, i32 0, i32 3, i32 1)
  %i.j = add i64 %i.a, 704
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 3, i32 1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !11
  %i.n = and i32 %i.m, 1
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !79   ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = add i64 %i.t, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = select i1 %i.v, ptr %i.r, ptr %i.y       ; 2 uses
  %.idx = shl nsw i64 %i.q, 3
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %.idx
  %.not1618 = icmp eq i32 %i.p, 0
  br i1 %.not1618, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.020 = phi i64 [ %i.am, %.lr.ph ], [ %i.q, %bb.a ]
  %.sroa.013.019 = phi ptr [ %i.an, %.lr.ph ], [ %i.z, %bb.a ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.013.019, align 8, !tbaa !64
  %i.ac = tail call noundef i64 @_ZNK6google8protobuf5Value12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab), !inline_history !126 ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = or i32 %i.ad, 1
  %i.af = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true)
  %i.ag = xor i32 %i.af, 31
  %i.ah = mul nuw nsw i32 %i.ag, 9
  %i.ai = add nuw nsw i32 %i.ah, 73
  %i.aj = lshr i32 %i.ai, 6
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = add i64 %i.ac, %.020
  %i.am = add i64 %i.al, %i.ak                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 8 ; 2 uses
  %.not16 = icmp eq ptr %i.an, %i.aa
  br i1 %.not16, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit
  %.1 = phi i64 [ 0, %_ZN6google8protobuf8internal8PrefetchIL_ZZNS1_24Prefetch5LinesFrom7LinesEPKvE5kOptsEvvEEvPKT1_.exit ], [ 0, %bb.a ], [ %i.am, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ap = tail call noundef i64 @_ZNK6google8protobuf7Message29MaybeComputeUnknownFieldsSizeEmPKNS0_8internal10CachedSizeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.1, ptr noundef nonnull %i.ao)
  ret i64 %i.ap
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf9ListValue8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %_ZN6google8protobuf9ListValue9MergeFromERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf9ListValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.c, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %i.c to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = and i32 %i.j, 1
  %.not.i.i.a = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.a, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, label %2

2:                                                ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %4 = load i32, ptr %3, align 8, !tbaa !79
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef %.0.i.i.i.i, ptr noundef nonnull @_ZN6google8protobuf5Arena13CopyConstructINS0_5ValueEEEPvPS1_PKv), !inline_history !3
  br label %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i

_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i: ; preds = %bb.e, %2, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !11
  %i.p = or i32 %i.o, %i.j
  store i32 %i.p, ptr %i.n, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !15   ; 2 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, label %_ZN6google8protobuf9ListValue9MergeFromERKS1_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i
  %i.t = add nsw i64 %i.r, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.v), !inline_history !4
  br label %_ZN6google8protobuf9ListValue9MergeFromERKS1_.exit

_ZN6google8protobuf9ListValue9MergeFromERKS1_.exit: ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit.i.i, %_ZN6google8protobuf16RepeatedPtrFieldINS0_5ValueEE26InternalMergeFromWithArenaENS0_8internal18InternalVisibilityEPNS0_5ArenaERKS3_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN6google8protobuf9ListValue12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !77
  %i.d = load i64, ptr %i.b, align 8, !tbaa !77
  store i64 %i.d, ptr %i.a, align 8, !tbaa !77
  store i64 %i.c, ptr %i.b, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !11
  %i.h = load i32, ptr %i.f, align 8, !tbaa !11
  store i32 %i.h, ptr %i.e, align 8, !tbaa !11
  store i32 %i.g, ptr %i.f, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  %i.k = load <8 x i8>, ptr %i.j, align 8, !tbaa !42, !alias.scope !138, !noalias !136
  %i.l = load <8 x i8>, ptr %i.i, align 8, !tbaa !42, !alias.scope !136, !noalias !138
  store <8 x i8> %i.k, ptr %i.i, align 8, !tbaa !42, !alias.scope !136, !noalias !138
  store <8 x i8> %i.l, ptr %i.j, align 8, !tbaa !42, !alias.scope !138, !noalias !136
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 8, !tbaa !42, !alias.scope !138, !noalias !136
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !42, !alias.scope !136, !noalias !138
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 8, !tbaa !42, !alias.scope !136, !noalias !138
  store <4 x i8> %i.o, ptr %i.m, align 8, !tbaa !42, !alias.scope !138, !noalias !136
  ret void
}

; Function Attrs: mustprogress uwtable
define { ptr, ptr } @_ZNK6google8protobuf9ListValue11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf9ListValue12GetClassDataEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.b = tail call { ptr, ptr } @_ZN6google8protobuf7Message15GetMetadataImplERKNS0_8internal13ClassDataFullE(ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  ret { ptr, ptr } %i.b
}

declare void @_ZN6google8protobuf8internal14AddDescriptorsEPKNS1_15DescriptorTableE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread, !prof !44

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread: ; preds = %bb.a
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i unwind label %bb.d

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc1 unwind label %bb.d

.noexc1:                                          ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit, label %bb.c

bb.c:                                             ; preds = %.noexc1
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !139
  br label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EE10SharedDtorERNS0_11MessageLiteE.exit: ; preds = %bb.c, %.noexc1, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  ret void

bb.d:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf27Struct_FieldsEntry_DoNotUseD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread.i, !prof !44

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread.i: ; preds = %bb.a
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i.i, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev.exit

bb.b:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  invoke void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i.i unwind label %bb.d, !inline_history !141

_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i.i: ; preds = %bb.b, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc1.i unwind label %bb.d, !inline_history !141

.noexc1.i:                                        ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %.noexc1.i
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #26, !inline_history !140
  br label %_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINS0_15UnknownFieldSetEEEvv.exit.i.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #25, !inline_history !141
  unreachable

_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED2Ev.exit: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.thread.i, %.noexc1.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

declare void @_ZN6google8protobuf7Message5ClearEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i64 @_ZNK6google8protobuf7Message12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf7Message18_InternalSerializeEPhPNS0_2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal8MapEntryINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7MessageELNS1_14WireFormatLite9FieldTypeE9ELSB_11EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #25
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

declare void @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINS0_15UnknownFieldSetEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal23TypeDefinedMapFieldBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEEC2EPKNS0_7MessageENS1_22InternalMetadataOffsetERKSA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
