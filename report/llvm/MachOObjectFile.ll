Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOObjectFile?download=true
inline.NumInlined: 6417
inline.NumDeleted: 1696
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4llvm6object15MachOObjectFile21getRelocationTypeNameENS0_11DataRefImplERNS_15SmallVectorImplIcEE:bb.a
bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.bd, i64 noundef %i.ba, i64 noundef 1) #27
  %.pre8.pre.i55 = load i64, ptr %i.ae, align 8, !tbaa !118
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i51

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i51:  ; preds = %bb.s, %bb.t
  %.pre8.i52 = phi i64 [ %i.az, %bb.s ], [ %.pre8.pre.i55, %bb.t ]
  %i.be = load ptr, ptr %2, align 8, !tbaa !120
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.pre8.i52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bf, ptr noundef nonnull align 1 dereferenceable(7) @.str.163, i64 7, i1 false)
  %.pre.i54 = load i64, ptr %i.ae, align 8, !tbaa !118
  %i.bg = add i64 %.pre.i54, 7
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !118
  br label %.critedge

bb.u:                                             ; preds = %bb.a
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.u, %bb.a
  %.sroa.20.1 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ], [ 7, %bb.u ], [ 7, %bb.b ], [ %i.p, %bb.e ], [ 7, %bb.d ], [ %i.t, %bb.g ], [ %i.w, %bb.i ], [ 7, %bb.f ], [ 7, %bb.h ], [ %i.aa, %bb.k ], [ 7, %bb.j ] ; 4 uses
  %.sroa.091.1 = phi ptr [ null, %bb.a ], [ %i.k, %bb.c ], [ @.str.105, %bb.u ], [ @.str.105, %bb.b ], [ %i.o, %bb.e ], [ @.str.105, %bb.d ], [ %i.s, %bb.g ], [ %i.v, %bb.i ], [ @.str.105, %bb.f ], [ @.str.105, %bb.h ], [ %i.z, %bb.k ], [ @.str.105, %bb.j ]
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !118 ; 2 uses
  %i.bj = add i64 %i.bi, %.sroa.20.1              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !119
  %i.bm = icmp ult i64 %i.bl, %i.bj
  br i1 %i.bm, label %bb.v, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i58

bb.v:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.bn, i64 noundef %i.bj, i64 noundef 1) #27
  %.pre8.pre.i62 = load i64, ptr %i.bh, align 8, !tbaa !118
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i58

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i58:  ; preds = %bb.v, %_ZN4llvm9StringRefC2EPKc.exit
  %.pre8.i59 = phi i64 [ %i.bi, %_ZN4llvm9StringRefC2EPKc.exit ], [ %.pre8.pre.i62, %bb.v ] ; 2 uses
  %.not.i.i60 = icmp samesign eq i64 %.sroa.20.1, 0
  br i1 %.not.i.i60, label %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit63, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i58
  %i.bo = load ptr, ptr %2, align 8, !tbaa !120
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.pre8.i59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %.sroa.091.1, i64 %.sroa.20.1, i1 false)
  %.pre.i61 = load i64, ptr %i.bh, align 8, !tbaa !118
  br label %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit63

_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit63: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i58, %bb.w
  %i.bq = phi i64 [ %.pre8.i59, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i58 ], [ %.pre.i61, %bb.w ]
  %i.br = add i64 %i.bq, %.sroa.20.1
  store i64 %i.br, ptr %i.bh, align 8, !tbaa !118
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit, %_ZNK4llvm6object15MachOObjectFile21getAnyRelocationPCRelERKNS_5MachO19any_relocation_infoE.exit, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i51, %_ZN4llvm15SmallVectorImplIcE6appendIPKcvEEvT_S5_.exit63
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZNK4llvm6object15MachOObjectFile21getAnyRelocationPCRelERKNS_5MachO19any_relocation_infoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !107
  %i.b = icmp ne i32 %.val.i, 16777223
  %.val3.i = load i32, ptr %1, align 4            ; 2 uses
  %i.c = icmp slt i32 %.val3.i, 0
  %.0.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %.val3.i, 1073741824
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load i32, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val5 = load i32, ptr %i.f, align 4
  %switch.tableidx = add i32 %.val4, -11          ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 10
  br i1 %i.g, label %switch.lookup, label %_ZL23getPlainRelocationPCRelRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit

switch.lookup:                                    ; preds = %bb.c
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK4llvm6object15MachOObjectFile21getAnyRelocationPCRelERKNS_5MachO19any_relocation_infoE, i64 %i.h
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZL23getPlainRelocationPCRelRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit

_ZL23getPlainRelocationPCRelRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit: ; preds = %switch.lookup, %bb.c
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 16777216, %bb.c ]
  %i.i = and i32 %.sink.i, %.val5
  br label %bb.d

bb.d:                                             ; preds = %_ZL23getPlainRelocationPCRelRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit, %bb.b
  %.0.in.in = phi i32 [ %i.d, %bb.b ], [ %i.i, %_ZL23getPlainRelocationPCRelRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit ]
  %.0.in = icmp ne i32 %.0.in.in, 0
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext range(i8 0, 4) i8 @_ZNK4llvm6object15MachOObjectFile19getRelocationLengthENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK4llvm6object15MachOObjectFile13getRelocationENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(360) %0, i64 %1) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val.i.i = load i32, ptr %i.b, align 4, !tbaa !107
  %i.c = icmp ne i32 %.val.i.i, 16777223
  %i.d = icmp slt i32 %.sroa.0.0.extract.trunc, 0
  %.0.i.i = select i1 %i.c, i1 %i.d, i1 false
  br i1 %.0.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %.sroa.0.0.extract.trunc, 28
  br label %_ZNK4llvm6object15MachOObjectFile22getAnyRelocationLengthERKNS_5MachO19any_relocation_infoE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4.i = load i32, ptr %i.f, align 8, !tbaa !67
  %switch.tableidx = add i32 %.val4.i, -11        ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 10
  br i1 %i.g, label %switch.lookup, label %_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit.i

