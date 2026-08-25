Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Perf?download=true
begin_hunk_0_@_ZN12lldb_private13process_linux9PerfEvent25MmapMetadataAndDataBufferEmb:bb.a
bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  store ptr null, ptr %i.k, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !35
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.j, align 8, !tbaa !92   ; 2 uses
  %.not4.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not4.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @munmap(ptr noundef nonnull %i.n, i64 noundef %i.o) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.q = load i64, ptr %4, align 8                ; 3 uses
  store i64 %i.q, ptr %i.j, align 8, !tbaa !42
  store ptr null, ptr %0, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  %.not4.i.i = icmp eq i64 %i.q, 0
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %or.cond, label %_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 @munmap(ptr noundef nonnull %i.s, i64 noundef %i.q) #16 ; 0 uses
  br label %_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit

bb.g:                                             ; preds = %bb.a
  %i.u = load i64, ptr %4, align 8, !tbaa !21, !noalias !171
  %i.v = inttoptr i64 %i.u to ptr
  store ptr %i.v, ptr %0, align 8, !tbaa !30
  br label %_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit: ; preds = %bb.g, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13process_linux9PerfEvent13MmapAuxBufferEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Expected.52", align 8 ; 8 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1040
  %i.e = load i64, ptr %i.d, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1048
  %i.g = load i64, ptr %i.f, align 8, !tbaa !175
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1072
  store i64 %i.h, ptr %i.i, align 8, !tbaa !176
  %i.j = tail call i32 @getpagesize() #18
  %i.k = sext i32 %i.j to i64
  %i.l = mul i64 %2, %i.k                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  store i64 %i.l, ptr %i.m, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr @.str.6, ptr %4, align 8, !tbaa !169
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 10, ptr %i.n, align 8, !tbaa !170
  call void @_ZN12lldb_private13process_linux9PerfEvent6DoMmapEPvmiilN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.52") align 8 %3, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef null, i64 noundef %i.l, i32 noundef 1, i32 noundef 1, i64 noundef %i.h, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i8, ptr %i.o, align 8
  %i.q = trunc i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  store ptr null, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !35
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.r, align 8, !tbaa !92   ; 2 uses
  %.not4.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not4.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call i32 @munmap(ptr noundef nonnull %i.v, i64 noundef %i.w) #16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = load i64, ptr %3, align 8                ; 3 uses
  store i64 %i.y, ptr %i.r, align 8, !tbaa !42
  store ptr null, ptr %0, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35  ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  %.not4.i.i = icmp eq i64 %i.y, 0
  %or.cond = select i1 %.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %or.cond, label %_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i32 @munmap(ptr noundef nonnull %i.aa, i64 noundef %i.y) #16 ; 0 uses
  br label %_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.ac = load i64, ptr %3, align 8, !tbaa !21, !noalias !178
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %0, align 8, !tbaa !30
  br label %_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit: ; preds = %bb.h, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8ExpectedISt10unique_ptrIvN12lldb_private13process_linux15resource_handle11MmapDeleterEEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK12lldb_private13process_linux9PerfEvent13GetDataBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  %i.d = load i64, ptr %i.c, align 8, !tbaa !174
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.g = load i64, ptr %i.f, align 8, !tbaa !175
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.g, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { ptr, i64 } @_ZNK12lldb_private13process_linux9PerfEvent12GetAuxBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.d, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.f, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13process_linux9PerfEvent21GetReadOnlyDataBufferEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.69") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %3 = alloca %"class.std::vector", align 16      ; 13 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !133, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN12lldb_private13process_linux9PerfEvent16DisableWithIoctlEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, ptr noundef nonnull align 8 dereferenceable(41) %1)
  %i.d = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit20, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  store ptr %i.d, ptr %0, align 8, !tbaa !21, !alias.scope !181
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.j

