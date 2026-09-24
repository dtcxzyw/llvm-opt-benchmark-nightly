Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/transaction_test_util?download=true
inline.NumInlined: 636
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb25RandomTransactionInserterC2EPNS_8Random64ERKNS_12WriteOptionsERKNS_11ReadOptionsEmtmm:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb25RandomTransactionInserterD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(64) %i.b) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 3 uses
  %.not2 = icmp eq ptr %i.g, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.e, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i.i3, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #22
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb25RandomTransactionInserter19TransactionDBInsertEPNS_13TransactionDBERKNS_18TransactionOptionsE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 3 uses
  %3 = alloca %"class.std::thread::id", align 8   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = load ptr, ptr %1, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1416
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(25) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %i.d)
  store ptr %i.h, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.i = tail call i64 @pthread_self() #25
  store i64 %i.i, ptr %3, align 8
  %i.j = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #22
  unreachable

_ZNKSt4hashINSt6thread2idEEclERKS1_.exit:         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !53   ; 2 uses
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !53
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str, i64 noundef %i.j, i64 noundef %i.n) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(64) %i.q)
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !47
  %i.x = call noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.w)
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.aa = call noundef zeroext i1 @_ZN7rocksdb25RandomTransactionInserter8DoInsertEPNS_2DBEPNS_11TransactionEb(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %1, ptr noundef %i.z, i1 noundef zeroext false)
  br label %bb.e

