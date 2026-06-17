inline.NumInlined: 32460
inline.NumDeleted: 3454
begin_hunk_0_@_ZN2v88internal6maglev19MaglevCodeGenerator15BuildCodeObjectEPNS0_12LocalIsolateE:bb.a
  store ptr null, ptr %i.o, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 76, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.s = load i32, ptr %i.r, align 4
  call void @_ZN2v88internal9Assembler7GetCodeEPNS0_12LocalIsolateEPNS0_8CodeDescEPNS0_25SafepointTableBuilderBaseEi(ptr noundef nonnull align 8 dereferenceable(408) %i.p, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %i.q, i32 noundef %i.s) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2v88internal7Factory11CodeBuilderC1EPNS0_12LocalIsolateERKNS0_8CodeDescENS0_8CodeKindE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2, i8 noundef zeroext 11) #20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add i32 %i.u, 5
  %i.y = add i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 100
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i16 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %storemerge, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.aj = ptrtoint ptr %i.e to i64
  store i64 %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 876
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 880
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = add nsw i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %.sroa.0.0.copyload.i = load i32, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %.sroa.0.0.copyload.i, ptr %i.at, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(112) %4, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.av = load i8, ptr %i.au, align 8, !range !6, !noundef !7
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 1, ptr %i.ax, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = call ptr @_ZN2v88internal7Factory11CodeBuilder8TryBuildEv(ptr noundef nonnull align 8 dereferenceable(112) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %.sroa.08.0 = phi ptr [ %i.ay, %bb.i ], [ null, %bb.a ]
  ret ptr %.sroa.08.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev19MaglevCodeGenerator19CollectRetainedMapsENS0_12DirectHandleINS0_4CodeEEE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::GlobalHandleVector") align 8 initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1104) %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::RelocIterator", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.f = load i64, ptr %2, align 8
  call void @_ZN2v88internal13RelocIteratorC1ENS0_6TaggedINS0_4CodeEEEi(ptr noundef nonnull align 8 dereferenceable(56) %3, i64 %i.f, i32 noundef 24) #20
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !6, !noundef !7
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._crit_edge, label %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit.lr.ph

_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit.lr.ph: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit

._crit_edge:                                      ; preds = %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit: ; preds = %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit.lr.ph, %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit
  %i.m = load i64, ptr %i.j, align 8
  %i.n = inttoptr i64 %i.m to ptr
  %.0.copyload.i10 = load i64, ptr %i.n, align 1  ; 4 uses
  %i.o = add i64 %.0.copyload.i10, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = load atomic volatile i64, ptr %i.p acquire, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr                 ; 4 uses
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 276
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit
  %i.v = add i64 %.0.copyload.i10, 11
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = load atomic volatile i16, ptr %i.w monotonic, align 2
  %.fr.i.i = freeze i16 %i.x                      ; 3 uses
  %i.y = icmp ult i16 %.fr.i.i, 303
  br i1 %i.y, label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.b
  switch i16 %.fr.i.i, label %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit [
    i16 2133, label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit
    i16 2129, label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit
  ]

bb.c:                                             ; preds = %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit
  %i.z = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.aa = icmp eq i16 %i.z, 282
  br i1 %i.aa, label %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.ac = icmp ugt i16 %i.ab, 299
  br i1 %i.ac, label %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.ae = add i16 %i.ad, -221
  %i.af = icmp ult i16 %i.ae, 10
  br i1 %i.af, label %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit

_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %switch.early.test.i.i
  %i.ag = add i16 %.fr.i.i, -2106
  %i.ah = icmp ult i16 %i.ag, -4
  br i1 %i.ah, label %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit

_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.ai = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = icmp eq i16 %i.al, 276
  br i1 %i.am, label %bb.f, label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit

bb.f:                                             ; preds = %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread
  %i.an = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.ao = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %.0.copyload.i10, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.k, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.k, align 8
  br label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.e, align 8             ; 7 uses
  %i.as = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 4 uses
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.i, label %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
  unreachable

_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ba, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bb = call noundef ptr @_ZN2v88internal23StrongRootAllocatorBase13allocate_implEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ba) #20 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.au
  store i64 %.0.copyload.i10, ptr %i.bc, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.an
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bd = ptrtoaddr ptr %i.bb to i64
  %4 = add i64 %i.as, -8
  %5 = sub i64 %4, %i.at                          ; 2 uses
  %i.be = lshr i64 %5, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  %i.bg = sub i64 %i.bd, %i.at
  %diff.check = icmp ult i64 %i.bg, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bb, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ar, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bk ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.ar, i64 %i.bk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.bl = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !88, !noalias !85
  %wide.load37 = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !88, !noalias !85
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !85, !noalias !88
  store <2 x i64> %wide.load37, ptr %i.bm, align 8, !alias.scope !85, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader39

