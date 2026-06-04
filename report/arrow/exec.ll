inline.NumInlined: 3475
inline.NumDeleted: 1689
begin_hunk_0_@_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutorD0Ev:bb.a

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEE4InitEPNS0_13KernelContextENS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(80) initializes((8, 24)) %1, ptr noundef %2, ptr noundef readonly byval(%"struct.arrow::compute::KernelInitArgs") align 8 captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.319", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !874
  %i.b = load ptr, ptr %3, align 8, !tbaa !626    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !877
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !632
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !635, !nonnull !133, !align !595
  call void @_ZNK5arrow7compute10OutputType7ResolveEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.319") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %4, align 8, !tbaa !121
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINS_10TypeHolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70, !noalias !878
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load <2 x ptr>, ptr %i.k, align 8, !tbaa !399, !noalias !878
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !84
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !883
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !124

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.al, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !84
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.o ], [ %i.ay, %bb.p ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.q, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, !prof !69

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m, %bb.k
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ba = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !126, !range !132, !noundef !133
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit

_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit:      ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.241, align 1            ; 3 uses
  %5 = alloca %class.anon.228, align 8            ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.anon.241, align 1            ; 3 uses
  %7 = alloca %class.anon.241, align 1            ; 3 uses
  %8 = alloca %class.anon.241, align 1            ; 3 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"struct.arrow::Datum", align 16   ; 12 uses
  %11 = alloca %"class.arrow::Result.368", align 8 ; 13 uses
  %12 = alloca %"class.std::shared_ptr.35", align 16 ; 5 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %15 = alloca %"class.std::shared_ptr.35", align 8 ; 8 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %17 = alloca %"class.std::shared_ptr.41", align 16 ; 7 uses
  %18 = alloca %"struct.arrow::DataTypeLayout", align 8 ; 6 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %20 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 14 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 11 uses
  %23 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 13 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %27 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !75     ; 41 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = add i64 %i.g, -24
  %i.j = sub i64 %i.i, %i.h                       ; 3 uses
  %i.k = udiv i64 %i.j, 24
  %i.l = add nuw nsw i64 %i.k, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.j, 72
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check286 = icmp ult i64 %i.j, 744
  br i1 %min.iters.check286, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 28
  %n.vec = and i64 %i.l, 2305843009213693920      ; 4 uses
  %i.m = mul i64 %n.vec, 24
  %i.n = getelementptr i8, ptr %i.c, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.eo, %vector.body ]
  %vec.phi287 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.ep, %vector.body ]
  %i.o = mul i64 %index, 24                       ; 32 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.o
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr i8, ptr %i.c, i64 %i.o
  %i.r = getelementptr i8, ptr %i.c, i64 %i.o
  %i.s = getelementptr i8, ptr %i.c, i64 %i.o
  %i.t = getelementptr i8, ptr %i.c, i64 %i.o
  %i.u = getelementptr i8, ptr %i.c, i64 %i.o
  %i.v = getelementptr i8, ptr %i.c, i64 %i.o
  %i.w = getelementptr i8, ptr %i.c, i64 %i.o
  %i.x = getelementptr i8, ptr %i.c, i64 %i.o
  %i.y = getelementptr i8, ptr %i.c, i64 %i.o
  %i.z = getelementptr i8, ptr %i.c, i64 %i.o
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ab = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ad = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.o
  %i.af = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.o
  %i.aj = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.o
  %i.al = getelementptr i8, ptr %i.c, i64 %i.o
  %i.am = getelementptr i8, ptr %i.c, i64 %i.o
  %i.an = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ao = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.o
  %i.aq = getelementptr i8, ptr %i.c, i64 %i.o
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.o
  %i.as = getelementptr i8, ptr %i.c, i64 %i.o
  %i.at = getelementptr i8, ptr %i.c, i64 %i.o
  %i.au = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.av = getelementptr i8, ptr %i.p, i64 40
  %i.aw = getelementptr i8, ptr %i.q, i64 64
  %i.ax = getelementptr i8, ptr %i.r, i64 88
  %i.ay = getelementptr i8, ptr %i.s, i64 112
  %i.az = getelementptr i8, ptr %i.t, i64 136
  %i.ba = getelementptr i8, ptr %i.u, i64 160
  %i.bb = getelementptr i8, ptr %i.v, i64 184
  %i.bc = getelementptr i8, ptr %i.w, i64 208
  %i.bd = getelementptr i8, ptr %i.x, i64 232
  %i.be = getelementptr i8, ptr %i.y, i64 256
  %i.bf = getelementptr i8, ptr %i.z, i64 280
  %i.bg = getelementptr i8, ptr %i.aa, i64 304
  %i.bh = getelementptr i8, ptr %i.ab, i64 328
  %i.bi = getelementptr i8, ptr %i.ac, i64 352
  %i.bj = getelementptr i8, ptr %i.ad, i64 376
  %i.bk = getelementptr i8, ptr %i.ae, i64 400
  %i.bl = getelementptr i8, ptr %i.af, i64 424
  %i.bm = getelementptr i8, ptr %i.ag, i64 448
  %i.bn = getelementptr i8, ptr %i.ah, i64 472
  %i.bo = getelementptr i8, ptr %i.ai, i64 496
  %i.bp = getelementptr i8, ptr %i.aj, i64 520
  %i.bq = getelementptr i8, ptr %i.ak, i64 544
  %i.br = getelementptr i8, ptr %i.al, i64 568
  %i.bs = getelementptr i8, ptr %i.am, i64 592
  %i.bt = getelementptr i8, ptr %i.an, i64 616
  %i.bu = getelementptr i8, ptr %i.ao, i64 640
  %i.bv = getelementptr i8, ptr %i.ap, i64 664
  %i.bw = getelementptr i8, ptr %i.aq, i64 688
  %i.bx = getelementptr i8, ptr %i.ar, i64 712
  %i.by = getelementptr i8, ptr %i.as, i64 736
  %i.bz = getelementptr i8, ptr %i.at, i64 760
  %i.ca = load i8, ptr %i.au, align 8, !tbaa !76
  %i.cb = load i8, ptr %i.av, align 8, !tbaa !76
  %i.cc = load i8, ptr %i.aw, align 8, !tbaa !76
  %i.cd = load i8, ptr %i.ax, align 8, !tbaa !76
  %i.ce = load i8, ptr %i.ay, align 8, !tbaa !76
  %i.cf = load i8, ptr %i.az, align 8, !tbaa !76
  %i.cg = load i8, ptr %i.ba, align 8, !tbaa !76
  %i.ch = load i8, ptr %i.bb, align 8, !tbaa !76
  %i.ci = load i8, ptr %i.bc, align 8, !tbaa !76
  %i.cj = load i8, ptr %i.bd, align 8, !tbaa !76
  %i.ck = load i8, ptr %i.be, align 8, !tbaa !76
  %i.cl = load i8, ptr %i.bf, align 8, !tbaa !76
  %i.cm = load i8, ptr %i.bg, align 8, !tbaa !76
  %i.cn = load i8, ptr %i.bh, align 8, !tbaa !76
  %i.co = load i8, ptr %i.bi, align 8, !tbaa !76
  %i.cp = load i8, ptr %i.bj, align 8, !tbaa !76
  %i.cq = insertelement <16 x i8> poison, i8 %i.ca, i64 0
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 1
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 2
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 3
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 4
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 5
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 6
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 7
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 8
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 9
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 10
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 11
  %i.dc = insertelement <16 x i8> %i.db, i8 %i.cm, i64 12
  %i.dd = insertelement <16 x i8> %i.dc, i8 %i.cn, i64 13
  %i.de = insertelement <16 x i8> %i.dd, i8 %i.co, i64 14
  %i.df = insertelement <16 x i8> %i.de, i8 %i.cp, i64 15
  %i.dg = load i8, ptr %i.bk, align 8, !tbaa !76
  %i.dh = load i8, ptr %i.bl, align 8, !tbaa !76
  %i.di = load i8, ptr %i.bm, align 8, !tbaa !76
  %i.dj = load i8, ptr %i.bn, align 8, !tbaa !76
  %i.dk = load i8, ptr %i.bo, align 8, !tbaa !76
  %i.dl = load i8, ptr %i.bp, align 8, !tbaa !76
  %i.dm = load i8, ptr %i.bq, align 8, !tbaa !76
  %i.dn = load i8, ptr %i.br, align 8, !tbaa !76
  %i.do = load i8, ptr %i.bs, align 8, !tbaa !76
  %i.dp = load i8, ptr %i.bt, align 8, !tbaa !76
  %i.dq = load i8, ptr %i.bu, align 8, !tbaa !76
  %i.dr = load i8, ptr %i.bv, align 8, !tbaa !76
  %i.ds = load i8, ptr %i.bw, align 8, !tbaa !76
  %i.dt = load i8, ptr %i.bx, align 8, !tbaa !76
  %i.du = load i8, ptr %i.by, align 8, !tbaa !76
  %i.dv = load i8, ptr %i.bz, align 8, !tbaa !76
  %i.dw = insertelement <16 x i8> poison, i8 %i.dg, i64 0
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 1
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 2
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 3
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 4
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 5
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 6
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 7
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 8
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 9
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 10
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 11
  %i.ei = insertelement <16 x i8> %i.eh, i8 %i.ds, i64 12
  %i.ej = insertelement <16 x i8> %i.ei, i8 %i.dt, i64 13
  %i.ek = insertelement <16 x i8> %i.ej, i8 %i.du, i64 14
  %i.el = insertelement <16 x i8> %i.ek, i8 %i.dv, i64 15
  %i.em = icmp eq <16 x i8> %i.df, splat (i8 3)
  %i.en = icmp eq <16 x i8> %i.el, splat (i8 3)
  %i.eo = or <16 x i1> %vec.phi, %i.em            ; 2 uses
  %i.ep = or <16 x i1> %vec.phi287, %i.en         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !886

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.ep, %i.eo
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.er = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.es = icmp ne i16 %i.er, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !887

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.es, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec320 = and i64 %i.l, 2305843009213693948   ; 3 uses
  %i.et = mul i64 %n.vec320, 24
  %i.eu = getelementptr i8, ptr %i.c, i64 %i.et
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index321 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next327, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi322 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %33, %vec.epilog.vector.body ]
  %i.ev = mul i64 %index321, 24                   ; 4 uses
  %next.gep323.a = getelementptr i8, ptr %i.c, i64 %i.ev
  %i.ew = getelementptr i8, ptr %i.c, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.c, i64 %i.ev
  %i.ey = getelementptr i8, ptr %i.c, i64 %i.ev
  %i.ez = getelementptr inbounds nuw i8, ptr %next.gep323.a, i64 16
  %i.fa = getelementptr i8, ptr %i.ew, i64 40
  %i.fb = getelementptr i8, ptr %i.ex, i64 64
  %i.fc = getelementptr i8, ptr %i.ey, i64 88
  %i.fd = load i8, ptr %i.ez, align 8, !tbaa !76
  %i.fe = load i8, ptr %i.fa, align 8, !tbaa !76
  %i.ff = load i8, ptr %i.fb, align 8, !tbaa !76
  %i.fg = load i8, ptr %i.fc, align 8, !tbaa !76
  %28 = insertelement <4 x i8> poison, i8 %i.fd, i64 0
  %29 = insertelement <4 x i8> %28, i8 %i.fe, i64 1
  %30 = insertelement <4 x i8> %29, i8 %i.ff, i64 2
  %31 = insertelement <4 x i8> %30, i8 %i.fg, i64 3
  %.fr332 = freeze <4 x i8> %31
  %32 = icmp eq <4 x i8> %.fr332, splat (i8 3)
  %33 = or <4 x i1> %vec.phi322, %32              ; 2 uses
  %index.next327 = add nuw i64 %index321, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.fh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !888

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %34 = bitcast <4 x i1> %33 to i4
  %i.fi = icmp ne i4 %34, 0                       ; 2 uses
  %cmp.n328 = icmp eq i64 %i.l, %n.vec320
  br i1 %cmp.n328, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.044197.ph = phi i1 [ false, %iter.check ], [ %i.es, %vec.epilog.iter.check ], [ %i.fi, %vec.epilog.middle.block ]
  %.sroa.0191.0196.ph = phi ptr [ %i.c, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.044.lcssa = phi i1 [ false, %bb.a ], [ %i.fi, %vec.epilog.middle.block ], [ %i.es, %middle.block ], [ %spec.select, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !889 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !63
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::DataTypeLayout") align 8 %18, ptr noundef nonnull align 8 dereferenceable(72) %i.fk)
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !676
  %i.fq = load ptr, ptr %18, align 8, !tbaa !679  ; 3 uses
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = lshr exact i64 %i.ft, 4
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !890
  %.not.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow14DataTypeLayoutD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.fx = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !681
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = sub i64 %i.fz, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %i.fq, i64 noundef %i.ga) #31
  br label %_ZN5arrow14DataTypeLayoutD2Ev.exit

_ZN5arrow14DataTypeLayoutD2Ev.exit:               ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !877 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 120
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !891
  %i.gf = add i32 %i.ge, -4
  %narrow = icmp ult i32 %i.gf, -2
  %i.gg = zext i1 %narrow to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 %i.gg, ptr %i.gh, align 4, !tbaa !894
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 124
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !895
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.044197 = phi i1 [ %spec.select, %.lr.ph ], [ %.044197.ph, %.lr.ph.preheader ]
  %.sroa.0191.0196 = phi ptr [ %i.go, %.lr.ph ], [ %.sroa.0191.0196.ph, %.lr.ph.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0191.0196, i64 16
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !76
  %i.gn = icmp eq i8 %i.gm, 3
  %spec.select = select i1 %i.gn, i1 true, i1 %.044197 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0191.0196, i64 24 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.e
  br i1 %i.gp, label %._crit_edge, label %.lr.ph, !llvm.loop !896

bb.c:                                             ; preds = %_ZN5arrow14DataTypeLayoutD2Ev.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !697 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !698
  %.not.i.i = icmp eq ptr %i.gt, %i.gr
  br i1 %.not.i.i, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.c
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !698
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.gu = load ptr, ptr %i.fj, align 8, !tbaa !889
  call fastcc void @_ZN5arrow7compute12_GLOBAL__N_122ComputeDataPreallocateERKNS_8DataTypeEPSt6vectorINS1_19BufferPreallocationESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.gu, ptr noundef %i.gq)
  %.pre = load ptr, ptr %i.gb, align 8, !tbaa !877
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit, %_ZN5arrow14DataTypeLayoutD2Ev.exit
  %i.gv = phi ptr [ %.pre, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit ], [ %i.gc, %_ZN5arrow14DataTypeLayoutD2Ev.exit ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 129
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !897, !range !132, !noundef !133
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %_ZN5arrow6StatusD2Ev.exit, label %bb.m

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val86 = load ptr, ptr %i.ha, align 8, !tbaa !874
  %.val86.val = load ptr, ptr %.val86, align 8, !tbaa !646
  %i.hb = getelementptr inbounds nuw i8, ptr %.val86.val, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !423
  call void @_ZN5arrow7compute6detail16ExecSpanIterator4InitERKNS0_9ExecBatchElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %i.gz, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.hc, i1 noundef zeroext true)
  %i.hd = load ptr, ptr %19, align 8, !tbaa !121  ; 2 uses
  store ptr %i.hd, ptr %0, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %_ZN5arrow6StatusD2Ev.exit90, label %.critedge

_ZN5arrow6StatusD2Ev.exit90:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %20, i8 0, i64 32, i1 false)
  br label %_ZN5arrow6StatusD2Ev.exit96