switch.lookup:                                    ; preds = %bb.c
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm6object15MachOObjectFile22getAnyRelocationLengthERKNS_5MachO19any_relocation_infoE, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit.i

_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit.i: ; preds = %switch.lookup, %bb.c
  %.sink.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 25, %bb.c ]
  %i.i = lshr i32 %.sroa.4.0.extract.trunc, %.sink.i.i
  br label %_ZNK4llvm6object15MachOObjectFile22getAnyRelocationLengthERKNS_5MachO19any_relocation_infoE.exit

_ZNK4llvm6object15MachOObjectFile22getAnyRelocationLengthERKNS_5MachO19any_relocation_infoE.exit: ; preds = %bb.b, %_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit.i
  %.0.in.i = phi i32 [ %i.e, %bb.b ], [ %i.i, %_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit.i ]
  %i.j = trunc i32 %.0.in.i to i8
  %i.k = and i8 %i.j, 3
  ret i8 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZNK4llvm6object15MachOObjectFile22getAnyRelocationLengthERKNS_5MachO19any_relocation_infoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(360) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val.i = load i32, ptr %i.a, align 4, !tbaa !107
  %i.b = icmp ne i32 %.val.i, 16777223
  %.val3.i = load i32, ptr %1, align 4            ; 2 uses
  %i.c = icmp slt i32 %.val3.i, 0
  %.0.i = select i1 %i.b, i1 %i.c, i1 false
  br i1 %.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %.val3.i, 28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load i32, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val5 = load i32, ptr %i.f, align 4
  %switch.tableidx = add i32 %.val4, -11          ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 10
  br i1 %i.g, label %switch.lookup, label %_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit

switch.lookup:                                    ; preds = %bb.c
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm6object15MachOObjectFile22getAnyRelocationLengthERKNS_5MachO19any_relocation_infoE, i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit

_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit: ; preds = %switch.lookup, %bb.c
  %.sink.i = phi i32 [ %switch.ext, %switch.lookup ], [ 25, %bb.c ]
  %i.i = lshr i32 %.val5, %.sink.i
  br label %bb.d

