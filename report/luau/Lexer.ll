Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Lexer?download=true
inline.NumInlined: 468
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau12AstNameTableC2ERNS_9AllocatorE:bb.a
  store ptr @.str.109, ptr %2, align 8, !tbaa !47
  store i32 5, ptr %i.m, align 8, !tbaa !35
  store i32 297, ptr %i.n, align 4, !tbaa !48
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.w       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.110, ptr %2, align 8, !tbaa !47
  store i32 3, ptr %i.m, align 8, !tbaa !35
  store i32 298, ptr %i.n, align 4, !tbaa !48
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.i unwind label %bb.w       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.111, ptr %2, align 8, !tbaa !47
  store i32 8, ptr %i.m, align 8, !tbaa !35
  store i32 299, ptr %i.n, align 4, !tbaa !48
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.j unwind label %bb.w       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.112, ptr %2, align 8, !tbaa !47
  store i32 2, ptr %i.m, align 8, !tbaa !35
  store i32 300, ptr %i.n, align 4, !tbaa !48
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.k unwind label %bb.w       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.113, ptr %2, align 8, !tbaa !47
  store i32 2, ptr %i.m, align 8, !tbaa !35
  store i32 301, ptr %i.n, align 4, !tbaa !48
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.l unwind label %bb.w       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.114, ptr %2, align 8, !tbaa !47
  store i32 5, ptr %i.m, align 8, !tbaa !35
  store i32 302, ptr %i.n, align 4, !tbaa !48
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.m unwind label %bb.w       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.115, ptr %2, align 8, !tbaa !47
  store i32 3, ptr %i.m, align 8, !tbaa !35
  store i32 303, ptr %i.n, align 4, !tbaa !48
  %i.aa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.n unwind label %bb.w       ; 0 uses

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.116, ptr %2, align 8, !tbaa !47
  store i32 3, ptr %i.m, align 8, !tbaa !35
  store i32 304, ptr %i.n, align 4, !tbaa !48
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.o unwind label %bb.w       ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.117, ptr %2, align 8, !tbaa !47
  store i32 2, ptr %i.m, align 8, !tbaa !35
  store i32 305, ptr %i.n, align 4, !tbaa !48
  %i.ac = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.p unwind label %bb.w       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.118, ptr %2, align 8, !tbaa !47
  store i32 6, ptr %i.m, align 8, !tbaa !35
  store i32 306, ptr %i.n, align 4, !tbaa !48
  %i.ad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.q unwind label %bb.w       ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.119, ptr %2, align 8, !tbaa !47
  store i32 6, ptr %i.m, align 8, !tbaa !35
  store i32 307, ptr %i.n, align 4, !tbaa !48
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.r unwind label %bb.w       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.120, ptr %2, align 8, !tbaa !47
  store i32 4, ptr %i.m, align 8, !tbaa !35
  store i32 308, ptr %i.n, align 4, !tbaa !48
  %i.af = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.s unwind label %bb.w       ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.121, ptr %2, align 8, !tbaa !47
  store i32 4, ptr %i.m, align 8, !tbaa !35
  store i32 309, ptr %i.n, align 4, !tbaa !48
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.122, ptr %2, align 8, !tbaa !47
  store i32 5, ptr %i.m, align 8, !tbaa !35
  store i32 310, ptr %i.n, align 4, !tbaa !48
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.u unwind label %bb.w       ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr @.str.123, ptr %2, align 8, !tbaa !47
  store i32 5, ptr %i.m, align 8, !tbaa !35
  store i32 311, ptr %i.n, align 4, !tbaa !48
  %i.ai = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EEC2IS2_TnNSt9enable_ifIXntsr3stdE12is_pointer_vIT_EEiE4typeELi0EEERKS2_m.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #20
  br label %_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EED2Ev.exit: ; preds = %bb.w, %bb.x
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN4Luau12AstNameTable9addStaticEPKcNS_6Lexeme4TypeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::AstNameTable::Entry", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %1, ptr %3, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %i.c = trunc i64 %i.b to i32
  store i32 %i.c, ptr %i.a, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %2, ptr %i.d, align 4, !tbaa !48
  %i.e = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret ptr %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.not2.i = icmp eq ptr %i.g, null
  br i1 %.not2.i, label %bb.c, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = load i64, ptr %i.c, align 8, !tbaa !45
  %i.i = add i64 %i.h, -1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !35   ; 4 uses
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit
  %2 = load ptr, ptr %1, align 8, !tbaa !36       ; 5 uses
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.m = icmp ult i32 %i.k, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i.a
  %unroll_iter = and i64 %i.l, 4294967292
  br label %bb.e

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.a
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.a ], [ %i.ar, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i.i.a ], [ %i.aq, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.09.i.i.epil = phi i64 [ %.09.i.i.epil.init, %.epil.preheader ], [ %i.s, %bb.d ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %.078.i.i.epil.init, %.epil.preheader ], [ %i.r, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i.epil
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %.078.i.i.epil, %i.p
  %i.r = mul i32 %i.q, 16777619                   ; 2 uses
  %i.s = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %bb.d, !llvm.loop !80

._crit_edge.loopexit.i.i:                         ; preds = %bb.d, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa13 = phi i32 [ %i.aq, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.r, %bb.d ]
  %i.t = zext i32 %.lcssa13 to i64
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ar, %bb.e ] ; 5 uses
  %.078.i.i = phi i32 [ -2128831035, %.lr.ph.i.i.new ], [ %i.aq, %bb.e ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %.078.i.i, %i.w
  %i.y = mul i32 %i.x, 16777619
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !22
  %i.ac = zext i8 %i.ab to i32
  %i.ad = xor i32 %i.y, %i.ac
  %i.ae = mul i32 %i.ad, 16777619
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ae, %i.ai
  %i.ak = mul i32 %i.aj, 16777619
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ao = zext i8 %i.an to i32
  %i.ap = xor i32 %i.ak, %i.ao
  %i.aq = mul i32 %i.ap, 16777619                 ; 3 uses
  %i.ar = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.e, !llvm.loop !0

_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i: ; preds = %._crit_edge.loopexit.i.i, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit
  %.07.lcssa.i.i = phi i64 [ 2166136261, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE14rehash_if_fullERKS3_.exit ], [ %i.t, %._crit_edge.loopexit.i.i ]
  %i.as = load ptr, ptr %0, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !35 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = zext i32 %i.au to i64
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i
  %.07.lcssa.i.pn.i = phi i64 [ %.07.lcssa.i.i, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i ], [ %i.bj, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i ]
  %.02033.i = phi i64 [ 0, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i ], [ %i.bi, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i ]
  %.02134.i = and i64 %.07.lcssa.i.pn.i, %i.i     ; 2 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.02134.i ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !35 ; 2 uses
  %i.ba = icmp eq i32 %i.az, %i.au
  br i1 %i.ba, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i: ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !36
  %3 = load ptr, ptr %i.av, align 8, !tbaa !36
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bb, ptr %3, i64 %i.aw)
  %i.bc = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bc, label %bb.g, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i

bb.g:                                             ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !50
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !49
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.a, align 8, !tbaa !49
  br label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i, %bb.f
  %i.bf = icmp eq i32 %i.az, %i.k
  br i1 %i.bf, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !36
  %4 = load ptr, ptr %1, align 8, !tbaa !36
  %bcmp.i.i26.i = tail call i32 @bcmp(ptr %i.bg, ptr %4, i64 %i.l)
  %i.bh = icmp eq i32 %bcmp.i.i26.i, 0
  br i1 %i.bh, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i
  %i.bi = add i64 %.02033.i, 1                    ; 3 uses
  %i.bj = add i64 %i.bi, %.02134.i
  %.not.i3 = icmp ule i64 %i.bi, %i.i
  tail call void @llvm.assume(i1 %.not.i3)
  br label %bb.f

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, %bb.g
  ret ptr %i.ax
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i32 } @_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::AstNameTable::Entry", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %1, ptr %3, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = trunc i64 %2 to i32
  store i32 %i.b, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !48
  %i.d = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !tbaa !32
  %i.h = inttoptr i64 %i.g to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.k = add i64 %2, 1
  %i.l = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.k) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %1, i64 %2, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %2
  store i8 0, ptr %i.m, align 1, !tbaa !22
  %i.n = ptrtoint ptr %i.l to i64
  store i64 %i.n, ptr %i.d, align 8, !tbaa !32
  %i.o = load i8, ptr %1, align 1, !tbaa !22
  %i.p = icmp eq i8 %i.o, 64
  %i.q = select i1 %i.p, i32 284, i32 281         ; 2 uses
  store i32 %i.q, ptr %i.e, align 4, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn27 = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  %.pn25 = phi i32 [ %i.f, %bb.b ], [ %i.q, %bb.c ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i32 } poison, ptr %.pn27, 0
  %.pn = insertvalue { ptr, i32 } %.fca.0.insert.i.pn, i32 %.pn25, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret { ptr, i32 } %.pn
}

