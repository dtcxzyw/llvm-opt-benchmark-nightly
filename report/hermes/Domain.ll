inline.NumInlined: 605
inline.NumDeleted: 359
begin_hunk_0_@_ZN6hermes2vm6GCBase5makeAINS0_6DomainELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJEEEPT_jDpOT3_:bb.a
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !161
  br label %_ZN6hermes2vm7HadesGC5makeAINS0_6DomainELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJEEEPT_jDpOT3_.exit

_ZN6hermes2vm7HadesGC5makeAINS0_6DomainELb1ELNS0_12HasFinalizerE1ELNS0_9LongLivedE0EJEEEPT_jDpOT3_.exit: ; preds = %bb.e, %_ZNSt6vectorIPN6hermes2vm6GCCellESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  %i.ae = and i32 %1, 16777215
  %i.af = or disjoint i32 %i.ae, 201326592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, i8 0, i64 96, i1 false)
  store i32 %i.af, ptr %i.h, align 4, !tbaa !69
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #7

declare noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE4growERNS0_7HadesGCE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8112) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 4 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = sub i64 %i.b, %i.c
  %i.e = add i64 %i.d, %i.b                       ; 3 uses
  %i.f = icmp ult i64 %i.e, %i.b
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %_ZN6hermes14checkedMalloc2Emm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef 5) #11 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0
  %i.j = extractvalue { i32, ptr } %i.h, 1
  tail call void @_ZN6hermes2vm6GCBase3oomESt10error_code(ptr noundef nonnull align 8 dereferenceable(717) %1, i32 %i.i, ptr %i.j) #12
  unreachable

_ZN6hermes14checkedMalloc2Emm.exit.i:             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1) ; 2 uses
  %mul.val.i.i = shl nuw i64 %.sroa.speculated, 3
  %i.k = tail call noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef %mul.val.i.i) #11 ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !7      ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.idx.i = shl i64 %i.n, 3                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN6hermes14checkedMalloc2Emm.exit.i
  %i.p = ptrtoaddr ptr %i.l to i64
  %i.q = ptrtoaddr ptr %i.k to i64
  %i.r = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.s = add i64 %.idx.i, %i.r
  %i.t = add i64 %i.r, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.t)
  %i.u = xor i64 %i.r, -1
  %i.v = add i64 %umax, %i.u                      ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 56
  %i.y = sub i64 %i.q, %i.p
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond9 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond9, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ac ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.l, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep6, align 8, !tbaa !17
  %wide.load7 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !17
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !17
  store <2 x ptr> %wide.load7, ptr %i.ae, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ]
  %.01011.i.ph = phi ptr [ %i.l, %.lr.ph.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %.012.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.012.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %.01011.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.01011.i.ph, %.lr.ph.i.preheader10 ] ; 2 uses
  %i.ag = load ptr, ptr %.01011.i, align 8, !tbaa !17
  store ptr %i.ag, ptr %.012.i, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %.01011.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.aj = icmp ult ptr %i.ah, %i.o
  br i1 %i.aj, label %.lr.ph.i, label %_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit, !llvm.loop !166

_ZN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEE11setCapacityEm.exit: ; preds = %.lr.ph.i, %middle.block, %_ZN6hermes14checkedMalloc2Emm.exit.i
  tail call void @free(ptr noundef %i.l) #11
  store ptr %i.k, ptr %0, align 8, !tbaa !7
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: noreturn
declare void @_ZN6hermes2vm6GCBase3oomESt10error_code(ptr noundef nonnull align 8 dereferenceable(717), i32, ptr) local_unnamed_addr #7

