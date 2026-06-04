inline.NumInlined: 1042
inline.NumDeleted: 659
begin_hunk_0_@_ZNSt10unique_ptrIN8facebook5velox16ByteOutputStreamESt14default_deleteIS2_EED2Ev:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !164
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZNKSt14default_deleteIN8facebook5velox16ByteOutputStreamEEclEPS2_.exit

_ZNKSt14default_deleteIN8facebook5velox16ByteOutputStreamEEclEPS2_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN8facebook5velox16ByteOutputStreamEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox11StreamArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !136
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !138
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !138
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11StreamArenaESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11StreamArenaESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox11StreamArenaEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #24, !inline_history !237
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11StreamArenaESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11StreamArenaESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11StreamArenaESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !63
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN8facebook5velox11StreamArenaC1EPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

declare void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK5folly5IOBuf6cbeginEv(ptr dead_on_unwind writable sret(%"class.folly::IOBuf::Iterator") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

declare void @_ZNK5folly5IOBuf4cendEv(ptr dead_on_unwind writable sret(%"class.folly::IOBuf::Iterator") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN5folly5IOBufdlEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox21BatchVectorSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox12_GLOBAL__N_128DefaultBatchVectorSerializerD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox12_GLOBAL__N_128DefaultBatchVectorSerializer9serializeERKSt10shared_ptrINS0_9RowVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEERNS0_7ScratchEPNS0_12OutputStreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.facebook::velox::StreamArena", align 8 ; 7 uses
  %6 = alloca %"class.std::unique_ptr.57", align 8 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.54", align 8 ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !34     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 3 uses
  %.not24 = icmp eq ptr %i.a, %i.c
  br i1 %.not24, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = add i64 %i.d, -8
  %i.g = sub i64 %i.f, %i.e                       ; 3 uses
  %i.h = lshr i64 %i.g, 3
  %i.i = add nuw nsw i64 %i.h, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 32
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp ult i64 %i.g, 256
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.i, 31                    ; 2 uses
  %i.j = icmp eq i64 %n.mod.vf, 0
  %i.k = select i1 %i.j, i64 32, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.i, %i.k                 ; 3 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi35 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi36 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi37 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.n = shl i64 %index, 3                        ; 4 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.n
  %i.o = getelementptr i8, ptr %i.a, i64 %i.n
  %i.p = getelementptr i8, ptr %i.a, i64 %i.n
  %i.q = getelementptr i8, ptr %i.a, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.o, i64 68
  %i.t = getelementptr i8, ptr %i.p, i64 132
  %i.u = getelementptr i8, ptr %i.q, i64 196
  %wide.vec = load <16 x i32>, ptr %i.r, align 4, !tbaa !33
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec41 = load <16 x i32>, ptr %i.s, align 4, !tbaa !33
  %strided.vec42 = shufflevector <16 x i32> %wide.vec41, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec43 = load <16 x i32>, ptr %i.t, align 4, !tbaa !33
  %strided.vec44 = shufflevector <16 x i32> %wide.vec43, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec45 = load <16 x i32>, ptr %i.u, align 4, !tbaa !33
  %strided.vec46 = shufflevector <16 x i32> %wide.vec45, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.v = add <8 x i32> %strided.vec, %vec.phi     ; 2 uses
  %i.w = add <8 x i32> %strided.vec42, %vec.phi35 ; 2 uses
  %i.x = add <8 x i32> %strided.vec44, %vec.phi36 ; 2 uses
  %i.y = add <8 x i32> %strided.vec46, %vec.phi37 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !240

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.w, %i.v
  %bin.rdx47 = add <8 x i32> %i.x, %bin.rdx
  %bin.rdx48 = add <8 x i32> %i.y, %bin.rdx47
  %i.aa = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx48) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.k, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !243

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.aa, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf49 = and i64 %i.i, 3                   ; 2 uses
  %i.ab = icmp eq i64 %n.mod.vf49, 0
  %i.ac = select i1 %i.ab, i64 4, i64 %n.mod.vf49
  %n.vec50 = sub nsw i64 %i.i, %i.ac              ; 2 uses
  %i.ad = shl i64 %n.vec50, 3
  %i.ae = getelementptr i8, ptr %i.a, i64 %i.ad
  %8 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next56, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi52 = phi <4 x i32> [ %8, %vec.epilog.ph ], [ %9, %vec.epilog.vector.body ]
  %i.af = shl i64 %index51, 3
  %next.gep53 = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %next.gep53, i64 4
  %wide.vec54 = load <8 x i32>, ptr %i.ag, align 4, !tbaa !33
  %strided.vec55 = shufflevector <8 x i32> %wide.vec54, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %9 = add <4 x i32> %strided.vec55, %vec.phi52   ; 2 uses
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next56, %n.vec50
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !244

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %9)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01826.ph = phi i32 [ 0, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  %.01925.ph = phi ptr [ %i.a, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.018.lcssa = phi i32 [ 0, %bb.a ], [ %i.bh, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  call void @_ZN8facebook5velox11StreamArenaC1EPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(120) %5, ptr noundef %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52 ; 2 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !148, !noalias !251 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ar = call ptr @__dynamic_cast(ptr nonnull %i.ap, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #24, !noalias !251 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.not.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.ar, ptr %7, align 8, !tbaa !150, !alias.scope !251
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !129, !noalias !251 ; 3 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !129, !alias.scope !251
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63, !noalias !251
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3, !noalias !251
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3, !noalias !251
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

bb.f:                                             ; preds = %bb.d
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4, !noalias !251 ; 0 uses
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i: ; preds = %bb.b, %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !alias.scope !251
  br label %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit

_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit: ; preds = %bb.c, %bb.e, %bb.f, %_ZNSt10shared_ptrIKN8facebook5velox7RowTypeEEC2IKNS1_4TypeEEERKS_IT_EPS3_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.57") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull %7, i32 noundef %.018.lcssa, ptr noundef nonnull %5, ptr noundef %i.bb)
          to label %bb.g unwind label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01826 = phi i32 [ %i.bh, %.lr.ph ], [ %.01826.ph, %.lr.ph.preheader ]
  %.01925 = phi ptr [ %i.bi, %.lr.ph ], [ %.01925.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !33
  %i.bh = add i32 %i.bg, %.01826                  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !252

bb.g:                                             ; preds = %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !129 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bl, align 8, !tbaa !134
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !136
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !inline_history !137
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24, !inline_history !137
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !63
  %.not.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.bo, %bb.k ], [ %i.by, %bb.l ]
  %i.bz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bz, label %bb.m, label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !67

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #24
  br label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.ca = load ptr, ptr %6, align 8, !tbaa !131   ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ce = load ptr, ptr %6, align 8, !tbaa !131   ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %4)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %6, align 8, !tbaa !131   ; 3 uses
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i: ; preds = %bb.o
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ci) #24, !inline_history !133
  br label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN8facebook5velox11StreamArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void

bb.p:                                             ; preds = %_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #24
  br label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit23

bb.q:                                             ; preds = %bb.n, %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !131   ; 3 uses
  %.not.i21 = icmp eq ptr %i.co, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit23, label %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i22

_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i22: ; preds = %bb.q
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.co) #24, !inline_history !133
  br label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit23

_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit23: ; preds = %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i22, %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.cn, %bb.q ], [ %i.cn, %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN8facebook5velox11StreamArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox21BatchVectorSerializer9serializeERKSt10shared_ptrINS0_9RowVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS0_12OutputStreamE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::Scratch", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %3)
          to label %bb.b unwind label %bb.d
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_:bb.a
bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cb
  store ptr %.016, ptr %i.cc, align 8, !tbaa !272
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSH_10_Hash_nodeISF_Lb1EEEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSH_10_Hash_nodeISF_Lb1EEEm.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.l
  %i.cd = load ptr, ptr %.120, align 8, !tbaa !84
  store ptr %i.cd, ptr %.016, align 8, !tbaa !84
  %i.ce = getelementptr inbounds nuw i8, ptr %.120, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.120, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook5velox11VectorSerdeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox11VectorSerdeEEclEPS2_.exit.i.i.i.i.i: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSH_10_Hash_nodeISF_Lb1EEEm.exit.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !38
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.cg) #24, !inline_history !303
  br label %_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox11VectorSerdeEEclEPS2_.exit.i.i.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSH_10_Hash_nodeISF_Lb1EEEm.exit.i
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !64 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.120, i64 24 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev.exit.i.i.i.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !63
  %i.co = add i64 %i.cn, 1
  tail call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #27
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit: ; preds = %_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.120, i64 noundef 56) #27
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !287
  %i.cq = add i64 %i.cp, -1
  store i64 %i.cq, ptr %i.a, align 8, !tbaa !287
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i, %bb.j, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i, %bb.h, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit, %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSH_15_Hash_node_baseEPNSH_10_Hash_nodeISF_Lb1EEE.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.i ], [ 0, %bb.b ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread.us.i ], [ 0, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.us.i ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISG_Lb1EEE.exit.thread15.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox17VectorStreamGroupC2EPNS0_6memory10MemoryPoolEPNS0_11VectorSerdeE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8facebook5velox11StreamArenaC2EPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8facebook5velox17VectorStreamGroupE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !304
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %_ZN8facebook5velox14getVectorSerdeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEvE5serde acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_ZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEv.exit.i, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEvE5serde) #24
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev, ptr nonnull @_ZZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEvE5serde, ptr nonnull @__dso_handle) #24 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEvE5serde) #24
  br label %_ZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEv.exit.i

_ZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.f = load ptr, ptr @_ZZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEvE5serde, align 8, !tbaa !89 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %_ZN8facebook5velox14getVectorSerdeEv.exit, !prof !67

bb.e:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEv.exit.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox14getVectorSerdeEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.11) #28
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

_ZN8facebook5velox14getVectorSerdeEv.exit:        ; preds = %_ZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEv.exit.i, %bb.a
  %i.g = phi ptr [ %2, %bb.a ], [ %i.f, %_ZN8facebook5velox12_GLOBAL__N_118getVectorSerdeImplEv.exit.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.g, ptr %i.h, align 8, !tbaa !103
  ret void

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  %.not.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i: ; preds = %bb.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.j) #24, !inline_history !133
  br label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i
  tail call void @_ZN8facebook5velox11StreamArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #24
  resume { ptr, i32 } %i.i
}

declare void @_ZN8facebook5velox11StreamArenaC2EPNS0_6memory10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox17VectorStreamGroupD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8facebook5velox17VectorStreamGroupE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24, !inline_history !133
  br label %_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i
  tail call void @_ZN8facebook5velox11StreamArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox17VectorStreamGroupD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8facebook5velox17VectorStreamGroupE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8facebook5velox17VectorStreamGroupD2Ev.exit, label %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24, !inline_history !305
  br label %_ZN8facebook5velox17VectorStreamGroupD2Ev.exit