.lr.ph.i.i.i.i.i.i.preheader39:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader39, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader39 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !88, !noalias !85
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !85, !noalias !88
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.an
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !93

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bi, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i
  %i.bs = load ptr, ptr %i.l, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.at
  %i.bv = ashr exact i64 %i.bu, 3
  call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ar, i64 noundef %i.bv) #20
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i
  store ptr %i.bb, ptr %i.e, align 8
  store ptr %i.br, ptr %i.k, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  store ptr %i.bw, ptr %i.l, align 8
  br label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit

_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit: ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %bb.b, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i, %bb.g, %bb.e, %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit.thread, %_ZN2v88internal4Code27IsWeakObjectInOptimizedCodeENS0_6TaggedINS0_10HeapObjectEEE.exit
  call void @_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  %i.bx = load i8, ptr %i.g, align 8, !range !6, !noundef !7
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %._crit_edge, label %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit, !llvm.loop !94
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal6maglev19MaglevCodeGenerator26GenerateDeoptimizationDataEPNS0_12LocalIsolateE(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::SharedFunctionInfoRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = lshr exact i64 %i.q, 3
  %i.s = trunc i64 %i.r to i32
  %i.t = add nsw i32 %i.s, %i.j                   ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 @_ZNK2v88internal6maglev21MaglevCompilationUnit6is_osrEv(ptr noundef nonnull align 8 dereferenceable(52) %i.z) #20
  br i1 %i.aa, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call ptr @_ZN2v88internal18DeoptimizationData5EmptyEPNS0_12LocalIsolateE(ptr noundef %1) #20
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ac = tail call ptr @_ZN2v88internal18DeoptimizationData3NewEPNS0_12LocalIsolateEi(ptr noundef %1, i32 noundef %i.t) #20 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = tail call ptr @_ZN2v88internal23FrameTranslationBuilder18ToFrameTranslationEPNS0_12LocalFactoryE(ptr noundef nonnull align 8 dereferenceable(133) %i.ad, ptr noundef %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.af = load ptr, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.29) #22
  unreachable

_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit: ; preds = %bb.d
  store ptr %i.aj, ptr %2, align 8
  %i.ak = call ptr @_ZNK2v88internal8compiler21SharedFunctionInfoRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %i.al = call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE28NewSharedFunctionInfoWrapperENS0_12DirectHandleINS0_18SharedFunctionInfoEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.ak) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.am = load i64, ptr %i.ac, align 8
  %i.an = add i64 %i.am, -1                       ; 5 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 7 uses
  %i.ap = load i64, ptr %i.ae, align 8            ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store atomic volatile i64 %i.ap, ptr %i.aq monotonic, align 8
  %i.ar = trunc i64 %i.ap to i1
  br i1 %i.ar, label %bb.f, label %_ZN2v88internal18DeoptimizationData19SetFrameTranslationENS0_6TaggedINS0_30DeoptimizationFrameTranslationEEE.exit

bb.f:                                             ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit
  %i.as = or disjoint i64 %i.an, 1                ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.au = and i64 %i.an, -262144
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.av, align 262144       ; 2 uses
  %i.ax = and i64 %i.aw, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = and i64 %i.aw, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.az = and i64 %i.ap, -262144
  %i.ba = inttoptr i64 %i.az to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.ba, align 262144
  %i.bb = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.as, i64 noundef %i.at, i64 %i.ap) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal18DeoptimizationData19SetFrameTranslationENS0_6TaggedINS0_30DeoptimizationFrameTranslationEEE.exit, label %bb.j, !prof !16

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.as, i64 %i.at, i64 %i.ap) #20
  br label %_ZN2v88internal18DeoptimizationData19SetFrameTranslationENS0_6TaggedINS0_30DeoptimizationFrameTranslationEEE.exit

