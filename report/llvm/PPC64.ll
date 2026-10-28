Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPC64?download=true
inline.NumInlined: 2032
inline.NumDeleted: 911
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3lld3elf37getPPC64GlobalEntryToLocalEntryOffsetERNS0_3CtxEh:bb.a
  %i.c = icmp ult i8 %1, 64
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.a, 7
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i32 1, %i.b
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN3lld3elf9ErrAlwaysERNS0_3CtxE(ptr dead_on_unwind nonnull writable sret(%"struct.lld::elf::ELFSyncStream") align 8 %2, ptr noundef nonnull align 8 dereferenceable(3472) %0) #25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 62
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str, i64 noundef 62) #25 ; 0 uses
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %i.h, ptr noundef nonnull align 1 dereferenceable(62) @.str, i64 62, i1 false)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 62
  store ptr %i.p, ptr %i.g, align 8, !tbaa !28
  br label %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit

_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit:     ; preds = %bb.e, %bb.f
  call void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit, %bb.c
  %.0 = phi i32 [ 0, %_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc.exit ], [ %i.d, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(104) ptr @_ZN3lld3elflsERKNS0_13ELFSyncStreamEPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.a
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %1, i64 noundef %i.b) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i = icmp eq i64 %i.b, 0
  br i1 %.not.i2.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.b
  store ptr %i.m, ptr %i.e, align 8, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret ptr %0
}

declare void @_ZN3lld3elf9ErrAlwaysERNS0_3CtxE(ptr dead_on_unwind writable sret(%"struct.lld::elf::ELFSyncStream") align 8, ptr noundef nonnull align 8 dereferenceable(3472)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN3lld10SyncStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN3lld3elf17writePrefixedInstERNS0_3CtxEPhm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3472) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2154
  %i.b = load i8, ptr %i.a, align 2, !tbaa !523, !range !524, !noundef !525
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = tail call i64 @llvm.fshl.i64(i64 %2, i64 %2, i64 32)
  %i.e = select i1 %i.c, i64 %i.d, i64 %2         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2156
  %i.g = load i32, ptr %i.f, align 4, !tbaa !526
  %.not.i.i.i.i = icmp eq i32 %i.g, 1
  %i.h = tail call i64 @llvm.bswap.i64(i64 %i.e)
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.e, i64 %i.h
  store i64 %spec.select.i.i.i.i, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3lld3elf19addPPC64SaveRestoreERNS0_3CtxE(ptr noundef nonnull align 8 dereferenceable(3472) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [1 x i32], align 4                ; 4 uses
  %i.c = alloca [2 x i32], align 4                ; 5 uses
  %i.d = alloca [1 x i32], align 4                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 -402587632, ptr %i.a, align 4, !tbaa !527
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 2080900006, ptr %i.e, align 4, !tbaa !527
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1317011488, ptr %i.f, align 4, !tbaa !527
  call fastcc void @_ZL13writeSequenceRN3lld3elf3CtxEPKcijN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef nonnull @.str.1, i32 noundef -373162128, ptr nonnull %i.a, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 1317011488, ptr %i.b, align 4, !tbaa !527
  call fastcc void @_ZL13writeSequenceRN3lld3elf3CtxEPKcijN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef nonnull @.str.2, i32 noundef -372441232, ptr nonnull %i.b, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 -134152176, ptr %i.c, align 4, !tbaa !527
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1317011488, ptr %i.g, align 4, !tbaa !527
  call fastcc void @_ZL13writeSequenceRN3lld3elf3CtxEPKcijN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef nonnull @.str.3, i32 noundef -104726672, ptr nonnull %i.c, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 1317011488, ptr %i.d, align 4, !tbaa !527
  call fastcc void @_ZL13writeSequenceRN3lld3elf3CtxEPKcijN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef nonnull @.str.4, i32 noundef -104005776, ptr nonnull %i.d, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL13writeSequenceRN3lld3elf3CtxEPKcijN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef %1, i32 noundef range(i32 -373162128, -104005775) %2, ptr nofree readonly captures(address) %3, i64 %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.lld::elf::Defined", align 8 ; 14 uses
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %6 = alloca %"class.llvm::ArrayRef.532", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = add i64 %4, 18                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = shl i64 %i.b, 2                          ; 2 uses
  %i.e = add i64 %i.d, 4
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !528  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.f, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !529
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !530

bb.b:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %i.i to ptr
  store ptr %i.m, ptr %i.c, align 8, !tbaa !528
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef %i.d, i64 noundef %i.f, i8 2)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3368 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 21
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 23 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 38 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = add nsw i32 %2, -29360240
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2156 ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit
  %.idx = shl i64 %4, 2                           ; 3 uses
  %i.ac = getelementptr i8, ptr %3, i64 %.idx     ; 2 uses
  %.not92 = icmp eq i64 %4, 0
  br i1 %.not92, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ad = add i64 %.idx, -4                       ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 60
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ag = shl nuw nsw i64 %indvar, 2
  %i.ah = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.idx
  %scevgep = getelementptr i8, ptr %i.ai, i64 4   ; 2 uses
  %scevgep1 = getelementptr inbounds nuw i8, ptr %0, i64 2160
  %bound0 = icmp ult ptr %i.cf, %i.ac
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound02 = icmp ult ptr %i.cf, %scevgep1
  %bound13 = icmp ult ptr %i.ab, %scevgep
  %found.conflict4 = and i1 %bound02, %bound13
  %conflict.rdx = or i1 %found.conflict, %found.conflict4
  br i1 %conflict.rdx, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  %i.aj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ak = getelementptr i8, ptr %3, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.cf, i64 %i.aj
  %i.am = load i32, ptr %i.ab, align 4, !tbaa !526, !alias.scope !678
  %i.an = icmp eq i32 %i.am, 1                    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.ao ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.cf, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !527, !alias.scope !679 ; 2 uses
  %wide.load6 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !527, !alias.scope !679 ; 2 uses
  %i.aq = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ar = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load6)
  %i.as = select i1 %i.an, <4 x i32> %wide.load, <4 x i32> %i.aq
  %i.at = select i1 %i.an, <4 x i32> %wide.load6, <4 x i32> %i.ar
  %i.au = getelementptr i8, ptr %next.gep5, i64 16
  store <4 x i32> %i.as, ptr %next.gep5, align 1, !alias.scope !680, !noalias !681
  store <4 x i32> %i.at, ptr %i.au, align 1, !alias.scope !680, !noalias !681
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !675

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03194.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %.13393.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

