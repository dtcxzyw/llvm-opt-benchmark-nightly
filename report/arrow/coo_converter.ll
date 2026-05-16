inline.NumInlined: 3398
inline.NumDeleted: 948
begin_hunk_0_@_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli:bb.a
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.c, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.d = trunc i64 %1 to i8
  store i8 %i.d, ptr %0, align 1, !tbaa !7
  br label %bb.f

bb.c:                                             ; preds = %.split
  %i.e = trunc i64 %1 to i16
  store i16 %i.e, ptr %0, align 2, !tbaa !8
  br label %bb.f

bb.d:                                             ; preds = %.split
  %i.f = trunc i64 %1 to i32
  store i32 %i.f, ptr %0, align 4, !tbaa !3
  br label %bb.f

bb.e:                                             ; preds = %.split
  store i64 %1, ptr %0, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN5arrow8internal26SparseTensorConverterMixin13GetIndexValueEPKhi(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  switch i32 %i.c, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.d = load i8, ptr %0, align 1, !tbaa !7
  %i.e = zext i8 %i.d to i64
  br label %bb.f

bb.c:                                             ; preds = %.split
  %i.f = load i16, ptr %0, align 2, !tbaa !8
  %i.g = zext i16 %i.f to i64
  br label %bb.f

bb.d:                                             ; preds = %.split
  %i.h = load i32, ptr %0, align 4, !tbaa !3
  %i.i = zext i32 %i.h to i64
  br label %bb.f

bb.e:                                             ; preds = %.split
  %i.j = load i64, ptr %0, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %.split, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.j, %bb.e ], [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ 0, %bb.a ], [ 0, %.split ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal29MakeSparseCOOTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__shared_ptr.1", align 16 ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.std::shared_ptr.3", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Result.35", align 8  ; 11 uses
  %10 = alloca %"class.arrow::Result.26", align 8 ; 12 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %12 = alloca %"class.arrow::Result.26", align 8 ; 12 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %14 = alloca %"class.std::vector", align 8      ; 10 uses
  %15 = alloca %"class.std::vector", align 8      ; 10 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %17 = alloca %"class.std::shared_ptr.16", align 8 ; 7 uses
  %18 = alloca %"class.arrow::Result.39", align 8 ; 12 uses
  %19 = alloca %"class.arrow::internal::(anonymous namespace)::SparseCOOTensorConverter", align 16 ; 18 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.a = getelementptr inbounds nuw i8, ptr %19, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %19, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.a, align 16, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %19, i64 40
  store ptr %2, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %3, ptr %i.c, align 16, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_ZN5arrow8internal28CheckSparseIndexMaximumValueERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc unwind label %bb.gf

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %7, align 8, !tbaa !31, !noalias !28 ; 3 uses
  store ptr %i.e, ptr %20, align 8, !tbaa !31, !alias.scope !28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !28
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.noexc
  store ptr %i.e, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %.critedge

bb.b:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !34     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.noexc12 unwind label %bb.gf, !inline_history !39 ; 8 uses

.noexc12:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !28
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34, !noalias !40 ; 3 uses
  store ptr %i.m, ptr %8, align 8, !tbaa !34, !alias.scope !40, !noalias !28
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43, !noalias !40 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !43, !alias.scope !40, !noalias !28
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow6Tensor4typeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %.noexc12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !44
  %.not.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !40
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3, !noalias !40
  br label %_ZNK5arrow6Tensor4typeEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4, !noalias !40 ; 0 uses
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !34, !noalias !28
  br label %_ZNK5arrow6Tensor4typeEv.exit.i

_ZNK5arrow6Tensor4typeEv.exit.i:                  ; preds = %bb.e, %bb.d, %.noexc12
  %i.v = phi ptr [ %i.m, %.noexc12 ], [ %i.m, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %bb.f unwind label %bb.o       ; 30 uses

bb.f:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit.i
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !43, !noalias !28 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ab, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !47
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #23, !inline_history !48
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #23, !inline_history !48
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !28
  %.not.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.ao, %bb.k ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.l, label %bb.m, !prof !49

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !28
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = lshr exact i64 %i.av, 3
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  %sext.i = shl i64 %i.av, 29
  %i.ay = ashr i64 %sext.i, 32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !28
  invoke void @_ZNK5arrow6Tensor12CountNonZeroEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.35") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %.noexc13 unwind label %bb.gf

.noexc13:                                         ; preds = %bb.m
  %i.az = load ptr, ptr %9, align 8, !tbaa !31, !noalias !28
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.q, label %bb.n, !prof !54

bb.n:                                             ; preds = %.noexc13
  store ptr null, ptr %20, align 8, !tbaa !31, !alias.scope !28
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.p

bb.o:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !28
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.q:                                             ; preds = %.noexc13
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !10, !noalias !28 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !28
  %i.bf = sext i32 %i.k to i64                    ; 3 uses
  %i.bg = mul nsw i64 %i.ay, %i.bf
  %i.bh = mul nsw i64 %i.bg, %i.be
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.26") align 8 %10, i64 noundef %i.bh, ptr noundef %3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %10, align 8, !tbaa !31, !noalias !28
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.v, label %bb.s, !prof !54

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %20, align 8, !tbaa !31, !alias.scope !28
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit272.i unwind label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.u:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !28
  call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !61, !noalias !62 ; 2 uses
  store i64 %i.bn, ptr %11, align 8, !tbaa !61, !alias.scope !63, !noalias !28
  store ptr null, ptr %i.bm, align 8, !tbaa !61, !noalias !62
  %.cast.i = inttoptr i64 %i.bn to ptr            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.cast.i, i64 9
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !64, !range !72, !noundef !73
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %.cast.i, i64 8
  %i.bs = load i8, ptr %i.br, align 8, !range !72
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = select i1 %i.bq, i1 %i.bt, i1 false, !prof !54
  %i.bv = getelementptr inbounds nuw i8, ptr %.cast.i, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = select i1 %i.bu, ptr %i.bw, ptr null, !prof !54 ; 50 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !28
  %i.by = sext i32 %i.z to i64                    ; 22 uses
  %i.bz = mul nsw i64 %i.be, %i.by
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.26") align 8 %12, i64 noundef %i.bz, ptr noundef %3)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %12, align 8, !tbaa !31, !noalias !28
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.aa, label %bb.x, !prof !54

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %20, align 8, !tbaa !31, !alias.scope !28
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZN5arrow6StatusC2ERKS0_.exit273.i unwind label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.z:                                             ; preds = %bb.x
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !28
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !61, !noalias !80 ; 2 uses
  store i64 %i.cf, ptr %13, align 8, !tbaa !61, !alias.scope !81, !noalias !28
  store ptr null, ptr %i.ce, align 8, !tbaa !61, !noalias !80
  %.cast332.i = inttoptr i64 %i.cf to ptr         ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.cast332.i, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64, !range !72, !noundef !73
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %.cast332.i, i64 8
  %i.ck = load i8, ptr %i.cj, align 8, !range !72
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false, !prof !54
  %i.cn = getelementptr inbounds nuw i8, ptr %.cast332.i, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = select i1 %i.cm, ptr %i.co, ptr null, !prof !54 ; 53 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !82 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !64, !range !72, !noundef !73
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = select i1 %i.cu, ptr %i.cw, ptr null, !prof !54 ; 6 uses
  %i.cy = icmp slt i32 %i.ax, 2
  br i1 %i.cy, label %bb.ab, label %bb.bm

bb.ab:                                            ; preds = %bb.aa
  %i.cz = icmp eq i32 %i.ax, 0
  br i1 %i.cz, label %.lr.ph.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10 ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i, label %.loopexit340.i

.lr.ph.i:                                         ; preds = %bb.ac, %bb.ab
  %i.dd = phi i64 [ %i.db, %bb.ac ], [ 1, %bb.ab ] ; 6 uses
  %i.de = ashr i64 %i.by, 2                       ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  %i.dg = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.k)
  %i.dh = icmp eq i32 %i.dg, 1                    ; 2 uses
  %i.di = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.k, i1 true) ; 2 uses
  %i.dj = icmp slt i32 %i.z, 1                    ; 2 uses
  %.not.i274.i = icmp eq i32 %i.z, 1              ; 3 uses
  %i.dk = zext nneg i32 %i.z to i64               ; 3 uses
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.preheader.us.preheader.i, label %.lr.ph.split.i

.lr.ph.i.i.i.i.i.preheader.us.preheader.i:        ; preds = %.lr.ph.i
  %i.dl = and i64 %i.by, -4
  %scevgep.i = getelementptr i8, ptr %i.cx, i64 %i.dl ; 2 uses
  %scevgep424.i = getelementptr i8, ptr %scevgep.i, i64 -4
  %i.dm = and i64 %i.by, 3
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

.lr.ph.i.i.i.i.i.preheader.us.i:                  ; preds = %.thread.us.i, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i
  %indvars.iv425.i = phi ptr [ %scevgep424.i, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %scevgep426.i, %.thread.us.i ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep.i, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %scevgep423.i, %.thread.us.i ] ; 5 uses
  %.0237355.us.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %i.em, %.thread.us.i ] ; 5 uses
  %.0240353.us.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %i.dn, %.thread.us.i ] ; 4 uses
  %.0241351.us.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %.1242.us.i, %.thread.us.i ] ; 6 uses
  %.0243349.us.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.preheader.us.preheader.i ], [ %.1244.us.i, %.thread.us.i ] ; 8 uses
  %i.dn = getelementptr inbounds i8, ptr %.0240353.us.i, i64 %i.by ; 2 uses
  br label %.lr.ph.i.i.i.i.i.us.i

.lr.ph.i.i.i.i.i.us.i:                            ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.preheader.us.i
  %.047.i.i.i.i.i.us.i = phi i64 [ %i.dw, %bb.ag ], [ %i.de, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 2 uses
  %.02946.i.i.i.i.i.us.i = phi ptr [ %i.dv, %bb.ag ], [ %.0240353.us.i, %.lr.ph.i.i.i.i.i.preheader.us.i ] ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal29MakeSparseCOOTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a

bb.du:                                            ; preds = %.split13.i
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIjjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %i.bx, ptr noundef %i.cp)
          to label %.loopexit340.i unwind label %bb.bg

bb.dv:                                            ; preds = %.split13.i
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIjmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %i.bx, ptr noundef %i.cp)
          to label %.loopexit340.i unwind label %bb.bg

bb.dw:                                            ; preds = %.split10.i
  %i.hm = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.z)
  %i.hn = icmp eq i32 %i.hm, 1
  br i1 %i.hn, label %.split14.i, label %.loopexit340.i

.split14.i:                                       ; preds = %bb.dw
  %i.ho = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.z, i1 true)
  switch i32 %i.ho, label %.loopexit340.i [
    i32 0, label %bb.dx
    i32 1, label %bb.dy
    i32 2, label %bb.dz
    i32 3, label %bb.ea
  ]

bb.dx:                                            ; preds = %.split14.i
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIlhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %i.bx, ptr noundef %i.cp)
          to label %.loopexit340.i unwind label %bb.bg

bb.dy:                                            ; preds = %.split14.i
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIltEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %i.bx, ptr noundef %i.cp)
          to label %.loopexit340.i unwind label %bb.bg

bb.dz:                                            ; preds = %.split14.i
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIljEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %i.bx, ptr noundef %i.cp)
          to label %.loopexit340.i unwind label %bb.bg

bb.ea:                                            ; preds = %.split14.i
  invoke fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIlmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %i.bx, ptr noundef %i.cp)
          to label %.loopexit340.i unwind label %bb.bg