bb.d:                                             ; preds = %_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit, %bb.b
  %.0.in = phi i32 [ %i.d, %bb.b ], [ %i.i, %_ZL24getPlainRelocationLengthRKN4llvm6object15MachOObjectFileERKNS_5MachO19any_relocation_infoE.exit ]
  %.0 = and i32 %.0.in, 3
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local { ptr, i64 } @_ZN4llvm6object15MachOObjectFile21guessLibraryShortNameENS_9StringRefERbRS2_(ptr %0, i64 %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %3) local_unnamed_addr #11 align 2 {
bb.a:
  store i8 0, ptr %2, align 1, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %cond = icmp eq i64 %1, 0
  br i1 %cond, label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph565.preheader, label %.lr.ph, !llvm.loop !3438

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.i545 = phi i64 [ %i.a, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %i.a = add i64 %.0.i545, -1                     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !72
  %i.d = icmp eq i8 %i.c, 47
  br i1 %i.d, label %_ZNK4llvm9StringRef5rfindEcm.exit, label %bb.b, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit:                ; preds = %.lr.ph
  %or.cond = icmp eq i64 %.0.i545, 1
  br i1 %or.cond, label %.lr.ph565.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i545 ; 6 uses
  %i.f = sub nuw i64 %1, %.0.i545                 ; 8 uses
  %.not.i148546 = icmp eq i64 %i.f, 0
  br i1 %.not.i148546, label %_ZNK4llvm9StringRef5rfindEcm.exit150.thread, label %.lr.ph548

bb.d:                                             ; preds = %.lr.ph548
  %.not.i148 = icmp eq i64 %i.g, 0
  br i1 %.not.i148, label %_ZNK4llvm9StringRef5rfindEcm.exit150.thread, label %.lr.ph548, !llvm.loop !3438

.lr.ph548:                                        ; preds = %bb.c, %bb.d
  %.0.i147547 = phi i64 [ %i.g, %bb.d ], [ %i.f, %bb.c ]
  %i.g = add i64 %.0.i147547, -1                  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !72
  %i.j = icmp eq i8 %i.i, 95
  br i1 %i.j, label %_ZNK4llvm9StringRef5rfindEcm.exit150, label %bb.d, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit150:             ; preds = %.lr.ph548
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 4 uses
  %.not576 = icmp eq i64 %i.f, 1
  br i1 %.not576, label %_ZNK4llvm9StringRef5rfindEcm.exit150.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit150
  %i.l = sub nuw i64 %i.f, %i.g                   ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !79
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %.sroa.472.0..sroa_idx, align 8, !tbaa !78
  switch i64 %i.l, label %_ZN4llvmneENS_9StringRefES0_.exit157.thread [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit157
  ]

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %bb.e
  %i.m = load i32, ptr %i.k, align 1
  %i.n = xor i32 %i.m, 1650811999
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 %i.q, 26485
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZNK4llvm9StringRef5rfindEcm.exit150.thread, label %_ZN4llvmneENS_9StringRefES0_.exit157.thread

_ZN4llvmneENS_9StringRefES0_.exit157:             ; preds = %bb.e
  %i.v = load i64, ptr %i.k, align 1
  %i.w = icmp ne i64 %i.v, 7308332183992823903
  %i.x = zext i1 %i.w to i32
  %.not486 = icmp eq i32 %i.x, 0
  br i1 %.not486, label %_ZNK4llvm9StringRef5rfindEcm.exit150.thread, label %_ZN4llvmneENS_9StringRefES0_.exit157.thread

_ZN4llvmneENS_9StringRefES0_.exit157.thread:      ; preds = %_ZN4llvmneENS_9StringRefES0_.exit, %bb.e, %_ZN4llvmneENS_9StringRefES0_.exit157
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %_ZNK4llvm9StringRef5rfindEcm.exit150.thread

_ZNK4llvm9StringRef5rfindEcm.exit150.thread:      ; preds = %bb.d, %bb.c, %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit157, %_ZN4llvmneENS_9StringRefES0_.exit157.thread, %_ZNK4llvm9StringRef5rfindEcm.exit150
  %.sroa.12.0 = phi i64 [ %i.f, %_ZNK4llvm9StringRef5rfindEcm.exit150 ], [ %i.f, %_ZN4llvmneENS_9StringRefES0_.exit157.thread ], [ %i.g, %_ZN4llvmneENS_9StringRefES0_.exit ], [ %i.g, %_ZN4llvmneENS_9StringRefES0_.exit157 ], [ %i.f, %bb.c ], [ %i.f, %bb.d ] ; 8 uses
  %.not.i162549 = icmp eq i64 %i.a, 0
  br i1 %.not.i162549, label %_ZNK4llvm9StringRef5rfindEcm.exit164, label %.lr.ph551

bb.f:                                             ; preds = %.lr.ph551
  %.not.i162 = icmp eq i64 %i.y, 0
  br i1 %.not.i162, label %_ZNK4llvm9StringRef5rfindEcm.exit164, label %.lr.ph551, !llvm.loop !3438

.lr.ph551:                                        ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit150.thread, %bb.f
  %.0.i161550 = phi i64 [ %i.y, %bb.f ], [ %i.a, %_ZNK4llvm9StringRef5rfindEcm.exit150.thread ]
  %i.y = add i64 %.0.i161550, -1                  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !72
  %i.ab = icmp eq i8 %i.aa, 47
  br i1 %i.ab, label %._ZNK4llvm9StringRef5rfindEcm.exit164_crit_edge552, label %bb.f, !llvm.loop !3438

._ZNK4llvm9StringRef5rfindEcm.exit164_crit_edge552: ; preds = %.lr.ph551
  br label %_ZNK4llvm9StringRef5rfindEcm.exit164, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit164:             ; preds = %bb.f, %._ZNK4llvm9StringRef5rfindEcm.exit164_crit_edge552, %_ZNK4llvm9StringRef5rfindEcm.exit150.thread
  %.06.i163 = phi i64 [ %i.y, %._ZNK4llvm9StringRef5rfindEcm.exit164_crit_edge552 ], [ -1, %_ZNK4llvm9StringRef5rfindEcm.exit150.thread ], [ -1, %bb.f ] ; 3 uses
  %i.ac = add i64 %.06.i163, 1                    ; 2 uses
  %.sroa.speculated4.i165 = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.ac) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i165
  %i.ae = sub nuw i64 %1, %.sroa.speculated4.i165 ; 2 uses
  %.sroa.speculated.i166 = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %.sroa.12.0) ; 2 uses
  %i.af = add i64 %i.ac, %.sroa.12.0
  %.sroa.speculated4.i169 = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.af) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i169 ; 2 uses
  %i.ah = sub i64 %1, %.sroa.speculated4.i169     ; 2 uses
  %.not.i173.not = icmp ugt i64 %.sroa.12.0, %i.ae
  br i1 %.not.i173.not, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread437, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit164
  %i.ai = icmp eq i64 %.sroa.speculated.i166, 0
  br i1 %i.ai, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.g
  %bcmp.i = tail call i32 @bcmp(ptr %i.ad, ptr nonnull %i.e, i64 %.sroa.speculated.i166)
  %i.aj = icmp eq i32 %bcmp.i, 0
  %.not.i175 = icmp ugt i64 %i.ah, 10
  %or.cond492 = and i1 %i.aj, %.not.i175
  br i1 %or.cond492, label %_ZN4llvmeqENS_9StringRefES0_.exit178, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread437

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.g
  %.not.i175.old = icmp ugt i64 %i.ah, 10
  br i1 %.not.i175.old, label %_ZN4llvmeqENS_9StringRefES0_.exit178, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread437

_ZN4llvmeqENS_9StringRefES0_.exit178:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.ak = load i64, ptr %i.ag, align 1
  %i.al = xor i64 %i.ak, 8031999980899296814
  %i.am = getelementptr i8, ptr %i.ag, i64 3
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = xor i64 %i.an, 3416950565360725345
  %i.ap = or i64 %i.al, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN4llvmeqENS_9StringRefES0_.exit178.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread437

_ZN4llvmeqENS_9StringRefES0_.exit178.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit178
  store i8 1, ptr %2, align 1, !tbaa !96
  br label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread

_ZN4llvmeqENS_9StringRefES0_.exit.thread437:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %_ZNK4llvm9StringRef5rfindEcm.exit164, %_ZN4llvmeqENS_9StringRefES0_.exit178, %_ZN4llvmeqENS_9StringRefES0_.exit
  %.06.i163.off = add i64 %.06.i163, -1
  %switch = icmp ult i64 %.06.i163.off, -2
  br i1 %switch, label %.lr.ph556, label %.lr.ph565.preheader

