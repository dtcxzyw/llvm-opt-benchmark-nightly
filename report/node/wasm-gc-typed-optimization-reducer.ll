Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-gc-typed-optimization-reducer?download=true
inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer26RefineTypeKnowledgeNotNullENS2_7OpIndexERKNS2_9OperationE:bb.a
  %i.l = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.k, i32 %.sroa.08.0.i) ; 5 uses
  %i.m = and i32 %i.l, 5
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.p, label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.o = and i32 %i.l, -5                         ; 2 uses
  store i32 %i.o, ptr %3, align 4
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 898), align 2, !range !10, !noundef !5
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.t, align 4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp sgt i32 %.sroa.0.0.copyload.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = lshr i32 %.sroa.0.0.copyload.i, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i32 %.sroa.0.0.copyload.i, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = and i64 %i.aa, %i.ad
  %.not.i = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not.i, ptr @.str.8, ptr @.str.7
  %i.ag = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ah, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = lshr i32 %i.am, 4
  %i.ao = load i8, ptr %2, align 4
  %i.ap = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.ao) #19
  %i.aq = lshr i32 %.sroa.08.0.i, 4
  %i.ar = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = add i64 %i.au, %i.f
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i8, ptr %i.aw, align 4
  %i.ay = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext %i.ax) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #19
  %i.az = load ptr, ptr %4, align 8
  %i.ba = load i32, ptr %3, align 4
  %.fr2.i = freeze i32 %i.ba                      ; 3 uses
  %i.bb = and i32 %.fr2.i, 268435427              ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 514
  br i1 %i.bc, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = and i32 %.fr2.i, 3
  %i.be = and i32 %.fr2.i, 5
  %i.bf = icmp ne i32 %i.be, 5
  %.off.i = add nsw i32 %i.bd, -1
  %switch.i = icmp ult i32 %.off.i, 2
  %or.cond.i = and i1 %i.bf, %switch.i
  br i1 %or.cond.i, label %bb.i, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit

bb.i:                                             ; preds = %bb.h
  %i.bg = add nsw i32 %i.bb, -1153                ; 2 uses
  %i.bh = call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bg, i32 27) ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 29
  br i1 %i.bi, label %switch.lookup, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit

switch.lookup:                                    ; preds = %bb.i
  %i.bj = zext nneg i32 %i.bh to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer26RefineTypeKnowledgeNotNullENS2_7OpIndexERKNS2_9OperationE, i64 %i.bj
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit: ; preds = %bb.i, %switch.lookup, %bb.g, %bb.h
  %i.bk = phi ptr [ @.str.17, %bb.g ], [ @.str.8, %bb.h ], [ %switch.load, %switch.lookup ], [ @.str.8, %bb.i ]
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.16, i32 noundef %.sroa.0.0.copyload.i, ptr noundef nonnull %i.af, i32 noundef %i.an, ptr noundef %i.ap, i32 noundef %i.aq, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef nonnull %i.bk) #19
  %i.bl = load ptr, ptr %4, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit
  %i.bo = load i64, ptr %i.bm, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.sroa.0.0.copyload.pre = load i32, ptr %3, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %bb.f ] ; 3 uses
  %i.bq = call ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.k, i32 %.sroa.08.0.i) ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4            ; 2 uses
  %.not = icmp eq i32 %i.br, %.sroa.0.0.copyload
  br i1 %.not, label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %i.bw = icmp ult ptr %i.bt, %i.bv
  br i1 %i.bw, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE9push_backEOS9_.exit.i.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 4
  %i.ce = add nsw i64 %i.cd, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ce)
  %.pre.i.i.i.i = load ptr, ptr %i.bs, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE9push_backEOS9_.exit.i.i

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE9push_backEOS9_.exit.i.i: ; preds = %bb.l, %bb.k
  %i.cf = phi ptr [ %i.bt, %bb.k ], [ %.pre.i.i.i.i, %bb.l ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %i.cg, ptr %i.bs, align 8
  store ptr %i.bq, ptr %i.cf, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 %.sroa.0.0.copyload, ptr %i.bq, align 4
  br label %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit

_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit: ; preds = %bb.j, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE9push_backEOS9_.exit.i.i
  %i.ch = load i32, ptr %3, align 4
  %.fr2.i10 = freeze i32 %i.ch                    ; 3 uses
  %i.ci = and i32 %.fr2.i10, 268435427            ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 514
  br i1 %i.cj, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit
  %i.ck = and i32 %.fr2.i10, 3
  %i.cl = and i32 %.fr2.i10, 5
  %i.cm = icmp ne i32 %i.cl, 5
  %.off.i11 = add nsw i32 %i.ck, -1
  %switch.i12 = icmp ult i32 %.off.i11, 2
  %or.cond.i13 = and i1 %i.cm, %switch.i12
  br i1 %or.cond.i13, label %bb.n, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15

bb.n:                                             ; preds = %bb.m
  %i.cn = add nsw i32 %i.ci, -1153                ; 2 uses
  %i.co = call i32 @llvm.fshl.i32(i32 %i.cn, i32 %i.cn, i32 27)
  switch i32 %i.co, label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15 [
    i32 0, label %bb.o
    i32 4, label %bb.o
    i32 12, label %bb.o
    i32 21, label %bb.o
    i32 28, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3SetENS2_7OpIndexES5_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 52
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.cr, align 4 ; 3 uses
  %i.cs = and i32 %.sroa.0.0.copyload.i16, 63
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = icmp sgt i32 %.sroa.0.0.copyload.i16, -1
  call void @llvm.assume(i1 %i.cx)
  %i.cy = lshr i32 %.sroa.0.0.copyload.i16, 6
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = or i64 %i.db, %i.cu
  store i64 %i.dc, ptr %i.da, align 8
  br label %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15

_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15: ; preds = %bb.n, %bb.m, %bb.o
  %.sroa.08.0 = phi i32 [ 514, %bb.o ], [ %i.l, %bb.m ], [ %i.l, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15
  %.sroa.08.1 = phi i32 [ %.sroa.08.0, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit15 ], [ %i.l, %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit ]
  ret i32 %.sroa.08.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 6 uses
  %2 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.b
  %3 = getelementptr i8, ptr %2, i64 16
  %4 = icmp ule ptr %3, %i.a
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %6 = icmp ule ptr %5, %.sroa.0.0.copyload.i.i.i.i.i.i
  %7 = select i1 %4, i1 true, i1 %6
  tail call void @llvm.assume(i1 %7)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i8.i.i, %i.b    ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i.i, label %bb.f, !prof !13

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = add i16 %.sroa.017.047.i.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ap = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !50

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.ak, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ah, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_14const_iteratorERSL_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit, !prof !7

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #19
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #19
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8
  %i.ba = load i32, ptr %.sroa.0.0.copyload, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorptEv.exit
  %.sroa.06.0 = phi i32 [ %i.ba, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorptEv.exit ], [ 2, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE14const_iteratorESR_.exit ]
  ret i32 %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 4 dereferenceable(5) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.08.0.i.in = phi ptr [ %i.h, %bb.a ], [ %i.m, %bb.e ]
  %.sroa.08.0.i = load i32, ptr %.sroa.08.0.i.in, align 4 ; 4 uses
  %i.i = zext i32 %.sroa.08.0.i to i64
  %i.j = add i64 %i.i, %i.e
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  switch i8 %i.l, label %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit [
    i8 19, label %bb.e
    i8 16, label %bb.c
    i8 22, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink.i = phi i64 [ 8, %bb.d ], [ 12, %bb.c ], [ 16, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink.i
  br label %bb.b

_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit: ; preds = %bb.b
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.e
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.s, align 4
  %i.t = lshr i32 %.sroa.0.0.copyload.i8, 4
  %i.u = lshr i32 %.sroa.08.0.i, 4                ; 2 uses
  %.not = icmp samesign ule i32 %i.t, %i.u
  %i.v = lshr i32 %i.p, 4
  %i.w = icmp samesign ult i32 %i.u, %i.v
  %or.cond = select i1 %.not, i1 %i.w, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %or.cond, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit
  %i.y = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.x, i32 %.sroa.08.0.i)
  br label %bb.g

.critedge:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE19GetPredecessorValueENS2_7OpIndexEi(ptr noundef nonnull align 8 dereferenceable(384) %i.x, i32 %.sroa.08.0.i, i32 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f
  %.sroa.07.0 = phi i32 [ %i.y, %bb.f ], [ %i.z, %.critedge ]
  ret i32 %.sroa.07.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(561) %0, i32 %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.08.0 = phi i32 [ %1, %bb.a ], [ %.sroa.08.2, %bb.e ] ; 2 uses
  %i.f = zext i32 %.sroa.08.0 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  switch i8 %i.i, label %bb.f [
    i8 19, label %bb.e
    i8 16, label %bb.c
    i8 22, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.sink = phi i64 [ 8, %bb.d ], [ 12, %bb.c ], [ 16, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink
  %.sroa.08.2 = load i32, ptr %i.j, align 4
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  ret i32 %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE19GetPredecessorValueENS2_7OpIndexEi(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 6 uses
  %3 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.b
  %4 = getelementptr i8, ptr %3, i64 16
  %5 = icmp ule ptr %4, %i.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %7 = icmp ule ptr %6, %.sroa.0.0.copyload.i.i.i.i.i
  %8 = select i1 %5, i1 true, i1 %7
  tail call void @llvm.assume(i1 %8)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !13

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.047.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !50

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ah, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit, !prof !7

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #19
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #19
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.az, align 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.bb = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  %i.bd = add i32 %i.bb, %2
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.be
  %.0.i = select i1 %i.bc, ptr %.sroa.0.0.copyload, ptr %i.bh
  %i.bi = load i32, ptr %.0.i, align 4
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit
  %.sroa.06.0 = phi i32 [ %i.bi, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit ], [ 2, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit ]
  ret i32 %.sroa.06.0
}

declare { i32, ptr } @_ZN2v88internal4wasm5UnionENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32, i32, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN2v88internal8compiler10turboshaft10OpcodeNameENS2_6OpcodeE(i8 noundef zeroext) local_unnamed_addr #3

declare void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare i32 @_ZN2v88internal4wasm14ToNullSentinelENS1_12TypeInModuleE(i32, ptr) local_unnamed_addr #3

declare { i32, ptr } @_ZN2v88internal4wasm12IntersectionENS1_9ValueTypeES2_PKNS1_10WasmModuleE(i32, i32, ptr noundef) local_unnamed_addr #3

declare void @_ZN2v88internal8compiler10turboshaft10LoopFinder3RunEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #7

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 3
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft16AnalyzerIterator9StackNodeEA_S6_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft13SnapshotTableINS2_4wasm9ValueTypeENS4_9NoKeyDataEE8SnapshotELm8ESaISA_EE4GrowEm:bb.a
; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = icmp eq i64 %i.i, 1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22 ; 5 uses
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 1
  br i1 %i.u, label %bb.f, label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.o, align 1, !range !10, !noundef !5
  store i8 %i.v, ptr %i.n, align 1
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit:  ; preds = %bb.d, %bb.e, %bb.f
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = sub i64 %i.w, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm8ESaIbEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.n, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.x
  store ptr %i.y, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.z, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 2
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 2305843009213693951
  br i1 %i.q, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 3                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS4_9NoKeyDataEEEA_SA_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS3_9NoKeyDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 3
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 4                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #19
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS4_9NoKeyDataEE8LogEntryEA_SA_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE14GetOrCreateKeyENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %0, i32 %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 4 ; 7 uses
  %4 = alloca %"struct.std::pair.333", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 11 uses
  %i.b = load i64, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, %1
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 6 uses
  %5 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.b
  %6 = getelementptr i8, ptr %5, i64 16
  %7 = icmp ule ptr %6, %i.a
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i.i.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = zext i32 %1 to i64
  %i.n = xor i64 %i.l, %i.m
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64                   ; 2 uses
  %i.t = lshr i64 %i.s, 57
  %i.u = trunc nuw nsw i64 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.v, align 8 ; 2 uses
  %i.w = insertelement <16 x i8> poison, i8 %i.u, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i8.i = phi i64 [ %i.s, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.ap, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i8.i, %i.b        ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.y, i32 0, i32 3, i32 1)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.aa = load <16 x i8>, ptr %i.z, align 1       ; 2 uses
  %i.ab = icmp eq <16 x i8> %i.x, %i.aa
  %i.ac = bitcast <16 x i1> %i.ab to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.am, %bb.f ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ad = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = add i64 %.sroa.6.0.i.i, %i.ae
  %i.ag = and i64 %i.af, %i.b                     ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %1
  br i1 %i.aj, label %.thread33.i.i, label %bb.f, !prof !13

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.al = add i16 %.sroa.017.047.i.i, -1
  %i.am = and i16 %i.al, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.an = icmp eq <16 x i8> %i.aa, splat (i8 -128)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not44.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i, !prof !7

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ap = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !50

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.ak, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ah, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE10find_largeIS7_EENSO_8iteratorERSL_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 1
  %i.at = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit
  %i.av = load i8, ptr %i.ar, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE4findIS7_EENSO_8iteratorERSL_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit, !prof !7

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31) #19
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #19
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %bb.z

bb.m:                                             ; preds = %_ZN4absl18container_internalneERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorESR_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 2, ptr %3, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -12
  %.not.i.i.i1 = icmp eq ptr %i.bf, %i.bi
  br i1 %.not.i.i.i1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bf, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false)
  %i.bj = load ptr, ptr %i.be, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 2 uses
  store ptr %i.bk, ptr %i.be, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJS8_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bl, ptr noundef nonnull align 4 dereferenceable(12) %3)
  %.pre.i.i.i = load ptr, ptr %i.be, align 8, !noalias !71
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bm = phi ptr [ %.pre.i.i.i, %bb.o ], [ %i.bk, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !71
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.q, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !71
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit

_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit: ; preds = %bb.p, %bb.q
  %i.bv = phi ptr [ %i.bu, %bb.q ], [ %i.bm, %bb.p ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 %1, ptr %4, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = load i64, ptr %i.a, align 8, !noalias !74 ; 5 uses
  %i.ca = icmp ult i64 %i.bz, 2
  br i1 %i.ca, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !91
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.cc, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 131072, ptr %i.cb, align 8, !noalias !91
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !noalias !91
  %i.cg = icmp eq i32 %i.cf, %1
  br i1 %i.cg, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE6insertEOSK_IS7_SC_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !91
  store ptr %i.a, ptr %2, align 8, !noalias !91
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %4, ptr %i.ch, align 8, !noalias !91
  %i.ci = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #19, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !91
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !noalias !91, !nonnull !5, !noundef !5 ; 2 uses
  %11 = load i64, ptr %i.a, align 8, !noalias !91 ; 2 uses
  %12 = icmp ult i64 %11, 2
  %13 = add i64 %11, 16
  %14 = select i1 %12, i64 0, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %14
  %16 = icmp ule ptr %15, %i.a
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %18 = icmp ule ptr %17, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %19 = select i1 %16, i1 true, i1 %18
  call void @llvm.assume(i1 %19)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !noalias !91
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ci
  %.pre = load i32, ptr %4, align 8, !noalias !96
  br label %bb.y

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE6NewKeyES5_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i2 = load ptr, ptr %i.cl, align 8, !noalias !97 ; 4 uses
  %20 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2, i64 %i.bz
  %21 = getelementptr i8, ptr %20, i64 16
  %22 = icmp ule ptr %21, %i.a
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %24 = icmp ule ptr %23, %.sroa.0.0.copyload.i.i.i.i.i2
  %25 = select i1 %22, i1 true, i1 %24
  call void @llvm.assume(i1 %25)
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i2, i32 0, i32 1, i32 1), !noalias !97
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !97
  %sext.i3 = shl i64 %i.cn, 48
  %i.co = ashr exact i64 %sext.i3, 48
  %i.cp = zext i32 %1 to i64
  %i.cq = xor i64 %i.co, %i.cp
  %i.cr = zext i64 %i.cq to i128
  %i.cs = mul nuw nsw i128 %i.cr, 8779197792823184629 ; 2 uses
  %i.ct = lshr i128 %i.cs, 64
  %i.cu = xor i128 %i.ct, %i.cs
  %i.cv = trunc i128 %i.cu to i64                 ; 3 uses
  %i.cw = lshr i64 %i.cv, 57
  %i.cx = trunc nuw nsw i64 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.cy, align 8, !noalias !97 ; 2 uses
  %i.cz = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.pn.i5 = phi i64 [ %i.cv, %bb.v ], [ %i.dy, %bb.x ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.v ], [ %i.dx, %bb.x ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i5, %i.bz           ; 5 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.db, i32 0, i32 3, i32 1), !noalias !97
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i2, i64 %.sroa.7.0.i
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !noalias !97 ; 2 uses
  %i.de = icmp eq <16 x i8> %i.da, %i.dd
  %i.df = bitcast <16 x i1> %i.de to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.df, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.do, %.critedge.i ], [ %i.df, %bb.w ] ; 3 uses
  %i.dg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = add i64 %.sroa.7.0.i, %i.dh
  %i.dj = and i64 %i.di, %i.bz
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !noalias !97
  %i.dm = icmp eq i32 %i.dl, %1
  br i1 %i.dm, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE6insertEOSK_IS7_SC_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %.critedge.i, !prof !13

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.dn = add i16 %.sroa.035.065.i, -1
  %i.do = and i16 %i.dn, %.sroa.035.065.i         ; 2 uses
  %.not.i = icmp eq i16 %i.do, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.w
  %i.dp = icmp eq <16 x i8> %i.dd, splat (i8 -128)
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.dq, 0
  br i1 %.not57.i, label %bb.x, label %.thread.i, !prof !7

.thread.i:                                        ; preds = %.critedge19.i
  %i.dr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dq, i1 true)
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = add i64 %.sroa.7.0.i, %i.ds
  %i.du = and i64 %i.dt, %i.bz
  %i.dv = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cv, i64 %i.du, i64 %.sroa.15.0.i) #19, !noalias !97
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.cl, align 8, !noalias !97, !nonnull !5, !noundef !5 ; 2 uses
  %26 = load i64, ptr %i.a, align 8, !noalias !97 ; 2 uses
  %27 = icmp ult i64 %26, 2
  %28 = add i64 %26, 16
  %29 = select i1 %27, i64 0, i64 %28
  %30 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %29
  %31 = icmp ule ptr %30, %i.a
  %32 = icmp ule ptr %23, %.sroa.0.0.copyload.i.i.i.i25.i
  %33 = select i1 %31, i1 true, i1 %32
  call void @llvm.assume(i1 %33)
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.cy, align 8, !noalias !97
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.dv
  br label %bb.y

bb.x:                                             ; preds = %.critedge19.i
  %i.dx = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.dy = add i64 %i.dx, %.sroa.7.0.i
  br label %bb.w

bb.y:                                             ; preds = %bb.u, %bb.s, %.thread.i
  %i.dz = phi i32 [ %1, %.thread.i ], [ %1, %bb.s ], [ %.pre, %bb.u ]
  %.sroa.4.0.ph = phi ptr [ %i.dw, %.thread.i ], [ %i.cd, %bb.s ], [ %i.ck, %bb.u ] ; 2 uses
  store i32 %i.dz, ptr %.sroa.4.0.ph, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.4.0.ph, i64 8
  %i.eb = load i64, ptr %i.bx, align 8, !noalias !96
  store i64 %i.eb, ptr %i.ea, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE6insertEOSK_IS7_SC_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE6insertEOSK_IS7_SC_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit: ; preds = %.lr.ph.i, %bb.t, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.z

bb.z:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE6insertEOSK_IS7_SC_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit
  %.sroa.015.0 = phi ptr [ %i.bb, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE8iteratorptEv.exit ], [ %i.bw, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE6insertEOSK_IS7_SC_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit ]
  ret ptr %.sroa.015.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE16_M_push_back_auxIJS8_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 42
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 12
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 12
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1537228672809129301
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.g, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = sub i64 %i.ag, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.d, label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE22_M_reserve_map_at_backEm.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %.not5.i.i.i = icmp ult i64 %i.aq, 42
  br i1 %.not5.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ao, align 8
  store ptr %i.ar, ptr %i.an, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE16_M_allocate_nodeEv.exit

bb.g:                                             ; preds = %bb.e, %_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE22_M_reserve_map_at_backEm.exit
  %i.as = load ptr, ptr %0, align 8               ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = sub i64 %i.au, %i.aw
  %i.ay = icmp ult i64 %i.ax, 504
  br i1 %i.ay, label %bb.h, label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.as, i64 noundef 504) #19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.av, align 8
  br label %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i

_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.az = phi i64 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = add i64 %i.az, 504
  store i64 %i.bb, ptr %i.av, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE16_M_allocate_nodeEv.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE16_M_allocate_nodeEv.exit: ; preds = %bb.f, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ao, %bb.f ], [ %i.ba, %_ZN2v88internal13ZoneAllocatorINS0_8compiler10turboshaft18SnapshotTableEntryINS0_4wasm9ValueTypeENS3_9NoKeyDataEEEE8allocateEm.exit.i.i.i ]
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.0.i.i.i, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.be, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  %i.bf = load ptr, ptr %i.c, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.c, align 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  store ptr %i.bh, ptr %i.o, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 504
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.bi, ptr %i.bj, align 8
  store ptr %i.bh, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, 1                      ; 3 uses
  %i.k = add i64 %i.j, %1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = shl i64 %i.k, 1
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = sub i64 %i.m, %i.k
  %i.r = lshr i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %i.t = select i1 %2, i64 %1, i64 0
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 10 uses
  %i.v = icmp ult ptr %i.u, %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g                       ; 3 uses
  %i.z = icmp sgt i64 %i.y, 8
  br i1 %i.z, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.y, 8
  br i1 %i.aa, label %bb.f, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.e, align 8
  store ptr %i.ab, ptr %i.u, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit

bb.g:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.j ; 2 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %i.g                     ; 3 uses
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.e, i64 %i.ae, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %i.ae, 8
  br i1 %i.aj, label %bb.j, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.al = load ptr, ptr %i.e, align 8
  store ptr %i.al, ptr %i.ak, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %1)
  %i.am = add i64 %i.m, 2
  %i.an = add i64 %i.am, %.sroa.speculated        ; 4 uses
  %i.ao = load ptr, ptr %0, align 8               ; 3 uses
  %i.ap = icmp ult i64 %i.an, 2305843009213693951
  br i1 %i.ap, label %bb.m, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = shl nuw i64 %i.an, 3                    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = sub i64 %i.as, %i.au
  %i.aw = icmp ugt i64 %i.aq, %i.av
  br i1 %i.aw, label %bb.n, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE15_M_allocate_mapEm.exit, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i64 noundef %i.aq) #19
  %.pre.i.i.i.i.i.i = load i64, ptr %i.at, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE15_M_allocate_mapEm.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE15_M_allocate_mapEm.exit: ; preds = %bb.m, %bb.n
  %i.ax = phi i64 [ %.pre.i.i.i.i.i.i, %bb.n ], [ %i.au, %bb.m ] ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = add i64 %i.ax, %i.aq
  store i64 %i.az, ptr %i.at, align 8
  %i.ba = sub i64 %i.an, %i.k
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = select i1 %2, i64 %1, i64 0
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd ; 3 uses
  %i.bf = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bg = load ptr, ptr %i.b, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.be, ptr align 8 %i.bf, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE15_M_allocate_mapEm.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.q, label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bn = load ptr, ptr %i.bf, align 8
  store ptr %i.bn, ptr %i.be, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit24