.loopexit340.i.loopexit117.unr-lcssa:             ; preds = %.thread.us409.i.3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit340.i, label %._crit_edge.i.i.i.i.i.us394.preheader.i.epil.preheader

._crit_edge.i.i.i.i.i.us394.preheader.i.epil.preheader: ; preds = %.loopexit340.i.loopexit117.unr-lcssa, %._crit_edge.i.i.i.i.i.us394.preheader.i.preheader
  %.0240353.us396.i.epil.init = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.us394.preheader.i.preheader ], [ %i.fk, %.loopexit340.i.loopexit117.unr-lcssa ]
  %.0241351.us397.i.epil.init = phi ptr [ %i.cp, %._crit_edge.i.i.i.i.i.us394.preheader.i.preheader ], [ %.1242.us411.i.3, %.loopexit340.i.loopexit117.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %._crit_edge.i.i.i.i.i.us394.preheader.i.epil

._crit_edge.i.i.i.i.i.us394.preheader.i.epil:     ; preds = %.thread.us409.i.epil, %._crit_edge.i.i.i.i.i.us394.preheader.i.epil.preheader
  %.0240353.us396.i.epil = phi ptr [ %i.hp, %.thread.us409.i.epil ], [ %.0240353.us396.i.epil.init, %._crit_edge.i.i.i.i.i.us394.preheader.i.epil.preheader ] ; 2 uses
  %.0241351.us397.i.epil = phi ptr [ %.1242.us411.i.epil, %.thread.us409.i.epil ], [ %.0241351.us397.i.epil.init, %._crit_edge.i.i.i.i.i.us394.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.thread.us409.i.epil ], [ 0, %._crit_edge.i.i.i.i.i.us394.preheader.i.epil.preheader ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0240353.us396.i.epil, i64 %i.by
  %i.hq = load i8, ptr %.0240353.us396.i.epil, align 1, !tbaa !7 ; 2 uses
  %.not338.us404.i.epil = icmp eq i8 %i.hq, 0
  br i1 %.not338.us404.i.epil, label %.thread.us409.i.epil, label %_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli.exit.us407.i.epil

_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli.exit.us407.i.epil: ; preds = %._crit_edge.i.i.i.i.i.us394.preheader.i.epil
  store i8 %i.hq, ptr %.0241351.us397.i.epil, align 1, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %.0241351.us397.i.epil, i64 %i.by
  br label %.thread.us409.i.epil

.thread.us409.i.epil:                             ; preds = %_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli.exit.us407.i.epil, %._crit_edge.i.i.i.i.i.us394.preheader.i.epil
  %.1242.us411.i.epil = phi ptr [ %i.hr, %_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli.exit.us407.i.epil ], [ %.0241351.us397.i.epil, %._crit_edge.i.i.i.i.i.us394.preheader.i.epil ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit340.i, label %._crit_edge.i.i.i.i.i.us394.preheader.i.epil, !llvm.loop !86

.loopexit340.i:                                   ; preds = %.thread.i, %.loopexit340.i.loopexit117.unr-lcssa, %.thread.us409.i.epil, %.thread.us373.i, %.thread.us.i, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.br, %bb.bq, %.split14.i, %bb.dw, %.split13.i, %bb.dr, %.split12.i, %bb.dm, %.split11.i, %bb.dh, %.split10.i, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %.split9.i, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %.split8.i, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %.split7.i, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %.split6.i, %bb.cm, %.split5.i, %bb.cl, %.split4.i, %bb.ce, %.split3.i, %bb.bz, %.split2.i, %bb.bu, %.split1.i, %bb.bp, %.split.i, %bb.bo, %.lr.ph.split.split.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !28
  %i.hs = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %bb.eb unwind label %bb.ec     ; 4 uses

bb.eb:                                            ; preds = %.loopexit340.i
  store ptr %i.hs, ptr %14, align 8, !tbaa !53, !noalias !28
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !88, !noalias !28
  store i64 %i.be, ptr %i.hs, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 %i.ay, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ht, ptr %i.hv, align 8, !tbaa !50, !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false), !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23, !noalias !28
  %i.hw = load ptr, ptr %2, align 8, !tbaa !34
  invoke void @_ZN5arrow8internal22ComputeRowMajorStridesERKNS_14FixedWidthTypeERKSt6vectorIlSaIlEEPS6_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(72) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %15)
          to label %_ZN5arrow6StatusD2Ev.exit276.i unwind label %bb.ed

_ZN5arrow6StatusD2Ev.exit276.i:                   ; preds = %bb.eb
  %i.hx = load ptr, ptr %16, align 8, !tbaa !31, !noalias !28 ; 2 uses
  store ptr %i.hx, ptr %20, align 8, !tbaa !31, !alias.scope !28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !28
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %_ZN5arrow6StatusD2Ev.exit280.i, label %.critedge.i

bb.ec:                                            ; preds = %.loopexit340.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit307.i

bb.ed:                                            ; preds = %bb.eb
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !28
  br label %bb.fp

_ZN5arrow6StatusD2Ev.exit280.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit276.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23, !noalias !28
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.ib = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24
          to label %.noexc.i unwind label %bb.eh  ; 4 uses

.noexc.i:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit280.i
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteISD_EERKSt6vectorIlSaIlEERSJ_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(128) %i.ib, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.ee unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i, !noalias !89

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i: ; preds = %.noexc.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef 128) #25, !noalias !89
  br label %.body.i

bb.ee:                                            ; preds = %.noexc.i
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store ptr %i.ib, ptr %i.id, align 8, !tbaa !43, !alias.scope !89, !noalias !28
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store ptr %i.ie, ptr %17, align 8, !tbaa !12, !alias.scope !89, !noalias !28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23, !noalias !28
  invoke void @_ZN5arrow14SparseCOOIndex4MakeERKSt10shared_ptrINS_6TensorEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.39") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %17, i1 noundef zeroext true)
          to label %bb.ef unwind label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.if = load ptr, ptr %18, align 8, !tbaa !31, !noalias !28
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.ek, label %bb.eg, !prof !54

bb.eg:                                            ; preds = %bb.ef
  store ptr null, ptr %20, align 8, !tbaa !31, !alias.scope !28
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %_ZN5arrow6StatusC2ERKS0_.exit282.i unwind label %bb.ej

bb.eh:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit280.i
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ei:                                            ; preds = %bb.ee
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.ej:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.eg
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !28
  br label %bb.fm

bb.ek:                                            ; preds = %bb.ef
  %i.ik = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.im = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !92, !noalias !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i8 0, i64 16, i1 false), !noalias !28
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !43, !noalias !28 ; 8 uses
  store <2 x ptr> %i.im, ptr %19, align 16, !tbaa !92, !noalias !28
  %.not.i.i.i.i283.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i283.i, label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  store i32 0, ptr %i.io, align 8, !tbaa !45
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 0, ptr %i.is, align 4, !tbaa !47
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !37
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #23, !inline_history !98
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !37
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #23, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.en:                                            ; preds = %bb.el
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !28
  %.not.i.i.i.i.i284.i = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i.i284.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ja = add nsw i32 %i.ir, -1
  store i32 %i.ja, ptr %i.io, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ep:                                            ; preds = %bb.en
  %i.jb = atomicrmw volatile add ptr %i.io, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ep, %bb.eo
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ir, %bb.eo ], [ %i.jb, %bb.ep ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jc, label %bb.eq, label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !49

bb.eq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #23
  br label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.eq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.em, %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !28
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc293.i unwind label %bb.ej

.noexc293.i:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !43, !noalias !28 ; 8 uses
  %i.jg = load <2 x ptr>, ptr %i.jd, align 16, !tbaa !92, !noalias !28
  %i.jh = load <2 x ptr>, ptr %6, align 16, !tbaa !92, !noalias !28
  store <2 x ptr> %i.jh, ptr %i.jd, align 16, !tbaa !92, !noalias !28
  store <2 x ptr> %i.jg, ptr %6, align 16, !tbaa !92, !noalias !28
  %.not.i.i.i.i289.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i289.i, label %bb.ex, label %bb.er

bb.er:                                            ; preds = %.noexc293.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 4 uses
  %i.jj = load atomic i64, ptr %i.ji acquire, align 8 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 4294967297
  %i.jl = trunc i64 %i.jj to i32                  ; 2 uses
  br i1 %i.jk, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  store i32 0, ptr %i.ji, align 8, !tbaa !45
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  store i32 0, ptr %i.jm, align 4, !tbaa !47
  %i.jn = load ptr, ptr %i.jf, align 8, !tbaa !37
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.jf) #23, !inline_history !99
  %i.jq = load ptr, ptr %i.jf, align 8, !tbaa !37
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jf) #23, !inline_history !99
  br label %bb.ex

bb.et:                                            ; preds = %bb.er
  %i.jt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !28
  %.not.i.i.i.i.i290.i = icmp eq i8 %i.jt, 0
  br i1 %.not.i.i.i.i.i290.i, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ju = add nsw i32 %i.jl, -1
  store i32 %i.ju, ptr %i.ji, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i291.i

bb.ev:                                            ; preds = %bb.et
  %i.jv = atomicrmw volatile add ptr %i.ji, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i291.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i291.i: ; preds = %bb.ev, %bb.eu
  %.0.i.i.i.i.i.i292.i = phi i32 [ %i.jl, %bb.eu ], [ %i.jv, %bb.ev ]
  %i.jw = icmp eq i32 %.0.i.i.i.i.i.i292.i, 1
  br i1 %i.jw, label %bb.ew, label %bb.ex, !prof !49

bb.ew:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i291.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jf) #23
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i291.i, %bb.es, %.noexc293.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !28
  store ptr null, ptr %20, align 8, !tbaa !31, !alias.scope !100
  br label %_ZN5arrow6StatusC2ERKS0_.exit282.i

_ZN5arrow6StatusC2ERKS0_.exit282.i:               ; preds = %bb.ex, %bb.eg
  %i.jx = load ptr, ptr %18, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.ey, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread.i.i, !prof !54

bb.ey:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit282.i
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !43, !noalias !28 ; 8 uses
  %.not.i.i.i.i.i294.i = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i.i.i294.i, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 4 uses
  %i.kc = load atomic i64, ptr %i.kb acquire, align 8 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 4294967297
  %i.ke = trunc i64 %i.kc to i32                  ; 2 uses
  br i1 %i.kd, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  store i32 0, ptr %i.kb, align 8, !tbaa !45
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i32 0, ptr %i.kf, align 4, !tbaa !47
  %i.kg = load ptr, ptr %i.ka, align 8, !tbaa !37
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #23, !inline_history !103
  %i.kj = load ptr, ptr %i.ka, align 8, !tbaa !37
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #23, !inline_history !103
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.i.i

bb.fb:                                            ; preds = %bb.ez
  %i.km = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.km, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.kn = add nsw i32 %i.ke, -1
  store i32 %i.kn, ptr %i.kb, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.fd:                                            ; preds = %bb.fb
  %i.ko = atomicrmw volatile add ptr %i.kb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.fd, %bb.fc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ke, %bb.fc ], [ %i.ko, %bb.fd ]
  %i.kp = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.kp, label %bb.fe, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.i.i, !prof !49

bb.fe:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.i.i: ; preds = %bb.fe, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.fa, %bb.ey
  %.pr.i.i = load ptr, ptr %18, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %.not.i.i295.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i295.i, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread.i.i, !prof !104

