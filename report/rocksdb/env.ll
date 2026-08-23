Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/env?download=true
inline.NumInlined: 3249
inline.NumDeleted: 1495
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_123LegacyFileSystemWrapper19NewRandomAccessFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11FileOptionsEPSt10unique_ptrINS_18FSRandomAccessFileESt14default_deleteISE_EEPNS_14IODebugContextE:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_129LegacyRandomAccessFileWrapperE, i64 16), ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %6, align 8, !tbaa !554
  store i64 %i.j, ptr %i.i, align 8, !tbaa !554
  store ptr null, ptr %6, align 8, !tbaa !554
  %i.k = load ptr, ptr %4, align 8, !tbaa !555    ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !555
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #37, !inline_history !557
  br label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit13

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.r, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit13, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i.i, %bb.d, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  store i8 0, ptr %0, align 8, !tbaa !112, !alias.scope !558
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.s, align 1, !tbaa !267, !alias.scope !558
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !124, !alias.scope !558
  store i32 0, ptr %i.t, align 2, !alias.scope !558
  %.not.i.i9 = icmp eq ptr %0, %7
  br i1 %.not.i.i9, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread: ; preds = %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.v = load <4 x i8>, ptr %7, align 8, !tbaa !15, !noalias !558
  store <4 x i8> %i.v, ptr %0, align 8, !tbaa !15, !alias.scope !558
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !15, !noalias !558
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !156, !range !157, !noalias !558, !noundef !158
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.x, ptr %i.y, align 4, !tbaa !147, !alias.scope !558
  store i8 0, ptr %i.w, align 4, !tbaa !147, !noalias !558
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15, !noalias !558
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !123, !alias.scope !558
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !125, !noalias !558
  store ptr %i.ad, ptr %i.u, align 8, !tbaa !125, !alias.scope !558
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  %.not.i.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ae = load ptr, ptr %6, align 8, !tbaa !554   ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb16RandomAccessFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb16RandomAccessFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb16RandomAccessFileEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #37, !inline_history !561
  br label %_ZNSt10unique_ptrIN7rocksdb16RandomAccessFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb16RandomAccessFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb16RandomAccessFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.r) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit13

_ZN7rocksdb6StatusD2Ev.exit13:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.p, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ai = load ptr, ptr %6, align 8, !tbaa !554   ; 3 uses
  %.not.i14 = icmp eq ptr %i.ai, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN7rocksdb16RandomAccessFileESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN7rocksdb16RandomAccessFileEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN7rocksdb16RandomAccessFileEEclEPS1_.exit.i15: ; preds = %_ZN7rocksdb6StatusD2Ev.exit13
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #37, !inline_history !561
  br label %_ZNSt10unique_ptrIN7rocksdb16RandomAccessFileESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN7rocksdb16RandomAccessFileESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZN7rocksdb6StatusD2Ev.exit13, %_ZNKSt14default_deleteIN7rocksdb16RandomAccessFileEEclEPS1_.exit.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_123LegacyFileSystemWrapper15NewWritableFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11FileOptionsEPSt10unique_ptrINS_14FSWritableFileESt14default_deleteISE_EEPNS_14IODebugContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::IOStatus") align 8 captures(address) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.48", align 8 ; 9 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr null, ptr %6, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %7, align 8, !tbaa !112
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36
          to label %bb.d unwind label %bb.f       ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 4, ptr %i.j, align 8, !tbaa !562
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !564
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !565
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_125LegacyWritableFileWrapperE, i64 16), ptr %i.h, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = load i64, ptr %6, align 8, !tbaa !235
  store i64 %i.n, ptr %i.m, align 8, !tbaa !235
  store ptr null, ptr %6, align 8, !tbaa !235
  %i.o = load ptr, ptr %4, align 8, !tbaa !135    ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !135
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(33) %i.o) #37, !inline_history !566
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit13

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !125  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.v, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit13, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i, %bb.d, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  store i8 0, ptr %0, align 8, !tbaa !112, !alias.scope !567
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !267, !alias.scope !567
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !124, !alias.scope !567
  store i32 0, ptr %i.x, align 2, !alias.scope !567
  %.not.i.i9 = icmp eq ptr %0, %7
  br i1 %.not.i.i9, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.z = load <4 x i8>, ptr %7, align 8, !tbaa !15, !noalias !567
  store <4 x i8> %i.z, ptr %0, align 8, !tbaa !15, !alias.scope !567
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !15, !noalias !567
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !156, !range !157, !noalias !567, !noundef !158
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !147, !alias.scope !567
  store i8 0, ptr %i.aa, align 4, !tbaa !147, !noalias !567
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15, !noalias !567
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !123, !alias.scope !567
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !125, !noalias !567
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !125, !alias.scope !567
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  %.not.i.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ai = load ptr, ptr %6, align 8, !tbaa !235   ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(33) %i.ai) #37, !inline_history !236
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.v) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit13

