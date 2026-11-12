Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EmulateInstructionMIPS?download=true
inline.NumInlined: 1259
inline.NumDeleted: 511
begin_hunk_0_@_ZN22EmulateInstructionMIPSC2ERKN12lldb_private8ArchSpecE:bb.a
  %i.cq = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.cr = and i64 %i.cq, -8
  %i.cs = icmp eq i64 %i.cr, 4611686018427387896
  br i1 %i.cs, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.450) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37: ; preds = %bb.s
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14, i64 noundef 8) #18 ; 0 uses
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN4llvm14MCDisassemblerESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.cu = and i32 %i.ak, 2048
  %.not21 = icmp eq i32 %i.cu, 0
  br i1 %.not21, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = load i64, ptr %i.ai, align 8, !tbaa !210
  %i.cw = add i64 %i.cv, -4611686018427387893
  %i.cx = icmp ult i64 %i.cw, 11
  br i1 %i.cx, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.450) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38: ; preds = %bb.v
  %i.cy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.15, i64 noundef 11) #18 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit37
  %i.cz = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.da = load i64, ptr %i.ai, align 8, !tbaa !210 ; 2 uses
  %i.db = load ptr, ptr %i.bs, align 8, !tbaa !218
  %.not.i39 = icmp eq ptr %i.db, null
  br i1 %.not.i39, label %_ZNK4llvm6Target21createMCSubtargetInfoERKNS_6TripleENS_9StringRefES4_.exit41, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = call noundef zeroext i1 @_ZN4llvm6Target24isValidFeatureListFormatENS_9StringRefE(ptr %i.cz, i64 %i.da) #18
  br i1 %i.dc, label %bb.z, label %_ZNK4llvm6Target21createMCSubtargetInfoERKNS_6TripleENS_9StringRefES4_.exit41

bb.z:                                             ; preds = %bb.y
  %i.dd = load ptr, ptr %i.bs, align 8, !tbaa !218
  %i.de = call noundef ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr nonnull %.sroa.079.0, i64 %.sroa.16.0, ptr %i.cz, i64 %i.da) #18, !inline_history !203
  br label %_ZNK4llvm6Target21createMCSubtargetInfoERKNS_6TripleENS_9StringRefES4_.exit41

_ZNK4llvm6Target21createMCSubtargetInfoERKNS_6TripleENS_9StringRefES4_.exit41: ; preds = %bb.x, %bb.y, %bb.z
  %.0.i40 = phi ptr [ %i.de, %bb.z ], [ null, %bb.x ], [ null, %bb.y ]
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !42  ; 3 uses
  store ptr %.0.i40, ptr %i.e, align 8, !tbaa !42
  %.not.i.i42 = icmp eq ptr %i.df, null
  br i1 %.not.i.i42, label %_ZNSt10unique_ptrIN4llvm15MCSubtargetInfoESt14default_deleteIS1_EE5resetEPS1_.exit44, label %_ZNKSt14default_deleteIN4llvm15MCSubtargetInfoEEclEPS1_.exit.i.i43

_ZNKSt14default_deleteIN4llvm15MCSubtargetInfoEEclEPS1_.exit.i.i43: ; preds = %_ZNK4llvm6Target21createMCSubtargetInfoERKNS_6TripleENS_9StringRefES4_.exit41
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !9
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(320) %i.df) #18, !inline_history !204
  br label %_ZNSt10unique_ptrIN4llvm15MCSubtargetInfoESt14default_deleteIS1_EE5resetEPS1_.exit44

_ZNSt10unique_ptrIN4llvm15MCSubtargetInfoESt14default_deleteIS1_EE5resetEPS1_.exit44: ; preds = %_ZNK4llvm6Target21createMCSubtargetInfoERKNS_6TripleENS_9StringRefES4_.exit41, %_ZNKSt14default_deleteIN4llvm15MCSubtargetInfoEEclEPS1_.exit.i.i43
  %i.dj = load ptr, ptr %i.cg, align 8, !tbaa !220 ; 2 uses
  %.not.i45 = icmp eq ptr %i.dj, null
  br i1 %.not.i45, label %_ZNK4llvm6Target20createMCDisassemblerERKNS_15MCSubtargetInfoERNS_9MCContextE.exit47, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN4llvm15MCSubtargetInfoESt14default_deleteIS1_EE5resetEPS1_.exit44
  %i.dk = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.dm = call noundef ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(264) %i.ab, ptr noundef nonnull align 8 dereferenceable(320) %i.dl, ptr noundef nonnull align 8 dereferenceable(2208) %i.dk) #18, !inline_history !207
  br label %_ZNK4llvm6Target20createMCDisassemblerERKNS_15MCSubtargetInfoERNS_9MCContextE.exit47

