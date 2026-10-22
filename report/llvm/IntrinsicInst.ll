Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IntrinsicInst?download=true
inline.NumInlined: 1546
inline.NumDeleted: 745
begin_hunk_0_@_ZNK4llvm20DbgVariableIntrinsic21getVariableLocationOpEj:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.p = add i8 %i.j, -5
  %switch.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.p, 33
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm18RawLocationWrapper21getVariableLocationOpEj.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink11.i = phi ptr [ %i.o, %bb.b ], [ %i.i, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sink11.i, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  br label %_ZNK4llvm18RawLocationWrapper21getVariableLocationOpEj.exit

_ZNK4llvm18RawLocationWrapper21getVariableLocationOpEj.exit: ; preds = %bb.c, %.sink.split.i
  %.1.i = phi ptr [ null, %bb.c ], [ %i.r, %.sink.split.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm18RawLocationWrapper21getVariableLocationOpEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !15    ; 2 uses
  %.not = icmp eq i8 %i.b, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.h = add i8 %i.b, -5
  %switch.i.i.i.i.i.i.i.i = icmp ult i8 %i.h, 33
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink11 = phi ptr [ %i.g, %bb.b ], [ %i.a, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sink11, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.j, %.sink.split ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_b(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 12 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42
  %.not = icmp eq i32 %i.d, 77
  br i1 %.not, label %bb.b, label %"_ZZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_bENK3$_0clEv.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 268435455
  %i.h = zext nneg i32 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [32 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !15
  %i.p = add i8 %i.o, -3
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.p, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm18DbgAssignIntrinsic10getAddressEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
  br label %_ZNK4llvm18DbgAssignIntrinsic10getAddressEv.exit.i

_ZNK4llvm18DbgAssignIntrinsic10getAddressEv.exit.i: ; preds = %bb.c, %bb.b
  %spec.select.i.i = phi ptr [ %i.r, %bb.c ], [ null, %bb.b ]
  %.not6.i = icmp eq ptr %1, %spec.select.i.i
  br i1 %.not6.i, label %bb.d, label %"_ZZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_bENK3$_0clEv.exit"

bb.d:                                             ; preds = %_ZNK4llvm18DbgAssignIntrinsic10getAddressEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.v = tail call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %2) #21
  %i.w = tail call noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.v) #21 ; 4 uses
  %i.x = load i32, ptr %i.e, align 4
  %i.y = and i32 %i.x, 268435455
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds [32 x i8], ptr %0, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 144 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 136 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !52
  %.not2.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not2.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !50
  store ptr null, ptr %i.af, align 8, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.ad, align 8, !tbaa !50
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i:  ; preds = %bb.g, %bb.d
  store ptr %i.w, ptr %i.ac, align 8, !tbaa !25
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_bENK3$_0clEv.exit", label %bb.h

bb.h:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.w, align 8, !tbaa !53
  %i.aj = icmp ugt i8 %i.ai, 10
  br i1 %i.aj, label %bb.i, label %"_ZZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_bENK3$_0clEv.exit"

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 136 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !50
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i:  ; preds = %bb.j, %bb.i
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !50
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !52
  br label %"_ZZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_bENK3$_0clEv.exit"

"_ZZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_bENK3$_0clEv.exit": ; preds = %bb.a, %_ZNK4llvm18DbgAssignIntrinsic10getAddressEv.exit.i, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i.i, %bb.h, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !100
  %i.aq = and i32 %i.ap, 268435455
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds [32 x i8], ptr %0, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !25, !noalias !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !29, !noalias !100 ; 5 uses
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !15, !noalias !101 ; 3 uses
  %i.ay = add i8 %i.ax, -3
  %spec.select.i.i.i.i.i.i.i.i.i.i8 = icmp ult i8 %i.ay, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i8, label %.critedge.i.i, label %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread47

_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread47: ; preds = %"_ZZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_bENK3$_0clEv.exit"
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.bb = ptrtoint ptr %i.ba to i64
  br label %.lr.ph.i.preheader.i.i.i

.critedge.i.i:                                    ; preds = %"_ZZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEPNS_5ValueES2_bENK3$_0clEv.exit"
  %.not.i.i = icmp eq i8 %i.ax, 4
  br i1 %.not.i.i, label %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit: ; preds = %.critedge.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !17, !noalias !101 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = or i64 %i.be, 4                         ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !18, !noalias !101
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = or i64 %i.bk, 4                         ; 2 uses
  %.not4.i.i.i.i = icmp eq i64 %i.bf, %i.bl
  br i1 %.not4.i.i.i.i, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread47, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit
  %.sroa.7.052 = phi i64 [ %i.bb, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread47 ], [ %i.bl, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit ] ; 5 uses
  %.sroa.032.051 = phi i64 [ %i.az, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread47 ], [ %i.bf, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit ] ; 4 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %.lr.ph.i.preheader.i.i.i
  %.sroa.01.0.copyload.i.i5.i.i.i.i = phi i64 [ %storemerge.i.i.i.i.i, %bb.m ], [ %.sroa.032.051, %.lr.ph.i.preheader.i.i.i ] ; 8 uses
  %i.bm = and i64 %.sroa.01.0.copyload.i.i5.i.i.i.i, 4
  %i.bn = icmp eq i64 %i.bm, 0                    ; 3 uses
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bo = inttoptr i64 %.sroa.01.0.copyload.i.i5.i.i.i.i to ptr
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = and i64 %.sroa.01.0.copyload.i.i5.i.i.i.i, -5
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !31, !noalias !102
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %i.bs = phi ptr [ %i.bo, %bb.k ], [ %i.br, %bb.l ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !37, !noalias !102
  %i.bv = icmp eq ptr %i.bu, %1
  br i1 %i.bv, label %_ZN4llvm4findIRNS_14iterator_rangeINS_20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i
  %5 = and i64 %.sroa.01.0.copyload.i.i5.i.i.i.i, -5
  %6 = add nuw i64 %5, 12
  %storemerge.i.i.i.i.i.a = add nuw i64 %.sroa.01.0.copyload.i.i5.i.i.i.i, 144
  %storemerge.i.i.i.i.i = select i1 %i.bn, i64 %storemerge.i.i.i.i.i.a, i64 %6 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %storemerge.i.i.i.i.i, %.sroa.7.052
  br i1 %.not.i.i.i.i, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !99

_ZN4llvm4findIRNS_14iterator_rangeINS_20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit: ; preds = %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN4llvm5ValueEEclINS2_20location_op_iteratorEEEbT_.exit.i.i.i.i
  %i.bw = icmp eq i64 %.sroa.01.0.copyload.i.i5.i.i.i.i, %.sroa.7.052
  br i1 %i.bw, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm4findIRNS_14iterator_rangeINS_20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit
  %i.bx = icmp eq i8 %i.ax, 4
  br i1 %i.bx, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load i8, ptr %2, align 8, !tbaa !53
  %i.bz = icmp eq i8 %i.by, 25
  br i1 %i.bz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !43
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.cd = tail call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #21
  %i.ce = tail call noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.cd) #21
  %.pre = load i32, ptr %i.ao, align 4
  %.pre75 = and i32 %.pre, 268435455
  %.pre76 = zext nneg i32 %.pre75 to i64
  %.pre78 = sub nsw i64 0, %.pre76
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pre-phi79 = phi i64 [ %i.as, %bb.o ], [ %.pre78, %bb.p ]
  %i.cf = phi ptr [ %2, %bb.o ], [ %i.ce, %bb.p ] ; 4 uses
  %i.cg = getelementptr inbounds [32 x i8], ptr %0, i64 %.pre-phi79 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !50 ; 3 uses
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i9, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !51 ; 3 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !52
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !50
  store ptr null, ptr %i.cj, align 8, !tbaa !51
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr null, ptr %i.ch, align 8, !tbaa !50
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i:    ; preds = %bb.t, %bb.q
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !25
  %.not.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i
  %i.cm = load i8, ptr %i.cf, align 8, !tbaa !53
  %i.cn = icmp ugt i8 %i.cm, 10
  br i1 %i.cn, label %bb.v, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !52 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i10 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i10, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !50
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.w, %bb.v
  store ptr %i.co, ptr %i.ch, align 8, !tbaa !50
  store ptr %i.cg, ptr %i.co, align 8, !tbaa !52
  br label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

bb.x:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.cs, ptr %4, align 8, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.ct, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 4, ptr %i.cu, align 4, !tbaa !55
  %i.cv = load i8, ptr %2, align 8, !tbaa !53
  %i.cw = icmp eq i8 %i.cv, 25
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !29 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !15
  %i.da = add i8 %i.cz, -1
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.da, 2
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i, ptr %i.cy, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

bb.z:                                             ; preds = %bb.x
  %i.db = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #21
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

_ZL13getAsMetadataPN4llvm5ValueE.exit:            ; preds = %bb.y, %bb.z
  %i.dc = phi ptr [ %spec.select.i.i.i, %bb.y ], [ %i.db, %bb.z ] ; 2 uses
  %.not6971 = icmp eq i64 %.sroa.032.051, %.sroa.7.052
  br i1 %.not6971, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit
  %i.dd = and i64 %.sroa.01.0.copyload.i.i5.i.i.i.i, -5
  %i.de = inttoptr i64 %i.dd to ptr
  br i1 %i.bn, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.df = inttoptr i64 %.sroa.01.0.copyload.i.i5.i.i.i.i to ptr
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 136
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us, %.lr.ph.split.us
  %.sroa.026.072.us = phi i64 [ %.sroa.032.051, %.lr.ph.split.us ], [ %storemerge.i.us, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us ] ; 5 uses
  %i.dh = and i64 %.sroa.026.072.us, 4
  %i.di = icmp eq i64 %i.dh, 0                    ; 2 uses
  br i1 %i.di, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = and i64 %.sroa.026.072.us, -5
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !31
  br label %_ZN4llvm20location_op_iteratordeEv.exit.us

bb.ac:                                            ; preds = %bb.aa
  %i.dm = inttoptr i64 %.sroa.026.072.us to ptr
  br label %_ZN4llvm20location_op_iteratordeEv.exit.us

_ZN4llvm20location_op_iteratordeEv.exit.us:       ; preds = %bb.ac, %bb.ab
  %i.dn = phi ptr [ %i.dm, %bb.ac ], [ %i.dl, %bb.ab ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !37 ; 4 uses
  %i.dq = load ptr, ptr %i.dg, align 8, !tbaa !37
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZL13getAsMetadataPN4llvm5ValueE.exit22.us, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm20location_op_iteratordeEv.exit.us
  %i.ds = load i8, ptr %i.dp, align 8, !tbaa !53
  %i.dt = icmp eq i8 %i.ds, 25
  br i1 %i.dt, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.dp) #21
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit22.us

bb.af:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !15
  %i.dy = add i8 %i.dx, -1
  %spec.select.i.i.i.i.i.i.i.i.i20.us = icmp ult i8 %i.dy, 2
  %spec.select.i.i.i21.us = select i1 %spec.select.i.i.i.i.i.i.i.i.i20.us, ptr %i.dw, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit22.us

_ZL13getAsMetadataPN4llvm5ValueE.exit22.us:       ; preds = %bb.af, %bb.ae, %_ZN4llvm20location_op_iteratordeEv.exit.us
  %i.dz = phi ptr [ %i.dc, %_ZN4llvm20location_op_iteratordeEv.exit.us ], [ %spec.select.i.i.i21.us, %bb.af ], [ %i.du, %bb.ae ] ; 2 uses
  %i.ea = load i32, ptr %i.ct, align 8, !tbaa !18 ; 2 uses
  %i.eb = load i32, ptr %i.cu, align 4, !tbaa !55
  %.not.i23.us = icmp ult i32 %i.ea, %i.eb
  br i1 %.not.i23.us, label %bb.ah, label %bb.ag, !prof !56

bb.ag:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit22.us
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.dz)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us

bb.ah:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit22.us
  %i.ec = zext i32 %i.ea to i64
  %i.ed = load ptr, ptr %4, align 8, !tbaa !17
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  store ptr %i.dz, ptr %i.ee, align 1
  %i.ef = load i32, ptr %i.ct, align 8, !tbaa !18
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ct, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us: ; preds = %bb.ah, %bb.ag
  %7 = and i64 %.sroa.026.072.us, -5
  %8 = add nuw i64 %7, 12
  %storemerge.i.us.a = add nuw i64 %.sroa.026.072.us, 144
  %storemerge.i.us = select i1 %i.di, i64 %storemerge.i.us.a, i64 %8 ; 2 uses
  %.not69.us = icmp eq i64 %storemerge.i.us, %.sroa.7.052
  br i1 %.not69.us, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit.us, %_ZL13getAsMetadataPN4llvm5ValueE.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !43
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !47, !nonnull !48, !align !49 ; 2 uses
  %i.ek = load ptr, ptr %4, align 8, !tbaa !17
  %i.el = load i32, ptr %i.ct, align 8, !tbaa !18
  %i.em = zext i32 %i.el to i64
  %i.en = call noundef ptr @_ZN4llvm9DIArgList3getERNS_11LLVMContextENS_8ArrayRefIPNS_15ValueAsMetadataEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr %i.ek, i64 %i.em) #21
  %i.eo = call noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.en) #21 ; 4 uses
  %i.ep = load i32, ptr %i.ao, align 4
  %i.eq = and i32 %i.ep, 268435455
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds [32 x i8], ptr %0, i64 %i.es ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !50 ; 3 uses
  %.not.i.i.i.i.i.i11 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i.i11, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i13, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !51 ; 3 uses
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !52
  %.not2.i.i.i.i.i.i12 = icmp eq ptr %i.ex, null
  br i1 %.not2.i.i.i.i.i.i12, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %i.ev, ptr %i.ey, align 8, !tbaa !50
  store ptr null, ptr %i.ew, align 8, !tbaa !51
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store ptr null, ptr %i.eu, align 8, !tbaa !50
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i13

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i13:  ; preds = %bb.ak, %._crit_edge
  store ptr %i.eo, ptr %i.et, align 8, !tbaa !25
  %.not.i.i.i.i.i14 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i14, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit17, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i13
  %i.ez = load i8, ptr %i.eo, align 8, !tbaa !53
  %i.fa = icmp ugt i8 %i.ez, 10
  br i1 %i.fa, label %bb.am, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit17

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 3 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !52 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i16, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !50
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i16

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i16:  ; preds = %bb.an, %bb.am
  store ptr %i.fb, ptr %i.eu, align 8, !tbaa !50
  store ptr %i.et, ptr %i.fb, align 8, !tbaa !52
  br label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit17

