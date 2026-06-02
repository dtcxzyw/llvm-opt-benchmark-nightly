inline.NumInlined: 373
inline.NumDeleted: 222
begin_hunk_0_@_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb
define internal fastcc void @_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb(ptr dead_on_unwind noalias writable align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.llvh::sys::fs::file_status", align 8 ; 9 uses
  %7 = alloca %"class.std::error_code", align 8   ; 8 uses
  %8 = alloca %"class.std::unique_ptr.4", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call { i32, ptr } @_ZN4llvh3sys2fs15openFileForReadERKNS_5TwineERiNS1_9OpenFlagsEPNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 0, ptr noundef null) #21 ; 2 uses
  %i.c = extractvalue { i32, ptr } %i.b, 0        ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i32, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  store i32 %i.c, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !43
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.i = load atomic i8, ptr @_ZGVZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize acquire, align 8, !noalias !60
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f, !prof !63

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize) #21, !noalias !60
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call noundef i32 @_ZN4llvh3sys7Process11getPageSizeEv() #21, !noalias !60
  store i32 %i.l, ptr @_ZZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize, align 4, !tbaa !3, !noalias !60
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize) #21, !noalias !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.m = icmp eq i64 %3, -1
  br i1 %i.m, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.n = icmp eq i64 %2, -1
  br i1 %i.n, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !60
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 36, i1 false), !noalias !60
  store i32 65535, ptr %i.o, align 4, !tbaa !64, !noalias !60
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !noalias !60
  %i.q = call { i32, ptr } @_ZN4llvh3sys2fs6statusEiRNS1_11file_statusE(i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(64) %6) #21, !noalias !60 ; 2 uses
  %i.r = extractvalue { i32, ptr } %i.q, 0        ; 2 uses
  %.not88.i = icmp eq i32 %i.r, 0
  br i1 %.not88.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = extractvalue { i32, ptr } %i.q, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !alias.scope !60
  %i.v = or i8 %i.u, 1
  store i8 %i.v, ptr %i.t, align 8, !alias.scope !60
  store i32 %i.r, ptr %0, align 8, !tbaa !3, !alias.scope !60
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !43, !alias.scope !60
  br label %.thread.i

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !68, !noalias !60
  switch i32 %i.x, label %bb.k [
    i32 5, label %bb.l
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZL24getMemoryBufferForStreamiRKN4llvh5TwineE(ptr dead_on_unwind noalias writable align 8 %0, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(18) %1)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !60
  br label %_ZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb.exit

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !69, !noalias !60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.f
  %.030.i = phi i64 [ %3, %bb.f ], [ %i.z, %bb.l ], [ %2, %bb.g ] ; 8 uses
  br i1 %5, label %_ZL13shouldUseMmapimmlbib.exit.thread.i, label %_ZL13shouldUseMmapimmlbib.exit.i

_ZL13shouldUseMmapimmlbib.exit.i:                 ; preds = %bb.m
  %i.aa = load i32, ptr @_ZZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbbE8PageSize, align 4, !tbaa !3, !noalias !60
  %i.ab = icmp ugt i64 %.030.i, 16383
  %i.ac = zext i32 %i.aa to i64
  %i.ad = icmp uge i64 %.030.i, %i.ac
  %or.cond.not25.i.i = and i1 %i.ab, %i.ad
  br i1 %or.cond.not25.i.i, label %bb.n, label %_ZL13shouldUseMmapimmlbib.exit.thread.i

bb.n:                                             ; preds = %_ZL13shouldUseMmapimmlbib.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !60
  store i32 0, ptr %7, align 8, !tbaa !70, !noalias !60
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #24
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !72, !noalias !60
  %i.ag = call fastcc noundef ptr @_ZnwmRKN12_GLOBAL__N_116NamedBufferAllocE(i64 noundef 48, ptr nonnull align 8 dereferenceable(18) %1), !noalias !60 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh20WritableMemoryBufferEEE, i64 16), ptr %i.ag, align 8, !tbaa !17, !noalias !60
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ai = call noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() #21, !noalias !60
  %i.aj = add i32 %i.ai, -1
  %.not.i.i.i = sext i32 %i.aj to i64
  %i.ak = and i64 %4, %.not.i.i.i
  %i.al = add i64 %i.ak, %.030.i
  %i.am = call noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() #21, !noalias !60
  %i.an = sub i32 0, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = and i64 %4, %i.ao
  call void @_ZN4llvh3sys2fs18mapped_file_regionC1EiNS2_7mapmodeEmmRSt10error_code(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i32 noundef %i.h, i32 noundef 2, i64 noundef %i.al, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %7) #21, !noalias !60
  %i.aq = load i32, ptr %7, align 8, !tbaa !70, !noalias !60
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh20WritableMemoryBufferEEC2EbimmRSt10error_code.exit.i, label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread.i

