inline.NumInlined: 168
inline.NumDeleted: 113
begin_hunk_0_@_ZNK5arrow8internal6Bitmap4DiffB5cxx11ERKS1_:bb.a
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #14, !inline_history !80
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #14, !inline_history !80
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZNK5arrow8internal6Bitmap4DiffB5cxx11ERKS1_:bb.a
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #14, !inline_history !80
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #14, !inline_history !80
  br label %_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

bb.n:                                             ; preds = %bb.l
end_hunk_1
begin_hunk_2_@_ZNK5arrow8internal6Bitmap4DiffB5cxx11ERKS1_:bb.a
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #14, !inline_history !81
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #14, !inline_history !81
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
end_hunk_2
begin_hunk_3_@_ZNK5arrow8internal6Bitmap4DiffB5cxx11ERKS1_:bb.a
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #14, !inline_history !81
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #14, !inline_history !81
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

bb.z:                                             ; preds = %bb.x
end_hunk_3
begin_hunk_4_@_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !82
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !82
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !82
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !82
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal6Bitmap8CopyFromERKS1_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  tail call void @_ZN5arrow8internal10CopyBitmapEPKhllPhl(ptr noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, ptr noundef %i.g, i64 noundef %i.i)
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal6Bitmap16CopyFromInvertedERKS1_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  tail call void @_ZN5arrow8internal12InvertBitmapEPKhllPhl(ptr noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, ptr noundef %i.g, i64 noundef %i.i)
end_hunk_7
begin_hunk_8_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !84
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i = icmp eq i8 %i.e, 0
end_hunk_8
begin_hunk_9_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #14, !inline_history !84
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_9
begin_hunk_10_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6BufferEEEvRS0_PT_.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #14, !inline_history !85
  ret void
}

end_hunk_10
begin_hunk_11_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_11
begin_hunk_12_@_ZN5arrow6BufferC2EPKhl:bb.a
  %3 = alloca %"class.std::shared_ptr.17", align 16 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !57
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
end_hunk_12
begin_hunk_13_@_ZN5arrow6BufferC2EPKhl:bb.a
bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !102
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !61   ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !102
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

end_hunk_13
begin_hunk_14_@_ZN5arrow6BufferC2EPKhl:bb.a
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #14, !inline_history !103
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #14, !inline_history !103
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
end_hunk_14
begin_hunk_15_@_ZN5arrow6BufferC2EPKhl:bb.a
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !105 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !108, !range !114, !noundef !115
  store i8 %i.af, ptr %i.b, align 1, !tbaa !97
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
end_hunk_15
begin_hunk_16_@_ZN5arrow6BufferC2EPKhl:bb.a
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !101
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !61  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j
end_hunk_16
begin_hunk_17_@_ZN5arrow6BufferC2EPKhl:bb.a
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #14, !inline_history !116
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #14, !inline_history !116
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
end_hunk_17
begin_hunk_18_@_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !82
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !82
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_18
begin_hunk_19_@_ZN5arrow6BufferD2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !116
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !116
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_19
begin_hunk_20_@_ZN5arrow6BufferD2Ev:bb.a
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14, !inline_history !81
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #14, !inline_history !81
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
end_hunk_20
begin_hunk_21_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRKlRSt10shared_ptrINS4_6BufferEEDniS8_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRKlRSt10shared_ptrINS4_6BufferEEDniS8_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #13, !noalias !117 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
end_hunk_21
begin_hunk_22_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRKlRSt10shared_ptrINS4_6BufferEEDniS8_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:bb.a
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #14, !inline_history !120
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #14, !inline_history !120
  br label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
end_hunk_22
begin_hunk_23_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow12BooleanArrayESaIvEJRKlRSt10shared_ptrINS4_6BufferEEDniS8_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:bb.a
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  store ptr %i.a, ptr %0, align 8, !tbaa !61
  store ptr %i.d, ptr %1, align 8, !tbaa !121
  ret void
}

end_hunk_23
begin_hunk_24_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12BooleanArrayEEEvRS0_PT_.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #14, !inline_history !122
  ret void
}

end_hunk_24
begin_hunk_25_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_25
begin_hunk_26_@llvm.experimental.noalias.scope.decl
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZSt11make_sharedIN5arrow12BooleanArrayEJRKlRSt10shared_ptrINS0_6BufferEEDniS3_EES4_IT_EDpOT0_: argument 0"}
!79 = distinct !{!79, !"_ZSt11make_sharedIN5arrow12BooleanArrayEJRKlRSt10shared_ptrINS0_6BufferEEDniS3_EES4_IT_EDpOT0_"}
!80 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12BooleanArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!81 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!82 = distinct !{null, null}
!83 = !{!34, !35, i64 8}
!84 = distinct !{null}
!85 = distinct !{null, null}
!86 = !{!87, !35, i64 8}
!87 = !{!"_ZTSSt9type_info", !35, i64 8}
!88 = !{!89, !90, i64 8}
!89 = !{!"_ZTSN5arrow6BufferE", !90, i64 8, !90, i64 9, !35, i64 16, !28, i64 24, !28, i64 32, !91, i64 40, !92, i64 48, !94, i64 64}
!90 = !{!"bool", !5, i64 0}
!91 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!92 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !93, i64 0}
!93 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0, !62, i64 8}
!94 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !95, i64 0}
!95 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !96, i64 0, !62, i64 8}
!96 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !36, i64 0}
!97 = !{!89, !90, i64 9}
!98 = !{!89, !35, i64 16}
!99 = !{!89, !28, i64 24}
!100 = !{!89, !28, i64 32}
!101 = !{!89, !91, i64 40}
!102 = !{!36, !36, i64 0}
!103 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!104 = !{!95, !96, i64 0}
!105 = !{!106, !107, i64 0}
!106 = !{!"_ZTSSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !62, i64 8}
!107 = !{!"p1 _ZTSN5arrow6DeviceE", !36, i64 0}
!108 = !{!109, !90, i64 24}
!109 = !{!"_ZTSN5arrow6DeviceE", !110, i64 8, !90, i64 24}
!110 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6DeviceEE", !111, i64 0}
!111 = !{!"_ZTSSt8weak_ptrIN5arrow6DeviceEE", !112, i64 0}
!112 = !{!"_ZTSSt10__weak_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !113, i64 8}
!113 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !63, i64 0}
!114 = !{i8 0, i8 2}
!115 = !{}
!116 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!119 = distinct !{!119, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow12BooleanArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!120 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!121 = !{!76, !76, i64 0}
!122 = distinct !{null, null}
end_hunk_26
