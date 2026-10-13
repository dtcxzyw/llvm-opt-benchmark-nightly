Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/env?download=true
inline.NumInlined: 3249
inline.NumDeleted: 1495
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN7rocksdb3Env8SyncFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_10EnvOptionsEb:bb.a
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %.invoke
  %.not.i = icmp eq ptr %0, %7
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load <4 x i8>, ptr %7, align 8, !tbaa !54
  store <4 x i8> %i.j, ptr %0, align 8, !tbaa !54
  store <4 x i8> zeroinitializer, ptr %7, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !159, !range !160, !noundef !161
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.l, ptr %i.m, align 4, !tbaa !154
  store i8 0, ptr %i.k, align 4, !tbaa !154
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.o, ptr %i.p, align 1, !tbaa !146
  store i8 0, ptr %i.n, align 1, !tbaa !146
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !148
  store ptr null, ptr %i.q, align 8, !tbaa !148
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !148  ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !148
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.t) #35
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.c, %bb.d, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !148  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.v) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.w = load ptr, ptr %6, align 8, !tbaa !188    ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(33) %i.w)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.aa = load i8, ptr %0, align 8, !tbaa !145
  %i.ab = icmp ne i8 %i.aa, 0
  %.not.i12 = icmp eq ptr %0, %8
  %or.cond = select i1 %i.ab, i1 true, i1 %.not.i12
  br i1 %or.cond, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load <4 x i8>, ptr %8, align 8, !tbaa !54
  store <4 x i8> %i.ac, ptr %0, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !154, !range !160, !noundef !161
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ae, ptr %i.af, align 4, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !146
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull %i.ak)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !148
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.f
  %i.al = phi ptr [ %.pre.i, %.noexc ], [ null, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %5, align 8, !tbaa !148
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !148 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !148
  %.not.i.i.i.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i14, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.an) #35
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !148  ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #35
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i15, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %_ZN7rocksdb6StatusaSERKS0_.exit

bb.i:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit28

bb.j:                                             ; preds = %.invoke
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.n

bb.k:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit19

bb.l:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !148 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.as, null
  br i1 %.not.i.i16, label %_ZN7rocksdb6StatusD2Ev.exit19, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.as) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit19

_ZN7rocksdb6StatusaSERKS0_.exit:                  ; preds = %bb.e, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !148 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.au, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit23, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21: ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.au) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit23

_ZN7rocksdb6StatusD2Ev.exit23:                    ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.m

_ZN7rocksdb6StatusD2Ev.exit19:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.k ], [ %i.ar, %bb.l ], [ %i.ar, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.n

bb.m:                                             ; preds = %bb.b, %_ZN7rocksdb6StatusD2Ev.exit23
  %i.av = load ptr, ptr %6, align 8, !tbaa !188   ; 3 uses
  %.not.i24 = icmp eq ptr %i.av, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i: ; preds = %bb.m
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(33) %i.av) #37, !inline_history !8
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  ret void

bb.n:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit19, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit19 ], [ %i.ap, %bb.j ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !148 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i25, label %_ZN7rocksdb6StatusD2Ev.exit28, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i26

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i26: ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.ba) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit28

_ZN7rocksdb6StatusD2Ev.exit28:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i26, %bb.n, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %.pn.pn, %bb.n ], [ %.pn.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i26 ]
  %i.bb = load ptr, ptr %6, align 8, !tbaa !188   ; 3 uses
  %.not.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit31, label %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i30