_ZN7rocksdb6StatusD2Ev.exit13:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.am = load ptr, ptr %6, align 8, !tbaa !235   ; 3 uses
  %.not.i14 = icmp eq ptr %i.am, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i15: ; preds = %_ZN7rocksdb6StatusD2Ev.exit13
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(33) %i.am) #37, !inline_history !236
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZN7rocksdb6StatusD2Ev.exit13, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_123LegacyFileSystemWrapper18ReopenWritableFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11FileOptionsEPSt10unique_ptrINS_14FSWritableFileESt14default_deleteISE_EEPNS_14IODebugContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::IOStatus") align 8 captures(address) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.48", align 8 ; 9 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr null, ptr %6, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %7, align 8, !tbaa !112
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36
          to label %bb.d unwind label %bb.f       ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 4, ptr %i.j, align 8, !tbaa !562
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !564
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !565
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_125LegacyWritableFileWrapperE, i64 16), ptr %i.h, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = load i64, ptr %6, align 8, !tbaa !235
  store i64 %i.n, ptr %i.m, align 8, !tbaa !235
  store ptr null, ptr %6, align 8, !tbaa !235
  %i.o = load ptr, ptr %4, align 8, !tbaa !135    ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !135
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(33) %i.o) #37, !inline_history !566
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit13

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !125  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.v, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit13, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i, %bb.d, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  store i8 0, ptr %0, align 8, !tbaa !112, !alias.scope !570
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !267, !alias.scope !570
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !124, !alias.scope !570
  store i32 0, ptr %i.x, align 2, !alias.scope !570
  %.not.i.i9 = icmp eq ptr %0, %7
  br i1 %.not.i.i9, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.z = load <4 x i8>, ptr %7, align 8, !tbaa !15, !noalias !570
  store <4 x i8> %i.z, ptr %0, align 8, !tbaa !15, !alias.scope !570
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !15, !noalias !570
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !156, !range !157, !noalias !570, !noundef !158
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !147, !alias.scope !570
  store i8 0, ptr %i.aa, align 4, !tbaa !147, !noalias !570
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15, !noalias !570
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !123, !alias.scope !570
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !125, !noalias !570
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !125, !alias.scope !570
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  %.not.i.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ai = load ptr, ptr %6, align 8, !tbaa !235   ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(33) %i.ai) #37, !inline_history !236
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.v) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit13

_ZN7rocksdb6StatusD2Ev.exit13:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.am = load ptr, ptr %6, align 8, !tbaa !235   ; 3 uses
  %.not.i14 = icmp eq ptr %i.am, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i15: ; preds = %_ZN7rocksdb6StatusD2Ev.exit13
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(33) %i.am) #37, !inline_history !236
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZN7rocksdb6StatusD2Ev.exit13, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_123LegacyFileSystemWrapper17ReuseWritableFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKNS_11FileOptionsEPSt10unique_ptrINS_14FSWritableFileESt14default_deleteISE_EEPNS_14IODebugContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::IOStatus") align 8 captures(address) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(216) %4, ptr nofree noundef captures(none) %5, ptr nofree readnone captures(none) %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.48", align 8 ; 9 uses
  %8 = alloca %"class.rocksdb::Status", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store ptr null, ptr %7, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %8, align 8, !tbaa !112
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36
          to label %bb.d unwind label %bb.f       ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 4, ptr %i.j, align 8, !tbaa !562
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 0, ptr %i.k, align 4, !tbaa !564
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !565
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_125LegacyWritableFileWrapperE, i64 16), ptr %i.h, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.n = load i64, ptr %7, align 8, !tbaa !235
  store i64 %i.n, ptr %i.m, align 8, !tbaa !235
  store ptr null, ptr %7, align 8, !tbaa !235
  %i.o = load ptr, ptr %5, align 8, !tbaa !135    ; 3 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !135
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(33) %i.o) #37, !inline_history !566
  br label %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit14

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !125  ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.v, null
  br i1 %.not.i.i12, label %_ZN7rocksdb6StatusD2Ev.exit14, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13

_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb14FSWritableFileEEclEPS1_.exit.i.i, %bb.d, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  store i8 0, ptr %0, align 8, !tbaa !112, !alias.scope !573
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !267, !alias.scope !573
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.y, align 8, !tbaa !124, !alias.scope !573
  store i32 0, ptr %i.x, align 2, !alias.scope !573
  %.not.i.i10 = icmp eq ptr %0, %8
  br i1 %.not.i.i10, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.z = load <4 x i8>, ptr %8, align 8, !tbaa !15, !noalias !573
  store <4 x i8> %i.z, ptr %0, align 8, !tbaa !15, !alias.scope !573
  store <4 x i8> zeroinitializer, ptr %8, align 8, !tbaa !15, !noalias !573
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !156, !range !157, !noalias !573, !noundef !158
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ab, ptr %i.ac, align 4, !tbaa !147, !alias.scope !573
  store i8 0, ptr %i.aa, align 4, !tbaa !147, !noalias !573
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15, !noalias !573
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !123, !alias.scope !573
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !125, !noalias !573
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !125, !alias.scope !573
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSWritableFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  %.not.i.i11 = icmp eq ptr %.pre, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.ai = load ptr, ptr %7, align 8, !tbaa !235   ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(33) %i.ai) #37, !inline_history !236
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.v) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit14

