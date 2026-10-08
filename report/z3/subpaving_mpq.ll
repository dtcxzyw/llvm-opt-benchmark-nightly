Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/subpaving_mpq?download=true
inline.NumInlined: 2438
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN9subpaving9context_tINS_10config_mpqEE13node_splitter7mk_nodeEPNS2_4nodeE:bb.a
  store i32 %i.y, ptr %i.t, align 4, !tbaa !59
  br label %_ZN6id_gen2mkEv.exit12.i

_ZN6id_gen2mkEv.exit12.i:                         ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i9.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i
  %.0.i10.i = phi i32 [ %i.w, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i ], [ %i.ab, %_ZN6vectorIjLb0EjE4backEv.exit.i9.i ]
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE4nodeC1EPS3_j(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %1, i32 noundef %.0.i10.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6id_gen2mkEv.exit12.i, %_ZN6id_gen2mkEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !177 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull %i.e), !inline_history !178
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 888 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !179 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %i.e, ptr %i.ak, align 8, !tbaa !86
  br label %_ZN9subpaving9context_tINS_10config_mpqEE7mk_nodeEPNS2_4nodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  store ptr %i.e, ptr %i.al, align 8, !tbaa !180
  br label %_ZN9subpaving9context_tINS_10config_mpqEE7mk_nodeEPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_mpqEE7mk_nodeEPNS2_4nodeE.exit: ; preds = %bb.e, %bb.f
  store ptr %i.e, ptr %i.ah, align 8, !tbaa !179
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1128 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !181
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !181
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_mpqEE7mk_nodeEPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.c = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i64 noundef 104) ; 8 uses
  %i.d = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 5 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i:        ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i, %bb.b
  %i.l = load i32, ptr %i.e, align 8, !tbaa !176  ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !176
  br label %_ZN6id_gen2mkEv.exit

_ZN6vectorIjLb0EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i
  %i.n = add i32 %i.j, -1                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !59
  store i32 %i.n, ptr %i.i, align 4, !tbaa !59
  br label %_ZN6id_gen2mkEv.exit

_ZN6id_gen2mkEv.exit:                             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, %_ZN6vectorIjLb0EjE4backEv.exit.i
  %.0.i = phi i32 [ %i.l, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i ], [ %i.q, %_ZN6vectorIjLb0EjE4backEv.exit.i ]
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE4nodeC1ERS2_j(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %.0.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8

_ZNK6vectorIjLb0EjE5emptyEv.exit.i8:              ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11, label %_ZN6vectorIjLb0EjE4backEv.exit.i9

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11:      ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8, %bb.c
  %i.u = load i32, ptr %i.e, align 8, !tbaa !176  ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.e, align 8, !tbaa !176
  br label %_ZN6id_gen2mkEv.exit12

_ZN6vectorIjLb0EjE4backEv.exit.i9:                ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8
  %i.w = add i32 %i.s, -1                         ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59
  store i32 %i.w, ptr %i.r, align 4, !tbaa !59
  br label %_ZN6id_gen2mkEv.exit12

_ZN6id_gen2mkEv.exit12:                           ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11, %_ZN6vectorIjLb0EjE4backEv.exit.i9
  %.0.i10 = phi i32 [ %i.u, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11 ], [ %i.z, %_ZN6vectorIjLb0EjE4backEv.exit.i9 ]
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE4nodeC1EPS3_j(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %1, i32 noundef %.0.i10)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6id_gen2mkEv.exit12, %_ZN6id_gen2mkEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !179 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !87
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !86
  br label %_ZN9subpaving9context_tINS_10config_mpqEE10push_frontEPNS2_4nodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 896
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !180
  br label %_ZN9subpaving9context_tINS_10config_mpqEE10push_frontEPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_mpqEE10push_frontEPNS2_4nodeE.exit: ; preds = %bb.e, %bb.f
  store ptr %i.c, ptr %i.af, align 8, !tbaa !179
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !181
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !181
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_mpqEE13node_splitter16mk_decided_boundEjRK3mpqbbPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  call void @_ZN9subpaving9context_tINS_10config_mpqEE13justificationC1Eb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext true)
  %i.c = call noundef ptr @_ZN9subpaving9context_tINS_10config_mpqEE8mk_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE(ptr noundef nonnull align 8 dereferenceable(1560) %i.b, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull align 8 dead_on_return %6)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_mpqEE8mk_boundEjRK3mpqbbPNS2_4nodeENS2_13justificationE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef align 8 dead_on_return %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %class.mpz, align 8                 ; 6 uses
  %8 = alloca %class.mpz, align 8                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174
  %i.g = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i64 noundef 64) ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  store i32 1, ptr %i.i, align 8, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr null, ptr %i.k, align 8, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  tail call void @_ZN9subpaving9context_tINS_10config_mpqEE13justificationC1Eb(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i1 noundef zeroext true)
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %1, 536870911
  %i.p = and i32 %i.n, -536870912
  %i.q = or disjoint i32 %i.p, %i.o
  store i32 %i.q, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = zext i32 %1 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !183, !range !113, !noundef !69
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.w, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  %i.ad = load i32, ptr %i.y, align 8
  %i.ae = icmp eq i32 %i.ad, 1
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false
  %9 = load ptr, ptr %i.x, align 8, !tbaa !184, !nonnull !69, !align !70 ; 4 uses
  %10 = and i1 %i.af, %4                          ; 2 uses
  br i1 %3, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11mpq_managerILb0EE4ceilERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  store i32 1, ptr %i.i, align 8, !tbaa !105
  %i.ag = load i8, ptr %i.j, align 4
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.j, align 4
  br i1 %10, label %bb.d, label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a

