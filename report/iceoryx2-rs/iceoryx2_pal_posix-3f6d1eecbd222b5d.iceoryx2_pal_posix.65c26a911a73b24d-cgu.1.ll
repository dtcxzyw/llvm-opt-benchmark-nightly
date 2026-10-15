Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_pal_posix-3f6d1eecbd222b5d.iceoryx2_pal_posix.65c26a911a73b24d-cgu.1?download=true
inline.NumInlined: 206
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6signal4kill:bb.a

; Function Attrs: cold nofree noreturn nounwind nonlazybind uwtable
define void @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6signal5abort() unnamed_addr #6 {
bb.a:
  tail call void @abort() #34
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6signal9sigaction(i32 noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noalias nofree noundef align 8 dereferenceable(152) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @sigaction(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6signal9sigaddset(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @sigaddset(ptr noundef %0, i32 noundef %1) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6signal9sigdelset(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @sigdelset(ptr noundef %0, i32 noundef %1) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket10getsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @getsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket10setsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @setsockopt(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket10socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket11getsockname(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @getsockname(i32 noundef %0, ptr noundef %1, ptr noundef %2) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket4bind(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @bind(i32 noundef %0, ptr noundef %1, i32 noundef %2) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket4recv(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @recv(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #33
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket4send(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @send(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #33
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket6sendto(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @sendto(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #33
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket6socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @socket(i32 noundef %0, i32 noundef %1, i32 noundef %2) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket7connect(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @connect(i32 noundef %0, ptr noundef %1, i32 noundef %2) #33
  ret i32 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket7recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) #33
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket7sendmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @sendmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) #33
  ret i64 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i64 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6socket8recvfrom(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @recvfrom(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #33
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib4free(ptr noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  tail call void @free(ptr noundef %0) #33
  ret void
}

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib6calloc(i64 noundef %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef ptr @calloc(i64 noundef %0, i64 noundef %1) #33
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind nonlazybind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib6malloc(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef ptr @malloc(i64 noundef %0) #33
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6stdlib7realloc(ptr noundef captures(none) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = tail call noundef ptr @realloc(ptr noundef %0, i64 noundef %1) #33
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6string6memcpy(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %0, ptr noundef align 1 %1, i64 noundef %2, i1 false) #33
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6string6memset(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, i32 noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = trunc i32 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 %0, i8 noundef %i.a, i64 noundef %2, i1 false) #33
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6string7strncpy(ptr noundef returned %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = tail call noundef ptr @strncpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) #33 ; 0 uses
  ret ptr %0
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef i32 @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [104 x i8], align 8               ; 14 uses
  %i.d = alloca [64 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [1024 x i8], align 1              ; 6 uses
  %i.g = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef nonnull @7, i32 noundef 0) #33 ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  %i.i = call noundef i64 @read(i32 noundef %i.g, ptr noundef nonnull %i.f, i64 noundef 1023) #33
  %i.j = tail call noundef i32 @close(i32 noundef %i.g) #33 ; 0 uses
  %i.k = icmp slt i64 %i.i, 0
  br i1 %i.k, label %bb.j, label %.lr.ph.split.preheader.i

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @getpid() #33
  br label %bb.ag

.lr.ph.split.preheader.i:                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtCsbqH9stoieM8_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1024) #33
  %i.m = load i64, ptr %i.e, align 8, !range !151, !noundef !8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 10 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.backedge, %.lr.ph.split.preheader.i
  %i.r = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %0, %.lr.ph.split.i.backedge ] ; 3 uses
  %.lcssa2021.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %.lcssa19.i, %.lr.ph.split.i.backedge ] ; 5 uses
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i, %bb.f
  %i.t = phi i64 [ %i.ah, %bb.f ], [ %i.r, %.lr.ph.split.i ] ; 6 uses
  %i.u = sub nuw i64 %i.q, %i.t                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i.i.i.i.i, label %bb.d

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.q, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.x = call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u) #33, !noalias !152 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %.loopexit.i.i.i.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.e
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !153, !noalias !152, !noundef !8
  %i.ad = icmp eq i8 %i.ac, 10
  br i1 %i.ad, label %.loopexit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ae = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.z, %bb.d ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %i.af = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.u
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %i.t, 1
  %i.ah = add i64 %i.ag, %.sroa.5.0.i.i.i.i.i.i.i ; 6 uses
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.ah, %i.q
  %i.ai = add i64 %i.t, %.sroa.5.0.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.not = icmp ult i64 %i.ai, %i.q
  br i1 %or.cond.i.i.i.i.i.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %.loopexit.i.i.i.i.i.i
  br i1 %.not12.i.i.i.i.i.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.t
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.sroa.5.0.i.i.i.i.i.i.i
  %lhsc = load i8, ptr %i.ak, align 1
  %i.al = icmp eq i8 %lhsc, 10
  br i1 %i.al, label %select.unfold.i.i.i, label %bb.f

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i: ; preds = %bb.f, %.preheader.i.i.i.i.i.i.i, %bb.d, %bb.e, %.lr.ph.split.i
  %i.am = phi i64 [ %i.r, %.lr.ph.split.i ], [ %i.q, %bb.e ], [ %i.q, %bb.d ], [ %i.q, %.preheader.i.i.i.i.i.i.i ], [ %i.ah, %bb.f ]
  %.not.i3.i.i.i.i.i.not = icmp eq i64 %i.q, %.lcssa2021.i
  br i1 %.not.i3.i.i.i.i.i.not, label %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread, label %select.unfold.i.i.i

select.unfold.i.i.i:                              ; preds = %bb.g, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i
  %0 = phi i64 [ %i.am, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i ], [ %i.ah, %bb.g ]
  %.lcssa19.i = phi i64 [ %.lcssa2021.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i ], [ %i.ah, %bb.g ]
  %1 = phi i1 [ true, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i ], [ false, %bb.g ] ; 2 uses
  %.pn.i = phi i64 [ %i.q, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i ], [ %i.ah, %bb.g ] ; 3 uses
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i, %.lcssa2021.i ; 3 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.lcssa2021.i ; 3 uses
  %i.an = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i.i.i.i, 0
  %i.ao = insertvalue { ptr, i64 } %i.an, i64 %.sroa.4.1.i.i.i.i.i, 1 ; 3 uses
  %.not.i.i.i.i4.i.i.i = icmp eq i64 %.pn.i, %.lcssa2021.i
  br i1 %.not.i.i.i.i4.i.i.i, label %_RNvXss_NtNtCs8Chj7Szqq0n_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i.i

_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i.i: ; preds = %select.unfold.i.i.i
  %i.ap = getelementptr i8, ptr %i.o, i64 %.pn.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %rhsc.i.i.i.i.i.i.i = load i8, ptr %i.aq, align 1, !alias.scope !154, !noalias !155
  %rhsc.i.i.fr.i.i.i.i.i = freeze i8 %rhsc.i.i.i.i.i.i.i
  %i.ar = icmp eq i8 %rhsc.i.i.fr.i.i.i.i.i, 10
  %i.as = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 3 uses
  br i1 %i.ar, label %bb.h, label %_RNvXss_NtNtCs8Chj7Szqq0n_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

bb.h:                                             ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i.i
  %i.at = insertvalue { ptr, i64 } %i.ao, i64 %i.as, 1
  %.not.i.i15.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i15.i.i.i.i.i, label %_RNvXst_NtNtCs8Chj7Szqq0n_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i, label %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i16.i.i.i.i.i

_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i16.i.i.i.i.i: ; preds = %bb.h
  %i.au = getelementptr i8, ptr %.sroa.0.1.i.i.i.i.i, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %rhsc.i.i18.i.i.i.i.i = load i8, ptr %i.av, align 1, !alias.scope !156, !noalias !157
  %rhsc.i.i18.fr.i.i.i.i.i = freeze i8 %rhsc.i.i18.i.i.i.i.i
  %i.aw = icmp eq i8 %rhsc.i.i18.fr.i.i.i.i.i, 13
  %i.ax = add i64 %.sroa.4.1.i.i.i.i.i, -2
  %spec.select.i20.i.i.i.i.i = select i1 %i.aw, ptr %.sroa.0.1.i.i.i.i.i, ptr null
  br label %_RNvXst_NtNtCs8Chj7Szqq0n_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i

_RNvXst_NtNtCs8Chj7Szqq0n_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i: ; preds = %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i16.i.i.i.i.i, %bb.h
  %i.ay = phi i64 [ %i.ax, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i16.i.i.i.i.i ], [ -1, %bb.h ]
  %i.az = phi ptr [ %spec.select.i20.i.i.i.i.i, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i16.i.i.i.i.i ], [ null, %bb.h ] ; 2 uses
  %i.ba = insertvalue { ptr, i64 } poison, ptr %i.az, 0
  %i.bb = insertvalue { ptr, i64 } %i.ba, i64 %i.ay, 1
  %.not14.i.i.i.i.i = icmp eq ptr %i.az, null
  %..i.i.i.i.i = select i1 %.not14.i.i.i.i.i, { ptr, i64 } %i.at, { ptr, i64 } %i.bb
  br label %_RNvXss_NtNtCs8Chj7Szqq0n_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i

_RNvXss_NtNtCs8Chj7Szqq0n_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i: ; preds = %_RNvXst_NtNtCs8Chj7Szqq0n_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i.i, %select.unfold.i.i.i
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %..i.i.i.i.i, %_RNvXst_NtNtCs8Chj7Szqq0n_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i.i.i.i.i ], [ %i.ao, %_RNvMNtCs8Chj7Szqq0n_4core5sliceSh9ends_withCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit.i.i.i.i.i.i ], [ %i.ao, %select.unfold.i.i.i ] ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0 ; 6 uses
  %i.bd = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1 ; 10 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_RNvXss_NtNtCs8Chj7Szqq0n_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i
  %i.be = icmp samesign ugt i64 %i.bd, 5
  br i1 %i.be, label %_RNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0B9_.exit.i.i, label %_RNCINvNvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0B1o_.exit.i

_RNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0B9_.exit.i.i: ; preds = %bb.i
  %i.bf = load i32, ptr %i.bc, align 1
  %i.bg = xor i32 1768969038, %i.bf
  %i.bh = getelementptr i8, ptr %i.bc, i64 4
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = zext i16 %i.bi to i32
  %i.bk = xor i32 14948, %i.bj
  %i.bl = or i32 %i.bg, %i.bk
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %bcmp.i.i.i.fr.i.i = freeze i32 %i.bn
  %i.bo = icmp eq i32 %bcmp.i.i.i.fr.i.i, 0       ; 3 uses
  %brmerge.i = or i1 %1, %i.bo
  br i1 %brmerge.i, label %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit, label %.lr.ph.split.i.backedge

.lr.ph.split.i.backedge:                          ; preds = %_RNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0B9_.exit.i.i, %_RNCINvNvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0B1o_.exit.i
  br label %.lr.ph.split.i

_RNCINvNvNtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0B1o_.exit.i: ; preds = %bb.i
  br i1 %1, label %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread, label %.lr.ph.split.i.backedge

_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit: ; preds = %_RNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0B9_.exit.i.i
  %.mux.i = select i1 %i.bo, i64 %i.bd, i64 undef ; 5 uses
  br i1 %i.bo, label %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread81, label %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.bp = tail call noundef i32 @getpid() #33
  br label %bb.ac

_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread81: ; preds = %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !158
  call void @_RNvMsu_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 6) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.bq = load i64, ptr %i.c, align 8, !range !160, !alias.scope !161, !noalias !162, !noundef !8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !159, !noalias !163 ; 21 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bw = load ptr, ptr %i.bu, align 8, !alias.scope !159, !noalias !163, !nonnull !8 ; 12 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !159, !noalias !163, !nonnull !8 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !159, !noalias !163 ; 11 uses
  %i.cb = add nsw i64 %i.ca, -1                   ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !159, !noalias !163 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.br, align 8, !alias.scope !159, !noalias !163 ; 2 uses
  %.promoted98.i.i = load i64, ptr %i.bv, align 8, !alias.scope !159, !noalias !163
  %.promoted99.i.i = load i64, ptr %i.cc, align 8, !alias.scope !159, !noalias !163 ; 30 uses
  switch i64 %i.bq, label %default.unreachable [
    i64 0, label %.split.us.i.i
    i64 1, label %.split.us115.i.i
    i64 2, label %.split.us125.i.i
  ]

.split.us.i.i:                                    ; preds = %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread81
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.ch = load i8, ptr %i.cg, align 2, !range !12, !alias.scope !159, !noalias !163
  %i.ci = trunc nuw i8 %i.ch to i1
  %.promoted156.i.i = load i8, ptr %i.cf, align 8, !alias.scope !159, !noalias !163 ; 4 uses
  br i1 %i.ci, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split.us.i.i
  %i.cj = icmp eq i64 %.promoted99.i.i, 0         ; 3 uses
  %.not.i.i.us.i.i = icmp ult i64 %.promoted99.i.i, %i.bt ; 3 uses
  %i.ck = icmp eq i64 %.promoted99.i.i, %i.bt
  %.fr.i.i = freeze i1 %i.ck
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.promoted99.i.i ; 3 uses
  %i.cm = add i64 %.promoted99.i.i, 1
  %i.cn = icmp samesign ne i64 %i.cm, %i.bt       ; 2 uses
  %i.co = add i64 %.promoted99.i.i, 2
  %i.cp = icmp samesign ne i64 %i.co, %i.bt       ; 2 uses
  %i.cq = add nuw nsw i64 %.promoted99.i.i, 3
  %i.cr = icmp samesign ne i64 %i.cq, %i.bt       ; 2 uses
  br i1 %.fr.i.i, label %.lr.ph.split.us.split.i.i, label %.lr.ph.split.split.i.preheader.i

.lr.ph.split.split.i.preheader.i:                 ; preds = %.lr.ph.i.i
  %i.cs = trunc nuw i8 %.promoted156.i.i to i1
  br i1 %i.cj, label %thread-pre-split.i.peel.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split.i.preheader.i
  br i1 %.not.i.i.us.i.i, label %bb.l, label %.split105.us.i.i

bb.l:                                             ; preds = %bb.k
  %i.ct = load i8, ptr %i.cl, align 1, !noalias !164, !noundef !8 ; 2 uses
  %i.cu = icmp sgt i8 %i.ct, -65
  br i1 %i.cu, label %bb.m, label %.split105.us.i.i

thread-pre-split.i.peel.i:                        ; preds = %.lr.ph.split.split.i.preheader.i
  %.pr.i.peel.i = load i8, ptr %i.cl, align 1, !noalias !165
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split.i.peel.i, %bb.l
  %.pr.i.i = phi i8 [ %.pr.i.peel.i, %thread-pre-split.i.peel.i ], [ %i.ct, %bb.l ] ; 6 uses
  %i.cv = icmp sgt i8 %.pr.i.i, -1                ; 2 uses
  br i1 %i.cv, label %bb.n, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.peel.i

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.peel.i: ; preds = %bb.m
  call void @llvm.assume(i1 %i.cn)
  %i.cw = icmp samesign ugt i8 %.pr.i.i, -33
  br i1 %i.cw, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.peel.i, label %bb.n

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.peel.i
  call void @llvm.assume(i1 %i.cp)
  %i.cx = icmp samesign ugt i8 %.pr.i.i, -17
  br i1 %i.cx, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit16.i.i.us.i.peel.i, label %bb.n

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit16.i.i.us.i.peel.i: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.peel.i
  call void @llvm.assume(i1 %i.cr)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit16.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.peel.i, %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.peel.i
  br i1 %i.cs, label %.lr.ph.split.split.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i.i
  br i1 %i.cj, label %.lr.ph.split.us.split.split.us.i.i, label %.lr.ph.split.us.split.split.i.i

.lr.ph.split.us.split.split.us.i.i:               ; preds = %.lr.ph.split.us.split.i.i
  %i.cy = trunc nuw i8 %.promoted156.i.i to i1
  br i1 %i.cy, label %.split114.us.i.sink.split.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph.split.us.split.split.i.i:                  ; preds = %.lr.ph.split.us.split.i.i
  br i1 %.not.i.i.us.i.i, label %.lr.ph.split.us.split.split.split.us.i.i, label %.lr.ph201.split.us.i.i

.lr.ph.split.us.split.split.split.us.i.i:         ; preds = %.lr.ph.split.us.split.split.i.i
  %i.cz = load i8, ptr %i.cl, align 1, !alias.scope !166, !noalias !167, !noundef !8
  %i.da = icmp sgt i8 %i.cz, -65
  br i1 %i.da, label %.lr.ph206.split.us.i.i, label %.split105.us.i.i

.lr.ph206.split.us.i.i:                           ; preds = %.lr.ph.split.us.split.split.split.us.i.i
  %i.db = trunc nuw i8 %.promoted156.i.i to i1
  br i1 %i.db, label %.split114.us.i.sink.split.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph201.split.us.i.i:                           ; preds = %.lr.ph.split.us.split.split.i.i
  %i.dc = trunc nuw i8 %.promoted156.i.i to i1
  br i1 %i.dc, label %.split114.us.i.sink.split.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph.split.split.i.i:                           ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.dd = icmp sgt i8 %.pr.i.i, -65
  %or.cond.i = and i1 %.not.i.i.us.i.i, %i.dd
  %or.cond217.i = select i1 %i.cj, i1 true, i1 %or.cond.i
  br i1 %or.cond217.i, label %thread-pre-split.i.i, label %.split105.us.i.i

thread-pre-split.i.i:                             ; preds = %.lr.ph.split.split.i.i
  br i1 %i.cv, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.i

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.i: ; preds = %thread-pre-split.i.i
  call void @llvm.assume(i1 %i.cn)
  %i.de = icmp samesign ugt i8 %.pr.i.i, -33
  br i1 %i.de, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit12.i.i.us.i.i
  call void @llvm.assume(i1 %i.cp)
  %i.df = icmp samesign ugt i8 %.pr.i.i, -17
  br i1 %i.df, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit16.i.i.us.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit16.i.i.us.i.i: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8JF6YcdXpCX_18iceoryx2_pal_posix.exit14.i.i.us.i.i
  call void @llvm.assume(i1 %i.cr)
  br label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.split105.us.i.i:                                 ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.us.split.split.split.us.i.i, %bb.l, %bb.k
  call void @_RNvNtCs8Chj7Szqq0n_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bt, i64 noundef %.promoted99.i.i, i64 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #36, !noalias !167
  unreachable

.split114.us.i.sink.split.i:                      ; preds = %.lr.ph201.split.us.i.i, %.lr.ph206.split.us.i.i, %.lr.ph.split.us.split.split.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  br label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.split.us115.i.i:                                 ; preds = %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread81
  %.not41.i.us216.i.i = icmp ult i64 %.promoted99.i.i, %i.bt
  br i1 %.not41.i.us216.i.i, label %.lr.ph217.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph217.i.i:                                    ; preds = %.split.us115.i.i
  %i.dg = load i8, ptr %i.cf, align 8, !alias.scope !161, !noalias !162, !noundef !8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.promoted99.i.i
  %i.di = load i8, ptr %i.dh, align 1, !noalias !169, !noundef !8
  %i.dj = icmp eq i8 %i.di, %i.dg
  br i1 %i.dj, label %.lr.ph.i56.preheader, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph.i56.preheader:                             ; preds = %.lr.ph217.i.i
  %i.dk = add i64 %.promoted99.i.i, 1             ; 2 uses
  %exitcond.not.i.i312 = icmp eq i64 %i.dk, %i.bt
  br i1 %exitcond.not.i.i312, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph.i56.preheader, %.lr.ph.i56
  %i.dl = phi i64 [ %i.dp, %.lr.ph.i56 ], [ %i.dk, %.lr.ph.i56.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !170, !noundef !8
  %i.do = icmp eq i8 %i.dn, %i.dg
  br i1 %i.do, label %.lr.ph.i56, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit

.lr.ph.i56:                                       ; preds = %.lr.ph313
  %i.dp = add i64 %i.dl, 1                        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dp, %i.bt
  br i1 %exitcond.not.i.i, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, label %.lr.ph313

.split.us125.i.i:                                 ; preds = %_RINvYNtNtNtCs8Chj7Szqq0n_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_4find5checkReNCNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6unistd10gethostpid0E0INtNtNtB9_3ops12control_flow11ControlFlowB1R_EEB23_.exit.thread81
  %i.dq = icmp eq i64 %.promoted.i.i, %i.bt
  br i1 %i.dq, label %_RINvMNtCs8Chj7Szqq0n_4core3stre18trim_start_matchesReECs8JF6YcdXpCX_18iceoryx2_pal_posix.exit, label %.lr.ph219.i.i

.lr.ph219.i.i:                                    ; preds = %.split.us125.i.i
  %i.dr = load i64, ptr %i.cf, align 8, !alias.scope !159, !noalias !163 ; 2 uses
  %i.ds = sub i64 %i.ca, %i.dr
  %umax.i.us.i.us.i.i = call i64 @llvm.umax.i64(i64 %.promoted99.i.i, i64 range(i64 0, -9223372036854775808) %i.ca) ; 2 uses
  %i.dt = add i64 %.promoted99.i.i, -1            ; 2 uses
  %.first_iter.i.us.i.i = icmp ult i64 %i.dt, %i.ca
  %.first_iter.i.fr.us.i.i = freeze i1 %.first_iter.i.us.i.i
  %.not73.i.us128.i.i = icmp eq i64 %.promoted99.i.i, 0
  %invariant.op = sub i64 1, %.promoted99.i.i
  %exitcond.not.i.us.i.us.i.i303.not = icmp ult i64 %.promoted99.i.i, %i.ca
  %exitcond.not.i.us.i.us.i.us.i306.not = icmp ult i64 %.promoted99.i.i, %i.ca
  %.not73.i.us.us.i.us.i309 = icmp eq i64 %.promoted99.i.i, 0
  br label %bb.o

end_hunk_0
