Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmulateInstructionLoongArch?download=true
begin_hunk_0_@_ZN12lldb_private27EmulateInstructionLoongArch11TestExecuteEj:bb.a
  %i.j = phi ptr [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(188) %i.c, i32 noundef %1) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.k, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27EmulateInstructionLoongArch19EvaluateInstructionEj(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.c = load i32, ptr %i.b, align 4, !tbaa !50   ; 2 uses
  switch i32 %i.c, label %bb.b [
    i32 7, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread.sink.split
    i32 1, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread34
    i32 2, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread38
    i32 4, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread.sink.split
    i32 3, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit
    i32 5, label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit
    i32 6, label %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit

_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread.sink.split: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load i8, ptr %i.d, align 8, !tbaa !51
  %i.f = zext i8 %i.e to i32
  br label %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit

_ZNK12lldb_private6Opcode11GetByteSizeEv.exit:    ; preds = %bb.a, %bb.a, %bb.b
  %.0.shrunk.i = phi i32 [ 0, %bb.b ], [ 4, %bb.a ], [ 4, %bb.a ] ; 2 uses
  switch i32 %i.c, label %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit [
    i32 5, label %bb.c
    i32 3, label %bb.c
  ]

_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread34: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load i8, ptr %i.g, align 8, !tbaa !51
  %i.i = zext i8 %i.h to i32
  br label %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit

_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread38: ; preds = %bb.a
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = icmp eq i32 %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = load i16, ptr %i.l, align 8              ; 2 uses
  %i.n = tail call i16 @llvm.bswap.i16(i16 %i.m)
  %i.o = select i1 %i.k, i16 %i.n, i16 %i.m
  %i.p = zext i16 %i.o to i32
  br label %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit

bb.c:                                             ; preds = %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit
  %i.q = load i32, ptr %i.a, align 8, !tbaa !52
  %i.r = icmp eq i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load i32, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  %spec.select.i = select i1 %i.r, i32 %i.u, i32 %i.t
  br label %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit

_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit:    ; preds = %bb.a, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread.sink.split, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread34, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread38, %bb.c
  %.0.i33 = phi i32 [ %.0.shrunk.i, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit ], [ 1, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread34 ], [ 2, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread38 ], [ %.0.shrunk.i, %bb.c ], [ 8, %bb.a ], [ %i.f, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread.sink.split ]
  %.0.i27 = phi i32 [ -1, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit ], [ %i.i, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread34 ], [ %i.p, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread38 ], [ %spec.select.i, %bb.c ], [ -1, %bb.a ], [ -1, %_ZNK12lldb_private6Opcode11GetByteSizeEv.exit.thread.sink.split ] ; 2 uses
  %.not = trunc i32 %1 to i1                      ; 2 uses
  %i.v = tail call noundef ptr @_ZN12lldb_private27EmulateInstructionLoongArch23GetOpcodeForInstructionEj(ptr nonnull align 8 poison, i32 noundef %.0.i27) ; 3 uses
  %.not20 = icmp eq ptr %i.v, null
  br i1 %.not20, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call { i64, i8 } @_ZN12lldb_private18EmulateInstruction6ReadPCEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #13 ; 2 uses
  %i.x = extractvalue { i64, i8 } %i.w, 0
  %i.y = extractvalue { i64, i8 } %i.w, 1
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.d
  %.116 = phi i64 [ 0, %bb.d ], [ %i.x, %bb.e ]   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.unpack = load i64, ptr %i.aa, align 8, !tbaa !47 ; 3 uses
  %.elt21 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.unpack22 = load i64, ptr %.elt21, align 8, !tbaa !47
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %.unpack22 ; 2 uses
  %i.ac = and i64 %.unpack, 1
  %.not23 = icmp eq i64 %i.ac, 0
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.unpack
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load ptr, ptr %i.af, align 8, !nosanitize !41
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = inttoptr i64 %.unpack to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %i.ag, %bb.g ], [ %i.ah, %bb.h ]
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(188) %i.ab, i32 noundef %.0.i27) #13 ; 2 uses
  %brmerge.not = and i1 %i.aj, %.not
  br i1 %brmerge.not, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call { i64, i8 } @_ZN12lldb_private18EmulateInstruction6ReadPCEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #13 ; 2 uses
  %i.al = extractvalue { i64, i8 } %i.ak, 1
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.k, label %.critedge25