_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit17: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i13, %bb.al, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i16
  %i.ff = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.cs
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit17
  call void @free(ptr noundef %i.ff) #21
  br label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit: ; preds = %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit17, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit
  %.sroa.026.072 = phi i64 [ %storemerge.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit ], [ %.sroa.032.051, %.lr.ph ] ; 5 uses
  %i.fh = and i64 %.sroa.026.072, 4
  %i.fi = icmp eq i64 %i.fh, 0                    ; 2 uses
  br i1 %i.fi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.split
  %i.fj = inttoptr i64 %.sroa.026.072 to ptr
  br label %_ZN4llvm20location_op_iteratordeEv.exit

bb.aq:                                            ; preds = %.lr.ph.split
  %i.fk = and i64 %.sroa.026.072, -5
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !31
  br label %_ZN4llvm20location_op_iteratordeEv.exit

_ZN4llvm20location_op_iteratordeEv.exit:          ; preds = %bb.ap, %bb.aq
  %i.fn = phi ptr [ %i.fj, %bb.ap ], [ %i.fm, %bb.aq ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 136
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !37 ; 4 uses
  %i.fq = load ptr, ptr %i.de, align 8, !tbaa !31
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 136
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !37
  %i.ft = icmp eq ptr %i.fp, %i.fs
  br i1 %i.ft, label %_ZL13getAsMetadataPN4llvm5ValueE.exit22, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm20location_op_iteratordeEv.exit
  %i.fu = load i8, ptr %i.fp, align 8, !tbaa !53
  %i.fv = icmp eq i8 %i.fu, 25
  br i1 %i.fv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !29 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 4, !tbaa !15
  %i.fz = add i8 %i.fy, -1
  %spec.select.i.i.i.i.i.i.i.i.i20 = icmp ult i8 %i.fz, 2
  %spec.select.i.i.i21 = select i1 %spec.select.i.i.i.i.i.i.i.i.i20, ptr %i.fx, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit22

bb.at:                                            ; preds = %bb.ar
  %i.ga = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.fp) #21
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit22

