Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hbc-deltaprep?download=true
inline.NumInlined: 371
inline.NumDeleted: 257
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__cxa_atexit
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !23
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #19
  br label %_ZN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit

_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit: ; preds = %_ZN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvh2cl6OptionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit
  tail call void @free(ptr noundef %i.p) #18
  br label %_ZN4llvh2cl6OptionD2Ev.exit

_ZN4llvh2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef range(i32 -1, 1) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %"class.llvh::InitLLVM", align 8    ; 4 uses
  %3 = alloca %"class.llvh::ErrorOr", align 8     ; 8 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::error_code", align 8   ; 7 uses
  %8 = alloca %"class.llvh::raw_fd_ostream", align 8 ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !7
  store ptr %1, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4llvh8InitLLVMC2ERiRPPKc(ptr noundef nonnull align 8 dereferenceable(152) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #18
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.e = call noundef zeroext i1 @_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE(i32 noundef %i.c, ptr noundef %i.d, ptr nonnull @.str.11, i64 31, ptr noundef null) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 4, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.g, align 1, !tbaa !27
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 152), ptr %4, align 8, !tbaa !23
  call void @_ZN4llvh12MemoryBuffer7getFileERKNS_5TwineElbb(ptr dead_on_unwind nonnull writable sret(%"class.llvh::ErrorOr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(18) %4, i64 noundef -1, i1 noundef zeroext false, i1 noundef zeroext false) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 26
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.k, ptr noundef nonnull @.str.12, i64 noundef 26) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.o, ptr noundef nonnull align 1 dereferenceable(26) @.str.12, i64 26, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 26
  store ptr %i.v, ptr %i.n, align 8, !tbaa !74
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.d ]
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 152), align 8, !tbaa !22
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 160), align 8, !tbaa !28
  %i.y = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %i.w, i64 noundef %i.x) #18 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.y, ptr noundef nonnull @.str.13, i64 noundef 2) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit3

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  store i16 8250, ptr %i.ac, align 1
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !74
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit3

_ZN4llvh11raw_ostreamlsEPKc.exit3:                ; preds = %bb.e, %bb.f
  %.0.i.i2 = phi ptr [ %i.ah, %bb.e ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ak = load i8, ptr %i.h, align 8
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit3
  %.sroa.0.0.copyload.i = load i32, ptr %3, align 8, !tbaa !7
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !76
  br label %_ZNK4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit3
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #20
  br label %_ZNK4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit

_ZNK4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit: ; preds = %bb.g, %bb.h
  %.sroa.31.0.i = phi ptr [ %.sroa.31.0.copyload.i, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %bb.g ], [ 0, %bb.h ]
  %i.an = load ptr, ptr %.sroa.31.0.i, align 8, !tbaa !9, !noalias !77
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !77
  call void %i.ap(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.31.0.i, i32 noundef %.sroa.0.0.i) #18, !inline_history !65
  %i.aq = load ptr, ptr %5, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !28
  %i.at = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i2, ptr noundef %i.aq, i64 noundef %i.as) #18 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  %i.az = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.at, ptr noundef nonnull @.str.14, i64 noundef 1) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

bb.j:                                             ; preds = %_ZNK4llvh7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  store i8 10, ptr %i.ax, align 1
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !74
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit6

_ZN4llvh11raw_ostreamlsEPKc.exit6:                ; preds = %bb.i, %bb.j
  %i.bc = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.k:                                             ; preds = %bb.a
  %i.bh = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !81 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !82 ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bn, %i.bm                    ; 4 uses
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #21
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.k
  %.not.i.i.i = icmp eq ptr %i.bl, %i.bj
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #22 ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bj, i64 %i.bo, i1 false), !tbaa !23
  %i.bs = ptrtoint ptr %i.br to i64
  br label %_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit

_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit:     ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.bs, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i ]
  %.sroa.035.0 = phi ptr [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.bq, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !28
  store i8 0, ptr %i.bt, align 8, !tbaa !23
  %i.bv = ptrtoint ptr %.sroa.035.0 to i64
  %i.bw = sub i64 %.sroa.11.0, %i.bv              ; 3 uses
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL4Form, i64 152), align 8, !tbaa !37
  %i.by = call noundef zeroext i1 @_ZN6hermes3hbc21convertBytecodeToFormEN4llvh15MutableArrayRefIhEENS0_12BytecodeFormEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %.sroa.035.0, i64 %i.bw, i32 noundef %i.bx, ptr noundef nonnull %6) #18
  br i1 %i.by, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit
  %i.bz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !73
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !74 ; 2 uses
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = icmp ult i64 %i.cg, 30
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bz, ptr noundef nonnull @.str.15, i64 noundef 30) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.cd, ptr noundef nonnull align 1 dereferenceable(30) @.str.15, i64 30, i1 false)
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 30
  store ptr %i.ck, ptr %i.cc, align 8, !tbaa !74
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