.thread:                                          ; preds = %_ZNKSt4hashINSt6thread2idEEclERKS1_.exit, %bb.c
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.af)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !141
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.am = call noundef zeroext i1 @_ZN7rocksdb25RandomTransactionInserter8DoInsertEPNS_2DBEPNS_11TransactionEb(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %1, ptr noundef %i.al, i1 noundef zeroext false)
  store ptr null, ptr %i.ak, align 8, !tbaa !141
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.an = phi i1 [ %i.am, %.thread ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %i.an
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb25RandomTransactionInserter8DoInsertEPNS_2DBEPNS_11TransactionEb(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 45 uses
  %6 = alloca %"class.rocksdb::WriteBatch", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 10 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 2 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %20 = alloca %"struct.rocksdb::DBOptions", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"struct.rocksdb::DBOptions", align 8 ; 7 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %29 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %30 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %31 = alloca %"struct.rocksdb::DBOptions", align 8 ; 7 uses
  %32 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %33 = alloca %"struct.rocksdb::DBOptions", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %37 = alloca %"struct.rocksdb::DBOptions", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %41 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %43 = alloca %"struct.rocksdb::DBOptions", align 8 ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 22 uses
  store ptr null, ptr %i.c, align 8, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN7rocksdb10WriteBatchC2Emmmm(ptr noundef nonnull align 8 dereferenceable(160) %6, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  %46 = load ptr, ptr %0, align 8, !tbaa !47
  %47 = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %46)
          to label %_ZN7rocksdb8Random644NextEv.exit unwind label %bb.c

_ZN7rocksdb8Random644NextEv.exit:                 ; preds = %bb.a
  %i.d = urem i64 %47, 100
  %i.e = add nuw nsw i64 %i.d, 1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load i16, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = zext i16 %i.g to i64                     ; 3 uses
  %.not.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb8Random644NextEv.exit
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #26
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %bb.b
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.h
  store i16 0, ptr %i.j, align 2, !tbaa !61
  %i.m = getelementptr i8, ptr %i.j, i64 2        ; 3 uses
  %i.n = add nsw i64 %i.h, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %iter.check, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKS0_.exit:               ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 1   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, %.noexc
  %.0.i.i.i.i.i527 = phi ptr [ %i.p, %_ZNSt6vectorItSaItEEC2EmRKS0_.exit ], [ %i.m, %.noexc ] ; 3 uses
  %.0.i.i.i.i.i527548 = ptrtoaddr ptr %.0.i.i.i.i.i527 to i64
  %i.q = add i64 %.0.i.i.i.i.i527548, -2
  %i.r = sub i64 %i.q, %i.k                       ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.r, 14
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check549 = icmp ult i64 %i.r, 126
  br i1 %min.iters.check549, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.t, 56
  %n.vec = and i64 %i.t, -64                      ; 5 uses
  %i.v = trunc i64 %n.vec to i16                  ; 2 uses
  %i.w = shl i64 %n.vec, 1
  %i.x = getelementptr i8, ptr %i.j, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <16 x i16> %vec.ind, splat (i16 16)
  %step.add.2 = add <16 x i16> %vec.ind, splat (i16 32)
  %step.add.3 = add <16 x i16> %vec.ind, splat (i16 48)
  %i.y = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.y ; 4 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 32
  %i.aa = getelementptr i8, ptr %next.gep, i64 64
  %i.ab = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %vec.ind, ptr %next.gep, align 2, !tbaa !61
  store <16 x i16> %step.add, ptr %i.z, align 2, !tbaa !61
  store <16 x i16> %step.add.2, ptr %i.aa, align 2, !tbaa !61
  store <16 x i16> %step.add.3, ptr %i.ab, align 2, !tbaa !61
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next = add <16 x i16> %vec.ind, splat (i16 64)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i16 [ %i.v, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec551 = and i64 %i.t, -8                    ; 4 uses
  %i.ad = trunc i64 %n.vec551 to i16
  %i.ae = shl i64 %n.vec551, 1
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ae
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index552 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next555, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind553 = phi <8 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next556, %vec.epilog.vector.body ] ; 2 uses
  %i.ag = shl i64 %index552, 1
  %next.gep554 = getelementptr i8, ptr %i.j, i64 %i.ag
  store <8 x i16> %vec.ind553, ptr %next.gep554, align 2, !tbaa !61
  %index.next555 = add nuw i64 %index552, 8       ; 2 uses
  %vec.ind.next556 = add <8 x i16> %vec.ind553, splat (i16 8)
  %i.ah = icmp eq i64 %index.next555, %n.vec551
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n557 = icmp eq i64 %i.t, %n.vec551
  br i1 %cmp.n557, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.ph = phi i16 [ 0, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i16 [ %i.ai, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 %.06.i, ptr %.sroa.02.05.i, align 2, !tbaa !61
  %i.ai = add i16 %.06.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 2 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %.0.i.i.i.i.i527
  br i1 %i.ak, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !144

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.al = ptrtoint ptr %i.l to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit, %_ZN7rocksdb8Random644NextEv.exit
  %.0.i.i.i.i.i357 = phi ptr [ null, %_ZN7rocksdb8Random644NextEv.exit ], [ %.0.i.i.i.i.i527, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit ] ; 3 uses
  %.sroa.0312.0340 = phi ptr [ null, %_ZN7rocksdb8Random644NextEv.exit ], [ %i.j, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit ] ; 9 uses
  %.sroa.15.0323 = phi i64 [ 0, %_ZN7rocksdb8Random644NextEv.exit ], [ %i.al, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit ] ; 2 uses
  invoke void @_ZN7rocksdb13RandomShuffleIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEEvT_S8_(ptr %.sroa.0312.0340, ptr %.0.i.i.i.i.i357)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit
  %i.am = icmp eq ptr %.sroa.0312.0340, %.0.i.i.i.i.i357
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.not = icmp eq ptr %2, null                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 5
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 5 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 5 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.d:                                             ; preds = %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit304

bb.e:                                             ; preds = %bb.ez, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %.lr.ph
  %.sroa.0308.0432 = phi ptr [ %.sroa.0312.0340, %.lr.ph ], [ %i.jd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ] ; 2 uses
  %i.bv = load i16, ptr %.sroa.0308.0432, align 2, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.an, ptr %7, align 8, !tbaa !67
  store i64 0, ptr %i.ao, align 8, !tbaa !69
  store i8 0, ptr %i.an, align 8, !tbaa !70
  %i.bw = load ptr, ptr %0, align 8, !tbaa !47
  %i.bx = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.bw)
          to label %_ZN7rocksdb8Random644NextEv.exit126 unwind label %bb.o

_ZN7rocksdb8Random644NextEv.exit126:              ; preds = %bb.f
  %i.by = load i64, ptr %i.ap, align 8, !tbaa !51
  %i.bz = urem i64 %i.bx, %i.by
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb8Random644NextEv.exit126
  %i.ca = load ptr, ptr %0, align 8, !tbaa !47
  %i.cb = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.ca)
          to label %.noexc127 unwind label %bb.p

.noexc127:                                        ; preds = %bb.g
  %i.cc = icmp sgt i64 %i.cb, -1
  br label %bb.h

bb.h:                                             ; preds = %.noexc127, %_ZN7rocksdb8Random644NextEv.exit126
  %i.cd = phi i1 [ %i.cc, %.noexc127 ], [ false, %_ZN7rocksdb8Random644NextEv.exit126 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN7rocksdb25RandomTransactionInserter5DBGetEPNS_2DBEPNS_11TransactionERNS_11ReadOptionsEtmbPmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %i.aq, i16 noundef zeroext %i.bv, i64 noundef %i.bz, i1 noundef zeroext %i.cd, ptr noundef nonnull %i.b, ptr noundef nonnull %7, ptr noundef nonnull %i.a)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ce = load <4 x i8>, ptr %8, align 8, !tbaa !70
  %i.cf = load i8, ptr %8, align 8, !tbaa !150
  store <4 x i8> %i.ce, ptr %5, align 8, !tbaa !70
  store <4 x i8> zeroinitializer, ptr %8, align 8, !tbaa !70
  %i.cg = load i8, ptr %i.ar, align 4, !tbaa !48, !range !71, !noundef !72
  store i8 %i.cg, ptr %i.as, align 4, !tbaa !73
  store i8 0, ptr %i.ar, align 4, !tbaa !73
  %i.ch = load i8, ptr %i.at, align 1, !tbaa !70
  store i8 %i.ch, ptr %i.au, align 1, !tbaa !74
  %i.ci = load ptr, ptr %i.av, align 8, !tbaa !59
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !59
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #24
  %.pre = load i8, ptr %5, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.ck = phi i8 [ %i.cf, %bb.i ], [ %.pre, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cl = load ptr, ptr %7, align 8, !tbaa !76
  store ptr %i.cl, ptr %9, align 8, !tbaa !78
  %i.cm = load i64, ptr %i.ao, align 8, !tbaa !69
  store i64 %i.cm, ptr %i.aw, align 8, !tbaa !79
  %i.cn = icmp eq i8 %i.ck, 0
  br i1 %i.cn, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i8 %i.ck, label %bb.m [
    i8 11, label %bb.bq
    i8 9, label %bb.bq
    i8 13, label %bb.bq
  ]

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %10, align 8, !tbaa !76
  %i.cq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.3, ptr noundef %i.cp) #27 ; 0 uses
  %i.cr = load ptr, ptr %10, align 8, !tbaa !76   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ax
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ct = load i64, ptr %i.ax, align 8, !tbaa !70
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  store i8 1, ptr %i.a, align 1, !tbaa !48
  br label %bb.bq

bb.o:                                             ; preds = %bb.f
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.p:                                             ; preds = %bb.g
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.q:                                             ; preds = %bb.h
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.bs

bb.r:                                             ; preds = %bb.m
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.br

bb.s:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !49
  %i.da = add i64 %i.cz, %i.e                     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.db = icmp ult i64 %i.da, 10
  br i1 %i.db, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.s
  store ptr %i.ay, ptr %11, align 8, !tbaa !67, !alias.scope !151
  br label %bb.aa

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.y
  %.029.i.i = phi i32 [ %i.dj, %bb.y ], [ 1, %bb.s ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.di, %bb.y ], [ %i.da, %bb.s ] ; 5 uses
  %i.dc = icmp ult i64 %.02328.i.i, 100
  br i1 %i.dc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.dd = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.de = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.de, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.df = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.w:                                             ; preds = %bb.u
  %i.dg = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dh = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.y:                                             ; preds = %bb.w
  %i.di = udiv i64 %.02328.i.i, 10000
  %i.dj = add i32 %.029.i.i, 4                    ; 2 uses
  %i.dk = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.dk, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.y, %bb.x, %bb.v, %bb.t
  %.022.i.i = phi i32 [ %i.dh, %bb.x ], [ %i.dd, %bb.t ], [ %i.df, %bb.v ], [ %i.dj, %bb.y ] ; 3 uses
  %i.dl = zext i32 %.022.i.i to i64               ; 4 uses
  store ptr %i.ay, ptr %11, align 8, !tbaa !67, !alias.scope !151
  %i.dm = icmp ugt i32 %.022.i.i, 15
  br i1 %i.dm, label %.noexc.i, label %bb.z

.noexc.i:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.dn = add nuw nsw i64 %i.dl, 1
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #26
          to label %.noexc128 unwind label %bb.aj ; 2 uses

.noexc128:                                        ; preds = %.noexc.i
  store ptr %i.do, ptr %11, align 8, !tbaa !76, !alias.scope !151
  store i64 %i.dl, ptr %i.ay, align 8, !tbaa !70, !alias.scope !151
  br label %bb.ab

bb.z:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.022.i.i, label %bb.ab [
    i32 0, label %bb.ac
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %.thread.i
end_hunk_0
begin_hunk_1_@_ZN7rocksdb25RandomTransactionInserter8DoInsertEPNS_2DBEPNS_11TransactionEb:bb.a
          to label %bb.eq unwind label %bb.eu

bb.eq:                                            ; preds = %bb.ep
  %i.tu = load ptr, ptr %44, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  %i.tv = load ptr, ptr %2, align 8, !tbaa !57
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 672
  %i.tx = load ptr, ptr %i.tw, align 8
  invoke void %i.tx(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.er unwind label %bb.ev

bb.er:                                            ; preds = %bb.eq
  %i.ty = load ptr, ptr %45, align 8, !tbaa !76
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %i.tt, ptr noundef nonnull @.str.16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.7, i64 32), ptr noundef %i.tu, ptr noundef %i.ty)
          to label %bb.es unwind label %bb.ew

bb.es:                                            ; preds = %bb.er
  %i.tz = load ptr, ptr %45, align 8, !tbaa !76   ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.ub = icmp eq ptr %i.tz, %i.ua
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284: ; preds = %bb.es
  %i.uc = load i64, ptr %i.ua, align 8, !tbaa !70
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.ud) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286: ; preds = %bb.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  %i.ue = load ptr, ptr %44, align 8, !tbaa !76   ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.ug = icmp eq ptr %i.ue, %i.uf
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286
  %i.uh = load i64, ptr %i.uf, align 8, !tbaa !70
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.ue, i64 noundef %i.ui) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  br label %bb.ey