_ZL13getAsMetadataPN4llvm5ValueE.exit22:          ; preds = %bb.at, %bb.as, %_ZN4llvm20location_op_iteratordeEv.exit
  %i.gb = phi ptr [ %i.dc, %_ZN4llvm20location_op_iteratordeEv.exit ], [ %spec.select.i.i.i21, %bb.as ], [ %i.ga, %bb.at ] ; 2 uses
  %i.gc = load i32, ptr %i.ct, align 8, !tbaa !18 ; 2 uses
  %i.gd = load i32, ptr %i.cu, align 4, !tbaa !55
  %.not.i23 = icmp ult i32 %i.gc, %i.gd
  br i1 %.not.i23, label %bb.av, label %bb.au, !prof !56

bb.au:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit22
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.gb)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

bb.av:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit22
  %i.ge = zext i32 %i.gc to i64
  %i.gf = load ptr, ptr %4, align 8, !tbaa !17
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge
  store ptr %i.gb, ptr %i.gg, align 1
  %i.gh = load i32, ptr %i.ct, align 8, !tbaa !18
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.ct, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit: ; preds = %bb.au, %bb.av
  %9 = and i64 %.sroa.026.072, -5
  %10 = add nuw i64 %9, 12
  %storemerge.i.a = add nuw i64 %.sroa.026.072, 144
  %storemerge.i = select i1 %i.fi, i64 %storemerge.i.a, i64 %10 ; 2 uses
  %.not69 = icmp eq i64 %storemerge.i, %.sroa.7.052
  br i1 %.not69, label %._crit_edge, label %.lr.ph.split