_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh20WritableMemoryBufferEEC2EbimmRSt10error_code.exit.i: ; preds = %bb.n
  %i.ar = call noundef ptr @_ZNK4llvh3sys2fs18mapped_file_region10const_dataEv(ptr noundef nonnull align 8 dereferenceable(20) %i.ah) #21, !noalias !60
  %i.as = call noundef i32 @_ZN4llvh3sys2fs18mapped_file_region9alignmentEv() #21, !noalias !60
  %i.at = add i32 %i.as, -1
  %.not.i12.i.i = sext i32 %i.at to i64
  %i.au = and i64 %4, %.not.i12.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.030.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !7, !noalias !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !11, !noalias !60
  %.pr.i = load i32, ptr %7, align 8, !tbaa !70, !noalias !60
  %.not89.i = icmp eq i32 %.pr.i, 0
  br i1 %.not89.i, label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread.i

_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh20WritableMemoryBufferEEC2EbimmRSt10error_code.exit.i, %bb.n
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !17, !noalias !60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !60
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #21, !noalias !60, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !60
  br label %_ZL13shouldUseMmapimmlbib.exit.thread.i

_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZN12_GLOBAL__N_120MemoryBufferMMapFileIN4llvh20WritableMemoryBufferEEC2EbimmRSt10error_code.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !alias.scope !60
  %i.be = and i8 %i.bd, -2
  store i8 %i.be, ptr %i.bc, align 8, !alias.scope !60
  %i.bf = ptrtoint ptr %i.ag to i64
  store i64 %i.bf, ptr %0, align 8, !tbaa !45, !alias.scope !60
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !60
  br label %_ZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb.exit

_ZL13shouldUseMmapimmlbib.exit.thread.i:          ; preds = %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit.thread.i, %_ZL13shouldUseMmapimmlbib.exit.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !60
  call void @_ZN4llvh20WritableMemoryBuffer21getNewUninitMemBufferEmRKNS_5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.4") align 8 %8, i64 noundef %.030.i, ptr noundef nonnull align 8 dereferenceable(18) %1), !noalias !60
  %i.bg = load ptr, ptr %8, align 8, !noalias !60 ; 5 uses
  %.not90.i = icmp eq ptr %i.bg, null
  %i.bh = ptrtoint ptr %i.bg to i64
  br i1 %.not90.i, label %.thread113.i, label %bb.o

.thread113.i:                                     ; preds = %_ZL13shouldUseMmapimmlbib.exit.thread.i
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #24
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !alias.scope !60
  %i.bl = or i8 %i.bk, 1
  store i8 %i.bl, ptr %i.bj, align 8, !alias.scope !60
  store i32 12, ptr %0, align 8, !tbaa !3, !alias.scope !60
  %.sroa.21.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %.sroa.21.0..sroa_idx.i42.i, align 8, !tbaa !43, !alias.scope !60
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i

bb.o:                                             ; preds = %_ZL13shouldUseMmapimmlbib.exit.thread.i
  %.not3999.i = icmp eq i64 %.030.i, 0
  br i1 %.not3999.i, label %.thread86.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !7, !noalias !60
  %i.bo = add i64 %.030.i, %4
  %i.bp = tail call ptr @__errno_location() #24   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %.lr.ph.i
  %.0101.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.bv, %bb.s ] ; 3 uses
  %.066100.i = phi i64 [ %.030.i, %.lr.ph.i ], [ %i.bu, %bb.s ] ; 4 uses
  %i.bq = sub i64 %i.bo, %.066100.i
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  store i32 0, ptr %i.bp, align 4, !tbaa !3
  %i.br = call noundef i64 @pread(i32 noundef %i.h, ptr noundef %.0101.i, i64 noundef %.066100.i, i64 noundef %i.bq) #21, !noalias !60, !inline_history !74 ; 3 uses
  switch i64 %i.br, label %bb.s [
    i64 -1, label %bb.r
    i64 0, label %.thread81.i
  ]

bb.r:                                             ; preds = %bb.q
  %i.bs = load i32, ptr %i.bp, align 4, !tbaa !3  ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 4
  br i1 %i.bt, label %bb.q, label %bb.t, !llvm.loop !75

.thread81.i:                                      ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 1 %.0101.i, i8 0, i64 %.066100.i, i1 false), !noalias !60
  br label %.thread86.i

bb.s:                                             ; preds = %bb.q
  %i.bu = sub i64 %.066100.i, %i.br               ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %.0101.i, i64 %i.br
  %.not39.i = icmp eq i64 %i.bu, 0
  br i1 %.not39.i, label %.thread86.i, label %bb.p