bb.et:                                            ; preds = %bb.eo
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.eu:                                            ; preds = %bb.ep
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

bb.ev:                                            ; preds = %bb.eq
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

bb.ew:                                            ; preds = %bb.er
  %i.um = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.un = load ptr, ptr %45, align 8, !tbaa !76   ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.up = icmp eq ptr %i.un, %i.uo
  br i1 %i.up, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.ew
  %i.uq = load i64, ptr %i.uo, align 8, !tbaa !70
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.ur) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %bb.ev
  %.pn97 = phi { ptr, i32 } [ %i.ul, %bb.ev ], [ %i.um, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ], [ %i.um, %bb.ew ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  %i.us = load ptr, ptr %44, align 8, !tbaa !76   ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 2 uses
  %i.uu = icmp eq ptr %i.us, %i.ut
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292
  %i.uv = load i64, ptr %i.ut, align 8, !tbaa !70
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293, %bb.eu
  %.pn97.pn = phi { ptr, i32 } [ %i.uk, %bb.eu ], [ %.pn97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293 ], [ %.pn97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %43) #23
  br label %bb.ex

bb.ex:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, %bb.et
  %.pn97.pn.pn = phi { ptr, i32 } [ %.pn97.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295 ], [ %i.uj, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  br label %.loopexit.split-lp

bb.ey:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %bb.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %.pr375 = load i8, ptr %5, align 8, !tbaa !75   ; 2 uses
  %i.ux = icmp eq i8 %.pr375, 0
  %spec.select = select i1 %i.ux, i64 248, i64 256
  br label %.thread

.thread:                                          ; preds = %bb.ey, %bb.en, %_ZN7rocksdb6StatusaSEOS0_.exit277.thread, %bb.dz
  %.sink539 = phi i64 [ %spec.select, %bb.ey ], [ 248, %bb.dz ], [ 248, %_ZN7rocksdb6StatusaSEOS0_.exit277.thread ], [ 256, %bb.en ]
  %i.uy = phi i8 [ %.pr375, %bb.ey ], [ 0, %bb.dz ], [ 0, %_ZN7rocksdb6StatusaSEOS0_.exit277.thread ], [ %i.jj, %bb.en ]
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink539 ; 2 uses
  %i.va = load i64, ptr %i.uz, align 8, !tbaa !49
  %i.vb = add i64 %i.va, 1
  store i64 %i.vb, ptr %i.uz, align 8, !tbaa !49
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i8 %i.uy, ptr %i.vc, align 8, !tbaa !75
  %i.vd = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.vf = load <4 x i8>, ptr %i.vd, align 1, !tbaa !70
  store <4 x i8> %i.vf, ptr %i.ve, align 1, !tbaa !70
  %i.vg = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !74
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 277
  store i8 %i.vh, ptr %i.vi, align 1, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.vj = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %.not.i.i296 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i296, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.thread
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %4, ptr noundef nonnull %i.vj)
          to label %.noexc299 unwind label %bb.e

.noexc299:                                        ; preds = %bb.ez
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !59
  br label %bb.fa

bb.fa:                                            ; preds = %.noexc299, %.thread
  %i.vk = phi ptr [ %.pre.i, %.noexc299 ], [ null, %.thread ]
  %i.vl = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !59
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !59 ; 2 uses
  store ptr %i.vk, ptr %i.vl, align 8, !tbaa !59
  %.not.i.i.i.i.i297 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i.i.i.i297, label %bb.fb, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.fa
  call void @_ZdaPv(ptr noundef nonnull %i.vm) #24
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !59   ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i12.i, label %bb.fb, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i298

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i298: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #24
  br label %bb.fb

bb.fb:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i298, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.vn = load i8, ptr %i.a, align 1, !tbaa !48, !range !71, !noundef !72
  %.not.i.i.i = icmp eq ptr %.sroa.0312.0340, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.vo = ptrtoint ptr %.sroa.0312.0340 to i64
  %i.vp = sub i64 %.sroa.15.0323, %i.vo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0312.0340, i64 noundef %i.vp) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN7rocksdb10WriteBatchD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.vq = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %.not.i.i300 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i300, label %_ZN7rocksdb6StatusD2Ev.exit302, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i301

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i301: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.vq) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit302