_ZN7rocksdb6StatusD2Ev.exit14:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.am = load ptr, ptr %7, align 8, !tbaa !235   ; 3 uses
  %.not.i15 = icmp eq ptr %i.am, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit17, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i16

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i16: ; preds = %_ZN7rocksdb6StatusD2Ev.exit14
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(33) %i.am) #37, !inline_history !236
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit17: ; preds = %_ZN7rocksdb6StatusD2Ev.exit14, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_123LegacyFileSystemWrapper15NewRandomRWFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11FileOptionsEPSt10unique_ptrINS_14FSRandomRWFileESt14default_deleteISE_EEPNS_14IODebugContextE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::IOStatus") align 8 captures(address) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr nofree noundef captures(none) %4, ptr nofree readnone captures(none) %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.288", align 8 ; 9 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store ptr null, ptr %6, align 8, !tbaa !576
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %7, align 8, !tbaa !112
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNSt10unique_ptrIN7rocksdb14FSRandomRWFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #36
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_125LegacyRandomRWFileWrapperE, i64 16), ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %6, align 8, !tbaa !579
  store i64 %i.j, ptr %i.i, align 8, !tbaa !579
  store ptr null, ptr %6, align 8, !tbaa !579
  %i.k = load ptr, ptr %4, align 8, !tbaa !580    ; 3 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !580
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb14FSRandomRWFileESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb14FSRandomRWFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb14FSRandomRWFileEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #37, !inline_history !582
  br label %_ZNSt10unique_ptrIN7rocksdb14FSRandomRWFileESt14default_deleteIS1_EE5resetEPS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit13

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125  ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.r, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit13, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNSt10unique_ptrIN7rocksdb14FSRandomRWFileESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb14FSRandomRWFileEEclEPS1_.exit.i.i, %bb.d, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  store i8 0, ptr %0, align 8, !tbaa !112, !alias.scope !583
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.s, align 1, !tbaa !267, !alias.scope !583
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !124, !alias.scope !583
  store i32 0, ptr %i.t, align 2, !alias.scope !583
  %.not.i.i9 = icmp eq ptr %0, %7
  br i1 %.not.i.i9, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, label %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSRandomRWFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.v = load <4 x i8>, ptr %7, align 8, !tbaa !15, !noalias !583
  store <4 x i8> %i.v, ptr %0, align 8, !tbaa !15, !alias.scope !583
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !15, !noalias !583
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !tbaa !156, !range !157, !noalias !583, !noundef !158
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.x, ptr %i.y, align 4, !tbaa !147, !alias.scope !583
  store i8 0, ptr %i.w, align 4, !tbaa !147, !noalias !583
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15, !noalias !583
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !123, !alias.scope !583
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !125, !noalias !583
  store ptr %i.ad, ptr %i.u, align 8, !tbaa !125, !alias.scope !583
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit: ; preds = %_ZNSt10unique_ptrIN7rocksdb14FSRandomRWFileESt14default_deleteIS1_EE5resetEPS1_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  %.not.i.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i.i10, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit.thread, %_ZN7rocksdb19status_to_io_statusEONS_6StatusE.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ae = load ptr, ptr %6, align 8, !tbaa !579   ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb12RandomRWFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12RandomRWFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12RandomRWFileEEclEPS1_.exit.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #37, !inline_history !586
  br label %_ZNSt10unique_ptrIN7rocksdb12RandomRWFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12RandomRWFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt14default_deleteIN7rocksdb12RandomRWFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.r) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit13

_ZN7rocksdb6StatusD2Ev.exit13:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12, %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.p, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ai = load ptr, ptr %6, align 8, !tbaa !579   ; 3 uses
  %.not.i14 = icmp eq ptr %i.ai, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN7rocksdb12RandomRWFileESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN7rocksdb12RandomRWFileEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN7rocksdb12RandomRWFileEEclEPS1_.exit.i15: ; preds = %_ZN7rocksdb6StatusD2Ev.exit13
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #37, !inline_history !586
  br label %_ZNSt10unique_ptrIN7rocksdb12RandomRWFileESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN7rocksdb12RandomRWFileESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZN7rocksdb6StatusD2Ev.exit13, %_ZNKSt14default_deleteIN7rocksdb12RandomRWFileEEclEPS1_.exit.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_123LegacyFileSystemWrapper25NewMemoryMappedFileBufferERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10unique_ptrINS_22MemoryMappedFileBufferESt14default_deleteISB_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::IOStatus") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
end_hunk_0