bb.k:                                             ; preds = %bb.j
  %i.an = extractvalue { i64, i8 } %i.ak, 0
  %i.ao = icmp eq i64 %i.an, %.116
  br i1 %i.ao, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %.0.i33 to i64
  %i.aq = add i64 %.116, %i.ap
  %i.ar = tail call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction7WritePCEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aq) #13
  br i1 %i.ar, label %.critedge, label %.critedge25

.critedge25:                                      ; preds = %bb.l, %bb.j
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.k, %bb.l, %bb.i, %.critedge25, %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit
  %.5 = phi i1 [ false, %_ZNK12lldb_private6Opcode11GetOpcode32Ej.exit ], [ %i.aj, %bb.i ], [ false, %.critedge25 ], [ true, %bb.k ], [ true, %bb.l ], [ false, %bb.e ]
  ret i1 %.5
}

declare { i64, i8 } @_ZN12lldb_private18EmulateInstruction6ReadPCEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction7WritePCEm(ptr noundef nonnull align 8 dereferenceable(184), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27EmulateInstructionLoongArch15ReadInstructionEv(ptr noundef nonnull align 8 dereferenceable(188) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 5 uses
  %i.b = tail call { i64, i8 } @_ZN12lldb_private18EmulateInstruction6ReadPCEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #13 ; 2 uses
  %i.c = extractvalue { i64, i8 } %i.b, 1
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -1, ptr %i.e, align 8, !tbaa !53
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, i8 } %i.b, 0         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.f, ptr %i.g, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 1, ptr %1, align 8, !tbaa !42
  store i32 13, ptr %i.h, align 4, !tbaa !46
  %i.i = call noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, i64 noundef %i.f, i64 noundef 4, i64 noundef 0, ptr noundef nonnull %i.a) #13
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = call noundef i32 @_ZNK12lldb_private8ArchSpec12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(96) %i.l) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 5, ptr %i.n, align 4, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.j, ptr %i.o, align 8, !tbaa !51
  store i32 %i.m, ptr %i.k, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i1 %i.d
}

declare noundef i64 @_ZN12lldb_private18EmulateInstruction18ReadMemoryUnsignedERKNS0_7ContextEmmmPb(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(248), i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private27EmulateInstructionLoongArch15GetRegisterInfoEN4lldb12RegisterKindEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.5") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(188) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 2
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12lldb_private27EmulateInstructionLoongArch15GetRegisterInfoEN4lldb12RegisterKindEj, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.08 = phi i32 [ %3, %bb.a ], [ %switch.ext, %switch.lookup ] ; 2 uses
  %.0 = phi i32 [ %2, %bb.a ], [ 4, %switch.lookup ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = tail call noundef ptr @_ZN29RegisterInfoPOSIX_loongarch6418GetRegisterInfoPtrERKN12lldb_private8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #13
  %i.e = tail call noundef i32 @_ZN29RegisterInfoPOSIX_loongarch6420GetRegisterInfoCountERKN12lldb_private8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(96) %i.c) #13
  %i.f = icmp uge i32 %.08, %i.e
  %i.g = icmp ne i32 %.0, 4
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %.08 to i64
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !tbaa.struct !54
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink, ptr %i.j, align 8, !tbaa !65
  ret void
}

declare noundef ptr @_ZN29RegisterInfoPOSIX_loongarch6418GetRegisterInfoPtrERKN12lldb_private8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