_ZN7rocksdb6StatusD2Ev.exit302:                   ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i301
  %i.vr = trunc nuw i8 %i.vn to i1
  %i.vs = xor i1 %i.vr, true
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret i1 %i.vs

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.cb, %bb.cc, %bb.cq, %bb.ct, %bb.cz, %bb.dh, %bb.dm, %bb.dt, %bb.dy, %bb.eg, %bb.ex, %bb.em, %bb.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, %bb.e
  %.pn120 = phi { ptr, i32 } [ %i.bu, %bb.e ], [ %.pn89.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180 ], [ %i.tp, %bb.em ], [ %i.to, %bb.el ], [ %.pn97.pn.pn, %bb.ex ], [ %i.sp, %bb.eg ], [ %i.ks, %bb.cb ], [ %.pn114.pn.pn, %bb.dy ], [ %i.rn, %bb.dt ], [ %.pn110.pn.pn, %bb.dm ], [ %i.pq, %bb.dh ], [ %.pn108, %bb.cz ], [ %.pn106, %bb.ct ], [ %.pn102.pn.pn, %bb.cq ], [ %i.kt, %bb.cc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit380, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit383, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i303 = icmp eq ptr %.sroa.0312.0340, null
  br i1 %.not.i.i.i303, label %_ZNSt6vectorItSaItEED2Ev.exit304, label %bb.fd

bb.fd:                                            ; preds = %.loopexit.split-lp
  %i.vt = ptrtoint ptr %.sroa.0312.0340 to i64
  %i.vu = sub i64 %.sroa.15.0323, %i.vt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0312.0340, i64 noundef %i.vu) #24
  br label %_ZNSt6vectorItSaItEED2Ev.exit304

