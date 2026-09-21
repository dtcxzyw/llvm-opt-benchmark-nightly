Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_zlib?download=true
inline.NumInlined: 3300
inline.NumDeleted: 1374
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4node12_GLOBAL__N_111ZlibContext8InitZlibEv:bb.a

bb.n:                                             ; preds = %bb.a, %_ZN4node12_GLOBAL__N_111ZlibContext13SetDictionaryEv.exit, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %.0 = xor i1 %i.d, true
  tail call void @uv_mutex_unlock(ptr noundef nonnull %i.a) #31
  ret i1 %.0
}

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @inflateSetDictionary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4node12_GLOBAL__N_111ZlibContext11ResetStreamEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 20)) %0, ptr noundef nonnull align 8 dereferenceable(224) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4node12_GLOBAL__N_111ZlibContext8InitZlibEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val4 = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.val4, null
  %spec.select.i = select i1 %.not.i, ptr @.str.273, ptr %.val4
  %switch.tableidx = add i32 %i.c, 6              ; 2 uses
  %i.e = icmp ult i32 %switch.tableidx, 9
  br i1 %i.e, label %switch.lookup, label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit

switch.lookup:                                    ; preds = %bb.c
  %i.f = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node12_GLOBAL__N_111ZlibContext11ResetStreamEv.63, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit

_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit: ; preds = %bb.c, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.269, %bb.c ]
  store ptr %spec.select.i, ptr %0, align 8, !alias.scope !212
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i, ptr %i.g, align 8, !alias.scope !212
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.c, ptr %i.h, align 8, !alias.scope !212
  br label %_ZN4node12_GLOBAL__N_111ZlibContext13SetDictionaryEv.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  switch i32 %i.k, label %.thread [
    i32 1, label %bb.e
    i32 5, label %bb.e
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 6, label %bb.f
    i32 4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = tail call i32 @deflateReset(ptr noundef nonnull %i.l) #31
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = tail call i32 @inflateReset(ptr noundef nonnull %i.n) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi i32 [ %i.o, %bb.f ], [ %i.m, %bb.e ] ; 4 uses
  store i32 %storemerge, ptr %i.i, align 4
  %.not1 = icmp eq i32 %storemerge, 0
  br i1 %.not1, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val2 = load ptr, ptr %i.p, align 8            ; 2 uses
  %.not.i5 = icmp eq ptr %.val2, null
  %spec.select.i6 = select i1 %.not.i5, ptr @.str.274, ptr %.val2
  %switch.tableidx13 = add i32 %storemerge, 6     ; 2 uses
  %i.q = icmp ult i32 %switch.tableidx13, 9
  br i1 %i.q, label %switch.lookup14, label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit8

switch.lookup14:                                  ; preds = %bb.h
  %i.r = zext nneg i32 %switch.tableidx13 to i64
  %switch.gep15 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node12_GLOBAL__N_111ZlibContext11ResetStreamEv.63, i64 %i.r
  %switch.load16 = load ptr, ptr %switch.gep15, align 8
  br label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit8

_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit8: ; preds = %bb.h, %switch.lookup14
  %.0.i.i7 = phi ptr [ %switch.load16, %switch.lookup14 ], [ @.str.269, %bb.h ]
  store ptr %spec.select.i6, ptr %0, align 8, !alias.scope !213
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i7, ptr %i.s, align 8, !alias.scope !213
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %storemerge, ptr %i.t, align 8, !alias.scope !213
  br label %_ZN4node12_GLOBAL__N_111ZlibContext13SetDictionaryEv.exit

.thread:                                          ; preds = %bb.d, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !noalias !214 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !noalias !214 ; 3 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !214
  br label %_ZN4node12_GLOBAL__N_111ZlibContext13SetDictionaryEv.exit

bb.j:                                             ; preds = %.thread
  store i32 0, ptr %i.i, align 4, !noalias !214
  %i.z = load i32, ptr %i.j, align 4, !noalias !214
  switch i32 %i.z, label %.thread.i [
    i32 1, label %bb.k
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = tail call i32 @deflateSetDictionary(ptr noundef nonnull %i.aa, ptr noundef %i.v, i32 noundef %i.ae) #31, !noalias !214
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = ptrtoint ptr %i.x to i64
  %i.ai = ptrtoint ptr %i.v to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = tail call i32 @inflateSetDictionary(ptr noundef nonnull %i.ag, ptr noundef %i.v, i32 noundef %i.ak) #31, !noalias !214
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge.i = phi i32 [ %i.al, %bb.l ], [ %i.af, %bb.k ] ; 4 uses
  store i32 %storemerge.i, ptr %i.i, align 4, !noalias !214
  %.not.i9 = icmp eq i32 %storemerge.i, 0
  br i1 %.not.i9, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val1.i = load ptr, ptr %i.am, align 8, !noalias !214 ; 2 uses
  %.not.i.i = icmp eq ptr %.val1.i, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @.str.268, ptr %.val1.i
  %switch.tableidx17 = add i32 %storemerge.i, 6   ; 2 uses
  %i.an = icmp ult i32 %switch.tableidx17, 9
  br i1 %i.an, label %switch.lookup18, label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit.i

switch.lookup18:                                  ; preds = %bb.n
  %i.ao = zext nneg i32 %switch.tableidx17 to i64
  %switch.gep19 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node12_GLOBAL__N_111ZlibContext11ResetStreamEv.63, i64 %i.ao
  %switch.load20 = load ptr, ptr %switch.gep19, align 8
  br label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit.i

_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit.i: ; preds = %bb.n, %switch.lookup18
  %.0.i.i.i = phi ptr [ %switch.load20, %switch.lookup18 ], [ @.str.269, %bb.n ]
  store ptr %spec.select.i.i, ptr %0, align 8, !alias.scope !215
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i, ptr %i.ap, align 8, !alias.scope !215
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %storemerge.i, ptr %i.aq, align 8, !alias.scope !215
  br label %_ZN4node12_GLOBAL__N_111ZlibContext13SetDictionaryEv.exit

.thread.i:                                        ; preds = %bb.m, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !214
  br label %_ZN4node12_GLOBAL__N_111ZlibContext13SetDictionaryEv.exit

_ZN4node12_GLOBAL__N_111ZlibContext13SetDictionaryEv.exit: ; preds = %.thread.i, %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit.i, %bb.i, %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit8, %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit
  ret void
}

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @deflateSetDictionary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #5

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_11ZlibContextEE10CheckErrorEv(ptr noundef nonnull align 8 dereferenceable(488) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.node::(anonymous namespace)::CompressionError", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.b = load i32, ptr %i.a, align 4, !noalias !226 ; 6 uses
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 -5, label %bb.b
    i32 1, label %_ZNK4node12_GLOBAL__N_111ZlibContext12GetErrorInfoEv.exit
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %3 = load i32, ptr %2, align 8, !noalias !226
  %.not.i = icmp ne i32 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load i32, ptr %i.c, align 8, !noalias !226
  %i.e = icmp eq i32 %i.d, 4
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %switch.lookup, label %_ZNK4node12_GLOBAL__N_111ZlibContext12GetErrorInfoEv.exit

switch.lookup:                                    ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val7.i.a = load ptr, ptr %i.f, align 8, !noalias !226 ; 2 uses
  %.not.i.i = icmp eq ptr %.val7.i.a, null
  %spec.select.i.i = select i1 %.not.i.i, ptr @.str.278, ptr %.val7.i.a
  %i.g = sext i32 %i.b to i64
  %i.h = getelementptr [8 x i8], ptr @switch.table._ZN4node12_GLOBAL__N_117CompressionStreamINS0_11ZlibContextEE10CheckErrorEv, i64 %i.g
  %switch.gep = getelementptr i8, ptr %i.h, i64 40
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %spec.select.i.i, ptr %1, align 8, !alias.scope !227
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %switch.load, ptr %i.i, align 8, !alias.scope !227
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.b, ptr %i.j, align 8, !alias.scope !227
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load ptr, ptr %i.k, align 8, !noalias !226
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = load ptr, ptr %i.m, align 8, !noalias !226
  %i.o = icmp eq ptr %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val5.i = load ptr, ptr %i.p, align 8, !noalias !226 ; 3 uses
  %.not.i8.i = icmp eq ptr %.val5.i, null         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.o, label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit11.i, label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit15.i

_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit11.i: ; preds = %bb.c
  %spec.select.i9.i = select i1 %.not.i8.i, ptr @.str.279, ptr %.val5.i
  store ptr %spec.select.i9.i, ptr %1, align 8, !alias.scope !228
  store ptr @.str.19, ptr %i.q, align 8, !alias.scope !228
  store i32 2, ptr %i.r, align 8, !alias.scope !228
  br label %bb.e

_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit15.i: ; preds = %bb.c
  %spec.select.i13.i = select i1 %.not.i8.i, ptr @.str.280, ptr %.val5.i
  store ptr %spec.select.i13.i, ptr %1, align 8, !alias.scope !229
  store ptr @.str.19, ptr %i.q, align 8, !alias.scope !229
  store i32 2, ptr %i.r, align 8, !alias.scope !229
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val1.i = load ptr, ptr %i.s, align 8, !noalias !226 ; 2 uses
  %.not.i16.i = icmp eq ptr %.val1.i, null
  %spec.select.i17.i = select i1 %.not.i16.i, ptr @.str.281, ptr %.val1.i
  %i.t = icmp ugt i32 %i.b, -7
  br i1 %i.t, label %switch.lookup7, label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit19.i

switch.lookup7:                                   ; preds = %bb.d
  %i.u = sext i32 %i.b to i64
  %i.v = getelementptr [8 x i8], ptr @switch.table._ZN4node12_GLOBAL__N_117CompressionStreamINS0_11ZlibContextEE10CheckErrorEv.64, i64 %i.u
  %switch.gep8 = getelementptr i8, ptr %i.v, i64 48
  %switch.load9 = load ptr, ptr %switch.gep8, align 8
  br label %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit19.i

_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit19.i: ; preds = %bb.d, %switch.lookup7
  %.0.i.i18.i = phi ptr [ %switch.load9, %switch.lookup7 ], [ @.str.269, %bb.d ]
  store ptr %spec.select.i17.i, ptr %1, align 8, !alias.scope !230
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.0.i.i18.i, ptr %i.w, align 8, !alias.scope !230
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.b, ptr %i.x, align 8, !alias.scope !230
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit11.i, %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit15.i, %_ZNK4node12_GLOBAL__N_111ZlibContext15ErrorForMessageEPKc.exit19.i
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_11ZlibContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(20) %1)
  br label %_ZNK4node12_GLOBAL__N_111ZlibContext12GetErrorInfoEv.exit

_ZNK4node12_GLOBAL__N_111ZlibContext12GetErrorInfoEv.exit: ; preds = %bb.b, %bb.a, %bb.e
  %.val5 = phi i1 [ false, %bb.e ], [ true, %bb.a ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret i1 %.val5
}

declare ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_11ZlibContextEE9EmitErrorERKNS0_16CompressionErrorE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %3 = alloca [3 x %"class.v8::Local"], align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3008
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.i) #31 ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  %i.l = icmp eq ptr %i.j, null                   ; 2 uses
  br i1 %i.k, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit.thread, !prof !46

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit.thread, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit, !prof !47

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit: ; preds = %bb.b
  %i.m = load i64, ptr %.sroa.0.0.copyload.i.i.i, align 8
  %i.n = load i64, ptr %i.j, align 8
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit.thread, !prof !46

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit.thread: ; preds = %bb.b, %.split, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_117CompressionStreamINS0_11ZlibContextEE9EmitErrorERKNS0_16CompressionErrorEE20error_and_abort_args) #31
  tail call void @abort() #32
  unreachable

