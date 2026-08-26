Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SourceManager?download=true
inline.NumInlined: 2081
inline.NumDeleted: 1106
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12lldb_private13SourceManager46DisplaySourceLinesWithLineNumbersUsingLastFileEjjjjPKcPNS_6StreamEPKNS_17SymbolContextListEN4lldb12LanguageTypeE:bb.a
  %i.q = load i8, ptr %i.p, align 8, !tbaa !412, !range !411, !noundef !258
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !tbaa !412
  br i1 %i.r, label %bb.g, label %_ZNSt14_Optional_baseIN12lldb_private13SourceManager18SupportFileAndLineELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN12lldb_private13SourceManager18SupportFileAndLineELb0ELb0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !16
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20, !inline_history !414
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20, !inline_history !414
  br label %_ZNSt14_Optional_baseIN12lldb_private13SourceManager18SupportFileAndLineELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.m, label %_ZNSt14_Optional_baseIN12lldb_private13SourceManager18SupportFileAndLineELb0ELb0EED2Ev.exit, !prof !28

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #20
  br label %_ZNSt14_Optional_baseIN12lldb_private13SourceManager18SupportFileAndLineELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN12lldb_private13SourceManager18SupportFileAndLineELb0ELb0EED2Ev.exit: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.i, %bb.g, %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 %.050, ptr %i.aj, align 8, !tbaa !407
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %2, ptr %i.ak, align 4, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19, !noalias !415 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %0, align 8, !tbaa !268, !noalias !415
  store <2 x ptr> %i.ao, ptr %13, align 16, !tbaa !268, !noalias !415
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Optional_baseIN12lldb_private13SourceManager18SupportFileAndLineELb0ELb0EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !415
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !27, !noalias !415
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !27, !noalias !415
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i

bb.p:                                             ; preds = %bb.n
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !415 ; 0 uses
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i

_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i: ; preds = %bb.p, %bb.o, %_ZNSt14_Optional_baseIN12lldb_private13SourceManager18SupportFileAndLineELb0ELb0EED2Ev.exit
  call void @_ZN12lldb_private13SourceManager7GetFileENS_16NonNullSharedPtrINS_11SupportFileEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.259") align 8 %15, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %13)
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !19, !noalias !415 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZN12lldb_private13SourceManager11GetLastFileEv.exit, label %bb.q

bb.q:                                             ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.av, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !16
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20, !inline_history !418
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20, !inline_history !418
  br label %_ZN12lldb_private13SourceManager11GetLastFileEv.exit