_ZNSt6vectorItSaItEED2Ev.exit304:                 ; preds = %bb.fd, %.loopexit.split-lp, %bb.d
  %.pn120.pn = phi { ptr, i32 } [ %i.bt, %bb.d ], [ %.pn120, %.loopexit.split-lp ], [ %.pn120, %bb.fd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.fe

bb.fe:                                            ; preds = %bb.c, %_ZNSt6vectorItSaItEED2Ev.exit304
  %.pn120.pn.pn.pn = phi { ptr, i32 } [ %.pn120.pn, %_ZNSt6vectorItSaItEED2Ev.exit304 ], [ %i.bs, %bb.c ]
  call void @_ZN7rocksdb10WriteBatchD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %6) #23
  %i.vv = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i305 = icmp eq ptr %i.vv, null
  br i1 %.not.i.i305, label %_ZN7rocksdb6StatusD2Ev.exit307, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i306

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i306: ; preds = %bb.fe
  call void @_ZdaPv(ptr noundef nonnull %i.vv) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit307

_ZN7rocksdb6StatusD2Ev.exit307:                   ; preds = %bb.fe, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn120.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb25RandomTransactionInserter29OptimisticTransactionDBInsertEPNS_23OptimisticTransactionDBERKNS_28OptimisticTransactionOptionsE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = load ptr, ptr %1, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1408
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(25) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.c) ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !58
  %i.h = tail call noundef zeroext i1 @_ZN7rocksdb25RandomTransactionInserter8DoInsertEPNS_2DBEPNS_11TransactionEb(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull %1, ptr noundef %i.g, i1 noundef zeroext true)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb25RandomTransactionInserter8DBInsertEPNS_2DBE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7rocksdb25RandomTransactionInserter8DoInsertEPNS_2DBEPNS_11TransactionEb(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb25RandomTransactionInserter5DBGetEPNS_2DBEPNS_11TransactionERNS_11ReadOptionsEtmbPmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(192) %3, i16 noundef zeroext %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef captures(address) %8, ptr nofree noundef writeonly captures(none) %9) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [6 x i8], align 1                 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr null, ptr %i.c, align 8, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.b, i8 0, i64 6, i1 false)
  %i.d = zext i16 %4 to i32
  %i.e = add nuw nsw i32 %i.d, 1
  %i.f = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %i.e) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.g = icmp ult i64 %5, 10
  br i1 %i.g, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.h, ptr %10, align 8, !tbaa !67, !alias.scope !163
  br label %bb.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.p, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.o, %bb.g ], [ %5, %bb.a ] ; 5 uses
  %i.i = icmp ult i64 %.02328.i.i, 100
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.o = udiv i64 %.02328.i.i, 10000
  %i.p = add i32 %.029.i.i, 4                     ; 2 uses
  %i.q = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.q, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.022.i.i = phi i32 [ %i.n, %bb.f ], [ %i.j, %bb.b ], [ %i.l, %bb.d ], [ %i.p, %bb.g ] ; 3 uses
  %i.r = zext i32 %.022.i.i to i64                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.s, ptr %10, align 8, !tbaa !67, !alias.scope !163
  %i.t = icmp ugt i32 %.022.i.i, 15
  br i1 %i.t, label %.noexc.i, label %bb.h