_ZN2v88internal18DeoptimizationData19SetFrameTranslationENS0_6TaggedINS0_30DeoptimizationFrameTranslationEEE.exit: ; preds = %_ZNK2v88internal6maglev21MaglevCompilationUnit20shared_function_infoEv.exit, %bb.i, %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store atomic volatile i64 %i.bf, ptr %i.bg monotonic, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 63500 ; 3 uses
  %i.bk = load atomic i32, ptr %i.bj seq_cst, align 4 ; 3 uses
  %i.bl = add nsw i32 %i.bk, 1
  %i.bm = cmpxchg ptr %i.bj, i32 %i.bk, i32 %i.bl seq_cst seq_cst, align 4 ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 1
  br i1 %i.bn, label %_ZN2v88internal12LocalIsolate18NextOptimizationIdEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal18DeoptimizationData19SetFrameTranslationENS0_6TaggedINS0_30DeoptimizationFrameTranslationEEE.exit, %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev19MaglevCodeGenerator8GenerateEPNS0_7IsolateE:bb.a
  %.0.i4 = phi ptr [ %i.l, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %i.m = ptrtoint ptr %.0.i4 to i64
  %i.n = add i64 %i.m, 8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %i.g, align 8
  store i64 %i.f, ptr %.0.i4, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 63936
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @_ZN2v88internal6maglev19MaglevCodeGenerator15BuildCodeObjectEPNS0_12LocalIsolateE(ptr noundef nonnull align 8 dereferenceable(1104) %0, ptr noundef %i.q)
  br label %_ZNK2v88internal11MaybeHandleINS0_4CodeEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_4CodeEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.b, %bb.e
  %.sroa.05.1 = phi ptr [ %i.r, %bb.e ], [ %.0.i4, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ null, %bb.b ]
  ret ptr %.sroa.05.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev19MaglevCodeGenerator12RetainedMapsEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::GlobalHandleVector") align 8 initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1104) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.b = ptrtoint ptr %i.a to i64
  store i64 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1064 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1152921504606846975
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.not26 = icmp eq ptr %i.f, %i.g
  br i1 %.not26, label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE7ReserveEm.exit, label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = tail call noundef ptr @_ZN2v88internal23StrongRootAllocatorBase13allocate_implEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k) #20 ; 8 uses
  %i.p = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.q = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i.i
  %i.r = ptrtoaddr ptr %i.p to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = add i64 %i.t, -8
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 56
  %i.z = sub i64 %i.s, %i.r
  %diff.check = icmp ult i64 %i.z, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.o, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.ad ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ae = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !alias.scope !103, !noalias !100
  %wide.load28 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !103, !noalias !100
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !100, !noalias !103
  store <2 x i64> %wide.load28, ptr %i.af, align 8, !alias.scope !100, !noalias !103
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.preheader50:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !103, !noalias !100
  store i64 %i.ah, ptr %.012.i.i.i.i.i, align 8, !alias.scope !100, !noalias !103
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !106

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.pr.i.i = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit.i.i

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit.i.i: ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exitthread-pre-split.i.i, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i.i
  %i.ak = phi ptr [ %.pr.i.i, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exitthread-pre-split.i.i ], [ %i.p, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.not.i8.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit.i.i
  %i.al = load ptr, ptr %i.m, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ak, i64 noundef %i.ap) #20
  br label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit.i.i

_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit.i.i
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.o, ptr %i.n, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  store ptr %i.aq, ptr %i.m, align 8
  %.pre = load ptr, ptr %i.d, align 8
  %.pre14 = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE7ReserveEm.exit

_ZN2v88internal18GlobalHandleVectorINS0_3MapEE7ReserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit.i.i
  %i.ar = phi ptr [ null, %bb.c ], [ %i.o, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit.i.i ]
  %i.as = phi ptr [ %i.f, %bb.c ], [ %.pre14, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit.i.i ] ; 2 uses
  %i.at = phi ptr [ %i.g, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit.i.i ] ; 2 uses
  %.not12 = icmp eq ptr %i.at, %i.as
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE7ReserveEm.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit, %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE7ReserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit
  %i.av = phi ptr [ %i.ar, %.lr.ph ], [ %i.cg, %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit ] ; 5 uses
  %.sroa.07.013 = phi ptr [ %i.at, %.lr.ph ], [ %i.ch, %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit ] ; 2 uses
  %i.aw = load i64, ptr %.sroa.07.013, align 8    ; 2 uses
  %i.ax = load ptr, ptr %i.m, align 8
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.aw, ptr %i.av, align 8
  %i.ay = load ptr, ptr %i.au, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.au, align 8
  br label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr %i.c, align 8             ; 7 uses
  %i.bb = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 4 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #22
  unreachable