_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i30: ; preds = %_ZN7rocksdb6StatusD2Ev.exit28
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(33) %i.bb) #37, !inline_history !8
  br label %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZN7rocksdb6StatusD2Ev.exit28, %_ZNKSt14default_deleteIN7rocksdb12WritableFileEEclEPS1_.exit.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb3Env25GetChildrenFileAttributesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_14FileAttributesESaISA_EE(ptr dead_on_unwind noalias nofree writable sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::vector.35", align 8    ; 16 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 21 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 12 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.a = load ptr, ptr %1, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %6, align 8, !tbaa !145     ; 2 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !147
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %6
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 %i.d, ptr %0, align 8, !tbaa !145
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.j = load <4 x i8>, ptr %i.g, align 1, !tbaa !54
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !54
  store <4 x i8> %i.j, ptr %i.h, align 1, !tbaa !54
  store i8 0, ptr %i.i, align 4, !tbaa !154
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.l, ptr %i.m, align 1, !tbaa !146
  store i8 0, ptr %i.k, align 1, !tbaa !146
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !148
  store ptr null, ptr %i.n, align 8, !tbaa !148
  store ptr %i.o, ptr %i.f, align 8, !tbaa !148
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit83

bb.f:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.g:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190
  %i.t = load ptr, ptr %5, align 8, !tbaa !191
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 5                   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !194  ; 3 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 48                ; 3 uses
  %i.af = icmp ugt i64 %i.x, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nuw nsw i64 %i.x, %i.ae
  invoke void @_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ag)
          to label %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp ult i64 %i.x, %i.ae
  br i1 %i.ah, label %bb.j, label %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.x ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.z, %i.ai
  br i1 %.not.i.i41, label %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i ], [ %i.ai, %bb.j ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !54
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #35
  br label %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.z
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb3Env14FileAttributesES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !512

_ZSt8_DestroyIPN7rocksdb3Env14FileAttributesES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !194
  br label %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPN7rocksdb3Env14FileAttributesES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !190
  %i.aq = load ptr, ptr %5, align 8, !tbaa !191
  %.not103.not = icmp eq ptr %i.ap, %i.aq
  br i1 %.not103.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !194 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 48
  br label %bb.am

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not.i.i57 = icmp eq ptr %0, %6
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.promoted = load ptr, ptr %i.bj, align 8       ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt0
  %.0105 = phi i64 [ 0, %.lr.ph ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt0 ] ; 3 uses
  %.018104 = phi i64 [ 0, %.lr.ph ], [ %.1.jt0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt0 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.bm = load ptr, ptr %2, align 8, !tbaa !53, !noalias !520
  %i.bn = load i64, ptr %i.ax, align 8, !tbaa !129, !noalias !520
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !520
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.47, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !520
  %i.bo = load ptr, ptr %5, align 8, !tbaa !191
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %.0105 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53, !noalias !521 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !129, !noalias !521 ; 6 uses
  %i.bt = load i64, ptr %i.ay, align 8, !tbaa !129, !noalias !521 ; 5 uses
  %i.bu = sub i64 9223372036854775807, %i.bt
  %i.bv = icmp ult i64 %i.bu, %i.bs
  br i1 %i.bv, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %.promoted, ptr %i.bj, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #39
          to label %.noexc44 unwind label %.loopexit.split-lp

.noexc44:                                         ; preds = %bb.m
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bw = add i64 %i.bt, %i.bs                    ; 3 uses
  %i.bx = load ptr, ptr %8, align 8, !tbaa !53, !noalias !521 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.az
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bz = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ca = load i64, ptr %i.az, align 8, !tbaa !54, !noalias !521
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cb = phi i64 [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i43 = icmp ugt i64 %i.bw, %i.cb
  br i1 %.not.i.i.i.i43, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bt ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.bs, 1
  br i1 %cond.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = load i8, ptr %i.bq, align 1, !tbaa !54, !noalias !521
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !54, !noalias !521
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.bq, i64 %i.bs, i1 false), !noalias !521
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.bt, i64 noundef 0, ptr noundef %i.bq, i64 noundef %i.bs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  store i64 %i.bw, ptr %i.ay, align 8, !tbaa !129, !noalias !521
  %i.ce = load ptr, ptr %8, align 8, !tbaa !53, !noalias !521
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  store i8 0, ptr %i.cf, align 1, !tbaa !54, !noalias !521
  store ptr %i.ba, ptr %7, align 8, !tbaa !128, !alias.scope !521
  %i.cg = load ptr, ptr %8, align 8, !tbaa !53, !noalias !521 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.az
  br i1 %i.ch, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ci = load i64, ptr %i.ay, align 8, !tbaa !129, !noalias !521 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.ck, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.cg, ptr %7, align 8, !tbaa !53, !alias.scope !521
  %i.cl = load i64, ptr %i.az, align 8, !tbaa !54, !noalias !521
  store i64 %i.cl, ptr %i.ba, align 8, !tbaa !54, !alias.scope !521
  %.pre.i = load i64, ptr %i.ay, align 8, !tbaa !129, !noalias !521
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %i.cm = phi i64 [ %i.ci, %bb.s ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  store i64 %i.cm, ptr %i.bb, align 8, !tbaa !129, !alias.scope !521
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.cn = load ptr, ptr %3, align 8, !tbaa !195
  %i.co = getelementptr inbounds nuw [48 x i8], ptr %i.cn, i64 %.018104
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %1, align 8, !tbaa !56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 296
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.cp)
          to label %bb.t unwind label %bb.z

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = load <4 x i8>, ptr %9, align 8, !tbaa !54
  %i.cu = load i8, ptr %9, align 8, !tbaa !158
  store <4 x i8> %i.ct, ptr %6, align 8, !tbaa !54
  store <4 x i8> zeroinitializer, ptr %9, align 8, !tbaa !54
  %i.cv = load i8, ptr %i.bc, align 4, !tbaa !159, !range !160, !noundef !161
  store i8 %i.cv, ptr %i.bd, align 4, !tbaa !154
  store i8 0, ptr %i.bc, align 4, !tbaa !154
  %i.cw = load i8, ptr %i.be, align 1, !tbaa !54
  store i8 %i.cw, ptr %i.bf, align 1, !tbaa !146
  store i8 0, ptr %i.be, align 1, !tbaa !146
  %i.cx = load ptr, ptr %i.bg, align 8, !tbaa !148
  store ptr null, ptr %i.bg, align 8, !tbaa !148
  %i.cy = load ptr, ptr %i.bh, align 8, !tbaa !148 ; 2 uses
  store ptr %i.cx, ptr %i.bh, align 8, !tbaa !148
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.t
  %i.cz = icmp eq i8 %i.cu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %i.cz, label %bb.ad, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #35
  %.pr = load ptr, ptr %i.bg, align 8, !tbaa !148 ; 2 uses
  %i.da = load i8, ptr %6, align 8, !tbaa !145
  %i.db = icmp eq i8 %i.da, 0                     ; 2 uses
  %.not.i.i47 = icmp eq ptr %.pr, null
  br i1 %.not.i.i47, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %.pr) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %i.db, label %bb.ad, label %bb.v

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %i.db, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %.thread, %_ZN7rocksdb6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.dc = load ptr, ptr %1, align 8, !tbaa !56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 232
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.df = load i8, ptr %10, align 8, !tbaa !145
  %i.dg = icmp eq i8 %i.df, 1
  %i.dh = load ptr, ptr %i.bi, align 8, !tbaa !148 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i48, label %_ZN7rocksdb6StatusD2Ev.exit50, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i49

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i49: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit50

_ZN7rocksdb6StatusD2Ev.exit50:                    ; preds = %bb.w, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br i1 %i.dg, label %_ZN7rocksdb6StatusC2EOS0_.exit60.jt0, label %bb.ab

bb.x:                                             ; preds = %bb.k
  %i.di = landingpad { ptr, i32 }
          cleanup
  store ptr %.promoted, ptr %i.bj, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

.loopexit:                                        ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.promoted, ptr %i.bj, align 8
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.dj = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.az
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.y
  %i.dl = load i64, ptr %i.az, align 8, !tbaa !54
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.x
  %.pn = phi { ptr, i32 } [ %i.di, %bb.x ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %lpad.phi, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dn = landingpad { ptr, i32 }
          cleanup
  store ptr %.promoted, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.ak

bb.aa:                                            ; preds = %bb.v
  %i.do = landingpad { ptr, i32 }
          cleanup
  store ptr %.promoted, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.ak

bb.ab:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  br i1 %.not.i.i57, label %_ZN7rocksdb6StatusC2EOS0_.exit60.jt1, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = load <4 x i8>, ptr %6, align 8, !tbaa !54
  store <4 x i8> %i.dp, ptr %0, align 8, !tbaa !54
  store <4 x i8> zeroinitializer, ptr %6, align 8, !tbaa !54
  %i.dq = load i8, ptr %i.bd, align 4, !tbaa !159, !range !160, !noundef !161
  store i8 %i.dq, ptr %i.bk, align 4, !tbaa !154
  store i8 0, ptr %i.bd, align 4, !tbaa !154
  %i.dr = load i8, ptr %i.bf, align 1, !tbaa !54
  store i8 %i.dr, ptr %i.bl, align 1, !tbaa !146
  store i8 0, ptr %i.bf, align 1, !tbaa !146
  %i.ds = load ptr, ptr %i.bh, align 8, !tbaa !148
  store ptr null, ptr %i.bh, align 8, !tbaa !148
  br label %_ZN7rocksdb6StatusC2EOS0_.exit60.jt1

bb.ad:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %.thread, %_ZN7rocksdb6StatusD2Ev.exit
  %i.dt = load ptr, ptr %5, align 8, !tbaa !191
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %.0105 ; 10 uses
  %i.dv = load ptr, ptr %3, align 8, !tbaa !195
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.dv, i64 %.018104 ; 9 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !53 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 4 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !53 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 6 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb                ; 2 uses
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ad
  br i1 %i.ec, label %bb.ae, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ad
  br i1 %i.ec, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !129 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %.not21.i = icmp eq ptr %i.du, %i.dw
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.af, !prof !76

bb.af:                                            ; preds = %bb.ae
  switch i64 %i.ee, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.eg = load i8, ptr %i.ea, align 1, !tbaa !54
  store i8 %i.eg, ptr %i.dx, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.ea, i64 %i.ee, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.eh = load i64, ptr %i.ed, align 8, !tbaa !129 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !129
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !54
  %.pre.i61 = load ptr, ptr %i.du, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !53
  %i.em = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !129
  store i64 %i.en, ptr %i.el, align 8, !tbaa !129
  %i.eo = load i64, ptr %i.eb, align 8, !tbaa !54
  store i64 %i.eo, ptr %i.dy, align 8, !tbaa !54
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ep = load i64, ptr %i.dy, align 8, !tbaa !54
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !53
  %i.eq = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !129
  %i.es = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !129
  %i.et = load i64, ptr %i.eb, align 8, !tbaa !54
  store i64 %i.et, ptr %i.dy, align 8, !tbaa !54
  %.not.i = icmp eq ptr %i.dx, null
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !53
  store i64 %i.ep, ptr %i.eb, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.eb, ptr %i.du, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ai, %bb.aj
  %i.eu = phi ptr [ %.pre.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dx, %bb.ai ], [ %i.eb, %bb.aj ], [ %i.ea, %bb.ae ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 0, ptr %i.ev, align 8, !tbaa !129
  store i8 0, ptr %i.eu, align 1, !tbaa !54
  %i.ew = add i64 %.018104, 1
  br label %_ZN7rocksdb6StatusC2EOS0_.exit60.jt0

_ZN7rocksdb6StatusC2EOS0_.exit60.jt1:             ; preds = %bb.ab, %bb.ac
  %11 = phi ptr [ null, %bb.ab ], [ %i.ds, %bb.ac ]
  %i.ex = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ba
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.jt1

_ZN7rocksdb6StatusC2EOS0_.exit60.jt0:             ; preds = %_ZN7rocksdb6StatusD2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.1.jt0 = phi i64 [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %.018104, %_ZN7rocksdb6StatusD2Ev.exit50 ] ; 4 uses
  %i.ez = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.ba
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.jt0

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.jt1: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit60.jt1
  %i.fb = load i64, ptr %i.ba, align 8, !tbaa !54
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.jt0: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit60.jt0
  %i.fd = load i64, ptr %i.ba, align 8, !tbaa !54
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fe) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt0

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt1: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit60.jt1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  store ptr %11, ptr %i.bj, align 8
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt0: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit60.jt0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  %i.ff = add nuw i64 %.0105, 1                   ; 2 uses
  %i.fg = load ptr, ptr %i.r, align 8, !tbaa !190
  %i.fh = load ptr, ptr %5, align 8, !tbaa !191
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 5
  %.not = icmp ult i64 %i.ff, %i.fl
  br i1 %.not, label %bb.k, label %._crit_edge, !llvm.loop !517

bb.ak:                                            ; preds = %bb.aa, %bb.z
  %.pn34 = phi { ptr, i32 } [ %i.do, %bb.aa ], [ %i.dn, %bb.z ] ; 2 uses
  %i.fm = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.ba
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.ak
  %i.fo = load i64, ptr %i.ba, align 8, !tbaa !54
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.pn34.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ], [ %.pn34, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.aq

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt0
  store ptr %.promoted, ptr %i.bj, align 8
  %i.fq = load ptr, ptr %i.y, align 8, !tbaa !194 ; 2 uses
  %i.fr = load ptr, ptr %3, align 8, !tbaa !195   ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = sdiv exact i64 %i.fu, 48                ; 3 uses
  %i.fw = icmp ugt i64 %.1.jt0, %i.fv
  br i1 %i.fw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge
  %i.fx = sub nuw i64 %.1.jt0, %i.fv
  invoke void @_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.fx)
          to label %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit77 unwind label %bb.ao

bb.am:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.fy = phi i64 [ %i.aw, %._crit_edge.thread ], [ %i.fv, %._crit_edge ]
  %i.fz = phi ptr [ %i.as, %._crit_edge.thread ], [ %i.fr, %._crit_edge ]
  %i.ga = phi ptr [ %i.ar, %._crit_edge.thread ], [ %i.fq, %._crit_edge ] ; 2 uses
  %.018.lcssa161 = phi i64 [ 0, %._crit_edge.thread ], [ %.1.jt0, %._crit_edge ] ; 2 uses
  %i.gb = icmp ult i64 %.018.lcssa161, %i.fy
  br i1 %i.gb, label %bb.an, label %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit77

bb.an:                                            ; preds = %bb.am
  %i.gc = getelementptr inbounds nuw [48 x i8], ptr %i.fz, i64 %.018.lcssa161 ; 3 uses
  %.not.i.i68 = icmp eq ptr %i.ga, %i.gc
  br i1 %.not.i.i68, label %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit77, label %.lr.ph.i.i.i.i69

.lr.ph.i.i.i.i69:                                 ; preds = %bb.an, %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i72
  %.05.i.i.i.i70 = phi ptr [ %i.gi, %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i72 ], [ %i.gc, %bb.an ] ; 3 uses
  %i.gd = load ptr, ptr %.05.i.i.i.i70, align 8, !tbaa !53 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i71: ; preds = %.lr.ph.i.i.i.i69
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !54
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #35
  br label %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i72

_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i72: ; preds = %.lr.ph.i.i.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i71
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 48 ; 2 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.gi, %i.ga
  br i1 %.not.i.i.i.i73, label %_ZSt8_DestroyIPN7rocksdb3Env14FileAttributesES2_EvT_S4_RSaIT0_E.exit.i.i74, label %.lr.ph.i.i.i.i69, !llvm.loop !512

_ZSt8_DestroyIPN7rocksdb3Env14FileAttributesES2_EvT_S4_RSaIT0_E.exit.i.i74: ; preds = %_ZSt8_DestroyIN7rocksdb3Env14FileAttributesEEvPT_.exit.i.i.i.i72
  store ptr %i.gc, ptr %i.y, align 8, !tbaa !194
  br label %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit77

_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit77: ; preds = %_ZSt8_DestroyIPN7rocksdb3Env14FileAttributesES2_EvT_S4_RSaIT0_E.exit.i.i74, %bb.an, %bb.am, %bb.al
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.gj, align 8, !tbaa !147, !alias.scope !522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !522
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.ao:                                            ; preds = %bb.al
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.jt1, %bb.c, %bb.d, %_ZNSt6vectorIN7rocksdb3Env14FileAttributesESaIS2_EE6resizeEm.exit77
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !148 ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i78, label %_ZN7rocksdb6StatusD2Ev.exit80, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.gm) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit80

