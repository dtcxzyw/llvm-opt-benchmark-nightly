Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_fetcher?download=true
inline.NumInlined: 824
inline.NumDeleted: 370
begin_hunk_0_@_ZN7rocksdb12BlockFetcher9ReadBlockEb:bb.a
_ZN7rocksdb12BlockFetcher46InsertCompressedBlockToPersistentCacheIfNeededEv.exit: ; preds = %.noexc372, %bb.iy, %bb.ix, %bb.ja
  %i.ajd = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.aje = getelementptr inbounds nuw i8, ptr %0, i64 5488 ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !140
  store ptr null, ptr %i.ajf, align 8, !tbaa !140
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 5520 ; 2 uses
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !140 ; 2 uses
  store ptr %i.ajg, ptr %i.ajh, align 8, !tbaa !140
  %.not.i.i396 = icmp eq ptr %i.aji, null
  br i1 %.not.i.i396, label %_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEE5resetES1_.exit.i, label %bb.jb

bb.jb:                                            ; preds = %_ZN7rocksdb12BlockFetcher46InsertCompressedBlockToPersistentCacheIfNeededEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aji, ptr %i.a, align 8, !tbaa !140
  %i.ajj = getelementptr inbounds nuw i8, ptr %0, i64 5504
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !141
  %.not.i.i.i.i397 = icmp eq ptr %i.ajk, null
  br i1 %.not.i.i.i.i397, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZSt25__throw_bad_function_callv() #22
          to label %.noexc.i.i400 unwind label %bb.je

.noexc.i.i400:                                    ; preds = %bb.jc
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %i.ajl = getelementptr inbounds nuw i8, ptr %0, i64 5512
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !211
  invoke void %i.ajm(ptr noundef nonnull align 8 dereferenceable(40) %i.aje, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt8functionIFvPvEEclES0_.exit.i.i398 unwind label %bb.je, !inline_history !2

_ZNKSt8functionIFvPvEEclES0_.exit.i.i398:         ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEE5resetES1_.exit.i

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.ajn = landingpad { ptr, i32 }
          catch ptr null
  %i.ajo = extractvalue { ptr, i32 } %i.ajn, 0
  call void @__clang_call_terminate(ptr %i.ajo) #21
  unreachable

_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEE5resetES1_.exit.i: ; preds = %_ZNKSt8functionIFvPvEEclES0_.exit.i.i398, %_ZN7rocksdb12BlockFetcher46InsertCompressedBlockToPersistentCacheIfNeededEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.ajp = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  %i.ajq = load <2 x ptr>, ptr %i.ajp, align 8, !tbaa !140
  %i.ajr = load ptr, ptr %i.ajp, align 8, !tbaa !141
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ajr, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i, label %bb.jf

bb.jf:                                            ; preds = %_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEE5resetES1_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.ajd, i64 16, i1 false), !tbaa.struct !290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ajp, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i

_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i:            ; preds = %bb.jf, %_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEE5resetES1_.exit.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.aje, i64 16, i1 false), !tbaa.struct !290
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.aje, align 8, !tbaa !47
  %i.ajs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 5504 ; 3 uses
  %i.aju = load <2 x ptr>, ptr %i.ajt, align 8, !tbaa !140
  %i.ajv = load ptr, ptr %i.ajt, align 8, !tbaa !140 ; 2 uses
  store <2 x ptr> %i.aju, ptr %i.ajs, align 16, !tbaa !140
  store <2 x ptr> %i.ajq, ptr %i.ajt, align 8, !tbaa !140
  %.not.i.i.i399 = icmp eq ptr %i.ajv, null
  br i1 %.not.i.i.i399, label %_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEEaSEOS4_.exit, label %bb.jg

