Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !183
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #23
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull %4, i64 noundef %i.g) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.1 = phi i1 [ %.not, %bb.d ], [ false, %bb.a ]
  ret i1 %.1
}

declare i32 @getnameinfo(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail21get_local_ip_and_portEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"struct.std::array", align 1       ; 6 uses
  %4 = alloca %struct.sockaddr_storage, align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 128, ptr %i.a, align 4, !tbaa !274
  %i.b = call i32 @getsockname(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #23
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %4, align 8, !tbaa !378
  switch i16 %i.c, label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit [
    i16 2, label %bb.c
    i16 10, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = load i32, ptr %i.a, align 4, !tbaa !274
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !379
  %rev.i10.i = call noundef i16 @llvm.bswap.i16(i16 %i.f)
  %storemerge.i = zext i16 %rev.i10.i to i32
  store i32 %storemerge.i, ptr %2, align 4, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1025) %3, i8 0, i64 1025, i1 false)
  %i.g = call i32 @getnameinfo(ptr noundef nonnull align 8 dereferenceable(128) %4, i32 noundef %i.d, ptr noundef nonnull %3, i32 noundef 1025, ptr noundef null, i32 noundef 0, i32 noundef 1)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !183
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %i.k = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.i, ptr noundef nonnull %3, i64 noundef %i.j) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit: ; preds = %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail22get_remote_ip_and_portEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %"struct.std::array", align 1       ; 6 uses
  %4 = alloca %struct.sockaddr_storage, align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.ucred, align 4              ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 128, ptr %i.a, align 4, !tbaa !274
  %i.c = call i32 @getpeername(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #23
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %4, align 8, !tbaa !378
  switch i16 %i.d, label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit [
    i16 1, label %bb.c
    i16 2, label %bb.f
    i16 10, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 12, ptr %i.b, align 4, !tbaa !274
  %i.e = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 17, ptr noundef nonnull %5, ptr noundef nonnull %i.b) #23
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %5, align 4, !tbaa !1403
  store i32 %i.g, ptr %2, align 4, !tbaa !274
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !274
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !379
  %rev.i10.i = call noundef i16 @llvm.bswap.i16(i16 %i.j)
  %storemerge.i = zext i16 %rev.i10.i to i32
  store i32 %storemerge.i, ptr %2, align 4, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1025) %3, i8 0, i64 1025, i1 false)
  %i.k = call i32 @getnameinfo(ptr noundef nonnull align 8 dereferenceable(128) %4, i32 noundef %i.h, ptr noundef nonnull %3, i32 noundef 1025, ptr noundef null, i32 noundef 0, i32 noundef 1)
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !183
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %i.o = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %3, i64 noundef %i.n) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit

_ZN7httplib6detail15get_ip_and_portERK16sockaddr_storagejRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERi.exit: ; preds = %bb.b, %bb.h, %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind
declare i32 @getpeername(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 67108864) i32 @_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !183  ; 4 uses
  %.not8 = icmp samesign eq i64 %i.c, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.010.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.05.09.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.010.epil = phi i32 [ %i.i, %.lr.ph.epil ], [ %.010.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.05.09.epil = phi ptr [ %i.j, %.lr.ph.epil ], [ %.sroa.05.09.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.e = load i8, ptr %.sroa.05.09.epil, align 1, !tbaa !184
  %i.f = mul i32 %.010.epil, 33
  %i.g = and i32 %i.f, 67108863
  %i.h = zext i8 %i.e to i32
  %i.i = xor i32 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.09.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1404

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.010 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ad, %.lr.ph ]
  %.sroa.05.09 = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.k = load i8, ptr %.sroa.05.09, align 1, !tbaa !184
  %i.l = mul i32 %.010, 33
  %i.m = zext i8 %i.k to i32
  %i.n = xor i32 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !184
  %i.q = mul nuw i32 %i.n, 33
  %i.r = zext i8 %i.p to i32
  %i.s = xor i32 %i.q, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !184
  %i.v = mul nuw i32 %i.s, 33
  %i.w = zext i8 %i.u to i32
  %i.x = xor i32 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !184
  %i.aa = mul nuw i32 %i.x, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail17find_content_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEES8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::allocator", align 1   ; 4 uses
  %16 = alloca %"class.std::allocator", align 1   ; 4 uses
  %17 = alloca %"class.std::allocator", align 1   ; 4 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %"class.std::allocator", align 1   ; 4 uses
  %20 = alloca %"class.std::allocator", align 1   ; 4 uses
  %21 = alloca %"class.std::allocator", align 1   ; 4 uses
  %22 = alloca %"class.std::allocator", align 1   ; 4 uses
  %23 = alloca %"class.std::allocator", align 1   ; 4 uses
  %24 = alloca %"class.std::allocator", align 1   ; 4 uses
  %25 = alloca %"class.std::allocator", align 1   ; 4 uses
  %26 = alloca %"class.std::allocator", align 1   ; 4 uses
  %27 = alloca %"class.std::allocator", align 1   ; 4 uses
  %28 = alloca %"class.std::allocator", align 1   ; 4 uses
  %29 = alloca %"class.std::allocator", align 1   ; 4 uses
  %30 = alloca %"class.std::allocator", align 1   ; 4 uses
  %31 = alloca %"class.std::allocator", align 1   ; 4 uses
  %32 = alloca %"class.std::allocator", align 1   ; 4 uses
  %33 = alloca %"class.std::allocator", align 1   ; 4 uses
  %34 = alloca %"class.std::allocator", align 1   ; 4 uses
  %35 = alloca %"class.std::allocator", align 1   ; 4 uses
  %36 = alloca %"class.std::allocator", align 1   ; 4 uses
  %37 = alloca %"class.std::allocator", align 1   ; 4 uses
  %38 = alloca %"class.std::allocator", align 1   ; 4 uses
  %39 = alloca %"class.std::allocator", align 1   ; 4 uses
  %40 = alloca %"class.std::allocator", align 1   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN7httplib6detail14file_extensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !238  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  %.pre = load ptr, ptr %4, align 8               ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre33 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !183 ; 8 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.d, %bb.a ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !183  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.pre33, i64 %i.g) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !196
  %i.k = call i32 @memcmp(ptr noundef %i.j, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.l = sub i64 %i.g, %.pre33
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.m, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !267 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !28

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.n, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !183  ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %.pre33) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !196
  %i.t = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.s, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.b
  %i.u = sub i64 %.pre33, %i.p
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !182
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !196  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !183 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !197
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !196
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !197
  store i64 %i.ad, ptr %i.x, align 8, !tbaa !184
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.ae = phi ptr [ %i.ac, %.noexc ], [ %i.x, %bb.c ] ; 2 uses
  switch i64 %i.aa, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.af = load i8, ptr %i.y, align 1, !tbaa !184
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !184
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !197 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !183
  %i.ai = load ptr, ptr %0, align 8, !tbaa !196
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.dl

