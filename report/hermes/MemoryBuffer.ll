begin_hunk_0_@_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb:bb.a
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !17, !noalias !60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !60
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #22, !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !60
  br label %_ZL13shouldUseMmapimmlbib.exit.thread.i

end_hunk_0
begin_hunk_1_@_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb:bb.a

bb.q:                                             ; preds = %bb.r, %bb.p
  store i32 0, ptr %i.bp, align 4, !tbaa !3, !noalias !60
  %i.br = call noundef i64 @pread(i32 noundef %i.h, ptr noundef %.0101.i, i64 noundef %.066100.i, i64 noundef %i.bq) #22, !noalias !60 ; 3 uses
  switch i64 %i.br, label %bb.s [
    i64 -1, label %bb.r
    i64 0, label %.thread81.i
end_hunk_1
begin_hunk_2_@_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb:bb.a
bb.r:                                             ; preds = %bb.q
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !3, !noalias !60 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 4
  br i1 %i.bt, label %bb.q, label %bb.t, !llvm.loop !73

.thread81.i:                                      ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 1 %.0101.i, i8 0, i64 %.066100.i, i1 false), !noalias !60
end_hunk_2
begin_hunk_3_@_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb:bb.a
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !17, !noalias !60
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !60
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.bg) #22, !noalias !60
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i

_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i: ; preds = %bb.t, %.thread86.i, %.thread113.i
end_hunk_3
begin_hunk_4_@_ZL16getReadWriteFileRKN4llvh5TwineEmmm:bb.a
  %i.ax = and i8 %i.aw, -2
  store i8 %i.ax, ptr %i.av, align 8
  %i.ay = ptrtoint ptr %i.ab to i64
  store i64 %i.ay, ptr %0, align 8, !tbaa !75
  br label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNKSt14default_deleteIN4llvh24WriteThroughMemoryBufferEEclEPS1_.exit.i: ; preds = %bb.i, %_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEC2EbimmRSt10error_code.exit
end_hunk_4
begin_hunk_5_@_ZL16getReadWriteFileRKN4llvh5TwineEmmm:bb.a
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(24) %i.ab) #22
  br label %_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh24WriteThroughMemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %bb.h, %_ZNKSt14default_deleteIN4llvh24WriteThroughMemoryBufferEEclEPS1_.exit.i, %.thread36, %.thread, %bb.b
end_hunk_5
begin_hunk_6_@_ZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb:bb.a
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %_ZL13shouldUseMmapimmlbib.exit.thread

end_hunk_6
begin_hunk_7_@_ZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb:bb.a

bb.v:                                             ; preds = %bb.w, %bb.u
  store i32 0, ptr %i.ca, align 4, !tbaa !3
  %i.cc = call noundef i64 @pread(i32 noundef %1, ptr noundef %.0102, i64 noundef %.066101, i64 noundef %i.cb) #22 ; 3 uses
  switch i64 %i.cc, label %bb.x [
    i64 -1, label %bb.w
    i64 0, label %.thread81
end_hunk_7
begin_hunk_8_@_ZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !3  ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 4
  br i1 %i.ce, label %bb.v, label %_ZNKSt14default_deleteIN4llvh20WritableMemoryBufferEEclEPS1_.exit.i, !llvm.loop !73

.thread81:                                        ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr align 1 %.0102, i8 0, i64 %.066101, i1 false)
end_hunk_8
begin_hunk_9_@_ZL15getOpenFileImplIN4llvh12MemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb:bb.a
  %i.co = load ptr, ptr %i.bs, align 8, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #22
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread114, %.thread86, %_ZNKSt14default_deleteIN4llvh20WritableMemoryBufferEEclEPS1_.exit.i
end_hunk_9
begin_hunk_10_@_ZL24getMemoryBufferForStreamiRKN4llvh5TwineE:bb.a