_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = tail call noundef ptr @_ZN2v88internal23StrongRootAllocatorBase13allocate_implEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj) #20 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bd
  store i64 %i.aw, ptr %i.bl, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = ptrtoaddr ptr %i.bk to i64
  %3 = add i64 %i.bb, -8
  %4 = sub i64 %3, %i.bc                          ; 2 uses
  %i.bn = lshr i64 %4, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check33 = icmp ult i64 %4, 24
  %i.bp = sub i64 %i.bm, %i.bc
  %diff.check31 = icmp ult i64 %i.bp, 32
  %or.cond48 = or i1 %min.iters.check33, %diff.check31
  br i1 %or.cond48, label %.lr.ph.i.i.i.i.i.i.preheader49, label %vector.ph34

vector.ph34:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec36 = and i64 %i.bo, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec36, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bk, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ba, i64 %i.bq
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph34
  %index38 = phi i64 [ 0, %vector.ph34 ], [ %index.next43, %vector.body37 ] ; 2 uses
  %i.bt = shl i64 %index38, 3                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.bk, i64 %i.bt ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ba, i64 %i.bt ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.bu = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load41 = load <2 x i64>, ptr %next.gep40, align 8, !alias.scope !110, !noalias !107
  %wide.load42 = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !110, !noalias !107
  %i.bv = getelementptr i8, ptr %next.gep39, i64 16
  store <2 x i64> %wide.load41, ptr %next.gep39, align 8, !alias.scope !107, !noalias !110
  store <2 x i64> %wide.load42, ptr %i.bv, align 8, !alias.scope !107, !noalias !110
  %index.next43 = add nuw i64 %index38, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next43, %n.vec36
  br i1 %i.bw, label %middle.block44, label %vector.body37, !llvm.loop !112

middle.block44:                                   ; preds = %vector.body37
  %cmp.n45 = icmp eq i64 %i.bo, %n.vec36
  br i1 %cmp.n45, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.i.preheader49:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block44
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block44 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block44 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader49 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !110, !noalias !107
  store i64 %i.bx, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !107, !noalias !110
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.by, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !113

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block44, %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.br, %middle.block44 ], [ %i.bz, %.lr.ph.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i
  %i.cb = load ptr, ptr %i.m, align 8
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bc
  %i.ce = ashr exact i64 %i.cd, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ba, i64 noundef %i.ce) #20
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i
  store ptr %i.bk, ptr %i.c, align 8
  store ptr %i.ca, ptr %i.au, align 8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  store ptr %i.cf, ptr %i.m, align 8
  br label %_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit

_ZN2v88internal18GlobalHandleVectorINS0_3MapEE4PushENS0_6TaggedIS2_EE.exit: ; preds = %bb.f, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i
  %i.cg = phi ptr [ %i.az, %bb.f ], [ %i.ca, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.as
  br i1 %.not, label %._crit_edge, label %bb.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev19MaglevCodeGenerator22RecordInlinedFunctionsEv(ptr noundef nonnull align 8 dereferenceable(1104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.d, %i.f
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 980
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 980
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store i32 %i.j, ptr %i.k, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.012 = phi ptr [ %i.d, %.lr.ph ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.012, align 8
  %i.l = load i64, ptr %.sroa.0.0.copyload, align 8
  %i.m = tail call { ptr, i8 } @_ZN2v88internal15IdentityMapBase17FindOrInsertEntryEm(ptr noundef nonnull align 8 dereferenceable(66) %i.g, i64 noundef %i.l) #20 ; 2 uses
  %i.n = extractvalue { ptr, i8 } %i.m, 1
  %i.o = extractvalue { ptr, i8 } %i.m, 0         ; 2 uses
  %i.p = trunc i8 %i.n to i1
  br i1 %i.p, label %._crit_edge13, label %bb.c

._crit_edge13:                                    ; preds = %bb.b
  %.pre = load i32, ptr %i.o, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.h, align 4
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge13, %bb.c
  %i.s = phi i32 [ %.pre, %._crit_edge13 ], [ %i.r, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012, i64 24
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.012, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare void @_ZN2v88internal14MacroAssembler5AbortENS0_11AbortReasonE(ptr noundef nonnull align 8 dereferenceable(436), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev19MaglevCodeGenerator16EmitDeferredCodeEv(ptr noundef nonnull align 8 dereferenceable(1104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %._crit_edge26, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EED2Ev.exit
  %i.h = phi ptr [ %i.d, %.lr.ph ], [ %i.p, %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EED2Ev.exit ] ; 2 uses
  %i.i = phi ptr [ %i.c, %.lr.ph ], [ %i.o, %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EED2Ev.exit ] ; 5 uses
  %i.j = load ptr, ptr %i.f, align 8, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false), !noalias !121
  %i.k = icmp eq ptr %i.i, %i.h
  br i1 %i.k, label %._crit_edge, label %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit

._crit_edge:                                      ; preds = %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit, %bb.b
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %._crit_edge26, label %bb.b, !llvm.loop !83

_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit: ; preds = %bb.b, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit
  %.sroa.017.024 = phi ptr [ %i.v, %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit ], [ %i.i, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.017.024, align 8    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  tail call void @_ZN2v88internal9Assembler4bindEPNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(408) %i.g, ptr noundef nonnull %i.s) #20
  %i.t = load ptr, ptr %i.r, align 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull %i.g) #20
  tail call void @_ZN2v88internal14MacroAssembler4TrapEv(ptr noundef nonnull align 8 dereferenceable(436) %i.g) #20
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.024, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %._crit_edge, label %_ZN2v88internal13AssemblerBase13RecordCommentESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE.exit

._crit_edge26:                                    ; preds = %_ZNSt6vectorIPN2v88internal6maglev16DeferredCodeInfoESaIS4_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal6maglev19MaglevCodeGenerator10EmitDeoptsEv(ptr noundef nonnull align 8 dereferenceable(1104) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %2 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %"class.v8::internal::maglev::VirtualObjectList", align 8 ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal26DeoptimizationLiteralArray3setEiNS0_6TaggedINS0_6ObjectEEE:bb.a
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %i.ba, align 262144       ; 2 uses
  %i.bc = and i64 %i.bb, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.bc, 0
  %i.bd = and i64 %i.bb, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not38.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = and i64 %.sroa.014.1, -262144
  %i.bf = inttoptr i64 %i.be to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.bf, align 262144
  %i.bg = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not39.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ax, i64 noundef %i.ay, i64 %i.av) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_21TrustedWeakFixedArrayENS0_26TrustedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ax, i64 %i.ay, i64 %i.av) #20
  br label %_ZN2v88internal15TaggedArrayBaseINS0_21TrustedWeakFixedArrayENS0_26TrustedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_21TrustedWeakFixedArrayENS0_26TrustedWeakFixedArrayShapeENS0_19TrustedObjectLayoutEE3setEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal4Code40IsWeakObjectInDeoptimizationLiteralArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread, %bb.j, %bb.k
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(408) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2v88internal9AssemblerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit

_ZN2v88internal19JumpTableInfoWriterD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt5dequeIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.06.i.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef 512) #24
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.u = icmp ult ptr %.06.i.i.i, %i.p
  br i1 %i.u, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, !llvm.loop !124

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i, %bb.c
  %i.v = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i.i ], [ %i.l, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt5dequeIiSaIiEED2Ev.exit

_ZNSt5dequeIiSaIiEED2Ev.exit:                     ; preds = %_ZN2v88internal19JumpTableInfoWriterD2Ev.exit, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i.i
  tail call void @_ZN2v88internal13AssemblerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev15MaglevAssemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(456) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal9AssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(456) %0) #20
  tail call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13AssemblerBase21AbortedCodeGenerationEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN2v88internal9Assembler24PatchInHeapNumberRequestEmNS0_6HandleINS0_10HeapNumberEEE(ptr noundef nonnull align 8 dereferenceable(408), i64 noundef, ptr) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler22LoadFromConstantsTableENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler22LoadRootRegisterOffsetENS0_8RegisterEl(ptr noundef nonnull align 8 dereferenceable(436), i8, i64 noundef) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler16LoadRootRelativeENS0_8RegisterEi(ptr noundef nonnull align 8 dereferenceable(436), i8, i32 noundef) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler17StoreRootRelativeEiNS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(436), i32 noundef, i8) unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler8LoadRootENS0_8RegisterENS0_9RootIndexE(ptr noundef nonnull align 8 dereferenceable(436), i8, i16 noundef zeroext) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN2v88internal16AssemblerOptions7DefaultEPNS0_7IsolateE(ptr dead_on_unwind writable sret(%"struct.v8::internal::AssemblerOptions") align 8, ptr noundef) local_unnamed_addr #1

declare void @_ZN2v88internal18MacroAssemblerBaseC2EPNS0_7IsolateESt7variantIJPNS0_4ZoneEPNS0_19AccountingAllocatorEEENS0_16AssemblerOptionsENS0_18CodeObjectRequiredESt10unique_ptrINS0_15AssemblerBufferESt14default_deleteISD_EE(ptr noundef nonnull align 8 dereferenceable(436), ptr noundef, ptr, i8, ptr noundef byval(%"struct.v8::internal::AssemblerOptions") align 8, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal13AssemblerBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmiESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal8MalloceddlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE13_M_assign_auxISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEEvT_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ugt i64 %i.c, %i.k
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.d, 1152921504606846975
  br i1 %i.m, label %bb.c, label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN2v88internal23StrongRootAllocatorBase13allocate_implEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d) #20 ; 6 uses
  %i.o = icmp eq ptr %1, %2
  br i1 %i.o, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i
  %i.p = ptrtoaddr ptr %i.n to i64
  %3 = add i64 %i.a, -8
  %4 = sub i64 %3, %i.b                           ; 2 uses
  %i.q = lshr i64 %4, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check37 = icmp ult i64 %4, 56
  %i.s = sub i64 %i.p, %i.b
  %diff.check35 = icmp ult i64 %i.s, 32
  %or.cond = or i1 %min.iters.check37, %diff.check35
  br i1 %or.cond, label %.lr.ph.i.i.preheader52, label %vector.ph38

vector.ph38:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec40 = and i64 %i.r, 4611686018427387900    ; 3 uses
  %i.t = shl i64 %n.vec40, 3                      ; 2 uses
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t
  %i.v = getelementptr i8, ptr %1, i64 %i.t
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph38
  %index42 = phi i64 [ 0, %vector.ph38 ], [ %index.next47, %vector.body41 ] ; 2 uses
  %i.w = shl i64 %index42, 3                      ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.n, i64 %i.w ; 2 uses
  %next.gep44 = getelementptr i8, ptr %1, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load45 = load <2 x i64>, ptr %next.gep44, align 8
  %wide.load46 = load <2 x i64>, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %next.gep43, i64 16
  store <2 x i64> %wide.load45, ptr %next.gep43, align 8
  store <2 x i64> %wide.load46, ptr %i.y, align 8
  %index.next47 = add nuw i64 %index42, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next47, %n.vec40
  br i1 %i.z, label %middle.block48, label %vector.body41, !llvm.loop !126

middle.block48:                                   ; preds = %vector.body41
  %cmp.n49 = icmp eq i64 %i.r, %n.vec40
  br i1 %cmp.n49, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit, label %.lr.ph.i.i.preheader52

.lr.ph.i.i.preheader52:                           ; preds = %.lr.ph.i.i.preheader, %middle.block48
  %.09.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block48 ]
  %.sroa.05.08.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block48 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader52, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader52 ] ; 2 uses
  %.sroa.05.08.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.05.08.i.i.ph, %.lr.ph.i.i.preheader52 ] ; 2 uses
  %i.aa = load i64, ptr %.sroa.05.08.i.i, align 8
  store i64 %i.aa, ptr %.09.i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ad = icmp eq ptr %i.ab, %2
  br i1 %i.ad, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit, label %.lr.ph.i.i, !llvm.loop !127

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit: ; preds = %.lr.ph.i.i, %middle.block48, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE11_M_allocateEm.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.af, i64 noundef %i.ak) #20
  br label %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE20_M_allocate_and_copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmS4_EEEEES9_mT_SC_.exit, %bb.d
  store ptr %i.n, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c ; 2 uses
  store ptr %i.al, ptr %i.ae, align 8
  store ptr %i.al, ptr %i.f, align 8
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit

bb.e:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.ap = sub i64 %i.ao, %i.j                     ; 5 uses
  %.not = icmp ult i64 %i.ap, %i.c
  br i1 %.not, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp sgt i64 %i.c, 8
  br i1 %i.aq, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = icmp eq i64 %i.c, 8
  br i1 %i.ar, label %bb.i, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.h
  %i.as = load i64, ptr %1, align 8
  store i64 %i.as, ptr %i.h, align 8
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.at = getelementptr inbounds i8, ptr %i.h, i64 %i.c ; 2 uses
  %i.au = load ptr, ptr %i.am, align 8
  %.not.i18 = icmp eq ptr %i.au, %i.at
  br i1 %.not.i18, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit
  store ptr %i.at, ptr %i.am, align 8
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.ap ; 5 uses
  %i.av = icmp sgt i64 %i.ap, 8
  br i1 %i.av, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %1, i64 %i.ap, i1 false)
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19

bb.l:                                             ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aw = icmp eq i64 %i.ap, 8
  br i1 %i.aw, label %bb.m, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %1, align 8
  store i64 %i.ax, ptr %i.h, align 8
  br label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19

_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19: ; preds = %bb.k, %bb.l, %bb.m
  %i.ay = load ptr, ptr %i.am, align 8            ; 6 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = icmp eq ptr %.sink.i, %2
  br i1 %i.ba, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19
  %i.bb = add i64 %i.j, %i.a
  %i.bc = add i64 %i.bb, -8
  %5 = add i64 %i.ao, %i.b
  %6 = sub i64 %i.bc, %5                          ; 2 uses
  %i.bd = lshr i64 %6, 3
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 104
  br i1 %min.iters.check, label %.lr.ph.i.preheader53, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.bf = add i64 %i.j, %i.az
  %i.bg = add i64 %i.ao, %i.b
  %i.bh = sub i64 %i.bf, %i.bg
  %diff.check = icmp ult i64 %i.bh, 32
  br i1 %diff.check, label %.lr.ph.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %.sink.i, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bl ; 2 uses
  %next.gep31 = getelementptr i8, ptr %.sink.i, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep31, align 8
  %wide.load32 = load <2 x i64>, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load32, ptr %i.bn, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit, label %.lr.ph.i.preheader53