declare noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i32 } @_ZNK4Luau12AstNameTable11getWithTypeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::AstNameTable::Entry", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %1, ptr %3, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = trunc i64 %2 to i32
  store i32 %i.b, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !48
  %i.d = call noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.not.not = icmp eq ptr %i.d, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i64, ptr %i.d, align 8, !tbaa !32
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.e, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.010.1 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %.sroa.3.1 = phi i32 [ %i.h, %bb.b ], [ 281, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.010.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN4Luau12AstNameTable8getOrAddEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"struct.Luau::AstNameTable::Entry", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %1, ptr %3, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = trunc i64 %2 to i32
  store i32 %i.b, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !48
  %i.d = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.d, align 8, !tbaa !32
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.k = add i64 %2, 1
  %i.l = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef %i.k) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %1, i64 %2, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %2
  store i8 0, ptr %i.m, align 1, !tbaa !22
  %i.n = ptrtoint ptr %i.l to i64
  store i64 %i.n, ptr %i.d, align 8, !tbaa !32
  %i.o = load i8, ptr %1, align 1, !tbaa !22
  %i.p = icmp eq i8 %i.o, 64
  %i.q = select i1 %i.p, i32 284, i32 281
  store i32 %i.q, ptr %i.e, align 4, !tbaa !48
  br label %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit

_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit: ; preds = %bb.b, %bb.c
  %.pn27.i = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret ptr %.pn27.i
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN4Luau12AstNameTable8getOrAddEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.Luau::AstNameTable::Entry", align 8 ; 6 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %1, ptr %2, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = trunc i64 %i.a to i32
  store i32 %i.c, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !48
  %i.e = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !48
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.e, align 8, !tbaa !32
  %i.i = inttoptr i64 %i.h to ptr
  br label %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53, !nonnull !54, !align !55
  %i.l = add i64 %i.a, 1
  %i.m = call noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %i.l) ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.a
  store i8 0, ptr %i.n, align 1, !tbaa !22
  %i.o = ptrtoint ptr %i.m to i64
  store i64 %i.o, ptr %i.e, align 8, !tbaa !32
  %i.p = load i8, ptr %1, align 1, !tbaa !22
  %i.q = icmp eq i8 %i.p, 64
  %i.r = select i1 %i.q, i32 284, i32 281
  store i32 %i.r, ptr %i.f, align 4, !tbaa !48
  br label %_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit

_ZN4Luau12AstNameTable16getOrAddWithTypeEPKcm.exit: ; preds = %bb.b, %bb.c
  %.pn27.i = phi ptr [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %.pn27.i
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZNK4Luau12AstNameTable3getEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"struct.Luau::AstNameTable::Entry", align 8 ; 6 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %1, ptr %2, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = trunc i64 %i.a to i32
  store i32 %i.c, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !48
  %i.e = call noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE4findERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.not.not.i = icmp eq ptr %i.e, null
  br i1 %.not.not.i, label %_ZNK4Luau12AstNameTable11getWithTypeEPKcm.exit, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_:bb.a
  %i.ac = sext i1 %i.ab to i32
  %i.ad = xor i32 %.08.i.ph, %i.ac
  br label %_ZN4Luau5Lexer17skipLongSeparatorEv.exit

_ZN4Luau5Lexer17skipLongSeparatorEv.exit:         ; preds = %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.loopexit, %_ZNK4Luau5Lexer6peekchEv.exit5.i
  %i.ae = phi i32 [ %i.p, %_ZNK4Luau5Lexer6peekchEv.exit5.i ], [ %.ph, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.loopexit ] ; 3 uses
  %i.af = phi i32 [ -1, %_ZNK4Luau5Lexer6peekchEv.exit5.i ], [ %i.ad, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit.loopexit ]
  %i.ag = icmp eq i32 %i.af, %3
  br i1 %i.ag, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN4Luau5Lexer17skipLongSeparatorEv.exit
  %i.ah = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !65
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !67
  %i.aj = sub i32 %i.ah, %i.ai
  %.sroa.417.0.insert.ext = zext i32 %i.aj to i64
  %.sroa.417.0.insert.shift = shl nuw i64 %.sroa.417.0.insert.ext, 32
  %.sroa.016.0.insert.ext = zext i32 %i.k to i64
  %.sroa.016.0.insert.insert = or disjoint i64 %.sroa.417.0.insert.shift, %.sroa.016.0.insert.ext
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.al = add i32 %i.c, %3
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %i.ae, %i.am
  br label %bb.f

._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge:     ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9
  %.pre23 = add i32 %i.m, 1
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit

bb.d:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9
  %i.ao = add i32 %i.k, 1                         ; 2 uses
  store i32 %i.ao, ptr %i.i, align 4, !tbaa !66
  %i.ap = add i32 %i.m, 1                         ; 2 uses
  store i32 %i.ap, ptr %i.j, align 8, !tbaa !67
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit

_ZN4Luau5Lexer10consumeAnyEv.exit:                ; preds = %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge, %bb.d
  %.pre-phi = phi i32 [ %.pre23, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge ], [ %i.ap, %bb.d ] ; 2 uses
  %i.aq = phi i32 [ %i.k, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge ], [ %i.ao, %bb.d ]
  store i32 %.pre-phi, ptr %i.a, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau5Lexer17skipLongSeparatorEv.exit, %_ZN4Luau5Lexer10consumeAnyEv.exit
  %i.ar = phi i32 [ %i.k, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit ], [ %i.aq, %_ZN4Luau5Lexer10consumeAnyEv.exit ] ; 2 uses
  %i.as = phi i32 [ %i.ae, %_ZN4Luau5Lexer17skipLongSeparatorEv.exit ], [ %.pre-phi, %_ZN4Luau5Lexer10consumeAnyEv.exit ] ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = icmp ugt i64 %i.e, %i.at
  br i1 %i.au, label %_ZNK4Luau5Lexer6peekchEv.exit9, label %_ZNK4Luau5Lexer6peekchEv.exit9.thread, !llvm.loop !3

_ZNK4Luau5Lexer6peekchEv.exit9.thread:            ; preds = %bb.e, %_ZNK4Luau5Lexer6peekchEv.exit9, %._ZNK4Luau5Lexer6peekchEv.exit9.thread_crit_edge
  %i.av = phi i32 [ %.pre, %._ZNK4Luau5Lexer6peekchEv.exit9.thread_crit_edge ], [ %i.ar, %bb.e ], [ %i.k, %_ZNK4Luau5Lexer6peekchEv.exit9 ]
  %.lcssa = phi i32 [ %i.c, %._ZNK4Luau5Lexer6peekchEv.exit9.thread_crit_edge ], [ %i.as, %bb.e ], [ %i.m, %_ZNK4Luau5Lexer6peekchEv.exit9 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !67
  %i.ay = sub i32 %.lcssa, %i.ax
  %.sroa.415.0.insert.ext = zext i32 %i.ay to i64
  %.sroa.415.0.insert.shift = shl nuw i64 %.sroa.415.0.insert.ext, 32
  %.sroa.014.0.insert.ext = zext i32 %i.av to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.415.0.insert.shift, %.sroa.014.0.insert.ext
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit9.thread, %bb.c
  %.sink40 = phi i32 [ %5, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ], [ %4, %bb.c ]
  %.sroa.014.0.insert.insert.sink = phi i64 [ %.sroa.014.0.insert.insert, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ], [ %.sroa.016.0.insert.insert, %bb.c ]
  %.sink36 = phi i32 [ 0, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ], [ %i.an, %bb.c ]
  %.sink = phi ptr [ null, %_ZNK4Luau5Lexer6peekchEv.exit9.thread ], [ %i.ak, %bb.c ]
  %.sink38 = load i64, ptr %2, align 4
  store i32 %.sink40, ptr %0, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sink38, ptr %i.az, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.014.0.insert.insert.sink, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink36, ptr %i.ba, align 4, !tbaa !21
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.bb, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau5Lexer21readBackslashInStringEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65   ; 6 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !65
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64   ; 4 uses
  %i.g = icmp ugt i64 %i.f, %i.d
  br i1 %i.g, label %_ZNK4Luau5Lexer6peekchEv.exit2, label %_ZN4Luau7isSpaceEc.exit

_ZNK4Luau5Lexer6peekchEv.exit2:                   ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  switch i8 %i.j, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge [
    i8 13, label %bb.b
    i8 0, label %_ZN4Luau7isSpaceEc.exit
    i8 122, label %bb.c
    i8 10, label %bb.e
  ]

bb.b:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2
  %i.k = add i32 %i.b, 2                          ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !65
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %_ZNK4Luau5Lexer6peekchEv.exit1, label %_ZN4Luau7isSpaceEc.exit

_ZNK4Luau5Lexer6peekchEv.exit1:                   ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !22
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %_ZN4Luau5Lexer10consumeAnyEv.exit4, label %_ZN4Luau7isSpaceEc.exit

_ZN4Luau5Lexer10consumeAnyEv.exit4:               ; preds = %_ZNK4Luau5Lexer6peekchEv.exit1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !66
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !66
  %i.t = add i32 %i.b, 3                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.t, ptr %i.u, align 8, !tbaa !67
  br label %_ZN4Luau7isSpaceEc.exit.sink.split

bb.c:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2
  %i.v = add i32 %i.b, 2                          ; 3 uses
  store i32 %i.v, ptr %i.a, align 8, !tbaa !65
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp ugt i64 %i.f, %i.w
  br i1 %i.x, label %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph, label %_ZN4Luau7isSpaceEc.exit

_ZNK4Luau5Lexer6peekchEv.exit.lr.ph:              ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted = load i32, ptr %i.y, align 4
  br label %_ZNK4Luau5Lexer6peekchEv.exit

_ZNK4Luau5Lexer6peekchEv.exit:                    ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph, %_ZN4Luau5Lexer10consumeAnyEv.exit3
  %i.aa = phi i32 [ %.promoted, %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph ], [ %i.ag, %_ZN4Luau5Lexer10consumeAnyEv.exit3 ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph ], [ %i.ah, %_ZN4Luau5Lexer10consumeAnyEv.exit3 ]
  %storemerge5 = phi i32 [ %i.v, %_ZNK4Luau5Lexer6peekchEv.exit.lr.ph ], [ %.pre-phi9, %_ZN4Luau5Lexer10consumeAnyEv.exit3 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !22
  switch i8 %i.ad, label %_ZN4Luau7isSpaceEc.exit [
    i8 10, label %bb.d
    i8 9, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge
    i8 11, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge
    i8 12, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge
    i8 13, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge
    i8 32, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge
  ]

._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge:    ; preds = %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit
  %.pre8 = add i32 %storemerge5, 1
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit3

bb.d:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit
  %i.ae = add i32 %i.aa, 1                        ; 2 uses
  store i32 %i.ae, ptr %i.y, align 4, !tbaa !66
  %i.af = add i32 %storemerge5, 1                 ; 2 uses
  store i32 %i.af, ptr %i.z, align 8, !tbaa !67
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit3

_ZN4Luau5Lexer10consumeAnyEv.exit3:               ; preds = %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge, %bb.d
  %.pre-phi9 = phi i32 [ %.pre8, %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge ], [ %i.af, %bb.d ] ; 3 uses
  %i.ag = phi i32 [ %i.aa, %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge ], [ %i.ae, %bb.d ]
  store i32 %.pre-phi9, ptr %i.a, align 8, !tbaa !65
  %i.ah = zext i32 %.pre-phi9 to i64              ; 2 uses
  %i.ai = icmp ugt i64 %i.f, %i.ah
  br i1 %i.ai, label %_ZNK4Luau5Lexer6peekchEv.exit, label %_ZN4Luau7isSpaceEc.exit, !llvm.loop !4

._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge:     ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2
  %.pre6 = add i32 %i.b, 2
  br label %_ZN4Luau7isSpaceEc.exit.sink.split

bb.e:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !66
  %i.am = add i32 %i.b, 2                         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.am, ptr %i.an, align 8, !tbaa !67
  br label %_ZN4Luau7isSpaceEc.exit.sink.split

_ZN4Luau7isSpaceEc.exit.sink.split:               ; preds = %bb.e, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge, %_ZN4Luau5Lexer10consumeAnyEv.exit4
  %.sink = phi i32 [ %i.t, %_ZN4Luau5Lexer10consumeAnyEv.exit4 ], [ %.pre6, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge ], [ %i.am, %bb.e ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !65
  br label %_ZN4Luau7isSpaceEc.exit

_ZN4Luau7isSpaceEc.exit:                          ; preds = %_ZN4Luau5Lexer10consumeAnyEv.exit3, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZN4Luau7isSpaceEc.exit.sink.split, %_ZNK4Luau5Lexer6peekchEv.exit2, %bb.c, %bb.b, %bb.a, %_ZNK4Luau5Lexer6peekchEv.exit1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau5Lexer16readQuotedStringEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::Lexeme") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67   ; 3 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64   ; 7 uses
  %i.j = icmp ugt i64 %i.i, %i.g
  br i1 %i.j, label %bb.b, label %_ZNK4Luau5Lexer6peekchEv.exit4

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.m = load i8, ptr %i.l, align 1, !tbaa !22
  br label %_ZNK4Luau5Lexer6peekchEv.exit4

_ZNK4Luau5Lexer6peekchEv.exit4:                   ; preds = %bb.a, %bb.b
  %i.n = phi i8 [ %i.m, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.o = add i32 %i.d, 1                          ; 4 uses
  store i32 %i.o, ptr %i.c, align 8, !tbaa !65
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = icmp ugt i64 %i.i, %i.p
  br i1 %i.q, label %_ZNK4Luau5Lexer6peekchEv.exit3.lr.ph, label %_ZNK4Luau5Lexer6peekchEv.exit3.thread

_ZNK4Luau5Lexer6peekchEv.exit3.lr.ph:             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit4
  %i.r = load ptr, ptr %1, align 8, !tbaa !63     ; 6 uses
  br label %_ZNK4Luau5Lexer6peekchEv.exit3

_ZNK4Luau5Lexer6peekchEv.exit3:                   ; preds = %_ZNK4Luau5Lexer6peekchEv.exit3.lr.ph, %_ZN4Luau5Lexer21readBackslashInStringEv.exit
  %i.s = phi i32 [ %i.f, %_ZNK4Luau5Lexer6peekchEv.exit3.lr.ph ], [ %i.bh, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 12 uses
  %2 = phi i32 [ %i.b, %_ZNK4Luau5Lexer6peekchEv.exit3.lr.ph ], [ %.promoted.i26, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 14 uses
  %i.t = phi i32 [ %i.b, %_ZNK4Luau5Lexer6peekchEv.exit3.lr.ph ], [ %i.bi, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 8 uses
  %3 = phi i64 [ %i.p, %_ZNK4Luau5Lexer6peekchEv.exit3.lr.ph ], [ %i.bk, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 2 uses
  %i.u = phi i32 [ %i.o, %_ZNK4Luau5Lexer6peekchEv.exit3.lr.ph ], [ %i.bj, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22
  %.not = icmp eq i8 %i.w, %i.n
  br i1 %.not, label %.loopexit, label %_ZNK4Luau5Lexer6peekchEv.exit

_ZNK4Luau5Lexer6peekchEv.exit3.thread:            ; preds = %_ZN4Luau5Lexer21readBackslashInStringEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit4
  %i.x = phi i32 [ %i.f, %_ZNK4Luau5Lexer6peekchEv.exit4 ], [ %i.bh, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 2 uses
  %i.y = phi i32 [ %i.b, %_ZNK4Luau5Lexer6peekchEv.exit4 ], [ %.promoted.i26, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 2 uses
  %.lcssa = phi i32 [ %i.o, %_ZNK4Luau5Lexer6peekchEv.exit4 ], [ %i.bj, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 2 uses
  %.not17 = icmp eq i8 %i.n, 0
  br i1 %.not17, label %_ZNK4Luau5Lexer6peekchEv.exit3.thread..loopexit_crit_edge, label %_ZNK4Luau5Lexer6peekchEv.exit.thread

_ZNK4Luau5Lexer6peekchEv.exit3.thread..loopexit_crit_edge: ; preds = %_ZNK4Luau5Lexer6peekchEv.exit3.thread
  %.pre = load ptr, ptr %1, align 8, !tbaa !63
  br label %.loopexit

_ZNK4Luau5Lexer6peekchEv.exit:                    ; preds = %_ZNK4Luau5Lexer6peekchEv.exit3
  %4 = getelementptr inbounds nuw i8, ptr %i.r, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !22
  switch i8 %5, label %bb.h [
    i8 0, label %_ZNK4Luau5Lexer6peekchEv.exit.thread
    i8 13, label %_ZNK4Luau5Lexer6peekchEv.exit.thread
    i8 10, label %_ZNK4Luau5Lexer6peekchEv.exit.thread
    i8 92, label %bb.c
  ]

_ZNK4Luau5Lexer6peekchEv.exit.thread:             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit3.thread
  %i.z = phi i32 [ %i.x, %_ZNK4Luau5Lexer6peekchEv.exit3.thread ], [ %i.s, %_ZNK4Luau5Lexer6peekchEv.exit ], [ %i.s, %_ZNK4Luau5Lexer6peekchEv.exit ], [ %i.s, %_ZNK4Luau5Lexer6peekchEv.exit ]
  %i.aa = phi i32 [ %i.y, %_ZNK4Luau5Lexer6peekchEv.exit3.thread ], [ %2, %_ZNK4Luau5Lexer6peekchEv.exit ], [ %2, %_ZNK4Luau5Lexer6peekchEv.exit ], [ %2, %_ZNK4Luau5Lexer6peekchEv.exit ]
  %i.ab = phi i32 [ %.lcssa, %_ZNK4Luau5Lexer6peekchEv.exit3.thread ], [ %i.u, %_ZNK4Luau5Lexer6peekchEv.exit ], [ %i.u, %_ZNK4Luau5Lexer6peekchEv.exit ], [ %i.u, %_ZNK4Luau5Lexer6peekchEv.exit ]
  %i.ac = sub i32 %i.ab, %i.z
  %.sroa.414.0.insert.ext = zext i32 %i.ac to i64
  %.sroa.414.0.insert.shift = shl nuw i64 %.sroa.414.0.insert.ext, 32
  %.sroa.013.0.insert.ext = zext i32 %i.aa to i64
  %.sroa.013.0.insert.insert = or disjoint i64 %.sroa.414.0.insert.shift, %.sroa.013.0.insert.ext
  br label %bb.i

bb.c:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit
  %i.ad = add i32 %i.u, 1                         ; 4 uses
  store i32 %i.ad, ptr %i.c, align 8, !tbaa !65
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp ugt i64 %i.i, %i.ae
  br i1 %i.af, label %_ZNK4Luau5Lexer6peekchEv.exit2.i, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZNK4Luau5Lexer6peekchEv.exit2.i:                 ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  switch i8 %i.ah, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i [
    i8 13, label %bb.d
    i8 0, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit
    i8 122, label %bb.e
    i8 10, label %bb.g
  ]

bb.d:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2.i
  %i.ai = add i32 %i.u, 2                         ; 4 uses
  store i32 %i.ai, ptr %i.c, align 8, !tbaa !65
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = icmp ugt i64 %i.i, %i.aj
  br i1 %i.ak, label %_ZNK4Luau5Lexer6peekchEv.exit1.i, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZNK4Luau5Lexer6peekchEv.exit1.i:                 ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aj
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22
  %i.an = icmp eq i8 %i.am, 10
  br i1 %i.an, label %_ZN4Luau5Lexer10consumeAnyEv.exit4.i, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZN4Luau5Lexer10consumeAnyEv.exit4.i:             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit1.i
  %i.ao = add i32 %2, 1                           ; 3 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !66
  %i.ap = add i32 %i.u, 3                         ; 3 uses
  store i32 %i.ap, ptr %i.e, align 8, !tbaa !67
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split

bb.e:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2.i
  %i.aq = add i32 %i.u, 2                         ; 4 uses
  store i32 %i.aq, ptr %i.c, align 8, !tbaa !65
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp ugt i64 %i.i, %i.ar
  br i1 %i.as, label %_ZNK4Luau5Lexer6peekchEv.exit.i, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZNK4Luau5Lexer6peekchEv.exit.i:                  ; preds = %bb.e, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i
  %i.at = phi i32 [ %i.ba, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %i.s, %bb.e ] ; 2 uses
  %.promoted.i28 = phi i32 [ %.promoted.i29, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %2, %bb.e ] ; 2 uses
  %i.au = phi i32 [ %i.bb, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %2, %bb.e ] ; 3 uses
  %i.av = phi i64 [ %i.bc, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %i.ar, %bb.e ]
  %storemerge5.i = phi i32 [ %.pre-phi9.i, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %i.aq, %bb.e ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !22
  switch i8 %i.ax, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit [
    i8 10, label %bb.f
    i8 9, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
    i8 11, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
    i8 12, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
    i8 13, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
    i8 32, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
  ]

._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i:  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZNK4Luau5Lexer6peekchEv.exit.i
  %.pre8.i = add i32 %storemerge5.i, 1
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit3.i

bb.f:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.i
  %i.ay = add i32 %i.au, 1                        ; 3 uses
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !66
  %i.az = add i32 %storemerge5.i, 1               ; 3 uses
  store i32 %i.az, ptr %i.e, align 8, !tbaa !67
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit3.i

_ZN4Luau5Lexer10consumeAnyEv.exit3.i:             ; preds = %bb.f, %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
  %i.ba = phi i32 [ %i.at, %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i ], [ %i.az, %bb.f ] ; 2 uses
  %.promoted.i29 = phi i32 [ %.promoted.i28, %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i ], [ %i.ay, %bb.f ] ; 2 uses
  %.pre-phi9.i = phi i32 [ %.pre8.i, %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i ], [ %i.az, %bb.f ] ; 4 uses
  %i.bb = phi i32 [ %i.au, %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i ], [ %i.ay, %bb.f ] ; 2 uses
  store i32 %.pre-phi9.i, ptr %i.c, align 8, !tbaa !65
  %i.bc = zext i32 %.pre-phi9.i to i64            ; 2 uses
  %i.bd = icmp ugt i64 %i.i, %i.bc
  br i1 %i.bd, label %_ZNK4Luau5Lexer6peekchEv.exit.i, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit, !llvm.loop !4

._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i:   ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2.i
  %.pre6.i = add i32 %i.u, 2
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split

bb.g:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2.i
  %i.be = add i32 %i.t, 1                         ; 3 uses
  store i32 %i.be, ptr %i.a, align 4, !tbaa !66
  %i.bf = add i32 %i.u, 2                         ; 3 uses
  store i32 %i.bf, ptr %i.e, align 8, !tbaa !67
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split

bb.h:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit
  %i.bg = add i32 %i.u, 1
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split

_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split: ; preds = %_ZN4Luau5Lexer10consumeAnyEv.exit4.i, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i, %bb.g, %bb.h
  %.sink.i.sink = phi i32 [ %i.bg, %bb.h ], [ %i.ap, %_ZN4Luau5Lexer10consumeAnyEv.exit4.i ], [ %.pre6.i, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i ], [ %i.bf, %bb.g ] ; 2 uses
  %.ph = phi i32 [ %i.s, %bb.h ], [ %i.ap, %_ZN4Luau5Lexer10consumeAnyEv.exit4.i ], [ %i.s, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i ], [ %i.bf, %bb.g ]
  %.promoted.i26.ph = phi i32 [ %2, %bb.h ], [ %i.ao, %_ZN4Luau5Lexer10consumeAnyEv.exit4.i ], [ %2, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i ], [ %i.be, %bb.g ]
  %.ph50 = phi i32 [ %i.t, %bb.h ], [ %i.ao, %_ZN4Luau5Lexer10consumeAnyEv.exit4.i ], [ %i.t, %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i ], [ %i.be, %bb.g ]
  store i32 %.sink.i.sink, ptr %i.c, align 8, !tbaa !65
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZN4Luau5Lexer21readBackslashInStringEv.exit:     ; preds = %_ZN4Luau5Lexer10consumeAnyEv.exit3.i, %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split, %bb.e, %_ZNK4Luau5Lexer6peekchEv.exit1.i, %bb.d, %_ZNK4Luau5Lexer6peekchEv.exit2.i, %bb.c
  %i.bh = phi i32 [ %i.s, %bb.c ], [ %.ph, %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split ], [ %i.s, %bb.e ], [ %i.s, %_ZNK4Luau5Lexer6peekchEv.exit1.i ], [ %i.s, %bb.d ], [ %i.s, %_ZNK4Luau5Lexer6peekchEv.exit2.i ], [ %i.at, %_ZNK4Luau5Lexer6peekchEv.exit.i ], [ %i.ba, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ] ; 2 uses
  %.promoted.i26 = phi i32 [ %2, %bb.c ], [ %.promoted.i26.ph, %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split ], [ %2, %bb.e ], [ %2, %_ZNK4Luau5Lexer6peekchEv.exit1.i ], [ %2, %bb.d ], [ %2, %_ZNK4Luau5Lexer6peekchEv.exit2.i ], [ %.promoted.i28, %_ZNK4Luau5Lexer6peekchEv.exit.i ], [ %.promoted.i29, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ] ; 2 uses
  %i.bi = phi i32 [ %i.t, %bb.c ], [ %.ph50, %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split ], [ %i.t, %bb.e ], [ %i.t, %_ZNK4Luau5Lexer6peekchEv.exit1.i ], [ %i.t, %bb.d ], [ %i.t, %_ZNK4Luau5Lexer6peekchEv.exit2.i ], [ %i.au, %_ZNK4Luau5Lexer6peekchEv.exit.i ], [ %i.bb, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ]
  %i.bj = phi i32 [ %i.ad, %bb.c ], [ %.sink.i.sink, %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split ], [ %i.aq, %bb.e ], [ %i.ai, %_ZNK4Luau5Lexer6peekchEv.exit1.i ], [ %i.ai, %bb.d ], [ %i.ad, %_ZNK4Luau5Lexer6peekchEv.exit2.i ], [ %storemerge5.i, %_ZNK4Luau5Lexer6peekchEv.exit.i ], [ %.pre-phi9.i, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ] ; 3 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = icmp ugt i64 %i.i, %i.bk
  br i1 %i.bl, label %_ZNK4Luau5Lexer6peekchEv.exit3, label %_ZNK4Luau5Lexer6peekchEv.exit3.thread, !llvm.loop !97

.loopexit:                                        ; preds = %_ZNK4Luau5Lexer6peekchEv.exit3, %_ZNK4Luau5Lexer6peekchEv.exit3.thread..loopexit_crit_edge
  %i.bm = phi ptr [ %.pre, %_ZNK4Luau5Lexer6peekchEv.exit3.thread..loopexit_crit_edge ], [ %i.r, %_ZNK4Luau5Lexer6peekchEv.exit3 ]
  %i.bn = phi i32 [ %i.x, %_ZNK4Luau5Lexer6peekchEv.exit3.thread..loopexit_crit_edge ], [ %i.s, %_ZNK4Luau5Lexer6peekchEv.exit3 ]
  %i.bo = phi i32 [ %i.y, %_ZNK4Luau5Lexer6peekchEv.exit3.thread..loopexit_crit_edge ], [ %2, %_ZNK4Luau5Lexer6peekchEv.exit3 ]
  %i.bp = phi i32 [ %.lcssa, %_ZNK4Luau5Lexer6peekchEv.exit3.thread..loopexit_crit_edge ], [ %i.u, %_ZNK4Luau5Lexer6peekchEv.exit3 ] ; 2 uses
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bq, ptr %i.c, align 8, !tbaa !65
  %i.br = sub i32 %i.bq, %i.bn
  %.sroa.412.0.insert.ext = zext i32 %i.br to i64
  %.sroa.412.0.insert.shift = shl nuw i64 %.sroa.412.0.insert.ext, 32
  %.sroa.011.0.insert.ext = zext i32 %i.bo to i64
  %.sroa.011.0.insert.insert = or disjoint i64 %.sroa.412.0.insert.shift, %.sroa.011.0.insert.ext
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.p
  %i.bt = xor i32 %i.d, -1
  %i.bu = add i32 %i.bp, %i.bt
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %_ZNK4Luau5Lexer6peekchEv.exit.thread
  %.sink56 = phi i32 [ 279, %.loopexit ], [ 286, %_ZNK4Luau5Lexer6peekchEv.exit.thread ]
  %.sroa.011.0.insert.insert.sink = phi i64 [ %.sroa.011.0.insert.insert, %.loopexit ], [ %.sroa.013.0.insert.insert, %_ZNK4Luau5Lexer6peekchEv.exit.thread ]
  %.sink53 = phi i32 [ %i.bu, %.loopexit ], [ 0, %_ZNK4Luau5Lexer6peekchEv.exit.thread ]
  %.sink = phi ptr [ %i.bs, %.loopexit ], [ null, %_ZNK4Luau5Lexer6peekchEv.exit.thread ]
  %i.bv = sub i32 %i.d, %i.f
  %.sroa.416.0.insert.ext = zext i32 %i.bv to i64
  %.sroa.416.0.insert.shift = shl nuw i64 %.sroa.416.0.insert.ext, 32
  %.sroa.015.0.insert.ext = zext i32 %i.b to i64
  %.sroa.015.0.insert.insert = or disjoint i64 %.sroa.416.0.insert.shift, %.sroa.015.0.insert.ext
  store i32 %.sink56, ptr %0, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %.sroa.015.0.insert.insert, ptr %i.bw, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.011.0.insert.insert.sink, ptr %.sroa.4.0..sroa_idx, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sink53, ptr %i.bx, align 4, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink, ptr %i.by, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau5Lexer27readInterpolatedStringBeginEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::Lexeme") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !66
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67
  %i.g = sub i32 %i.d, %i.f
  %.sroa.4.0.insert.ext = zext i32 %i.g to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.b to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %i.h = add i32 %i.d, 1
  store i32 %i.h, ptr %i.c, align 8, !tbaa !65
  tail call void @_ZN4Luau5Lexer29readInterpolatedStringSectionENS_8PositionENS_6Lexeme4TypeES3_(ptr dead_on_unwind writable sret(%"struct.Luau::Lexeme") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %.sroa.0.0.insert.insert, i32 noundef 266, i32 noundef 269)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau5Lexer29readInterpolatedStringSectionENS_8PositionENS_6Lexeme4TypeES3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Luau::Lexeme") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %1, i64 %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 8 uses
  %i.e = zext i32 %i.b to i64                     ; 5 uses
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %_ZNK4Luau5Lexer6peekchEv.exit8.lr.ph, label %._ZNK4Luau5Lexer6peekchEv.exit.thread_crit_edge

._ZNK4Luau5Lexer6peekchEv.exit.thread_crit_edge:  ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.pre52 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !66
  br label %_ZNK4Luau5Lexer6peekchEv.exit.thread

_ZNK4Luau5Lexer6peekchEv.exit8.lr.ph:             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !63     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %.promoted46 = load i32, ptr %i.h, align 4
  br label %_ZNK4Luau5Lexer6peekchEv.exit8

_ZNK4Luau5Lexer6peekchEv.exit8:                   ; preds = %_ZNK4Luau5Lexer6peekchEv.exit8.lr.ph, %_ZN4Luau5Lexer21readBackslashInStringEv.exit
  %i.j = phi i32 [ %.promoted46, %_ZNK4Luau5Lexer6peekchEv.exit8.lr.ph ], [ %i.df, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 16 uses
  %i.k = phi i64 [ %i.e, %_ZNK4Luau5Lexer6peekchEv.exit8.lr.ph ], [ %i.dh, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ]
  %i.l = phi i32 [ %i.b, %_ZNK4Luau5Lexer6peekchEv.exit8.lr.ph ], [ %i.dg, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ] ; 15 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22
  switch i8 %i.n, label %bb.p [
    i8 96, label %bb.q
    i8 0, label %_ZNK4Luau5Lexer6peekchEv.exit.thread
    i8 13, label %_ZNK4Luau5Lexer6peekchEv.exit.thread
    i8 10, label %_ZNK4Luau5Lexer6peekchEv.exit.thread
    i8 92, label %bb.b
    i8 123, label %bb.i
  ]

_ZNK4Luau5Lexer6peekchEv.exit.thread:             ; preds = %_ZN4Luau5Lexer21readBackslashInStringEv.exit, %_ZNK4Luau5Lexer6peekchEv.exit8, %_ZNK4Luau5Lexer6peekchEv.exit8, %_ZNK4Luau5Lexer6peekchEv.exit8, %._ZNK4Luau5Lexer6peekchEv.exit.thread_crit_edge
  %i.o = phi i32 [ %.pre52, %._ZNK4Luau5Lexer6peekchEv.exit.thread_crit_edge ], [ %i.df, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ], [ %i.j, %_ZNK4Luau5Lexer6peekchEv.exit8 ], [ %i.j, %_ZNK4Luau5Lexer6peekchEv.exit8 ], [ %i.j, %_ZNK4Luau5Lexer6peekchEv.exit8 ]
  %.lcssa38 = phi i32 [ %i.b, %._ZNK4Luau5Lexer6peekchEv.exit.thread_crit_edge ], [ %i.dg, %_ZN4Luau5Lexer21readBackslashInStringEv.exit ], [ %i.l, %_ZNK4Luau5Lexer6peekchEv.exit8 ], [ %i.l, %_ZNK4Luau5Lexer6peekchEv.exit8 ], [ %i.l, %_ZNK4Luau5Lexer6peekchEv.exit8 ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !67
  %i.r = sub i32 %.lcssa38, %i.q
  %.sroa.433.0.insert.ext = zext i32 %i.r to i64
  %.sroa.433.0.insert.shift = shl nuw i64 %.sroa.433.0.insert.ext, 32
  %.sroa.032.0.insert.ext = zext i32 %i.o to i64
  %.sroa.032.0.insert.insert = or disjoint i64 %.sroa.433.0.insert.shift, %.sroa.032.0.insert.ext
  store i32 286, ptr %0, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 %2, ptr %i.s, align 4
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 %.sroa.032.0.insert.insert, ptr %.sroa.421.0..sroa_idx, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.t, align 4, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !22
  br label %bb.r

bb.b:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit8
  %i.v = add i32 %i.l, 1                          ; 4 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = icmp ugt i64 %i.d, %i.w
  br i1 %i.x, label %_ZNK4Luau5Lexer6peekchEj.exit10, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split

_ZNK4Luau5Lexer6peekchEj.exit10:                  ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.w ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = icmp eq i8 %i.z, 117
  br i1 %i.aa, label %bb.c, label %_ZNK4Luau5Lexer6peekchEv.exit2.i

bb.c:                                             ; preds = %_ZNK4Luau5Lexer6peekchEj.exit10
  %i.ab = add i32 %i.l, 2
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp ugt i64 %i.d, %i.ac
  br i1 %i.ad, label %_ZNK4Luau5Lexer6peekchEj.exit9, label %_ZNK4Luau5Lexer6peekchEv.exit2.i

_ZNK4Luau5Lexer6peekchEj.exit9:                   ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22
  %i.ag = icmp eq i8 %i.af, 123
  br i1 %i.ag, label %bb.d, label %_ZNK4Luau5Lexer6peekchEv.exit2.i

bb.d:                                             ; preds = %_ZNK4Luau5Lexer6peekchEj.exit9
  %i.ah = add i32 %i.l, 3
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split

_ZNK4Luau5Lexer6peekchEv.exit2.i:                 ; preds = %bb.c, %_ZNK4Luau5Lexer6peekchEj.exit9, %_ZNK4Luau5Lexer6peekchEj.exit10
  store i32 %i.v, ptr %i.a, align 8, !tbaa !65
  %i.ai = load i8, ptr %i.y, align 1, !tbaa !22
  switch i8 %i.ai, label %._ZN4Luau5Lexer10consumeAnyEv.exit_crit_edge.i [
    i8 13, label %bb.e
    i8 0, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit
    i8 122, label %bb.f
    i8 10, label %bb.h
  ]

bb.e:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2.i
  %i.aj = add i32 %i.l, 2                         ; 4 uses
  store i32 %i.aj, ptr %i.a, align 8, !tbaa !65
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp ugt i64 %i.d, %i.ak
  br i1 %i.al, label %_ZNK4Luau5Lexer6peekchEv.exit1.i, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZNK4Luau5Lexer6peekchEv.exit1.i:                 ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ao = icmp eq i8 %i.an, 10
  br i1 %i.ao, label %_ZN4Luau5Lexer10consumeAnyEv.exit4.i, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZN4Luau5Lexer10consumeAnyEv.exit4.i:             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit1.i
  %i.ap = add i32 %i.j, 1                         ; 2 uses
  store i32 %i.ap, ptr %i.h, align 4, !tbaa !66
  %i.aq = add i32 %i.l, 3                         ; 2 uses
  store i32 %i.aq, ptr %i.i, align 8, !tbaa !67
  br label %_ZN4Luau5Lexer21readBackslashInStringEv.exit.sink.split

bb.f:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit2.i
  %i.ar = add i32 %i.l, 2                         ; 4 uses
  store i32 %i.ar, ptr %i.a, align 8, !tbaa !65
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = icmp ugt i64 %i.d, %i.as
  br i1 %i.at, label %_ZNK4Luau5Lexer6peekchEv.exit.i, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit

_ZNK4Luau5Lexer6peekchEv.exit.i:                  ; preds = %bb.f, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i
  %i.au = phi i32 [ %i.bb, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %i.j, %bb.f ] ; 2 uses
  %i.av = phi i32 [ %i.bc, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %i.j, %bb.f ] ; 2 uses
  %i.aw = phi i64 [ %i.bd, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %i.as, %bb.f ]
  %storemerge5.i = phi i32 [ %.pre-phi9.i, %_ZN4Luau5Lexer10consumeAnyEv.exit3.i ], [ %i.ar, %bb.f ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22
  switch i8 %i.ay, label %_ZN4Luau5Lexer21readBackslashInStringEv.exit [
    i8 10, label %bb.g
    i8 9, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
    i8 11, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
    i8 12, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
    i8 13, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
    i8 32, label %._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i
  ]

._ZN4Luau5Lexer10consumeAnyEv.exit3_crit_edge.i:  ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZNK4Luau5Lexer6peekchEv.exit.i, %_ZNK4Luau5Lexer6peekchEv.exit.i
  %.pre8.i = add i32 %storemerge5.i, 1
  br label %_ZN4Luau5Lexer10consumeAnyEv.exit3.i

bb.g:                                             ; preds = %_ZNK4Luau5Lexer6peekchEv.exit.i
  %i.az = add i32 %i.av, 1                        ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE4findERKS3_:bb.a
  %.09.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %._crit_edge.loopexit.i.unr-lcssa ]
  %.078.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i ], [ %i.aw, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod37 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod37)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.09.i.epil = phi i64 [ %.09.i.epil.init, %.epil.preheader ], [ %i.y, %bb.c ] ; 2 uses
  %.078.i.epil = phi i32 [ %.078.i.epil.init, %.epil.preheader ], [ %i.x, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i.epil
  %i.u = load i8, ptr %i.t, align 1, !tbaa !22
  %i.v = zext i8 %i.u to i32
  %i.w = xor i32 %.078.i.epil, %i.v
  %i.x = mul i32 %i.w, 16777619                   ; 2 uses
  %i.y = add nuw nsw i64 %.09.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.c, !llvm.loop !106

._crit_edge.loopexit.i:                           ; preds = %bb.c, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.aw, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.x, %bb.c ]
  %i.z = zext i32 %.lcssa to i64
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.09.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ax, %bb.d ] ; 5 uses
  %.078.i = phi i32 [ -2128831035, %.lr.ph.i.new ], [ %i.aw, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !22
  %i.ac = zext i8 %i.ab to i32
  %i.ad = xor i32 %.078.i, %i.ac
  %i.ae = mul i32 %i.ad, 16777619
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ae, %i.ai
  %i.ak = mul i32 %i.aj, 16777619
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ao = zext i8 %i.an to i32
  %i.ap = xor i32 %i.ak, %i.ao
  %i.aq = mul i32 %i.ap, 16777619
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %.09.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22
  %i.au = zext i8 %i.at to i32
  %i.av = xor i32 %i.aq, %i.au
  %i.aw = mul i32 %i.av, 16777619                 ; 3 uses
  %i.ax = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.d, !llvm.loop !0

_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread, %._crit_edge.loopexit.i
  %.07.lcssa.i = phi i64 [ 2166136261, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread ], [ %i.z, %._crit_edge.loopexit.i ]
  %i.ay = load ptr, ptr %0, align 8, !tbaa !44
  %i.az = zext i32 %i.h to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread
  %.07.lcssa.i.pn = phi i64 [ %.07.lcssa.i, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit ], [ %i.bm, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread ]
  %.01832 = phi i64 [ 0, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit ], [ %i.bl, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread ]
  %.01933 = and i64 %.07.lcssa.i.pn, %i.p         ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.01933 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !35 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, %i.f
  br i1 %i.bd, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25: ; preds = %bb.e
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bf = load ptr, ptr %1, align 8, !tbaa !36
  %bcmp.i.i24 = tail call i32 @bcmp(ptr %i.be, ptr %i.bf, i64 %.pre-phi)
  %i.bg = icmp eq i32 %bcmp.i.i24, 0
  br i1 %i.bg, label %.thread, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread: ; preds = %bb.e, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25
  %i.bh = icmp eq i32 %i.bc, %i.h
  br i1 %i.bh, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !36
  %bcmp.i.i26 = tail call i32 @bcmp(ptr %i.bi, ptr %i.bj, i64 %i.az)
  %i.bk = icmp eq i32 %bcmp.i.i26, 0
  br i1 %i.bk, label %.thread, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25.thread, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27
  %i.bl = add i64 %.01832, 1                      ; 3 uses
  %i.bm = add i64 %i.bl, %.01933
  %.not = icmp ugt i64 %i.bl, %i.p
  br i1 %.not, label %.thread, label %bb.e, !llvm.loop !107

.thread:                                          ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit, %bb.a
  %.4 = phi ptr [ null, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit ], [ null, %bb.a ], [ %i.ba, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit25 ], [ null, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27 ], [ null, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(42) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.16.24.copyload = load ptr, ptr %i.e, align 8, !tbaa !32
  %.sroa.18.24..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.18.24.copyload = load i32, ptr %.sroa.18.24..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = shl i64 %spec.select, 4
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22 ; 6 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.h = icmp ult i64 %spec.select, 4
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.05.i.i = phi i64 [ 0, %.new ], [ %i.p, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.p = add nuw i64 %.05.i.i, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !1

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa, %bb.b
  %.05.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.p, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.05.i.i.epil = phi i64 [ %i.r, %.lr.ph.i.i.epil ], [ %.05.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.05.i.i.epil
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !50
  %i.r = add nuw i64 %.05.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !108

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !45
  br label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit, %bb.a
  %i.s = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.g, %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit.loopexit ] ; 3 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit
  %i.t = add i64 %spec.select, -1                 ; 2 uses
  %i.u = zext i32 %.sroa.18.24.copyload to i64
  %.pre29 = load ptr, ptr %0, align 8, !tbaa !44  ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEC2ERKS3_m.exit
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !111 ; 2 uses
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !111
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !30
  %.not.i11 = icmp eq ptr %.pre28, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.v = phi ptr [ %.pre29, %._crit_edge.thread ], [ %.pre28, %._crit_edge ]
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #20
  br label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.pre29, i64 %.025 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !35   ; 5 uses
  %i.z = load i32, ptr %.sroa.18.24..sroa_idx, align 8, !tbaa !35
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit, label %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge

._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge: ; preds = %bb.d
  %.pre30 = zext i32 %i.y to i64
  br label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit: ; preds = %bb.d
  %1 = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.ac = zext i32 %i.y to i64                    ; 2 uses
  %bcmp.i.i = tail call i32 @bcmp(ptr %1, ptr %i.ab, i64 %i.ac)
  %i.ad = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ad, label %bb.h, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread: ; preds = %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit
  %.pre-phi = phi i64 [ %.pre30, %._ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread_crit_edge ], [ %i.ac, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit ] ; 4 uses
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader, label %.lr.ph.i.i12.a

_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader: ; preds = %._crit_edge.loopexit.i.i, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread
  %.07.lcssa.i.pn.i.ph = phi i64 [ %i.am, %._crit_edge.loopexit.i.i ], [ 2166136261, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread ]
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i

.lr.ph.i.i12.a:                                   ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread
  %2 = load ptr, ptr %i.w, align 8, !tbaa !36     ; 5 uses
  %i.ae = add nsw i64 %.pre-phi, -1
  %xtraiter42 = and i64 %.pre-phi, 3              ; 3 uses
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.i.i12.new

.lr.ph.i.i12.new:                                 ; preds = %.lr.ph.i.i12.a
  %unroll_iter47 = and i64 %.pre-phi, 4294967292
  br label %bb.f

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.f
  %lcmp.mod44.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i12.a
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i12.a ], [ %i.bk, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i.epil.init = phi i32 [ -2128831035, %.lr.ph.i.i12.a ], [ %i.bj, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.09.i.i.epil = phi i64 [ %.09.i.i.epil.init, %.epil.preheader ], [ %i.al, %bb.e ] ; 2 uses
  %.078.i.i.epil = phi i32 [ %.078.i.i.epil.init, %.epil.preheader ], [ %i.ak, %bb.e ]
  %epil.iter43 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter43.next, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i.epil
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %.078.i.i.epil, %i.ai
  %i.ak = mul i32 %i.aj, 16777619                 ; 2 uses
  %i.al = add nuw nsw i64 %.09.i.i.epil, 1
  %epil.iter43.next = add i64 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i64 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %._crit_edge.loopexit.i.i, label %bb.e, !llvm.loop !109

._crit_edge.loopexit.i.i:                         ; preds = %bb.e, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bj, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.ak, %bb.e ]
  %i.am = zext i32 %.lcssa to i64
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i12.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i12.new ], [ %i.bk, %bb.f ] ; 5 uses
  %.078.i.i = phi i32 [ -2128831035, %.lr.ph.i.i12.new ], [ %i.bj, %bb.f ]
  %niter48 = phi i64 [ 0, %.lr.ph.i.i12.new ], [ %niter48.next.3, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !22
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %.078.i.i, %i.ap
  %i.ar = mul i32 %i.aq, 16777619
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22
  %i.av = zext i8 %i.au to i32
  %i.aw = xor i32 %i.ar, %i.av
  %i.ax = mul i32 %i.aw, 16777619
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !22
  %i.bb = zext i8 %i.ba to i32
  %i.bc = xor i32 %i.ax, %i.bb
  %i.bd = mul i32 %i.bc, 16777619
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %.09.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22
  %i.bh = zext i8 %i.bg to i32
  %i.bi = xor i32 %i.bd, %i.bh
  %i.bj = mul i32 %i.bi, 16777619                 ; 3 uses
  %i.bk = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %niter48.next.3 = add i64 %niter48, 4           ; 2 uses
  %niter48.ncmp.3 = icmp eq i64 %niter48.next.3, %unroll_iter47
  br i1 %niter48.ncmp.3, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.f, !llvm.loop !0

_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i: ; preds = %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i
  %.07.lcssa.i.pn.i = phi i64 [ %i.bv, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i ], [ %.07.lcssa.i.pn.i.ph, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader ]
  %.02033.i = phi i64 [ %i.bu, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i ], [ 0, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i.preheader ]
  %.02134.i = and i64 %.07.lcssa.i.pn.i, %i.t     ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02134.i ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !35 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, %.sroa.18.24.copyload
  br i1 %i.bo, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i: ; preds = %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !36
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.bp, ptr %.sroa.16.24.copyload, i64 %i.u)
  %i.bq = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bq, label %bb.g, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i

bb.g:                                             ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !50
  br label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.i, %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i
  %i.br = icmp eq i32 %i.bn, %i.y
  br i1 %i.br, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !36
  %3 = load ptr, ptr %i.w, align 8, !tbaa !36
  %bcmp.i.i26.i = tail call i32 @bcmp(ptr %i.bs, ptr %3, i64 %.pre-phi)
  %i.bt = icmp eq i32 %bcmp.i.i26.i, 0
  br i1 %i.bt, label %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit, label %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i

_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.thread.i: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit.thread.i
  %i.bu = add i64 %.02033.i, 1                    ; 3 uses
  %i.bv = add i64 %i.bu, %.02134.i
  %.not.i14 = icmp ule i64 %i.bu, %i.t
  tail call void @llvm.assume(i1 %.not.i14)
  br label %_ZNK4Luau12AstNameTable9EntryHashclERKNS0_5EntryE.exit.i

_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit: ; preds = %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit27.i, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !50
  br label %bb.h

bb.h:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EE13insert_unsafeERKS3_.exit, %_ZNKSt8equal_toIN4Luau12AstNameTable5EntryEEclERKS2_S5_.exit
  %i.bw = add nuw i64 %.025, 1                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.s
  br i1 %i.bx, label %bb.d, label %._crit_edge.thread, !llvm.loop !110

._crit_edge.thread:                               ; preds = %bb.h
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !111
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !30
  br label %bb.c
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { allocsize(0) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!"_ZTSN4Luau6Lexeme4TypeE", !10, i64 0}
!16 = !{!"_ZTSN4Luau8PositionE", !11, i64 0, !11, i64 4}
!17 = !{!"_ZTSN4Luau8LocationE", !16, i64 0, !16, i64 8}
!18 = !{!"_ZTSN4Luau6LexemeE", !15, i64 0, !17, i64 4, !11, i64 20, !10, i64 24}
!19 = !{!18, !15, i64 0}
!20 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14}
!21 = !{!18, !11, i64 20}
!22 = !{!10, !10, i64 0}
!23 = !{!"any pointer", !10, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"long", !10, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !27, i64 8, !10, i64 16}
!29 = !{!28, !27, i64 8}
!30 = !{!27, !27, i64 0}
!31 = !{!28, !24, i64 0}
!32 = !{!24, !24, i64 0}
!33 = !{!"_ZTSN4Luau7AstNameE", !24, i64 0}
!34 = !{!"_ZTSN4Luau12AstNameTable5EntryE", !33, i64 0, !11, i64 8, !15, i64 12}
!35 = !{!34, !11, i64 8}
!36 = !{!34, !24, i64 0}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!15, !15, i64 0}
!40 = !{!"p1 _ZTSN4Luau12AstNameTable5EntryE", !23, i64 0}
!41 = !{!"_ZTSN4Luau12AstNameTable9EntryHashE"}
!42 = !{!"_ZTSSt8equal_toIN4Luau12AstNameTable5EntryEE"}
!43 = !{!"_ZTSN4Luau6detail14DenseHashTableINS_12AstNameTable5EntryES3_S3_NS0_16ItemInterfaceSetIS3_EENS2_9EntryHashESt8equal_toIS3_EEE", !40, i64 0, !27, i64 8, !27, i64 16, !34, i64 24, !41, i64 40, !42, i64 41}
!44 = !{!43, !40, i64 0}
!45 = !{!43, !27, i64 8}
!46 = !{!"p1 _ZTSN4Luau9AllocatorE", !23, i64 0}
!47 = !{!33, !24, i64 0}
!48 = !{!34, !15, i64 12}
!49 = !{!43, !27, i64 16}
!50 = !{i64 0, i64 8, !32, i64 8, i64 4, !14, i64 12, i64 4, !39}
!51 = !{!"_ZTSN4Luau12DenseHashSetINS_12AstNameTable5EntryENS1_9EntryHashESt8equal_toIS2_EEE", !43, i64 0}
!52 = !{!"_ZTSN4Luau12AstNameTableE", !51, i64 0, !46, i64 48}
!53 = !{!52, !46, i64 48}
!54 = !{}
!55 = !{i64 8}
!56 = !{!"p1 _ZTSN4Luau12AstNameTableE", !23, i64 0}
!57 = !{!"bool", !10, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN4Luau5Lexer9BraceTypeESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN4Luau5Lexer9BraceTypeESaIS2_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN4Luau5Lexer9BraceTypeESaIS2_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN4Luau5Lexer9BraceTypeESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSN4Luau5LexerE", !24, i64 0, !27, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !18, i64 32, !17, i64 64, !56, i64 80, !57, i64 88, !57, i64 89, !61, i64 96}
!63 = !{!62, !24, i64 0}
!64 = !{!62, !27, i64 8}
!65 = !{!62, !11, i64 16}
!66 = !{!62, !11, i64 20}
!67 = !{!62, !11, i64 24}
!68 = !{!62, !57, i64 88}
!69 = !{!62, !57, i64 89}
!70 = !{i8 0, i8 2}
!71 = !{i64 0, i64 4, !39, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 24, i64 8, !22}
!72 = !{!23, !23, i64 0}
!73 = !{!"_ZTSN4Luau5Lexer9BraceTypeE", !10, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!58, !23, i64 8}
!76 = !{!58, !23, i64 0}
!77 = !{!58, !23, i64 16}
!78 = distinct !{!78, !37}
!79 = !{!46, !46, i64 0}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, !38}
!82 = !{!56, !56, i64 0}
!83 = distinct !{!83, !38}
!84 = !{!62, !15, i64 32}
!85 = distinct !{!85, !"_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_"}
!86 = distinct !{!86, !85, !"_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_: argument 0"}
!87 = distinct !{!87, !"_ZN4Luau5Lexer27readInterpolatedStringBeginEv"}
!88 = distinct !{!88, !87, !"_ZN4Luau5Lexer27readInterpolatedStringBeginEv: argument 0"}
!89 = !{!16, !11, i64 4}
!90 = !{!86}
!91 = !{!88}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !"_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_"}
!94 = distinct !{!94, !93, !"_ZN4Luau5Lexer14readLongStringERKNS_8PositionEiNS_6Lexeme4TypeES5_: argument 0"}
!95 = distinct !{!95, !38}
!96 = !{!94}
!97 = distinct !{!97, !38}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !38}
!102 = !{!62, !56, i64 80}
!103 = distinct !{!103, !38}
!104 = distinct !{!104, !38}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !37}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !37}
!109 = distinct !{!109, !37}
!110 = distinct !{!110, !38}
!111 = !{!40, !40, i64 0}
end_hunk_2