bb.jg:                                            ; preds = %_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i
  %i.ajw = invoke noundef zeroext i1 %i.ajv(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEEaSEOS4_.exit unwind label %bb.jh ; 0 uses

bb.jh:                                            ; preds = %bb.jg
  %i.ajx = landingpad { ptr, i32 }
          catch ptr null
  %i.ajy = extractvalue { ptr, i32 } %i.ajx, 0
  call void @__clang_call_terminate(ptr %i.ajy) #21
  unreachable

_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEEaSEOS4_.exit: ; preds = %_ZNSt8functionIFvPvEEC2EOS2_.exit.i.i, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %1, label %bb.ji, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit376

bb.ji:                                            ; preds = %_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEEaSEOS4_.exit
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !155, !nonnull !129, !align !156
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 584
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !215 ; 3 uses
  %.not.i374 = icmp eq ptr %i.akc, null
  br i1 %.not.i374, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit376, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !138
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 176
  %i.akf = load ptr, ptr %i.ake, align 8
  invoke void %i.akf(ptr noundef nonnull align 8 dereferenceable(33) %i.akc, i32 noundef 233, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit376 unwind label %bb.q, !inline_history !3

bb.jk:                                            ; preds = %bb.iw
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 5482
  %i.akh = load i8, ptr %i.akg, align 2, !tbaa !209, !range !128, !noundef !129
  %i.aki = trunc nuw i8 %i.akh to i1
  br i1 %i.aki, label %bb.jl, label %_ZN7rocksdb12BlockFetcher31ReleaseFileSystemProvidedBufferEPNS_13FSReadRequestE.exit

bb.jl:                                            ; preds = %bb.jk
  %i.akj = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 4 uses
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !140 ; 2 uses
  %.not.i.i377 = icmp eq ptr %i.akl, null
  br i1 %.not.i.i377, label %_ZN7rocksdb12BlockFetcher31ReleaseFileSystemProvidedBufferEPNS_13FSReadRequestE.exit, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  store ptr null, ptr %i.akk, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.akl, ptr %i.e, align 8, !tbaa !140
  %i.akm = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !141
  %.not.i.i.i.i.i378 = icmp eq ptr %i.akn, null
  br i1 %.not.i.i.i.i.i378, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  invoke void @_ZSt25__throw_bad_function_callv() #22
          to label %.noexc.i.i.i unwind label %bb.jp

.noexc.i.i.i:                                     ; preds = %bb.jn
  unreachable

bb.jo:                                            ; preds = %bb.jm
  %i.ako = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !211
  invoke void %i.akp(ptr noundef nonnull align 8 dereferenceable(40) %i.akj, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZNSt10unique_ptrIvSt8functionIFvPvEEE5resetES1_.exit.i unwind label %bb.jp, !inline_history !2

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.akq = landingpad { ptr, i32 }
          catch ptr null
  %i.akr = extractvalue { ptr, i32 } %i.akq, 0
  call void @__clang_call_terminate(ptr %i.akr) #21
  unreachable

_ZNSt10unique_ptrIvSt8functionIFvPvEEE5resetES1_.exit.i: ; preds = %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aks = load ptr, ptr %i.akk, align 8, !tbaa !140 ; 2 uses
  store ptr null, ptr %i.akk, align 8, !tbaa !140
  %.not.i.i.i.i379 = icmp eq ptr %i.aks, null
  br i1 %.not.i.i.i.i379, label %_ZN7rocksdb12BlockFetcher31ReleaseFileSystemProvidedBufferEPNS_13FSReadRequestE.exit, label %bb.jq

bb.jq:                                            ; preds = %_ZNSt10unique_ptrIvSt8functionIFvPvEEE5resetES1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aks, ptr %i.d, align 8, !tbaa !140
  %i.akt = load ptr, ptr %i.akm, align 8, !tbaa !141
  %.not.i.i.i.i.i.i = icmp eq ptr %i.akt, null
  br i1 %.not.i.i.i.i.i.i, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  invoke void @_ZSt25__throw_bad_function_callv() #22
          to label %.noexc.i.i.i.i unwind label %bb.jt

.noexc.i.i.i.i:                                   ; preds = %bb.jr
  unreachable

bb.js:                                            ; preds = %bb.jq
  %i.aku = load ptr, ptr %i.ako, align 8, !tbaa !211
  invoke void %i.aku(ptr noundef nonnull align 8 dereferenceable(40) %i.akj, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNKSt8functionIFvPvEEclES0_.exit.i.i.i.i unwind label %bb.jt, !inline_history !2

_ZNKSt8functionIFvPvEEclES0_.exit.i.i.i.i:        ; preds = %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN7rocksdb12BlockFetcher31ReleaseFileSystemProvidedBufferEPNS_13FSReadRequestE.exit

bb.jt:                                            ; preds = %bb.js, %bb.jr
  %i.akv = landingpad { ptr, i32 }
          catch ptr null
  %i.akw = extractvalue { ptr, i32 } %i.akv, 0
  call void @__clang_call_terminate(ptr %i.akw) #21
  unreachable

_ZN7rocksdb12BlockFetcher31ReleaseFileSystemProvidedBufferEPNS_13FSReadRequestE.exit: ; preds = %bb.jk, %bb.jl, %_ZNSt10unique_ptrIvSt8functionIFvPvEEE5resetES1_.exit.i, %_ZNKSt8functionIFvPvEEclES0_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.akx = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aky = getelementptr inbounds nuw i8, ptr %34, i64 24
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akx, i8 0, i64 24, i1 false), !noalias !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %34, i8 0, i64 24, i1 false), !alias.scope !312
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !211, !noalias !312 ; 2 uses
  store ptr %i.ala, ptr %i.aky, align 8, !tbaa !211, !alias.scope !312
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !141, !noalias !312 ; 3 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.alc, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit.thread, label %_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit

_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit:        ; preds = %_ZN7rocksdb12BlockFetcher31ReleaseFileSystemProvidedBufferEPNS_13FSReadRequestE.exit
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ale = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 8 dereferenceable(40) %i.ald, i64 16, i1 false), !tbaa.struct !290
  store ptr %i.alc, ptr %i.ale, align 8, !tbaa !141, !alias.scope !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alb, i8 0, i64 16, i1 false), !noalias !312
  %i.alf = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.alh = load i64, ptr %i.alg, align 8, !tbaa !140, !noalias !312 ; 3 uses
  store i64 %i.alh, ptr %i.alf, align 8, !tbaa !140, !alias.scope !312
  store ptr null, ptr %i.alg, align 8, !tbaa !140, !noalias !312
  %.not.i380 = icmp eq i64 %i.alh, 0
  br i1 %.not.i380, label %bb.jx, label %bb.jv