bb.s:                                             ; preds = %bb.q
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26, !noalias !415
  %.not.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i32 [ %i.ay, %bb.t ], [ %i.bi, %bb.u ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.v, label %_ZN12lldb_private13SourceManager11GetLastFileEv.exit, !prof !28

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #20
  br label %_ZN12lldb_private13SourceManager11GetLastFileEv.exit

_ZN12lldb_private13SourceManager11GetLastFileEv.exit: ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2ERKS2_.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.bk = load ptr, ptr %15, align 8, !tbaa !327
  %.not236 = icmp eq ptr %i.bk, null
  br i1 %.not236, label %bb.dd, label %bb.w

bb.w:                                             ; preds = %_ZN12lldb_private13SourceManager11GetLastFileEv.exit
  %i.bl = add i32 %2, -1
  %i.bm = add i32 %i.bl, %.050                    ; 2 uses
  %.not60242 = icmp ugt i32 %.050, %i.bm
  br i1 %.not60242, label %.loopexit, label %.lr.ph244

.lr.ph244:                                        ; preds = %bb.w
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %.not61 = icmp eq ptr %7, null
  %i.bp = ptrtoint ptr %i.b to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %23, i64 33 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %22, i64 33
  %.sroa.23.0..sroa_idx.i.i.i85 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.sroa.2.0..sroa_idx.i.i.i86 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.cq = icmp ne i32 %4, 0
  %i.cr = add i32 %4, -1
  %.sink.i = zext i32 %i.cr to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.cu = zext i32 %4 to i64
  %i.cv = icmp ugt i32 %4, 1
  %i.cw = icmp eq i32 %.050, 0
  br i1 %i.cw, label %_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit.thread, label %.lr.ph331

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.cx = icmp eq i32 %i.ku, 0
  br i1 %i.cx, label %_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit.thread, label %.lr.ph331, !llvm.loop !419

.lr.ph331:                                        ; preds = %.lr.ph244, %bb.x
  %.051243330 = phi i32 [ %i.ku, %bb.x ], [ %.050, %.lr.ph244 ] ; 6 uses
  %i.cy = load ptr, ptr %15, align 8, !tbaa !327  ; 3 uses
  %i.cz = call noundef zeroext i1 @_ZN12lldb_private13SourceManager4File20CalculateLineOffsetsEj(ptr noundef nonnull align 8 dereferenceable(128) %i.cy, i32 poison)
  br i1 %i.cz, label %_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit, label %_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit.thread

_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit: ; preds = %.lr.ph331
  %i.da = zext i32 %.051243330 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !420
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !421
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 2
  %i.dj = icmp ugt i64 %i.di, %i.da
  br i1 %i.dj, label %bb.y, label %_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit.thread

_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit.thread: ; preds = %_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit, %bb.x, %.lr.ph331, %.lr.ph244
  store i32 -1, ptr %i.aj, align 8, !tbaa !407
  br label %.loopexit

bb.y:                                             ; preds = %_ZN12lldb_private13SourceManager4File11LineIsValidEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr %i.bn, ptr %16, align 8, !tbaa !422
  store i64 0, ptr %i.bo, align 8, !tbaa !423
  store i8 0, ptr %i.bn, align 8, !tbaa !26
  br i1 %.not61, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.dk = call noundef i32 @_ZNK12lldb_private17SymbolContextList22NumLineEntriesWithLineEj(ptr noundef nonnull align 8 dereferenceable(192) %7, i32 noundef %.051243330) #20 ; 2 uses
  store i32 %i.dk, ptr %i.b, align 4, !tbaa !27
  %.not62 = icmp eq i32 %i.dk, 0
  br i1 %.not62, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  store ptr @.str.9, ptr %18, align 8, !tbaa !287, !alias.scope !424
  store i64 5, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !303, !alias.scope !424
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !304, !alias.scope !424
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !303, !alias.scope !424
  store i8 1, ptr %i.bs, align 8, !tbaa !306, !alias.scope !424
  store i64 %i.bp, ptr %i.bt, align 8, !tbaa !429, !alias.scope !424
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRjEEEEvlS2_S3_, ptr %i.bq, align 8, !alias.scope !424
  store i64 %i.bu, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !26, !alias.scope !424
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  store ptr %i.bv, ptr %17, align 8, !tbaa !422, !alias.scope !436
  store i64 0, ptr %i.bw, align 8, !tbaa !423, !alias.scope !436
  store i8 0, ptr %i.bv, align 8, !tbaa !26, !alias.scope !436
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !436
  store i32 0, ptr %i.bx, align 8, !tbaa !437, !noalias !436
  store i8 0, ptr %i.by, align 8, !tbaa !438, !noalias !436
  store i32 1, ptr %i.bz, align 4, !tbaa !439, !noalias !436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false), !noalias !436
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %12, align 8, !tbaa !17, !noalias !436
  store ptr %17, ptr %i.cb, align 8, !tbaa !440, !noalias !436
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef null, i64 noundef 0, i32 noundef 0) #20
  %i.dl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(33) %18) #20 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !436
  %i.dm = load ptr, ptr %16, align 8, !tbaa !441  ; 6 uses
  %i.dn = icmp eq ptr %i.dm, %i.bn
  %i.do = load ptr, ptr %17, align 8, !tbaa !441  ; 5 uses
  %i.dp = icmp eq ptr %i.do, %i.bv                ; 2 uses
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aa
  br i1 %i.dp, label %bb.ab, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aa
  br i1 %i.dp, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dq = load i64, ptr %i.bw, align 8, !tbaa !423 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dr)
  switch i64 %i.dq, label %bb.ad [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ds = load i8, ptr %i.do, align 1, !tbaa !26
  store i8 %i.ds, ptr %i.dm, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.do, i64 %i.dq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.dt = load i64, ptr %i.bw, align 8, !tbaa !423 ; 2 uses
  store i64 %i.dt, ptr %i.bo, align 8, !tbaa !423
  %i.du = load ptr, ptr %16, align 8, !tbaa !441
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt
  store i8 0, ptr %i.dv, align 1, !tbaa !26
  %.pre.i = load ptr, ptr %17, align 8, !tbaa !441
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.do, ptr %16, align 8, !tbaa !441
  %i.dw = load <2 x i64>, ptr %i.bw, align 8, !tbaa !26
  store <2 x i64> %i.dw, ptr %i.bo, align 8, !tbaa !26
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dx = load i64, ptr %i.bn, align 8, !tbaa !26
  store ptr %i.do, ptr %16, align 8, !tbaa !441
  %i.dy = load <2 x i64>, ptr %i.bw, align 8, !tbaa !26
  store <2 x i64> %i.dy, ptr %i.bo, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.dm, null
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dm, ptr %17, align 8, !tbaa !441
  store i64 %i.dx, ptr %i.bv, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bv, ptr %17, align 8, !tbaa !441
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ae, %bb.af
  %i.dz = phi ptr [ %i.dm, %bb.ae ], [ %i.bv, %bb.af ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bw, align 8, !tbaa !423
  store i8 0, ptr %i.dz, align 1, !tbaa !26
  %i.ea = load ptr, ptr %17, align 8, !tbaa !441  ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.bv
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ec = load i64, ptr %i.bv, align 8, !tbaa !26
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.ah

bb.ag:                                            ; preds = %bb.z
  %i.ee = load i64, ptr %i.bo, align 8, !tbaa !423
  %i.ef = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef %i.ee, ptr noundef nonnull @.str.10, i64 noundef 4) #20 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.eg = icmp eq i32 %.051243330, %3             ; 2 uses
  %i.eh = select i1 %i.eg, ptr %5, ptr @.str.12
  %i.ei = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 3, ptr noundef nonnull @.str.11, ptr noundef %i.eh) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  store ptr %i.cc, ptr %19, align 8, !tbaa !422
  %i.ej = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.ej, ptr %i.a, align 8, !tbaa !303
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.el = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.el, ptr %19, align 8, !tbaa !441
  %i.em = load i64, ptr %i.a, align 8, !tbaa !303
  store i64 %i.em, ptr %i.cc, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.aj, %bb.ai
  %i.en = phi ptr [ %i.el, %bb.aj ], [ %i.cc, %bb.ai ] ; 2 uses
  switch i64 %i.ej, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.eo = load i8, ptr %i.c, align 1, !tbaa !26
  store i8 %i.eo, ptr %i.en, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.al:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr nonnull align 1 %i.c, i64 %i.ej, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.ak, %bb.al
  %i.ep = load i64, ptr %i.a, align 8, !tbaa !303 ; 2 uses
  store i64 %i.ep, ptr %i.cd, align 8, !tbaa !423
  %i.eq = load ptr, ptr %19, align 8, !tbaa !441
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ep
  store i8 0, ptr %i.er, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.es = load ptr, ptr %i.cf, align 8, !tbaa !35, !noalias !442 ; 12 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i67, label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.am