_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit: ; preds = %bb.m, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit, %.critedge.i.i, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, %bb.u, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, %_ZN4llvm4findIRNS_14iterator_rangeINS_20location_op_iteratorEEEPNS_5ValueEEEDaOT_RKT0_.exit, %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit
  ret void
}

declare noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZN4llvm9DIArgList3getERNS_11LLVMContextENS_8ArrayRefIPNS_15ValueAsMetadataEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEjPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 268435455
  %i.d = zext nneg i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = load i8, ptr %i.i, align 4, !tbaa !15
  %i.k = icmp eq i8 %i.j, 4
  br i1 %i.k, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %2, align 8, !tbaa !53
  %i.m = icmp eq i8 %i.l, 25
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.q = tail call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #21
  %i.r = tail call noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q) #21
  %.pre = load i32, ptr %i.a, align 4
  %.pre21 = and i32 %.pre, 268435455
  %.pre22 = zext nneg i32 %.pre21 to i64
  %.pre24 = sub nsw i64 0, %.pre22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.pre-phi25 = phi i64 [ %i.e, %bb.b ], [ %.pre24, %bb.c ]
  %i.s = phi ptr [ %2, %bb.b ], [ %i.r, %bb.c ]   ; 4 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %.pre-phi25 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51   ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !52
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.v, ptr %i.y, align 8, !tbaa !50
  store ptr null, ptr %i.w, align 8, !tbaa !51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.u, align 8, !tbaa !50
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i:    ; preds = %bb.g, %bb.d
  store ptr %i.s, ptr %i.t, align 8, !tbaa !25
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i
  %i.z = load i8, ptr %i.s, align 8, !tbaa !53
  %i.aa = icmp ugt i8 %i.z, 10
  br i1 %i.aa, label %bb.i, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !50
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.j, %bb.i
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !50
  store ptr %i.t, ptr %i.ab, align 8, !tbaa !52
  br label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 4, ptr %i.ah, align 4, !tbaa !55
  %i.ai = load i8, ptr %2, align 8, !tbaa !53
  %i.aj = icmp eq i8 %i.ai, 25
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4, !tbaa !15
  %i.an = add i8 %i.am, -1
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.an, 2
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i, ptr %i.al, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