.lr.ph.i.preheader53:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.preheader ], [ %i.bj, %middle.block ]
  %.sroa.05.08.i.ph = phi ptr [ %.sink.i, %vector.memcheck ], [ %.sink.i, %.lr.ph.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader53, %.lr.ph.i
  %.09.i = phi ptr [ %i.br, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader53 ] ; 2 uses
  %.sroa.05.08.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %.sroa.05.08.i.ph, %.lr.ph.i.preheader53 ] ; 2 uses
  %i.bp = load i64, ptr %.sroa.05.08.i, align 8
  store i64 %i.bp, ptr %.09.i, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %2
  br i1 %i.bs, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit, label %.lr.ph.i, !llvm.loop !129

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit: ; preds = %.lr.ph.i, %middle.block, %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19
  %.0.lcssa.i = phi ptr [ %i.ay, %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit19 ], [ %i.bj, %middle.block ], [ %i.br, %.lr.ph.i ]
  store ptr %.0.lcssa.i, ptr %i.am, align 8
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE15_M_erase_at_endEPm.exit: ; preds = %bb.j, %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_ET0_T_SD_SC_.exit, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImN2v88internal19StrongRootAllocatorImEEEEEES3_S8_ET0_T_SD_SC_RT1_.exit, %_ZNSt12_Vector_baseImN2v88internal19StrongRootAllocatorImEEE13_M_deallocateEPmm.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZN2v88internal23StrongRootAllocatorBase13allocate_implEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef zeroext i1 @_ZNK2v88internal6maglev21MaglevCompilationUnit6is_osrEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #1

declare void @_ZN2v88internal14MacroAssembler9CodeEntryEv(ptr noundef nonnull align 8 dereferenceable(436)) local_unnamed_addr #1

