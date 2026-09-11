Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Caching?download=true
inline.NumInlined: 1061
inline.NumDeleted: 512
begin_hunk_0_@"_ZZZN4llvm10localCacheERKNS_5TwineES2_S2_St8functionIFvjS2_St10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EEEEENK3$_0clEjNS_9StringRefES2_EN11CacheStream6commitEv":bb.a
  %i.h = load ptr, ptr %8, align 8, !tbaa !26, !noalias !267 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvm16CachedFileStream6commitEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21, !noalias !267
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #16
  br label %_ZN4llvm16CachedFileStream6commitEv.exit

_ZN4llvm16CachedFileStream6commitEv.exit.thread:  ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !56, !noalias !266
  store ptr null, ptr %10, align 8, !tbaa !44, !alias.scope !266
  br label %bb.c

_ZN4llvm16CachedFileStream6commitEv.exit:         ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14, !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14, !noalias !266
  %.pr = load ptr, ptr %10, align 8, !tbaa !44    ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.c, label %.thread

.thread:                                          ; preds = %_ZN4llvm16CachedFileStream6commitEv.exit
  store ptr %.pr, ptr %0, align 8, !tbaa !44
  br label %_ZN4llvm5ErrorD2Ev.exit55

bb.c:                                             ; preds = %_ZN4llvm16CachedFileStream6commitEv.exit.thread, %_ZN4llvm16CachedFileStream6commitEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 3 uses
  store ptr null, ptr %i.m, align 8, !tbaa !57
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN4llvm17raw_pwrite_streamEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm17raw_pwrite_streamEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(48) %i.n) #14, !inline_history !236
  br label %_ZNSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN4llvm17raw_pwrite_streamEEclEPS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load i32, ptr %i.r, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 4, ptr %i.u, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.v, align 1, !tbaa !34
  store ptr %i.t, ptr %12, align 8, !tbaa !21
  call void @_ZN4llvm12MemoryBuffer11getOpenFileEiRKNS_5TwineEmbbSt8optionalINS_5AlignEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %11, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(34) %12, i64 noundef -1, i1 noundef zeroext false, i1 noundef zeroext false, i16 0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = trunc i8 %i.x to i1
  br i1 %i.y, label %_ZN4llvmplERKNS_5TwineES2_.exit46, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvmplERKNS_5TwineES2_.exit46:                ; preds = %_ZNSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS1_EE5resetEPS1_.exit
  %.sroa.0.0.copyload.i = load i32, ptr %11, align 8, !tbaa !30 ; 2 uses
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !270 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr @.str.11, ptr %16, align 8, !alias.scope !271
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !271
  %i.ab = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 3, ptr %i.ab, align 8, !tbaa !33, !alias.scope !271
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 4, ptr %i.ac, align 1, !tbaa !34, !alias.scope !271
  store ptr %16, ptr %15, align 8, !alias.scope !272
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.3, ptr %i.ad, align 8, !alias.scope !272
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 2, ptr %i.ae, align 8, !tbaa !33, !alias.scope !272
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 3, ptr %i.af, align 1, !tbaa !34, !alias.scope !272
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.ag = load ptr, ptr %.sroa.31.0.copyload.i, align 8, !tbaa !40, !noalias !273
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !273
  call void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.31.0.copyload.i, i32 noundef %.sroa.0.0.copyload.i) #14, !inline_history !247
  store ptr %15, ptr %14, align 8, !alias.scope !274
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %17, ptr %i.aj, align 8, !alias.scope !274
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 2, ptr %i.ak, align 8, !tbaa !33, !alias.scope !274
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 4, ptr %i.al, align 1, !tbaa !34, !alias.scope !274
  store ptr %14, ptr %13, align 8, !alias.scope !275
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.4, ptr %i.am, align 8, !alias.scope !275
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 2, ptr %i.an, align 8, !tbaa !33, !alias.scope !275
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 3, ptr %i.ao, align 1, !tbaa !34, !alias.scope !275
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !276
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %13) #14, !noalias !276
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 %.sroa.0.0.copyload.i, ptr nonnull %.sroa.31.0.copyload.i) #14
  %i.ap = load ptr, ptr %7, align 8, !tbaa !26, !noalias !276 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit46
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !21, !noalias !276
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #16
  br label %_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit

_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !276
  %i.au = load ptr, ptr %17, align 8, !tbaa !26   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !21
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm17createStringErrorESt10error_codeRKNS_5TwineE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  br label %bb.l

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt10unique_ptrIN4llvm17raw_pwrite_streamESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #14
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 4, ptr %i.ba, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 33
  store i8 1, ptr %i.bb, align 1, !tbaa !34
  store ptr %i.t, ptr %19, align 8, !tbaa !21
  call void @_ZN4llvm3sys2fs8TempFile4keepERKNS_5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %18, ptr noundef nonnull align 8 dereferenceable(44) %i.az, ptr noundef nonnull align 8 dereferenceable(34) %19) #14
  %i.bc = load ptr, ptr %18, align 8, !tbaa !44   ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  store ptr null, ptr %10, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #14
  store ptr %1, ptr %21, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %11, ptr %i.bd, align 8, !tbaa !277
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit50.thread, label %bb.d

_ZN4llvm5ErrorD2Ev.exit50.thread:                 ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr null, ptr %10, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  br label %bb.j

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !40, !noalias !278
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !278
  %i.bh = call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #14, !noalias !278, !inline_history !260
  br i1 %i.bh, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %20, align 8, !tbaa !44, !alias.scope !278
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68, !noalias !278 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !68, !noalias !278 ; 2 uses
  %.not2627.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not2627.i, label %_ZN4llvm5ErrorD2Ev.exit50.sink.split, label %_ZN4llvm5ErrorD2Ev.exit7.i

_ZN4llvm5ErrorD2Ev.exit7.i:                       ; preds = %bb.e, %_ZN4llvm5ErrorD2Ev.exit9.i
  %i.bm = phi ptr [ %i.bo, %_ZN4llvm5ErrorD2Ev.exit9.i ], [ null, %bb.e ]
  %.sroa.016.028.i = phi ptr [ %i.cd, %_ZN4llvm5ErrorD2Ev.exit9.i ], [ %i.bj, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14, !noalias !278
  store ptr %i.bm, ptr %3, align 8, !tbaa !44, !noalias !278
  %i.bn = load i64, ptr %.sroa.016.028.i, align 8, !tbaa !42, !noalias !278
  store i64 %i.bn, ptr %5, align 8, !tbaa !42, !noalias !278
  store ptr null, ptr %.sroa.016.028.i, align 8, !tbaa !42, !noalias !278
  call fastcc void @"_ZN4llvm15handleErrorImplIZZZNS_10localCacheERKNS_5TwineES3_S3_St8functionIFvjS3_St10unique_ptrINS_12MemoryBufferESt14default_deleteIS6_EEEEENK3$_0clEjNS_9StringRefES3_EN11CacheStream6commitEvEUlRKNS_7ECErrorEE_JEEENS_5ErrorES5_INS_13ErrorInfoBaseES7_ISK_EEOT_DpOT0_"(ptr dead_on_unwind noalias writable align 8 %4, ptr nofree noundef align 8 dereferenceable(8) %5, ptr noundef nonnull readonly align 8 dereferenceable(16) %21), !noalias !278
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4), !noalias !278
  %i.bo = load ptr, ptr %2, align 8, !tbaa !44, !noalias !278 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !44, !noalias !278
  %i.bp = load ptr, ptr %4, align 8, !tbaa !44, !noalias !278 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_ZN4llvm5ErrorD2Ev.exit8.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit7.i
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !40, !noalias !278
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !278
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) #14, !noalias !278, !inline_history !261
  br label %_ZN4llvm5ErrorD2Ev.exit8.i