_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit282.i
  %i.kq = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.i.i ], [ %i.jx, %_ZN5arrow6StatusC2ERKS0_.exit282.i ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !105, !range !72, !noundef !73
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev.exit.i, label %bb.ff

bb.ff:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %18) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev.exit.i: ; preds = %bb.ff, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23, !noalias !28
  %i.ku = load ptr, ptr %i.id, align 8, !tbaa !43, !noalias !28 ; 8 uses
  %.not.i.i296.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i296.i, label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.fg

bb.fg:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev.exit.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 4 uses
  %i.kw = load atomic i64, ptr %i.kv acquire, align 8 ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 4294967297
  %i.ky = trunc i64 %i.kw to i32                  ; 2 uses
  br i1 %i.kx, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 0, ptr %i.kv, align 8, !tbaa !45
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  store i32 0, ptr %i.kz, align 4, !tbaa !47
  %i.la = load ptr, ptr %i.ku, align 8, !tbaa !37
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #23, !inline_history !113
  %i.ld = load ptr, ptr %i.ku, align 8, !tbaa !37
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #23, !inline_history !113
  br label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.fi:                                            ; preds = %bb.fg
  %i.lg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !28
  %.not.i.i.i297.i = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i.i297.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.lh = add nsw i32 %i.ky, -1
  store i32 %i.lh, ptr %i.kv, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i

bb.fk:                                            ; preds = %bb.fi
  %i.li = atomicrmw volatile add ptr %i.kv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i: ; preds = %bb.fk, %bb.fj
  %.0.i.i.i.i299.i = phi i32 [ %i.ky, %bb.fj ], [ %i.li, %bb.fk ]
  %i.lj = icmp eq i32 %.0.i.i.i.i299.i, 1
  br i1 %i.lj, label %bb.fl, label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !49

bb.fl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ku) #23
  br label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.fl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i298.i, %bb.fh, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !28
  br label %.critedge.i

bb.fm:                                            ; preds = %bb.ej, %bb.ei
  %.pn247.pn.i = phi { ptr, i32 } [ %i.ij, %bb.ej ], [ %i.ii, %bb.ei ]
  call void @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #23
  br label %.body.i

.body.i:                                          ; preds = %bb.fm, %bb.eh, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i
  %.pn247.pn.pn.i = phi { ptr, i32 } [ %.pn247.pn.i, %bb.fm ], [ %i.ih, %bb.eh ], [ %i.ic, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23, !noalias !28
  br label %bb.fp

.critedge.i:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit276.i
  %i.lk = load ptr, ptr %15, align 8, !tbaa !53, !noalias !28 ; 3 uses
  %.not.i.i.i300.i = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i300.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i, label %bb.fn

bb.fn:                                            ; preds = %.critedge.i
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !88, !noalias !28
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.lk to i64
  %i.lp = sub i64 %i.ln, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lk, i64 noundef %i.lp) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i:                  ; preds = %bb.fn, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !28
  %i.lq = load ptr, ptr %14, align 8, !tbaa !53, !noalias !28 ; 3 uses
  %.not.i.i.i301.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i301.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit302.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  %i.lr = load ptr, ptr %i.hu, align 8, !tbaa !88, !noalias !28
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.lq to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef %i.lu) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit302.i

_ZNSt6vectorIlSaIlEED2Ev.exit302.i:               ; preds = %bb.fo, %_ZNSt6vectorIlSaIlEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !28
  %i.lv = load ptr, ptr %13, align 8, !tbaa !61, !noalias !28 ; 3 uses
  %.not.i303.i = icmp eq ptr %i.lv, null
  br i1 %.not.i303.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit302.i
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !37
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.lv) #23, !inline_history !114
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i, %_ZNSt6vectorIlSaIlEED2Ev.exit302.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !28
  br label %_ZN5arrow6StatusC2ERKS0_.exit273.i

bb.fp:                                            ; preds = %.body.i, %bb.ed
  %.pn247.pn.pn.pn.i = phi { ptr, i32 } [ %.pn247.pn.pn.i, %.body.i ], [ %i.ia, %bb.ed ] ; 2 uses
  %i.lz = load ptr, ptr %15, align 8, !tbaa !53, !noalias !28 ; 3 uses
  %.not.i.i.i304.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i304.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit305.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ma = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !88, !noalias !28
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.lz to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %i.lz, i64 noundef %i.me) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit305.i

_ZNSt6vectorIlSaIlEED2Ev.exit305.i:               ; preds = %bb.fq, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !28
  %i.mf = load ptr, ptr %14, align 8, !tbaa !53, !noalias !28 ; 3 uses
  %.not.i.i.i306.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i306.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit307.i, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit305.i
  %i.mg = load ptr, ptr %i.hu, align 8, !tbaa !88, !noalias !28
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = ptrtoint ptr %i.mf to i64
  %i.mj = sub i64 %i.mh, %i.mi
  call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.mj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit307.i

_ZNSt6vectorIlSaIlEED2Ev.exit307.i:               ; preds = %bb.fr, %_ZNSt6vectorIlSaIlEED2Ev.exit305.i, %bb.ec
  %.pn247.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.hz, %bb.ec ], [ %.pn247.pn.pn.pn.i, %_ZNSt6vectorIlSaIlEED2Ev.exit305.i ], [ %.pn247.pn.pn.pn.i, %bb.fr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !28
  br label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit307.i, %bb.bg
  %.pn253.i = phi { ptr, i32 } [ %i.fn, %bb.bg ], [ %.pn247.pn.pn.pn.pn.i, %_ZNSt6vectorIlSaIlEED2Ev.exit307.i ]
  %i.mk = load ptr, ptr %13, align 8, !tbaa !61, !noalias !28 ; 3 uses
  %.not.i308.i = icmp eq ptr %i.mk, null
  br i1 %.not.i308.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit310.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i309.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i309.i: ; preds = %bb.fs
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !37
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.mk) #23, !inline_history !114
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit310.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit310.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i309.i, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !28
  br label %bb.fv

_ZN5arrow6StatusC2ERKS0_.exit273.i:               ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i, %bb.x
  %i.mo = load ptr, ptr %12, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  br i1 %i.mp, label %bb.ft, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, !prof !54

bb.ft:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit273.i
  %i.mq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !61, !noalias !28 ; 3 uses
  %.not.i.i.i.i311.i = icmp eq ptr %i.mr, null
  br i1 %.not.i.i.i.i311.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i: ; preds = %bb.ft
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !37
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.mr) #23, !inline_history !115
  %.pr.pre.i.i = load ptr, ptr %12, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %.not.i.i312.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i312.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, !prof !104

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit273.i
  %i.mv = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i ], [ %i.mo, %_ZN5arrow6StatusC2ERKS0_.exit273.i ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !105, !range !72, !noundef !73
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i, label %bb.fu

bb.fu:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #23
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i: ; preds = %bb.fu, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !28
  %i.mz = load ptr, ptr %11, align 8, !tbaa !61, !noalias !28 ; 3 uses
  %.not.i313.i = icmp eq ptr %i.mz, null
  br i1 %.not.i313.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit315.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i314.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i314.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !37
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.mz) #23, !inline_history !114
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit315.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit315.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i314.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !28
  br label %_ZN5arrow6StatusC2ERKS0_.exit272.i

bb.fv:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit310.i, %bb.z
  %.pn256.i = phi { ptr, i32 } [ %i.cd, %bb.z ], [ %.pn253.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit310.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !28
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.y
  %.pn256.pn.i = phi { ptr, i32 } [ %.pn256.i, %bb.fv ], [ %i.cc, %bb.y ]
  %i.nd = load ptr, ptr %11, align 8, !tbaa !61, !noalias !28 ; 3 uses
  %.not.i316.i = icmp eq ptr %i.nd, null
  br i1 %.not.i316.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit318.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i317.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i317.i: ; preds = %bb.fw
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !37
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.nd) #23, !inline_history !114
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit318.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit318.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i317.i, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !28
  br label %bb.fz

_ZN5arrow6StatusC2ERKS0_.exit272.i:               ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit315.i, %bb.s
  %i.nh = load ptr, ptr %10, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  br i1 %i.ni, label %bb.fx, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i319.i, !prof !54

bb.fx:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit272.i
  %i.nj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !61, !noalias !28 ; 3 uses
  %.not.i.i.i.i320.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i320.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit324.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i321.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i321.i: ; preds = %bb.fx
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !37
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.nk) #23, !inline_history !115
  %.pr.pre.i322.i = load ptr, ptr %10, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %.not.i.i323.i = icmp eq ptr %.pr.pre.i322.i, null
  br i1 %.not.i.i323.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit324.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i319.i, !prof !104

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i319.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i321.i, %_ZN5arrow6StatusC2ERKS0_.exit272.i
  %i.no = phi ptr [ %.pr.pre.i322.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i321.i ], [ %i.nh, %_ZN5arrow6StatusC2ERKS0_.exit272.i ]
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !105, !range !72, !noundef !73
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit324.i, label %bb.fy

