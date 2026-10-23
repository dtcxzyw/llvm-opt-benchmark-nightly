Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/fault_injection_fs?download=true
inline.NumInlined: 2916
inline.NumDeleted: 952
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb22TestFSRandomAccessFileC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOSt10unique_ptrINS_18FSRandomAccessFileESt14default_deleteISA_EEPNS_20FaultInjectionTestFSE:bb.a
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.x = load i64, ptr %i.r, align 8, !tbaa !32
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.aa = zext i1 %i.u to i8
  store i8 %i.aa, ptr %i.z, align 8, !tbaa !224
  ret void

bb.g:                                             ; preds = %._crit_edge.i.i12
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.g
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !32
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !214 ; 3 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #31, !inline_history !7
  br label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit
  %i.am = load i64, ptr %i.b, align 8, !tbaa !32
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  resume { ptr, i32 } %i.ab
}

declare noundef zeroext i1 @_ZN7rocksdb8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb22TestFSRandomAccessFile4ReadEmmRKNS_9IOOptionsEPNS_5SliceEPcPNS_14IODebugContextE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(57) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.rocksdb::InjectedErrorLog::TaggedEntryDetail", align 8 ; 7 uses
  %9 = alloca %"class.rocksdb::IOStatus", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  tail call void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.e = load i8, ptr %i.d, align 8, !tbaa !131, !range !58, !noundef !59
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZN7rocksdb20FaultInjectionTestFS18IsFilesystemActiveEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #35
  unreachable

_ZN7rocksdb20FaultInjectionTestFS18IsFilesystemActiveEv.exit: ; preds = %bb.a
  %i.h = trunc nuw i8 %i.e to i1
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb20FaultInjectionTestFS18IsFilesystemActiveEv.exit
  tail call void @_ZN7rocksdb20FaultInjectionTestFS8GetErrorEv(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(496) %i.i)
  br label %bb.i

bb.d:                                             ; preds = %_ZN7rocksdb20FaultInjectionTestFS18IsFilesystemActiveEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false), !alias.scope !441
  store i8 4, ptr %8, align 8, !tbaa !45, !alias.scope !441
  store i64 %2, ptr %i.k, align 8, !tbaa !199, !alias.scope !441
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %3, ptr %i.m, align 8, !tbaa !196, !alias.scope !441
  %i.n = load ptr, ptr %1, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(57) %1)
  call void @_ZN7rocksdb20FaultInjectionTestFS31MaybeInjectThreadLocalReadErrorERKNS_9IOOptionsEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16InjectedErrorLog17TaggedEntryDetailENS0_14ErrorOperationEPNS_5SliceEbPcbPb(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(496) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(84) %4, ptr noundef nonnull @.str.67, ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(80) %8, i8 noundef signext 0, ptr noundef %5, i1 noundef zeroext %i.q, ptr noundef readnone %6, i1 noundef zeroext true, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.r = load i8, ptr %0, align 8, !tbaa !67
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !214  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %0, %9
  br i1 %.not.i, label %_ZN7rocksdb8IOStatusaSEOS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %9, align 8, !tbaa !133
  store i8 %i.y, ptr %0, align 8, !tbaa !67
  store i8 0, ptr %9, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !68
  store i8 0, ptr %i.z, align 1, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !57, !range !58, !noundef !59
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !60, !range !58, !noundef !59
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ag, ptr %i.ah, align 4, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !135
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !135
  store i8 0, ptr %i.ai, align 1, !tbaa !135
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !63
  store ptr null, ptr %i.al, align 8, !tbaa !63
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !63 ; 2 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !63
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb8IOStatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #33
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit

_ZN7rocksdb8IOStatusaSEOS0_.exit:                 ; preds = %bb.f, %bb.g, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !63 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.at, null
  br i1 %.not.i.i17, label %_ZN7rocksdb6StatusD2Ev.exit19, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.at) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit19

_ZN7rocksdb6StatusD2Ev.exit19:                    ; preds = %bb.h, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i18
  resume { ptr, i32 } %i.ar