bb.c:                                             ; preds = %.split, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_7ContextEEES5_EEbRKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.p = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 560
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  store ptr %i.p, ptr %2, align 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ab = load ptr, ptr %i.h, align 8
  %i.ac = load ptr, ptr %1, align 8
  %i.ad = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.ab, ptr noundef %i.ac, i32 noundef 0, i32 noundef -1) #31 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.d, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #31
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit: ; preds = %bb.c, %bb.d
  %i.af = ptrtoint ptr %i.ad to i64
  store i64 %i.af, ptr %3, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.h, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = tail call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.ah, i32 noundef %i.aj) #31
  %i.al = ptrtoint ptr %i.ak to i64
  store i64 %i.al, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load ptr, ptr %i.h, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.an, ptr noundef %i.ap, i32 noundef 0, i32 noundef -1) #31 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.e, label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit15, !prof !31

bb.e:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit
  tail call void @_ZN2v812api_internal12ToLocalEmptyEv() #31
  br label %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit15

_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit15: ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit, %bb.e
  %i.as = ptrtoint ptr %i.aq to i64
  store i64 %i.as, ptr %i.am, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1936
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !36, !noundef !36 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 11
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = and i8 %i.bf, 3
  %i.bh = icmp eq i8 %i.bg, 2
  br i1 %i.bh, label %bb.f, label %_ZNK4node10BaseObject6objectEv.exit.i.i