end_hunk_0
begin_hunk_1_@_ZN12lldb_private13SourceManager46DisplaySourceLinesWithLineNumbersUsingLastFileEjjjjPKcPNS_6StreamEPKNS_17SymbolContextListEN4lldb12LanguageTypeE:bb.a
  %.ph = phi i1 [ %i.ff, %bb.as ], [ false, %_ZNSt10shared_ptrIN12lldb_private8DebuggerEEC2ERKS2_.exit ] ; 3 uses
  %i.fg = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 4294967297
  %i.fi = trunc i64 %i.fg to i32                  ; 2 uses
  br i1 %i.fh, label %.split221, label %bb.au

.split221:                                        ; preds = %bb.at
  store i32 0, ptr %i.et, align 8, !tbaa !14
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.fj, align 4, !tbaa !16
  %i.fk = load ptr, ptr %i.es, align 8, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #20, !inline_history !267
  %i.fn = load ptr, ptr %i.es, align 8, !tbaa !17
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #20, !inline_history !267
  br i1 %.ph, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.fq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i72 = icmp eq i8 %i.fq, 0
  br i1 %.not.i.i.i72, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fr = add nsw i32 %i.fi, -1
  store i32 %i.fr, ptr %i.et, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.fs = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i = phi i32 [ %i.fi, %bb.av ], [ %i.fs, %bb.aw ]
  %i.ft = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ft, label %.split, label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !28