bb.i:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22TestFSRandomAccessFile9ReadAsyncERNS_13FSReadRequestERKNS_9IOOptionsESt8functionIFvS2_PvEES7_PS7_PS6_IFvS7_EEPNS_14IODebugContextE(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::IOStatus") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(57) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef align 8 %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree readnone captures(none) %8) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %11 = alloca %"struct.rocksdb::FSReadRequest", align 8 ; 18 uses
  %12 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %13 = alloca %"struct.rocksdb::InjectedErrorLog::TaggedEntryDetail", align 8 ; 7 uses
  %14 = alloca %"class.rocksdb::IOStatus", align 8 ; 13 uses
  %15 = alloca %"class.std::function", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr @.str.18, ptr %i.c, align 8, !tbaa !154
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.d, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store i8 0, ptr %0, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.h, align 8, !tbaa !69
  store i32 0, ptr %i.g, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !223  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  %i.m = load i8, ptr %i.l, align 8, !tbaa !131, !range !58, !noundef !59
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #35
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.p = trunc nuw i8 %i.m to i1
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !223  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  invoke void @_ZN7rocksdb4port5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.noexc21 unwind label %bb.j

.noexc21:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %i.t = load i8, ptr %i.s, align 8, !tbaa !67, !noalias !447 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 297
  %i.v = load i8, ptr %i.u, align 1, !tbaa !68, !noalias !447
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 299
  %i.x = load i16, ptr %i.w, align 1, !noalias !447
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 301
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !135, !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !447
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 304
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63, !noalias !447 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc21
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull %i.ad)
          to label %bb.f unwind label %_ZN7rocksdb6StatusD2Ev.exit.i.i, !noalias !447

bb.f:                                             ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !63, !noalias !447
  br label %.thread.i.i

_ZN7rocksdb6StatusD2Ev.exit.i.i:                  ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !447
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %.body unwind label %bb.h, !noalias !447

.thread.i.i:                                      ; preds = %bb.f, %.noexc21
  %storemerge.i = phi ptr [ %.pre.i.i, %bb.f ], [ null, %.noexc21 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !447
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %bb.k unwind label %bb.g, !noalias !447

bb.g:                                             ; preds = %.thread.i.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #35, !noalias !447
  unreachable

bb.h:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #35, !noalias !447
  unreachable

bb.i:                                             ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.a
  %.sroa.2385.0 = phi ptr [ %.sroa.2385.2106, %bb.ad ], [ %.sroa.2385.2106, %bb.ae ], [ %.sroa.2385.2106, %bb.aa ], [ null, %bb.a ]
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.thread.i.i
  %.sroa.13.5.insert.ext = zext i8 %i.ab to i32
  %.sroa.13.5.insert.shift = shl nuw i32 %.sroa.13.5.insert.ext, 24
  %.sroa.13.5.insert.insert = or disjoint i32 %.sroa.13.5.insert.shift, %i.z
  %i.al = icmp eq i8 %i.t, 0
  br i1 %i.al, label %.thread, label %.thread97

.thread:                                          ; preds = %bb.c, %bb.k
  %.sroa.2385.195 = phi ptr [ %storemerge.i, %bb.k ], [ null, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 56, i1 false), !alias.scope !448
  store i8 4, ptr %13, align 8, !tbaa !45, !alias.scope !448
  %i.ap = load <2 x i64>, ptr %2, align 8, !tbaa !43
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !43, !alias.scope !448
  %i.aq = load ptr, ptr %1, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(57) %1)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !236
  invoke void @_ZN7rocksdb20FaultInjectionTestFS31MaybeInjectThreadLocalReadErrorERKNS_9IOOptionsEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16InjectedErrorLog17TaggedEntryDetailENS0_14ErrorOperationEPNS_5SliceEbPcbPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %12, ptr noundef nonnull align 8 dereferenceable(496) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(84) %3, ptr noundef nonnull @.str.68, ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(80) %13, i8 noundef signext 0, ptr noundef nonnull %i.c, i1 noundef zeroext %i.at, ptr noundef readnone %i.aw, i1 noundef zeroext true, ptr noundef null)
          to label %_ZN7rocksdb20FaultInjectionTestFS27MaybeInjectThreadLocalErrorENS_20FaultInjectionIOTypeERKNS_9IOOptionsEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16InjectedErrorLog17TaggedEntryDetailENS0_14ErrorOperationEPNS_5SliceEbPcbPb.exit unwind label %bb.m