_ZN7rocksdb6StatusD2Ev.exit80:                    ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.gn = load ptr, ptr %5, align 8, !tbaa !191   ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !190 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gn, %i.gp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7rocksdb6StatusD2Ev.exit80, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gn, %_ZN7rocksdb6StatusD2Ev.exit80 ] ; 3 uses
  %i.gq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !54
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gv, %i.gp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !191
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZN7rocksdb6StatusD2Ev.exit80
  %i.gw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gn, %_ZN7rocksdb6StatusD2Ev.exit80 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !196
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hb) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.ao, %bb.f
  %.pn37.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.gk, %bb.ao ], [ %.pn34.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !148 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i81, label %_ZN7rocksdb6StatusD2Ev.exit83, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i82

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i82: ; preds = %bb.aq
  call void @_ZdaPv(ptr noundef nonnull %i.hd) #35
  br label %_ZN7rocksdb6StatusD2Ev.exit83

_ZN7rocksdb6StatusD2Ev.exit83:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i82, %bb.aq, %bb.e
  %.pn37.pn.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %.pn37.pn, %bb.aq ], [ %.pn37.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %.pn37.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !191    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !53 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !54
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !9

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !191
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !196
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb3Env17GetHostNameStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array", align 1       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %3, i64 noundef 256)
  %i.d = load i8, ptr %0, align 8, !tbaa !145
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc.exit

end_hunk_0