bb.fy:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i319.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #23
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit324.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit324.i: ; preds = %bb.fy, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i319.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i321.i, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !28
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.fz:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit318.i, %bb.u
  %.pn260.i = phi { ptr, i32 } [ %i.bl, %bb.u ], [ %.pn256.pn.i, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit318.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !28
  br label %bb.gc

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit324.i, %bb.n
  %i.ns = load ptr, ptr %9, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %.not.i.i325.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i325.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.ga, !prof !54

bb.ga:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !105, !range !72, !noundef !73
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_ZN5arrow6StatusD2Ev.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  br label %_ZN5arrow6StatusD2Ev.exit

bb.gc:                                            ; preds = %bb.fz, %bb.t, %bb.p
  %.pn264.i = phi { ptr, i32 } [ %i.bc, %bb.p ], [ %i.bk, %bb.t ], [ %.pn260.i, %bb.fz ]
  %i.nw = load ptr, ptr %9, align 8, !tbaa !31, !noalias !28 ; 2 uses
  %.not.i.i326.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i326.i, label %_ZN5arrow6ResultIlED2Ev.exit327.i, label %bb.gd, !prof !54

bb.gd:                                            ; preds = %bb.gc
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !105, !range !72, !noundef !73
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %_ZN5arrow6ResultIlED2Ev.exit327.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  br label %_ZN5arrow6ResultIlED2Ev.exit327.i

_ZN5arrow6ResultIlED2Ev.exit327.i:                ; preds = %bb.ge, %bb.gd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !28
  br label %.body

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i, %bb.ga, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !28
  %.pr = load ptr, ptr %20, align 8, !tbaa !31    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.oa = icmp eq ptr %.pr, null
  br i1 %i.oa, label %_ZN5arrow6StatusD2Ev.exit17, label %.critedge

bb.gf:                                            ; preds = %bb.m, %bb.b, %bb.a
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.gf, %_ZN5arrow6ResultIlED2Ev.exit327.i, %bb.o
  %.pn = phi { ptr, i32 } [ %.pn264.i, %_ZN5arrow6ResultIlED2Ev.exit327.i ], [ %i.ob, %bb.gf ], [ %i.bb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  resume { ptr, i32 } %.pn

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.oc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !43 ; 2 uses
  %i.oe = load <2 x ptr>, ptr %19, align 16, !tbaa !92
  %.not.i.i.i18 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i18, label %_ZNSt10shared_ptrIN5arrow14SparseCOOIndexEEC2ERKS2_.exit, label %bb.gg

bb.gg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit17
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 3 uses
  %i.og = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i19 = icmp eq i8 %i.og, 0
  br i1 %.not.i.i.i.i19, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.oh = load i32, ptr %i.of, align 4, !tbaa !3
  %i.oi = add nsw i32 %i.oh, 1
  store i32 %i.oi, ptr %i.of, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow14SparseCOOIndexEEC2ERKS2_.exit

bb.gi:                                            ; preds = %bb.gg
  %i.oj = atomicrmw volatile add ptr %i.of, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow14SparseCOOIndexEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow14SparseCOOIndexEEC2ERKS2_.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit17, %bb.gh, %bb.gi
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !43 ; 8 uses
  store <2 x ptr> %i.oe, ptr %4, align 8, !tbaa !92
  %.not.i.i.i.i20 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i.i20, label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.gj

bb.gj:                                            ; preds = %_ZNSt10shared_ptrIN5arrow14SparseCOOIndexEEC2ERKS2_.exit
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 4 uses
  %i.on = load atomic i64, ptr %i.om acquire, align 8 ; 2 uses
  %i.oo = icmp eq i64 %i.on, 4294967297
  %i.op = trunc i64 %i.on to i32                  ; 2 uses
  br i1 %i.oo, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  store i32 0, ptr %i.om, align 8, !tbaa !45
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  store i32 0, ptr %i.oq, align 4, !tbaa !47
  %i.or = load ptr, ptr %i.ol, align 8, !tbaa !37
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load ptr, ptr %i.os, align 8
  call void %i.ot(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #23, !inline_history !116
  %i.ou = load ptr, ptr %i.ol, align 8, !tbaa !37
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 24
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #23, !inline_history !116
  br label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.gl:                                            ; preds = %bb.gj
  %i.ox = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i21 = icmp eq i8 %i.ox, 0
  br i1 %.not.i.i.i.i.i21, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.oy = add nsw i32 %i.op, -1
  store i32 %i.oy, ptr %i.om, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.gn:                                            ; preds = %bb.gl
  %i.oz = atomicrmw volatile add ptr %i.om, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.gn, %bb.gm
  %.0.i.i.i.i.i.i = phi i32 [ %i.op, %bb.gm ], [ %i.oz, %bb.gn ]
  %i.pa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.pa, label %bb.go, label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.go:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ol) #23
  br label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow14SparseCOOIndexEEC2ERKS2_.exit, %bb.gk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.go
  %i.pb = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.pc = load ptr, ptr %i.pb, align 16, !tbaa !82
  store ptr %i.pc, ptr %5, align 8, !tbaa !82
  %i.pd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !43 ; 4 uses
  %i.pg = load ptr, ptr %i.pd, align 8, !tbaa !43 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.pf, %i.pg
  br i1 %.not.i.i.i27, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.not7.i.i.i = icmp eq ptr %i.pf, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 3 uses
  %i.pi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i28 = icmp eq i8 %i.pi, 0
  br i1 %.not.i.i.i.i28, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.pj = load i32, ptr %i.ph, align 4, !tbaa !3
  %i.pk = add nsw i32 %i.pj, 1
  store i32 %i.pk, ptr %i.ph, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.gs:                                            ; preds = %bb.gq
  %i.pl = atomicrmw volatile add ptr %i.ph, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.pd, align 8, !tbaa !43
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.gs, %bb.gr, %bb.gp
  %i.pm = phi ptr [ %i.pg, %bb.gp ], [ %i.pg, %bb.gr ], [ %.pr.pre.i.i.i, %bb.gs ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.pm, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.gt

bb.gt:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 4 uses
  %i.po = load atomic i64, ptr %i.pn acquire, align 8 ; 2 uses
  %i.pp = icmp eq i64 %i.po, 4294967297
  %i.pq = trunc i64 %i.po to i32                  ; 2 uses
  br i1 %i.pp, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  store i32 0, ptr %i.pn, align 8, !tbaa !45
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  store i32 0, ptr %i.pr, align 4, !tbaa !47
  %i.ps = load ptr, ptr %i.pm, align 8, !tbaa !37
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #23, !inline_history !117
  %i.pv = load ptr, ptr %i.pm, align 8, !tbaa !37
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #23, !inline_history !117
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.gv:                                            ; preds = %bb.gt
  %i.py = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i9.i.i.i = icmp eq i8 %i.py, 0
  br i1 %.not.i9.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.pz = add nsw i32 %i.pq, -1
  store i32 %i.pz, ptr %i.pn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29

bb.gx:                                            ; preds = %bb.gv
  %i.qa = atomicrmw volatile add ptr %i.pn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29: ; preds = %bb.gx, %bb.gw
  %.0.i.i.i.i.i30 = phi i32 [ %i.pq, %bb.gw ], [ %i.qa, %bb.gx ]
  %i.qb = icmp eq i32 %.0.i.i.i.i.i30, 1
  br i1 %i.qb, label %bb.gy, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !49

bb.gy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.gy, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29, %bb.gu, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.pf, ptr %i.pd, align 8, !tbaa !43
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit:  ; preds = %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !31, !alias.scope !118
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit
  %i.qc = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !43 ; 8 uses
  %.not.i.i.i31 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i31, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.gz

bb.gz:                                            ; preds = %.critedge
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 4 uses
  %i.qf = load atomic i64, ptr %i.qe acquire, align 8 ; 2 uses
  %i.qg = icmp eq i64 %i.qf, 4294967297
  %i.qh = trunc i64 %i.qf to i32                  ; 2 uses
  br i1 %i.qg, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  store i32 0, ptr %i.qe, align 8, !tbaa !45
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 12
  store i32 0, ptr %i.qi, align 4, !tbaa !47
  %i.qj = load ptr, ptr %i.qd, align 8, !tbaa !37
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8
  call void %i.ql(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #23, !inline_history !121
  %i.qm = load ptr, ptr %i.qd, align 8, !tbaa !37
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #23, !inline_history !121
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.hb:                                            ; preds = %bb.gz
  %i.qp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i32 = icmp eq i8 %i.qp, 0
  br i1 %.not.i.i.i.i32, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.qq = add nsw i32 %i.qh, -1
  store i32 %i.qq, ptr %i.qe, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33

bb.hd:                                            ; preds = %bb.hb
  %i.qr = atomicrmw volatile add ptr %i.qe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33: ; preds = %bb.hd, %bb.hc
  %.0.i.i.i.i.i34 = phi i32 [ %i.qh, %bb.hc ], [ %i.qr, %bb.hd ]
  %i.qs = icmp eq i32 %.0.i.i.i.i.i34, 1
  br i1 %i.qs, label %bb.he, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !49

bb.he:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qd) #23
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.he, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i33, %bb.ha, %.critedge
  %i.qt = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !43 ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i1.i, label %_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev.exit, label %bb.hf

bb.hf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8 ; 4 uses
  %i.qw = load atomic i64, ptr %i.qv acquire, align 8 ; 2 uses
  %i.qx = icmp eq i64 %i.qw, 4294967297
  %i.qy = trunc i64 %i.qw to i32                  ; 2 uses
  br i1 %i.qx, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  store i32 0, ptr %i.qv, align 8, !tbaa !45
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  store i32 0, ptr %i.qz, align 4, !tbaa !47
  %i.ra = load ptr, ptr %i.qu, align 8, !tbaa !37
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #23, !inline_history !122
  %i.rd = load ptr, ptr %i.qu, align 8, !tbaa !37
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #23, !inline_history !122
  br label %_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev.exit

bb.hh:                                            ; preds = %bb.hf
  %i.rg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i2.i = icmp eq i8 %i.rg, 0
  br i1 %.not.i.i.i2.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.rh = add nsw i32 %i.qy, -1
  store i32 %i.rh, ptr %i.qv, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.hj:                                            ; preds = %bb.hh
  %i.ri = atomicrmw volatile add ptr %i.qv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.hj, %bb.hi
  %.0.i.i.i.i4.i = phi i32 [ %i.qy, %bb.hi ], [ %i.ri, %bb.hj ]
  %i.rj = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.rj, label %bb.hk, label %_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev.exit, !prof !49

bb.hk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qu) #23
  br label %_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev.exit

_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.hg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !123
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !123
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !47
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !124
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !124
  br label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal29MakeTensorFromSparseCOOTensorEPNS_10MemoryPoolEPKNS_16SparseTensorImplINS_14SparseCOOIndexEEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.3", align 8 ; 7 uses
  %4 = alloca %"class.arrow::Result.26", align 8  ; 12 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::shared_ptr.3", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !64, !range !72, !noundef !73
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %i.k, ptr null, !prof !54
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34, !noalias !130 ; 3 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !34, !alias.scope !130
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43, !noalias !130 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !43, !alias.scope !130
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow6Tensor4typeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !130
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !130
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3, !noalias !130
  br label %_ZNK5arrow6Tensor4typeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4, !noalias !130 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !34
  br label %_ZNK5arrow6Tensor4typeEv.exit

_ZNK5arrow6Tensor4typeEv.exit:                    ; preds = %bb.a, %bb.c, %bb.d
  %i.w = phi ptr [ %i.n, %bb.a ], [ %i.n, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(72) %i.w)
          to label %bb.e unwind label %bb.v       ; 3 uses

bb.e:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !43  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ac, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !47
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23, !inline_history !133
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23, !inline_history !133
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aq, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #23
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34, !noalias !134 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43, !noalias !134 ; 8 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i65, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 7 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !134
  %.not.i.i.i.i.i66 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i66, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3, !noalias !134
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3, !noalias !134
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4, !noalias !134 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ba = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.av, align 8, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !47
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #23, !inline_history !133
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #23, !inline_history !133
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

bb.q:                                             ; preds = %bb.o
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i68 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i68, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69

bb.s:                                             ; preds = %bb.q
  %i.bm = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i70 = phi i32 [ %i.bc, %bb.r ], [ %i.bm, %bb.s ]
  %i.bn = icmp eq i32 %.0.i.i.i.i70, 1
  br i1 %i.bn, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, !prof !49

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #23
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69, %bb.t
  %i.bo = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(72) %i.as) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bs = sext i32 %i.br to i64                   ; 7 uses
  %i.bt = tail call noundef i64 @_ZNK5arrow12SparseTensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.bu = mul nsw i64 %i.bt, %i.bs
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.26") align 8 %4, i64 noundef %i.bu, ptr noundef %1)
  %i.bv = load ptr, ptr %4, align 8, !tbaa !31
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.w, label %bb.u, !prof !54

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #23
  br label %bb.ba

bb.v:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.bd

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !61, !noalias !143 ; 2 uses
  store i64 %i.bz, ptr %5, align 8, !tbaa !61, !alias.scope !143
  store ptr null, ptr %i.by, align 8, !tbaa !61, !noalias !143
  %.cast = inttoptr i64 %i.bz to ptr              ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64, !range !72, !noundef !73
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.ce = load i8, ptr %i.cd, align 8, !range !72
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = select i1 %i.cc, i1 %i.cf, i1 false, !prof !54
  %i.ch = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.cj = select i1 %i.cg, ptr %i.ci, ptr null, !prof !54 ; 4 uses
  %i.ck = invoke noundef i64 @_ZNK5arrow12SparseTensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.x unwind label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cl = mul nsw i64 %i.ck, %i.bs                ; 2 uses
  %i.cm = icmp slt i64 %i.cl, 1
  br i1 %i.cm, label %_ZSt6fill_nIPhliET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr align 1 %i.cj, i8 0, i64 %i.cl, i1 false), !tbaa !7
  br label %_ZSt6fill_nIPhliET_S1_T0_RKT1_.exit