_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit.thread: ; preds = %_ZN7rocksdb12BlockFetcher31ReleaseFileSystemProvidedBufferEPNS_13FSReadRequestE.exit
  %i.ali = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !140, !noalias !312 ; 3 uses
  store i64 %i.alk, ptr %i.ali, align 8, !tbaa !140, !alias.scope !312
  store ptr null, ptr %i.alj, align 8, !tbaa !140, !noalias !312
  %.not.i380581 = icmp eq i64 %i.alk, 0
  br i1 %.not.i380581, label %.thread585, label %bb.ju

.thread585:                                       ; preds = %_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit.thread
  store ptr null, ptr %i.ali, align 8, !tbaa !140
  br label %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit

bb.ju:                                            ; preds = %_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit.thread
  %.cast583 = inttoptr i64 %i.alk to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.cast583, ptr %i.c, align 8, !tbaa !140
  invoke void @_ZSt25__throw_bad_function_callv() #22
          to label %.noexc.i383 unwind label %bb.jz

.noexc.i383:                                      ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit
  %.cast = inttoptr i64 %i.alh to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.cast, ptr %i.c, align 8, !tbaa !140
  invoke void %i.ala(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.jw unwind label %bb.jz, !inline_history !2

bb.jw:                                            ; preds = %bb.jv
  %i.all = getelementptr inbounds nuw i8, ptr %34, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre446 = load ptr, ptr %i.all, align 8, !tbaa !141
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit
  %i.alm = phi ptr [ %.pre446, %bb.jw ], [ %i.alc, %_ZN7rocksdb13AlignedBuffer7ReleaseEv.exit ] ; 2 uses
  store ptr null, ptr %i.alf, align 8, !tbaa !140
  %.not.i.i.i.i382 = icmp eq ptr %i.alm, null
  br i1 %.not.i.i.i.i382, label %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit, label %35

35:                                               ; preds = %bb.jx
  %36 = invoke noundef zeroext i1 %i.alm(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 3)
          to label %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit unwind label %bb.jy ; 0 uses

bb.jy:                                            ; preds = %35
  %i.aln = landingpad { ptr, i32 }
          catch ptr null
  %i.alo = extractvalue { ptr, i32 } %i.aln, 0
  call void @__clang_call_terminate(ptr %i.alo) #21
  unreachable

bb.jz:                                            ; preds = %bb.jv, %bb.ju
  %i.alp = landingpad { ptr, i32 }
          catch ptr null
  %i.alq = extractvalue { ptr, i32 } %i.alp, 0
  call void @__clang_call_terminate(ptr %i.alq) #21
  unreachable

_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit:  ; preds = %.thread585, %bb.jx, %35
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !132 ; 3 uses
  store ptr null, ptr %i.alr, align 8, !tbaa !132
  %.not.i.i.i384 = icmp eq ptr %i.als, null
  br i1 %.not.i.i.i384, label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit, label %bb.ka

bb.ka:                                            ; preds = %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit
  %i.alt = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !220 ; 3 uses
  %.not.i.i.i.i385 = icmp eq ptr %i.alu, null
  br i1 %.not.i.i.i.i385, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !138
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 160
  %i.alx = load ptr, ptr %i.alw, align 8
  invoke void %i.alx(ptr noundef nonnull align 8 dereferenceable(32) %i.alu, ptr noundef nonnull %i.als)
          to label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit unwind label %bb.kd, !inline_history !4

bb.kc:                                            ; preds = %bb.ka
  call void @_ZdaPv(ptr noundef nonnull %i.als) #20
  br label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit

bb.kd:                                            ; preds = %bb.kb
  %i.aly = landingpad { ptr, i32 }
          catch ptr null
  %i.alz = extractvalue { ptr, i32 } %i.aly, 0
  call void @__clang_call_terminate(ptr %i.alz) #21
  unreachable

_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit: ; preds = %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit, %bb.kb, %bb.kc
  %i.ama = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !132 ; 3 uses
  store ptr null, ptr %i.ama, align 8, !tbaa !132
  %.not.i.i.i386 = icmp eq ptr %i.amb, null
  br i1 %.not.i.i.i386, label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit388, label %bb.ke

bb.ke:                                            ; preds = %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit
  %i.amc = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !220 ; 3 uses
  %.not.i.i.i.i387 = icmp eq ptr %i.amd, null
  br i1 %.not.i.i.i.i387, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !138
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 160
  %i.amg = load ptr, ptr %i.amf, align 8
  invoke void %i.amg(ptr noundef nonnull align 8 dereferenceable(32) %i.amd, ptr noundef nonnull %i.amb)
          to label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit388 unwind label %bb.kh, !inline_history !4

bb.kg:                                            ; preds = %bb.ke
  call void @_ZdaPv(ptr noundef nonnull %i.amb) #20
  br label %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit388

bb.kh:                                            ; preds = %bb.kf
  %i.amh = landingpad { ptr, i32 }
          catch ptr null
  %i.ami = extractvalue { ptr, i32 } %i.amh, 0
  call void @__clang_call_terminate(ptr %i.ami) #21
  unreachable

_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit388: ; preds = %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit, %bb.kf, %bb.kg
  %i.amj = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr null, ptr %i.amj, align 8, !tbaa !207
  br label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit376

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit376: ; preds = %bb.ji, %bb.jj, %_ZNSt10unique_ptrIA_cN7rocksdb22CacheAllocationDeleterEE5resetEDn.exit388, %_ZNSt15__uniq_ptr_implIvSt8functionIFvPvEEEaSEOS4_.exit, %bb.dc
  %i.amk = load ptr, ptr %i.af, align 8, !tbaa !213 ; 2 uses
  %i.aml = icmp eq ptr %i.amk, %i.ag
  br i1 %i.aml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit376
  %i.amm = load i64, ptr %i.ag, align 8, !tbaa !47
  %i.amn = add i64 %i.amm, 1
  call void @_ZdlPvm(ptr noundef %i.amk, i64 noundef %i.amn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.amo = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 2 uses
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !222 ; 2 uses
  %.not.i.i.i389 = icmp eq ptr %i.amp, null
  br i1 %.not.i.i.i389, label %_ZNSt3anyD2Ev.exit.i, label %bb.ki

bb.ki:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  invoke void %i.amp(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.amo, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit.i unwind label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.amq = landingpad { ptr, i32 }
          catch ptr null
  %i.amr = extractvalue { ptr, i32 } %i.amq, 0
  call void @__clang_call_terminate(ptr %i.amr) #21
  unreachable

_ZNSt3anyD2Ev.exit.i:                             ; preds = %bb.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ams = load ptr, ptr %i.ab, align 8, !tbaa !213 ; 2 uses
  %i.amt = icmp eq ptr %i.ams, %i.ac
  br i1 %i.amt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt3anyD2Ev.exit.i
  %i.amu = load i64, ptr %i.ac, align 8, !tbaa !47
  %i.amv = add i64 %i.amu, 1
  call void @_ZdlPvm(ptr noundef %i.ams, i64 noundef %i.amv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt3anyD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.amw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.amx = load ptr, ptr %i.x, align 8, !tbaa !53
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.amw, ptr noundef %i.amx)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i unwind label %bb.kk

bb.kk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.amy = landingpad { ptr, i32 }
          catch ptr null
  %i.amz = extractvalue { ptr, i32 } %i.amy, 0
  call void @__clang_call_terminate(ptr %i.amz) #21
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ana = load ptr, ptr %8, align 8, !tbaa !213  ; 2 uses
  %i.anb = icmp eq ptr %i.ana, %i.u
  br i1 %i.anb, label %_ZN7rocksdb14IODebugContextD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i
  %i.anc = load i64, ptr %i.u, align 8, !tbaa !47
  %i.and = add i64 %i.anc, 1
  call void @_ZdlPvm(ptr noundef %i.ana, i64 noundef %i.and) #20
  br label %_ZN7rocksdb14IODebugContextD2Ev.exit

_ZN7rocksdb14IODebugContextD2Ev.exit:             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ane = load ptr, ptr %i.q, align 8, !tbaa !223 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ane, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb14IODebugContextD2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.anf, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.ane, %_ZN7rocksdb14IODebugContextD2Ev.exit ] ; 6 uses
  %i.anf = load ptr, ptr %.06.i.i.i, align 8, !tbaa !224 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.anh = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !213 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.ank = icmp eq ptr %i.ani, %i.anj
  br i1 %i.ank, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.anl = load i64, ptr %i.anj, align 8, !tbaa !47
  %i.anm = add i64 %i.anl, 1
  call void @_ZdlPvm(ptr noundef %i.ani, i64 noundef %i.anm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ann = load ptr, ptr %i.ang, align 8, !tbaa !213 ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.anp = icmp eq ptr %i.ann, %i.ano
  br i1 %i.anp, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.anq = load i64, ptr %i.ano, align 8, !tbaa !47
  %i.anr = add i64 %i.anq, 1
  call void @_ZdlPvm(ptr noundef %i.ann, i64 noundef %i.anr) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #20
  %.not.i.i.i401 = icmp eq ptr %i.anf, null
  br i1 %.not.i.i.i401, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZN7rocksdb14IODebugContextD2Ev.exit
  %i.ans = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.ant = load i64, ptr %i.p, align 8, !tbaa !40
  %i.anu = shl i64 %i.ant, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ans, i8 0, i64 %i.anu, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.anv = load ptr, ptr %i.n, align 8, !tbaa !39 ; 2 uses
  %i.anw = icmp eq ptr %i.anv, %i.o
  br i1 %i.anw, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.kl

bb.kl:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.anx = load i64, ptr %i.p, align 8, !tbaa !40
  %i.any = shl i64 %i.anx, 3
  call void @_ZdlPvm(ptr noundef %i.anv, i64 noundef %i.any) #20
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.anz = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !140 ; 2 uses
  %.not.i.i390 = icmp eq ptr %i.aob, null
  br i1 %.not.i.i390, label %bb.kp, label %bb.km

bb.km:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aob, ptr %i.b, align 8, !tbaa !140
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !141
  %.not.i.i.i.i391 = icmp eq ptr %i.aod, null
  br i1 %.not.i.i.i.i391, label %bb.kn, label %bb.ko

end_hunk_0