_ZNK4llvm6Target20createMCDisassemblerERKNS_15MCSubtargetInfoERNS_9MCContextE.exit47: ; preds = %_ZNSt10unique_ptrIN4llvm15MCSubtargetInfoESt14default_deleteIS1_EE5resetEPS1_.exit44, %bb.aa
  %.0.i46 = phi ptr [ %i.dm, %bb.aa ], [ null, %_ZNSt10unique_ptrIN4llvm15MCSubtargetInfoESt14default_deleteIS1_EE5resetEPS1_.exit44 ]
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !46  ; 3 uses
  store ptr %.0.i46, ptr %i.c, align 8, !tbaa !46
  %.not.i.i48 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i48, label %_ZNSt10unique_ptrIN4llvm14MCDisassemblerESt14default_deleteIS1_EE5resetEPS1_.exit50, label %_ZNKSt14default_deleteIN4llvm14MCDisassemblerEEclEPS1_.exit.i.i49

_ZNKSt14default_deleteIN4llvm14MCDisassemblerEEclEPS1_.exit.i.i49: ; preds = %_ZNK4llvm6Target20createMCDisassemblerERKNS_15MCSubtargetInfoERNS_9MCContextE.exit47
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(40) %i.dn) #18, !inline_history !208
  br label %_ZNSt10unique_ptrIN4llvm14MCDisassemblerESt14default_deleteIS1_EE5resetEPS1_.exit50

_ZNSt10unique_ptrIN4llvm14MCDisassemblerESt14default_deleteIS1_EE5resetEPS1_.exit50: ; preds = %_ZNK4llvm6Target20createMCDisassemblerERKNS_15MCSubtargetInfoERNS_9MCContextE.exit47, %_ZNKSt14default_deleteIN4llvm14MCDisassemblerEEclEPS1_.exit.i.i49
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 0, ptr %i.dr, align 8, !tbaa !97
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i8 0, ptr %i.ds, align 4, !tbaa !98
  %i.dt = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.ah
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm14MCDisassemblerESt14default_deleteIS1_EE5resetEPS1_.exit50
  %i.dv = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm14MCDisassemblerESt14default_deleteIS1_EE5resetEPS1_.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.dx = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.m
  br i1 %i.dy, label %_ZN4llvm6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dz = load i64, ptr %i.m, align 8, !tbaa !15
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #20
  br label %_ZN4llvm6TripleD2Ev.exit

_ZN4llvm6TripleD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.eb = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.k
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZN4llvm6TripleD2Ev.exit
  %i.ed = load i64, ptr %i.k, align 8, !tbaa !15
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZN4llvm6TripleD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void
}

declare void @_ZN12lldb_private18EmulateInstructionC2ERKNS_8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #1