_ZSt6fill_nIPhliET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  invoke void @_ZN5arrow8internal22ComputeRowMajorStridesERKNS_14FixedWidthTypeERKSt6vectorIlSaIlEEPS6_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.ab

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZSt6fill_nIPhliET_S1_T0_RKT1_.exit
  %i.co = load ptr, ptr %8, align 8, !tbaa !31    ; 2 uses
  store ptr %i.co, ptr %7, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN5arrow6StatusD2Ev.exit77, label %bb.y, !prof !54

bb.y:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #23
  %i.cq = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %.not.i72 = icmp eq ptr %i.cq, null
  br i1 %.not.i72, label %_ZN5arrow6StatusD2Ev.exit73, label %bb.z, !prof !54

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !105, !range !72, !noundef !73
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZN5arrow6StatusD2Ev.exit73, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #23
  br label %_ZN5arrow6StatusD2Ev.exit73

_ZN5arrow6StatusD2Ev.exit73:                      ; preds = %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aw

.thread:                                          ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

bb.ab:                                            ; preds = %_ZSt6fill_nIPhliET_S1_T0_RKT1_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.split.us

_ZN5arrow6StatusD2Ev.exit77:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !82 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !64, !range !72, !noundef !73
  %i.da = trunc nuw i8 %i.cz to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = select i1 %i.da, ptr %i.dc, ptr null, !prof !54 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !50
  %i.dg = load ptr, ptr %i.cn, align 8, !tbaa !53
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %.fr196 = freeze i64 %i.dj
  %i.dk = lshr i64 %.fr196, 3                     ; 11 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = icmp sgt i32 %i.dl, 0
  %i.dn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.aa, i1 true)
  %i.do = sext i32 %i.aa to i64                   ; 21 uses
  %i.dp = icmp slt i32 %i.br, 1                   ; 3 uses
  %.not.i83 = icmp eq i32 %i.br, 1                ; 3 uses
  %i.dq = zext nneg i32 %i.br to i64              ; 3 uses
  br i1 %i.dm, label %_ZN5arrow6StatusD2Ev.exit77.split.us, label %_ZN5arrow6StatusD2Ev.exit77.split

_ZN5arrow6StatusD2Ev.exit77.split.us:             ; preds = %_ZN5arrow6StatusD2Ev.exit77
  %i.dr = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.aa)
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us.preheader, label %_ZN5arrow6StatusD2Ev.exit77.split.us.split

_ZN5arrow6StatusD2Ev.exit77.split.us.split.us.preheader: ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.us
  %i.dt = add nuw nsw i64 %i.dk, 4294967295
  %i.du = and i64 %i.dt, 4294967295
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = mul nsw i64 %i.dv, %i.do
  %wide.trip.count = and i64 %i.dk, 2147483647
  %i.dx = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %xtraiter = and i64 %i.dk, 3                    ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 3
  %unroll_iter = and i64 %i.dk, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod313 = icmp ne i64 %xtraiter, 0
  %xtraiter314 = and i64 %i.dk, 3                 ; 3 uses
  %i.dz = icmp ult i64 %i.dx, 3
  %unroll_iter320 = and i64 %i.dk, 2147483644
  %lcmp.mod316.not = icmp eq i64 %xtraiter314, 0
  %lcmp.mod319 = icmp ne i64 %xtraiter314, 0
  %xtraiter322 = and i64 %i.dk, 3                 ; 3 uses
  %i.ea = icmp ult i64 %i.dx, 3
  %unroll_iter328 = and i64 %i.dk, 2147483644
  %lcmp.mod324.not = icmp eq i64 %xtraiter322, 0
  %lcmp.mod327 = icmp ne i64 %xtraiter322, 0
  %xtraiter330 = and i64 %i.dk, 3                 ; 3 uses
  %i.eb = icmp ult i64 %i.dx, 3
  %unroll_iter336 = and i64 %i.dk, 2147483644
  %lcmp.mod332.not = icmp eq i64 %xtraiter330, 0
  %lcmp.mod335 = icmp ne i64 %xtraiter330, 0
  br label %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us

_ZN5arrow6StatusD2Ev.exit77.split.us.split.us:    ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us.preheader, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.us
  %.048.us.us = phi ptr [ %i.ek, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.us ], [ %i.dd, %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us.preheader ] ; 3 uses
  %.045.us.us = phi i64 [ %i.el, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.us ], [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us.preheader ] ; 2 uses
  %.0.us.us = phi ptr [ %.us-phi161, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.us.us ], [ %i.l, %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us.preheader ] ; 9 uses
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !125 ; 3 uses
  %.not.i78.us.us = icmp eq ptr %i.ec, null
  br i1 %.not.i78.us.us, label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us.us, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef i64 %i.ef(ptr noundef nonnull align 8 dereferenceable(12) %i.ec)
          to label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us.us unwind label %.split.us.split.us, !inline_history !144

_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us.us: ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us
  %i.eh = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.us.split.us ], [ %i.eg, %bb.ac ]
  %i.ei = icmp slt i64 %.045.us.us, %i.eh
  br i1 %i.ei, label %.preheader.us.us, label %.split118.us

end_hunk_1
begin_hunk_2_@_ZN5arrow8internal29MakeTensorFromSparseCOOTensorEPNS_10MemoryPoolEPKNS_16SparseTensorImplINS_14SparseCOOIndexEEE:bb.a
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = invoke noundef i64 %i.lf(ptr noundef nonnull align 8 dereferenceable(12) %i.lc)
          to label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us unwind label %.split.us.split.split.split, !inline_history !144

_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us: ; preds = %bb.ai, %_ZN5arrow6StatusD2Ev.exit77.split.us.split.split.split
  %i.lh = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.us.split.split.split ], [ %i.lg, %bb.ai ]
  %i.li = icmp slt i64 %.045.us, %i.lh
  br i1 %i.li, label %_ZN5arrow8internal26SparseTensorConverterMixin13GetIndexValueEPKhi.exit.us110.preheader, label %.split118.us

_ZN5arrow8internal26SparseTensorConverterMixin13GetIndexValueEPKhi.exit.us110.preheader: ; preds = %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.048.us, i64 %i.dq, i1 false)
  %i.lj = getelementptr inbounds nuw i8, ptr %.048.us, i64 %i.bs
  %i.lk = add nuw nsw i64 %.045.us, 1
  br label %_ZN5arrow6StatusD2Ev.exit77.split.us.split.split.split, !llvm.loop !145

.split.us.split.split.split:                      ; preds = %bb.ai
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

_ZN5arrow6StatusD2Ev.exit77.split:                ; preds = %_ZN5arrow6StatusD2Ev.exit77
  br i1 %i.dp, label %_ZN5arrow6StatusD2Ev.exit77.split.split.us, label %_ZN5arrow6StatusD2Ev.exit77.split.split

_ZN5arrow6StatusD2Ev.exit77.split.split.us:       ; preds = %_ZN5arrow6StatusD2Ev.exit77.split
  %i.lm = load ptr, ptr %i.a, align 8, !tbaa !125 ; 2 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %.split118.us, label %_ZN5arrow6StatusD2Ev.exit77.split.split.us.split

_ZN5arrow6StatusD2Ev.exit77.split.split.us.split: ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.split.us, %.preheader.us124
  %i.lo = phi ptr [ %.pre234, %.preheader.us124 ], [ %i.lm, %_ZN5arrow6StatusD2Ev.exit77.split.split.us ] ; 3 uses
  %.045.us120 = phi i64 [ %i.lv, %.preheader.us124 ], [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.split.us ] ; 2 uses
  %.not.i78.us121 = icmp eq ptr %i.lo, null
  br i1 %.not.i78.us121, label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us122, label %bb.aj

bb.aj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.split.us.split
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !37
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = invoke noundef i64 %i.lr(ptr noundef nonnull align 8 dereferenceable(12) %i.lo)
          to label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us122 unwind label %.split.split.us, !inline_history !144

_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us122: ; preds = %bb.aj, %_ZN5arrow6StatusD2Ev.exit77.split.split.us.split
  %i.lt = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.split.us.split ], [ %i.ls, %bb.aj ]
  %i.lu = icmp slt i64 %.045.us120, %i.lt
  br i1 %i.lu, label %.preheader.us124, label %.split118.us

.preheader.us124:                                 ; preds = %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us122
  %i.lv = add nuw nsw i64 %.045.us120, 1
  %.pre234 = load ptr, ptr %i.a, align 8, !tbaa !125
  br label %_ZN5arrow6StatusD2Ev.exit77.split.split.us.split, !llvm.loop !153

.split.split.us:                                  ; preds = %bb.aj
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

_ZN5arrow6StatusD2Ev.exit77.split.split:          ; preds = %_ZN5arrow6StatusD2Ev.exit77.split
  br i1 %.not.i83, label %_ZN5arrow6StatusD2Ev.exit77.split.split.split.us, label %_ZN5arrow6StatusD2Ev.exit77.split.split.split, !prof !49

_ZN5arrow6StatusD2Ev.exit77.split.split.split.us: ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.split, %.preheader.us130
  %.048.us125 = phi ptr [ %i.mf, %.preheader.us130 ], [ %i.dd, %_ZN5arrow6StatusD2Ev.exit77.split.split ] ; 2 uses
  %.045.us126 = phi i64 [ %i.mg, %.preheader.us130 ], [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.split ] ; 2 uses
  %i.lx = load ptr, ptr %i.a, align 8, !tbaa !125 ; 3 uses
  %.not.i78.us127 = icmp eq ptr %i.lx, null
  br i1 %.not.i78.us127, label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us128, label %bb.ak

bb.ak:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.split.split.us
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !37
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = invoke noundef i64 %i.ma(ptr noundef nonnull align 8 dereferenceable(12) %i.lx)
          to label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us128 unwind label %.split.split.split.us, !inline_history !144

_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us128: ; preds = %bb.ak, %_ZN5arrow6StatusD2Ev.exit77.split.split.split.us
  %i.mc = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.split.split.us ], [ %i.mb, %bb.ak ]
  %i.md = icmp slt i64 %.045.us126, %i.mc
  br i1 %i.md, label %.preheader.us130, label %.split118.us

.preheader.us130:                                 ; preds = %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us128
  %i.me = load i8, ptr %.048.us125, align 1, !tbaa !7
  store i8 %i.me, ptr %i.ci, align 1, !tbaa !7
  %i.mf = getelementptr inbounds nuw i8, ptr %.048.us125, i64 %i.bs
  %i.mg = add nuw nsw i64 %.045.us126, 1
  br label %_ZN5arrow6StatusD2Ev.exit77.split.split.split.us, !llvm.loop !145

.split.split.split.us:                            ; preds = %bb.ak
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

_ZN5arrow6StatusD2Ev.exit77.split.split.split:    ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.split, %.preheader
  %.048 = phi ptr [ %i.mp, %.preheader ], [ %i.dd, %_ZN5arrow6StatusD2Ev.exit77.split.split ] ; 2 uses
  %.045 = phi i64 [ %i.mq, %.preheader ], [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.split ] ; 2 uses
  %i.mi = load ptr, ptr %i.a, align 8, !tbaa !125 ; 3 uses
  %.not.i78 = icmp eq ptr %i.mi, null
  br i1 %.not.i78, label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit, label %bb.al

bb.al:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.split.split
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !37
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = invoke noundef i64 %i.ml(ptr noundef nonnull align 8 dereferenceable(12) %i.mi)
          to label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit unwind label %.split.split.split, !inline_history !144