.lr.ph556:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread437
  %.sroa.speculated.i179 = tail call i64 @llvm.umin.i64(i64 %1, i64 %.06.i163)
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %.not.i181 = icmp eq i64 %i.at, 0
  br i1 %.not.i181, label %.lr.ph565.preheader, label %bb.i, !llvm.loop !3438

bb.i:                                             ; preds = %.lr.ph556, %bb.h
  %.0.i180555 = phi i64 [ %.sroa.speculated.i179, %.lr.ph556 ], [ %i.at, %bb.h ] ; 3 uses
  %i.at = add i64 %.0.i180555, -1                 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !72
  %i.aw = icmp eq i8 %i.av, 47
  br i1 %i.aw, label %_ZNK4llvm9StringRef5rfindEcm.exit183, label %bb.h, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit183:             ; preds = %bb.i
  %or.cond3 = icmp eq i64 %.0.i180555, 1
  br i1 %or.cond3, label %.lr.ph565.preheader, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit183
  %.sroa.speculated4.i184 = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i180555) ; 2 uses
  %i.ax = sub nuw i64 %1, %.sroa.speculated4.i184
  %.not.i188 = icmp ult i64 %i.ax, 9
  br i1 %.not.i188, label %.lr.ph565.preheader, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i184 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 1
  %i.ba = xor i64 %i.az, 8317708060499010902
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64
  %i.be = xor i64 %i.bd, 47
  %i.bf = or i64 %i.ba, %i.be
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %.lr.ph565.preheader

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit
  %.sroa.speculated.i190 = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.at) ; 2 uses
  %.not.i192557 = icmp eq i64 %i.at, 0
  br i1 %.not.i192557, label %_ZNK4llvm9StringRef5rfindEcm.exit194, label %.lr.ph559

bb.k:                                             ; preds = %.lr.ph559
  %.not.i192 = icmp eq i64 %i.bj, 0
  br i1 %.not.i192, label %_ZNK4llvm9StringRef5rfindEcm.exit194, label %.lr.ph559, !llvm.loop !3438

.lr.ph559:                                        ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, %bb.k
  %.0.i191558 = phi i64 [ %i.bj, %bb.k ], [ %.sroa.speculated.i190, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ] ; 2 uses
  %i.bj = add i64 %.0.i191558, -1                 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !72
  %i.bm = icmp eq i8 %i.bl, 47
  br i1 %i.bm, label %._ZNK4llvm9StringRef5rfindEcm.exit194_crit_edge, label %bb.k, !llvm.loop !3438

._ZNK4llvm9StringRef5rfindEcm.exit194_crit_edge:  ; preds = %.lr.ph559
  br label %_ZNK4llvm9StringRef5rfindEcm.exit194, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit194:             ; preds = %bb.k, %._ZNK4llvm9StringRef5rfindEcm.exit194_crit_edge, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %.0.i191.lcssa = phi i64 [ %.0.i191558, %._ZNK4llvm9StringRef5rfindEcm.exit194_crit_edge ], [ %.sroa.speculated.i190, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ %i.bj, %bb.k ] ; 2 uses
  %.sroa.speculated4.i195 = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i191.lcssa) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i195
  %i.bo = sub nuw i64 %1, %.sroa.speculated4.i195 ; 2 uses
  %.sroa.speculated.i196 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %.sroa.12.0) ; 2 uses
  %i.bp = add i64 %.0.i191.lcssa, %.sroa.12.0
  %.sroa.speculated4.i199 = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.bp) ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated4.i199 ; 2 uses
  %i.br = sub i64 %1, %.sroa.speculated4.i199     ; 2 uses
  %.not.i203.not = icmp ugt i64 %.sroa.12.0, %i.bo
  br i1 %.not.i203.not, label %.lr.ph565.preheader, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit194
  %i.bs = icmp eq i64 %.sroa.speculated.i196, 0
  br i1 %i.bs, label %_ZN4llvmeqENS_9StringRefES0_.exit206.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit206

_ZN4llvmeqENS_9StringRefES0_.exit206:             ; preds = %bb.l
  %bcmp.i205 = tail call i32 @bcmp(ptr %i.bn, ptr nonnull %i.e, i64 %.sroa.speculated.i196)
  %i.bt = icmp eq i32 %bcmp.i205, 0
  %.not.i207 = icmp ugt i64 %i.br, 10
  %or.cond493 = and i1 %i.bt, %.not.i207
  br i1 %or.cond493, label %_ZN4llvmeqENS_9StringRefES0_.exit210, label %.lr.ph565.preheader

_ZN4llvmeqENS_9StringRefES0_.exit206.thread:      ; preds = %bb.l
  %.not.i207.old = icmp ugt i64 %i.br, 10
  br i1 %.not.i207.old, label %_ZN4llvmeqENS_9StringRefES0_.exit210, label %.lr.ph565.preheader

_ZN4llvmeqENS_9StringRefES0_.exit210:             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit206.thread, %_ZN4llvmeqENS_9StringRefES0_.exit206
  %i.bu = load i64, ptr %i.bq, align 1
  %i.bv = xor i64 %i.bu, 8031999980899296814
  %i.bw = getelementptr i8, ptr %i.bq, i64 3
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 3416950565360725345
  %i.bz = or i64 %i.bv, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN4llvmeqENS_9StringRefES0_.exit210.thread, label %.lr.ph565.preheader

_ZN4llvmeqENS_9StringRefES0_.exit210.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit210
  store i8 1, ptr %2, align 1, !tbaa !96
  br label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread

.lr.ph565.preheader:                              ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit, %_ZNK4llvm9StringRef5rfindEcm.exit183, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZN4llvmeqENS_9StringRefES0_.exit210, %_ZN4llvmeqENS_9StringRefES0_.exit206, %bb.j, %_ZNK4llvm9StringRef5rfindEcm.exit194, %_ZN4llvmeqENS_9StringRefES0_.exit206.thread, %_ZN4llvmeqENS_9StringRefES0_.exit.thread437, %bb.h, %bb.b
  br label %.lr.ph565

bb.m:                                             ; preds = %.lr.ph565
  %.not.i213 = icmp eq i64 %i.cd, 0
  br i1 %.not.i213, label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread, label %.lr.ph565, !llvm.loop !3438

.lr.ph565:                                        ; preds = %.lr.ph565.preheader, %bb.m
  %.0.i212564 = phi i64 [ %i.cd, %bb.m ], [ %1, %.lr.ph565.preheader ] ; 3 uses
  %i.cd = add i64 %.0.i212564, -1                 ; 13 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !72
  %i.cg = icmp eq i8 %i.cf, 46
  br i1 %i.cg, label %_ZNK4llvm9StringRef5rfindEcm.exit215, label %bb.m, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit215:             ; preds = %.lr.ph565
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd ; 3 uses
  %or.cond5 = icmp eq i64 %.0.i212564, 1
  br i1 %or.cond5, label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit215
  %i.ci = sub nuw i64 %1, %i.cd
  switch i64 %i.ci, label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit223
    i64 4, label %_ZN4llvmneENS_9StringRefES0_.exit288
  ]

_ZN4llvmneENS_9StringRefES0_.exit223:             ; preds = %bb.n
  %i.cj = load i32, ptr %i.ch, align 1
  %i.ck = xor i32 %i.cj, 1819894830
  %i.cl = getelementptr i8, ptr %i.ch, i64 4
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i32
  %i.co = xor i32 %i.cn, 25193
  %i.cp = or i32 %i.ck, %i.co
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %.not487 = icmp eq i32 %i.cr, 0
  br i1 %.not487, label %_ZN4llvmneENS_9StringRefES0_.exit223.thread456, label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread

_ZN4llvmneENS_9StringRefES0_.exit223.thread456:   ; preds = %_ZN4llvmneENS_9StringRefES0_.exit223
  %i.cs = icmp ugt i64 %i.cd, 2
  br i1 %i.cs, label %_ZN4llvmeqENS_9StringRefES0_.exit231, label %_ZN4llvmeqENS_9StringRefES0_.exit231.thread460

_ZN4llvmeqENS_9StringRefES0_.exit231:             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit223.thread456
  %i.ct = add i64 %.0.i212564, -3                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  %lhsc505 = load i8, ptr %i.cu, align 1
  %lhsc505.fr = freeze i8 %lhsc505
  %i.cv = icmp eq i8 %lhsc505.fr, 46
  %spec.select = select i1 %i.cv, i64 %i.ct, i64 %i.cd
  br label %_ZN4llvmeqENS_9StringRefES0_.exit231.thread460

_ZN4llvmeqENS_9StringRefES0_.exit231.thread460:   ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit231, %_ZN4llvmneENS_9StringRefES0_.exit223.thread456
  %.0 = phi i64 [ %i.cd, %_ZN4llvmneENS_9StringRefES0_.exit223.thread456 ], [ %spec.select, %_ZN4llvmeqENS_9StringRefES0_.exit231 ] ; 7 uses
  %.sroa.speculated.i232 = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0) ; 2 uses
  %.not.i234569 = icmp eq i64 %.0, 0
  br i1 %.not.i234569, label %_ZNK4llvm9StringRef5rfindEcm.exit236, label %.lr.ph571

bb.o:                                             ; preds = %.lr.ph571
  %.not.i234 = icmp eq i64 %i.cw, 0
  br i1 %.not.i234, label %_ZNK4llvm9StringRef5rfindEcm.exit236, label %.lr.ph571, !llvm.loop !3438

.lr.ph571:                                        ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit231.thread460, %bb.o
  %.0.i233570 = phi i64 [ %i.cw, %bb.o ], [ %.sroa.speculated.i232, %_ZN4llvmeqENS_9StringRefES0_.exit231.thread460 ] ; 2 uses
  %i.cw = add i64 %.0.i233570, -1                 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !72
  %i.cz = icmp eq i8 %i.cy, 47
  br i1 %i.cz, label %._ZNK4llvm9StringRef5rfindEcm.exit236_crit_edge, label %bb.o, !llvm.loop !3438

._ZNK4llvm9StringRef5rfindEcm.exit236_crit_edge:  ; preds = %.lr.ph571
  br label %_ZNK4llvm9StringRef5rfindEcm.exit236, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit236:             ; preds = %bb.o, %._ZNK4llvm9StringRef5rfindEcm.exit236_crit_edge, %_ZN4llvmeqENS_9StringRefES0_.exit231.thread460
  %.0.i233.lcssa = phi i64 [ %.0.i233570, %._ZNK4llvm9StringRef5rfindEcm.exit236_crit_edge ], [ %.sroa.speculated.i232, %_ZN4llvmeqENS_9StringRefES0_.exit231.thread460 ], [ %i.cw, %bb.o ] ; 3 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.q
  %.not.i239 = icmp eq i64 %i.da, 0
  br i1 %.not.i239, label %_ZNK4llvm9StringRef5rfindEcm.exit241.thread, label %bb.q, !llvm.loop !3438

