Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-stress?download=true
inline.NumInlined: 1677
inline.NumDeleted: 905
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4llvm12_GLOBAL__N_121InsertElementModifier3ActEv:bb.a
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.j = tail call fastcc noundef ptr @_ZN4llvm12_GLOBAL__N_18Modifier14getRandomValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %.0.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !357
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm10BasicBlock10getContextEv(ptr noundef nonnull align 8 dereferenceable(80) %i.l) #24
  %i.n = tail call noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #24
  %i.o = tail call fastcc noundef ptr @_ZN4llvm12_GLOBAL__N_18Modifier14getRandomValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !169
  store ptr @.str.40, ptr %2, align 8, !tbaa !28
  store i8 3, ptr %i.p, align 8, !tbaa !166
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !357
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.u = tail call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #24 ; 3 uses
  store ptr %i.t, ptr %1, align 8
  %.sroa.2.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i6, align 8
  call void @_ZN4llvm17InsertElementInstC1EPNS_5ValueES2_S2_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull %i.a, ptr noundef %i.j, ptr noundef %i.o, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !364  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %.not.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  store ptr %i.u, ptr %i.y, align 8, !tbaa !258
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !195
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !260 ; 4 uses
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.e, label %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #26 ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  store ptr %i.u, ptr %i.ao, align 8, !tbaa !258
  %i.ap = icmp sgt i64 %i.af, 0
  br i1 %i.ap, label %bb.f, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.at) #25
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.an, ptr %i.w, align 8, !tbaa !260
  store ptr %i.aq, ptr %i.x, align 8, !tbaa !195
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.au, ptr %i.z, align 8, !tbaa !198
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

declare void @_ZN4llvm17InsertElementInstC1EPNS_5ValueES2_S2_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4llvm12_GLOBAL__N_111BinModifierD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm12_GLOBAL__N_18ModifierE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm12_GLOBAL__N_18ModifierD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !256
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !257
  br label %_ZN4llvm12_GLOBAL__N_18ModifierD2Ev.exit

_ZN4llvm12_GLOBAL__N_18ModifierD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12_GLOBAL__N_111BinModifier3ActEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val20 = load ptr, ptr %i.a, align 8, !tbaa !364 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val21 = load ptr, ptr %i.b, align 8, !tbaa !365 ; 2 uses
  %.val20.val = load ptr, ptr %.val20, align 8, !tbaa !260 ; 2 uses
  %i.c = getelementptr i8, ptr %.val20, i64 8
  %.val20.val22 = load ptr, ptr %i.c, align 8, !tbaa !195
  %i.d = load i32, ptr %.val21, align 4, !tbaa !174
  %i.e = mul i32 %i.d, 1014762177
  %i.f = add i32 %i.e, -459732383                 ; 2 uses
  store i32 %i.f, ptr %.val21, align 4, !tbaa !174
  %i.g = and i32 %i.f, 524287
  %i.h = zext nneg i32 %i.g to i64
  %i.i = ptrtoint ptr %.val20.val22 to i64
  %i.j = ptrtoint ptr %.val20.val to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = urem i64 %i.h, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val20.val, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !258  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !272
  %i.r = tail call fastcc noundef ptr @_ZN4llvm12_GLOBAL__N_18Modifier14getRandomValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %i.q) ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !272  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 3 uses
  %i.v = and i32 %i.u, 255
  %i.w = icmp eq i32 %i.v, 15
  br i1 %i.w, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !272
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = and i32 %i.aa, 255
  %i.ac = icmp eq i32 %i.ab, 15
  br i1 %i.ac, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call noundef i32 @_ZNK4llvm4Type19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #30
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = and i32 %i.u, 254
  %spec.select.i.i = icmp eq i32 %i.af, 18
  br i1 %spec.select.i.i, label %bb.e, label %_ZNK4llvm4Type13getScalarTypeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !384
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !153
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit

_ZNK4llvm4Type13getScalarTypeEv.exit:             ; preds = %bb.d, %bb.e
  %i.aj = phi i32 [ %.pre, %bb.e ], [ %i.u, %bb.d ]
  %.fr24 = freeze i32 %i.aj                       ; 2 uses
  %trunc.i.i = trunc i32 %.fr24 to i8             ; 2 uses
  %i.ak = icmp ult i8 %trunc.i.i, 6
  %switch.shifted = lshr i8 47, %trunc.i.i
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ak, i1 %switch.lobit, i1 false
  %i.al = and i32 %.fr24, 253
  %spec.select.i = icmp eq i32 %i.al, 4
  %cond.fr = or i1 %or.cond, %spec.select.i       ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !357
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !276
  %.val = load ptr, ptr %i.b, align 8, !tbaa !365 ; 2 uses
  %i.aq = load i32, ptr %.val, align 4, !tbaa !174
  %i.ar = mul i32 %i.aq, 1014762177
  %i.as = add i32 %i.ar, -459732383               ; 2 uses
  store i32 %i.as, ptr %.val, align 4, !tbaa !174
  %i.at = and i32 %i.as, 524287                   ; 2 uses
  %2 = urem i32 %i.at, 7
  %i.au = urem i32 %i.at, 13
  %spec.select = select i1 %cond.fr, i32 %2, i32 %i.au
  switch i32 %spec.select, label %default.unreachable28 [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.r
    i32 8, label %bb.m
    i32 9, label %bb.n
    i32 10, label %bb.o
    i32 11, label %bb.p
    i32 12, label %bb.q
  ]

default.unreachable28:                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  unreachable

bb.f:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.av = select i1 %cond.fr, i32 15, i32 14
  br label %bb.r

bb.g:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.aw = select i1 %cond.fr, i32 17, i32 16
  br label %bb.r

bb.h:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.ax = select i1 %cond.fr, i32 19, i32 18
  br label %bb.r

bb.i:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.ay = select i1 %cond.fr, i32 22, i32 21
  br label %bb.r

bb.j:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.az = select i1 %cond.fr, i32 22, i32 20
  br label %bb.r

bb.k:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.ba = select i1 %cond.fr, i32 25, i32 24
  br label %bb.r

bb.l:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  %i.bb = select i1 %cond.fr, i32 25, i32 23
  br label %bb.r

bb.m:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  br label %bb.r

bb.n:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  br label %bb.r

bb.o:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  br label %bb.r

bb.p:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  br label %bb.r

bb.q:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit
  br label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi i32 [ %i.av, %bb.f ], [ %i.aw, %bb.g ], [ %i.ax, %bb.h ], [ %i.ay, %bb.i ], [ %i.az, %bb.j ], [ %i.ba, %bb.k ], [ %i.bb, %bb.l ], [ 31, %bb.q ], [ 27, %bb.m ], [ 28, %bb.n ], [ 29, %bb.o ], [ 30, %bb.p ], [ 26, %_ZNK4llvm4Type13getScalarTypeEv.exit ]
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !364 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 33
  store i8 1, ptr %i.be, align 1, !tbaa !169
  store ptr @.str.41, ptr %1, align 8, !tbaa !28
  store i8 3, ptr %i.bd, align 8, !tbaa !166
  %i.bf = call noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef %.0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr nonnull %i.ap, i64 0) #24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !195 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !198
  %.not.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !258
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !195
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit

bb.t:                                             ; preds = %bb.r
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !260 ; 4 uses
  %i.bm = ptrtoint ptr %i.bh to i64
  %i.bn = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 5 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.u, label %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store ptr %i.bf, ptr %i.bx, align 8, !tbaa !258
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.v, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bl, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.v, %_ZNKSt6vectorIPN4llvm5ValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ca = load ptr, ptr %i.bi, align 8, !tbaa !198
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.cc) #25
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bw, ptr %i.bc, align 8, !tbaa !260
  store ptr %i.bz, ptr %i.bg, align 8, !tbaa !195
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cd, ptr %i.bi, align 8, !tbaa !198
  br label %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.c, %bb.a, %bb.b, %_ZNSt6vectorIPN4llvm5ValueESaIS2_EE9push_backEOS2_.exit
  ret void
}

declare noundef ptr @_ZN4llvm14BinaryOperator6CreateENS_11Instruction9BinaryOpsEPNS_5ValueES4_RKNS_5TwineENS_14InsertPositionE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr, i64) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4llvm12_GLOBAL__N_112CastModifierD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm12_GLOBAL__N_18ModifierE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm12_GLOBAL__N_18ModifierD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !256
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25, !inline_history !257
  br label %_ZN4llvm12_GLOBAL__N_18ModifierD2Ev.exit

_ZN4llvm12_GLOBAL__N_18ModifierD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12_GLOBAL__N_112CastModifier3ActEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %.val176 = load ptr, ptr %i.j, align 8, !tbaa !364 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val177 = load ptr, ptr %i.k, align 8, !tbaa !365 ; 3 uses
  %.val176.val = load ptr, ptr %.val176, align 8, !tbaa !260 ; 2 uses
  %i.l = getelementptr i8, ptr %.val176, i64 8
  %.val176.val178 = load ptr, ptr %i.l, align 8, !tbaa !195
  %i.m = load i32, ptr %.val177, align 4, !tbaa !174
  %.fr291 = freeze i32 %i.m
end_hunk_0