_ZN8facebook5velox17VectorStreamGroupD2Ev.exit:   ; preds = %bb.a, %_ZNKSt14default_deleteIN8facebook5velox25IterativeVectorSerializerEEclEPS2_.exit.i.i
  tail call void @_ZN8facebook5velox11StreamArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(136) %0) #24, !inline_history !306
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #27
  ret void
}

declare void @_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK8facebook5velox11StreamArena4sizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !307
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox17VectorStreamGroup5clearEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  tail call void @_ZN8facebook5velox11StreamArena5clearEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  ret void
}

declare void @_ZN8facebook5velox11StreamArena5clearEv(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN8facebook5velox10IndexRangeE", !4, i64 0, !4, i64 4}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox9RowVectorELN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !13, i64 8}
!11 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!15 = !{!16, !4, i64 56}
!16 = !{!"_ZTSN8facebook5velox10BaseVectorE", !17, i64 8, !20, i64 24, !21, i64 25, !22, i64 28, !23, i64 32, !25, i64 40, !26, i64 48, !4, i64 56, !27, i64 60, !27, i64 68, !27, i64 76, !27, i64 84, !31, i64 92, !21, i64 93}
!17 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !18, i64 0}
!18 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0, !13, i64 8}
!19 = !{!"p1 _ZTSN8facebook5velox4TypeE", !12, i64 0}
!20 = !{!"_ZTSN8facebook5velox8TypeKindE", !5, i64 0}
!21 = !{!"bool", !5, i64 0}
!22 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !5, i64 0}
!23 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !24, i64 0}
!24 = !{!"p1 _ZTSN8facebook5velox6BufferE", !12, i64 0}
!25 = !{!"p1 long", !12, i64 0}
!26 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !12, i64 0}
!27 = !{!"_ZTSSt8optionalIiE", !28, i64 0}
!28 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !29, i64 0}
!29 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !30, i64 0}
!30 = !{!"_ZTSSt22_Optional_payload_baseIiE", !5, i64 0, !21, i64 4}
!31 = !{!"_ZTSSt6atomicIbE", !32, i64 0}
!32 = !{!"_ZTSSt13__atomic_baseIbE", !21, i64 0}
!33 = !{!8, !4, i64 4}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN5folly5RangeIPKN8facebook5velox10IndexRangeEEE", !36, i64 0, !36, i64 8}
!36 = !{!"p1 _ZTSN8facebook5velox10IndexRangeE", !12, i64 0}
!37 = !{!35, !36, i64 8}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !6, i64 0}
!40 = !{!41, !42, i64 0}
!41 = !{!"_ZTSN8facebook5velox7ScratchE", !42, i64 0, !4, i64 8, !4, i64 12, !43, i64 16}
!42 = !{!"p1 _ZTSN8facebook5velox10raw_vectorIcEE", !12, i64 0}
!43 = !{!"long", !5, i64 0}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZSt11make_uniqueIN8facebook5velox12_GLOBAL__N_128DefaultBatchVectorSerializerEJRPNS1_6memory10MemoryPoolEPNS1_11VectorSerdeERPKNS8_7OptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!46 = distinct !{!46, !"_ZSt11make_uniqueIN8facebook5velox12_GLOBAL__N_128DefaultBatchVectorSerializerEJRPNS1_6memory10MemoryPoolEPNS1_11VectorSerdeERPKNS8_7OptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!47 = !{!48, !26, i64 8}
!48 = !{!"_ZTSN8facebook5velox12_GLOBAL__N_128DefaultBatchVectorSerializerE", !49, i64 0, !26, i64 8, !50, i64 16, !51, i64 24}
!49 = !{!"_ZTSN8facebook5velox21BatchVectorSerializerE"}
!50 = !{!"p1 _ZTSN8facebook5velox11VectorSerdeE", !12, i64 0}
!51 = !{!"p1 _ZTSN8facebook5velox11VectorSerde7OptionsE", !12, i64 0}
!52 = !{!48, !50, i64 16}
!53 = !{!48, !51, i64 24}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox21BatchVectorSerializerELb0EE", !56, i64 0}
!56 = !{!"p1 _ZTSN8facebook5velox21BatchVectorSerializerE", !12, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !59, i64 0}
!59 = !{!"p1 omnipotent char", !12, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN3fmt3v116formatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!62 = distinct !{!62, !"_ZN3fmt3v116formatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!63 = !{!5, !5, i64 0}
!64 = !{!65, !59, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0, !43, i64 8, !5, i64 16}
!66 = !{!65, !43, i64 8}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = !{!"branch_weights", i32 1, i32 1048575}
!69 = !{!70, !70, i64 0}
!70 = !{!"_ZTSN8facebook5velox11VectorSerde4KindE", !5, i64 0}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!73 = distinct !{!73, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!74 = !{!75, !70, i64 32}
!75 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox11VectorSerde4KindEE", !65, i64 0, !70, i64 32}
!76 = !{!77, !81, i64 16}
!77 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox11VectorSerde4KindEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !78, i64 0, !43, i64 8, !80, i64 16, !43, i64 24, !82, i64 32, !81, i64 48}
!78 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !79, i64 0}
!79 = !{!"any p2 pointer", !12, i64 0}
!80 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !81, i64 0}
!81 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!82 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !83, i64 0, !43, i64 8}
!83 = !{!"float", !5, i64 0}
!84 = !{!80, !81, i64 0}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!77, !78, i64 0}
!88 = !{!77, !43, i64 8}
!89 = !{!50, !50, i64 0}
!90 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!91 = distinct !{null, null, null, null, null}
!92 = distinct !{null, null, null}
!93 = !{!94, !78, i64 0}
!94 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE", !78, i64 0, !43, i64 8, !80, i64 16, !43, i64 24, !82, i64 32, !81, i64 48}
!95 = !{!94, !43, i64 8}
!96 = !{!82, !83, i64 0}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!99 = distinct !{!99, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!102 = distinct !{!102, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!103 = !{!104, !50, i64 128}
!104 = !{!"_ZTSN8facebook5velox17VectorStreamGroupE", !105, i64 0, !122, i64 120, !50, i64 128}
!105 = !{!"_ZTSN8facebook5velox11StreamArenaE", !26, i64 8, !106, i64 16, !111, i64 40, !4, i64 80, !4, i64 84, !117, i64 88, !43, i64 112}
!106 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE", !107, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE12_Vector_implE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !110, i64 0, !110, i64 8, !110, i64 16}
!110 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS3_EE", !12, i64 0}
!111 = !{!"_ZTSN8facebook5velox6memory10AllocationE", !26, i64 0, !112, i64 8, !4, i64 32}
!112 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !113, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_Vector_implE", !115, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!116 = !{!"p1 _ZTSN8facebook5velox6memory10Allocation7PageRunE", !12, i64 0}
!117 = !{!"_ZTSSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !118, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_Vector_implE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!121 = !{!"p1 _ZTSN8facebook5velox6memory20ContiguousAllocationE", !12, i64 0}
!122 = !{!"_ZTSSt10unique_ptrIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EE", !123, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_ELb1ELb1EE", !124, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EE", !125, i64 0}
!125 = !{!"_ZTSSt5tupleIJPN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EEE", !126, i64 0}
!126 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox25IterativeVectorSerializerESt14default_deleteIS2_EEE", !127, i64 0}
!127 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox25IterativeVectorSerializerELb0EE", !128, i64 0}
!128 = !{!"p1 _ZTSN8facebook5velox25IterativeVectorSerializerE", !12, i64 0}
!129 = !{!13, !14, i64 0}
!130 = !{!12, !12, i64 0}
!131 = !{!128, !128, i64 0}
!132 = distinct !{null, null, null, null, null}
!133 = distinct !{null, null}
!134 = !{!135, !4, i64 8}
!135 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!136 = !{!135, !4, i64 12}
!137 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!138 = distinct !{null, null}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZSt11make_uniqueIN8facebook5velox17VectorStreamGroupEJPNS1_6memory10MemoryPoolERPNS1_11VectorSerdeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!141 = distinct !{!141, !"_ZSt11make_uniqueIN8facebook5velox17VectorStreamGroupEJPNS1_6memory10MemoryPoolERPNS1_11VectorSerdeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE: argument 0"}
!144 = distinct !{!144, !"_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E: argument 0"}
!147 = distinct !{!147, !"_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E"}
!148 = !{!18, !19, i64 0}
!149 = !{!146, !143}
!150 = !{!151, !152, i64 0}
!151 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EE", !152, i64 0, !13, i64 8}
!152 = !{!"p1 _ZTSN8facebook5velox7RowTypeE", !12, i64 0}
!153 = !{ptr @_ZN8facebook5velox17VectorStreamGroup6appendERKSt10shared_ptrINS0_9RowVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEERNS0_7ScratchE}
!154 = !{ptr @_ZN8facebook5velox17VectorStreamGroup5flushEPNS0_12OutputStreamE}
!155 = !{!156, !156, i64 0}
!156 = !{!"p1 _ZTSN5folly5IOBufE", !12, i64 0}
!157 = !{!158, !12, i64 16}
!158 = !{!"_ZTSSt14_Function_base", !5, i64 0, !12, i64 16}
!159 = !{!160, !160, i64 0}
!160 = !{!"p1 _ZTSN8facebook5velox16ByteOutputStreamE", !12, i64 0}
!161 = !{!162, !163, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE17_Vector_impl_dataE", !163, i64 0, !163, i64 8, !163, i64 16}
!163 = !{!"p1 _ZTSN8facebook5velox9ByteRangeE", !12, i64 0}
!164 = !{!162, !163, i64 16}
!165 = distinct !{ptr @_ZN8facebook5velox17IOBufOutputStreamD2Ev, ptr @_ZNSt12__shared_ptrIN8facebook5velox11StreamArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!166 = distinct !{null, null}
!167 = !{!168, !169, i64 8}
!168 = !{!"_ZTSN8facebook5velox12OutputStreamE", !169, i64 8}
!169 = !{!"p1 _ZTSN8facebook5velox20OutputStreamListenerE", !12, i64 0}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZSt11make_sharedIN8facebook5velox11StreamArenaEJPNS1_6memory10MemoryPoolEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!172 = distinct !{!172, !"_ZSt11make_sharedIN8facebook5velox11StreamArenaEJPNS1_6memory10MemoryPoolEEESt10shared_ptrIT_EDpOT0_"}
!173 = !{!174, !175, i64 0}
!174 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox11StreamArenaELN9__gnu_cxx12_Lock_policyE2EE", !175, i64 0, !13, i64 8}
!175 = !{!"p1 _ZTSN8facebook5velox11StreamArenaE", !12, i64 0}
!176 = !{!175, !175, i64 0}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZSt11make_uniqueIN8facebook5velox16ByteOutputStreamEJPNS1_11StreamArenaEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!179 = distinct !{!179, !"_ZSt11make_uniqueIN8facebook5velox16ByteOutputStreamEJPNS1_11StreamArenaEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!180 = !{!181, !175, i64 0}
!181 = !{!"_ZTSN8facebook5velox16ByteOutputStreamE", !175, i64 0, !21, i64 8, !21, i64 9, !21, i64 10, !21, i64 11, !21, i64 12, !182, i64 16, !43, i64 40, !163, i64 48, !43, i64 56}
!182 = !{!"_ZTSSt6vectorIN8facebook5velox9ByteRangeESaIS2_EE", !183, i64 0}
!183 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE", !184, i64 0}
!184 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE12_Vector_implE", !162, i64 0}
!185 = !{!181, !21, i64 12}
!186 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox11StreamArenaELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!187 = !{!188, !156, i64 0}
!188 = !{!"_ZTSN5folly5IOBuf8IteratorE", !156, i64 0, !156, i64 8, !189, i64 16}
!189 = !{!"_ZTSN5folly5RangeIPKhEE", !59, i64 0, !59, i64 8}
!190 = !{!189, !59, i64 0}
!191 = !{!189, !59, i64 8}
!192 = !{!193, !163, i64 8}
!193 = !{!"_ZTSN8facebook5velox15ByteInputStreamE", !163, i64 8}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZSt11make_uniqueIN8facebook5velox17BufferInputStreamEJSt6vectorINS1_9ByteRangeESaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!196 = distinct !{!196, !"_ZSt11make_uniqueIN8facebook5velox17BufferInputStreamEJSt6vectorINS1_9ByteRangeESaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!197 = !{!59, !59, i64 0}
!198 = !{!43, !43, i64 0}
!199 = !{!188, !156, i64 8}
!200 = !{!201, !156, i64 32}
!201 = !{!"_ZTSN5folly5IOBufE", !43, i64 0, !59, i64 8, !43, i64 16, !59, i64 24, !156, i64 32, !156, i64 40, !202, i64 48}
!202 = !{!"p1 _ZTSN5folly5IOBuf10SharedInfoE", !12, i64 0}
!203 = !{!201, !59, i64 8}
!204 = !{!201, !43, i64 0}
!205 = !{!162, !163, i64 8}
!206 = distinct !{null, null}
!207 = !{!56, !56, i64 0}
!208 = distinct !{null, null}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!211 = distinct !{!211, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!212 = !{!213}
!213 = distinct !{!213, !214, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!214 = distinct !{!214, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!217 = distinct !{!217, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!220 = distinct !{!220, !"_ZN8facebook5velox12errorMessageIJA23_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!221 = !{!41, !4, i64 8}
!222 = !{!41, !4, i64 12}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!225 = distinct !{!225, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!226 = !{!227, !59, i64 8}
!227 = !{!"_ZTSN8facebook5velox10raw_vectorIcEE", !26, i64 0, !59, i64 8, !43, i64 16, !43, i64 24}
!228 = !{!227, !26, i64 0}
!229 = !{!227, !43, i64 24}
!230 = distinct !{null}
!231 = distinct !{!231, !86}
!232 = distinct !{null}
!233 = !{!94, !81, i64 16}
!234 = distinct !{null, null, null, null, null, null, ptr @_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev, null}
!235 = distinct !{!235, !86}
!236 = distinct !{null}
!237 = distinct !{null, null}
!238 = !{!239, !59, i64 8}
!239 = !{!"_ZTSSt9type_info", !59, i64 8}
!240 = distinct !{!240, !241, !242}
!241 = !{!"llvm.loop.isvectorized", i32 1}
!242 = !{!"llvm.loop.unroll.runtime.disable"}
!243 = !{!"branch_weights", i32 4, i32 28}
!244 = distinct !{!244, !241, !242}
!245 = !{!246}
!246 = distinct !{!246, !247, !"_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE: argument 0"}
!247 = distinct !{!247, !"_ZN8facebook5velox9asRowTypeERKSt10shared_ptrIKNS0_4TypeEE"}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E: argument 0"}
!250 = distinct !{!250, !"_ZSt20dynamic_pointer_castIKN8facebook5velox7RowTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E"}
!251 = !{!249, !246}
!252 = distinct !{!252, !242, !241}
!253 = !{!254, !255, i64 0}
!254 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !255, i64 0, !13, i64 8}
!255 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !12, i64 0}
!256 = !{!120, !121, i64 0}
!257 = !{!120, !121, i64 8}
!258 = distinct !{!258, !86}
!259 = !{!120, !121, i64 16}
!260 = !{!109, !110, i64 0}
!261 = !{!109, !110, i64 8}
!262 = !{!263, !263, i64 0}
!263 = !{!"p1 _ZTSN8facebook5velox6memory10AllocationE", !12, i64 0}
!264 = distinct !{!264, !86}
!265 = !{!109, !110, i64 16}
!266 = !{!77, !81, i64 48}
!267 = !{!268, !268, i64 0}
!268 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox11VectorSerde4KindEELb1EEEEEE", !12, i64 0}
!269 = distinct !{!269, !86}
!270 = !{!77, !43, i64 24}
!271 = distinct !{!271, !86}
!272 = !{!81, !81, i64 0}
!273 = !{!274, !43, i64 0}
!274 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !43, i64 0}
!275 = distinct !{!275, !86}
!276 = !{!277, !268, i64 0}
!277 = !{!"_ZTSNSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox11VectorSerde4KindEELb1EEEEEE", !268, i64 0}
!278 = !{}
!279 = !{!280, !268, i64 0}
!280 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox11VectorSerde4KindEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !268, i64 0, !281, i64 8}
!281 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox11VectorSerde4KindEELb1EEE", !12, i64 0}
!282 = !{!280, !281, i64 8}
!283 = !{!82, !43, i64 8}
!284 = distinct !{!284, !86}
!285 = distinct !{!285, !86}
!286 = distinct !{!286, !86}
!287 = !{!94, !43, i64 24}
!288 = distinct !{!288, !86}
!289 = distinct !{!289, !86}
!290 = !{!291, !291, i64 0}
!291 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!292 = !{!293, !294, i64 0}
!293 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISB_EEESaISF_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSH_18_Mod_range_hashingENSH_20_Default_ranged_hashENSH_20_Prime_rehash_policyENSH_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !294, i64 0, !295, i64 8}
!294 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISD_EEELb1EEEEEE", !12, i64 0}
!295 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteISC_EEELb1EEE", !12, i64 0}
!296 = !{!293, !295, i64 8}
!297 = distinct !{null, null, null, ptr @_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev, null}
!298 = !{!299, !50, i64 0}
!299 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox11VectorSerdeELb0EE", !50, i64 0}
!300 = !{!94, !81, i64 48}
!301 = distinct !{!301, !86}
!302 = distinct !{!302, !86}
!303 = distinct !{null, null, null, null, ptr @_ZNSt10unique_ptrIN8facebook5velox11VectorSerdeESt14default_deleteIS2_EED2Ev, null}
!304 = !{!127, !128, i64 0}
!305 = distinct !{ptr @_ZN8facebook5velox17VectorStreamGroupD2Ev, null, null}
!306 = !{ptr @_ZN8facebook5velox17VectorStreamGroupD2Ev}
!307 = !{!105, !43, i64 112}
end_hunk_1