.thread:                                          ; preds = %bb.b
  tail call void @_ZN11mpq_managerILb0EE5floorERK3mpqR3mpz(ptr noundef nonnull align 8 dereferenceable(728) %9, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  tail call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(728) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  store i32 1, ptr %i.i, align 8, !tbaa !105
  %i.ai = load i8, ptr %i.j, align 4
  %i.aj = and i8 %i.ai, -2
  store i8 %i.aj, ptr %i.j, align 4
  br i1 %10, label %.thread32, label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !184, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i32 1, ptr %8, align 8, !tbaa !105
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, -4
  store i8 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !106
  call void @_ZN11mpq_managerILb0EE3addERK3mpqRK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a

.thread32:                                        ; preds = %.thread
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !184, !nonnull !69, !align !70
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 -1, ptr %7, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4
  %i.as = and i8 %i.ar, -4
  store i8 %i.as, ptr %i.aq, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.at, align 8, !tbaa !106
  call void @_ZN11mpq_managerILb0EE3addERK3mpqRK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a

bb.e:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !184, !nonnull !69, !align !70 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 1
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = load i32, ptr %2, align 8, !tbaa !105
  store i32 %i.az, ptr %i.g, align 8, !tbaa !105
  %i.ba = load i8, ptr %i.h, align 4
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.h, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

bb.g:                                             ; preds = %bb.e
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.g, %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = and i8 %i.be, 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  %i.bh = load i32, ptr %i.bc, align 8, !tbaa !105
  store i32 %i.bh, ptr %i.i, align 8, !tbaa !105
  %i.bi = load i8, ptr %i.j, align 4
  %i.bj = and i8 %i.bi, -2
  store i8 %i.bj, ptr %i.j, align 4
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a

bb.i:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpzRKS1_.exit.i
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
  br label %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a

_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a:     ; preds = %bb.i, %bb.h, %.thread, %bb.c, %.thread32, %bb.d
  %.1.shrunk = phi i1 [ false, %bb.d ], [ false, %.thread32 ], [ false, %bb.c ], [ false, %.thread ], [ %4, %bb.h ], [ %4, %bb.i ]
  %i.bk = load i32, ptr %i.m, align 8
  %i.bl = select i1 %3, i32 536870912, i32 0
  %i.bm = and i32 %i.bk, 536870911
  %i.bn = or disjoint i32 %i.bl, %i.bm
  %11 = select i1 %.1.shrunk, i32 1073741824, i32 0
  %i.bo = or disjoint i32 %i.bn, %11
  store i32 %i.bo, ptr %i.m, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !185
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !100
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !82
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !101
  %i.bv = load i64, ptr %6, align 8, !tbaa !186
  store i64 %i.bv, ptr %i.l, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !72
  store ptr %i.g, ptr %i.bs, align 8, !tbaa !82
  %i.bw = load i32, ptr %i.m, align 8             ; 2 uses
  %i.bx = and i32 %i.bw, 536870912
  %.not.i = icmp eq i32 %i.bx, 0
  %i.by = load ptr, ptr %5, align 8, !tbaa !71, !nonnull !69, !align !70
  %i.bz = and i32 %i.bw, 536870911
  %..i = select i1 %.not.i, i64 24, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 %..i
  call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpqEE18bound_array_configEE3setERNS5_3refEjRKPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %i.ca, i32 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cb = call noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE18conflicting_boundsEjPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull %5)
  br i1 %i.cb, label %bb.j, label %_ZN9subpaving9context_tINS_10config_mpqEE12set_conflictEjPNS2_4nodeE.exit