bb.m:                                             ; preds = %bb.k
  %i.ao = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %2) #21
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

_ZL13getAsMetadataPN4llvm5ValueE.exit:            ; preds = %bb.l, %bb.m
  %i.ap = phi ptr [ %spec.select.i.i.i, %bb.l ], [ %i.ao, %bb.m ]
  %i.aq = zext i32 %1 to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit, %_ZL13getAsMetadataPN4llvm5ValueE.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit ], [ 0, %_ZL13getAsMetadataPN4llvm5ValueE.exit ] ; 4 uses
  %i.ar = load i32, ptr %i.a, align 4
  %i.as = and i32 %i.ar, 268435455
  %i.at = zext nneg i32 %i.as to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [32 x i8], ptr %0, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 4 uses
  %i.az = load i8, ptr %i.ay, align 4, !tbaa !15  ; 2 uses
  %i.ba = icmp eq i8 %i.az, 4                     ; 2 uses
  br i1 %i.ba, label %bb.o, label %_ZNK4llvm20DbgVariableIntrinsic25getNumVariableLocationOpsEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !18
  %i.bd = zext i32 %i.bc to i64
  br label %_ZNK4llvm20DbgVariableIntrinsic25getNumVariableLocationOpsEv.exit

_ZNK4llvm20DbgVariableIntrinsic25getNumVariableLocationOpsEv.exit: ; preds = %bb.n, %bb.o
  %.0.i.i = phi i64 [ %i.bd, %bb.o ], [ 1, %bb.n ]
  %i.be = icmp samesign ult i64 %indvars.iv, %.0.i.i
  br i1 %i.be, label %bb.x, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm20DbgVariableIntrinsic25getNumVariableLocationOpsEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !43
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !47, !nonnull !48, !align !49 ; 2 uses
  %i.bi = load ptr, ptr %3, align 8, !tbaa !17
  %i.bj = load i32, ptr %i.ag, align 8, !tbaa !18
  %i.bk = zext i32 %i.bj to i64
  %i.bl = call noundef ptr @_ZN4llvm9DIArgList3getERNS_11LLVMContextENS_8ArrayRefIPNS_15ValueAsMetadataEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr %i.bi, i64 %i.bk) #21
  %i.bm = call noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bl) #21 ; 4 uses
  %i.bn = load i32, ptr %i.a, align 4
  %i.bo = and i32 %i.bn, 268435455
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50 ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i7, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i9, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !51 ; 3 uses
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !52
  %.not2.i.i.i.i.i.i8 = icmp eq ptr %i.bv, null
  br i1 %.not2.i.i.i.i.i.i8, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !50
  store ptr null, ptr %i.bu, align 8, !tbaa !51
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr null, ptr %i.bs, align 8, !tbaa !50
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i9

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i9:   ; preds = %bb.s, %bb.p
  store ptr %i.bm, ptr %i.br, align 8, !tbaa !25
  %.not.i.i.i.i.i10 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i10, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit13, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i9
  %i.bx = load i8, ptr %i.bm, align 8, !tbaa !53
  %i.by = icmp ugt i8 %i.bx, 10
  br i1 %i.by, label %bb.u, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit13
