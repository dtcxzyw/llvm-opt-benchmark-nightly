Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugSubsectionRecord?download=true
inline.NumInlined: 123
inline.NumDeleted: 68
begin_hunk_0_@_ZNK4llvm8codeview28DebugSubsectionRecordBuilder25calculateSerializedLengthEv:bb.a
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.9.16.copyload = load i8, ptr %.sroa.9.16..sroa_idx, align 8
  %i.n = trunc nuw i8 %.sroa.9.16.copyload to i1
  br i1 %i.n, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit
  %.not.i = icmp eq ptr %.sroa.5.16.copyload, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %.sroa.5.16.copyload, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5.16.copyload) #10, !inline_history !52
  %i.s = sub i64 %i.r, %.sroa.7.16.copyload
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit, %bb.f, %bb.g
  %.0.i = phi i64 [ 0, %bb.f ], [ %i.s, %bb.g ], [ %.sroa.8.16.copyload, %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit ]
  %i.t = trunc i64 %.0.i to i32                   ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !32
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #10, !inline_history !35
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #10, !inline_history !35
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %.critedge, !prof !36

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #10
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %bb.h, %.thread
  %i.aj = phi i32 [ %i.e, %.thread ], [ %i.t, %bb.h ], [ %i.t, %bb.j ], [ %i.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.t, %bb.n ] ; 2 uses
  %i.ak = icmp ne i32 %i.aj, 0                    ; 2 uses
  %.neg = sext i1 %i.ak to i32
  %i.al = add i32 %i.aj, %.neg
  %i.am = select i1 %i.ak, i32 4, i32 0
  %i.an = add i32 %i.al, %i.am
  %i.ao = and i32 %i.an, -4
  %i.ap = add i32 %i.ao, 8
  ret i32 %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm8codeview28DebugSubsectionRecordBuilder6commitERNS_18BinaryStreamWriterENS0_17CodeViewContainerE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::codeview::DebugSubsectionHeader", align 4 ; 6 uses
  %5 = alloca %"class.llvm::BinaryStreamRef", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = load ptr, ptr %1, align 8, !tbaa !54     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.thread47

.thread47:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60
  store i32 %i.c, ptr %4, align 4
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #10
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  store i32 %i.i, ptr %4, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26, !noalias !62 ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !62
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !29, !noalias !62
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !29, !noalias !62
  br label %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4, !noalias !62 ; 0 uses
  br label %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit

_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.16.copyload = load ptr, ptr %i.q, align 8 ; 3 uses
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7.16.copyload = load i64, ptr %.sroa.7.16..sroa_idx, align 8
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.8.16.copyload = load i64, ptr %.sroa.8.16..sroa_idx, align 8
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.9.16.copyload = load i8, ptr %.sroa.9.16..sroa_idx, align 8
  %i.r = trunc nuw i8 %.sroa.9.16.copyload to i1
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit
  %.not.i = icmp eq ptr %.sroa.5.16.copyload, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %.sroa.5.16.copyload, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i64 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.5.16.copyload) #10, !inline_history !52
  %i.w = sub i64 %i.v, %.sroa.7.16.copyload
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit, %bb.f, %bb.g
  %.0.i = phi i64 [ 0, %bb.f ], [ %i.w, %bb.g ], [ %.sroa.8.16.copyload, %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit ]
  %i.x = trunc i64 %.0.i to i32                   ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.y, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !32
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #10, !inline_history !35
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #10, !inline_history !35
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.l ], [ %i.al, %bb.m ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.am, label %bb.n, label %.critedge, !prof !36

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #10
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %bb.h, %.thread47
  %i.an = phi i32 [ %i.g, %.thread47 ], [ %i.x, %bb.h ], [ %i.x, %bb.j ], [ %i.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.x, %bb.n ] ; 2 uses
  %i.ao = icmp eq i32 %3, 0                       ; 2 uses
  %i.ap = icmp ne i32 %i.an, 0
  %i.aq = zext i1 %i.ap to i32                    ; 2 uses
  %i.ar = sub i32 %i.an, %i.aq                    ; 2 uses
  %6 = lshr i32 %i.ar, 2
  %i.as = select i1 %i.ao, i32 %i.ar, i32 %6
  %7 = add i32 %i.as, %i.aq
  %8 = select i1 %i.ao, i32 0, i32 2
  %i.at = shl i32 %7, %8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.at, ptr %i.au, align 4
  call void @_ZN4llvm18BinaryStreamWriter10writeBytesENS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nonnull align 1 dereferenceable(8) %4, i64 8) #10
  %i.av = load ptr, ptr %0, align 8, !tbaa !40
  %.not49 = icmp eq ptr %i.av, null
  br i1 %.not49, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge26

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.critedge
  %i.aw = load ptr, ptr %1, align 8, !tbaa !54    ; 3 uses
  %.not50 = icmp eq ptr %i.aw, null
  br i1 %.not50, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %2) #10
  %i.ba = load ptr, ptr %0, align 8, !tbaa !40
  %.not52 = icmp eq ptr %i.ba, null
  br i1 %.not52, label %_ZN4llvm5ErrorD2Ev.exit33, label %.critedge26

bb.p:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26, !noalias !65 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !27, !noalias !65
  store <2 x ptr> %i.bf, ptr %5, align 16, !tbaa !27, !alias.scope !65
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i34, label %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit36, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !65
  %.not.i.i.i.i.i.i.i35 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !29, !noalias !65
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !29, !noalias !65
  br label %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit36

bb.s:                                             ; preds = %bb.q
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4, !noalias !65 ; 0 uses
  br label %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit36

_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit36: ; preds = %bb.p, %bb.r, %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  call void @_ZN4llvm18BinaryStreamWriter14writeStreamRefENS_15BinaryStreamRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 8 dereferenceable(48) %5) #10
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i37 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i37, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit41, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bo, align 8, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !32
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #10, !inline_history !35
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #10, !inline_history !35
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit41

bb.v:                                             ; preds = %bb.t
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i38 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

bb.x:                                             ; preds = %bb.v
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i40 = phi i32 [ %i.br, %bb.w ], [ %i.cb, %bb.x ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i40, 1
  br i1 %i.cc, label %bb.y, label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit41, !prof !36

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #10
  br label %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit41

_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit41: ; preds = %_ZNK4llvm8codeview21DebugSubsectionRecord13getRecordDataEv.exit36, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39, %bb.y
  %i.cd = load ptr, ptr %0, align 8, !tbaa !40
  %.not51 = icmp eq ptr %i.cd, null
  br i1 %.not51, label %_ZN4llvm5ErrorD2Ev.exit33, label %.critedge26

_ZN4llvm5ErrorD2Ev.exit33:                        ; preds = %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit41, %bb.o
  call void @_ZN4llvm18BinaryStreamWriter14padToAlignmentEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 4) #10
  br label %.critedge26

.critedge26:                                      ; preds = %_ZN4llvm5ErrorD2Ev.exit33, %_ZN4llvm19BinaryStreamRefBaseINS_15BinaryStreamRefENS_12BinaryStreamEED2Ev.exit41, %bb.o, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

declare void @_ZN4llvm18BinaryStreamWriter14writeStreamRefENS_15BinaryStreamRefE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr nofree noundef align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN4llvm18BinaryStreamWriter14padToAlignmentEj(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !29   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #10, !inline_history !68
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18BinaryStreamReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18BinaryStreamReaderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10, !inline_history !46
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #10, !inline_history !46
  br label %_ZN4llvm18BinaryStreamReaderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
end_hunk_0