_ZN4llvm5ErrorD2Ev.exit20:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1040
  %i.k = load i64, ptr %i.j, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1048
  %i.n = load i64, ptr %i.m, align 8, !tbaa !175  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1024
  %i.p = load i64, ptr %i.o, align 8, !tbaa !184  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.q = icmp slt i64 %i.n, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit20
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
  unreachable

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not40 = icmp eq i64 %i.n, 0
  br i1 %.not40, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 4 uses
  store ptr %i.t, ptr %3, align 16, !tbaa !185
  store ptr %i.t, ptr %i.s, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n
  store ptr %i.u, ptr %i.r, align 16, !tbaa !188
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.v = phi ptr [ null, %bb.c ], [ %i.t, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i ] ; 2 uses
  %i.w = icmp ugt i64 %i.p, %i.n
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.x = urem i64 %i.p, %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.v, ptr noundef %i.z, ptr noundef nonnull %i.aa)
  %i.ab = load ptr, ptr %3, align 16, !tbaa !44   ; 2 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 %i.af
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ag, ptr noundef nonnull %i.l, ptr noundef %i.z)
  br label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.v, ptr noundef nonnull %i.l, ptr noundef %i.ah)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.c, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN12lldb_private13process_linux9PerfEvent15EnableWithIoctlEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr noundef nonnull align 8 dereferenceable(41) %1)
  %i.ai = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %.not35 = icmp eq ptr %i.ai, null
  br i1 %.not35, label %_ZN4llvm5ErrorD2Ev.exit22, label %bb.h

_ZN4llvm5ErrorD2Ev.exit22:                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.thread

.thread:                                          ; preds = %bb.f, %_ZN4llvm5ErrorD2Ev.exit22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, -2
  store i8 %i.al, ptr %i.aj, align 8
  %i.am = load <2 x ptr>, ptr %3, align 16, !tbaa !44
  store <2 x ptr> %i.am, ptr %0, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.r, align 16, !tbaa !188
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !188
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = or i8 %i.aq, 1
  store i8 %i.ar, ptr %i.ap, align 8
  store ptr %i.ai, ptr %0, align 8, !tbaa !21, !alias.scope !189
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.pr = load ptr, ptr %3, align 16, !tbaa !185   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.r, align 16, !tbaa !188
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %.pr to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.av) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.thread, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt6vectorIhSaIhEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13process_linux9PerfEvent16DisableWithIoctlEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 4 uses
  %3 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !133, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !94
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.f, i64 noundef 9217, i32 noundef 1) #16
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4llvm5ErrorD2Ev.exit1

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #16 ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 0
  %i.k = extractvalue { i32, ptr } %i.i, 1
  %i.l = tail call ptr @__errno_location() #18
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = tail call ptr @strerror(i32 noundef %i.m) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !192
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !66, !noalias !192
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !69, !noalias !192
  store i8 0, ptr %i.o, align 8, !tbaa !14, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !192
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !71, !noalias !192
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.r, align 8, !tbaa !75, !noalias !192
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.s, align 4, !tbaa !76, !noalias !192
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !noalias !192
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !77, !noalias !192
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %4, ptr %i.u, align 8, !tbaa !79, !noalias !192
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #16, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !192
  store ptr @.str.9, ptr %3, align 8, !noalias !192
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !192
  store ptr %3, ptr %2, align 8, !tbaa !195, !noalias !192
  %i.v = ptrtoint ptr %2 to i64
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJS1_EEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.v) #16, !noalias !192 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !192
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #16, !noalias !192
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !192
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.x = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !200 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 %i.j, ptr %i.k, i1 noundef zeroext true) #16, !noalias !200
  store ptr %i.x, ptr %0, align 8, !tbaa !30, !alias.scope !203
  %i.y = load ptr, ptr %4, align 8, !tbaa !88, !noalias !192 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.o
  br i1 %i.z, label %_ZN4llvm17createStringErrorIJPcEEENS_5ErrorESt10error_codePKcDpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !14, !noalias !192
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #17, !noalias !192
  br label %_ZN4llvm17createStringErrorIJPcEEENS_5ErrorESt10error_codePKcDpRKT_.exit