bb.f:                                             ; preds = %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit15
  %i.bi = load i64, ptr %i.bd, align 8
  %i.bj = ptrtoint ptr %i.bb to i64
  %i.bk = add i64 %i.bj, 560
  %i.bl = inttoptr i64 %i.bk to ptr               ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %bb.g, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.bq = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.bb) #31
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.bq, %bb.g ], [ %i.bm, %bb.f ] ; 3 uses
  %i.br = ptrtoint ptr %.0.i.i.i.i.i.i to i64
  %i.bs = add i64 %i.br, 8
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %i.bl, align 8
  store i64 %i.bi, ptr %.0.i.i.i.i.i.i, align 8
  %.pre.i.i = load ptr, ptr %i.a, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 176
  %.pre19.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit.i.i

_ZNK4node10BaseObject6objectEv.exit.i.i:          ; preds = %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit15
  %i.bu = phi ptr [ %.pre19.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i ], [ %i.az, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit15 ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i.i.i ], [ %i.bd, %_ZN4node13OneByteStringEPN2v87IsolateEPKciNS0_13NewStringTypeE.exit15 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 3008
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 192
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bx, align 8
  %i.by = tail call ptr @_ZN2v86Object3GetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.aw) #31 ; 3 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit.i.i
  %i.bz = tail call noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1) %i.by) #31
  br i1 %i.bz, label %bb.i, label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit

bb.i:                                             ; preds = %bb.h
  %i.ca = call ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.by, i32 noundef 3, ptr noundef nonnull %3) #31 ; 0 uses
  br label %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit

_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit: ; preds = %bb.h, %_ZNK4node10BaseObject6objectEv.exit.i.i, %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 0, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 250
  %i.cd = load i8, ptr %i.cc, align 2, !range !33, !noundef !36
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit
  call fastcc void @_ZN4node12_GLOBAL__N_117CompressionStreamINS0_11ZlibContextEE5CloseEv(ptr noundef nonnull align 8 dereferenceable(488) %0)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_6StringEEEiPNS2_INS1_5ValueEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cf = icmp eq ptr %i.p, null
  br i1 %i.cf, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.l, !prof !31

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.s, align 8
  store ptr %i.t, ptr %i.s, align 8
  store ptr %i.cg, ptr %i.u, align 8
  %i.ch = load i32, ptr %i.y, align 8
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.y, align 8
  %i.cj = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.cj, %i.w
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.m, !prof !35

bb.m:                                             ; preds = %bb.l
  store ptr %i.w, ptr %i.v, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.p) #31
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

end_hunk_0