_ZN5arrow6StatusD2Ev.exit96:                      ; preds = %_ZN5arrow6StatusD2Ev.exit92, %_ZN5arrow6StatusD2Ev.exit90
  %i.hf = invoke noundef zeroext i1 @_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE(ptr noundef nonnull align 8 dereferenceable(112) %i.gz, ptr noundef nonnull %20)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit96
  br i1 %i.hf, label %bb.f, label %.critedge75

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor4ExecERKNS0_8ExecSpanEPNS1_12ExecListenerE(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit92 unwind label %bb.h

_ZN5arrow6StatusD2Ev.exit92:                      ; preds = %bb.f
  %i.hg = load ptr, ptr %21, align 8, !tbaa !121  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN5arrow6StatusD2Ev.exit96, label %.critedge74, !llvm.loop !898

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit96
  %i.hi = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.hj = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.l

.critedge74:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit92
  store ptr %i.hg, ptr %0, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !261 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !280 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hl, %i.hn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge74, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ib, %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i ], [ %i.hl, %.critedge74 ] ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !281 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !282 ; 2 uses
  %.not.i.i12.i.i.i.i.i.i.i.i = icmp eq ptr %i.hp, %i.hr
  br i1 %.not.i.i12.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %.0.i.i3.i.i.i.i.i.i.i.i = phi ptr [ %i.hs, %.noexc.i.i.i.i.i.i.i.i ], [ %i.hp, %.lr.ph.i.i.i.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.i, !inline_history !283

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i = icmp eq ptr %i.hs, %i.hr
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !284

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #30, !inline_history !285
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.ho, align 8, !tbaa !281
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.hv = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.hp, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !286
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.ia) #31, !inline_history !287
  br label %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.ib, %i.hn
  br i1 %.not.i.i.i.i97, label %_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !288