declare void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15BuildBeginDeoptEPNS1_9DeoptInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8
  br label %_ZNSt6vectorIlSaIlEE5clearEv.exit

_ZNSt6vectorIlSaIlEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i, %_ZNSt6vectorIlSaIlEE5clearEv.exit
  %.07.i = phi ptr [ %i.e, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %i.o, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i ] ; 3 uses
  %.06.i = phi i32 [ 0, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %i.m, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i ]
  %.0.i = phi i32 [ 0, %_ZNSt6vectorIlSaIlEE5clearEv.exit ], [ %i.l, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  %i.g = load i8, ptr %i.f, align 8
  switch i8 %i.g, label %bb.d [
    i8 0, label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread.i
    i8 3, label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.i
    i8 2, label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i
    i8 1, label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i
  ]

_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread.i: ; preds = %bb.c
  %i.h = add nsw i32 %.0.i, 1
  br label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i

bb.d:                                             ; preds = %bb.c
  unreachable

_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %.fr.i = freeze ptr %i.j
  %.not14.i = icmp ne ptr %.fr.i, null
  %i.k = zext i1 %.not14.i to i32
  %spec.select.i = add nsw i32 %.0.i, %i.k
  br label %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i

_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i: ; preds = %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.i, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread.i, %bb.c, %bb.c
  %i.l = phi i32 [ %.0.i, %bb.c ], [ %spec.select.i, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.i ], [ %i.h, %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread.i ], [ %.0.i, %bb.c ] ; 2 uses
  %i.m = add nuw nsw i32 %.06.i, 1                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN2v88internal6maglev12_GLOBAL__N_112_GLOBAL__N_113GetFrameCountEPKNS1_10DeoptFrameE.exit, label %bb.c, !llvm.loop !130

_ZN2v88internal6maglev12_GLOBAL__N_112_GLOBAL__N_113GetFrameCountEPKNS1_10DeoptFrameE.exit: ; preds = %_ZNK2v88internal6maglev10DeoptFrame9IsJsFrameEv.exit.thread11.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp ne ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = icmp ne i32 %i.v, -1
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  %i.y = tail call noundef i32 @_ZN2v88internal23FrameTranslationBuilder16BeginTranslationEiib(ptr noundef nonnull align 8 dereferenceable(133) %i.q, i32 noundef %i.m, i32 noundef %i.l, i1 noundef zeroext %i.x) #20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = load i32, ptr %i.u, align 8
  %i.ad = icmp ne i32 %i.ac, -1
  %i.ae = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_112_GLOBAL__N_113GetFrameCountEPKNS1_10DeoptFrameE.exit
  %i.af = load ptr, ptr %i.p, align 8
  %i.ag = load i64, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call { ptr, i8 } @_ZN2v88internal15IdentityMapBase17FindOrInsertEntryEm(ptr noundef nonnull align 8 dereferenceable(66) %i.ai, i64 noundef %i.ag) #20 ; 2 uses
  %i.ak = extractvalue { ptr, i8 } %i.aj, 1
  %i.al = extractvalue { ptr, i8 } %i.aj, 0       ; 2 uses
  %i.am = trunc i8 %i.ak to i1
  br i1 %i.am, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i32, ptr %i.al, align 4
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.al, align 4
  br label %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %._crit_edge.i, %bb.f
  %i.ar = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.aq, %bb.f ]
  %i.as = tail call noundef i32 @_ZNK2v88internal8compiler14FeedbackSource5indexEv(ptr noundef nonnull align 8 dereferenceable(12) %i.r) #20
  tail call void @_ZN2v88internal23FrameTranslationBuilder17AddUpdateFeedbackEii(ptr noundef nonnull align 8 dereferenceable(133) %i.af, i32 noundef %i.ar, i32 noundef %i.as) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder15GetDeoptLiteralENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal6maglev12_GLOBAL__N_112_GLOBAL__N_113GetFrameCountEPKNS1_10DeoptFrameE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder24RecursiveBuildDeoptFrameERKNS1_10DeoptFrameERPKNS1_13InputLocationERKNS1_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::HeapObjectRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::BytecodeArrayRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_129MaglevFrameTranslationBuilder24RecursiveBuildDeoptFrameERKNS1_10DeoptFrameERPKNS1_13InputLocationERKNS1_17VirtualObjectListE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.c

end_hunk_2
