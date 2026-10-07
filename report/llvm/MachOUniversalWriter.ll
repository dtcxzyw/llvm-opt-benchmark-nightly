Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOUniversalWriter?download=true
inline.NumInlined: 1554
inline.NumDeleted: 713
begin_hunk_0_@_ZN4llvm6object5SliceC2ERKNS0_7ArchiveEjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !21
  %i.l = load i64, ptr %i.f, align 8, !tbaa !23
  store i64 %i.l, ptr %i.d, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !22
  store ptr %i.f, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %i.m, align 8, !tbaa !22
  store i8 0, ptr %i.f, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %5, ptr %i.p, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object5SliceC2ERKNS0_15MachOObjectFileEj(ptr noundef nonnull align 8 dereferenceable(52) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::Triple", align 8      ; 6 uses
  store ptr %1, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef nonnull align 4 dereferenceable(28) ptr @_ZNK4llvm6object15MachOObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !26
  store i32 %i.e, ptr %i.b, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = tail call noundef nonnull align 4 dereferenceable(28) ptr @_ZNK4llvm6object15MachOObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !64
  store i32 %i.i, ptr %i.f, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK4llvm6object15MachOObjectFile13getArchTripleEPPKc(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Triple") align 8 %3, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef null) #20
  %i.k = call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #20 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !20
  %i.o = icmp eq ptr %i.l, null
  %i.p = icmp ne i64 %i.m, 0
  %or.cond.i.i.i = and i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.m, ptr %i.a, align 8, !tbaa !27
  %i.q = icmp ugt i64 %i.m, 15
  br i1 %i.q, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !tbaa !21
  %i.s = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.s, ptr %i.n, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  switch i64 %i.m, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = load i8, ptr %i.l, align 1, !tbaa !23
  store i8 %i.u, ptr %i.t, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.v = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %i.w, align 8, !tbaa !22
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.z = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZN4llvm6TripleD2Ev.exit

_ZN4llvm6TripleD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.ae, align 8, !tbaa !24
  ret void
}

declare noundef nonnull align 4 dereferenceable(28) ptr @_ZNK4llvm6object15MachOObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZNK4llvm6object15MachOObjectFile13getArchTripleEPPKc(ptr dead_on_unwind writable sret(%"class.llvm::Triple") align 8, ptr noundef nonnull align 8 dereferenceable(360), ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZN4llvm6object5SliceC2ERKNS0_12IRObjectFileEjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(52) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef align 8 dereferenceable(32) %4, i32 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.b, align 4, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !20
  %i.e = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.c, align 8, !tbaa !21
  %i.l = load i64, ptr %i.f, align 8, !tbaa !23
  store i64 %i.l, ptr %i.d, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !22
  store ptr %i.f, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %i.m, align 8, !tbaa !22
  store i8 0, ptr %i.f, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %5, ptr %i.p, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object5SliceC2ERKNS0_15MachOObjectFileE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::MachO::segment_command_64", align 8 ; 6 uses
  %3 = alloca %"struct.llvm::MachO::segment_command", align 4 ; 6 uses
  %4 = alloca %"struct.llvm::MachO::section_64", align 8 ; 6 uses
  %5 = alloca %"struct.llvm::MachO::section", align 4 ; 6 uses
  %6 = alloca %"struct.llvm::MachO::segment_command_64", align 8 ; 6 uses
  %7 = alloca %"struct.llvm::MachO::segment_command", align 4 ; 6 uses
  %i.a = tail call noundef nonnull align 4 dereferenceable(28) ptr @_ZNK4llvm6object15MachOObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !26
  switch i32 %i.c, label %bb.c [
    i32 7, label %_ZL18calculateAlignmentRKN4llvm6object15MachOObjectFileE.exit
    i32 16777223, label %_ZL18calculateAlignmentRKN4llvm6object15MachOObjectFileE.exit
    i32 18, label %_ZL18calculateAlignmentRKN4llvm6object15MachOObjectFileE.exit
    i32 16777234, label %_ZL18calculateAlignmentRKN4llvm6object15MachOObjectFileE.exit
    i32 12, label %bb.b
    i32 16777228, label %bb.b
    i32 33554444, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %_ZL18calculateAlignmentRKN4llvm6object15MachOObjectFileE.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(360) %1) #20, !inline_history !65
  %i.h = tail call { ptr, ptr } @_ZNK4llvm6object15MachOObjectFile13load_commandsEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #20 ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 3 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 3 uses
  %.not65.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not65.i.i, label %_ZL18calculateAlignmentRKN4llvm6object15MachOObjectFileE.exit, label %.lr.ph71.i.i

.lr.ph71.i.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52
  br i1 %i.g, label %.lr.ph71.i.split.us.i, label %.lr.ph71.i.split.i

.lr.ph71.i.split.us.i:                            ; preds = %.lr.ph71.i.i, %bb.g
  %.03167.i.us.i = phi ptr [ %i.ac, %bb.g ], [ %i.i, %.lr.ph71.i.i ] ; 5 uses
  %.06166.i.us.i = phi i32 [ %.162.i.us.i, %bb.g ], [ 15, %.lr.ph71.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03167.i.us.i, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !69
  %.not32.i.us.i = icmp eq i32 %i.r, 25
  br i1 %.not32.i.us.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph71.i.split.us.i
  %i.s = call noundef nonnull align 4 dereferenceable(28) ptr @_ZNK4llvm6object15MachOObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !70
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNK4llvm6object15MachOObjectFile23getSegment64LoadCommandERKNS1_15LoadCommandInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::segment_command_64") align 8 %6, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(16) %.03167.i.us.i) #20
  %i.w = load i64, ptr %i.l, align 8, !tbaa !72
  %i.x = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.w, i1 false)
  %i.y = trunc nuw nsw i64 %i.x to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.loopexit.i.us.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK4llvm6object15MachOObjectFile23getSegment64LoadCommandERKNS1_15LoadCommandInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::segment_command_64") align 8 %2, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(16) %.03167.i.us.i) #20
  %i.z = load i32, ptr %i.n, align 8, !tbaa !73   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not33.i.us.i = icmp eq i32 %i.z, 0
  br i1 %.not33.i.us.i, label %.loopexit.i.us.i, label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %bb.f, %.lr.ph.split.us.i.us.i
  %.064.us.i.us.i = phi i32 [ %i.ab, %.lr.ph.split.us.i.us.i ], [ 0, %bb.f ] ; 2 uses
  %.06063.us.i.us.i = phi i32 [ %.sroa.speculated55.us.i.us.i, %.lr.ph.split.us.i.us.i ], [ 2, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK4llvm6object15MachOObjectFile12getSection64ERKNS1_15LoadCommandInfoEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::section_64") align 8 %4, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(16) %.03167.i.us.i, i32 noundef %.064.us.i.us.i) #20
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !30
  %.sroa.speculated55.us.i.us.i = call i32 @llvm.umax.i32(i32 %.06063.us.i.us.i, i32 %i.aa) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ab = add nuw i32 %.064.us.i.us.i, 1          ; 2 uses
  %exitcond75.not.i.us.i = icmp eq i32 %i.ab, %i.z
  br i1 %exitcond75.not.i.us.i, label %.loopexit.i.us.i, label %.lr.ph.split.us.i.us.i, !llvm.loop !66

.loopexit.i.us.i:                                 ; preds = %.lr.ph.split.us.i.us.i, %bb.f, %bb.e
  %.1.i.us.i = phi i32 [ %i.y, %bb.e ], [ %.06166.i.us.i, %bb.f ], [ %.sroa.speculated55.us.i.us.i, %.lr.ph.split.us.i.us.i ]
  %.sroa.speculated43.i.us.i = call i32 @llvm.umin.i32(i32 %.1.i.us.i, i32 %.06166.i.us.i)
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i.us.i, %.lr.ph71.i.split.us.i
  %.162.i.us.i = phi i32 [ %.sroa.speculated43.i.us.i, %.loopexit.i.us.i ], [ %.06166.i.us.i, %.lr.ph71.i.split.us.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.03167.i.us.i, i64 16 ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.ac, %i.j
  br i1 %.not.i.us.i, label %._crit_edge.loopexit.i.i, label %.lr.ph71.i.split.us.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.j, %bb.g
  %.us-phi.i = phi i32 [ %.162.i.us.i, %bb.g ], [ %.162.i.i, %bb.j ]
  %i.ad = call i32 @llvm.umax.i32(i32 %.us-phi.i, i32 2)
  %i.ae = call i32 @llvm.umin.i32(i32 %i.ad, i32 15)
  br label %_ZL18calculateAlignmentRKN4llvm6object15MachOObjectFileE.exit

.lr.ph71.i.split.i:                               ; preds = %.lr.ph71.i.i, %bb.j
  %.03167.i.i = phi ptr [ %i.as, %bb.j ], [ %i.i, %.lr.ph71.i.i ] ; 5 uses
  %.06166.i.i = phi i32 [ %.162.i.i, %bb.j ], [ 15, %.lr.ph71.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.03167.i.i, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !69
  %.not32.i.i = icmp eq i32 %i.ag, 1
  br i1 %.not32.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph71.i.split.i
  %i.ah = call noundef nonnull align 4 dereferenceable(28) ptr @_ZNK4llvm6object15MachOObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !70
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %.thread.i.i, label %bb.i

.thread.i.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNK4llvm6object15MachOObjectFile21getSegmentLoadCommandERKNS1_15LoadCommandInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::segment_command") align 4 %3, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(16) %.03167.i.i) #20
  %i.al = load i32, ptr %i.m, align 4, !tbaa !75  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not3379.i.i = icmp eq i32 %i.al, 0
  br i1 %.not3379.i.i, label %.loopexit.i.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.thread.i.i, %.lr.ph.split.i.i
  %.064.i.i = phi i32 [ %i.an, %.lr.ph.split.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %.06063.i.i = phi i32 [ %.sroa.speculated55.i.i, %.lr.ph.split.i.i ], [ 2, %.thread.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZNK4llvm6object15MachOObjectFile10getSectionERKNS1_15LoadCommandInfoEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::section") align 4 %5, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(16) %.03167.i.i, i32 noundef %.064.i.i) #20
  %i.am = load i32, ptr %i.o, align 4, !tbaa !30
  %.sroa.speculated55.i.i = call i32 @llvm.umax.i32(i32 %.06063.i.i, i32 %i.am) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.an = add nuw i32 %.064.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.an, %i.al
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.split.i.i, !llvm.loop !66

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNK4llvm6object15MachOObjectFile21getSegmentLoadCommandERKNS1_15LoadCommandInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::segment_command") align 4 %7, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr noundef nonnull align 8 dereferenceable(16) %.03167.i.i) #20
  %i.ao = load i32, ptr %i.k, align 4, !tbaa !76
  %i.ap = zext i32 %i.ao to i64
  %i.aq = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ap, i1 false)
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.split.i.i, %bb.i, %.thread.i.i
  %.1.i.i = phi i32 [ %i.ar, %bb.i ], [ %.06166.i.i, %.thread.i.i ], [ %.sroa.speculated55.i.i, %.lr.ph.split.i.i ]
  %.sroa.speculated43.i.i = call i32 @llvm.umin.i32(i32 %.1.i.i, i32 %.06166.i.i)
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i.i, %.lr.ph71.i.split.i
  %.162.i.i = phi i32 [ %.sroa.speculated43.i.i, %.loopexit.i.i ], [ %.06166.i.i, %.lr.ph71.i.split.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.03167.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %i.j
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph71.i.split.i

_ZL18calculateAlignmentRKN4llvm6object15MachOObjectFileE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %._crit_edge.loopexit.i.i
  %.0.i = phi i32 [ 12, %bb.a ], [ 14, %bb.b ], [ 12, %bb.a ], [ 12, %bb.a ], [ 12, %bb.a ], [ 15, %bb.c ], [ %i.ae, %._crit_edge.loopexit.i.i ]
  call void @_ZN4llvm6object5SliceC2ERKNS0_15MachOObjectFileEj(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i32 noundef %.0.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object5Slice6createERKNS0_7ArchiveEPNS_11LLVMContextE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2) local_unnamed_addr #1 align 2 {
_ZN4llvm5ErrorD2Ev.exit:
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %"class.std::unique_ptr.38", align 8 ; 7 uses
  %6 = alloca %class.anon.111, align 8            ; 4 uses
  %7 = alloca %"class.std::unique_ptr.38", align 8 ; 5 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %10 = alloca %"class.std::unique_ptr.38", align 8 ; 7 uses
  %11 = alloca %class.anon.111, align 8           ; 4 uses
  %12 = alloca %"class.std::unique_ptr.38", align 8 ; 5 uses
  %13 = alloca %"class.llvm::Expected.146", align 16 ; 11 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %16 = alloca %"class.std::unique_ptr.38", align 8 ; 7 uses
  %17 = alloca %class.anon.111, align 8           ; 4 uses
  %18 = alloca %"class.std::unique_ptr.38", align 8 ; 5 uses
  %19 = alloca %"class.std::unique_ptr.62", align 8 ; 4 uses
  %20 = alloca %"class.std::unique_ptr.62", align 8 ; 4 uses
  %21 = alloca %"class.llvm::fallible_iterator", align 8 ; 8 uses
  %22 = alloca %"class.llvm::fallible_iterator", align 8 ; 6 uses
  %23 = alloca %"class.llvm::Error", align 8      ; 8 uses
  %24 = alloca %"class.llvm::fallible_iterator", align 16 ; 11 uses
  %25 = alloca %"class.llvm::Expected.70", align 8 ; 12 uses
  %26 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %27 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %30 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %31 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %35 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %36 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %37 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %38 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %40 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %41 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %42 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %44 = alloca %"class.llvm::Expected.81", align 8 ; 12 uses
  %45 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %48 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %50 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %51 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %52 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %53 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %54 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %55 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %56 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %57 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %58 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %60 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %61 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %62 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %63 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %65 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %66 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %67 = alloca %"class.llvm::object::Slice", align 8 ; 11 uses
  %68 = alloca %"class.llvm::Expected", align 8   ; 17 uses
  %69 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  store ptr null, ptr %23, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @_ZNK4llvm6object7Archive11child_beginERNS_5ErrorEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::fallible_iterator") align 8 %21, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %23, i1 noundef zeroext true) #20, !noalias !240
  call void @_ZNK4llvm6object7Archive9child_endEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::fallible_iterator") align 8 %22, ptr noundef nonnull align 8 dereferenceable(144) %1) #20, !noalias !240
  %i.a = load ptr, ptr %21, align 8, !tbaa !242, !noalias !243
  %i.b = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245, !noalias !243 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.g = load i16, ptr %i.f, align 8, !tbaa !254, !noalias !243
  %i.h = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23, !noalias !243 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !245, !noalias !243 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %22, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !243
  %.sroa.21.64.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  store ptr %i.a, ptr %24, align 16, !tbaa !256, !alias.scope !255
  %i.o = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 5 uses
  store ptr null, ptr %i.o, align 8, !tbaa !257, !alias.scope !255
  %i.p = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  store i16 %i.g, ptr %i.p, align 16, !tbaa !254, !alias.scope !255
  %.not.i.i.i.i = icmp eq ptr %i.c, null          ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE5beginEv.exit, label %_ZNSt10unique_ptrIN4llvm6object27AbstractArchiveMemberHeaderESt14default_deleteIS2_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN4llvm6object27AbstractArchiveMemberHeaderESt14default_deleteIS2_EED2Ev.exit.i.i.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20, !noalias !255
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !29, !noalias !255
  %i.r = load ptr, ptr %i.q, align 8, !noalias !255
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.62") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %i.c) #20, !noalias !255, !inline_history !83
  %i.s = load ptr, ptr %20, align 8, !tbaa !245, !noalias !255
  store ptr %i.s, ptr %i.o, align 8, !tbaa !245, !alias.scope !255
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !255
  br label %_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE5beginEv.exit

_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE5beginEv.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt10unique_ptrIN4llvm6object27AbstractArchiveMemberHeaderESt14default_deleteIS2_EED2Ev.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 6 uses
  store i64 %i.i, ptr %i.t, align 8, !tbaa !23, !alias.scope !255
  %.not.i.i.i.i66 = icmp eq ptr %i.k, null        ; 3 uses
  br i1 %.not.i.i.i.i66, label %_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE3endEv.exit, label %_ZNSt10unique_ptrIN4llvm6object27AbstractArchiveMemberHeaderESt14default_deleteIS2_EED2Ev.exit.i.i.i.i67

_ZNSt10unique_ptrIN4llvm6object27AbstractArchiveMemberHeaderESt14default_deleteIS2_EED2Ev.exit.i.i.i.i67: ; preds = %_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE5beginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !258
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !29, !noalias !258
  %i.v = load ptr, ptr %i.u, align 8, !noalias !258
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.62") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %i.k) #20, !noalias !258, !inline_history !86
  %i.w = load ptr, ptr %19, align 8, !tbaa !245, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !258
  %.0.copyload.i.i.i.i.i.i.i636.pre = load i64, ptr %i.t, align 8
  br label %_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE3endEv.exit

_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE3endEv.exit: ; preds = %_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE5beginEv.exit, %_ZNSt10unique_ptrIN4llvm6object27AbstractArchiveMemberHeaderESt14default_deleteIS2_EED2Ev.exit.i.i.i.i67
  %.0.copyload.i.i.i.i.i.i.i636 = phi i64 [ %i.i, %_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE5beginEv.exit ], [ %.0.copyload.i.i.i.i.i.i.i636.pre, %_ZNSt10unique_ptrIN4llvm6object27AbstractArchiveMemberHeaderESt14default_deleteIS2_EED2Ev.exit.i.i.i.i67 ]
  %.sroa.4.0 = phi ptr [ null, %_ZNK4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEE5beginEv.exit ], [ %i.w, %_ZNSt10unique_ptrIN4llvm6object27AbstractArchiveMemberHeaderESt14default_deleteIS2_EED2Ev.exit.i.i.i.i67 ] ; 6 uses
  %i.x = icmp ugt i64 %i.n, 7                     ; 2 uses
  %i.y = icmp ugt i64 %.0.copyload.i.i.i.i.i.i.i636, 7
  %or.cond.i.not4.i637 = select i1 %i.y, i1 true, i1 %i.x
  %i.z = load ptr, ptr %i.e, align 16
  %i.aa = icmp ne ptr %i.z, %.sroa.21.64.copyload
end_hunk_0