end_hunk_0
begin_hunk_1_@_ZN4llvm20DbgVariableIntrinsic25replaceVariableLocationOpEjPNS_5ValueE:bb.a
bb.w:                                             ; preds = %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit13
  call void @free(ptr noundef %i.cd) #21
  br label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit: ; preds = %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit13, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

bb.x:                                             ; preds = %_ZNK4llvm20DbgVariableIntrinsic25getNumVariableLocationOpsEv.exit
  %i.cf = icmp eq i64 %indvars.iv, %i.aq
  br i1 %i.cf, label %_ZL13getAsMetadataPN4llvm5ValueE.exit16, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.ba, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ck = add i8 %i.az, -38
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ck, -33
  call void @llvm.assume(i1 %switch.i.i.i.i.i.i.i.i.i.i)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.aa, %bb.z
  %.sink11.i.i = phi ptr [ %i.cj, %bb.z ], [ %i.ay, %bb.aa ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 136
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !37 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !53
  %i.co = icmp eq i8 %i.cn, 25
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.sink.split.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !29 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !15
  %i.cs = add i8 %i.cr, -1
  %spec.select.i.i.i.i.i.i.i.i.i14 = icmp ult i8 %i.cs, 2
  %spec.select.i.i.i15 = select i1 %spec.select.i.i.i.i.i.i.i.i.i14, ptr %i.cq, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit16

bb.ac:                                            ; preds = %.sink.split.i.i
  %i.ct = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.cm) #21
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit16

_ZL13getAsMetadataPN4llvm5ValueE.exit16:          ; preds = %bb.ac, %bb.ab, %bb.x
  %i.cu = phi ptr [ %i.ap, %bb.x ], [ %spec.select.i.i.i15, %bb.ab ], [ %i.ct, %bb.ac ] ; 2 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !18 ; 2 uses
  %i.cw = load i32, ptr %i.ah, align 4, !tbaa !55
  %.not.i = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i, label %bb.ae, label %bb.ad, !prof !56

bb.ad:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit16
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.cu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

bb.ae:                                            ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit16
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %3, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cu, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.ag, align 8, !tbaa !18
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.ag, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit: ; preds = %bb.ad, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.n, !llvm.loop !103