_ZN4llvm17createStringErrorIJPcEEENS_5ErrorESt10error_codePKcDpRKT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !192
  br label %bb.d

_ZN4llvm5ErrorD2Ev.exit1:                         ; preds = %bb.b
  store i8 0, ptr %i.a, align 8, !tbaa !133
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit1, %_ZN4llvm17createStringErrorIJPcEEENS_5ErrorESt10error_codePKcDpRKT_.exit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13process_linux9PerfEvent15EnableWithIoctlEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 4 uses
  %3 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !133, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !94
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.f, i64 noundef 9216, i32 noundef 1) #16
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZN4llvm5ErrorD2Ev.exit1

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #16 ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 0
  %i.k = extractvalue { i32, ptr } %i.i, 1
  %i.l = tail call ptr @__errno_location() #18
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = tail call ptr @strerror(i32 noundef %i.m) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !204
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !66, !noalias !204
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !69, !noalias !204
  store i8 0, ptr %i.o, align 8, !tbaa !14, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !204
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !71, !noalias !204
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.r, align 8, !tbaa !75, !noalias !204
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.s, align 4, !tbaa !76, !noalias !204
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !noalias !204
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !77, !noalias !204
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %4, ptr %i.u, align 8, !tbaa !79, !noalias !204
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #16, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !204
  store ptr @.str.10, ptr %3, align 8, !noalias !204
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !204
  store ptr %3, ptr %2, align 8, !tbaa !195, !noalias !204
  %i.v = ptrtoint ptr %2 to i64
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJS1_EEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.v) #16, !noalias !204 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !204
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #16, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !204
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.x = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !210 ; 2 uses
  call void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 %i.j, ptr %i.k, i1 noundef zeroext true) #16, !noalias !210
  store ptr %i.x, ptr %0, align 8, !tbaa !30, !alias.scope !213
  %i.y = load ptr, ptr %4, align 8, !tbaa !88, !noalias !204 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.o
  br i1 %i.z, label %_ZN4llvm17createStringErrorIJPcEEENS_5ErrorESt10error_codePKcDpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !14, !noalias !204
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #17, !noalias !204
  br label %_ZN4llvm17createStringErrorIJPcEEENS_5ErrorESt10error_codePKcDpRKT_.exit

_ZN4llvm17createStringErrorIJPcEEENS_5ErrorESt10error_codePKcDpRKT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !204
  br label %bb.d

_ZN4llvm5ErrorD2Ev.exit1:                         ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !133
  store ptr null, ptr %0, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit1, %_ZN4llvm17createStringErrorIJPcEEENS_5ErrorESt10error_codePKcDpRKT_.exit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13process_linux9PerfEvent20GetReadOnlyAuxBufferEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.69") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %3 = alloca %"class.std::vector", align 16      ; 12 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !133, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN12lldb_private13process_linux9PerfEvent16DisableWithIoctlEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, ptr noundef nonnull align 8 dereferenceable(41) %1)
  %i.d = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit10, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  store ptr %i.d, ptr %0, align 8, !tbaa !21, !alias.scope !214
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

_ZN4llvm5ErrorD2Ev.exit10:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1080
  %i.m = load i64, ptr %i.l, align 8, !tbaa !177  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1056
  %i.o = load i64, ptr %i.n, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.p = icmp slt i64 %i.m, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit10
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
  unreachable

bb.c:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit10
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.not25 = icmp eq i64 %i.m, 0
  br i1 %.not25, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #19 ; 4 uses
  store ptr %i.s, ptr %3, align 16, !tbaa !185
  store ptr %i.s, ptr %i.r, align 8, !tbaa !187
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.m
  store ptr %i.t, ptr %i.q, align 16, !tbaa !188
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %bb.c, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.u = phi ptr [ null, %bb.c ], [ %i.s, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.u, ptr noundef %i.w, ptr noundef %i.x)
  %i.y = load ptr, ptr %3, align 16, !tbaa !44    ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 %i.ac
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ad, ptr noundef %i.k, ptr noundef %i.w)
  br i1 %i.c, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN12lldb_private13process_linux9PerfEvent15EnableWithIoctlEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr noundef nonnull align 8 dereferenceable(41) %1)
  %i.ae = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %.not21 = icmp eq ptr %i.ae, null
  br i1 %.not21, label %_ZN4llvm5ErrorD2Ev.exit12, label %bb.e