_ZN4llvm5ErrorD2Ev.exit8.i:                       ; preds = %bb.f, %_ZN4llvm5ErrorD2Ev.exit7.i
  %i.bu = load ptr, ptr %5, align 8, !tbaa !42, !noalias !278 ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i47, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit8.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40, !noalias !278
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !278
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu) #14, !noalias !278, !inline_history !262
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %_ZN4llvm5ErrorD2Ev.exit8.i
  %i.by = load ptr, ptr %3, align 8, !tbaa !44, !noalias !278 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN4llvm5ErrorD2Ev.exit9.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !40, !noalias !278
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !278
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.by) #14, !noalias !278, !inline_history !261
  br label %_ZN4llvm5ErrorD2Ev.exit9.i

_ZN4llvm5ErrorD2Ev.exit9.i:                       ; preds = %bb.g, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !278
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.016.028.i, i64 8 ; 2 uses
  %.not26.i = icmp eq ptr %i.cd, %i.bl
  br i1 %.not26.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i14.i.loopexit, label %_ZN4llvm5ErrorD2Ev.exit7.i

bb.h:                                             ; preds = %bb.d
  %i.ce = ptrtoint ptr %i.bc to i64
  store i64 %i.ce, ptr %6, align 8, !tbaa !42, !noalias !278
  call fastcc void @"_ZN4llvm15handleErrorImplIZZZNS_10localCacheERKNS_5TwineES3_S3_St8functionIFvjS3_St10unique_ptrINS_12MemoryBufferESt14default_deleteIS6_EEEEENK3$_0clEjNS_9StringRefES3_EN11CacheStream6commitEvEUlRKNS_7ECErrorEE_JEEENS_5ErrorES5_INS_13ErrorInfoBaseES7_ISK_EEOT_DpOT0_"(ptr dead_on_unwind noalias nonnull writable align 8 %20, ptr nofree noundef align 8 dereferenceable(8) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %21)
  %i.cf = load ptr, ptr %6, align 8, !tbaa !42, !noalias !278 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.cf, null
  br i1 %.not.i10.i, label %_ZN4llvm5ErrorD2Ev.exit50, label %_ZN4llvm5ErrorD2Ev.exit50.sink.split

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i14.i.loopexit: ; preds = %_ZN4llvm5ErrorD2Ev.exit9.i
  store ptr %i.bo, ptr %20, align 8
  br label %_ZN4llvm5ErrorD2Ev.exit50.sink.split

_ZN4llvm5ErrorD2Ev.exit50.sink.split:             ; preds = %bb.e, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i14.i.loopexit, %bb.h
  %.sink110 = phi ptr [ %i.cf, %bb.h ], [ %i.bc, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i14.i.loopexit ], [ %i.bc, %bb.e ] ; 2 uses
  %i.cg = load ptr, ptr %.sink110, align 8, !tbaa !40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %.sink110) #14
  br label %_ZN4llvm5ErrorD2Ev.exit50

_ZN4llvm5ErrorD2Ev.exit50:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit50.sink.split, %bb.h
  %.pr62 = load ptr, ptr %20, align 8, !tbaa !44  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %.pr62, ptr %10, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  %.not65 = icmp eq ptr %.pr62, null
  br i1 %.not65, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit50
  store ptr %.pr62, ptr %0, align 8, !tbaa !44
  store ptr null, ptr %10, align 8, !tbaa !44
  br label %bb.l

bb.j:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit50.thread, %_ZN4llvm5ErrorD2Ev.exit50
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #14
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cm = getelementptr inbounds nuw i8, ptr %22, i64 32
  store i8 4, ptr %i.cm, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.cn, align 1, !tbaa !34
  store ptr %i.cl, ptr %22, align 8, !tbaa !21
  %i.co = load i64, ptr %11, align 8, !tbaa !36
  store i64 %i.co, ptr %23, align 8, !tbaa !36
  store ptr null, ptr %11, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ck, ptr %i.a, align 4, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !19
  %.not.i.i51 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i51, label %bb.k, label %_ZNKSt8functionIFvjRKN4llvm5TwineESt10unique_ptrINS0_12MemoryBufferESt14default_deleteIS5_EEEEclEjS3_S8_.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZSt25__throw_bad_function_callv() #18
  unreachable