bb.q:                                             ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit236, %bb.p
  %.0.i238575 = phi i64 [ %1, %_ZNK4llvm9StringRef5rfindEcm.exit236 ], [ %i.da, %bb.p ]
  %i.da = add i64 %.0.i238575, -1                 ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !72
  %i.dd = icmp eq i8 %i.dc, 95
  br i1 %i.dd, label %_ZNK4llvm9StringRef5rfindEcm.exit241, label %bb.p, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit241:             ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.da ; 4 uses
  %.not145 = icmp eq i64 %i.da, %.0.i233.lcssa
  br i1 %.not145, label %_ZNK4llvm9StringRef5rfindEcm.exit241.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm9StringRef5rfindEcm.exit241
  %.sroa.speculated3.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i233.lcssa) ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated3.i ; 3 uses
  %i.dg = tail call i64 @llvm.usub.sat.i64(i64 %i.da, i64 %.sroa.speculated3.i) ; 2 uses
  %i.dh = icmp ugt i64 %.0, %1                    ; 2 uses
  %.sroa.speculate.load.false.sroa.speculated.i246 = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.da)
  %.sroa.speculated.i247 = select i1 %i.dh, i64 %1, i64 %.sroa.speculate.load.false.sroa.speculated.i246
  %i.di = sub i64 %.sroa.speculated.i247, %i.da   ; 2 uses
  store ptr %i.de, ptr %3, align 8, !tbaa !79
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.di, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !78
  switch i64 %i.di, label %_ZN4llvmneENS_9StringRefES0_.exit257.thread [
    i64 6, label %_ZN4llvmneENS_9StringRefES0_.exit253
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit257
  ]

_ZN4llvmneENS_9StringRefES0_.exit253:             ; preds = %bb.r
  %i.dj = load i32, ptr %i.de, align 1
  %i.dk = xor i32 %i.dj, 1650811999
  %i.dl = getelementptr i8, ptr %i.de, i64 4
  %i.dm = load i16, ptr %i.dl, align 1
  %i.dn = zext i16 %i.dm to i32
  %i.do = xor i32 %i.dn, 26485
  %i.dp = or i32 %i.dk, %i.do
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not489 = icmp eq i32 %i.dr, 0
  br i1 %.not489, label %_ZN4llvmneENS_9StringRefES0_.exit253.thread471, label %_ZN4llvmneENS_9StringRefES0_.exit257.thread

_ZN4llvmneENS_9StringRefES0_.exit257:             ; preds = %bb.r
  %i.ds = load i64, ptr %i.de, align 1
  %i.dt = icmp ne i64 %i.ds, 7308332183992823903
  %i.du = zext i1 %i.dt to i32
  %.not490 = icmp eq i32 %i.du, 0
  br i1 %.not490, label %_ZN4llvmneENS_9StringRefES0_.exit253.thread471, label %_ZN4llvmneENS_9StringRefES0_.exit257.thread

_ZN4llvmneENS_9StringRefES0_.exit257.thread:      ; preds = %_ZN4llvmneENS_9StringRefES0_.exit253, %bb.r, %_ZN4llvmneENS_9StringRefES0_.exit257
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.sroa.speculate.load.false.sroa.speculated.i259 = tail call i64 @llvm.umax.i64(i64 %.0, i64 %.sroa.speculated3.i)
  %.sroa.speculated.i260 = select i1 %i.dh, i64 %1, i64 %.sroa.speculate.load.false.sroa.speculated.i259
  %i.dv = sub i64 %.sroa.speculated.i260, %.sroa.speculated3.i
  br label %_ZN4llvmneENS_9StringRefES0_.exit253.thread471

_ZNK4llvm9StringRef5rfindEcm.exit241.thread:      ; preds = %bb.p, %_ZNK4llvm9StringRef5rfindEcm.exit241
  %.sroa.speculated3.i263 = tail call i64 @llvm.umin.i64(i64 %1, i64 %.0.i233.lcssa) ; 3 uses
  %i.dw = icmp ugt i64 %.0, %1
  %.sroa.speculate.load.false.sroa.speculated.i264 = tail call i64 @llvm.umax.i64(i64 %.0, i64 %.sroa.speculated3.i263)
  %.sroa.speculated.i265 = select i1 %i.dw, i64 %1, i64 %.sroa.speculate.load.false.sroa.speculated.i264
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.speculated3.i263
  %i.dy = sub i64 %.sroa.speculated.i265, %.sroa.speculated3.i263
  br label %_ZN4llvmneENS_9StringRefES0_.exit253.thread471

_ZN4llvmneENS_9StringRefES0_.exit253.thread471:   ; preds = %_ZN4llvmneENS_9StringRefES0_.exit253, %_ZN4llvmneENS_9StringRefES0_.exit257, %_ZN4llvmneENS_9StringRefES0_.exit257.thread, %_ZNK4llvm9StringRef5rfindEcm.exit241.thread
  %.sroa.16.0 = phi i64 [ %i.dy, %_ZNK4llvm9StringRef5rfindEcm.exit241.thread ], [ %i.dv, %_ZN4llvmneENS_9StringRefES0_.exit257.thread ], [ %i.dg, %_ZN4llvmneENS_9StringRefES0_.exit257 ], [ %i.dg, %_ZN4llvmneENS_9StringRefES0_.exit253 ] ; 4 uses
  %.sroa.0341.0 = phi ptr [ %i.dx, %_ZNK4llvm9StringRef5rfindEcm.exit241.thread ], [ %i.df, %_ZN4llvmneENS_9StringRefES0_.exit257.thread ], [ %i.df, %_ZN4llvmneENS_9StringRefES0_.exit257 ], [ %i.df, %_ZN4llvmneENS_9StringRefES0_.exit253 ] ; 3 uses
  %i.dz = icmp ugt i64 %.sroa.16.0, 2
  br i1 %i.dz, label %_ZN4llvmeqENS_9StringRefES0_.exit275, label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread

_ZN4llvmeqENS_9StringRefES0_.exit275:             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit253.thread471
  %i.ea = add i64 %.sroa.16.0, -2                 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0341.0, i64 %i.ea
  %lhsc491 = load i8, ptr %i.eb, align 1
  %i.ec = icmp eq i8 %lhsc491, 46
  %spec.select503 = select i1 %i.ec, i64 %i.ea, i64 %.sroa.16.0
  br label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread

_ZN4llvmneENS_9StringRefES0_.exit288:             ; preds = %bb.n
  %i.ed = load i32, ptr %i.ch, align 1
  %i.ee = icmp ne i32 %i.ed, 2020897070
  %i.ef = zext i1 %i.ee to i32
  %.not488 = icmp eq i32 %i.ef, 0
  br i1 %.not488, label %_ZN4llvmneENS_9StringRefES0_.exit288.thread480.preheader, label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread

_ZN4llvmneENS_9StringRefES0_.exit288.thread480.preheader: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit288
  %.not.i291566 = icmp eq i64 %i.cd, 0
  br i1 %.not.i291566, label %.loopexit, label %.lr.ph568

_ZN4llvmneENS_9StringRefES0_.exit288.thread480:   ; preds = %.lr.ph568
  %.not.i291 = icmp eq i64 %i.eg, 0
  br i1 %.not.i291, label %.loopexit, label %.lr.ph568, !llvm.loop !3438

.lr.ph568:                                        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit288.thread480.preheader, %_ZN4llvmneENS_9StringRefES0_.exit288.thread480
  %.0.i290567 = phi i64 [ %i.eg, %_ZN4llvmneENS_9StringRefES0_.exit288.thread480 ], [ %i.cd, %_ZN4llvmneENS_9StringRefES0_.exit288.thread480.preheader ] ; 3 uses
  %i.eg = add i64 %.0.i290567, -1                 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !72
  %i.ej = icmp eq i8 %i.ei, 47
  br i1 %i.ej, label %_ZNK4llvm9StringRef5rfindEcm.exit293, label %_ZN4llvmneENS_9StringRefES0_.exit288.thread480, !llvm.loop !3438

_ZNK4llvm9StringRef5rfindEcm.exit293:             ; preds = %.lr.ph568
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i290567
  %i.el = sub i64 %i.cd, %.0.i290567
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit288.thread480, %_ZN4llvmneENS_9StringRefES0_.exit288.thread480.preheader, %_ZNK4llvm9StringRef5rfindEcm.exit293
  %.sroa.16.2 = phi i64 [ %i.el, %_ZNK4llvm9StringRef5rfindEcm.exit293 ], [ %i.cd, %_ZN4llvmneENS_9StringRefES0_.exit288.thread480.preheader ], [ %i.cd, %_ZN4llvmneENS_9StringRefES0_.exit288.thread480 ] ; 4 uses
  %.sroa.0341.2 = phi ptr [ %i.ek, %_ZNK4llvm9StringRef5rfindEcm.exit293 ], [ %0, %_ZN4llvmneENS_9StringRefES0_.exit288.thread480.preheader ], [ %0, %_ZN4llvmneENS_9StringRefES0_.exit288.thread480 ] ; 3 uses
  %i.em = icmp ugt i64 %.sroa.16.2, 2
  br i1 %i.em, label %_ZN4llvmeqENS_9StringRefES0_.exit311, label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread

_ZN4llvmeqENS_9StringRefES0_.exit311:             ; preds = %.loopexit
  %i.en = add i64 %.sroa.16.2, -2                 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0341.2, i64 %i.en
  %lhsc = load i8, ptr %i.eo, align 1
  %i.ep = icmp eq i8 %lhsc, 46
  %spec.select504 = select i1 %i.ep, i64 %i.en, i64 %.sroa.16.2
  br label %_ZNK4llvm9StringRef5rfindEcm.exit215.thread