_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit77.split.split.split, %bb.al
  %i.mn = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit77.split.split.split ], [ %i.mm, %bb.al ]
  %i.mo = icmp slt i64 %.045, %i.mn
  br i1 %i.mo, label %.preheader, label %.split118.us

.preheader:                                       ; preds = %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.048, i64 %i.dq, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %.048, i64 %i.bs
  %i.mq = add nuw nsw i64 %.045, 1
  br label %_ZN5arrow6StatusD2Ev.exit77.split.split.split, !llvm.loop !145

.split118.us:                                     ; preds = %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit, %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us128, %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us122, %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us, %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us.us148, %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us.us140, %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.us.us, %_ZN5arrow6StatusD2Ev.exit77.split.split.us, %_ZN5arrow6StatusD2Ev.exit77.split.us.split.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.mr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ms = load ptr, ptr %i.at, align 8, !tbaa !43, !noalias !154 ; 2 uses
  %i.mt = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !92, !noalias !154
  store <2 x ptr> %i.mt, ptr %9, align 16, !tbaa !92, !alias.scope !154
  %.not.i.i.i.i79 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i79, label %_ZNK5arrow12SparseTensor4typeEv.exit81, label %bb.am

bb.am:                                            ; preds = %.split118.us
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 3 uses
  %i.mv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !154
  %.not.i.i.i.i.i80 = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i.i.i.i80, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !3, !noalias !154
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mu, align 4, !tbaa !3, !noalias !154
  br label %_ZNK5arrow12SparseTensor4typeEv.exit81

bb.ao:                                            ; preds = %bb.am
  %i.my = atomicrmw volatile add ptr %i.mu, i32 1 acq_rel, align 4, !noalias !154 ; 0 uses
  br label %_ZNK5arrow12SparseTensor4typeEv.exit81

_ZNK5arrow12SparseTensor4typeEv.exit81:           ; preds = %.split118.us, %bb.an, %bb.ao
  %i.mz = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24
          to label %.noexc82 unwind label %bb.av  ; 4 uses

.noexc82:                                         ; preds = %_ZNK5arrow12SparseTensor4typeEv.exit81
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteISB_EERKSt6vectorIlSaIlEERSH_RKSF_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(128) %i.mz, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.na)
          to label %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !157

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc82
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef 128) #25, !noalias !157
  br label %.body

.split.split.split:                               ; preds = %bb.al
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc82
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store ptr null, ptr %0, align 8, !tbaa !31
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !128
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.mz, ptr %i.nf, align 8, !tbaa !43
  %i.ng = load ptr, ptr %i.mr, align 8, !tbaa !43 ; 8 uses
  %.not.i.i89 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i89, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 4 uses
  %i.ni = load atomic i64, ptr %i.nh acquire, align 8 ; 2 uses
  %i.nj = icmp eq i64 %i.ni, 4294967297
  %i.nk = trunc i64 %i.ni to i32                  ; 2 uses
  br i1 %i.nj, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.nh, align 8, !tbaa !45
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  store i32 0, ptr %i.nl, align 4, !tbaa !47
  %i.nm = load ptr, ptr %i.ng, align 8, !tbaa !37
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(16) %i.ng) #23, !inline_history !133
  %i.np = load ptr, ptr %i.ng, align 8, !tbaa !37
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8
  call void %i.nr(ptr noundef nonnull align 8 dereferenceable(16) %i.ng) #23, !inline_history !133
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93

bb.ar:                                            ; preds = %bb.ap
  %i.ns = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i90 = icmp eq i8 %i.ns, 0
  br i1 %.not.i.i.i90, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.nt = add nsw i32 %i.nk, -1
  store i32 %i.nt, ptr %i.nh, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91

bb.at:                                            ; preds = %bb.ar
  %i.nu = atomicrmw volatile add ptr %i.nh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i92 = phi i32 [ %i.nk, %bb.as ], [ %i.nu, %bb.at ]
  %i.nv = icmp eq i32 %.0.i.i.i.i92, 1
  br i1 %i.nv, label %bb.au, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93, !prof !49

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ng) #23
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93: ; preds = %_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aw

bb.av:                                            ; preds = %_ZNK5arrow12SparseTensor4typeEv.exit81
  %i.nw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, %bb.av
  %eh.lpad-body = phi { ptr, i32 } [ %i.nw, %bb.av ], [ %i.nb, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.split.us

bb.aw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit73, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93
  %i.nx = load ptr, ptr %6, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i94 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ny = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !88
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.nx to i64
  %i.oc = sub i64 %i.oa, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oc) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.od = load ptr, ptr %5, align 8, !tbaa !61    ; 3 uses
  %.not.i95 = icmp eq ptr %i.od, null
  br i1 %.not.i95, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !37
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.od) #23, !inline_history !160
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ba

.split.us:                                        ; preds = %.split.us.split.split.us, %.split.us.split.split.split.us, %.split.us.split.split.split, %.split.us.split.us, %.split.split.split, %.split.split.split.us, %.split.split.us, %.body, %bb.ab
  %.pn58.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.ab ], [ %eh.lpad-body, %.body ], [ %i.lb, %.split.us.split.split.split.us ], [ %i.kf, %.split.us.split.us ], [ %i.kq, %.split.us.split.split.us ], [ %i.ll, %.split.us.split.split.split ], [ %i.lw, %.split.split.us ], [ %i.nc, %.split.split.split ], [ %i.mh, %.split.split.split.us ] ; 2 uses
  %i.oh = load ptr, ptr %6, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i96 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i96, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.split.us
  %i.oi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !88
  %i.ok = ptrtoint ptr %i.oj to i64
  %i.ol = ptrtoint ptr %i.oh to i64
  %i.om = sub i64 %i.ok, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %i.oh, i64 noundef %i.om) #25
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.pre236 = load ptr, ptr %5, align 8, !tbaa !61 ; 2 uses
  %.not.i98 = icmp eq ptr %.pre236, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99: ; preds = %.thread, %bb.az
  %.pn58.pn.pn.pn261 = phi { ptr, i32 } [ %i.cu, %.thread ], [ %.pn58.pn.pn, %bb.az ]
  %i.on = phi ptr [ %.cast, %.thread ], [ %.pre236, %bb.az ] ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !37
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.on) #23, !inline_history !160
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99, %bb.az
  %.pn58.pn.pn.pn262 = phi { ptr, i32 } [ %.pn58.pn.pn.pn261, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i99 ], [ %.pn58.pn.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bd

bb.ba:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.u
  %i.or = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.bb, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !54

bb.bb:                                            ; preds = %bb.ba
  %i.ot = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !61 ; 3 uses
  %.not.i.i.i.i101 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i101, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.bb
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !37
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8
  call void %i.ox(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ou) #23, !inline_history !161
  %.pr.pre.i = load ptr, ptr %4, align 8, !tbaa !31 ; 2 uses
  %.not.i.i102 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i102, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !104

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.ba
  %i.oy = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.or, %bb.ba ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 1
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !105, !range !72, !noundef !73
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.bb, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100, %bb.v
  %.pn58.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn262, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit100 ], [ %i.bx, %bb.v ]
  resume { ptr, i32 } %.pn58.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !162
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !162
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.26") align 8, i64 noundef, ptr noundef) local_unnamed_addr #6

declare noundef i64 @_ZNK5arrow12SparseTensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.136", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !31
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !31
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !49

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !163    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !7
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !163    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !7
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.m = load ptr, ptr %3, align 8, !tbaa !163    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !7
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #26
  unreachable
}

declare void @_ZN5arrow8internal22ComputeRowMajorStridesERKNS_14FixedWidthTypeERKSt6vectorIlSaIlEEPS6_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !162
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !162
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #23, !inline_history !164
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !104

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !105, !range !72, !noundef !73
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

declare void @_ZN5arrow8internal28CheckSparseIndexMaximumValueERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZNK5arrow6Tensor12CountNonZeroEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.35") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5arrow6Tensor12is_row_majorEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_121ConvertRowMajorTensorIhhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !64, !range !72, !noundef !73
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr null, !prof !54 ; 3 uses
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.p = ashr i64 %sext, 32                       ; 7 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %.noexc28