.thread86.i:                                      ; preds = %bb.s, %.thread81.i, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !alias.scope !60
  %i.by = and i8 %i.bx, -2
  store i8 %i.by, ptr %i.bw, align 8, !alias.scope !60
  store i64 %i.bh, ptr %0, align 8, !tbaa !45, !alias.scope !60
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i

bb.t:                                             ; preds = %bb.r
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #24
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !alias.scope !60
  %i.cc = or i8 %i.cb, 1
  store i8 %i.cc, ptr %i.ca, align 8, !alias.scope !60
  store i32 %i.bs, ptr %0, align 8, !tbaa !3, !alias.scope !60
  %.sroa.21.0..sroa_idx.i43.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %.sroa.21.0..sroa_idx.i43.i, align 8, !tbaa !43, !alias.scope !60
  %i.cd = load ptr, ptr %i.bg, align 8, !tbaa !17, !noalias !60
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !60
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(24) %i.bg) #21, !noalias !60, !inline_history !73
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i

_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i: ; preds = %bb.t, %.thread86.i, %.thread113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !60
  br label %_ZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb.exit

_ZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb.exit: ; preds = %.thread.i, %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit.i, %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit46.i
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ch = call i32 @close(i32 noundef %i.cg) #21  ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZL15getOpenFileImplIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEEiRKNS0_5TwineEmmlbb.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh20WritableMemoryBuffer12getFileSliceERKNS_5TwineEmmb(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 {
bb.a:
  tail call fastcc void @_ZL10getFileAuxIN4llvh20WritableMemoryBufferEENS0_7ErrorOrISt10unique_ptrIT_St14default_deleteIS4_EEEERKNS0_5TwineElmmbb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i64 noundef -1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh20WritableMemoryBuffer21getNewUninitMemBufferEmRKNS_5TwineE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.4") align 8 captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 256, ptr %i.c, align 4, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.e, 1
  br i1 %.not.i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !12
  switch i8 %i.g, label %bb.h [
    i8 1, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
    i8 3, label %bb.c
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %2, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #22
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.e:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !29
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.f:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.n, align 8, !tbaa !30
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !31
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.g:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !23
  %i.s = zext i32 %i.r to i64
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  call void @_ZNK4llvh5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  %i.t = load ptr, ptr %3, align 8, !tbaa !21
  %i.u = load i32, ptr %i.b, align 8, !tbaa !23
  %i.v = zext i32 %i.u to i64
  br label %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit

_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.3.0.i = phi i64 [ %i.v, %bb.h ], [ %i.s, %bb.g ], [ 0, %bb.b ], [ %i.m, %bb.e ], [ %.sroa.7.0.copyload.i.i, %bb.f ], [ 0, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.h ], [ %i.p, %bb.g ], [ null, %bb.b ], [ %i.k, %bb.e ], [ %.sroa.0.0.copyload.i.i, %bb.f ], [ null, %bb.c ], [ %i.h, %bb.d ]
  %i.w = add i64 %.sroa.3.0.i, 40
  %i.x = and i64 %i.w, -16                        ; 2 uses
  %i.y = add i64 %1, 1
  %i.z = add i64 %i.y, %i.x
  %i.aa = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.z, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #23 ; 7 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.ac, label %_ZL13CopyStringRefPcN4llvh9StringRefE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr readonly align 1 %.sroa.0.0.i, i64 %.sroa.3.0.i, i1 false)
  br label %_ZL13CopyStringRefPcN4llvh9StringRefE.exit

_ZL13CopyStringRefPcN4llvh9StringRefE.exit:       ; preds = %bb.i, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.3.0.i
  store i8 0, ptr %i.ad, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %1 ; 2 uses
  store i8 0, ptr %i.af, align 1, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_115MemoryBufferMemIN4llvh20WritableMemoryBufferEEE, i64 16), ptr %i.aa, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4llvh5Twine11toStringRefERNS_15SmallVectorImplIcEE.exit, %_ZL13CopyStringRefPcN4llvh9StringRefE.exit
  store ptr %i.aa, ptr %0, align 8, !tbaa !45
  %i.ai = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.ai) #21
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit:          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh20WritableMemoryBuffer15getNewMemBufferEmRKNS_5TwineE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.4") align 8 captures(none) initializes((0, 8)) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.4", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN4llvh20WritableMemoryBuffer21getNewUninitMemBufferEmRKNS_5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.4") align 8 %3, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(18) %2)
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 0, i64 %1, i1 false)
  br label %_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh20WritableMemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

end_hunk_0
