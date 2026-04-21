inline.NumInlined: 246
inline.NumDeleted: 167
begin_hunk_0_@_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_:bb.a
  br label %_ZNSt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS3_EED2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !60 ; 10 uses
  %i.bi = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_:bb.a
  tail call void @llvm.assume(i1 %.not.i.i21)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #18
          to label %.noexc23 unwind label %bb.q   ; 10 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_:bb.a

.lr.ph.i.i.i.i.preheader.a:                       ; preds = %.noexc23
  %i.bu = add i64 %i.bi, -8
  %i.bv = sub i64 %i.bu, %i.bj                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader.a
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_:bb.a
  %bound0 = icmp ult ptr %i.bs, %scevgep54
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 4611686018427387888     ; 4 uses
  %i.cc = shl i64 %n.vec, 3
  %i.cd = getelementptr i8, ptr %i.bs, i64 %i.cc  ; 2 uses
  %i.ce = shl i64 %n.vec, 3
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_:bb.a
  store <4 x ptr> zeroinitializer, ptr %i.co, align 8, !tbaa !56, !alias.scope !66, !noalias !61
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block.a, label %vector.body, !llvm.loop !71

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n.a, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader61

.lr.ph.i.i.i.i.preheader61:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader.a, %middle.block.a
  %.012.i.i.i.i.ph = phi ptr [ %i.bs, %vector.memcheck ], [ %i.bs, %.lr.ph.i.i.i.i.preheader.a ], [ %i.cd, %middle.block.a ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i.preheader.a ], [ %i.cf, %middle.block.a ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader61, %.lr.ph.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cr, %i.bc
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block.a, %.noexc23
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bs, %.noexc23 ], [ %i.cd, %middle.block.a ], [ %i.cs, %.lr.ph.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, label %bb.p
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.da, align 4, !tbaa !52
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !76
  %i.dd = sext i32 %i.dc to i64
  %i.de = shl nsw i64 %i.dd, 12
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox11StreamArena8newRangeElPNS0_9ByteRangeES3_:bb.a
  %i.dk = phi i32 [ 0, %bb.r ], [ %i.ax, %._crit_edge ] ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dl
  %.sroa.0.0.copyload.i = load i64, ptr %i.dm, align 8, !tbaa !77 ; 2 uses
  %i.dn = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox11StreamArena5clearEv:bb.a
_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6memory10AllocationEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !58
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox11StreamArena5clearEv:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.n, align 4, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.r, %i.p
end_hunk_9
begin_hunk_10_@_ZN8facebook5velox11StreamArena5clearEv:bb.a
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.05.i.i.i.i3) #15
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i4, label %_ZSt8_DestroyIPN8facebook5velox6memory20ContiguousAllocationES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !80

_ZSt8_DestroyIPN8facebook5velox6memory20ContiguousAllocationES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i2
  store ptr %i.p, ptr %i.q, align 8, !tbaa !47
end_hunk_10
begin_hunk_11_@_ZN8facebook5velox11StreamArenaD2Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN8facebook5velox11StreamArenaE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
end_hunk_11
begin_hunk_12_@_ZN8facebook5velox11StreamArenaD2Ev:bb.a
  tail call void @_ZN8facebook5velox6memory20ContiguousAllocationD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %.05.i.i.i) #15
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox6memory20ContiguousAllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !80

_ZSt8_DestroyIPN8facebook5velox6memory20ContiguousAllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPN8facebook5velox6memory20ContiguousAllocationES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox6memory20ContiguousAllocationES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory20ContiguousAllocationES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
end_hunk_12
begin_hunk_13_@_ZN8facebook5velox11StreamArenaD2Ev:bb.a
_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6memory10AllocationEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i2
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 8 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !78

_ZSt8_DestroyIPSt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8facebook5velox6memory10AllocationESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.m, align 8, !tbaa !60
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !79     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !81

_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
end_hunk_15
begin_hunk_16_@_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !81

_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
end_hunk_16
begin_hunk_17_@_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  br label %_ZNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN8facebook5velox6memory20ContiguousAllocationESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !79
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !48
end_hunk_17
begin_hunk_18_@_ZN8facebook5velox6memory20ContiguousAllocationC2EOS2_:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !82
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x i64>, ptr %i.c, align 8, !tbaa !77
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !77
  invoke void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.g

end_hunk_18
begin_hunk_19_@_ZN8facebook5velox6memory20ContiguousAllocationC2EOS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.k = zext i1 %i.g to i8
  %i.l = zext i1 %i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !83
  store i8 %i.k, ptr %2, align 16, !tbaa !34, !noalias !83
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.l, ptr %i.m, align 16, !tbaa !34, !noalias !83
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.7, i64 11, i64 119, ptr nonnull %2)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !83
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.7) #16
          to label %bb.c unwind label %bb.d

end_hunk_19
begin_hunk_20_@_ZN8facebook5velox6memory10AllocationC2EOS2_:_ZN8facebook5velox6memory10Allocation5clearEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <4 x ptr>, ptr %1, align 8, !tbaa !82
  store <4 x ptr> %i.e, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  store i32 %i.g, ptr %i.b, align 8, !tbaa !76
  store i32 0, ptr %i.f, align 8, !tbaa !76
  store ptr null, ptr %1, align 8, !tbaa !86
  %i.h = load i32, ptr %i.b, align 8, !tbaa !76
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  %i.l = icmp eq i32 %i.h, 0                      ; 3 uses
  %i.m = xor i1 %i.l, %i.k
end_hunk_20
begin_hunk_21_@_ZN8facebook5velox6memory10AllocationC2EOS2_:_ZN8facebook5velox6memory10Allocation5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.n = zext i1 %i.l to i8
  %i.o = zext i1 %i.k to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !88
  store i8 %i.n, ptr %2, align 16, !tbaa !34, !noalias !88
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %i.o, ptr %i.p, align 16, !tbaa !34, !noalias !88
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.7, i64 11, i64 119, ptr nonnull %2)
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !88
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.7) #16
          to label %bb.a unwind label %bb.b

end_hunk_21
begin_hunk_22_@llvm.smin.i64
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = distinct !{!75, !72, !73}
!76 = !{!18, !4, i64 32}
!77 = !{!29, !29, i64 0}
!78 = distinct !{!78, !72}
!79 = !{!27, !28, i64 0}
!80 = distinct !{!80, !72}
!81 = distinct !{!81, !72}
!82 = !{!12, !12, i64 0}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!85 = distinct !{!85, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!86 = !{!18, !11, i64 0}
!87 = !{!23, !23, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!90 = distinct !{!90, !"_ZN8facebook5velox12errorMessageIJbbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
end_hunk_22