_ZN7rocksdb20FaultInjectionTestFS27MaybeInjectThreadLocalErrorENS_20FaultInjectionIOTypeERKNS_9IOOptionsEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16InjectedErrorLog17TaggedEntryDetailENS0_14ErrorOperationEPNS_5SliceEbPcbPb.exit: ; preds = %bb.l
  %i.ax = load i8, ptr %12, align 8, !tbaa !133   ; 2 uses
  store i8 0, ptr %12, align 8, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !134
  store i8 0, ptr %i.ay, align 1, !tbaa !68
  %16 = getelementptr inbounds nuw i8, ptr %12, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !57, !range !58, !noundef !59
  %.sroa.13.3.insert.ext71 = zext nneg i8 %17 to i32
  %.sroa.13.3.insert.shift72 = shl nuw nsw i32 %.sroa.13.3.insert.ext71, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 4
  %18 = load i8, ptr %i.ba, align 4, !tbaa !60, !range !58, !noundef !59
  %.sroa.13.4.insert.ext76 = zext nneg i8 %18 to i32
  %.sroa.13.4.insert.shift77 = shl nuw nsw i32 %.sroa.13.4.insert.ext76, 16
  %.sroa.13.4.insert.insert79 = or disjoint i32 %.sroa.13.3.insert.shift72, %.sroa.13.4.insert.shift77
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 5 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !135
  %.sroa.13.5.insert.ext81 = zext i8 %i.bc to i32
  %.sroa.13.5.insert.shift82 = shl nuw i32 %.sroa.13.5.insert.ext81, 24
  %.sroa.13.5.insert.insert84 = or disjoint i32 %.sroa.13.4.insert.insert79, %.sroa.13.5.insert.shift82
  store i8 0, ptr %i.bb, align 1, !tbaa !135
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !63 ; 3 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !63
  %.not.i.i.i.i.i23 = icmp eq ptr %.sroa.2385.195, null
  br i1 %.not.i.i.i.i.i23, label %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread, label %_ZN7rocksdb8IOStatusaSEOS0_.exit25

_ZN7rocksdb8IOStatusaSEOS0_.exit25:               ; preds = %_ZN7rocksdb20FaultInjectionTestFS27MaybeInjectThreadLocalErrorENS_20FaultInjectionIOTypeERKNS_9IOOptionsEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16InjectedErrorLog17TaggedEntryDetailENS0_14ErrorOperationEPNS_5SliceEbPcbPb.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.2385.195) #33
  %.pr = load ptr, ptr %i.bd, align 8, !tbaa !63  ; 2 uses
  %.not.i.i26 = icmp eq ptr %.pr, null
  br i1 %.not.i.i26, label %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i27

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i27: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit25
  call void @_ZdaPv(ptr noundef nonnull %.pr) #33
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread

bb.m:                                             ; preds = %bb.l, %.thread
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %.body

_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread:        ; preds = %_ZN7rocksdb20FaultInjectionTestFS27MaybeInjectThreadLocalErrorENS_20FaultInjectionIOTypeERKNS_9IOOptionsEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16InjectedErrorLog17TaggedEntryDetailENS0_14ErrorOperationEPNS_5SliceEbPcbPb.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i27, %_ZN7rocksdb8IOStatusaSEOS0_.exit25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  %i.bg = icmp eq i8 %i.ax, 0
  br i1 %i.bg, label %bb.n, label %.thread97

bb.n:                                             ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !214 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !237 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN7rocksdb13FSReadRequestEPvEEC2ERKS5_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.bn = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !238
  store <2 x ptr> %i.bn, ptr %i.bj, align 8, !tbaa !238
  br label %_ZNSt8functionIFvRN7rocksdb13FSReadRequestEPvEEC2ERKS5_.exit

bb.q:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !237 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i29, label %.body30, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %.body30 unwind label %bb.s    ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #35
  unreachable