_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bo = load i64, ptr %i.l, align 8             ; 2 uses
  %i.bp = and i64 %i.bo, 2305843009213693950
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_deallocate_mapEPPS8_m.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit24
  %i.br = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bo, ptr %i.bs, align 8
  store ptr null, ptr %i.br, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_deallocate_mapEPPS8_m.exit

_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_deallocate_mapEPPS8_m.exit: ; preds = %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit24, %bb.r
  store ptr %i.ay, ptr %i.a, align 8
  store i64 %i.an, ptr %i.l, align 8
  br label %_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIPPN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_deallocate_mapEPPS8_m.exit
  %.0 = phi ptr [ %i.be, %_ZNSt11_Deque_baseIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS1_4wasm9ValueTypeENS3_9NoKeyDataEEENS1_22RecyclingZoneAllocatorIS8_EEE17_M_deallocate_mapEPPS8_m.exit ], [ %i.u, %bb.f ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.u, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.d, align 8
  %i.bt = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 504
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.j
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bz, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 504
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.cb, ptr %i.cc, align 8
  ret void
}

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEES8_Lb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat {
bb.a:
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %1, align 1
  %i.a = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.b = xor i64 %2, %i.a
  %i.c = zext i64 %i.b to i128
  %i.d = mul nuw nsw i128 %i.c, 8779197792823184629 ; 2 uses
  %i.e = lshr i128 %i.d, 64
  %i.f = xor i128 %i.e, %i.d
  %i.g = trunc i128 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal20TransferNRelocatableILm16EEEvPvS2_S2_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #8 comdat {
bb.a:
  %i.a = shl i64 %3, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE21get_char_alloc_ref_fnERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEPvS6_m(ptr noundef %0, i64 noundef %1) #8 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = add i64 %1, 7                            ; 2 uses
  %.not.i = icmp ugt i64 %i.b, -9
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = sub i64 %i.e, %i.g
  %i.i = icmp ugt i64 %i.c, %i.h
  br i1 %i.i, label %bb.d, label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.c) #19
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8
  br label %_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit

_ZN4absl18container_internal8AllocateILm8EN2v88internal13ZoneAllocatorIcEEEEPvPT0_m.exit: ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %.pre.i.i.i.i.i, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = add i64 %i.j, %i.c
  store i64 %i.l, ptr %i.f, align 8
  ret ptr %i.k
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8EN2v88internal13ZoneAllocatorIcEEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #8 comdat {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal8compiler10turboshaft7OpIndexENS6_16SnapshotTableKeyINS4_4wasm9ValueTypeENS6_9NoKeyDataEEEEENS_13hash_internal4HashIS7_EESt8equal_toIS7_ENS4_13ZoneAllocatorISt4pairIKS7_SC_EEEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSU_PFvSU_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 5 uses
  %5 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.a
  %6 = getelementptr i8, ptr %5, i64 16
  %7 = icmp ule ptr %6, %0
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = icmp ule ptr %8, %.sroa.0.0.copyload.i.i
  %10 = select i1 %7, i1 true, i1 %9
  tail call void @llvm.assume(i1 %10)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.04962, 16                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !100

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.az, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.04962, %i.s            ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.u, align 1
  %i.x = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.y = xor i64 %i.w, %i.x
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw nsw i128 %i.z, 8779197792823184629 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64                 ; 6 uses
  %i.ae = lshr i64 %i.ad, 57
  %i.af = trunc nuw nsw i64 %i.ae to i8           ; 2 uses
  %i.ag = sub i64 %i.t, %i.ad                     ; 2 uses
  %i.ah = and i64 %i.h, %i.ag
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %.lr.ph
  %i.aj = and i64 %i.ag, 15
  %i.ak = add i64 %i.aj, %i.ad
  %i.al = and i64 %i.ak, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.am = and i64 %i.b, %i.ad
  %.not.i = icmp ult i64 %i.am, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.an = and i64 %i.a, %i.ad                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.an
  %i.ap = load <16 x i8>, ptr %i.ao, align 1
  %i.aq = icmp slt <16 x i8> %i.ap, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.ar, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %i.an, %i.at
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.af, i64 noundef %i.t, i64 noundef %i.ad) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.au, %bb.g ], [ %i.al, %bb.d ] ; 3 uses
  %i.av = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.af, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ax, ptr noundef nonnull align 1 dereferenceable(16) %i.u, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = add i16 %.sroa.052.061, -1
  %i.az = and i16 %i.ay, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.az, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS_13hash_internal4HashIN2v88internal8compiler10turboshaft7OpIndexEEESA_Lb1EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.b, align 4
  %i.c = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.d = xor i64 %1, %i.c
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw nsw i128 %i.e, 8779197792823184629 ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  ret i64 %i.i
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{}
!6 = !{i64 8}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{i8 0, i8 2}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = !{i64 4}
!17 = distinct !{!17, !9, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !9, !19, !18}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv: argument 0"}
!25 = distinct !{!25, !"_ZNK2v88internal8compiler10turboshaft5Block12PredecessorsEv"}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE: argument 0"}
!30 = distinct !{!30, !"_ZNK2v88internal8compiler10turboshaft5Graph16OperationIndicesERKNS2_5BlockE"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!33 = distinct !{!33, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!36 = distinct !{!36, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
end_hunk_1