.noexc.i:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.u = add nuw nsw i64 %i.r, 1
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #26
          to label %.noexc unwind label %bb.af    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.v, ptr %10, align 8, !tbaa !76, !alias.scope !163
  store i64 %i.r, ptr %i.s, align 8, !tbaa !70, !alias.scope !163
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.022.i.i, label %bb.j [
    i32 0, label %bb.k
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.w = phi ptr [ %i.h, %.thread.i ], [ %i.s, %bb.h ] ; 2 uses
  store i8 0, ptr %i.w, align 1, !tbaa !70, !alias.scope !163
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.noexc
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.s, %bb.h ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.r, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.y = phi i64 [ 0, %bb.h ], [ %i.r, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %i.z = phi ptr [ %i.s, %bb.h ], [ %i.x, %bb.j ], [ %i.w, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !69, !alias.scope !163
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !70
  %i.ac = load ptr, ptr %10, align 8, !tbaa !76, !alias.scope !163 ; 4 uses
  %i.ad = icmp ugt i64 %5, 99
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !69, !alias.scope !163
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.af, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.aj, %.lr.ph.i4.i ], [ %5, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.at, %.lr.ph.i4.i ], [ %i.ag, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = urem i64 %.020.i.i, 100
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !70, !noalias !163
  %i.an = zext i32 %.01819.i.i to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.an
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !70
  %i.ap = load i8, ptr %i.ak, align 2, !tbaa !70, !noalias !163
  %i.aq = add i32 %.01819.i.i, -1
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1, !tbaa !70
  %i.at = add i32 %.01819.i.i, -2
  %i.au = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.au, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %bb.k
  %.0.lcssa.i.i = phi i64 [ %5, %bb.k ], [ %i.aj, %.lr.ph.i4.i ] ; 3 uses
  %i.av = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.aw = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ax = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !70, !noalias !163
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !70
  %i.bb = load i8, ptr %i.ax, align 2, !tbaa !70, !noalias !163
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bc = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bd = or disjoint i8 %i.bc, 48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %storemerge.i.i = phi i8 [ %i.bd, %bb.m ], [ %i.bb, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.ac, align 1, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.be = load ptr, ptr %10, align 8, !tbaa !76
  store ptr %i.be, ptr %11, align 8, !tbaa !78
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bg = load i64, ptr %i.aa, align 8, !tbaa !69
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !79
end_hunk_1