bb.d:                                             ; preds = %bb.e, %_ZN4llvh15SmallVectorImplIcE7reserveEm.exit
  store i32 0, ptr %i.l, align 4, !tbaa !3
  %i.m = call noundef i64 @read(i32 noundef %1, ptr noundef %i.k, i64 noundef 16384) #22 ; 3 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %_ZN4llvh3sys16RetryAfterSignalIiFliPvmEJiPclEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.d, label %bb.f, !llvm.loop !77

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #25
end_hunk_10
begin_hunk_11_@_ZL24getMemoryBufferForStreamiRKN4llvh5TwineE:bb.a
  %i.w = add i32 %i.u, %i.v                       ; 3 uses
  store i32 %i.w, ptr %i.b, align 8, !tbaa !23
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.g, label %bb.b, !llvm.loop !78

bb.g:                                             ; preds = %_ZN4llvh3sys16RetryAfterSignalIiFliPvmEJiPclEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit
  %i.x = load ptr, ptr %4, align 8, !tbaa !21
  %i.y = zext i32 %i.w to i64                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !79
  call void @_ZN4llvh20WritableMemoryBuffer21getNewUninitMemBufferEmRKNS_5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.4") align 8 %3, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(18) %2), !noalias !79
  %i.z = load ptr, ptr %3, align 8, !noalias !79  ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7, !noalias !79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr readonly align 1 %i.x, i64 %i.y, i1 false), !noalias !79
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !alias.scope !79
  %i.af = and i8 %i.ae, -2
  store i8 %i.af, ptr %i.ad, align 8, !alias.scope !79
  store i64 %i.aa, ptr %0, align 8, !tbaa !45, !alias.scope !79
  br label %_ZL20getMemBufferCopyImplN4llvh9StringRefERKNS_5TwineE.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !alias.scope !79
  %i.aj = or i8 %i.ai, 1
  store i8 %i.aj, ptr %i.ah, align 8, !alias.scope !79
  store i32 12, ptr %0, align 8, !tbaa !3, !alias.scope !79
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !43, !alias.scope !79
  br label %_ZL20getMemBufferCopyImplN4llvh9StringRefERKNS_5TwineE.exit

_ZL20getMemBufferCopyImplN4llvh9StringRefERKNS_5TwineE.exit: ; preds = %.thread.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !79
  br label %bb.i

bb.i:                                             ; preds = %_ZL20getMemBufferCopyImplN4llvh9StringRefERKNS_5TwineE.exit, %bb.f
end_hunk_11
begin_hunk_12_@_ZN4llvh23SmallVectorMemoryBufferD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_12
begin_hunk_13_@_ZN4llvh23SmallVectorMemoryBufferD0Ev:bb.a
  br i1 %i.i, label %_ZN4llvh23SmallVectorMemoryBufferD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  tail call void @free(ptr noundef %i.h) #22
  br label %_ZN4llvh23SmallVectorMemoryBufferD2Ev.exit

_ZN4llvh23SmallVectorMemoryBufferD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b
end_hunk_13
begin_hunk_14_@_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEED0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh24WriteThroughMemoryBufferEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvh3sys2fs18mapped_file_regionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.a) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}
end_hunk_14
begin_hunk_15_@_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh20WritableMemoryBufferEED0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh20WritableMemoryBufferEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvh3sys2fs18mapped_file_regionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.a) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}
end_hunk_15
begin_hunk_16_@_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh12MemoryBufferEED0Ev:bb.a
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh12MemoryBufferEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvh3sys2fs18mapped_file_regionD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.a) #22
  tail call void @_ZdlPv(ptr noundef nonnull %0) #22
  ret void
}
end_hunk_16
begin_hunk_17_@llvm.experimental.noalias.scope.decl
!70 = !{!71, !4, i64 0}
!71 = !{!"_ZTSSt10error_code", !4, i64 0, !44, i64 8}
!72 = !{!71, !44, i64 8}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!76, !76, i64 0}
!76 = !{!"p1 _ZTSN4llvh24WriteThroughMemoryBufferE", !10, i64 0}
!77 = distinct !{!77, !74}
!78 = distinct !{!78, !74}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZL20getMemBufferCopyImplN4llvh9StringRefERKNS_5TwineE: argument 0"}
!81 = distinct !{!81, !"_ZL20getMemBufferCopyImplN4llvh9StringRefERKNS_5TwineE"}
end_hunk_17