declare void @_ZN4llvm15MCTargetOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(282)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_ZN4llvm14TargetRegistry12lookupTargetERKNS_6TripleERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZN12lldb_private13PluginManager14RegisterPluginEN4llvm9StringRefES2_PFPNS_18EmulateInstructionERKNS_8ArchSpecENS_15InstructionTypeEE(ptr, i64, ptr, i64, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { ptr, i64 } @_ZN22EmulateInstructionMIPS26GetPluginDescriptionStaticEv() local_unnamed_addr #3 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.16, i64 49 }
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN22EmulateInstructionMIPS14CreateInstanceERKN12lldb_private8ArchSpecENS0_15InstructionTypeE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1) #0 align 2 {
bb.a:
  %switch.i = icmp ult i32 %1, 3
  br i1 %switch.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = and i32 %i.b, -2
  %switch = icmp eq i32 %i.c, 16
  br i1 %switch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(544) ptr @_Znwm(i64 noundef 544) #21 ; 2 uses
  tail call void @_ZN22EmulateInstructionMIPSC1ERKN12lldb_private8ArchSpecE(ptr noundef nonnull align 8 dereferenceable(541) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %0) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef zeroext i1 @_ZN12lldb_private13PluginManager16UnregisterPluginEPFPNS_18EmulateInstructionERKNS_8ArchSpecENS_15InstructionTypeEE(ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN22EmulateInstructionMIPS15SetTargetTripleERKN12lldb_private8ArchSpecE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = and i32 %i.b, -2
  %spec.select = icmp eq i32 %i.c, 16
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @_ZN22EmulateInstructionMIPS15GetRegisterNameEjb(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, -29              ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 78
  br i1 %i.a, label %switch.lookup, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 107
  br i1 %i.b, label %switch.lookup3, label %bb.d

switch.lookup:                                    ; preds = %bb.b
  %3 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN22EmulateInstructionMIPS15GetRegisterNameEjb, i64 %3
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.d

switch.lookup3:                                   ; preds = %bb.c
  %i.c = zext nneg i32 %1 to i64
  %switch.gep4 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN22EmulateInstructionMIPS15GetRegisterNameEjb.2, i64 %i.c
  %switch.load5 = load ptr, ptr %switch.gep4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %switch.lookup3, %switch.lookup
  %.0 = phi ptr [ %switch.load5, %switch.lookup3 ], [ %switch.load, %switch.lookup ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN22EmulateInstructionMIPS15GetRegisterInfoEN4lldb12RegisterKindEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.189") align 8 captures(none) initializes((80, 81)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %.sroa.22.sroa.11 = alloca [28 x i8], align 4   ; 8 uses
  switch i32 %2, label %bb.q [
    i32 2, label %bb.b
    i32 1, label %.thread
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %bb.f [
    i32 0, label %.thread43
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %.thread46
  ]

bb.c:                                             ; preds = %bb.b
  br label %.thread43

bb.d:                                             ; preds = %bb.b
  br label %.thread43

bb.e:                                             ; preds = %bb.b
  br label %.thread43

.thread46:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.sroa.11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.22.sroa.11, i8 0, i64 28, i1 false)
  %i.a = tail call noundef ptr @_ZN22EmulateInstructionMIPS15GetRegisterNameEjb(ptr nonnull align 8 poison, i32 noundef 32, i1 noundef zeroext false)
  %i.b = tail call noundef ptr @_ZN22EmulateInstructionMIPS15GetRegisterNameEjb(ptr nonnull align 8 poison, i32 noundef 32, i1 noundef zeroext true)
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !101
  br label %bb.r

.thread43:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.035.ph = phi i32 [ 29, %bb.c ], [ 30, %bb.d ], [ 31, %bb.e ], [ 37, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.sroa.11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.22.sroa.11, i8 0, i64 28, i1 false)
  br label %bb.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22.sroa.11)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.22.sroa.11, i8 0, i64 28, i1 false)
  switch i32 %3, label %bb.g [
    i32 106, label %bb.i
    i32 105, label %bb.i
    i32 104, label %bb.i
    i32 71, label %bb.i
    i32 70, label %bb.i
    i32 32, label %bb.i
  ]

bb.g:                                             ; preds = %.thread
  %or.cond11 = icmp ult i32 %3, 70
  br i1 %or.cond11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.d = add i32 %3, -72
  %or.cond13 = icmp ult i32 %i.d, 32
  br i1 %or.cond13, label %bb.i, label %bb.p

bb.i:                                             ; preds = %.thread43, %bb.h, %bb.g, %.thread, %.thread, %.thread, %.thread, %.thread, %.thread
  %.03540 = phi i32 [ %3, %.thread ], [ %3, %bb.g ], [ %3, %.thread ], [ %3, %.thread ], [ %3, %.thread ], [ %3, %.thread ], [ %3, %.thread ], [ %3, %bb.h ], [ %.035.ph, %.thread43 ] ; 9 uses
  %.sroa.6.0 = phi i32 [ 4, %.thread ], [ 4, %bb.g ], [ 4, %.thread ], [ 4, %.thread ], [ 4, %.thread ], [ 4, %.thread ], [ 4, %.thread ], [ 16, %bb.h ], [ 4, %.thread43 ] ; 6 uses
  %i.e = phi <2 x i32> [ <i32 1, i32 11>, %.thread ], [ <i32 1, i32 11>, %bb.g ], [ <i32 1, i32 11>, %.thread ], [ <i32 1, i32 11>, %.thread ], [ <i32 1, i32 11>, %.thread ], [ <i32 1, i32 11>, %.thread ], [ <i32 1, i32 11>, %.thread ], [ <i32 4, i32 22>, %bb.h ], [ <i32 1, i32 11>, %.thread43 ] ; 6 uses
  %i.f = tail call noundef ptr @_ZN22EmulateInstructionMIPS15GetRegisterNameEjb(ptr nonnull align 8 poison, i32 noundef %.03540, i1 noundef zeroext false) ; 6 uses
  %i.g = tail call noundef ptr @_ZN22EmulateInstructionMIPS15GetRegisterNameEjb(ptr nonnull align 8 poison, i32 noundef %.03540, i1 noundef zeroext true) ; 6 uses
  switch i32 %.03540, label %bb.o [
    i32 30, label %bb.j
    i32 31, label %bb.k
    i32 29, label %bb.l
    i32 37, label %bb.m
    i32 32, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  br label %bb.o

bb.o:                                             ; preds = %.thread46, %bb.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.h = phi ptr [ %i.g, %bb.i ], [ %i.g, %bb.j ], [ %i.g, %bb.k ], [ %i.g, %bb.l ], [ %i.g, %bb.m ], [ %i.b, %.thread46 ], [ %i.g, %bb.n ]
  %i.i = phi ptr [ %i.f, %bb.i ], [ %i.f, %bb.j ], [ %i.f, %bb.k ], [ %i.f, %bb.l ], [ %i.f, %bb.m ], [ %i.a, %.thread46 ], [ %i.f, %bb.n ]
  %.sroa.6.056 = phi i32 [ %.sroa.6.0, %bb.i ], [ %.sroa.6.0, %bb.j ], [ %.sroa.6.0, %bb.k ], [ %.sroa.6.0, %bb.l ], [ %.sroa.6.0, %bb.m ], [ 4, %.thread46 ], [ %.sroa.6.0, %bb.n ]
  %.0353754 = phi i32 [ %.03540, %bb.i ], [ %.03540, %bb.j ], [ %.03540, %bb.k ], [ %.03540, %bb.l ], [ %.03540, %bb.m ], [ 32, %.thread46 ], [ %.03540, %bb.n ]
  %.sroa.17.0 = phi i32 [ -1, %bb.i ], [ 2, %bb.j ], [ 3, %bb.k ], [ 1, %bb.l ], [ 0, %bb.m ], [ 4, %.thread46 ], [ 4, %bb.n ]
  %i.j = phi <2 x i32> [ %i.e, %bb.i ], [ %i.e, %bb.j ], [ %i.e, %bb.k ], [ %i.e, %bb.l ], [ %i.e, %bb.m ], [ <i32 1, i32 11>, %.thread46 ], [ %i.e, %bb.n ]
  store ptr %i.i, ptr %0, align 8, !tbaa !221
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !221
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.6.056, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !102
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !102
  %.sroa.932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.j, ptr %.sroa.932.0..sroa_idx, align 8, !tbaa !15
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.0353754, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i64 -1, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !15
  %.sroa.22.sroa.11.0..sroa.22.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.22.sroa.11.0..sroa.22.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.22.sroa.11, i64 28, i1 false), !tbaa.struct !224
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.o
  %.sink = phi i8 [ 1, %bb.o ], [ 0, %bb.h ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink, ptr %i.k, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.sroa.11)
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.l, align 8, !tbaa !101
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN22EmulateInstructionMIPS23GetOpcodeForInstructionEN4llvm9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  store ptr %0, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread
  %.08.idx14 = phi i64 [ 0, %bb.a ], [ %.08.add, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread ] ; 3 uses
  %.08.ptr15 = getelementptr inbounds nuw i8, ptr @_ZZN22EmulateInstructionMIPS23GetOpcodeForInstructionEN4llvm9StringRefEE9g_opcodes, i64 %.08.idx14
  %i.b = load ptr, ptr %.08.ptr15, align 16, !tbaa !106 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.c, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !108
  %i.e = icmp eq i64 %i.d, %.sroa.0.0.i
  br i1 %i.e, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.f = call noundef i32 @_ZNK4llvm9StringRef19compare_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %i.b, i64 %.sroa.0.0.i) #18
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.split.loop.exit16, label %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread

_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread: ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %.08.add = add nuw nsw i64 %.08.idx14, 32       ; 2 uses
  %.not = icmp eq i64 %.08.add, 5184
  br i1 %.not, label %.split.loop.exit, label %bb.b

.split.loop.exit16:                               ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit
  %.08.ptr15.le = getelementptr inbounds nuw i8, ptr @_ZZN22EmulateInstructionMIPS23GetOpcodeForInstructionEN4llvm9StringRefEE9g_opcodes, i64 %.08.idx14
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread, %.split.loop.exit16
  %i.h = phi ptr [ %.08.ptr15.le, %.split.loop.exit16 ], [ null, %_ZNK4llvm9StringRef18equals_insensitiveES0_.exit.thread ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN22EmulateInstructionMIPS13Emulate_ADDiuERN4llvm6MCInstE(ptr noundef nonnull align 8 dereferenceable(541) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %"struct.lldb_private::EmulateInstruction::Context", align 8 ; 12 uses
  %3 = alloca %"class.std::optional.189", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 0, ptr %i.a, align 1, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 3 uses
end_hunk_0