_ZN4llvh11raw_ostreamlsEPKc.exit11:               ; preds = %bb.n, %bb.o
  %.0.i.i10 = phi ptr [ %i.ci, %bb.n ], [ %i.bz, %bb.o ]
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 152), align 8, !tbaa !22
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL13InputFilenameB5cxx11, i64 160), align 8, !tbaa !28
  %i.cn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i10, ptr noundef %i.cl, i64 noundef %i.cm) #18 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !73
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !74 ; 2 uses
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = icmp ult i64 %i.cu, 2
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %i.cw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.cn, ptr noundef nonnull @.str.13, i64 noundef 2) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit14

bb.q:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  store i16 8250, ptr %i.cr, align 1
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !74
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store ptr %i.cy, ptr %i.cq, align 8, !tbaa !74
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit14

_ZN4llvh11raw_ostreamlsEPKc.exit14:               ; preds = %bb.p, %bb.q
  %.0.i.i13 = phi ptr [ %i.cw, %bb.p ], [ %i.cn, %bb.q ]
  %i.cz = load ptr, ptr %6, align 8, !tbaa !22
  %i.da = load i64, ptr %i.bu, align 8, !tbaa !28
  %i.db = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i13, ptr noundef %i.cz, i64 noundef %i.da) #18 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !74 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !73
  %.not.i15 = icmp ult ptr %i.dd, %i.df
  br i1 %.not.i15, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit14
  %i.dg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.db, i8 noundef zeroext 10) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.s:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store ptr %i.dh, ptr %i.dc, align 8, !tbaa !74
  store i8 10, ptr %i.dd, align 1, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.t:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2IPKcvEET_S5_RKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 0, ptr %7, align 8, !tbaa !84
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #20
  store ptr %i.dj, ptr %i.di, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 152), align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp eq ptr %i.dk, null
  br i1 %.not.i, label %_ZN4llvh9StringRefC2EPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #23
  br label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.t, %bb.u
  %i.dm = phi i64 [ %i.dl, %bb.u ], [ 0, %bb.t ]
  call void @_ZN4llvh14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr %i.dk, i64 %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0) #18
  %i.dn = load i32, ptr %7, align 8, !tbaa !84
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %i.do = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #18 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !73
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !74 ; 2 uses
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp ult i64 %i.dv, 25
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.do, ptr noundef nonnull @.str.16, i64 noundef 25) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit18

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ds, ptr noundef nonnull align 1 dereferenceable(25) @.str.16, i64 25, i1 false)
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 25
  store ptr %i.dz, ptr %i.dr, align 8, !tbaa !74
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit18

_ZN4llvh11raw_ostreamlsEPKc.exit18:               ; preds = %bb.w, %bb.x
  %.0.i.i17 = phi ptr [ %i.dx, %bb.w ], [ %i.do, %bb.x ]
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 152), align 8, !tbaa !22
  %i.eb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL14OutputFilenameB5cxx11, i64 160), align 8, !tbaa !28
  %i.ec = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i17, ptr noundef %i.ea, i64 noundef %i.eb) #18 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !73
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !74 ; 2 uses
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = icmp ult i64 %i.ej, 2
  br i1 %i.ek, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit18
  %i.el = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ec, ptr noundef nonnull @.str.13, i64 noundef 2) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21

bb.z:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit18
  store i16 8250, ptr %i.eg, align 1
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !74
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store ptr %i.en, ptr %i.ef, align 8, !tbaa !74
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit21

_ZN4llvh11raw_ostreamlsEPKc.exit21:               ; preds = %bb.y, %bb.z
  %.0.i.i20 = phi ptr [ %i.el, %bb.y ], [ %i.ec, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.eo = load ptr, ptr %i.di, align 8, !tbaa !85, !noalias !86 ; 2 uses
  %i.ep = load i32, ptr %7, align 8, !tbaa !84, !noalias !86
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !9, !noalias !86
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !noalias !86
  call void %i.es(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.eo, i32 noundef %i.ep) #18, !inline_history !65
  %i.et = load ptr, ptr %9, align 8, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !28
  %i.ew = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i20, ptr noundef %i.et, i64 noundef %i.ev) #18 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !74 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !73
  %.not.i22 = icmp ult ptr %i.ey, %i.fa
  br i1 %.not.i22, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit21
  %i.fb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.ew, i8 noundef zeroext 10) #18 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit24

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit21
end_hunk_0