.split:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #20
  br i1 %.ph, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  br i1 %.ph, label %_ZN4llvmplERKNS_5TwineES2_.exit, label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.split, %.split221
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  %i.fu = call { ptr, i64 } @_ZNK12lldb_private8Debugger31GetStopShowLineMarkerAnsiPrefixEv(ptr noundef nonnull align 8 dereferenceable(1832) %i.fb) #20 ; 2 uses
  %i.fv = extractvalue { ptr, i64 } %i.fu, 0
  %i.fw = extractvalue { ptr, i64 } %i.fu, 1
  store ptr %i.fv, ptr %23, align 8, !alias.scope !445
  store i64 %i.fw, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !26, !alias.scope !445
  store ptr %19, ptr %i.cg, align 8, !alias.scope !445
  store i8 5, ptr %i.ch, align 8, !tbaa !450, !alias.scope !445
  store i8 4, ptr %i.ci, align 1, !tbaa !453, !alias.scope !445
  %i.fx = call { ptr, i64 } @_ZNK12lldb_private8Debugger31GetStopShowLineMarkerAnsiSuffixEv(ptr noundef nonnull align 8 dereferenceable(1832) %i.fb) #20 ; 2 uses
  %i.fy = extractvalue { ptr, i64 } %i.fx, 0      ; 2 uses
  %i.fz = extractvalue { ptr, i64 } %i.fx, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.ga = load i8, ptr %i.ch, align 8, !tbaa !450, !noalias !460 ; 3 uses
  switch i8 %i.ga, label %bb.ay [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit87
    i8 1, label %bb.ax
  ]

bb.ax:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  store ptr %i.fy, ptr %22, align 8
  store i64 %i.fz, ptr %.sroa.23.0..sroa_idx.i.i.i85, align 8, !tbaa !26
  br label %_ZN4llvmplERKNS_5TwineES2_.exit87

bb.ay:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit
  %i.gb = load i8, ptr %i.ci, align 1, !tbaa !453, !noalias !460
  %i.gc = icmp eq i8 %i.gb, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i73 = load ptr, ptr %23, align 8, !noalias !460
  %.sroa.56.0.copyload.i.i75 = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !noalias !460
  %.014.i.i76 = select i1 %i.gc, i8 %i.ga, i8 2
  %.sroa.05.0.i.i77 = select i1 %i.gc, ptr %.sroa.05.0.copyload.i.i73, ptr %23
  %.sroa.56.0.i.i78 = select i1 %i.gc, i64 %.sroa.56.0.copyload.i.i75, i64 undef
  store ptr %.sroa.05.0.i.i77, ptr %22, align 8, !alias.scope !460
  store i64 %.sroa.56.0.i.i78, ptr %.sroa.23.0..sroa_idx.i.i.i85, align 8, !tbaa !26, !alias.scope !460
  store ptr %i.fy, ptr %i.cl, align 8, !alias.scope !460
  store i64 %i.fz, ptr %.sroa.2.0..sroa_idx.i.i.i86, align 8, !tbaa !26, !alias.scope !460
  br label %_ZN4llvmplERKNS_5TwineES2_.exit87