_ZNSt8functionIFvRN7rocksdb13FSReadRequestEPvEEC2ERKS5_.exit: ; preds = %bb.p, %bb.n
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8
  invoke void %i.bv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(84) %3, ptr noundef nonnull align 8 %15, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %_ZNSt8functionIFvRN7rocksdb13FSReadRequestEPvEEC2ERKS5_.exit
  %.not.i = icmp eq ptr %0, %14
  br i1 %.not.i, label %_ZN7rocksdb8IOStatusaSEOS0_.exit34, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = load i8, ptr %14, align 8, !tbaa !133
  store i8 %i.bw, ptr %0, align 8, !tbaa !67
  store i8 0, ptr %14, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !134
  store i8 %i.by, ptr %i.f, align 1, !tbaa !68
  store i8 0, ptr %i.bx, align 1, !tbaa !68
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !57, !range !58, !noundef !59
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !60, !range !58, !noundef !59
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.cd, ptr %i.ce, align 4, !tbaa !60
  %i.cf = getelementptr inbounds nuw i8, ptr %14, i64 5 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !135
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !135
  store i8 0, ptr %i.cf, align 1, !tbaa !135
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !63
  store ptr null, ptr %i.ci, align 8, !tbaa !63
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  store ptr %i.cj, ptr %i.h, align 8, !tbaa !63
  %.not.i.i.i.i.i32 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i32, label %_ZN7rocksdb8IOStatusaSEOS0_.exit34, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i33

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i33: ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.ck) #33
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit34

_ZN7rocksdb8IOStatusaSEOS0_.exit34:               ; preds = %bb.t, %bb.u, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i33
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !63 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i35, label %_ZN7rocksdb6StatusD2Ev.exit37, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i36

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i36: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit34
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit37

_ZN7rocksdb6StatusD2Ev.exit37:                    ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit34, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i36
  %i.cn = load ptr, ptr %i.bj, align 8, !tbaa !237 ; 2 uses
  %.not.i38 = icmp eq ptr %i.cn, null
  br i1 %.not.i38, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit37
  %i.co = invoke noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN7rocksdb6StatusD2Ev.exit37, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.af

bb.x:                                             ; preds = %_ZNSt8functionIFvRN7rocksdb13FSReadRequestEPvEEC2ERKS5_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %i.bj, align 8, !tbaa !237 ; 2 uses
  %.not.i39 = icmp eq ptr %i.cs, null
  br i1 %.not.i39, label %.body30, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %.body30 unwind label %bb.z    ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #35
  unreachable

.body30:                                          ; preds = %bb.y, %bb.x, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.q ], [ %i.cr, %bb.y ], [ %i.bo, %bb.r ], [ %i.cr, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %.body

.thread97:                                        ; preds = %bb.k, %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread
  %.sroa.2385.2106 = phi ptr [ %i.be, %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread ], [ %storemerge.i, %bb.k ] ; 6 uses
  %.sroa.066.1104 = phi i8 [ %i.ax, %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread ], [ %i.t, %bb.k ]
  %.sroa.969.1103 = phi i8 [ %i.az, %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread ], [ %i.v, %bb.k ]
  %.sroa.13.1102 = phi i32 [ %.sroa.13.5.insert.insert84, %_ZN7rocksdb8IOStatusaSEOS0_.exit25.thread ], [ %.sroa.13.5.insert.insert, %bb.k ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i8 %.sroa.066.1104, ptr %i.cw, align 8, !tbaa !67
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 41
  store i8 %.sroa.969.1103, ptr %i.cx, align 1, !tbaa !68
  %.sroa.13.3.extract.shift = lshr i32 %.sroa.13.1102, 8
  %.sroa.13.3.extract.trunc = trunc i32 %.sroa.13.3.extract.shift to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 43
  store i8 %.sroa.13.3.extract.trunc, ptr %i.cy, align 1, !tbaa !57
  %.sroa.13.4.extract.shift = lshr i32 %.sroa.13.1102, 16
  %.sroa.13.4.extract.trunc = trunc i32 %.sroa.13.4.extract.shift to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i8 %.sroa.13.4.extract.trunc, ptr %i.cz, align 4, !tbaa !60
  %.sroa.13.5.extract.shift = lshr i32 %.sroa.13.1102, 24
  %.sroa.13.5.extract.trunc = trunc nuw i32 %.sroa.13.5.extract.shift to i8
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 45
  store i8 %.sroa.13.5.extract.trunc, ptr %i.da, align 1, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %.not.i.i42 = icmp eq ptr %.sroa.2385.2106, null
  br i1 %.not.i.i42, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread97
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, ptr noundef nonnull %.sroa.2385.2106)
          to label %.noexc45 unwind label %bb.i

.noexc45:                                         ; preds = %bb.aa
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !63
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc45, %.thread97
  %i.db = phi ptr [ %.pre.i, %.noexc45 ], [ null, %.thread97 ]
end_hunk_0