_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit: ; preds = %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, %bb.h, %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm20DbgVariableIntrinsic22addVariableLocationOpsENS_8ArrayRefIPNS_5ValueEEEPNS_12DIExpressionE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.d = tail call noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %3) #21 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 268435455
  %i.h = zext nneg i32 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [32 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51   ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !52
  %.not2.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not2.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.m, ptr %i.p, align 8, !tbaa !50
  store ptr null, ptr %i.n, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.l, align 8, !tbaa !50
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i:    ; preds = %bb.d, %bb.a
  store ptr %i.d, ptr %i.k, align 8, !tbaa !25
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i
  %i.q = load i8, ptr %i.d, align 8, !tbaa !53
  %i.r = icmp ugt i8 %i.q, 10
  br i1 %i.r, label %bb.f, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !50
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i:    ; preds = %bb.g, %bb.f
  store ptr %i.s, ptr %i.l, align 8, !tbaa !50
  store ptr %i.k, ptr %i.s, align 8, !tbaa !52
  br label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit

_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i, %bb.e, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 4, ptr %i.y, align 4, !tbaa !55
  %i.z = load i32, ptr %i.e, align 4, !noalias !108
  %i.aa = and i32 %i.z, 268435455
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25, !noalias !108
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29, !noalias !108 ; 5 uses
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !15, !noalias !109 ; 2 uses
  %i.ai = add i8 %i.ah, -3
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ai, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i, label %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread54

_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread54: ; preds = %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.al = ptrtoint ptr %i.ak to i64
  br label %.lr.ph.preheader

.critedge.i.i:                                    ; preds = %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit
  %.not.i.i = icmp eq i8 %i.ah, 4
  br i1 %.not.i.i, label %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit, label %._crit_edge

_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit: ; preds = %.critedge.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17, !noalias !109 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = or i64 %i.ao, 4                         ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !18, !noalias !109
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.as
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = or i64 %i.au, 4                         ; 2 uses
  %.not3233 = icmp eq i64 %i.ap, %i.av
  br i1 %.not3233, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread54, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit
  %.sroa.029.059 = phi i64 [ %i.aj, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread54 ], [ %i.ap, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit ]
  %.sroa.6.058 = phi i64 [ %i.al, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit.thread54 ], [ %i.av, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit, %.critedge.i.i, %_ZNK4llvm20DbgVariableIntrinsic12location_opsEv.exit
  %.idx = shl nuw nsw i64 %2, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not35 = icmp eq i64 %2, 0
  br i1 %.not35, label %._crit_edge39, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit
  %.sroa.026.034 = phi i64 [ %storemerge.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit ], [ %.sroa.029.059, %.lr.ph.preheader ] ; 5 uses
  %i.ax = and i64 %.sroa.026.034, 4
  %i.ay = icmp eq i64 %i.ax, 0                    ; 2 uses
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.az = inttoptr i64 %.sroa.026.034 to ptr
  br label %_ZN4llvm20location_op_iteratordeEv.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ba = and i64 %.sroa.026.034, -5
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  br label %_ZN4llvm20location_op_iteratordeEv.exit

_ZN4llvm20location_op_iteratordeEv.exit:          ; preds = %bb.h, %bb.i
  %i.bd = phi ptr [ %i.az, %bb.h ], [ %i.bc, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !53
  %i.bh = icmp eq i8 %i.bg, 25
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm20location_op_iteratordeEv.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !29 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !15
  %i.bl = add i8 %i.bk, -1
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bl, 2
  %spec.select.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i, ptr %i.bj, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

bb.k:                                             ; preds = %_ZN4llvm20location_op_iteratordeEv.exit
  %i.bm = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.bf) #21
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit

_ZL13getAsMetadataPN4llvm5ValueE.exit:            ; preds = %bb.j, %bb.k
  %i.bn = phi ptr [ %spec.select.i.i.i, %bb.j ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bo = load i32, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  %i.bp = load i32, ptr %i.y, align 4, !tbaa !55
  %.not.i = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i, label %bb.m, label %bb.l, !prof !56

bb.l:                                             ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.bn)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

bb.m:                                             ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit
  %i.bq = zext i32 %i.bo to i64
  %i.br = load ptr, ptr %4, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bn, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.x, align 8, !tbaa !18
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.x, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit: ; preds = %bb.l, %bb.m
  %5 = and i64 %.sroa.026.034, -5
  %6 = add nuw i64 %5, 12
  %storemerge.i.a = add nuw i64 %.sroa.026.034, 144
  %storemerge.i = select i1 %i.ay, i64 %storemerge.i.a, i64 %6 ; 2 uses
  %.not32 = icmp eq i64 %storemerge.i, %.sroa.6.058
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge39:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit24, %._crit_edge
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !47, !nonnull !48, !align !49 ; 2 uses
  %i.bx = load ptr, ptr %4, align 8, !tbaa !17
  %i.by = load i32, ptr %i.x, align 8, !tbaa !18
  %i.bz = zext i32 %i.by to i64
  %i.ca = call noundef ptr @_ZN4llvm9DIArgList3getERNS_11LLVMContextENS_8ArrayRefIPNS_15ValueAsMetadataEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr %i.bx, i64 %i.bz) #21
  %i.cb = call noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.ca) #21 ; 4 uses
  %i.cc = load i32, ptr %i.e, align 4
  %i.cd = and i32 %i.cc, 268435455
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds [32 x i8], ptr %0, i64 %i.cf ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !50 ; 3 uses
  %.not.i.i.i.i.i.i13 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i13, label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i15, label %bb.n

bb.n:                                             ; preds = %._crit_edge39
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !51 ; 3 uses
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !52
  %.not2.i.i.i.i.i.i14 = icmp eq ptr %i.ck, null
  br i1 %.not2.i.i.i.i.i.i14, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !50
  store ptr null, ptr %i.cj, align 8, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr null, ptr %i.ch, align 8, !tbaa !50
  br label %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i15