_ZN4llvmplERKNS_5TwineES2_.exit87:                ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.ax, %bb.ay
  %.sink327.a = phi i8 [ %.014.i.i76, %bb.ay ], [ 5, %bb.ax ], [ %i.ga, %_ZN4llvmplERKNS_5TwineES2_.exit ]
  %.sink326 = phi i8 [ 5, %bb.ay ], [ 1, %bb.ax ], [ 1, %_ZN4llvmplERKNS_5TwineES2_.exit ]
  store i8 %.sink327.a, ptr %i.cj, align 8, !tbaa !461
  store i8 %.sink326, ptr %i.ck, align 1, !tbaa !461
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(34) %22) #20
  %i.gd = load ptr, ptr %21, align 8, !tbaa !441
  %i.ge = load i64, ptr %i.cm, align 8, !tbaa !423
  call void @_ZN12lldb_private4ansi23FormatAnsiTerminalCodesB5cxx11EN4llvm9StringRefEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr %i.gd, i64 %i.ge, i1 noundef zeroext true)
  %i.gf = load ptr, ptr %19, align 8, !tbaa !441  ; 6 uses
  %i.gg = icmp eq ptr %i.gf, %i.cc
  %i.gh = load ptr, ptr %20, align 8, !tbaa !441  ; 5 uses
  %i.gi = icmp eq ptr %i.gh, %i.cn                ; 2 uses
  br i1 %i.gg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i93: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit87
  br i1 %i.gi, label %bb.az, label %.thread.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i88: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit87
  br i1 %i.gi, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i89

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i93
  %i.gj = load i64, ptr %i.co, align 8, !tbaa !423 ; 3 uses
  %i.gk = icmp ult i64 %i.gj, 16
  call void @llvm.assume(i1 %i.gk)
  switch i64 %i.gj, label %bb.bb [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i91
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.gl = load i8, ptr %i.gh, align 1, !tbaa !26
  store i8 %i.gl, ptr %i.gf, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i91

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.gh, i64 %i.gj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i91: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.gm = load i64, ptr %i.co, align 8, !tbaa !423 ; 2 uses
  store i64 %i.gm, ptr %i.cd, align 8, !tbaa !423
  %i.gn = load ptr, ptr %19, align 8, !tbaa !441
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gm
  store i8 0, ptr %i.go, align 1, !tbaa !26
  %.pre.i92 = load ptr, ptr %20, align 8, !tbaa !441
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit95

.thread.i94:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i93
  store ptr %i.gh, ptr %19, align 8, !tbaa !441
  %i.gp = load <2 x i64>, ptr %i.co, align 8, !tbaa !26
  store <2 x i64> %i.gp, ptr %i.cd, align 8, !tbaa !26
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i89: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i88
  %i.gq = load i64, ptr %i.cc, align 8, !tbaa !26
  store ptr %i.gh, ptr %19, align 8, !tbaa !441
  %i.gr = load <2 x i64>, ptr %i.co, align 8, !tbaa !26
  store <2 x i64> %i.gr, ptr %i.cd, align 8, !tbaa !26
  %.not.i90 = icmp eq ptr %i.gf, null
  br i1 %.not.i90, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i89
  store ptr %i.gf, ptr %20, align 8, !tbaa !441
  store i64 %i.gq, ptr %i.cn, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit95

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i89, %.thread.i94
  store ptr %i.cn, ptr %20, align 8, !tbaa !441
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i91, %bb.bc, %bb.bd
  %i.gs = phi ptr [ %i.gf, %bb.bc ], [ %i.cn, %bb.bd ], [ %.pre.i92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i91 ]
  store i64 0, ptr %i.co, align 8, !tbaa !423
  store i8 0, ptr %i.gs, align 1, !tbaa !26
  %i.gt = load ptr, ptr %20, align 8, !tbaa !441  ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.cn
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit95
  %i.gv = load i64, ptr %i.cn, align 8, !tbaa !26
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  %i.gx = load ptr, ptr %21, align 8, !tbaa !441  ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.cp
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %i.gz = load i64, ptr %i.cp, align 8, !tbaa !26
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %.split221, %.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.not.i71201206216 = phi i1 [ %.not.i71, %.split221 ], [ %.not.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.not.i71, %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.not.i71, %.split ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ], [ true, %bb.an ]
  %.sroa.8.0194200208215 = phi ptr [ %i.es, %.split221 ], [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.es, %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.es, %.split ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ], [ null, %bb.an ] ; 23 uses
  %i.hb = phi ptr [ %i.fb, %.split221 ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.fb, %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.fb, %.split ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ], [ null, %bb.an ] ; 2 uses
  %.not.i.i.i69195199210214 = phi i1 [ false, %.split221 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ false, %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %.split ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ], [ true, %bb.an ] ; 3 uses
  %i.hc = load ptr, ptr %16, align 8, !tbaa !441
  %i.hd = load ptr, ptr %19, align 8, !tbaa !441
  %i.he = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull @.str.13, ptr noundef %i.hc, ptr noundef %i.hd, i32 noundef %.051243330) #20 ; 0 uses
  %or.cond = and i1 %i.cq, %i.eg                  ; 2 uses
  %.sroa.5.0 = zext i1 %or.cond to i8
  %i.hf = load ptr, ptr %15, align 8, !tbaa !327
  %i.hg = call noundef i64 @_ZN12lldb_private13SourceManager4File18DisplaySourceLinesEjSt8optionalImEjjPNS_6StreamEN4lldb12LanguageTypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.hf, i32 noundef %.051243330, i64 %.sink.i, i8 %.sroa.5.0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, i32 noundef %8)
  br i1 %or.cond, label %bb.be, label %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit.thread228

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread
  br i1 %.not.i.i.i69195199210214, label %_ZNSt10shared_ptrIN12lldb_private8DebuggerEEC2ERKS2_.exit104, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.8.0194200208215, i64 8 ; 3 uses
  %i.hi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i103 = icmp eq i8 %i.hi, 0
  br i1 %.not.i.i.i.i103, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !27
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hh, align 4, !tbaa !27
  br label %_ZNSt10shared_ptrIN12lldb_private8DebuggerEEC2ERKS2_.exit104