.noexc28:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24 ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.p, i1 false)
  %i.t = ptrtoint ptr %i.s to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc28, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.17.0 = phi i64 [ %i.t, %.noexc28 ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.031.0 = phi ptr [ %i.r, %.noexc28 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %i.u = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.f ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.w = ptrtoint ptr %.sroa.031.0 to i64
  %i.x = sub i64 %.sroa.17.0, %i.w                ; 3 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %.lr.ph.split.us, label %.lr.ph.split, !prof !54

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.042.us = phi ptr [ %.1.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph ] ; 3 uses
  %.01841.us = phi ptr [ %.119.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph ] ; 3 uses
  %.02040.us = phi ptr [ %i.bc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.o, %.lr.ph ] ; 2 uses
  %.02139.us = phi i64 [ %i.bd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.z = load i8, ptr %.02040.us, align 1, !tbaa !7 ; 2 uses
  %.not.us = icmp eq i8 %i.z, 0
  br i1 %.not.us, label %bb.b, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us, !prof !54

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.042.us, ptr align 1 %.sroa.031.0, i64 %i.x, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.01841.us, i64 1
  store i8 %i.z, ptr %.01841.us, align 1, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.042.us, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us, %.lr.ph.split.us
  %.119.us = phi ptr [ %i.aa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us ], [ %.01841.us, %.lr.ph.split.us ]
  %.1.us = phi ptr [ %i.ab, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us ], [ %.042.us, %.lr.ph.split.us ]
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = add nsw i64 %i.ah, -1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !7
  %i.al = add i8 %i.ak, 1                         ; 3 uses
  store i8 %i.al, ptr %i.aj, align 1, !tbaa !7
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = icmp eq i64 %i.ao, %i.am
  %i.aq = icmp sgt i64 %i.ah, 1
  %or.cond.i.us = and i1 %i.ap, %i.aq
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %bb.c
  %i.ar = phi i8 [ %i.ba, %bb.c ], [ %i.al, %bb.b ]
  %.017.i.us = phi i64 [ %i.ax, %bb.c ], [ %i.ai, %bb.b ] ; 4 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.017.i.us
  %i.au = load i64, ptr %i.at, align 8, !tbaa !10
  %i.av = icmp eq i64 %i.au, %i.as
  br i1 %i.av, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 %.017.i.us
  store i8 0, ptr %i.aw, align 1, !tbaa !7
  %i.ax = add nsw i64 %.017.i.us, -1              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.ba = add i8 %i.az, 1                         ; 2 uses
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !7
  %i.bb = icmp sgt i64 %.017.i.us, 1
  br i1 %i.bb, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !165

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %.02040.us, i64 1
  %i.bd = add nsw i64 %.02139.us, -1
  %i.be = icmp sgt i64 %.02139.us, 1
  br i1 %i.be, label %.lr.ph.split.us, label %._crit_edge.thread, !llvm.loop !166

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bf = icmp eq i64 %i.x, 1
  br i1 %i.bf, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54
  %.042.us43 = phi ptr [ %.1.us50, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %1, %.lr.ph.split ] ; 3 uses
  %.01841.us44 = phi ptr [ %.119.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %2, %.lr.ph.split ] ; 3 uses
  %.02040.us45 = phi ptr [ %i.ck, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %i.o, %.lr.ph.split ] ; 2 uses
  %.02139.us46 = phi i64 [ %i.cl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIhEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %i.u, %.lr.ph.split ] ; 2 uses
  %i.bg = load i8, ptr %.02040.us45, align 1, !tbaa !7 ; 2 uses
  %.not.us47 = icmp eq i8 %i.bg, 0
  br i1 %.not.us47, label %bb.d, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us48, !prof !54

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_ET0_T_S8_S7_.exit.us48: ; preds = %.lr.ph.split.split.us
  %i.bh = load i8, ptr %.sroa.031.0, align 1, !tbaa !7
  store i8 %i.bh, ptr %.042.us43, align 1, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %.01841.us44, i64 1
  store i8 %i.bg, ptr %.01841.us44, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.042.us43, i64 %i.p
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIlmEEvRKNS_6TensorEPT_PT0_l:bb.a

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.lw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 6 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %.0183947 = ptrtoaddr ptr %.01839 to i64
  %i.jl = load ptr, ptr %i.z, align 8
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i64 %i.jm, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.jn = getelementptr inbounds nuw i8, ptr %.01938, i64 8 ; 4 uses
  store i64 %i.jm, ptr %.01938, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.jo = sub i64 %.0183947, %i.r
  %diff.check48 = icmp ult i64 %i.jo, 32
  %or.cond103 = select i1 %min.iters.check50, i1 true, i1 %diff.check48
  br i1 %or.cond103, label %.lr.ph.preheader109, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader
  %i.jp = getelementptr i8, ptr %.01839, i64 %i.fz ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body54 ] ; 3 uses
  %i.jq = shl i64 %index55, 3
  %next.gep56 = getelementptr i8, ptr %.01839, i64 %i.jq ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index55 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.jr, align 8, !tbaa !10
  %wide.load58 = load <2 x i64>, ptr %i.js, align 8, !tbaa !10
  %i.jt = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep56, align 8, !tbaa !10
  store <2 x i64> %wide.load58, ptr %i.jt, align 8, !tbaa !10
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.ju = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.ju, label %middle.block60, label %vector.body54, !llvm.loop !570

middle.block60:                                   ; preds = %vector.body54
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block60
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec53, %middle.block60 ] ; 4 uses
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.jp, %middle.block60 ] ; 2 uses
  %i.jv = sub nsw i64 %i.fy, %.01737.ph
  %xtraiter126 = and i64 %i.jv, 7                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader109, %.lr.ph.prol
  %.01737.prol = phi i64 [ %i.jz, %.lr.ph.prol ], [ %.01737.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.136.prol = phi ptr [ %i.jy, %.lr.ph.prol ], [ %.136.ph, %.lr.ph.preheader109 ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader109 ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.prol
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !10
  %i.jy = getelementptr inbounds nuw i8, ptr %.136.prol, i64 8 ; 3 uses
  store i64 %i.jx, ptr %.136.prol, align 8, !tbaa !10
  %i.jz = add nuw nsw i64 %.01737.prol, 1         ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !571

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader109
  %.lcssa110.unr = phi ptr [ poison, %.lr.ph.preheader109 ], [ %i.jy, %.lr.ph.prol ]
  %.01737.unr = phi i64 [ %.01737.ph, %.lr.ph.preheader109 ], [ %i.jz, %.lr.ph.prol ]
  %.136.unr = phi ptr [ %.136.ph, %.lr.ph.preheader109 ], [ %i.jy, %.lr.ph.prol ]
  %i.ka = sub nsw i64 %.01737.ph, %i.fy
  %i.kb = icmp ugt i64 %i.ka, -8
  br i1 %i.kb, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01737 = phi i64 [ %i.lh, %.lr.ph ], [ %.01737.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.136 = phi ptr [ %i.lg, %.lr.ph ], [ %.136.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !10
  %i.ke = getelementptr inbounds nuw i8, ptr %.136, i64 8
  store i64 %i.kd, ptr %.136, align 8, !tbaa !10
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !10
  %i.ki = getelementptr inbounds nuw i8, ptr %.136, i64 16
  store i64 %i.kh, ptr %i.ke, align 8, !tbaa !10
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !10
  %i.km = getelementptr inbounds nuw i8, ptr %.136, i64 24
  store i64 %i.kl, ptr %i.ki, align 8, !tbaa !10
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !10
  %i.kq = getelementptr inbounds nuw i8, ptr %.136, i64 32
  store i64 %i.kp, ptr %i.km, align 8, !tbaa !10
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !10
  %i.ku = getelementptr inbounds nuw i8, ptr %.136, i64 40
  store i64 %i.kt, ptr %i.kq, align 8, !tbaa !10
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !10
  %i.ky = getelementptr inbounds nuw i8, ptr %.136, i64 48
  store i64 %i.kx, ptr %i.ku, align 8, !tbaa !10
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !10
  %i.lc = getelementptr inbounds nuw i8, ptr %.136, i64 56
  store i64 %i.lb, ptr %i.ky, align 8, !tbaa !10
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !10
  %i.lg = getelementptr inbounds nuw i8, ptr %.136, i64 64 ; 2 uses
  store i64 %i.lf, ptr %i.lc, align 8, !tbaa !10
  %i.lh = add nuw nsw i64 %.01737, 8              ; 2 uses
  %exitcond94.not.7 = icmp eq i64 %i.h, %i.lh
  br i1 %exitcond94.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !572

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block60, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.jn, %bb.g ], [ %i.jn, %middle.block60 ], [ %i.jn, %.lr.ph ], [ %i.jn, %.lr.ph.prol.loopexit ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.jp, %middle.block60 ], [ %.lcssa110.unr, %.lr.ph.prol.loopexit ], [ %i.lg, %.lr.ph ]
  %i.li = load i64, ptr %i.af, align 8, !tbaa !10
  %i.lj = add nsw i64 %i.li, 1                    ; 3 uses
  store i64 %i.lj, ptr %i.af, align 8, !tbaa !10
  %i.lk = load i64, ptr %i.ag, align 8, !tbaa !10
  %i.ll = icmp eq i64 %i.lj, %i.lk
  br i1 %i.ll, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.lm = phi i64 [ %i.lu, %bb.h ], [ %i.lj, %.loopexit ]
  %.03.i = phi i64 [ %i.lr, %bb.h ], [ %i.ae, %.loopexit ] ; 4 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !10
  %i.lp = icmp eq i64 %i.lm, %i.lo
  br i1 %i.lp, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.lq, align 8, !tbaa !10
  %i.lr = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.lr ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !10
  %i.lu = add nsw i64 %i.lt, 1                    ; 2 uses
  store i64 %i.lu, ptr %i.ls, align 8, !tbaa !10
  %i.lv = icmp sgt i64 %.03.i, 1
  br i1 %i.lv, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.lw = add nsw i64 %.040, -1
  %i.lx = icmp sgt i64 %.040, 1
  br i1 %i.lx, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !561

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.ji
}

declare void @_ZN5arrow14SparseCOOIndex4MakeERKSt10shared_ptrINS_6TensorEEb(ptr dead_on_unwind writable sret(%"class.arrow::Result.39") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !573
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !573
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit, !prof !49

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread, !prof !104

_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !105, !range !72, !noundef !73
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr readonly captures(none) %3, ptr readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !574

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !575

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, i64 noundef %i.o, ptr readonly %3, ptr readonly %4)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i10.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit, !llvm.loop !576

.lr.ph115:                                        ; preds = %.lr.ph, %bb.b
  %storemerge41114 = phi ptr [ %.us-phi73.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.042113 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.cu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.042113, -1                 ; 3 uses
  %.val = load i32, ptr %3, align 4, !tbaa !3     ; 2 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge41114, i64 -8 ; 6 uses
  %.not1.i.i.i.i = icmp sgt i32 %.val, 0
  %.pre.i.i = load i64, ptr %i.x, align 8, !tbaa !10 ; 5 uses
  br i1 %.not1.i.i.i.i, label %.lr.ph.i.i.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.thread.i: ; preds = %.lr.ph115
  %i.z = load i64, ptr %0, align 8, !tbaa !10
  store i64 %.pre.i.i, ptr %0, align 8, !tbaa !10
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  %.not75.i.i = icmp ult ptr %i.f, %i.y
  br i1 %.not75.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.loopexit33.i.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph115
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !10  ; 3 uses
  %i.ab = zext nneg i32 %.val to i64              ; 14 uses
  %i.ac = mul nsw i64 %.pre.i.i, %i.ab
  %i.ad = mul nsw i64 %i.aa, %i.ab
  %i.ae = load ptr, ptr %4, align 8, !tbaa !185   ; 7 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad  ; 3 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.ac  ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ab
  br i1 %exitcond.not.i.i.i.i, label %.lr.ph.i.i59.i.i, label %bb.e, !llvm.loop !195

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.d ] ; 3 uses
  %.03.i.i.i.i = phi i1 [ undef, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.d ]
  %i.ah = getelementptr i8, ptr %i.af, i64 %indvars.iv.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !7   ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !7   ; 3 uses
  %i.al = icmp ult i8 %i.ai, %i.ak
  %i.am = icmp ule i8 %i.ai, %i.ak
  %..0.i.i.i.i = select i1 %i.am, i1 %.03.i.i.i.i, i1 false
  %cond1.i.i.i.i = icmp eq i8 %i.ai, %i.ak
  %.1.i.i.i.i = select i1 %i.al, i1 true, i1 %..0.i.i.i.i ; 2 uses
  br i1 %cond1.i.i.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i: ; preds = %bb.e
  br i1 %.1.i.i.i.i, label %.lr.ph.i.i37.i.i, label %.lr.ph.i.i59.i.i

.lr.ph.i.i37.i.i:                                 ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.i.i
  %i.an = load i64, ptr %i.y, align 8, !tbaa !10  ; 2 uses
  %i.ao = mul nsw i64 %i.an, %i.ab
  %i.ap = getelementptr i8, ptr %i.ae, i64 %i.ao  ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i43.i.i = add nuw nsw i64 %indvars.iv.i.i38.i.i, 1 ; 2 uses
  %exitcond.not.i.i44.i.i = icmp eq i64 %indvars.iv.next.i.i43.i.i, %i.ab
  br i1 %exitcond.not.i.i44.i.i, label %.lr.ph.i.i48.i.i.preheader, label %bb.g, !llvm.loop !195

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i37.i.i
  %indvars.iv.i.i38.i.i = phi i64 [ 0, %.lr.ph.i.i37.i.i ], [ %indvars.iv.next.i.i43.i.i, %bb.f ] ; 3 uses
  %.03.i.i39.i.i = phi i1 [ undef, %.lr.ph.i.i37.i.i ], [ %.1.i.i42.i.i, %bb.f ]
  %i.aq = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i.i38.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7   ; 3 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 %indvars.iv.i.i38.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !7   ; 3 uses
  %i.au = icmp ult i8 %i.ar, %i.at
  %i.av = icmp ule i8 %i.ar, %i.at
  %..0.i.i40.i.i = select i1 %i.av, i1 %.03.i.i39.i.i, i1 false
  %cond1.i.i41.i.i = icmp eq i8 %i.ar, %i.at
  %.1.i.i42.i.i = select i1 %i.au, i1 true, i1 %..0.i.i40.i.i ; 2 uses
  br i1 %cond1.i.i41.i.i, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit45.i.i: ; preds = %bb.g
  br i1 %.1.i.i42.i.i, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SG_SI_.exit.i, label %.lr.ph.i.i48.i.i.preheader
end_hunk_3
begin_hunk_4_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_:bb.a
  %.not1.i.i = icmp sgt i32 %.val.val, 0
  %i.d = zext nneg i32 %.val.val to i64           ; 3 uses
  br i1 %.not1.i.i, label %.lr.ph.split.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = load ptr, ptr %5, align 8, !tbaa !53     ; 2 uses
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %.lr.ph.split.us
  %.046.us = phi i64 [ %1, %.lr.ph.split.us ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ] ; 2 uses
  %i.f = shl i64 %.046.us, 1                      ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 3 uses
  %i.h = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.i, align 8, !tbaa !10
  %i.l = load i64, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %i.m = mul nsw i64 %i.k, %i.d
  %i.n = mul nsw i64 %i.l, %i.d
  %i.o = getelementptr [8 x i8], ptr %i.e, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.c ] ; 3 uses
  %.03.i.i.us = phi i1 [ undef, %.lr.ph.i.i.us ], [ %cond.fr.us, %bb.c ]
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.us
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv.i.i.us
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10   ; 3 uses
  %i.u = icmp slt i64 %i.r, %i.t
  %i.v = icmp sle i64 %i.r, %i.t
  %..0.i.i.us = and i1 %i.v, %.03.i.i.us
  %cond1.i.i.us = icmp eq i64 %i.r, %i.t
  %.1.i.i.us = or i1 %i.u, %..0.i.i.us
  %cond.fr.us = freeze i1 %.1.i.i.us              ; 2 uses
  br i1 %cond1.i.i.us, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us: ; preds = %bb.b
  %spec.select.us = select i1 %cond.fr.us, i64 %i.h, i64 %i.g ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.us
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %i.d
  br i1 %exitcond.not.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, label %bb.b, !llvm.loop !340

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us
  %i.w = phi i64 [ %.pre, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.l, %bb.c ]
  %i.x = phi i64 [ %spec.select.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.us ], [ %i.g, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.046.us
  store i64 %i.w, ptr %i.y, align 8, !tbaa !10
  %i.z = icmp slt i64 %i.x, %i.b
  br i1 %i.z, label %.lr.ph.i.i.us, label %._crit_edge, !llvm.loop !684

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread
  %.046 = phi i64 [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.aa = shl i64 %.046, 1
  %i.ab = add i64 %i.aa, 2                        ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %.046
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !10
  %i.af = icmp slt i64 %i.ab, %i.b
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, label %._crit_edge, !llvm.loop !684

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread.us ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEESL_EEbS9_SB_.exit.thread ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.al = shl nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.am, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = icmp sgt i64 %.1, %1
  br i1 %i.aq, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %.val.val.i = load i32, ptr %4, align 4, !tbaa !3 ; 2 uses
  %.not1.i.i.i = icmp sgt i32 %.val.val.i, 0
  %i.ar = zext nneg i32 %.val.val.i to i64        ; 3 uses
  br i1 %.not1.i.i.i, label %.lr.ph.split.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.as = mul nsw i64 %3, %i.ar
  %i.at = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  br label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.h, %.lr.ph.split.us.i
  %.015.us.i = phi i64 [ %.1, %.lr.ph.split.us.i ], [ %.0916.us.i, %bb.h ] ; 4 uses
  %.0916.us.in.i = add nsw i64 %.015.us.i, -1
  %.0916.us.i = sdiv i64 %.0916.us.in.i, 2        ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %0, i64 %.0916.us.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = mul nsw i64 %i.aw, %i.ar
  %i.ay = getelementptr [8 x i8], ptr %i.at, i64 %i.ax
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ 0, %.lr.ph.i.i.us.i ], [ %indvars.iv.next.i.i.us.i, %bb.i ] ; 3 uses
  %.03.i.i.us.i = phi i1 [ undef, %.lr.ph.i.i.us.i ], [ %.1.i.i.us.i, %bb.i ]
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i.us.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.us.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10 ; 3 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  %i.be = icmp sle i64 %i.ba, %i.bc
  %..0.i.i.us.i = select i1 %i.be, i1 %.03.i.i.us.i, i1 false
  %cond1.i.i.us.i = icmp eq i64 %i.ba, %i.bc
  %.1.i.i.us.i = select i1 %i.bd, i1 true, i1 %..0.i.i.us.i ; 2 uses
  br i1 %cond1.i.i.us.i, label %bb.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i: ; preds = %bb.g
  br i1 %.1.i.i.us.i, label %bb.h, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %.015.us.i
  store i64 %i.aw, ptr %i.bf, align 8, !tbaa !10
  %i.bg = icmp sgt i64 %.0916.us.i, %1
  br i1 %i.bg, label %.lr.ph.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, !llvm.loop !685

bb.i:                                             ; preds = %bb.g
  %indvars.iv.next.i.i.us.i = add nuw nsw i64 %indvars.iv.i.i.us.i, 1 ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %indvars.iv.next.i.i.us.i, %i.ar
  br i1 %exitcond.not.i.i.us.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit, label %bb.g, !llvm.loop !340

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i, %bb.h, %bb.i, %bb.f, %.lr.ph.i
  %.012.i = phi i64 [ %.015.us.i, %bb.i ], [ %.1, %bb.f ], [ %.1, %.lr.ph.i ], [ %.015.us.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS2_6TensorEPT_PT0_lEUlllE_EclINS_17__normal_iteratorIPlSt6vectorIlSaIlEEEElEEbS9_RSB_.exit.us.i ], [ %.0916.us.i, %bb.h ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %.012.i
  store i64 %3, ptr %i.bh, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteISD_EERKSt6vectorIlSaIlEERSJ_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %5 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !47
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !686
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !686
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %bb.h

.body:                                            ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6TensorEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #23, !inline_history !687
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !688  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #23
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !47
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #23, !inline_history !690
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #23, !inline_history !690
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !691  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #23, !inline_history !694
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !688  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !695
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !695
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !61     ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !43
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !696
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 4, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !43 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !47
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #23, !inline_history !697
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #23, !inline_history !697
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !49

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !43
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !45
  store i32 0, ptr %i.f, align 4, !tbaa !47
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !162
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !162
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #23
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !162
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !162
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !698
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !698
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !49

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !163  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !7
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #25
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !699  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !699  ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !163    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k                  ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !163   ; 4 uses
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m                  ; 2 uses
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %i.p = load i64, ptr %i.m, align 8
  %i.q = select i1 %i.n, i64 15, i64 %i.p
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !700
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !163  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !699  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !163
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !7
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !699
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !699
  store ptr %i.u, ptr %i.r, align 8, !tbaa !163
  store i64 0, ptr %i.ab, align 8, !tbaa !699
  store i8 0, ptr %i.u, align 8, !tbaa !7
  br label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1, !tbaa !7
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !699
  %i.aj = load ptr, ptr %1, align 8, !tbaa !163
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !700
  %i.am = load ptr, ptr %1, align 8, !tbaa !163   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !699 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !163
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !7
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !7
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !699
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !699
  store ptr %i.g, ptr %1, align 8, !tbaa !163
  store i64 0, ptr %i.a, align 8, !tbaa !699
  store i8 0, ptr %i.g, align 8, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !700
  %i.b = icmp eq ptr %1, null
end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !699
  %i.x = load ptr, ptr %0, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !7
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !699  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !163    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !49

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !7
  store i8 %i.t, ptr %i.s, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !7
  store i8 %i.x, ptr %i.w, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !163
  store i64 %.0, ptr %i.h, align 8, !tbaa !7
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteISB_EERKSt6vectorIlSaIlEERSH_RKSF_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %6 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_RKSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !47
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !701
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !701
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %bb.h

.body:                                            ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

declare void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_RKSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTSN5arrow6TensorE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSSt10shared_ptrIN5arrow8DataTypeEE", !14, i64 0}
!17 = !{!18, !27, i64 48}
!18 = !{!"_ZTSN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterE", !19, i64 0, !24, i64 16, !13, i64 32, !16, i64 40, !27, i64 48}
!19 = !{!"_ZTSSt10shared_ptrIN5arrow14SparseCOOIndexEE", !20, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0, !22, i64 8}
!21 = !{!"p1 _ZTSN5arrow14SparseCOOIndexE", !14, i64 0}
!22 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!24 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !25, i64 0}
!25 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !22, i64 8}
!26 = !{!"p1 _ZTSN5arrow6BufferE", !14, i64 0}
!27 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !14, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverter7ConvertEv: argument 0"}
!30 = distinct !{!30, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverter7ConvertEv"}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSN5arrow6StatusE", !33, i64 0}
!33 = !{!"p1 _ZTSN5arrow6Status5StateE", !14, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !22, i64 8}
!36 = !{!"p1 _ZTSN5arrow8DataTypeE", !14, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"vtable pointer", !6, i64 0}
!39 = distinct !{null}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!42 = distinct !{!42, !"_ZNK5arrow6Tensor4typeEv"}
!43 = !{!22, !23, i64 0}
!44 = !{!41, !29}
!45 = !{!46, !4, i64 8}
!46 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!47 = !{!46, !4, i64 12}
!48 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!51, !52, i64 8}
!51 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 long", !14, i64 0}
!53 = !{!51, !52, i64 0}
!54 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!57 = distinct !{!57, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!60 = distinct !{!60, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!61 = !{!26, !26, i64 0}
!62 = !{!59, !56, !29}
!63 = !{!59, !56}
!64 = !{!65, !66, i64 9}
!65 = !{!"_ZTSN5arrow6BufferE", !66, i64 8, !66, i64 9, !67, i64 16, !11, i64 24, !11, i64 32, !68, i64 40, !24, i64 48, !69, i64 64}
!66 = !{!"bool", !5, i64 0}
!67 = !{!"p1 omnipotent char", !14, i64 0}
!68 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!69 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !70, i64 0}
!70 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !71, i64 0, !22, i64 8}
!71 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !14, i64 0}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!76 = distinct !{!76, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!79 = distinct !{!79, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!80 = !{!78, !75, !29}
!81 = !{!78, !75}
!82 = !{!25, !26, i64 0}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!51, !52, i64 16}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteIS8_EERKSt6vectorIlSaIlEERSE_EES2_IT_EDpOT0_: argument 0"}
!91 = distinct !{!91, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteIS8_EERKSt6vectorIlSaIlEERSE_EES2_IT_EDpOT0_"}
!92 = !{!14, !14, i64 0}
!93 = !{!94, !96, !29}
!94 = distinct !{!94, !95, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE15MoveValueUnsafeEv: argument 0"}
!95 = distinct !{!95, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE15MoveValueUnsafeEv"}
!96 = distinct !{!96, !97, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE11ValueUnsafeEv: argument 0"}
!97 = distinct !{!97, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE11ValueUnsafeEv"}
!98 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!99 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!100 = !{!101, !29}
!101 = distinct !{!101, !102, !"_ZN5arrow6Status2OKEv: argument 0"}
!102 = distinct !{!102, !"_ZN5arrow6Status2OKEv"}
!103 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!104 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!105 = !{!106, !66, i64 1}
!106 = !{!"_ZTSN5arrow6Status5StateE", !107, i64 0, !66, i64 1, !108, i64 8, !110, i64 40}
!107 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!108 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !109, i64 0, !11, i64 8, !5, i64 16}
!109 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !67, i64 0}
!110 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !111, i64 0}
!111 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !112, i64 0, !22, i64 8}
!112 = !{!"p1 _ZTSN5arrow12StatusDetailE", !14, i64 0}
!113 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!114 = distinct !{null, null, null}
!115 = distinct !{null, ptr @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
end_hunk_5