bb.e:                                             ; preds = %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit, %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit
  %indvar = phi i64 [ 0, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit ], [ %indvar.next, %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 14, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit ], [ %indvars.iv.next, %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit ] ; 5 uses
  %.091 = phi i32 [ undef, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit ], [ %.1, %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit ] ; 3 uses
  %.03290 = phi ptr [ %.0.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit ], [ %i.cf, %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit ] ; 2 uses
  %.sroa.057.088 = phi ptr [ null, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit ], [ %.sroa.057.179, %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit ] ; 7 uses
  %.sroa.9.087 = phi ptr [ null, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit ], [ %.sroa.9.177, %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit ] ; 6 uses
  %.sroa.15.086 = phi ptr [ null, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIjEEPT_m.exit ], [ %.sroa.15.174, %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit ] ; 4 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  %i.ax = call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %i.aw) #25 ; 0 uses
  %i.ay = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #25
  %i.az = shl nuw nsw i64 %indvars.iv, 2
  %i.ba = add nsw i64 %i.az, -56
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !684
  %i.bc = call noundef ptr @_ZN3lld3elf11SymbolTable4findEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(248) %i.bb, ptr nonnull %i.a, i64 %i.ay) #25 ; 5 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 22
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !534
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bg = load ptr, ptr %i.p, align 8, !tbaa !685
  store ptr %i.bg, ptr %5, align 8, !tbaa !535
  store ptr null, ptr %i.q, align 8, !tbaa !686
  store i32 0, ptr %i.r, align 8, !tbaa !687
  store i8 18, ptr %i.s, align 4
  store i8 2, ptr %i.t, align 1, !tbaa !536
  store i8 1, ptr %i.u, align 2, !tbaa !534
  %i.bh = load i16, ptr %i.v, align 1
  %i.bi = and i16 %i.bh, -8192
  store i16 %i.bi, ptr %i.v, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.w, i8 0, i64 12, i1 false)
  %i.bj = load i8, ptr %i.x, align 2
  %i.bk = and i8 %i.bj, -32
  store i8 %i.bk, ptr %i.x, align 2
  store i64 %i.ba, ptr %i.y, align 8, !tbaa !688
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  call void @_ZN3lld3elf6Symbol7resolveERNS0_3CtxERKNS0_7DefinedE(ptr noundef nonnull align 8 dereferenceable(39) %i.bc, ptr noundef nonnull align 8 dereferenceable(3472) %0, ptr noundef nonnull align 8 dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i.i.i = icmp eq ptr %.sroa.9.087, %.sroa.15.086
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.bc, ptr %.sroa.9.087, align 8, !tbaa !689
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.bl = ptrtoint ptr %.sroa.9.087 to i64
  %i.bm = ptrtoint ptr %.sroa.057.088 to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.j, label %_ZNKSt6vectorIPN3lld3elf7DefinedESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

_ZNKSt6vectorIPN3lld3elf7DefinedESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #27 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  store ptr %i.bc, ptr %i.bw, align 8, !tbaa !689
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.k, label %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN3lld3elf7DefinedESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %.sroa.057.088, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i

_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN3lld3elf7DefinedESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.057.088, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.057.088, i64 noundef %i.bn) #28
  br label %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i
  %.sroa.15.1.ph = phi ptr [ %.sroa.15.086, %bb.h ], [ %i.by, %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ]
  %.sroa.9.0.pn = phi ptr [ %.sroa.9.087, %bb.h ], [ %i.bw, %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ]
  %.sroa.057.1.ph = phi ptr [ %.sroa.057.088, %bb.h ], [ %i.bv, %_ZNSt6vectorIPN3lld3elf7DefinedESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i ] ; 2 uses
  %.sroa.9.1.ph = getelementptr inbounds nuw i8, ptr %.sroa.9.0.pn, i64 8 ; 2 uses
  %i.bz = ptrtoint ptr %.sroa.9.1.ph to i64
  %i.ca = ptrtoint ptr %.sroa.057.1.ph to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = icmp eq i64 %i.cb, 8
  %i.cd = trunc i64 %indvars.iv to i32
  %i.ce = add i32 %i.cd, -14
  %spec.select = select i1 %i.cc, i32 %i.ce, i32 %.091
  br label %_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit

_ZL11addOptionalRN3lld3elf3CtxEN4llvm9StringRefEmRSt6vectorIPNS0_7DefinedESaIS7_EE.exit: ; preds = %bb.m, %bb.f, %bb.e
  %.sroa.057.179 = phi ptr [ %.sroa.057.088, %bb.f ], [ %.sroa.057.1.ph, %bb.m ], [ %.sroa.057.088, %bb.e ] ; 6 uses
  %.sroa.9.177 = phi ptr [ %.sroa.9.087, %bb.f ], [ %.sroa.9.1.ph, %bb.m ], [ %.sroa.9.087, %bb.e ] ; 3 uses
  %.sroa.15.174 = phi ptr [ %.sroa.15.086, %bb.f ], [ %.sroa.15.1.ph, %bb.m ], [ %.sroa.15.086, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.091, %bb.f ], [ %spec.select, %bb.m ], [ %.091, %bb.e ] ; 3 uses
  %i.cf = getelementptr i8, ptr %.03290, i64 4    ; 7 uses
  %i.cg = load i32, ptr %i.ab, align 4, !tbaa !526
  %.not.i.i.i.i = icmp eq i32 %i.cg, 1
  %i.ch = trunc i64 %indvars.iv to i32
  %i.ci = mul i32 %i.ch, 2097160
  %i.cj = add i32 %i.ci, %i.aa                    ; 2 uses
  %i.ck = call i32 @llvm.bswap.i32(i32 %i.cj)
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.cj, i32 %i.ck
  store i32 %spec.select.i.i.i.i, ptr %.03290, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !676

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  %i.cl = icmp eq ptr %.sroa.057.179, %.sroa.9.177
  br i1 %i.cl, label %.loopexit, label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %.03194 = phi ptr [ %i.cq, %.lr.ph ], [ %.03194.ph, %.lr.ph.preheader8 ] ; 2 uses
  %.13393 = phi ptr [ %i.cn, %.lr.ph ], [ %.13393.ph, %.lr.ph.preheader8 ] ; 2 uses
  %i.cm = load i32, ptr %.03194, align 4, !tbaa !527 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.13393, i64 4
  %i.co = load i32, ptr %i.ab, align 4, !tbaa !526
  %.not.i.i.i.i37 = icmp eq i32 %i.co, 1
  %i.cp = call i32 @llvm.bswap.i32(i32 %i.cm)
  %spec.select.i.i.i.i38 = select i1 %.not.i.i.i.i37, i32 %i.cm, i32 %i.cp
  store i32 %spec.select.i.i.i.i38, ptr %.13393, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.03194, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.ac
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !677

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cr = sext i32 %.1 to i64                     ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.cr
  %i.ct = sub i64 %i.b, %i.cr
  %i.cu = shl i64 %i.ct, 2
  store ptr %i.cs, ptr %6, align 8, !tbaa !691
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
end_hunk_0