_ZN4llvm5ErrorD2Ev.exit12:                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.thread

.thread:                                          ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit, %_ZN4llvm5ErrorD2Ev.exit12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.af, align 8
  %i.ai = load <2 x ptr>, ptr %3, align 16, !tbaa !44
  store <2 x ptr> %i.ai, ptr %0, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.q, align 16, !tbaa !188
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !188
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = or i8 %i.am, 1
  store i8 %i.an, ptr %i.al, align 8
  store ptr %i.ae, ptr %0, align 8, !tbaa !21, !alias.scope !218
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.pr = load ptr, ptr %3, align 16, !tbaa !185   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.q, align 16, !tbaa !188
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.pr to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ar) #17
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.thread, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZNSt6vectorIhSaIhEED2Ev.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private13process_linux9PerfEvent9IsEnabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !133, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK12lldb_private13process_linux9PerfEvent26GetEffectiveDataBufferSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.d = load i64, ptr %i.c, align 8, !tbaa !184
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.f = load i64, ptr %i.e, align 8, !tbaa !175
  %. = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.f)
  ret i64 %.
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13process_linux33CreateContextSwitchTracePerfEventEjPKNS0_9PerfEventE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.6") align 8 captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::formatv_object.63", align 8 ; 11 uses
  %4 = alloca %struct.perf_event_attr, align 8    ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::Expected.6", align 8  ; 20 uses
  %6 = alloca %"class.std::optional.39", align 8  ; 3 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_8POSIXLogEEERNS_3Log7ChannelEv() #16
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.c) #16
  %i.e = and i64 %i.d, 128
  %.not6.i.i = icmp eq i64 %i.e, 0
  br i1 %.not6.i.i, label %bb.c, label %_ZN12lldb_private6GetLogINS_8POSIXLogEEEPNS_3LogET_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN12lldb_private6GetLogINS_8POSIXLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_8POSIXLogEEEPNS_3LogET_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ null, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, i8 0, i64 128, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 136, ptr %i.g, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 6, ptr %i.h, align 8, !tbaa !221
  store i32 1, ptr %4, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN12lldb_private6GetLogINS_8POSIXLogEEEPNS_3LogET_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !133, !range !113, !noundef !114
  %i.l = xor i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = or disjoint i64 %i.m, 67371104
  br label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_private6GetLogINS_8POSIXLogEEEPNS_3LogET_.exit, %bb.d
  %i.o = phi i64 [ %i.n, %bb.d ], [ 67371104, %_ZN12lldb_private6GetLogINS_8POSIXLogEEEPNS_3LogET_.exit ]
  store i64 %i.o, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 32768, ptr %i.a, align 8, !tbaa !42
  %i.p = tail call i32 @getpagesize() #18
  %i.q = sext i32 %i.p to i64
  %i.r = udiv i64 32768, %i.q
  %.not10 = icmp eq ptr %.0.i.i, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.s = ptrtoint ptr %i.a to i64
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr @.str.12, ptr %3, align 8, !tbaa !44, !alias.scope !222
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 51, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !42, !alias.scope !222
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !51, !alias.scope !222
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !42, !alias.scope !222
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.v, align 8, !tbaa !53, !alias.scope !222
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 %i.s, ptr %i.w, align 8, !tbaa !94, !alias.scope !222
  %i.x = ptrtoint ptr %i.w to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %i.t, align 8, !alias.scope !222
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !14, !alias.scope !222
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.11, i64 76, ptr nonnull @__func__._ZN12lldb_private13process_linux33CreateContextSwitchTracePerfEventEjPKNS0_9PerfEventE, i64 33, ptr noundef nonnull align 8 dereferenceable(33) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %2, align 8, !tbaa !94
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.018.0 = phi i64 [ undef, %bb.g ], [ %i.z, %bb.h ]
end_hunk_0
begin_hunk_1_@_ZN4llvm15format_providerImvE6formatERKmRNS_11raw_ostreamENS_9StringRefE:bb.a