_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i15:  ; preds = %bb.p, %._crit_edge39
  store ptr %i.cb, ptr %i.cg, align 8, !tbaa !25
  %.not.i.i.i.i.i16 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i16, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit19, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i15
  %i.cm = load i8, ptr %i.cb, align 8, !tbaa !53
  %i.cn = icmp ugt i8 %i.cm, 10
  br i1 %i.cn, label %bb.r, label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit19

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !52 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i17 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i17, label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i18, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !50
  br label %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i18

_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i18:  ; preds = %bb.s, %bb.r
  store ptr %i.co, ptr %i.ch, align 8, !tbaa !50
  store ptr %i.cg, ptr %i.co, align 8, !tbaa !52
  br label %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit19

_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit19: ; preds = %_ZN4llvm3Use14removeFromListEv.exit.i.i.i.i.i15, %bb.q, %_ZN4llvm3Use9addToListEPPS0_.exit.i.i.i.i.i.i18
  %i.cs = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.w
  br i1 %i.ct, label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit19
  call void @free(ptr noundef %i.cs) #21
  br label %_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_15ValueAsMetadataELj4EED2Ev.exit: ; preds = %_ZN4llvm20DbgVariableIntrinsic13setArgOperandEjPNS_5ValueE.exit19, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

.lr.ph38:                                         ; preds = %._crit_edge, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit24
  %.036 = phi ptr [ %i.dk, %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit24 ], [ %1, %._crit_edge ] ; 2 uses
  %i.cu = load ptr, ptr %.036, align 8, !tbaa !57 ; 3 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !53
  %i.cw = icmp eq i8 %i.cv, 25
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !29 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 4, !tbaa !15
  %i.da = add i8 %i.cz, -1
  %spec.select.i.i.i.i.i.i.i.i.i20 = icmp ult i8 %i.da, 2
  %spec.select.i.i.i21 = select i1 %spec.select.i.i.i.i.i.i.i.i.i20, ptr %i.cy, ptr null
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit22

bb.v:                                             ; preds = %.lr.ph38
  %i.db = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef nonnull %i.cu) #21
  br label %_ZL13getAsMetadataPN4llvm5ValueE.exit22

_ZL13getAsMetadataPN4llvm5ValueE.exit22:          ; preds = %bb.u, %bb.v
  %i.dc = phi ptr [ %spec.select.i.i.i21, %bb.u ], [ %i.db, %bb.v ] ; 2 uses
  %i.dd = load i32, ptr %i.x, align 8, !tbaa !18  ; 2 uses
  %i.de = load i32, ptr %i.y, align 4, !tbaa !55
  %.not.i23 = icmp ult i32 %i.dd, %i.de
  br i1 %.not.i23, label %bb.x, label %bb.w, !prof !56

bb.w:                                             ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit22
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.dc)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit24

bb.x:                                             ; preds = %_ZL13getAsMetadataPN4llvm5ValueE.exit22
  %i.df = zext i32 %i.dd to i64
  %i.dg = load ptr, ptr %4, align 8, !tbaa !17
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  store ptr %i.dc, ptr %i.dh, align 1
  %i.di = load i32, ptr %i.x, align 8, !tbaa !18
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.x, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit24

_ZN4llvm23SmallVectorTemplateBaseIPNS_15ValueAsMetadataELb1EE9push_backES2_.exit24: ; preds = %bb.w, %bb.x
  %i.dk = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dk, %i.aw
  br i1 %.not, label %._crit_edge39, label %.lr.ph38
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, i8 } @_ZNK4llvm20DbgVariableIntrinsic21getFragmentSizeInBitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %"class.std::optional.7", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 268435455
  %i.d = zext nneg i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113, !noalias !114 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115, !noalias !114
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  call void @_ZN4llvm12DIExpression15getFragmentInfoENS0_16expr_op_iteratorES1_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.7") align 8 %1, ptr %i.l, ptr %i.r) #21
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !117, !range !118, !noundef !48
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load i64, ptr %1, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.w = insertvalue { i64, i8 } poison, i64 %i.v, 0
  %i.x = insertvalue { i64, i8 } %i.w, i8 1, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.y = load i32, ptr %i.a, align 4
  %i.z = and i32 %i.y, 268435455
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ah = call { i64, i8 } @_ZNK4llvm10DIVariable13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(20) %i.ag) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.fca.1.insert.merged = phi { i64, i8 } [ %i.ah, %bb.c ], [ %i.x, %bb.b ]
  ret { i64, i8 } %.fca.1.insert.merged
}

declare { i64, i8 } @_ZNK4llvm10DIVariable13getSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK4llvm18DbgAssignIntrinsic10getAddressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 268435455
  %i.d = zext nneg i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !15
  %i.l = add i8 %i.k, -3
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.l, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

end_hunk_1