_ZSt8_DestroyIPN5arrow7compute9ExecValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute9ExecValueEEvPT_.exit.i.i.i.i
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!687 = !{!"_ZTSSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEE", !688, i64 0, !37, i64 24}
!688 = !{!"_ZTSSt14_Function_base", !5, i64 0, !37, i64 16}
!689 = !{!"_ZTSN5arrow7compute9SimdLevel4typeE", !5, i64 0}
!690 = !{!"_ZTSSt10shared_ptrIN5arrow7compute11KernelStateEE", !691, i64 0}
!691 = !{!"_ZTSSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EE", !649, i64 0, !48, i64 8}
!692 = !{!"_ZTSN5arrow7compute12NullHandling4typeE", !5, i64 0}
!693 = !{!"_ZTSN5arrow7compute13MemAllocation4typeE", !5, i64 0}
!694 = !{!695, !109, i64 80}
!695 = !{!"_ZTSN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorE", !617, i64 0, !109, i64 80, !109, i64 81, !109, i64 82, !244, i64 88}
!696 = !{!684, !693, i64 88}
!697 = !{!624, !625, i64 0}
!698 = !{!624, !625, i64 8}
!699 = !{!695, !109, i64 81}
!700 = !{!684, !109, i64 80}
!701 = !{!695, !109, i64 82}
!702 = !{!703}
!703 = distinct !{!703, !704, !"_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor12ExecuteSpansEPNS1_12ExecListenerE: argument 0"}
!704 = distinct !{!704, !"_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor12ExecuteSpansEPNS1_12ExecListenerE"}
!705 = !{!706, !708, !703}
!706 = distinct !{!706, !707, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!707 = distinct !{!707, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!708 = distinct !{!708, !709, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!709 = distinct !{!709, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!710 = !{!155, !155, i64 0}
!711 = distinct !{!711, !74}
!712 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!713 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!714 = !{!715, !717, !703}
!715 = distinct !{!715, !716, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!716 = distinct !{!716, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!717 = distinct !{!717, !718, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!718 = distinct !{!718, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!719 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!720 = distinct !{!720, !74}
!721 = !{!722, !703}
!722 = distinct !{!722, !723, !"_ZN5arrow6Status2OKEv: argument 0"}
!723 = distinct !{!723, !"_ZN5arrow6Status2OKEv"}
!724 = !{!725, !5, i64 128}
!725 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9ArraySpanESt10shared_ptrINS2_9ArrayDataEEEEE", !5, i64 0, !5, i64 128}
!726 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!727 = distinct !{null, ptr @_ZN5arrow7compute10ExecResultD2Ev, null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor15ExecuteNonSpansEPNS1_12ExecListenerE: argument 0"}
!730 = distinct !{!730, !"_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor15ExecuteNonSpansEPNS1_12ExecListenerE"}
!731 = !{!732}
!732 = distinct !{!732, !733, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!733 = distinct !{!733, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!734 = !{!735}
!735 = distinct !{!735, !736, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!736 = distinct !{!736, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!737 = !{!735, !732, !729}
!738 = !{!735, !732}
!739 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!740 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!741 = !{!684, !37, i64 72}
!742 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!743 = distinct !{!743, !74}
!744 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!745 = !{!746, !729}
!746 = distinct !{!746, !747, !"_ZN5arrow6Status2OKEv: argument 0"}
!747 = distinct !{!747, !"_ZN5arrow6Status2OKEv"}
!748 = distinct !{null, ptr @_ZN5arrow7compute10ExecResultD2Ev, null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!749 = distinct !{ptr @_ZN5arrow7compute10ExecResultD2Ev, null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!750 = !{!98, !98, i64 0}
!751 = !{!752, !754}
!752 = distinct !{!752, !753, !"_ZN5arrow6Status8FromArgsIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!753 = distinct !{!753, !"_ZN5arrow6Status8FromArgsIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_NS_10StatusCodeEDpOT_"}
!754 = distinct !{!754, !755, !"_ZN5arrow6Status9TypeErrorIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_DpOT_: argument 0"}
!755 = distinct !{!755, !"_ZN5arrow6Status9TypeErrorIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_DpOT_"}
!756 = !{!757}
!757 = distinct !{!757, !758, !"_ZN5arrow6Status2OKEv: argument 0"}
!758 = distinct !{!758, !"_ZN5arrow6Status2OKEv"}
!759 = distinct !{ptr @_ZN5arrow10TypeHolderD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!760 = distinct !{null, null, ptr @_ZN5arrow10TypeHolderD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!761 = !{!762, !764}
!762 = distinct !{!762, !763, !"_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE15MoveValueUnsafeEv: argument 0"}
!763 = distinct !{!763, !"_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE15MoveValueUnsafeEv"}
!764 = distinct !{!764, !765, !"_ZNO5arrow6ResultISt10shared_ptrINS_6ScalarEEE11ValueUnsafeEv: argument 0"}
!765 = distinct !{!765, !"_ZNO5arrow6ResultISt10shared_ptrINS_6ScalarEEE11ValueUnsafeEv"}
!766 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!767 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!768 = !{!624, !625, i64 16}
!769 = !{!770, !4, i64 0}
!770 = !{!"_ZTSN5arrow7compute12_GLOBAL__N_119BufferPreallocationE", !4, i64 0, !4, i64 4}
!771 = !{!770, !4, i64 4}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZSt19__relocate_object_aIN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!774 = distinct !{!774, !"_ZSt19__relocate_object_aIN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_SaIS3_EEvPT_PT0_RT1_"}
!775 = distinct !{!775, !74, !510, !511}
!776 = distinct !{!776, !74, !510}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_ZSt19__relocate_object_aIN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!779 = distinct !{!779, !"_ZSt19__relocate_object_aIN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_SaIS3_EEvPT_PT0_RT1_"}
!780 = distinct !{!780, !74, !510, !511}
!781 = distinct !{!781, !74, !510}
!782 = !{!783}
!783 = distinct !{!783, !784, !"_ZSt19__relocate_object_aIN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!784 = distinct !{!784, !"_ZSt19__relocate_object_aIN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_SaIS3_EEvPT_PT0_RT1_"}
!785 = distinct !{!785, !74, !510, !511}
!786 = distinct !{!786, !74, !510}
!787 = !{!788}
!788 = distinct !{!788, !789, !"_ZNK5arrow10TypeHolder12GetSharedPtrEv: argument 0"}
!789 = distinct !{!789, !"_ZNK5arrow10TypeHolder12GetSharedPtrEv"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"_ZNK5arrow8DataType12GetSharedPtrEv: argument 0"}
!792 = distinct !{!792, !"_ZNK5arrow8DataType12GetSharedPtrEv"}
!793 = !{!794}
!794 = distinct !{!794, !795, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv: argument 0"}
!795 = distinct !{!795, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv"}
!796 = !{!794, !791, !788}
!797 = !{!798}
!798 = distinct !{!798, !799, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERlEES2_IT_EDpOT0_: argument 0"}
!799 = distinct !{!799, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERlEES2_IT_EDpOT0_"}
!800 = !{!217, !28, i64 0}
!801 = !{!802, !804}
!802 = distinct !{!802, !803, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!803 = distinct !{!803, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!804 = distinct !{!804, !805, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!805 = distinct !{!805, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!806 = !{!807, !809}
!807 = distinct !{!807, !808, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!808 = distinct !{!808, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!809 = distinct !{!809, !810, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!810 = distinct !{!810, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!811 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!812 = distinct !{!812, !74}
!813 = !{!814}
!814 = distinct !{!814, !815, !"_ZN5arrow6Status2OKEv: argument 0"}
!815 = distinct !{!815, !"_ZN5arrow6Status2OKEv"}
!816 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!817 = distinct !{null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!818 = !{!819}
!819 = distinct !{!819, !820, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!820 = distinct !{!820, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!821 = !{!822}
!822 = distinct !{!822, !823, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!823 = distinct !{!823, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!824 = distinct !{null, null, null}
!825 = !{!66, !67, i64 16}
!826 = !{!221, !222, i64 8}
!827 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!828 = distinct !{!828, !74}
!829 = !{!221, !222, i64 16}
!830 = !{!831}
!831 = distinct !{!831, !832, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!832 = distinct !{!832, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_"}
!833 = !{!834}
!834 = distinct !{!834, !832, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!835 = distinct !{!835, !74}
!836 = !{!"branch_weights", i32 2000, i32 4002, i32 2, i32 2000}
!837 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!838 = distinct !{null, null, null, null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!839 = !{!840}
!840 = distinct !{!840, !841, !"_ZNK5arrow10TypeHolder12GetSharedPtrEv: argument 0"}
!841 = distinct !{!841, !"_ZNK5arrow10TypeHolder12GetSharedPtrEv"}
!842 = !{!843}
!843 = distinct !{!843, !844, !"_ZNK5arrow8DataType12GetSharedPtrEv: argument 0"}
!844 = distinct !{!844, !"_ZNK5arrow8DataType12GetSharedPtrEv"}
!845 = !{!846}
!846 = distinct !{!846, !847, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv: argument 0"}
!847 = distinct !{!847, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv"}
!848 = !{!846, !843, !840}
!849 = !{!850}
!850 = distinct !{!850, !851, !"_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EES3_INS0_8DataTypeEEEES3_IT_EDpOT0_: argument 0"}
!851 = distinct !{!851, !"_ZSt11make_sharedIN5arrow12ChunkedArrayEJSt6vectorISt10shared_ptrINS0_5ArrayEESaIS5_EES3_INS0_8DataTypeEEEES3_IT_EDpOT0_"}
!852 = !{!137, !137, i64 0}
!853 = !{!854}
!854 = distinct !{!854, !855, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!855 = distinct !{!855, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_"}
!856 = !{!857}
!857 = distinct !{!857, !855, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!858 = distinct !{!858, !74}
!859 = !{!860}
!860 = distinct !{!860, !861, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!861 = distinct !{!861, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_"}
!862 = !{!863}
!863 = distinct !{!863, !861, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow5ArrayEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!864 = !{!185, !185, i64 0}
!865 = !{!866, !868, i64 32}
!866 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !867, i64 24, !868, i64 28, !868, i64 32, !869, i64 40, !870, i64 48, !5, i64 64, !4, i64 192, !871, i64 200, !148, i64 208}
!867 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!868 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!869 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !37, i64 0}
!870 = !{!"_ZTSNSt8ios_base6_WordsE", !37, i64 0, !28, i64 8}
!871 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !37, i64 0}
!872 = !{ptr @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED2Ev}
!873 = distinct !{ptr @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEED2Ev, ptr @_ZN5arrow10TypeHolderD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!874 = !{!875, !324, i64 8}
!875 = !{!"_ZTSN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12VectorKernelEEE", !618, i64 0, !324, i64 8, !876, i64 16, !620, i64 24, !4, i64 48, !109, i64 52, !621, i64 56}
!876 = !{!"p1 _ZTSN5arrow7compute12VectorKernelE", !37, i64 0}
!877 = !{!875, !876, i64 16}
!878 = !{!879, !881}
!879 = distinct !{!879, !880, !"_ZN5arrow6ResultINS_10TypeHolderEE15MoveValueUnsafeEv: argument 0"}
!880 = distinct !{!880, !"_ZN5arrow6ResultINS_10TypeHolderEE15MoveValueUnsafeEv"}
!881 = distinct !{!881, !882, !"_ZNO5arrow6ResultINS_10TypeHolderEE11ValueUnsafeEv: argument 0"}
!882 = distinct !{!882, !"_ZNO5arrow6ResultINS_10TypeHolderEE11ValueUnsafeEv"}
!883 = !{!884}
!884 = distinct !{!884, !885, !"_ZN5arrow6Status2OKEv: argument 0"}
!885 = distinct !{!885, !"_ZN5arrow6Status2OKEv"}
!886 = distinct !{!886, !510, !511}
!887 = !{!"branch_weights", i32 4, i32 28}
!888 = distinct !{!888, !510, !511}
!889 = !{!875, !215, i64 24}
!890 = !{!875, !4, i64 48}
!891 = !{!892, !692, i64 120}
!892 = !{!"_ZTSN5arrow7compute12VectorKernelE", !685, i64 0, !37, i64 72, !37, i64 80, !893, i64 88, !692, i64 120, !693, i64 124, !109, i64 128, !109, i64 129, !109, i64 130}
!893 = !{!"_ZTSSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEE", !688, i64 0, !37, i64 24}
!894 = !{!875, !109, i64 52}
!895 = !{!892, !693, i64 124}
!896 = distinct !{!896, !511, !510}
!897 = !{!892, !109, i64 129}
!898 = distinct !{!898, !74}
!899 = !{!900}
!900 = distinct !{!900, !901, !"_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor11ExecChunkedERKNS0_9ExecBatchEPNS1_12ExecListenerE: argument 0"}
!901 = distinct !{!901, !"_ZN5arrow7compute6detail12_GLOBAL__N_114VectorExecutor11ExecChunkedERKNS0_9ExecBatchEPNS1_12ExecListenerE"}
!902 = !{!892, !37, i64 80}
!903 = !{!904, !900}
!904 = distinct !{!904, !905, !"_ZN5arrow7compute6detail12_GLOBAL__N_112_GLOBAL__N_122CheckCanExecuteChunkedEPKNS0_12VectorKernelE: argument 0"}
!905 = distinct !{!905, !"_ZN5arrow7compute6detail12_GLOBAL__N_112_GLOBAL__N_122CheckCanExecuteChunkedEPKNS0_12VectorKernelE"}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!908 = distinct !{!908, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!909 = !{!910}
!910 = distinct !{!910, !911, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!911 = distinct !{!911, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!912 = !{!910, !907, !900}
!913 = !{!910, !907}
!914 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!915 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!916 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!917 = !{!688, !37, i64 16}
!918 = !{!324, !324, i64 0}
!919 = !{!920}
!920 = distinct !{!920, !921, !"_ZNKSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEclES4_S9_: argument 0"}
!921 = distinct !{!921, !"_ZNKSt8functionIFN5arrow6StatusEPNS0_7compute13KernelContextEPSt6vectorINS0_5DatumESaIS6_EEEEclES4_S9_"}
!922 = !{!245, !245, i64 0}
!923 = !{!893, !37, i64 24}
!924 = distinct !{null}
!925 = !{!926}
!926 = distinct !{!926, !927, !"_ZN5arrow6Status2OKEv: argument 0"}
!927 = distinct !{!927, !"_ZN5arrow6Status2OKEv"}
!928 = !{!892, !109, i64 130}
!929 = !{!930}
!930 = distinct !{!930, !931, !"_ZNK5arrow10TypeHolder12GetSharedPtrEv: argument 0"}
!931 = distinct !{!931, !"_ZNK5arrow10TypeHolder12GetSharedPtrEv"}
!932 = !{!933}
!933 = distinct !{!933, !934, !"_ZNK5arrow8DataType12GetSharedPtrEv: argument 0"}
!934 = distinct !{!934, !"_ZNK5arrow8DataType12GetSharedPtrEv"}
!935 = !{!936}
!936 = distinct !{!936, !937, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv: argument 0"}
!937 = distinct !{!937, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv"}
!938 = !{!936, !933, !930}
!939 = !{!940, !942}
!940 = distinct !{!940, !941, !"_ZN5arrow6Status8FromArgsIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!941 = distinct !{!941, !"_ZN5arrow6Status8FromArgsIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_NS_10StatusCodeEDpOT_"}
!942 = distinct !{!942, !943, !"_ZN5arrow6Status9TypeErrorIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_DpOT_: argument 0"}
!943 = distinct !{!943, !"_ZN5arrow6Status9TypeErrorIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_DpOT_"}
!944 = !{!945}
!945 = distinct !{!945, !946, !"_ZN5arrow6Status2OKEv: argument 0"}
!946 = distinct !{!946, !"_ZN5arrow6Status2OKEv"}
!947 = !{!948}
!948 = distinct !{!948, !949, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!949 = distinct !{!949, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!950 = !{!951}
!951 = distinct !{!951, !952, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!952 = distinct !{!952, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!953 = !{!951, !948}
!954 = !{!892, !37, i64 72}
!955 = distinct !{!955, !74}
!956 = !{!957}
!957 = distinct !{!957, !958, !"_ZNK5arrow10TypeHolder12GetSharedPtrEv: argument 0"}
!958 = distinct !{!958, !"_ZNK5arrow10TypeHolder12GetSharedPtrEv"}
!959 = !{!960}
!960 = distinct !{!960, !961, !"_ZNK5arrow8DataType12GetSharedPtrEv: argument 0"}
!961 = distinct !{!961, !"_ZNK5arrow8DataType12GetSharedPtrEv"}
!962 = !{!963}
!963 = distinct !{!963, !964, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv: argument 0"}
!964 = distinct !{!964, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv"}
!965 = !{!963, !960, !957}
!966 = !{!967}
!967 = distinct !{!967, !968, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERlEES2_IT_EDpOT0_: argument 0"}
!968 = distinct !{!968, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERlEES2_IT_EDpOT0_"}
!969 = !{!970, !972}
!970 = distinct !{!970, !971, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv: argument 0"}
!971 = distinct !{!971, !"_ZN5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE15MoveValueUnsafeEv"}
!972 = distinct !{!972, !973, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv: argument 0"}
!973 = distinct !{!973, !"_ZNO5arrow6ResultISt10shared_ptrINS_15ResizableBufferEEE11ValueUnsafeEv"}
!974 = !{!975, !977}
!975 = distinct !{!975, !976, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!976 = distinct !{!976, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!977 = distinct !{!977, !978, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!978 = distinct !{!978, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!979 = distinct !{!979, !74}
!980 = !{!981}
!981 = distinct !{!981, !982, !"_ZN5arrow6Status2OKEv: argument 0"}
!982 = distinct !{!982, !"_ZN5arrow6Status2OKEv"}
!983 = !{!984}
!984 = distinct !{!984, !985, !"_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!985 = distinct !{!985, !"_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_"}
!986 = !{!987}
!987 = distinct !{!987, !985, !"_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!988 = !{!984, !987}
!989 = !{!990}
!990 = distinct !{!990, !991, !"_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!991 = distinct !{!991, !"_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_"}
!992 = !{!993}
!993 = distinct !{!993, !991, !"_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!994 = !{!990, !993}
!995 = !{!996}
!996 = distinct !{!996, !997, !"_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!997 = distinct !{!997, !"_ZN5arrow8internal12JoinToStringIJRA80_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!998 = !{!999}
!999 = distinct !{!999, !1000, !"_ZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!1000 = distinct !{!1000, !"_ZN5arrow8internal12JoinToStringIJRA81_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!1001 = !{ptr @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED2Ev}
!1002 = distinct !{ptr @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEED2Ev, ptr @_ZN5arrow10TypeHolderD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1003 = !{!1004, !324, i64 8}
!1004 = !{!"_ZTSN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_21ScalarAggregateKernelEEE", !618, i64 0, !324, i64 8, !1005, i64 16, !620, i64 24, !4, i64 48, !109, i64 52, !621, i64 56}
!1005 = !{!"p1 _ZTSN5arrow7compute21ScalarAggregateKernelE", !37, i64 0}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutor7ConsumeERKNS0_8ExecSpanE: argument 0"}
!1008 = distinct !{!1008, !"_ZN5arrow7compute6detail12_GLOBAL__N_117ScalarAggExecutor7ConsumeERKNS0_8ExecSpanE"}
!1009 = !{!1004, !1005, i64 16}
!1010 = !{!1011, !1007}
!1011 = distinct !{!1011, !1012, !"_ZNKSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEclESA_SD_: argument 0"}
!1012 = distinct !{!1012, !"_ZNKSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEclESA_SD_"}
!1013 = !{!687, !37, i64 24}
!1014 = distinct !{null}
!1015 = !{!649, !649, i64 0}
!1016 = !{!1017, !1019, !1007}
!1017 = distinct !{!1017, !1018, !"_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEE15MoveValueUnsafeEv: argument 0"}
!1018 = distinct !{!1018, !"_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEE15MoveValueUnsafeEv"}
!1019 = distinct !{!1019, !1020, !"_ZNO5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEE11ValueUnsafeEv: argument 0"}
!1020 = distinct !{!1020, !"_ZNO5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEE11ValueUnsafeEv"}
!1021 = !{!647, !649, i64 8}
!1022 = !{!1023, !37, i64 72}
!1023 = !{!"_ZTSN5arrow7compute21ScalarAggregateKernelE", !685, i64 0, !37, i64 72, !37, i64 80, !37, i64 88, !109, i64 96}
!1024 = !{!1023, !37, i64 80}
!1025 = !{!1026, !1007}
!1026 = distinct !{!1026, !1027, !"_ZN5arrow6Status2OKEv: argument 0"}
!1027 = distinct !{!1027, !"_ZN5arrow6Status2OKEv"}
!1028 = distinct !{null, null, null}
!1029 = distinct !{null, ptr @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEED2Ev, null, null, null, null}
!1030 = distinct !{!1030, !74}
!1031 = !{!1023, !37, i64 88}
!1032 = !{!1004, !215, i64 24}
!1033 = !{!1034, !1036}
!1034 = distinct !{!1034, !1035, !"_ZN5arrow6Status8FromArgsIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!1035 = distinct !{!1035, !"_ZN5arrow6Status8FromArgsIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_NS_10StatusCodeEDpOT_"}
!1036 = distinct !{!1036, !1037, !"_ZN5arrow6Status9TypeErrorIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_DpOT_: argument 0"}
!1037 = distinct !{!1037, !"_ZN5arrow6Status9TypeErrorIJRA43_KcRPS2_RA16_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S2_SE_EEES0_DpOT_"}
!1038 = !{!1039}
!1039 = distinct !{!1039, !1040, !"_ZN5arrow6Status2OKEv: argument 0"}
!1040 = distinct !{!1040, !"_ZN5arrow6Status2OKEv"}
!1041 = !{!1042, !1044}
!1042 = distinct !{!1042, !1043, !"_ZN5arrow6ResultINS_10TypeHolderEE15MoveValueUnsafeEv: argument 0"}
!1043 = distinct !{!1043, !"_ZN5arrow6ResultINS_10TypeHolderEE15MoveValueUnsafeEv"}
!1044 = distinct !{!1044, !1045, !"_ZNO5arrow6ResultINS_10TypeHolderEE11ValueUnsafeEv: argument 0"}
!1045 = distinct !{!1045, !"_ZNO5arrow6ResultINS_10TypeHolderEE11ValueUnsafeEv"}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZN5arrow6Status2OKEv: argument 0"}
!1048 = distinct !{!1048, !"_ZN5arrow6Status2OKEv"}
!1049 = distinct !{null, null, null, null}
end_hunk_1