_ZNK4llvm9StringRef11starts_withES0_.exit.i17:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i11
  %.pre.i16 = load ptr, ptr %4, align 8, !tbaa !169 ; 2 uses
  %lhsc39 = load i8, ptr %.pre.i16, align 1
  %i.u = icmp eq i8 %lhsc39, 68
  br i1 %i.u, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i23

_ZNK4llvm9StringRef11starts_withES0_.exit.i23:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i17
  %.pre.i22 = load ptr, ptr %4, align 8, !tbaa !169 ; 2 uses
  %lhsc40 = load i8, ptr %.pre.i22, align 1
  %i.v = icmp eq i8 %lhsc40, 100
  br i1 %i.v, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i23, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11, %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i22.sink = phi ptr [ %.pre.i16, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ %.pre.i10, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ %.pre.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %.pre.i22, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %.ph = phi i1 [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %.0.ph = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i22.sink, i64 1
  %i.x = add i64 %i.r, -1
  store ptr %i.w, ptr %4, align 8, !tbaa !44
  store i64 %i.x, ptr %i.c, align 8, !tbaa !42
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26:     ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, %_ZN4llvm9StringRef13consume_frontEc.exit, %.critedge, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23
  %i.y = phi i1 [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ true, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ false, %.critedge ]
  %.0 = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.0.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ 0, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ 0, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.z = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #16
  %i.aa = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.z, i64 0, i64 %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ab = load i64, ptr %0, align 8, !tbaa !42
  call void @_ZN4llvm13write_integerERNS_11raw_ostreamEmmNS_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.ab, i64 noundef %spec.select, i32 noundef %.0, i1 noundef zeroext %i.y) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm9StringRef13consume_frontES0_.exit26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.17, i64 1) #16
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !170  ; 7 uses
  %.not.i.i = icmp ult i64 %i.c, 2
  br i1 %.not.i.i, label %bb.e, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !169 ; 2 uses
  %i.d = load i16, ptr %.pre.i, align 1
  %i.e = icmp ne i16 %i.d, 11640
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i9

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 2
  %i.i = add i64 %i.c, -2
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  store i64 %i.i, ptr %i.b, align 8, !tbaa !42
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i9:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i8 = load ptr, ptr %0, align 8, !tbaa !169 ; 2 uses
  %i.j = load i16, ptr %.pre.i8, align 1
  %i.k = icmp ne i16 %i.j, 11608
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i15

bb.d:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i9
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i8, i64 2
  %i.o = add i64 %i.c, -2
  store ptr %i.n, ptr %0, align 8, !tbaa !44
  store i64 %i.o, ptr %i.b, align 8, !tbaa !42
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i15:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i9
  %.pre.i14 = load ptr, ptr %0, align 8, !tbaa !169 ; 2 uses
  %i.p = load i16, ptr %.pre.i14, align 1
  %i.q = icmp ne i16 %i.p, 11128
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm9StringRef13consume_frontES0_.exit18, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread

_ZN4llvm9StringRef13consume_frontES0_.exit18:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i14, i64 2
  %i.u = add i64 %i.c, -2
  store ptr %i.t, ptr %0, align 8, !tbaa !44
  store i64 %i.u, ptr %i.b, align 8, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.not.i.i19 = icmp eq i64 %i.c, 0
  br i1 %.not.i.i19, label %.thread49, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i21