declare noundef i32 @_ZN29RegisterInfoPOSIX_loongarch6420GetRegisterInfoCountERKN12lldb_private8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27EmulateInstructionLoongArch15SetTargetTripleERKNS_8ArchSpecE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  %i.c = add i32 %i.b, -13
  %spec.select.i.i = icmp ult i32 %i.c, 2
  ret i1 %spec.select.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27EmulateInstructionLoongArch16SupportsThisArchERKNS_8ArchSpecE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67
  %i.c = add i32 %i.b, -13
  %spec.select.i = icmp ult i32 %i.c, 2
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27EmulateInstructionLoongArch13TestEmulationERNS_6StreamERNS_8ArchSpecEPNS_21OptionValueDictionaryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN12lldb_private13PluginManager14RegisterPluginEN4llvm9StringRefES2_PFPNS_18EmulateInstructionERKNS_8ArchSpecENS_15InstructionTypeEE(ptr, i64, ptr, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN12lldb_private27EmulateInstructionLoongArch14CreateInstanceERKNS_8ArchSpecENS_15InstructionTypeE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !67
  %i.d = add i32 %i.c, -13
  %spec.select.i.i = icmp ult i32 %i.d, 2
  br i1 %spec.select.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #14 ; 4 uses
  tail call void @_ZN12lldb_private18EmulateInstructionC2ERKNS_8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(188) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN12lldb_private27EmulateInstructionLoongArchE, i64 16), ptr %i.e, align 8, !tbaa !48
  %i.f = tail call noundef i32 @_ZNK12lldb_private8ArchSpec10GetMachineEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store i32 %i.f, ptr %i.g, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZN12lldb_private13PluginManager16UnregisterPluginEPFPNS_18EmulateInstructionERKNS_8ArchSpecENS_15InstructionTypeEE(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27EmulateInstructionLoongArch13EmulateBEQZ64Ej(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1, !tbaa !38
  %i.b = tail call { i64, i8 } @_ZN12lldb_private18EmulateInstruction6ReadPCEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #13 ; 2 uses
  %i.c = extractvalue { i64, i8 } %i.b, 0
  %i.d = extractvalue { i64, i8 } %i.b, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %1, 5
  %i.g = and i32 %i.f, 31
  %i.h = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 4, i32 noundef %i.g, i64 noundef 0, ptr noundef nonnull %i.a) #13
  %i.i = load i8, ptr %i.a, align 1, !tbaa !38, !range !40, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.l = shl i32 %1, 18
  %i.m = and i32 %i.l, 8126464
  %i.n = lshr i32 %1, 8
  %i.o = and i32 %i.n, 262140
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw i64 %i.q, 41
  %i.s = ashr exact i64 %i.r, 41
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink10 = phi i64 [ %i.s, %bb.d ], [ 4, %bb.c ]
  %i.t = add i64 %i.c, %.sink10
  %i.u = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction7WritePCEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.t) #13
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.u, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27EmulateInstructionLoongArch13EmulateBNEZ64Ej(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1, !tbaa !38
  %i.b = tail call { i64, i8 } @_ZN12lldb_private18EmulateInstruction6ReadPCEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #13 ; 2 uses
  %i.c = extractvalue { i64, i8 } %i.b, 0
  %i.d = extractvalue { i64, i8 } %i.b, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %1, 5
  %i.g = and i32 %i.f, 31
  %i.h = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 4, i32 noundef %i.g, i64 noundef 0, ptr noundef nonnull %i.a) #13
  %i.i = load i8, ptr %i.a, align 1, !tbaa !38, !range !40, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = shl i32 %1, 18
  %i.l = and i32 %i.k, 8126464
  %i.m = lshr i32 %1, 8
  %i.n = and i32 %i.m, 262140
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 41
  %i.r = ashr exact i64 %i.q, 41
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink10 = phi i64 [ %i.r, %bb.d ], [ 4, %bb.c ]
  %i.s = add i64 %i.c, %.sink10
  %i.t = call noundef zeroext i1 @_ZN12lldb_private18EmulateInstruction7WritePCEm(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.s) #13
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.t, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private27EmulateInstructionLoongArch14EmulateBCEQZ64Ej(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1, !tbaa !38
  %i.b = tail call { i64, i8 } @_ZN12lldb_private18EmulateInstruction6ReadPCEv(ptr noundef nonnull align 8 dereferenceable(184) %0) #13 ; 2 uses
  %i.c = extractvalue { i64, i8 } %i.b, 0
  %i.d = extractvalue { i64, i8 } %i.b, 1
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %1, 5
  %i.g = and i32 %i.f, 7
  %i.h = add nuw nsw i32 %i.g, 77
  %i.i = call noundef i64 @_ZN12lldb_private18EmulateInstruction20ReadRegisterUnsignedEN4lldb12RegisterKindEjmPb(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef 4, i32 noundef %i.h, i64 noundef 0, ptr noundef nonnull %i.a) #13
  %i.j = load i8, ptr %i.a, align 1, !tbaa !38, !range !40, !noundef !41
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.i, 255
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.n = shl i32 %1, 18
  %i.o = and i32 %i.n, 8126464
  %i.p = lshr i32 %1, 8
  %i.q = and i32 %i.p, 262140
end_hunk_0