_ZNK4llvm9StringRef5rfindEcm.exit215.thread:      ; preds = %bb.m, %bb.a, %_ZN4llvmeqENS_9StringRefES0_.exit311, %_ZN4llvmeqENS_9StringRefES0_.exit275, %_ZN4llvmneENS_9StringRefES0_.exit223, %bb.n, %.loopexit, %_ZN4llvmneENS_9StringRefES0_.exit288, %_ZN4llvmneENS_9StringRefES0_.exit253.thread471, %_ZNK4llvm9StringRef5rfindEcm.exit215, %_ZN4llvmeqENS_9StringRefES0_.exit210.thread, %_ZN4llvmeqENS_9StringRefES0_.exit178.thread
  %.sroa.9.0 = phi i64 [ %.sroa.12.0, %_ZN4llvmeqENS_9StringRefES0_.exit210.thread ], [ 0, %bb.n ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit288 ], [ 0, %_ZNK4llvm9StringRef5rfindEcm.exit215 ], [ %.sroa.12.0, %_ZN4llvmeqENS_9StringRefES0_.exit178.thread ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit223 ], [ %spec.select504, %_ZN4llvmeqENS_9StringRefES0_.exit311 ], [ %spec.select503, %_ZN4llvmeqENS_9StringRefES0_.exit275 ], [ %.sroa.16.0, %_ZN4llvmneENS_9StringRefES0_.exit253.thread471 ], [ %.sroa.16.2, %.loopexit ], [ 0, %bb.a ], [ 0, %bb.m ]
  %.sroa.0425.0 = phi ptr [ %i.e, %_ZN4llvmeqENS_9StringRefES0_.exit210.thread ], [ null, %bb.n ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit288 ], [ null, %_ZNK4llvm9StringRef5rfindEcm.exit215 ], [ %i.e, %_ZN4llvmeqENS_9StringRefES0_.exit178.thread ], [ null, %_ZN4llvmneENS_9StringRefES0_.exit223 ], [ %.sroa.0341.2, %_ZN4llvmeqENS_9StringRefES0_.exit311 ], [ %.sroa.0341.0, %_ZN4llvmeqENS_9StringRefES0_.exit275 ], [ %.sroa.0341.0, %_ZN4llvmneENS_9StringRefES0_.exit253.thread471 ], [ %.sroa.0341.2, %.loopexit ], [ null, %bb.a ], [ null, %bb.m ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0425.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.9.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZNK4llvm6object15MachOObjectFile26getLibraryShortNameByIndexEjRNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.63", align 8 ; 9 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %.not = icmp ugt i32 %i.e, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #27
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !34
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 244
  br label %bb.e

bb.d:                                             ; preds = %bb.k, %bb.l, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = add nuw i32 %.045, 1                     ; 3 uses
  %i.n = zext i32 %i.m to i64
  %i.o = load i32, ptr %i.d, align 8, !tbaa !34
  %i.p = icmp ugt i32 %i.o, %i.m
  br i1 %i.p, label %bb.e, label %.loopexit, !llvm.loop !3439

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.q = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.d ]  ; 2 uses
  %.045 = phi i32 [ 0, %.lr.ph ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !79
  call fastcc void @_ZL14getStructOrErrIN4llvm5MachO13dylib_commandEENS0_8ExpectedIT_EERKNS0_6object15MachOObjectFileEPKc(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef %i.t)
  %i.u = load i8, ptr %i.k, align 8
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !73 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !73 ; 2 uses
  %.not21 = icmp ult i32 %.sroa.5.0.copyload, %.sroa.3.0.copyload
  br i1 %.not21, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.q
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79   ; 2 uses
  %i.z = zext i32 %.sroa.5.0.copyload to i64      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z ; 4 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #27
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.g, %bb.h
  %.sroa.0.0.i = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.ac = add i64 %.sroa.0.0.i, %i.z
  %i.ad = zext i32 %.sroa.3.0.copyload to i64
  %.not22 = icmp ult i64 %i.ac, %i.ad
  br i1 %.not22, label %bb.i, label %.thread.loopexit

bb.i:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ae = call { ptr, i64 } @_ZN4llvm6object15MachOObjectFile21guessLibraryShortNameENS_9StringRefERbRS2_(ptr %i.aa, i64 %.sroa.0.0.i, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !34  ; 3 uses
  %i.aj = load i32, ptr %i.l, align 4, !tbaa !35
  %.not.i26 = icmp ult i32 %i.ai, %i.aj           ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i26, label %bb.l, label %bb.k, !prof !89

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr %i.aa, i64 %.sroa.0.0.i)
  br label %bb.d

bb.l:                                             ; preds = %bb.j
  %i.ak = zext i32 %i.ai to i64
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  store ptr %i.aa, ptr %i.am, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.0.0.i, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.an = load i32, ptr %i.h, align 8, !tbaa !34
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.h, align 8, !tbaa !34
  br label %bb.d

bb.m:                                             ; preds = %bb.i
  br i1 %.not.i26, label %bb.o, label %bb.n, !prof !89

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr %i.af, i64 %i.ag)
  br label %bb.d

bb.o:                                             ; preds = %bb.m
  %i.ap = zext i32 %i.ai to i64
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  store ptr %i.af, ptr %i.ar, align 1
  %.sroa.3.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ag, ptr %.sroa.3.0..sroa_idx.i28, align 1
  %i.as = load i32, ptr %i.h, align 8, !tbaa !34
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.h, align 8, !tbaa !34
  br label %bb.d

.critedge:                                        ; preds = %bb.f
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #27
  br label %_ZN4llvm8ExpectedINS_5MachO13dylib_commandEED2Ev.exit32

bb.p:                                             ; preds = %bb.e
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #27 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !84    ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i30, label %_ZN4llvm8ExpectedINS_5MachO13dylib_commandEED2Ev.exit32, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31: ; preds = %bb.p
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #27, !inline_history !3440
  br label %_ZN4llvm8ExpectedINS_5MachO13dylib_commandEED2Ev.exit32

_ZN4llvm8ExpectedINS_5MachO13dylib_commandEED2Ev.exit32: ; preds = %.critedge, %bb.p, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31
  %.sroa.6.259 = phi ptr [ %i.au, %.critedge ], [ %i.av, %bb.p ], [ %i.av, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.thread

.loopexit:                                        ; preds = %bb.d, %bb.c
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !tbaa.struct !121
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %.thread

.thread.loopexit:                                 ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %_ZN4llvm8ExpectedINS_5MachO13dylib_commandEED2Ev.exit32, %.loopexit, %bb.b
  %.sroa.6.4 = phi ptr [ %i.bc, %.loopexit ], [ %i.f, %bb.b ], [ %.sroa.6.259, %_ZN4llvm8ExpectedINS_5MachO13dylib_commandEED2Ev.exit32 ], [ %i.bd, %.thread.loopexit ]
  %.sroa.037.4 = phi i32 [ 0, %.loopexit ], [ 3, %bb.b ], [ 3, %_ZN4llvm8ExpectedINS_5MachO13dylib_commandEED2Ev.exit32 ], [ 3, %.thread.loopexit ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.037.4, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.6.4, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14getStructOrErrIN4llvm5MachO13dylib_commandEENS0_8ExpectedIT_EERKNS0_6object15MachOObjectFileEPKc(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr nofree noundef readonly captures(address) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %i.a = tail call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #27
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = icmp ult ptr %2, %i.b
  br i1 %i.c, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

end_hunk_0