_ZNK4llvm9StringRef11starts_withES0_.exit.i21:    ; preds = %bb.e
  %.pre.i20 = load ptr, ptr %0, align 8, !tbaa !169 ; 2 uses
  %lhsc = load i8, ptr %.pre.i20, align 1
  %i.v = icmp eq i8 %lhsc, 120
  br i1 %i.v, label %_ZN4llvm9StringRef13consume_frontES0_.exit24, label %.thread49

_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15
  %.pre.i2050 = load ptr, ptr %0, align 8, !tbaa !169 ; 2 uses
  %lhsc51 = load i8, ptr %.pre.i2050, align 1
  %i.w = icmp eq i8 %lhsc51, 120
  br i1 %i.w, label %_ZN4llvm9StringRef13consume_frontES0_.exit24, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i27

_ZN4llvm9StringRef13consume_frontES0_.exit24:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21
  %.pre.i2052 = phi ptr [ %.pre.i2050, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread ], [ %.pre.i20, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21 ]
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i2052, i64 1
  %i.y = add i64 %i.c, -1
  store ptr %i.x, ptr %0, align 8, !tbaa !44
  store i64 %i.y, ptr %i.b, align 8, !tbaa !42
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i27:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread
  %.pre.i26 = load ptr, ptr %0, align 8, !tbaa !169 ; 2 uses
  %i.z = load i16, ptr %.pre.i26, align 1
  %i.aa = icmp ne i16 %i.z, 11096
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4llvm9StringRef13consume_frontES0_.exit30, label %.thread49

_ZN4llvm9StringRef13consume_frontES0_.exit30:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i27
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i26, i64 2
  %i.ae = add i64 %i.c, -2
  store ptr %i.ad, ptr %0, align 8, !tbaa !44
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !42
  br label %bb.f

.thread49:                                        ; preds = %bb.e, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21, %_ZNK4llvm9StringRef11starts_withES0_.exit.i27
  %i.af = tail call noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.22, i64 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread49, %_ZN4llvm9StringRef13consume_frontES0_.exit30, %_ZN4llvm9StringRef13consume_frontES0_.exit18, %_ZN4llvm9StringRef13consume_frontES0_.exit24, %bb.a, %bb.d, %bb.c
  %.sroa.5.0 = phi i64 [ 4294967297, %bb.c ], [ 4294967296, %bb.d ], [ 0, %bb.a ], [ 4294967299, %_ZN4llvm9StringRef13consume_frontES0_.exit18 ], [ 4294967299, %_ZN4llvm9StringRef13consume_frontES0_.exit24 ], [ 4294967298, %_ZN4llvm9StringRef13consume_frontES0_.exit30 ], [ 4294967298, %.thread49 ]
  ret i64 %.sroa.5.0
}

declare void @_ZN4llvm9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i32 noundef, i64, i8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %.not.i = icmp ult i64 %i.b, %2
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !169   ; 2 uses
  br i1 %i.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.pre, ptr %1, i64 %2)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.f = sub i64 %i.b, %2
  store ptr %i.e, ptr %0, align 8, !tbaa !44
  store i64 %i.f, ptr %i.a, align 8, !tbaa !42
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread3: ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.g = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.g
}

declare void @_ZN4llvm13write_integerERNS_11raw_ostreamEmmNS_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !245

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !14
  store i8 %i.s, ptr %i.g, align 1, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !187
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !245

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !14
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !245

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !14
  store i8 %i.ad, ptr %1, align 1, !tbaa !14
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !245

bb.n:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !14
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !14
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !187
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !187
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !245

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !14
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !187
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !187
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !245

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit47
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !14
  store i8 %i.au, ptr %1, align 1, !tbaa !14
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !185   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !245

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !14
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !14
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !245

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1, !tbaa !14
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !14
  br label %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49