bb.bh:                                            ; preds = %bb.bf
  %i.hl = atomicrmw volatile add ptr %i.hh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private8DebuggerEEC2ERKS2_.exit104

_ZNSt10shared_ptrIN12lldb_private8DebuggerEEC2ERKS2_.exit104: ; preds = %bb.be, %bb.bg, %bb.bh
  br i1 %.not.i71201206216, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private8DebuggerEEC2ERKS2_.exit104
  %i.hm = call noundef i32 @_ZNK12lldb_private8Debugger17GetStopShowColumnEv(ptr noundef nonnull align 8 dereferenceable(1832) %i.hb) #20 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ho = call noundef zeroext i1 @_ZNK12lldb_private8Debugger11GetUseColorEv(ptr noundef nonnull align 8 dereferenceable(1832) %i.hb) #20
  br i1 %i.ho, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hp = icmp eq i32 %i.hm, 2
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private8DebuggerEEC2ERKS2_.exit104, %bb.bj, %bb.bk
  %.ph223 = phi i1 [ true, %bb.bj ], [ %i.hp, %bb.bk ], [ false, %_ZNSt10shared_ptrIN12lldb_private8DebuggerEEC2ERKS2_.exit104 ] ; 3 uses
  %.not.i.i106 = icmp eq ptr %.sroa.8.0194200208215, null
  br i1 %.not.i.i106, label %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.8.0194200208215, i64 8 ; 4 uses
  %i.hr = load atomic i64, ptr %i.hq acquire, align 8 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 4294967297
  %i.ht = trunc i64 %i.hr to i32                  ; 2 uses
  br i1 %i.hs, label %.split233, label %bb.bn

.split233:                                        ; preds = %bb.bm
  store i32 0, ptr %i.hq, align 8, !tbaa !14
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.8.0194200208215, i64 12
  store i32 0, ptr %i.hu, align 4, !tbaa !16
  %i.hv = load ptr, ptr %.sroa.8.0194200208215, align 8, !tbaa !17
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0194200208215) #20, !inline_history !267
  %i.hy = load ptr, ptr %.sroa.8.0194200208215, align 8, !tbaa !17
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0194200208215) #20, !inline_history !267
  br i1 %.ph223, label %bb.bq, label %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit.thread228

bb.bn:                                            ; preds = %bb.bm
  %i.ib = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i107 = icmp eq i8 %i.ib, 0
  br i1 %.not.i.i.i107, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ic = add nsw i32 %i.ht, -1
  store i32 %i.ic, ptr %i.hq, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108

bb.bp:                                            ; preds = %bb.bn
  %i.id = atomicrmw volatile add ptr %i.hq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i109 = phi i32 [ %i.ht, %bb.bo ], [ %i.id, %bb.bp ]
  %i.ie = icmp eq i32 %.0.i.i.i.i109, 1
  br i1 %i.ie, label %.split231, label %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit, !prof !28

.split231:                                        ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0194200208215) #20
  br i1 %.ph223, label %bb.bq, label %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit.thread228

_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i108, %bb.bl
  br i1 %.ph223, label %bb.bq, label %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit.thread228