_ZNKSt8functionIFvjRKN4llvm5TwineESt10unique_ptrINS0_12MemoryBufferESt14default_deleteIS5_EEEEclEjS3_S8_.exit: ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !38
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %22, ptr noundef nonnull align 8 dereferenceable(8) %23) #14, !inline_history !263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cu = load ptr, ptr %23, align 8, !tbaa !36   ; 3 uses
  %.not.i52 = icmp eq ptr %i.cu, null
  br i1 %.not.i52, label %_ZN4llvm5ErrorD2Ev.exit53, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i: ; preds = %_ZNKSt8functionIFvjRKN4llvm5TwineESt10unique_ptrINS0_12MemoryBufferESt14default_deleteIS5_EEEEclEjS3_S8_.exit
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(24) %i.cu) #14, !inline_history !264
  br label %_ZN4llvm5ErrorD2Ev.exit53

_ZN4llvm5ErrorD2Ev.exit53:                        ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i, %_ZNKSt8functionIFvjRKN4llvm5TwineESt10unique_ptrINS0_12MemoryBufferESt14default_deleteIS5_EEEEclEjS3_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  store ptr null, ptr %0, align 8, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit53, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = load i8, ptr %i.w, align 8
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = load ptr, ptr %11, align 8, !tbaa !36   ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.da, null
  br i1 %.not.i.i54, label %bb.n, label %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.m
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(24) %i.da) #14, !inline_history !265
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt14default_deleteIN4llvm12MemoryBufferEEclEPS1_.exit.i.i, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %.pr64 = load ptr, ptr %10, align 8, !tbaa !44  ; 3 uses
  %i.de = icmp eq ptr %.pr64, null
  br i1 %i.de, label %_ZN4llvm5ErrorD2Ev.exit55, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.df = load ptr, ptr %.pr64, align 8, !tbaa !40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %.pr64) #14, !inline_history !1
  br label %_ZN4llvm5ErrorD2Ev.exit55

_ZN4llvm5ErrorD2Ev.exit55:                        ; preds = %.thread, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZZN4llvm10localCacheERKNS_5TwineES2_S2_St8functionIFvjS2_St10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EEEEENK3$_0clEjNS_9StringRefES2_EN11CacheStreamD2Ev"(ptr noundef nonnull align 8 dead_on_return(172) dereferenceable(172) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVZZN4llvm10localCacheERKNS_5TwineES2_S2_St8functionIFvjS2_St10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EEEEENK3$_0clEjNS_9StringRefES2_E11CacheStream", i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN4llvm3sys2fs8TempFileD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %i.g) #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef 3) #14, !inline_history !279 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm16CachedFileStreamE, i64 16), ptr %0, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !56, !range !61, !noundef !62
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.10, i1 noundef zeroext true) #18, !inline_history !69
  unreachable

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #16, !inline_history !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57   ; 3 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN4llvm16CachedFileStreamD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm17raw_pwrite_streamEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm17raw_pwrite_streamEEclEPS1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(48) %i.v) #14, !inline_history !2
  br label %_ZN4llvm16CachedFileStreamD2Ev.exit

_ZN4llvm16CachedFileStreamD2Ev.exit:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt14default_deleteIN4llvm17raw_pwrite_streamEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZZN4llvm10localCacheERKNS_5TwineES2_S2_St8functionIFvjS2_St10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EEEEENK3$_0clEjNS_9StringRefES2_EN11CacheStreamD0Ev"(ptr noundef nonnull align 8 dereferenceable(172) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVZZN4llvm10localCacheERKNS_5TwineES2_S2_St8functionIFvjS2_St10unique_ptrINS_12MemoryBufferESt14default_deleteIS5_EEEEENK3$_0clEjNS_9StringRefES2_E11CacheStream", i64 16), ptr %0, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #16, !inline_history !282
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN4llvm3sys2fs8TempFileD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %i.g) #14, !inline_history !282
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
end_hunk_0