bb.j:                                             ; preds = %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !187
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !187
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %1, ptr %i.cf, align 8, !tbaa !60
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !86 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !87 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !87
  store ptr null, ptr %i.cg, align 8, !tbaa !86
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !179
  %i.cn = icmp eq ptr %i.cm, %5
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !179
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.not16.i.i = icmp eq ptr %i.cj, null
  br i1 %.not16.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  store ptr %i.ch, ptr %i.co, align 8, !tbaa !86
  store ptr null, ptr %i.ci, align 8, !tbaa !87
  br label %_ZN9subpaving9context_tINS_10config_mpqEE12set_conflictEjPNS2_4nodeE.exit

bb.p:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !180
  %i.cr = icmp eq ptr %i.cq, %5
  br i1 %i.cr, label %bb.q, label %_ZN9subpaving9context_tINS_10config_mpqEE12set_conflictEjPNS2_4nodeE.exit

bb.q:                                             ; preds = %bb.p
  store ptr %i.ch, ptr %i.cp, align 8, !tbaa !180
  br label %_ZN9subpaving9context_tINS_10config_mpqEE12set_conflictEjPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_mpqEE12set_conflictEjPNS2_4nodeE.exit: ; preds = %bb.q, %bb.p, %bb.o, %_ZN11mpq_managerILb0EE3setER3mpqRKS1_.exit.a
  %i.cs = load i64, ptr %i.bp, align 8, !tbaa !185
  %i.ct = add i64 %i.cs, 1                        ; 2 uses
  store i64 %i.ct, ptr %i.bp, align 8, !tbaa !185
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN9subpaving9context_tINS_10config_mpqEE12set_conflictEjPNS2_4nodeE.exit
  %i.cv = call ptr @__cxa_allocate_exception(i64 1) #21
  call void @__cxa_throw(ptr %i.cv, ptr nonnull @_ZTIN9subpaving9exceptionE, ptr null) #23
  unreachable

bb.s:                                             ; preds = %_ZN9subpaving9context_tINS_10config_mpqEE12set_conflictEjPNS2_4nodeE.exit
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpqEE13splitting_varEPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.subpaving::context_t<subpaving::config_mpq>::justification", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.010 = load ptr, ptr %i.d, align 8, !tbaa !72  ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.012 = phi ptr [ %.0, %bb.d ], [ %.010, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 56
  call void @_ZN9subpaving9context_tINS_10config_mpqEE13justificationC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = load ptr, ptr %2, align 8, !tbaa !98
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 536870911
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 48
  %.0 = load ptr, ptr %i.m, align 8, !tbaa !72    ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.d, %bb.b
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.5, i32 noundef 361, ptr noundef nonnull @.str.6)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %i.l, %bb.c ], [ -1, %._crit_edge ]
  ret i32 %.1
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpqEE13is_definitionEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191
  %i.f = icmp ne ptr %i.e, null
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE16set_arith_failedEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpqEE10checkpointEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !259, !nonnull !69, !align !70
  %i.b = tail call noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZN11common_msgs14g_canceled_msgE, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !193
  %i.f = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
end_hunk_0