declare { i32, ptr } @_ZN6hermes15make_error_codeENS_8OOMErrorE(i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !3 ; 3 uses
  %i.e = mul i32 %.sroa.0.0.copyload.i.i, 37
  %i.f = add i32 %i.c, -1                         ; 2 uses
  %.03649.i = and i32 %i.e, %i.f                  ; 2 uses
  %i.g = zext i32 %.03649.i to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g ; 3 uses
  %.sroa.05.0.copyload50.i = load i32, ptr %i.h, align 4, !tbaa !3 ; 2 uses
  %i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.05.0.copyload50.i
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !138

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.sroa.05.0.copyload54.i = phi i32 [ %.sroa.05.0.copyload.i, %bb.d ], [ %.sroa.05.0.copyload50.i, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.r, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %.03653.i = phi i32 [ %.036.i, %bb.d ], [ %.03649.i, %bb.b ]
  %.03352.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %.03851.i = phi i32 [ %i.o, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %i.k = icmp eq i32 %.sroa.05.0.copyload54.i, 536870911
  br i1 %i.k, label %bb.c, label %bb.d, !prof !59

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.03352.i, null
  %i.l = select i1 %.not.i, ptr %i.j, ptr %.03352.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.m = icmp eq i32 %.sroa.05.0.copyload54.i, 536870910
  %i.n = icmp eq ptr %.03352.i, null
  %or.cond.not.i = select i1 %i.m, i1 %i.n, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.j, ptr %.03352.i
  %i.o = add i32 %.03851.i, 1
  %i.p = add i32 %.03851.i, %.03653.i
  %.036.i = and i32 %i.p, %i.f                    ; 2 uses
  %i.q = zext i32 %.036.i to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.q ; 3 uses
  %.sroa.05.0.copyload.i = load i32, ptr %i.r, align 4, !tbaa !3 ; 2 uses
  %i.s = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.05.0.copyload.i
  br i1 %i.s, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit, label %.lr.ph.i, !prof !139, !llvm.loop !140

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPKS9_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.a ], [ %i.h, %bb.b ], [ %i.r, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !156
  ret i1 %.2.i
}

declare noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE5shiftERNS0_13MutableHandleIS3_EERNS0_7RuntimeEjjj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !20
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #15 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !14
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !149
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !157
  %i.w = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 3               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.aa = lshr exact i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter27 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i32 536870911, ptr %.06.i.prol, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 8 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !167

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 56
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store i32 536870911, ptr %.06.i, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store i32 536870911, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store i32 536870911, ptr %i.af, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  store i32 536870911, ptr %i.ag, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store i32 536870911, ptr %i.ah, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  store i32 536870911, ptr %i.ai, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store i32 536870911, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 56
  store i32 536870911, ptr %i.ak, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !168

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !149
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !157
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 3            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store i32 536870911, ptr %.06.i.i.prol, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !169

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 56
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store i32 536870911, ptr %.06.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  store i32 536870911, ptr %i.ay, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store i32 536870911, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store i32 536870911, ptr %i.ba, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store i32 536870911, ptr %i.bb, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  store i32 536870911, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store i32 536870911, ptr %i.bd, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  store i32 536870911, ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !168

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not22.i = icmp eq i32 %i.b, 0
  br i1 %.not22.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i, %bb.f
  %i.bg = phi i32 [ %i.ca, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i ] ; 2 uses
  %.023.i = phi ptr [ %i.cb, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i ] ; 3 uses
  %.sroa.03.0.copyload.i = load i32, ptr %.023.i, align 4, !tbaa !3 ; 5 uses
  %i.bh = and i32 %.sroa.03.0.copyload.i, -2
  %switch.i = icmp eq i32 %i.bh, 536870910
  br i1 %switch.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i6
  %2 = load i32, ptr %i.a, align 8, !tbaa !20     ; 2 uses
  %3 = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %3)
  %i.bi = mul i32 %.sroa.03.0.copyload.i, 37
  %4 = add i32 %2, -1                             ; 2 uses
  %.03649.i.i.i = and i32 %4, %i.bi               ; 2 uses
  %i.bj = zext i32 %.03649.i.i.i to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bj ; 3 uses
  %.sroa.05.0.copyload50.i.i.i = load i32, ptr %i.bk, align 4, !tbaa !3 ; 2 uses
  %i.bl = icmp eq i32 %.sroa.03.0.copyload.i, %.sroa.05.0.copyload50.i.i.i
  br i1 %i.bl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !138

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.sroa.05.0.copyload54.i.i.i = phi i32 [ %.sroa.05.0.copyload.i.i.i, %bb.e ], [ %.sroa.05.0.copyload50.i.i.i, %bb.c ] ; 2 uses
  %i.bm = phi ptr [ %i.bu, %bb.e ], [ %i.bk, %bb.c ] ; 2 uses
  %.03653.i.i.i = phi i32 [ %.036.i.i.i, %bb.e ], [ %.03649.i.i.i, %bb.c ]
  %.03352.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %.03851.i.i.i = phi i32 [ %i.br, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %i.bn = icmp eq i32 %.sroa.05.0.copyload54.i.i.i, 536870911
  br i1 %i.bn, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.03352.i.i.i, null
  %i.bo = select i1 %.not.i.i.i, ptr %i.bm, ptr %.03352.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bp = icmp eq i32 %.sroa.05.0.copyload54.i.i.i, 536870910
  %i.bq = icmp eq ptr %.03352.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bp, i1 %i.bq, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bm, ptr %.03352.i.i.i
  %i.br = add i32 %.03851.i.i.i, 1
  %i.bs = add i32 %.03851.i.i.i, %.03653.i.i.i
  %.036.i.i.i = and i32 %i.bs, %4                 ; 2 uses
  %i.bt = zext i32 %.036.i.i.i to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bt ; 3 uses
  %.sroa.05.0.copyload.i.i.i = load i32, ptr %i.bu, align 4, !tbaa !3 ; 2 uses
  %i.bv = icmp eq i32 %.sroa.03.0.copyload.i, %.sroa.05.0.copyload.i.i.i
  br i1 %i.bv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, label %.lr.ph.i.i.i, !prof !139, !llvm.loop !140

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bo, %bb.d ], [ %i.bk, %bb.c ], [ %i.bu, %bb.e ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i, ptr %.sink.i.i.i, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !3
  %i.bz = add i32 %i.bg, 1                        ; 2 uses
  store i32 %i.bz, ptr %i.ao, align 8, !tbaa !149
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i, %.lr.ph.i6
  %i.ca = phi i32 [ %i.bz, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i ], [ %i.bg, %.lr.ph.i6 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.023.i, i64 8 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cb, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit, label %.lr.ph.i6, !llvm.loop !170

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #11
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E18moveFromOldBucketsEPS9_SC_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6hermes2vm14CopyableVectorIPNS0_13RuntimeModuleEEE", !9, i64 0, !12, i64 8, !12, i64 16}
!9 = !{!"p2 _ZTSN6hermes2vm13RuntimeModuleE", !10, i64 0}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!8, !12, i64 8}
!14 = !{!15, !16, i64 0}
!15 = !{!"_ZTSN4llvh8DenseMapIN6hermes2vm8SymbolIDEjNS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_jEEEE", !16, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!16 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN6hermes2vm8SymbolIDEjEE", !11, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !11, i64 0}
!19 = !{!8, !12, i64 16}
!20 = !{!15, !4, i64 16}
!21 = !{!22, !38, i64 216}
!22 = !{!"_ZTSN6hermes2vm8Metadata7BuilderE", !23, i64 0, !24, i64 8, !24, i64 56, !24, i64 104, !24, i64 152, !33, i64 200, !37, i64 208, !38, i64 216}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!"_ZTSSt3mapIhPKcSt4lessIhESaISt4pairIKhS1_EEE", !25, i64 0}
!25 = !{!"_ZTSSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE", !26, i64 0}
!26 = !{!"_ZTSNSt8_Rb_treeIhSt4pairIKhPKcESt10_Select1stIS4_ESt4lessIhESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !27, i64 0, !29, i64 8}
!27 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIhEE", !28, i64 0}
!28 = !{!"_ZTSSt4lessIhE"}
!29 = !{!"_ZTSSt15_Rb_tree_header", !30, i64 0, !12, i64 32}
!30 = !{!"_ZTSSt18_Rb_tree_node_base", !31, i64 0, !32, i64 8, !32, i64 16, !32, i64 24}
!31 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!32 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!33 = !{!"_ZTSN6hermes8OptValueINS_2vm8Metadata9ArrayDataEEE", !34, i64 0, !36, i64 4}
!34 = !{!"_ZTSN6hermes2vm8Metadata9ArrayDataE", !35, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!35 = !{!"_ZTSN6hermes2vm8Metadata9ArrayData9ArrayTypeE", !5, i64 0}
!36 = !{!"bool", !5, i64 0}
!37 = !{!"_ZTSN6hermes8OptValueIjEE", !4, i64 0, !36, i64 4}
!38 = !{!"p1 _ZTSN6hermes2vm6VTableE", !11, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"_ZTSSt12__shared_ptrIN6hermes3hbc20BCProviderFromBufferELN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0, !42, i64 8}
!41 = !{!"p1 _ZTSN6hermes3hbc20BCProviderFromBufferE", !11, i64 0}
!42 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !43, i64 0}
!43 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!44 = !{!12, !12, i64 0}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !47, i64 8}
!47 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !11, i64 0}
!48 = !{!49, !57, i64 192}
!49 = !{!"_ZTSN6hermes2vm7GCScopeE", !50, i64 0, !47, i64 8, !5, i64 16, !51, i64 144, !57, i64 192, !57, i64 200, !4, i64 208}
!50 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !11, i64 0}
!51 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !52, i64 0, !56, i64 16}
!52 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !53, i64 0}
!53 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !54, i64 0}
!54 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !55, i64 0}
!55 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !4, i64 8, !4, i64 12}
!56 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!57 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !11, i64 0}
!58 = !{!49, !57, i64 200}
!59 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!60 = !{!61, !57, i64 0}
!61 = !{!"_ZTSN6hermes2vm10HandleBaseE", !57, i64 0}
!62 = !{!63, !4, i64 0}
!63 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!64 = !{!65, !66, i64 24}
!65 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !66, i64 8, !5, i64 16, !66, i64 24, !12, i64 32, !12, i64 40}
!66 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!67 = !{!65, !12, i64 32}
!68 = !{!65, !12, i64 40}
!69 = !{!5, !5, i64 0}
!70 = !{!65, !66, i64 8}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!73, !23, i64 16}
!73 = !{!"_ZTSN6hermes2vm18AlignedHeapSegmentE", !74, i64 0, !23, i64 16, !23, i64 24}
!74 = !{!"_ZTSN6hermes2vm14AlignedStorageE", !23, i64 0, !75, i64 8}
!75 = !{!"p1 _ZTSN6hermes2vm15StorageProviderE", !11, i64 0}
!76 = !{!73, !23, i64 24}
!77 = !{!57, !57, i64 0}
!78 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!79 = !{!80, !12, i64 0}
!80 = !{!"_ZTSN6hermes2vm11HermesValueE", !12, i64 0}
!81 = distinct !{!81, !82, !83, !84}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.isvectorized", i32 1}
!84 = !{!"llvm.loop.unroll.runtime.disable"}
!85 = distinct !{!85, !82, !83}
!86 = distinct !{!86, !82}
!87 = !{!74, !23, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"p1 _ZTSSt4pairIjjE", !11, i64 0}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!93, !4, i64 0}
!93 = !{!"_ZTSSt4pairIjjE", !4, i64 0, !4, i64 4}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN6hermes2vm12RootSymbolIDESaIS2_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 _ZTSN6hermes2vm12RootSymbolIDE", !11, i64 0}
!97 = !{!98, !121, i64 304}
!98 = !{!"_ZTSN6hermes3hbc20BCProviderFromBufferE", !99, i64 0, !113, i64 280, !23, i64 288, !120, i64 296, !121, i64 304, !122, i64 312, !4, i64 328, !124, i64 336, !128, i64 352, !130, i64 360, !23, i64 368}
!99 = !{!"_ZTSN6hermes3hbc14BCProviderBaseE", !5, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !100, i64 24, !102, i64 40, !104, i64 56, !104, i64 72, !104, i64 88, !104, i64 104, !105, i64 120, !104, i64 136, !107, i64 152, !104, i64 168, !4, i64 184, !109, i64 192, !109, i64 208, !109, i64 224, !110, i64 240, !111, i64 248}
!100 = !{!"_ZTSN4llvh8ArrayRefIN6hermes10StringKind5EntryEEE", !101, i64 0, !12, i64 8}
!101 = !{!"p1 _ZTSN6hermes10StringKind5EntryE", !11, i64 0}
!102 = !{!"_ZTSN4llvh8ArrayRefIjEE", !103, i64 0, !12, i64 8}
!103 = !{!"p1 int", !11, i64 0}
!104 = !{!"_ZTSN4llvh8ArrayRefIhEE", !23, i64 0, !12, i64 8}
!105 = !{!"_ZTSN4llvh8ArrayRefIN6hermes6bigint16BigIntTableEntryEEE", !106, i64 0, !12, i64 8}
!106 = !{!"p1 _ZTSN6hermes6bigint16BigIntTableEntryE", !11, i64 0}
!107 = !{!"_ZTSN4llvh8ArrayRefIN6hermes16RegExpTableEntryEEE", !108, i64 0, !12, i64 8}
!108 = !{!"p1 _ZTSN6hermes16RegExpTableEntryE", !11, i64 0}
!109 = !{!"_ZTSN4llvh8ArrayRefISt4pairIjjEEE", !89, i64 0, !12, i64 8}
!110 = !{!"p1 _ZTSN6hermes3hbc9DebugInfoE", !11, i64 0}
!111 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !112, i64 0, !12, i64 8, !5, i64 16}
!112 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!113 = !{!"_ZTSSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EE", !114, i64 0}
!114 = !{!"_ZTSSt15__uniq_ptr_dataIKN6hermes6BufferESt14default_deleteIS2_ELb1ELb1EE", !115, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implIKN6hermes6BufferESt14default_deleteIS2_EE", !116, i64 0}
!116 = !{!"_ZTSSt5tupleIJPKN6hermes6BufferESt14default_deleteIS2_EEE", !117, i64 0}
!117 = !{!"_ZTSSt11_Tuple_implILm0EJPKN6hermes6BufferESt14default_deleteIS2_EEE", !118, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm0EPKN6hermes6BufferELb0EE", !119, i64 0}
!119 = !{!"p1 _ZTSN6hermes6BufferE", !11, i64 0}
!120 = !{!"p1 _ZTSN6hermes3hbc15SmallFuncHeaderE", !11, i64 0}
!121 = !{!"p1 _ZTSN6hermes3hbc21SmallStringTableEntryE", !11, i64 0}
!122 = !{!"_ZTSN4llvh8ArrayRefIN6hermes3hbc24OverflowStringTableEntryEEE", !123, i64 0, !12, i64 8}
!123 = !{!"p1 _ZTSN6hermes3hbc24OverflowStringTableEntryE", !11, i64 0}
!124 = !{!"_ZTSN4llvh8OptionalISt6threadEE", !125, i64 0}
!125 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageISt6threadLb0EEE", !126, i64 0, !36, i64 8}
!126 = !{!"_ZTSN4llvh21AlignedCharArrayUnionISt6threadcccccccccEE", !127, i64 0}
!127 = !{!"_ZTSN4llvh16AlignedCharArrayILm8ELm8EEE", !5, i64 0}
!128 = !{!"_ZTSSt6atomicIbE", !129, i64 0}
!129 = !{!"_ZTSSt13__atomic_baseIbE", !36, i64 0}
!130 = !{!"_ZTSSt10unique_ptrIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !131, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_dataIVN6hermes17PageAccessTrackerESt14default_deleteIS2_ELb1ELb1EE", !132, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implIVN6hermes17PageAccessTrackerESt14default_deleteIS2_EE", !133, i64 0}
!133 = !{!"_ZTSSt5tupleIJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !134, i64 0}
!134 = !{!"_ZTSSt11_Tuple_implILm0EJPVN6hermes17PageAccessTrackerESt14default_deleteIS2_EEE", !135, i64 0}
!135 = !{!"_ZTSSt10_Head_baseILm0EPVN6hermes17PageAccessTrackerELb0EE", !136, i64 0}
end_hunk_0