bb.bq:                                            ; preds = %.split233, %.split231, %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store ptr %i.cs, ptr %24, align 8, !tbaa !422
  store i64 0, ptr %i.ct, align 8, !tbaa !423
  store i8 0, ptr %i.cs, align 8, !tbaa !26
  %i.if = load ptr, ptr %15, align 8, !tbaa !327
  %i.ig = call noundef zeroext i1 @_ZN12lldb_private13SourceManager4File7GetLineEjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.if, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %24) ; 0 uses
  %i.ih = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull @.str.14) #20 ; 0 uses
  %i.ii = load i64, ptr %i.ct, align 8
  %i.ij = icmp ne i64 %i.ii, 0
  %or.cond235240 = select i1 %i.cv, i1 %i.ij, i1 false
  br i1 %or.cond235240, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.bq
  %i.ik = call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull @.str.15) #20 ; 0 uses
  %i.il = load ptr, ptr %24, align 8, !tbaa !441  ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.cs
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %.critedge
  %i.in = load i64, ptr %i.cs, align 8, !tbaa !26
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  br label %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit.thread228

.lr.ph:                                           ; preds = %bb.bq, %.lr.ph
  %i.ip = phi i64 [ %i.iw, %.lr.ph ], [ 1, %bb.bq ] ; 3 uses
  %.0241 = phi i64 [ %i.ip, %.lr.ph ], [ 0, %bb.bq ]
  %i.iq = load ptr, ptr %24, align 8, !tbaa !441
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.0241
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !26
  %i.it = icmp eq i8 %i.is, 9
  %i.iu = select i1 %i.it, i8 9, i8 32
  %i.iv = call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 noundef signext %i.iu) #20 ; 0 uses
  %i.iw = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %i.ix = icmp samesign ult i64 %i.iw, %i.cu
  %i.iy = load i64, ptr %i.ct, align 8
  %i.iz = icmp ult i64 %i.ip, %i.iy
  %or.cond235 = select i1 %i.ix, i1 %i.iz, i1 false
  br i1 %or.cond235, label %.lr.ph, label %.critedge, !llvm.loop !462

_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit.thread228: ; preds = %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %.split233, %.split231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit
  %.not63 = icmp eq i64 %i.hg, 0
  br i1 %.not63, label %bb.br, label %.critedge66

bb.br:                                            ; preds = %_ZL34should_show_stop_column_with_caretSt10shared_ptrIN12lldb_private8DebuggerEE.exit.thread228
  store i32 -1, ptr %i.aj, align 8, !tbaa !407
  br i1 %.not.i.i.i69195199210214, label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.8.0194200208215, i64 8 ; 4 uses
  %i.jb = load atomic i64, ptr %i.ja acquire, align 8 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 4294967297
  %i.jd = trunc i64 %i.jb to i32                  ; 2 uses
  br i1 %i.jc, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.ja, align 8, !tbaa !14
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.8.0194200208215, i64 12
  store i32 0, ptr %i.je, align 4, !tbaa !16
  %i.jf = load ptr, ptr %.sroa.8.0194200208215, align 8, !tbaa !17
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0194200208215) #20, !inline_history !267
  %i.ji = load ptr, ptr %.sroa.8.0194200208215, align 8, !tbaa !17
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0194200208215) #20, !inline_history !267
  br label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118

bb.bu:                                            ; preds = %bb.bs
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i115 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i115, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jm = add nsw i32 %i.jd, -1
  store i32 %i.jm, ptr %i.ja, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116

bb.bw:                                            ; preds = %bb.bu
  %i.jn = atomicrmw volatile add ptr %i.ja, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i117 = phi i32 [ %i.jd, %bb.bv ], [ %i.jn, %bb.bw ]
  %i.jo = icmp eq i32 %.0.i.i.i.i117, 1
  br i1 %i.jo, label %bb.bx, label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118, !prof !28

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0194200208215) #20
  br label %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118

_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118: ; preds = %bb.br, %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116, %bb.bx
  %i.jp = load ptr, ptr %19, align 8, !tbaa !441  ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.cc
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118
  %i.jr = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %_ZNSt12__shared_ptrIN12lldb_private8DebuggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
end_hunk_1