_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !245

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIPKhPhhET0_T_S4_S3_RSaIT1_E.exit49
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !14
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i51 = icmp eq ptr %i.av, null
  br i1 %.not.i51, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #17
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit50, %bb.ai
  store ptr %i.bf, ptr %0, align 8, !tbaa !185
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !187
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !188
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJS1_EEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246, !nonnull !114, !align !238 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !248
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, ptr noundef %i.f) #16
  ret i32 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), i32, ptr, i1 noundef zeroext) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_8POSIXLogEEERNS_3Log7ChannelEv() local_unnamed_addr #5

declare noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

declare void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 4}
!9 = !{!"_ZTS15perf_event_attr", !5, i64 0, !5, i64 4, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 40, !10, i64 40, !10, i64 40, !10, i64 40, !10, i64 40, !10, i64 40, !10, i64 40, !10, i64 41, !10, i64 41, !10, i64 41, !10, i64 41, !10, i64 41, !10, i64 41, !10, i64 41, !10, i64 41, !10, i64 42, !10, i64 42, !10, i64 42, !10, i64 42, !10, i64 42, !10, i64 42, !10, i64 42, !10, i64 43, !10, i64 43, !10, i64 43, !10, i64 43, !10, i64 43, !10, i64 43, !10, i64 43, !10, i64 43, !10, i64 44, !10, i64 44, !10, i64 44, !10, i64 44, !10, i64 44, !10, i64 44, !10, i64 44, !6, i64 48, !5, i64 52, !6, i64 56, !6, i64 64, !10, i64 72, !10, i64 80, !5, i64 88, !5, i64 92, !10, i64 96, !5, i64 104, !11, i64 108, !11, i64 110, !5, i64 112, !5, i64 116, !10, i64 120, !10, i64 128}
!10 = !{!"long long", !6, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!9, !5, i64 0}
!13 = !{!9, !10, i64 8}
!14 = !{!6, !6, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN12lldb_private13process_linux9PerfEvent4InitER15perf_event_attrSt8optionalImES4_IjE: argument 0"}
!17 = distinct !{!17, !"_ZN12lldb_private13process_linux9PerfEvent4InitER15perf_event_attrSt8optionalImES4_IjE"}
!18 = !{!19, !20, i64 8}
!19 = !{!"_ZTSSt22_Optional_payload_baseIlE", !6, i64 0, !20, i64 8}
!20 = !{!"bool", !6, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !23, i64 0}
!23 = !{!"any pointer", !6, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN4llvm8ExpectedIN12lldb_private13process_linux9PerfEventEE9takeErrorEv: argument 0"}
!26 = distinct !{!26, !"_ZN4llvm8ExpectedIN12lldb_private13process_linux9PerfEventEE9takeErrorEv"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!29 = distinct !{!29, !"_ZN4llvm5Error11takePayloadEv"}
!30 = !{!31, !22, i64 0}
!31 = !{!"_ZTSN4llvm5ErrorE", !22, i64 0}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!34 = distinct !{!34, !"_ZN4llvm5Error11takePayloadEv"}
!35 = !{!23, !23, i64 0}
!36 = !{!37, !5, i64 52}
!37 = !{!"_ZTS20perf_event_mmap_page", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !11, i64 48, !11, i64 50, !5, i64 52, !10, i64 56, !10, i64 64, !5, i64 72, !5, i64 76, !10, i64 80, !10, i64 88, !6, i64 96, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !10, i64 1072, !10, i64 1080}
!38 = !{!37, !11, i64 50}
!39 = !{!37, !10, i64 64}
!40 = !{!5, !5, i64 0}
!41 = !{!11, !11, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"long", !6, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 omnipotent char", !23, i64 0}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZN4llvm7formatvIJRPKcEEEDabS2_DpOT_: argument 0"}
!48 = distinct !{!48, !"_ZN4llvm7formatvIJRPKcEEEDabS2_DpOT_"}
!49 = distinct !{!49, !50, !"_ZN4llvm7formatvIJRPKcEEEDaS2_DpOT_: argument 0"}
!50 = distinct !{!50, !"_ZN4llvm7formatvIJRPKcEEEDaS2_DpOT_"}
!51 = !{!52, !52, i64 0}
!52 = !{!"p1 _ZTSN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEE", !23, i64 0}
!53 = !{!54, !20, i64 32}
!54 = !{!"_ZTSN4llvm19formatv_object_baseE", !55, i64 0, !56, i64 16, !20, i64 32}
!55 = !{!"_ZTSN4llvm9StringRefE", !45, i64 0, !43, i64 8}
!56 = !{!"_ZTSN4llvm8ArrayRefINS_12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEEEE", !52, i64 0, !43, i64 8}
!57 = !{!58, !58, i64 0}
!58 = !{!"p2 omnipotent char", !59, i64 0}
!59 = !{!"any p2 pointer", !23, i64 0}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNK4llvm19formatv_object_basecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!62 = distinct !{!62, !"_ZNK4llvm19formatv_object_basecvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNK4llvm19formatv_object_base3strB5cxx11Ev: argument 0"}
!65 = distinct !{!65, !"_ZNK4llvm19formatv_object_base3strB5cxx11Ev"}
!66 = !{!67, !45, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!68 = !{!64, !61}
!69 = !{!70, !43, i64 8}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !43, i64 8, !6, i64 16}
!71 = !{!72, !73, i64 8}
!72 = !{!"_ZTSN4llvm11raw_ostreamE", !73, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !20, i64 40, !74, i64 44}
!73 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!74 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!75 = !{!72, !20, i64 40}
!76 = !{!72, !74, i64 44}
!77 = !{!78, !78, i64 0}
!78 = !{!"vtable pointer", !7, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0}
!81 = !{!82, !83, i64 32}
!82 = !{!"_ZTSN4llvm5TwineE", !6, i64 0, !6, i64 16, !83, i64 32, !83, i64 33}
!83 = !{!"_ZTSN4llvm5Twine8NodeKindE", !6, i64 0}
!84 = !{!82, !83, i64 33}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE: argument 0"}
!87 = distinct !{!87, !"_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE"}
!88 = !{!70, !45, i64 0}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!91 = distinct !{!91, !"_ZN4llvm5Error11takePayloadEv"}
!92 = !{!93, !43, i64 0}
!93 = !{!"_ZTSN12lldb_private13process_linux15resource_handle11MmapDeleterE", !43, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"p1 long", !23, i64 0}
!96 = distinct !{null, null, null}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_ZN4llvm7formatvIJRmEEEDabPKcDpOT_: argument 0"}
!99 = distinct !{!99, !"_ZN4llvm7formatvIJRmEEEDabPKcDpOT_"}
!100 = distinct !{!100, !101, !"_ZN4llvm7formatvIJRmEEEDaPKcDpOT_: argument 0"}
!101 = distinct !{!101, !"_ZN4llvm7formatvIJRmEEEDaPKcDpOT_"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE: argument 0"}
!104 = distinct !{!104, !"_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE"}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_ZN4llvm7formatvIJRmEEEDabPKcDpOT_: argument 0"}
!107 = distinct !{!107, !"_ZN4llvm7formatvIJRmEEEDabPKcDpOT_"}
!108 = distinct !{!108, !109, !"_ZN4llvm7formatvIJRmEEEDaPKcDpOT_: argument 0"}
!109 = distinct !{!109, !"_ZN4llvm7formatvIJRmEEEDaPKcDpOT_"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE: argument 0"}
!112 = distinct !{!112, !"_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE"}
!113 = !{i8 0, i8 2}
!114 = !{}
!115 = !{!116, !118}
!116 = distinct !{!116, !117, !"_ZN4llvm7formatvIJPcEEEDabPKcDpOT_: argument 0"}
!117 = distinct !{!117, !"_ZN4llvm7formatvIJPcEEEDabPKcDpOT_"}
!118 = distinct !{!118, !119, !"_ZN4llvm7formatvIJPcEEEDaPKcDpOT_: argument 0"}
end_hunk_1