bb.f:                                             ; preds = %.noexc.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread: ; preds = %bb.a, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %.not8.i = icmp samesign eq i64 %.pre33, 0
  br i1 %.not8.i, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread
  %xtraiter = and i64 %.pre33, 3                  ; 3 uses
  %i.al = icmp ult i64 %.pre33, 4
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %.pre33, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.bf, %.lr.ph.i ]
  %.sroa.05.09.i = phi ptr [ %.pre, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.am = load i8, ptr %.sroa.05.09.i, align 1, !tbaa !184
  %i.an = mul i32 %.010.i, 33
  %i.ao = zext i8 %i.am to i32
  %i.ap = xor i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !184
  %i.as = mul nuw i32 %i.ap, 33
  %i.at = zext i8 %i.ar to i32
  %i.au = xor i32 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !184
  %i.ax = mul nuw i32 %i.au, 33
  %i.ay = zext i8 %i.aw to i32
  %i.az = xor i32 %i.ax, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !184
  %i.bc = mul nuw i32 %i.az, 33
  %i.bd = and i32 %i.bc, 67108863
  %i.be = zext i8 %i.bb to i32
  %i.bf = xor i32 %i.bd, %i.be                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, label %.lr.ph.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bf, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %.sroa.05.09.i.epil.init = phi ptr [ %.pre, %.lr.ph.i.preheader ], [ %i.bg, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i32 [ %i.bl, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.05.09.i.epil = phi ptr [ %i.bm, %.lr.ph.i.epil ], [ %.sroa.05.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = load i8, ptr %.sroa.05.09.i.epil, align 1, !tbaa !184
  %i.bi = mul i32 %.010.i.epil, 33
  %i.bj = and i32 %i.bi, 67108863
  %i.bk = zext i8 %i.bh to i32
  %i.bl = xor i32 %i.bj, %i.bk                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil, !llvm.loop !1405

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.bf, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ], [ %i.bl, %.lr.ph.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i32 107203, label %bb.g
    i32 107206, label %bb.j
    i32 110833, label %._crit_edge.i.i7
    i32 3657597, label %._crit_edge.i.i7
    i32 3545, label %._crit_edge.i.i10
    i32 121652, label %._crit_edge.i.i10
    i32 123000, label %bb.m
    i32 129014, label %bb.p
    i32 3611448, label %bb.s
    i32 3613464, label %bb.v
    i32 108255, label %bb.y
    i32 111240, label %bb.ab
    i32 119225, label %bb.ae
    i32 123682, label %bb.ah
    i32 4233056, label %bb.ak
    i32 117573, label %bb.an
    i32 123483, label %bb.aq
    i32 4074973, label %bb.at
    i32 117117, label %._crit_edge.i.i14
    i32 3864888, label %._crit_edge.i.i14
    i32 122409, label %bb.aw
    i32 4042015, label %bb.az
    i32 4233085, label %bb.bc
    i32 122414, label %bb.bf
    i32 4042203, label %bb.bi
    i32 4233073, label %bb.bl
    i32 128384, label %bb.bo
    i32 120317, label %bb.br
    i32 122598, label %bb.bu
    i32 4244088, label %bb.bx
    i32 5837130, label %bb.ca
    i32 1901, label %bb.cd
    i32 3615575, label %bb.cg
    i32 119026, label %bb.cj
    i32 3857208, label %bb.cm
    i32 124562, label %bb.cp
    i32 123207, label %bb.cs
    i32 127332, label %.noexc.i19
    i32 4443845, label %.noexc.i19
    i32 4190355, label %bb.cw
    i32 127449, label %bb.cz
    i32 3389, label %bb.dc
    i32 133699, label %bb.df
    i32 4236872, label %bb.di
  ]

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.thread, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.dl unwind label %bb.f

bb.g:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.dl

bb.i:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.dm

bb.j:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.dl

bb.l:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.dm

._crit_edge.i.i7:                                 ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bp, ptr %0, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bp, ptr noundef nonnull align 1 dereferenceable(9) @.str.69, i64 9, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9, ptr %i.bq, align 8, !tbaa !183
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.br, align 1, !tbaa !184
  br label %bb.dl

._crit_edge.i.i10:                                ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bs, ptr noundef nonnull align 1 dereferenceable(15) @.str.70, i64 15, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 15, ptr %i.bt, align 8, !tbaa !183
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 0, ptr %i.bu, align 1, !tbaa !184
  br label %bb.dl

bb.m:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.dl

bb.o:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.dm

bb.p:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.dl

bb.r:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.dm

bb.s:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.dl

bb.u:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.dm

bb.v:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.dl

bb.x:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.dm

bb.y:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.z unwind label %bb.aa
end_hunk_0
begin_hunk_1_@_ZN7httplib6detail18extract_media_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEE:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bq, align 8
  store i64 %i.bo, ptr %7, align 8, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail18extract_media_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3mapISA_SA_St4lessISA_ESaISt4pairISB_SA_EEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_SQ_", ptr %i.br, align 8, !tbaa !335
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !265
  store ptr @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail18extract_media_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3mapISA_SA_St4lessISA_ESaISt4pairISB_SA_EEEE3$_0E10_M_managerERSt9_Any_dataRKSN_St18_Manager_operation", ptr %i.bs, align 8, !tbaa !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  invoke void @_ZN7httplib6detail14split_unquotedEPKcS2_cmSt8functionIFvS2_S2_EE(ptr noundef %i.bl, ptr noundef readnone %i.bn, i8 noundef signext 59, i64 noundef -1, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !264 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %bb.w unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #49
  unreachable

bb.t:                                             ; preds = %_ZNSt8functionIFvPKcS1_EEC2EOS3_.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !264 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.by, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit22, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %.body unwind label %bb.v      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #49
  unreachable

bb.w:                                             ; preds = %bb.r
  %.pre36 = load ptr, ptr %i.bp, align 8, !tbaa !264 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i20 = icmp eq ptr %.pre36, null
  br i1 %.not.i20, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = invoke noundef zeroext i1 %.pre36(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #49
  unreachable

bb.z:                                             ; preds = %.noexc10.i.i, %bb.e
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.aa:                                            ; preds = %.noexc10.i.i17
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt14_Function_baseD2Ev.exit22

.body:                                            ; preds = %bb.u
  %.pre = load ptr, ptr %i.bp, align 8, !tbaa !264 ; 2 uses
  %.not.i21 = icmp eq ptr %.pre, null
  br i1 %.not.i21, label %_ZNSt14_Function_baseD2Ev.exit22, label %bb.ab

bb.ab:                                            ; preds = %.body
  %i.ch = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit22 unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.thread, %bb.x, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = load ptr, ptr %5, align 8, !tbaa !196   ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.u
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cm = load i64, ptr %i.u, align 8, !tbaa !184
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ad

_ZNSt14_Function_baseD2Ev.exit22:                 ; preds = %bb.t, %bb.ab, %.body, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.aa ], [ %i.bx, %.body ], [ %i.bx, %bb.ab ], [ %i.bx, %bb.t ] ; 2 uses
  %i.co = load ptr, ptr %5, align 8, !tbaa !196   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.u
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt14_Function_baseD2Ev.exit22
  %i.cq = load i64, ptr %i.u, align 8, !tbaa !184
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt14_Function_baseD2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.z ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn, %_ZNSt14_Function_baseD2Ev.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ag

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZN7httplib6detail9trim_copyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load ptr, ptr %4, align 8, !tbaa !196   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.e
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.ae
  %i.cu = load i64, ptr %i.e, align 8, !tbaa !184
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.af:                                            ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn12 = phi { ptr, i32 } [ %i.cw, %bb.af ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.cx = load ptr, ptr %4, align 8, !tbaa !196   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.e
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.ag
  %i.cz = load i64, ptr %i.e, align 8, !tbaa !184
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail25can_compress_content_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN7httplib6detail18extract_media_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt3mapIS6_S6_St4lessIS6_ESaISt4pairIS7_S6_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef null)
  %i.a = load ptr, ptr %1, align 8, !tbaa !196    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !183  ; 4 uses
  %.not8.i = icmp samesign eq i64 %i.c, 0
  br i1 %.not8.i, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.x, %.lr.ph.i ]
  %.sroa.05.09.i = phi ptr [ %i.a, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = load i8, ptr %.sroa.05.09.i, align 1, !tbaa !184
  %i.f = mul i32 %.010.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !184
  %i.k = mul nuw i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = xor i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !184
  %i.p = mul nuw i32 %i.m, 33
  %i.q = zext i8 %i.o to i32
  %i.r = xor i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !184
  %i.u = mul nuw i32 %i.r, 33
  %i.v = and i32 %i.u, 67108863
  %i.w = zext i8 %i.t to i32
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, label %.lr.ph.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %.sroa.05.09.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.y, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i32 [ %i.ad, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.05.09.i.epil = phi ptr [ %i.ae, %.lr.ph.i.epil ], [ %.sroa.05.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = load i8, ptr %.sroa.05.09.i.epil, align 1, !tbaa !184
  %i.aa = mul i32 %.010.i.epil, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil, !llvm.loop !1412

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i32 1756376, label %bb.c
    i32 10962214, label %bb.c
    i32 16216627, label %bb.c
    i32 36997869, label %bb.c
    i32 49498926, label %bb.c
    i32 45836908, label %bb.c
    i32 832610, label %bb.c
    i32 10752053, label %bb.c
    i32 50414672, label %bb.c
    i32 26386452, label %bb.c
    i32 46606002, label %bb.c
    i32 11954703, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br label %bb.c

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.af = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.106, i64 noundef 0, i64 noundef 5) #23
  %.not = icmp eq i64 %i.af, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !196
  br label %bb.c

bb.c:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %bb.b
  %i.ag = phi ptr [ %.pre, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ %i.a, %bb.b ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %.0 = phi i1 [ %.not, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ false, %bb.b ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !184
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail13parse_qualityEPKcS2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERd(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %2, ptr noundef nonnull align 8 dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::function.145", align 8 ; 9 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.std::function.148", align 8 ; 9 uses
  store double 1.000000e+00, ptr %3, align 8, !tbaa !386
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !183
  %i.e = load ptr, ptr %2, align 8, !tbaa !196
  store i8 0, ptr %i.e, align 1, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !197
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #51 ; 4 uses
  store ptr %2, ptr %i.l, align 16, !tbaa !269
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.a, ptr %.sroa.520.0..sroa_idx, align 8, !tbaa !388
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !390
  store ptr %i.l, ptr %4, align 8, !tbaa !190
  store ptr @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E9_M_invokeERKSt9_Any_dataOS1_OmSI_SJ_", ptr %i.j, align 8, !tbaa !343
  store ptr @"_ZNSt17_Function_handlerIFvPKcmS1_mEZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.i, align 8, !tbaa !264
  invoke void @_ZN7httplib6detail6divideEPKcmcSt8functionIFvS2_mS2_mEE(ptr noundef %0, i64 noundef %i.h, i8 noundef signext 59, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !264  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.q = load i64, ptr %i.d, align 8, !tbaa !183
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.p, label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !264  ; 2 uses
  %.not.i13 = icmp eq ptr %i.t, null
  br i1 %.not.i13, label %_ZNSt14_Function_baseD2Ev.exit14, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit14 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #49
  unreachable

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 0, ptr %i.c, align 1, !tbaa !303
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !312  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.c, ptr %5, align 8, !tbaa !392
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !394
  store ptr @"_ZNSt17_Function_handlerIFbPKcS1_EZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1E9_M_invokeERKSt9_Any_dataOS1_SI_", ptr %i.ac, align 8, !tbaa !345
  store ptr @"_ZNSt17_Function_handlerIFbPKcS1_EZN7httplib6detail13parse_qualityES1_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdE3$_1E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.ab, align 8, !tbaa !264
  %i.ad = invoke noundef zeroext i1 @_ZN7httplib6detail10split_findEPKcS2_cmSt8functionIFbS2_S2_EE(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i8 noundef signext 59, i64 noundef -1, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !264 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ae, null
  br i1 %.not.i15, label %_ZNSt14_Function_baseD2Ev.exit16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = invoke noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit16 unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #49
  unreachable

_ZNSt14_Function_baseD2Ev.exit16:                 ; preds = %bb.j, %bb.k
  %i.ai = load i8, ptr %i.c, align 1, !tbaa !303, !range !198, !noundef !199
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = xor i1 %i.aj, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !264 ; 2 uses
  %.not.i17 = icmp eq ptr %i.am, null
end_hunk_1
begin_hunk_2_@_ZN7httplib6detail19create_decompressorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store ptr null, ptr %0, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !182
  store i32 1885960807, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !183  ; 3 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %.lr.ph.i.preheader.i.i, label %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !196    ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !184
  %i.i = and i8 %i.h, -33
  %i.j = icmp eq i8 %i.i, 71
  br i1 %i.j, label %.lr.ph.i.i.i.1, label %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.preheader.i.i
  %.sroa.03.07.i.i.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %.sroa.03.07.i.i.ptr.i.1, align 1, !tbaa !184
  %i.l = and i8 %i.k, -33
  %i.m = icmp eq i8 %i.l, 90
  br i1 %i.m, label %.lr.ph.i.i.i.2, label %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %.sroa.03.07.i.i.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.n = load i8, ptr %.sroa.03.07.i.i.ptr.i.2, align 1, !tbaa !184
  %i.o = and i8 %i.n, -33
  %i.p = icmp eq i8 %i.o, 73
  br i1 %i.p, label %.lr.ph.i.i.i.3, label %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %.sroa.03.07.i.i.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.q = load i8, ptr %.sroa.03.07.i.i.ptr.i.3, align 1, !tbaa !184
  %i.r = and i8 %i.q, -33
  %i.s = icmp eq i8 %i.r, 80
  br i1 %i.s, label %.thread, label %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread

.thread:                                          ; preds = %.lr.ph.i.i.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.d

_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread: ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  br label %.loopexit

_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @.str.112, i64 7, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.u, align 8, !tbaa !183
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.v, align 1, !tbaa !184
  %i.w = icmp eq i64 %i.e, 7
  br i1 %i.w, label %.lr.ph.i.preheader.i29.i, label %.loopexit25

.lr.ph.i.preheader.i29.i:                         ; preds = %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i
  %i.x = load ptr, ptr %1, align 8, !tbaa !196    ; 7 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !184
  %i.z = and i8 %i.y, -33
  %i.aa = icmp eq i8 %i.z, 68
  br i1 %i.aa, label %.lr.ph.i.i30.i.1, label %.loopexit

.lr.ph.i.i30.i.1:                                 ; preds = %.lr.ph.i.preheader.i29.i
  %.sroa.03.07.i.i32.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ab = load i8, ptr %.sroa.03.07.i.i32.ptr.i.1, align 1, !tbaa !184
  %i.ac = and i8 %i.ab, -33
  %i.ad = icmp eq i8 %i.ac, 69
  br i1 %i.ad, label %.lr.ph.i.i30.i.2, label %.loopexit

.lr.ph.i.i30.i.2:                                 ; preds = %.lr.ph.i.i30.i.1
  %.sroa.03.07.i.i32.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ae = load i8, ptr %.sroa.03.07.i.i32.ptr.i.2, align 1, !tbaa !184
  %i.af = and i8 %i.ae, -33
  %i.ag = icmp eq i8 %i.af, 70
  br i1 %i.ag, label %.lr.ph.i.i30.i.3, label %.loopexit

.lr.ph.i.i30.i.3:                                 ; preds = %.lr.ph.i.i30.i.2
  %.sroa.03.07.i.i32.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ah = load i8, ptr %.sroa.03.07.i.i32.ptr.i.3, align 1, !tbaa !184
  %i.ai = and i8 %i.ah, -33
  %i.aj = icmp eq i8 %i.ai, 76
  br i1 %i.aj, label %.lr.ph.i.i30.i.4, label %.loopexit

.lr.ph.i.i30.i.4:                                 ; preds = %.lr.ph.i.i30.i.3
  %.sroa.03.07.i.i32.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ak = load i8, ptr %.sroa.03.07.i.i32.ptr.i.4, align 1, !tbaa !184
  %i.al = and i8 %i.ak, -33
  %i.am = icmp eq i8 %i.al, 65
  br i1 %i.am, label %.lr.ph.i.i30.i.5, label %.loopexit

.lr.ph.i.i30.i.5:                                 ; preds = %.lr.ph.i.i30.i.4
  %.sroa.03.07.i.i32.ptr.i.5 = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.an = load i8, ptr %.sroa.03.07.i.i32.ptr.i.5, align 1, !tbaa !184
  %i.ao = and i8 %i.an, -33
  %i.ap = icmp eq i8 %i.ao, 84
  br i1 %i.ap, label %.lr.ph.i.i30.i.6, label %.loopexit

.lr.ph.i.i30.i.6:                                 ; preds = %.lr.ph.i.i30.i.5
  %.sroa.03.07.i.i32.ptr.i.6 = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.aq = load i8, ptr %.sroa.03.07.i.i32.ptr.i.6, align 1, !tbaa !184
  %i.ar = and i8 %i.aq, -33
  %i.as = icmp eq i8 %i.ar, 69
  br i1 %i.as, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.i30.i.6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.d

.loopexit25:                                      ; preds = %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.at, ptr %2, align 8, !tbaa !182
  store i16 29282, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 2, ptr %i.au, align 8, !tbaa !183
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i8 0, ptr %i.av, align 2, !tbaa !184
  %i.aw = icmp eq i64 %i.e, 2
  br i1 %i.aw, label %.lr.ph.i.preheader.i.i6, label %_ZN7httplib6detail16is_zstd_encodingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i.preheader.i.i6:                          ; preds = %.loopexit25
  %i.ax = load ptr, ptr %1, align 8, !tbaa !196   ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !184
  %i.az = and i8 %i.ay, -33
  %i.ba = icmp eq i8 %i.az, 66
  br i1 %i.ba, label %.lr.ph.i.i.i7.1, label %_ZN7httplib6detail16is_zstd_encodingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.lr.ph.i.i.i7.1:                                  ; preds = %.lr.ph.i.preheader.i.i6
  %.sroa.03.07.i.i.ptr.i10.1 = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bb = load i8, ptr %.sroa.03.07.i.i.ptr.i10.1, align 1, !tbaa !184
  %i.bc = and i8 %i.bb, -33
  %i.bd = icmp eq i8 %i.bc, 82
  br i1 %i.bd, label %bb.c, label %_ZN7httplib6detail16is_zstd_encodingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i7.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph.i.preheader.i29.i, %.lr.ph.i.i30.i.1, %.lr.ph.i.i30.i.2, %.lr.ph.i.i30.i.3, %.lr.ph.i.i30.i.4, %.lr.ph.i.i30.i.5, %.lr.ph.i.i30.i.6, %_ZN7httplib6detail11case_ignore5equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  br label %_ZN7httplib6detail16is_zstd_encodingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7httplib6detail16is_zstd_encodingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.loopexit25, %.lr.ph.i.i.i7.1, %.lr.ph.i.preheader.i.i6, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.thread, %_ZN7httplib6detail16is_zstd_encodingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7httplib6detail17create_compressorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.194") align 8 captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !196    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !183  ; 4 uses
  %.not8.i = icmp samesign eq i64 %i.c, 0
  br i1 %.not8.i, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.x, %.lr.ph.i ]
  %.sroa.05.09.i = phi ptr [ %i.a, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.e = load i8, ptr %.sroa.05.09.i, align 1, !tbaa !184
  %i.f = mul i32 %.010.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !184
  %i.k = mul nuw i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = xor i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !184
  %i.p = mul nuw i32 %i.m, 33
  %i.q = zext i8 %i.o to i32
  %i.r = xor i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !184
  %i.u = mul nuw i32 %i.r, 33
  %i.v = and i32 %i.u, 67108863
  %i.w = zext i8 %i.t to i32
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, label %.lr.ph.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %.sroa.05.09.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.y, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i32 [ %i.ad, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.05.09.i.epil = phi ptr [ %i.ae, %.lr.ph.i.epil ], [ %.sroa.05.09.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = load i8, ptr %.sroa.05.09.i.epil, align 1, !tbaa !184
  %i.aa = mul i32 %.010.i.epil, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.epil, !llvm.loop !1419

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.lr.ph.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i32 16923016, label %bb.b
    i32 16377058, label %bb.b
    i32 49322369, label %bb.b
    i32 48576171, label %bb.b
  ]

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.a, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  br label %bb.b

bb.b:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %.0 = phi i1 [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ true, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !196    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !183
  %.fr.i = freeze i64 %i.c                        ; 6 uses
  %.not8.i.i = icmp eq i64 %.fr.i, 0
  br i1 %.not8.i.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %.fr.i, 3                   ; 3 uses
  %i.d = icmp ult i64 %.fr.i, 4
  br i1 %i.d, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.fr.i, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.x, %.lr.ph.i.i ]
  %.sroa.05.09.i.i = phi ptr [ %i.a, %.lr.ph.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.e = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !184
  %i.f = mul i32 %.010.i.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !184
  %i.k = mul nuw i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = xor i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !184
  %i.p = mul nuw i32 %i.m, 33
  %i.q = zext i8 %i.o to i32
  %i.r = xor i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !184
  %i.u = mul nuw i32 %i.r, 33
  %i.v = and i32 %i.u, 67108863
  %i.w = zext i8 %i.t to i32
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, label %.lr.ph.i.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %.sroa.05.09.i.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.y, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.010.i.i.epil = phi i32 [ %i.ad, %.lr.ph.i.i.epil ], [ %.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.05.09.i.i.epil = phi ptr [ %i.ae, %.lr.ph.i.i.epil ], [ %.sroa.05.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.z = load i8, ptr %.sroa.05.09.i.i.epil, align 1, !tbaa !184
  %i.aa = mul i32 %.010.i.i.epil, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1420

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ], [ %i.ad, %.lr.ph.i.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24 [
    i32 16923016, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i32 16377058, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i32 49322369, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
    i32 48576171, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  ]

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !226, !noalias !1423 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !225, !noalias !1423 ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.ag, %i.ah
  %.pre.i = ptrtoint ptr %i.ag to i64
  %.pre14.i = ptrtoint ptr %i.ah to i64
  %.pre16.i = sub i64 %.pre.i, %.pre14.i
  %.pre18.i = ashr exact i64 %.pre16.i, 6         ; 2 uses
  br i1 %.not.i.i5, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.split.us.i

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24: ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !226, !noalias !1423 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !225, !noalias !1423 ; 3 uses
  %.not.i.i525 = icmp eq ptr %i.aj, %i.ak
  %.pre.i26 = ptrtoint ptr %i.aj to i64
  %.pre14.i27 = ptrtoint ptr %i.ak to i64
  %.pre16.i28 = sub i64 %.pre.i26, %.pre14.i27
  %.pre18.i29 = ashr exact i64 %.pre16.i28, 6     ; 2 uses
  br i1 %.not.i.i525, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i
  %.0712.i.us.i = phi i64 [ %i.ap, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ah, i64 %.0712.i.us.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !183, !noalias !1423
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.ap = add nuw i64 %.0712.i.us.i, 1            ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.ap, %.pre18.i
  br i1 %exitcond.not.i.us.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.split.us.i, !llvm.loop !3

.lr.ph.i.split.i:                                 ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i
  %.0712.i.i = phi i64 [ %i.bh, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %.0712.i.i ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !183, !noalias !1423
  %i.at = icmp eq i64 %i.as, %.fr.i
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %.lr.ph.i.split.i
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !196, !noalias !1423 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.fr.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.preheader.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.b ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %i.bf, %bb.b ], [ %i.au, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.aw = load i8, ptr %.sroa.03.07.i.i.i.i.i.i, align 1, !tbaa !184, !noalias !1423
  %i.ax = load i8, ptr %.sroa.0.08.i.i.i.i.i.i, align 1, !tbaa !184, !noalias !1423
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !184, !noalias !1423
  %i.bb = zext i8 %i.ax to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !184, !noalias !1423
  %i.be = icmp eq i8 %i.ba, %i.bd
  br i1 %i.be, label %bb.b, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.split.i
  %i.bh = add nuw i64 %.0712.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %.pre18.i29
  br i1 %exitcond.not.i.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.split.i, !llvm.loop !3

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i: ; preds = %bb.b, %.lr.ph.i.split.us.i
  %.pre18.i3034 = phi i64 [ %.pre18.i, %.lr.ph.i.split.us.i ], [ %.pre18.i29, %bb.b ]
  %.0712.i8.i = phi i64 [ %.0712.i.us.i, %.lr.ph.i.split.us.i ], [ %.0712.i.i, %bb.b ] ; 2 uses
  %i.bi = icmp ne i64 %.0712.i8.i, -1
  %i.bj = icmp ne i64 %.0712.i8.i, %.pre18.i3034
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %.0 = phi i1 [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24 ], [ %i.bk, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i ], [ false, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE4findERKS7_(ptr dead_on_unwind noalias writable sret(%"class.httplib::detail::insertion_ordered_multimap<std::__cxx11::basic_string<char>, httplib::detail::case_ignore::equal_to>::iterator_t.196") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !225    ; 5 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  %.pre = ptrtoint ptr %i.b to i64
  %.pre14 = ptrtoint ptr %i.c to i64
  %.pre16 = sub i64 %.pre, %.pre14
  %.pre18 = ashr exact i64 %.pre16, 6             ; 7 uses
  br i1 %.not.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !183
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %2, align 8
  %.not6.i.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us
  %.0712.i.us = phi i64 [ %i.k, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.0712.i.us
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !183
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us: ; preds = %.lr.ph.i.split.us
  %i.k = add nuw i64 %.0712.i.us, 1               ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.k, %.pre18
  br i1 %exitcond.not.i.us, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.thread, label %.lr.ph.i.split.us, !llvm.loop !3

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i
  %.0712.i = phi i64 [ %i.ac, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %.0712.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !183
  %i.o = icmp eq i64 %i.n, %.fr
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.split
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !196  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.fr
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.b
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %i.ab, %bb.b ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.aa, %bb.b ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.r = load i8, ptr %.sroa.03.07.i.i.i.i.i, align 1, !tbaa !184
  %i.s = load i8, ptr %.sroa.0.08.i.i.i.i.i, align 1, !tbaa !184
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !184
  %i.w = zext i8 %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !184
  %i.z = icmp eq i8 %i.v, %i.y
  br i1 %i.z, label %bb.b, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.split
  %i.ac = add nuw i64 %.0712.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %.pre18
  br i1 %exitcond.not.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.thread, label %.lr.ph.i.split, !llvm.loop !3

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit: ; preds = %bb.b, %.lr.ph.i.split.us
  %.0712.i8 = phi i64 [ %.0712.i.us, %.lr.ph.i.split.us ], [ %.0712.i, %bb.b ] ; 3 uses
  %i.ad = icmp eq i64 %.0712.i8, -1
  %spec.select = select i1 %i.ad, i64 %.pre18, i64 %.0712.i8
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.thread

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.thread: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit, %bb.a
  %.0712.i8.sink31 = phi i64 [ %.pre18, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us ], [ %spec.select, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit ], [ %.pre18, %bb.a ], [ %.pre18, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i ]
  %.0712.i8.sink = phi i64 [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us ], [ %.0712.i8, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit ], [ -1, %bb.a ], [ -1, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i ]
  store ptr %i.c, ptr %0, align 8, !tbaa !399
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.0712.i8.sink31, ptr %i.ae, align 8, !tbaa !400
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.pre18, ptr %i.af, align 8, !tbaa !401
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.0712.i8.sink, ptr %i.ag, align 8, !tbaa !402
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7httplib6detail16get_header_valueERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_PKcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readnone captures(ret: address, provenance) %2, i64 noundef %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.httplib::detail::insertion_ordered_multimap<std::__cxx11::basic_string<char>, httplib::detail::case_ignore::equal_to>::iterator_t.196", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !196    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !183
  %.fr.i = freeze i64 %i.c                        ; 6 uses
  %.not8.i.i = icmp eq i64 %.fr.i, 0
  br i1 %.not8.i.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %.fr.i, 3                   ; 3 uses
  %i.d = icmp ult i64 %.fr.i, 4
  br i1 %i.d, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.fr.i, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.x, %.lr.ph.i.i ]
  %.sroa.05.09.i.i = phi ptr [ %i.a, %.lr.ph.i.i.preheader.new ], [ %i.y, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.e = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !184
  %i.f = mul i32 %.010.i.i, 33
  %i.g = zext i8 %i.e to i32
  %i.h = xor i32 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !184
  %i.k = mul nuw i32 %i.h, 33
  %i.l = zext i8 %i.j to i32
  %i.m = xor i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !184
  %i.p = mul nuw i32 %i.m, 33
  %i.q = zext i8 %i.o to i32
  %i.r = xor i32 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !184
  %i.u = mul nuw i32 %i.r, 33
  %i.v = and i32 %i.u, 67108863
  %i.w = zext i8 %i.t to i32
  %i.x = xor i32 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, label %.lr.ph.i.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %.sroa.05.09.i.i.epil.init = phi ptr [ %i.a, %.lr.ph.i.i.preheader ], [ %i.y, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.010.i.i.epil = phi i32 [ %i.ad, %.lr.ph.i.i.epil ], [ %.010.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.sroa.05.09.i.i.epil = phi ptr [ %i.ae, %.lr.ph.i.i.epil ], [ %.sroa.05.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.z = load i8, ptr %.sroa.05.09.i.i.epil, align 1, !tbaa !184
  %i.aa = mul i32 %.010.i.i.epil, 33
  %i.ab = and i32 %i.aa, 67108863
  %i.ac = zext i8 %i.z to i32
  %i.ad = xor i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1424

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.lr.ph.i.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.x, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.unr-lcssa ], [ %i.ad, %.lr.ph.i.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread [
    i32 16923016, label %bb.b
    i32 16377058, label %bb.b
    i32 49322369, label %bb.b
    i32 48576171, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.113, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.114)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %5, align 8, !tbaa !196   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !184
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ak = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #48
          to label %bb.l unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %5, align 8, !tbaa !196   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !184
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ak) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %i.ar, %bb.f ] ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !196   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.h
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !184
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.pn

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !226, !noalias !1427 ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !225, !noalias !1427 ; 6 uses
  %.not.i.i19 = icmp eq ptr %i.az, %i.ba
  %.pre.i = ptrtoint ptr %i.az to i64
  %.pre26.i = ptrtoint ptr %i.ba to i64
  %.pre28.i = sub i64 %.pre.i, %.pre26.i
  %.pre30.i = ashr exact i64 %.pre28.i, 6         ; 4 uses
  br i1 %.not.i.i19, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.us.i

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !226, !noalias !1427 ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !225, !noalias !1427 ; 6 uses
  %.not.i.i1940 = icmp eq ptr %i.bc, %i.bd
  %.pre.i41 = ptrtoint ptr %i.bc to i64
  %.pre26.i42 = ptrtoint ptr %i.bd to i64
  %.pre28.i43 = sub i64 %.pre.i41, %.pre26.i42
  %.pre30.i44 = ashr exact i64 %.pre28.i43, 6     ; 4 uses
  br i1 %.not.i.i1940, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i
  %.0712.i.us.i = phi i64 [ %i.bi, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.ba, i64 %.0712.i.us.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !183, !noalias !1427
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.bi = add nuw i64 %.0712.i.us.i, 1            ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.bi, %.pre30.i
  br i1 %exitcond.not.i.us.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.us.i, !llvm.loop !3

.lr.ph.i.split.i:                                 ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i
  %.0712.i.i = phi i64 [ %i.ca, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.bd, i64 %.0712.i.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !183, !noalias !1427
  %i.bm = icmp eq i64 %i.bl, %.fr.i
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %.lr.ph.i.split.i
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !196, !noalias !1427 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.fr.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.bz, %bb.i ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i = phi ptr [ %i.by, %bb.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.bp = load i8, ptr %.sroa.03.07.i.i.i.i.i.i, align 1, !tbaa !184, !noalias !1427
  %i.bq = load i8, ptr %.sroa.0.08.i.i.i.i.i.i, align 1, !tbaa !184, !noalias !1427
  %i.br = zext i8 %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !184, !noalias !1427
  %i.bu = zext i8 %i.bq to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !184, !noalias !1427
  %i.bx = icmp eq i8 %i.bt, %i.bw
  br i1 %i.bx, label %bb.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.by, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.split.i
  %i.ca = add nuw i64 %.0712.i.i, 1               ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %.pre30.i44
  br i1 %exitcond.not.i.i, label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit, label %.lr.ph.i.split.i, !llvm.loop !3

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i: ; preds = %bb.i, %.lr.ph.i.split.us.i
  %i.cb = phi ptr [ %i.ba, %.lr.ph.i.split.us.i ], [ %i.bd, %bb.i ]
  %.pre30.i4549 = phi i64 [ %.pre30.i, %.lr.ph.i.split.us.i ], [ %.pre30.i44, %bb.i ] ; 2 uses
  %.0712.i20.i = phi i64 [ %.0712.i.us.i, %.lr.ph.i.split.us.i ], [ %.0712.i.i, %bb.i ] ; 3 uses
  %i.cc = icmp eq i64 %.0712.i20.i, -1
  %spec.select.i = select i1 %i.cc, i64 %.pre30.i4549, i64 %.0712.i20.i
  br label %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit

_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE11equal_rangeERKS7_.exit: ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNK7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE8index_ofERKS7_.exit.i
end_hunk_2
begin_hunk_3_@_ZN7httplib6Server15process_requestERNS_6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSA_ibRbRKSt8functionIFvRNS_7RequestEEEPb:bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cx) #48
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %12, ptr %i.h, align 8, !tbaa !713
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !264
  %.not.i.i5.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i5.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #48
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !714
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.k unwind label %bb.l, !inline_history !70

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.db = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cw) #23 ; 0 uses
  br label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cw) #23 ; 0 uses
  br label %.body

_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit: ; preds = %bb.k, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 392
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !485 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 400 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !484
  %.not.i.i.i = icmp eq ptr %i.dh, %i.df
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i401.invoke, label %_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !484
  br label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i401.invoke

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.d
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i401.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit353, %bb.p, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEaSERKSA_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.o:                                             ; preds = %bb.h
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.dk, %bb.o ], [ %i.dc, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %bb.jj

bb.p:                                             ; preds = %bb.e
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 15 uses
  %i.dm = invoke noundef zeroext i1 @_ZN7httplib6detail12read_headersERNS_6StreamERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEE(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  br i1 %i.dm, label %.noexc.i369, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 400, ptr %i.bk, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  store i32 26, ptr %i.j, align 4, !tbaa !270
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !264
  %.not.i.i.not.i355 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.not.i355, label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit363, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 3 uses
  %i.dr = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.dq) #23 ; 2 uses
  %.not.i.i4.i356 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i4.i356, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i357, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.dr) #48
          to label %.noexc360 unwind label %bb.y

.noexc360:                                        ; preds = %bb.t
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i357:     ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %12, ptr %i.g, align 8, !tbaa !713
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !264
  %.not.i.i5.i358 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i5.i358, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i357
  invoke void @_ZSt25__throw_bad_function_callv() #48
          to label %.noexc.i359 unwind label %bb.x

.noexc.i359:                                      ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i357
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !714
  invoke void %i.du(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.w unwind label %bb.x, !inline_history !70

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dq) #23 ; 0 uses
  br label %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit363

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dq) #23 ; 0 uses
  br label %.body361

_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit363: ; preds = %bb.w, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 392
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !485 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 400 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !484
  %.not.i.i.i364 = icmp eq ptr %i.eb, %i.dz
  br i1 %.not.i.i.i364, label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i401.invoke, label %_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i365

_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i365: ; preds = %_ZNK7httplib6Server16output_error_logERKNS_5ErrorEPKNS_7RequestE.exit363
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !484
  br label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i401.invoke

bb.y:                                             ; preds = %bb.t
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body361

.body361:                                         ; preds = %bb.x, %bb.y
  %eh.lpad-body362 = phi { ptr, i32 } [ %i.ec, %bb.y ], [ %i.dw, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #23
  br label %bb.jj

.noexc.i369:                                      ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ed, ptr %14, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 17, ptr %i.f, align 8, !tbaa !197
  %i.ee = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc370 unwind label %bb.ae ; 2 uses

.noexc370:                                        ; preds = %.noexc.i369
  store ptr %i.ee, ptr %14, align 8, !tbaa !196
  %i.ef = load i64, ptr %i.f, align 8, !tbaa !197 ; 3 uses
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ee, ptr noundef nonnull align 1 dereferenceable(17) @.str.120, i64 17, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !183
  %i.eh = load ptr, ptr %14, align 8, !tbaa !196
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.ej = load ptr, ptr %14, align 8, !tbaa !196  ; 12 uses
  %i.ek = load i64, ptr %i.eg, align 8, !tbaa !183
  %.fr.i.i = freeze i64 %i.ek                     ; 6 uses
  %.not8.i.i.i = icmp eq i64 %.fr.i.i, 0
  br i1 %.not8.i.i.i, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc370
  %xtraiter = and i64 %.fr.i.i, 3                 ; 3 uses
  %i.el = icmp ult i64 %.fr.i.i, 4
  br i1 %i.el, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %.fr.i.i, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.010.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.ff, %.lr.ph.i.i.i ]
  %.sroa.05.09.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.preheader.new ], [ %i.fg, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.em = load i8, ptr %.sroa.05.09.i.i.i, align 1, !tbaa !184
  %i.en = mul i32 %.010.i.i.i, 33
  %i.eo = zext i8 %i.em to i32
  %i.ep = xor i32 %i.en, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !184
  %i.es = mul nuw i32 %i.ep, 33
  %i.et = zext i8 %i.er to i32
  %i.eu = xor i32 %i.es, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !184
  %i.ex = mul nuw i32 %i.eu, 33
  %i.ey = zext i8 %i.ew to i32
  %i.ez = xor i32 %i.ex, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !184
  %i.fc = mul nuw i32 %i.ez, 33
  %i.fd = and i32 %i.fc, 67108863
  %i.fe = zext i8 %i.fb to i32
  %i.ff = xor i32 %i.fd, %i.fe                    ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa, label %.lr.ph.i.i.i

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.010.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.ff, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa ]
  %.sroa.05.09.i.i.i.epil.init = phi ptr [ %i.ej, %.lr.ph.i.i.i.preheader ], [ %i.fg, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa ]
  %lcmp.mod1151 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1151)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.010.i.i.i.epil = phi i32 [ %i.fl, %.lr.ph.i.i.i.epil ], [ %.010.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %.sroa.05.09.i.i.i.epil = phi ptr [ %i.fm, %.lr.ph.i.i.i.epil ], [ %.sroa.05.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.fh = load i8, ptr %.sroa.05.09.i.i.i.epil, align 1, !tbaa !184
  %i.fi = mul i32 %.010.i.i.i.epil, 33
  %i.fj = and i32 %i.fi, 67108863
  %i.fk = zext i8 %i.fh to i32
  %i.fl = xor i32 %i.fj, %i.fk                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2266

_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.ff, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i.unr-lcssa ], [ %i.fl, %.lr.ph.i.i.i.epil ]
  switch i32 %.lcssa, label %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i [
    i32 16923016, label %.critedge329
    i32 16377058, label %.critedge329
    i32 49322369, label %.critedge329
    i32 48576171, label %.critedge329
  ]

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc370
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !226, !noalias !2289 ; 2 uses
  %i.fp = load ptr, ptr %i.dl, align 8, !tbaa !225, !noalias !2289 ; 3 uses
  %.not.i.i5.i735 = icmp eq ptr %i.fo, %i.fp
  %.pre.i.i = ptrtoint ptr %i.fo to i64
  %.pre14.i.i = ptrtoint ptr %i.fp to i64
  %.pre16.i.i = sub i64 %.pre.i.i, %.pre14.i.i
  %.pre18.i.i = ashr exact i64 %.pre16.i.i, 6     ; 2 uses
  br i1 %.not.i.i5.i735, label %.critedge329, label %.lr.ph.i.split.us.i.i

_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i: ; preds = %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !226, !noalias !2289 ; 2 uses
  %i.fs = load ptr, ptr %i.dl, align 8, !tbaa !225, !noalias !2289 ; 3 uses
  %.not.i.i525.i = icmp eq ptr %i.fr, %i.fs
  %.pre.i26.i = ptrtoint ptr %i.fr to i64
  %.pre14.i27.i = ptrtoint ptr %i.fs to i64
  %.pre16.i28.i = sub i64 %.pre.i26.i, %.pre14.i27.i
  %.pre18.i29.i = ashr exact i64 %.pre16.i28.i, 6 ; 2 uses
  br i1 %.not.i.i525.i, label %.critedge329, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i
  %.0712.i.us.i.i = phi i64 [ %i.fx, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [64 x i8], ptr %i.fp, i64 %.0712.i.us.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !183, !noalias !2289
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i: ; preds = %.lr.ph.i.split.us.i.i
  %i.fx = add nuw i64 %.0712.i.us.i.i, 1          ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %i.fx, %.pre18.i.i
  br i1 %exitcond.not.i.us.i.i, label %.critedge329, label %.lr.ph.i.split.us.i.i, !llvm.loop !3

.lr.ph.i.split.i.i:                               ; preds = %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i
  %.0712.i.i.i = phi i64 [ %i.gp, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i ], [ 0, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [64 x i8], ptr %i.fs, i64 %.0712.i.i.i ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !183, !noalias !2289
  %i.gb = icmp eq i64 %i.ga, %.fr.i.i
  br i1 %i.gb, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %.lr.ph.i.split.i.i
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !196, !noalias !2289 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.fr.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.go, %bb.z ], [ %i.ej, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.gn, %bb.z ], [ %i.gc, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.ge = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !184, !noalias !2289
  %i.gf = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !184, !noalias !2289
  %i.gg = zext i8 %i.ge to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !184, !noalias !2289
  %i.gj = zext i8 %i.gf to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !184, !noalias !2289
  %i.gm = icmp eq i8 %i.gi, %i.gl
  br i1 %i.gm, label %bb.z, label %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gn, %i.gd
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.split.i.i
  %i.gp = add nuw i64 %.0712.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gp, %.pre18.i29.i
  br i1 %exitcond.not.i.i.i, label %.critedge329, label %.lr.ph.i.split.i.i, !llvm.loop !3

_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit: ; preds = %bb.z, %.lr.ph.i.split.us.i.i
  %.pre18.i3034.i = phi i64 [ %.pre18.i.i, %.lr.ph.i.split.us.i.i ], [ %.pre18.i29.i, %bb.z ]
  %.0712.i8.i.i = phi i64 [ %.0712.i.us.i.i, %.lr.ph.i.split.us.i.i ], [ %.0712.i.i.i, %bb.z ] ; 2 uses
  %i.gq = icmp ne i64 %.0712.i8.i.i, -1
  %i.gr = icmp ne i64 %.0712.i8.i.i, %.pre18.i3034.i
  %i.gs = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %i.gs, label %._crit_edge.i.i371, label %.critedge329

._crit_edge.i.i371:                               ; preds = %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.gt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.gt, ptr %15, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gt, ptr noundef nonnull align 1 dereferenceable(14) @.str.116, i64 14, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 14, ptr %i.gu, align 8, !tbaa !183
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 30
  store i8 0, ptr %i.gv, align 2, !tbaa !184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 0, ptr %i.e, align 1, !tbaa !303
  %i.gw = invoke noundef i64 @_ZN7httplib6detail20get_header_value_u64ERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_mmRb(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %._crit_edge.i.i371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %.not = icmp eq i64 %i.gw, 0
  br i1 %.not, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.gx = invoke noundef zeroext i1 @_ZN7httplib6detail28is_chunked_transfer_encodingERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.dl)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gy = xor i1 %i.gx, true
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.ac
  %.ph = phi i1 [ %i.gy, %bb.ac ], [ true, %bb.aa ]
  %i.gz = load ptr, ptr %15, align 8, !tbaa !196  ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gt
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.hb = load i64, ptr %i.gt, align 8, !tbaa !184
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.pre = load ptr, ptr %14, align 8, !tbaa !196
  br label %.critedge329

.critedge329:                                     ; preds = %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hd = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ej, %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit ], [ %i.ej, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %i.ej, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %i.ej, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %i.ej, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %i.ej, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i ], [ %i.ej, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %i.ej, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i ], [ %i.ej, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i ] ; 2 uses
  %i.he = phi i1 [ %.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZN7httplib6detail10has_headerERKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKS7_.exit ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ false, %_ZN7httplib6detail7str2tagERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ false, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread24.i ], [ false, %_ZN7httplib6detail25is_prohibited_header_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.us.i.i ], [ false, %_ZN7httplib6detail26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEE10keys_equalERKS7_SC_.exit.i.i.i ]
  %i.hf = icmp eq ptr %i.hd, %i.ed
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376: ; preds = %.critedge329
  %i.hg = load i64, ptr %i.ed, align 8, !tbaa !184
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378: ; preds = %.critedge329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i376
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %i.he, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378
  store i8 1, ptr %7, align 1, !tbaa !303
  store i32 400, ptr %i.bk, align 8, !tbaa !223
  %i.hi = getelementptr inbounds nuw i8, ptr %12, i64 392
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !485 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %12, i64 400 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !484
  %.not.i.i.i379 = icmp eq ptr %i.hl, %i.hj
  br i1 %.not.i.i.i379, label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i401.invoke, label %_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i380

_ZSt8_DestroyIPSt4pairIllES1_EvT_S3_RSaIT0_E.exit.i.i.i380: ; preds = %bb.ad
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !484
  br label %_ZNSt6vectorISt4pairIllESaIS1_EE5clearEv.exit.i401.invoke

bb.ae:                                            ; preds = %.noexc.i369
  %i.hm = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2IPKS5_EET_SN_mRKSD_RKSC_RKS6_St17integral_constantIbLb1EE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !331
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef %3)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.b, align 8, !tbaa !330
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !202

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !1173
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.j, label %bb.f, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !202

bb.f:                                             ; preds = %bb.e
  %i.k = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %.noexc.i.i.i, label %.noexc7.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #48
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

.noexc7.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #48
          to label %.noexc9.i unwind label %bb.g

.noexc9.i:                                        ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 2 uses
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #51
          to label %.noexc10.i unwind label %bb.g ; 2 uses

.noexc10.i:                                       ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc10.i, %bb.d
  %.0.i.i = phi ptr [ %i.a, %bb.d ], [ %i.m, %.noexc10.i ]
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !329
  store i64 %i.f, ptr %i.b, align 8, !tbaa !330
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit

common.resume:                                    ; preds = %bb.h, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE19_M_allocate_bucketsEm.exit.i.i, %.noexc7.i.i.i, %.noexc.i.i.i, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %common.resume

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %0, ptr %7, align 8, !tbaa !1175
  %.not7.i.i = icmp eq ptr %1, %2
  br i1 %.not7.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit, %.noexc
  %.08.i.i = phi ptr [ %i.p, %.noexc ], [ %1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit ] ; 3 uses
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.08.i.i, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %2
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !3020

.loopexit:                                        ; preds = %.noexc, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEEC2EmRKSD_RKSC_RKS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #23
  br label %common.resume
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>, std::__detail::_Identity, httplib::detail::case_ignore::equal_to, httplib::detail::case_ignore::hash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1176
  %.not.not = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.023.041 = load ptr, ptr %i.c, align 8, !tbaa !337 ; 3 uses
  %.not42 = icmp eq ptr %.sroa.023.041, null
  br i1 %.not42, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !183
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us
  %.sroa.023.043.us = phi ptr [ %.sroa.023.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.sroa.023.041, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.023.043.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !183
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.023.0.us = load ptr, ptr %.sroa.023.043.us, align 8, !tbaa !337 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.023.0.us, null
  br i1 %.not.us, label %.thread, label %.lr.ph.split.us, !llvm.loop !3021

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.023.043 = phi ptr [ %.sroa.023.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ %.sroa.023.041, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.023.043, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !183
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.023.043, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !196
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !184
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !184
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !184
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !184
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.023.0 = load ptr, ptr %.sroa.023.043, align 8, !tbaa !337 ; 2 uses
  %.not = icmp eq ptr %.sroa.023.0, null
  br i1 %.not, label %.thread, label %.lr.ph.split, !llvm.loop !3021

.thread:                                          ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_key_equals_trIS6_EEbRKT_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us, %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !183
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %.thread
  %i.ad = load ptr, ptr %1, align 8, !tbaa !196   ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !184
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !184
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul nuw i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !184
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !184
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !184
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !184
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa, %.thread
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %.thread ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !330 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 4 uses
  br i1 %.not.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit
  %i.bh = load ptr, ptr %0, align 8, !tbaa !329
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !949 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !337 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !948 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !183
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !337 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !948 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %.critedge, !llvm.loop !3022

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !183
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !196
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !184
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !184
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !184
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !184
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !337 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !948 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %.critedge, !llvm.loop !3022

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit: ; preds = %bb.j
  %.not18 = icmp eq ptr %.0.i.i, null
  br i1 %.not18, label %.critedge, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30

.critedge:                                        ; preds = %bb.k, %.loopexit.i.i, %bb.g, %bb.h, %bb.d, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE15_M_hash_code_trIS6_EEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cs = load ptr, ptr %3, align 8, !tbaa !3024, !nonnull !199
  %i.ct = tail call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  store ptr %0, ptr %4, align 8, !tbaa !3025
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !1179
  %i.cv = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.bg, i64 noundef %.tr8.lcssa.i.i.i, ptr noundef %i.ct, i64 noundef 1)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.l

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30

bb.l:                                             ; preds = %.critedge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.cw

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit.thread30: ; preds = %bb.c, %.lr.ph.split.us, %bb.f, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.026.1 = phi ptr [ %i.cv, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.023.043.us, %.lr.ph.split.us ], [ %.0.us.i.i, %bb.f ], [ %.0.i.i, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit ], [ %.sroa.023.043, %bb.c ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %.lr.ph.split.us ], [ 0, %bb.f ], [ 0, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS5_EEPNS7_10_Hash_nodeIS5_Lb1EEEmRKT_m.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.026.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !950
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !330
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1176
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !950
  invoke void @__cxa_rethrow() #48
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
end_hunk_4
begin_hunk_5_@"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail14parse_trailersERNS4_18stream_line_readerERNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_11case_ignore8equal_toEEERKSG_E3$_0E9_M_invokeERKSt9_Any_dataOS1_SP_":bb.a
bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %.val, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !183
  %i.m = load ptr, ptr %4, align 8, !tbaa !196
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1, !tbaa !184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN7httplib6detail14parse_trailersERNS0_18stream_line_readerERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKSC_E19prohibited_trailersB5cxx11)
  %i.p = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE4findERKS5_.exit.i.i.i unwind label %bb.f

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE4findERKS5_.exit.i.i.i: ; preds = %bb.d
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE4findERKS5_.exit.i.i.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !3028, !nonnull !199, !align !261 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.r, ptr %3, align 8, !tbaa !1175
  %i.s = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SM_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE6insertERKS5_.exit.i.i.i unwind label %bb.g ; 0 uses

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE6insertERKS5_.exit.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE6insertERKS5_.exit.i.i.i, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7httplib6detail11case_ignore4hashENS8_8equal_toESaIS5_EE4findERKS5_.exit.i.i.i
  %i.v = load ptr, ptr %4, align 8, !tbaa !196    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %"_ZSt10__invoke_rIvRZN7httplib6detail14parse_trailersERNS1_18stream_line_readerERNS1_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEEERKSD_E3$_0JPKcSK_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.b, align 8, !tbaa !184
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #47
  br label %"_ZSt10__invoke_rIvRZN7httplib6detail14parse_trailersERNS1_18stream_line_readerERNS1_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEEERKSD_E3$_0JPKcSK_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit"

bb.i:                                             ; preds = %bb.g, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !196    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i: ; preds = %bb.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !184
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn.i.i.i

"_ZSt10__invoke_rIvRZN7httplib6detail14parse_trailersERNS1_18stream_line_readerERNS1_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11case_ignore8equal_toEEERKSD_E3$_0JPKcSK_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESM_E4typeEOSN_DpOSO_.exit": ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPKcS1_EZN7httplib6detail14parse_trailersERNS4_18stream_line_readerERNS4_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS4_11case_ignore8equal_toEEERKSG_E3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN7httplib6detail14parse_trailersERNS0_18stream_line_readerERNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEERKSC_E3$_0", ptr %0, align 8, !tbaa !945
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !190
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !333
  store i64 %.val.i, ptr %0, align 8, !tbaa !333
  br label %"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN7httplib6detail14parse_trailersERNS2_18stream_line_readerERNS2_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS2_11case_ignore8equal_toEEERKSE_E3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1176
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.017 = load ptr, ptr %i.c, align 8, !tbaa !337 ; 3 uses
  %.not18 = icmp eq ptr %.sroa.06.017, null
  br i1 %.not18, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !183
  %.fr = freeze i64 %i.e                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.fr
  %.not6.i.i.i.i = icmp eq i64 %.fr, 0
  br i1 %.not6.i.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us
  %.sroa.06.019.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.sroa.06.017, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.019.us, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !183
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.019.us, align 8, !tbaa !337 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split.us, !llvm.loop !3029

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit
  %.sroa.06.019 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ %.sroa.06.017, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !183
  %i.m = icmp eq i64 %.fr, %i.l
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !196
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.o, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.f, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.p = load i8, ptr %.sroa.03.07.i.i.i.i, align 1, !tbaa !184
  %i.q = load i8, ptr %.sroa.0.08.i.i.i.i, align 1, !tbaa !184
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !184
  %i.u = zext i8 %i.q to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !184
  %i.x = icmp eq i8 %i.t, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i, i64 1 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split
  %.sroa.06.0 = load ptr, ptr %.sroa.06.019, align 8, !tbaa !337 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, null
  br i1 %.not, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.split, !llvm.loop !3029

bb.d:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !183
  %.fr.i.i = freeze i64 %i.ab                     ; 7 uses
  %i.ac = icmp eq i64 %.fr.i.i, 0                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit, label %tailrecurse.i.preheader.i.i

tailrecurse.i.preheader.i.i:                      ; preds = %bb.d
  %i.ad = load ptr, ptr %1, align 8, !tbaa !196   ; 2 uses
  %xtraiter = and i64 %.fr.i.i, 1
  %i.ae = icmp eq i64 %.fr.i.i, 1
  br i1 %i.ae, label %tailrecurse.i.i.i.epil.preheader, label %tailrecurse.i.preheader.i.i.new

tailrecurse.i.preheader.i.i.new:                  ; preds = %tailrecurse.i.preheader.i.i
  %unroll_iter = and i64 %.fr.i.i, -2
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i, %tailrecurse.i.preheader.i.i.new
  %.tr811.i.i.i = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %i.av, %tailrecurse.i.i.i ]
  %.tr69.i.i.i = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i.new ], [ %i.an, %tailrecurse.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %tailrecurse.i.preheader.i.i.new ], [ %niter.next.1, %tailrecurse.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 1
  %i.ag = mul i64 %.tr811.i.i.i, 33
  %i.ah = load i8, ptr %.tr69.i.i.i, align 1, !tbaa !184
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !184
  %i.al = zext i8 %i.ak to i64
  %i.am = xor i64 %i.ag, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.tr69.i.i.i, i64 2 ; 2 uses
  %i.ao = mul nuw i64 %i.am, 33
  %i.ap = and i64 %i.ao, 288230376151711743
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !184
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !184
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.ap, %i.au                    ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, label %tailrecurse.i.i.i

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa: ; preds = %tailrecurse.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit, label %tailrecurse.i.i.i.epil.preheader

tailrecurse.i.i.i.epil.preheader:                 ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, %tailrecurse.i.preheader.i.i
  %.tr811.i.i.i.epil.init = phi i64 [ 0, %tailrecurse.i.preheader.i.i ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ]
  %.tr69.i.i.i.epil.init = phi ptr [ %i.ad, %tailrecurse.i.preheader.i.i ], [ %i.an, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i64 %.fr.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  %i.aw = mul i64 %.tr811.i.i.i.epil.init, 33
  %i.ax = and i64 %i.aw, 288230376151711743
  %i.ay = load i8, ptr %.tr69.i.i.i.epil.init, align 1, !tbaa !184
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !184
  %i.bc = zext i8 %i.bb to i64
  %i.bd = xor i64 %i.ax, %i.bc
  br label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit: ; preds = %tailrecurse.i.i.i.epil.preheader, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa, %bb.d
  %.tr8.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.av, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit.loopexit.unr-lcssa ], [ %i.bd, %tailrecurse.i.i.i.epil.preheader ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !330 ; 3 uses
  %i.bg = urem i64 %.tr8.lcssa.i.i.i, %i.bf       ; 3 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !329
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !949 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !337 ; 3 uses
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.fr.i.i
  %.phi.trans.insert28.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.pre29.i.i = load i64, ptr %.phi.trans.insert28.i.i, align 8, !tbaa !948 ; 2 uses
  br i1 %i.ac, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.h
  %i.bn = phi i64 [ %i.bu, %bb.h ], [ %.pre29.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.bs, %bb.h ], [ %i.bk, %bb.e ] ; 3 uses
  %i.bo = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split.us.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !183
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.i.i
  %i.bs = load ptr, ptr %.0.us.i.i, align 8, !tbaa !337 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.bs, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !948 ; 2 uses
  %i.bv = urem i64 %i.bu, %i.bf
  %.not19.us.i.i = icmp eq i64 %i.bv, %i.bg
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !3030

.split.i.i:                                       ; preds = %bb.e, %bb.k
  %i.bw = phi i64 [ %i.cq, %bb.k ], [ %.pre29.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.co, %bb.k ], [ %i.bk, %bb.e ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.by = icmp eq i64 %.tr8.lcssa.i.i.i, %i.bw
  br i1 %i.by, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %.split.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !183
  %i.cb = icmp eq i64 %.fr.i.i, %i.ca
  br i1 %i.cb, label %.lr.ph.i.preheader.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %bb.i
  %i.cc = load ptr, ptr %i.bx, align 8, !tbaa !196
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.j ], [ %i.cc, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i = phi ptr [ %i.cm, %bb.j ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, align 1, !tbaa !184
  %i.ce = load i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, align 1, !tbaa !184
  %i.cf = zext i8 %i.cd to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !184
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZZN7httplib6detail11case_ignore8to_lowerEiE5table, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !184
  %i.cl = icmp eq i8 %i.ch, %i.ck
  br i1 %i.cl, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.i, i64 1
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i, %.split.i.i
  %i.co = load ptr, ptr %.0.i.i, align 8, !tbaa !337 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.co, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !948 ; 2 uses
  %i.cr = urem i64 %i.cq, %i.bf
  %.not19.i.i = icmp eq i64 %i.cr, %i.bg
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit, !llvm.loop !3030

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN7httplib6detail11case_ignore8equal_toENSB_4hashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS5_m.exit: ; preds = %bb.k, %.loopexit.i.i, %bb.j, %bb.h, %bb.g, %bb.f, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit, %bb.c, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us, %.lr.ph.split.us, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit
  %.sroa.06.1 = phi ptr [ %.sroa.06.019, %bb.c ], [ %.sroa.06.019.us, %.lr.ph.split.us ], [ null, %bb.h ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERKS6_.exit ], [ %.0.i.i, %bb.j ], [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN7httplib6detail11case_ignore8equal_toENSA_4hashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_key_equalsERKS6_RKNS_16_Hash_node_valueIS6_Lb1EEE.exit.us ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ null, %.loopexit.i.i ], [ null, %bb.k ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJRKS6_SC_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !226  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !225    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.346) #48
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #51 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS9_SA_EEEbE4typeELb1EEERKS5_SE_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEE9constructIS7_JRKS6_SC_EEEvRS8_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !182, !alias.scope !3037, !noalias !3038
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !196, !alias.scope !3038, !noalias !3037 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !183, !alias.scope !3038, !noalias !3037 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !3039
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !196, !alias.scope !3037, !noalias !3038
  %i.z = load i64, ptr %i.t, align 8, !tbaa !184, !alias.scope !3038, !noalias !3037
  store i64 %i.z, ptr %i.r, align 8, !tbaa !184, !alias.scope !3037, !noalias !3038
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !183, !alias.scope !3038, !noalias !3037
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !183, !alias.scope !3037, !noalias !3038
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !196, !alias.scope !3038, !noalias !3037
  store i64 0, ptr %i.ab, align 8, !tbaa !183, !alias.scope !3038, !noalias !3037
end_hunk_5
