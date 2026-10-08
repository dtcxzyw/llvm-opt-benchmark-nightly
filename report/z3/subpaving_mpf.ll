Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/subpaving_mpf?download=true
inline.NumInlined: 2373
inline.NumDeleted: 526
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN9subpaving9context_tINS_10config_mpfEE13node_splitter7mk_nodeEPNS2_4nodeE:bb.a

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i:    ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8.i, %bb.c
  %i.w = load i32, ptr %i.g, align 8, !tbaa !179  ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.g, align 8, !tbaa !179
  br label %_ZN6id_gen2mkEv.exit12.i

_ZN6vectorIjLb0EjE4backEv.exit.i9.i:              ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8.i
  %i.y = add i32 %i.u, -1                         ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !65
  store i32 %i.y, ptr %i.t, align 4, !tbaa !65
  br label %_ZN6id_gen2mkEv.exit12.i

_ZN6id_gen2mkEv.exit12.i:                         ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i9.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i
  %.0.i10.i = phi i32 [ %i.w, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i ], [ %i.ab, %_ZN6vectorIjLb0EjE4backEv.exit.i9.i ]
  tail call void @_ZN9subpaving9context_tINS_10config_mpfEE4nodeC1EPS3_j(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %1, i32 noundef %.0.i10.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6id_gen2mkEv.exit12.i, %_ZN6id_gen2mkEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !180 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull %i.e), !inline_history !181
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 888 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !182 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !91
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %i.e, ptr %i.ak, align 8, !tbaa !90
  br label %_ZN9subpaving9context_tINS_10config_mpfEE7mk_nodeEPNS2_4nodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  store ptr %i.e, ptr %i.al, align 8, !tbaa !183
  br label %_ZN9subpaving9context_tINS_10config_mpfEE7mk_nodeEPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_mpfEE7mk_nodeEPNS2_4nodeE.exit: ; preds = %bb.e, %bb.f
  store ptr %i.e, ptr %i.ah, align 8, !tbaa !182
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1128 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !184
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !184
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_mpfEE7mk_nodeEPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i64 noundef 104) ; 8 uses
  %i.d = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178  ; 5 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65   ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i:        ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i, %bb.b
  %i.l = load i32, ptr %i.e, align 8, !tbaa !179  ; 2 uses
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !179
  br label %_ZN6id_gen2mkEv.exit

_ZN6vectorIjLb0EjE4backEv.exit.i:                 ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i
  %i.n = add i32 %i.j, -1                         ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !65
  store i32 %i.n, ptr %i.i, align 4, !tbaa !65
  br label %_ZN6id_gen2mkEv.exit

_ZN6id_gen2mkEv.exit:                             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, %_ZN6vectorIjLb0EjE4backEv.exit.i
  %.0.i = phi i32 [ %i.l, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i ], [ %i.q, %_ZN6vectorIjLb0EjE4backEv.exit.i ]
  tail call void @_ZN9subpaving9context_tINS_10config_mpfEE4nodeC1ERS2_j(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %.0.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8

_ZNK6vectorIjLb0EjE5emptyEv.exit.i8:              ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !65   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11, label %_ZN6vectorIjLb0EjE4backEv.exit.i9

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11:      ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8, %bb.c
  %i.u = load i32, ptr %i.e, align 8, !tbaa !179  ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.e, align 8, !tbaa !179
  br label %_ZN6id_gen2mkEv.exit12

_ZN6vectorIjLb0EjE4backEv.exit.i9:                ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8
  %i.w = add i32 %i.s, -1                         ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !65
  store i32 %i.w, ptr %i.r, align 4, !tbaa !65
  br label %_ZN6id_gen2mkEv.exit12

_ZN6id_gen2mkEv.exit12:                           ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11, %_ZN6vectorIjLb0EjE4backEv.exit.i9
  %.0.i10 = phi i32 [ %i.u, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11 ], [ %i.z, %_ZN6vectorIjLb0EjE4backEv.exit.i9 ]
  tail call void @_ZN9subpaving9context_tINS_10config_mpfEE4nodeC1EPS3_j(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %1, i32 noundef %.0.i10)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6id_gen2mkEv.exit12, %_ZN6id_gen2mkEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !182 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !91
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !90
  br label %_ZN9subpaving9context_tINS_10config_mpfEE10push_frontEPNS2_4nodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 896
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !183
  br label %_ZN9subpaving9context_tINS_10config_mpfEE10push_frontEPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_mpfEE10push_frontEPNS2_4nodeE.exit: ; preds = %bb.e, %bb.f
  store ptr %i.c, ptr %i.af, align 8, !tbaa !182
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !184
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !184
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_mpfEE13node_splitter16mk_decided_boundEjRK3mpfbbPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"class.subpaving::context_t<subpaving::config_mpf>::justification", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  call void @_ZN9subpaving9context_tINS_10config_mpfEE13justificationC1Eb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext true)
  %i.c = call noundef ptr @_ZN9subpaving9context_tINS_10config_mpfEE8mk_boundEjRK3mpfbbPNS2_4nodeENS2_13justificationE(ptr noundef nonnull align 8 dereferenceable(1560) %i.b, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull align 8 dead_on_return %6)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_mpfEE8mk_boundEjRK3mpfbbPNS2_4nodeENS2_13justificationE(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef align 8 dead_on_return %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !185
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177
  %i.g = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i64 noundef 64) ; 27 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  tail call void @_ZN3mpfC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  tail call void @_ZN9subpaving9context_tINS_10config_mpfEE13justificationC1Eb(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext true)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %1, 536870911
  %i.l = and i32 %i.j, -536870912
  %i.m = or disjoint i32 %i.l, %i.k
  store i32 %i.m, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = zext i32 %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !186, !range !116, !noundef !41
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187, !nonnull !41, !align !42 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_ZN11mpf_manager6is_intERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !187, !nonnull !41, !align !42 ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 8 uses
  br i1 %3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11mpf_manager17round_to_integralE17mpf_rounding_modeRK3mpfRS1_(ptr noundef nonnull align 8 dereferenceable(840) %i.y, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.ab = tail call noundef zeroext i1 @_ZN11mpf_manager3gteERK3mpfS2_(ptr noundef nonnull align 8 dereferenceable(840) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11mpf_manager3setER3mpfRKS0_(ptr noundef nonnull align 8 dereferenceable(840) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  br label %_ZN3f2nI11mpf_managerE4ceilERK3mpfRS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  tail call void @_ZN11mpf_manager3addE17mpf_rounding_modeRK3mpfS3_RS1_(ptr noundef nonnull align 8 dereferenceable(840) %i.ac, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_ZN3f2nI11mpf_managerE4ceilERK3mpfRS2_.exit

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN11mpf_manager17round_to_integralE17mpf_rounding_modeRK3mpfRS1_(ptr noundef nonnull align 8 dereferenceable(840) %i.y, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.af = tail call noundef zeroext i1 @_ZN11mpf_manager3lteERK3mpfS2_(ptr noundef nonnull align 8 dereferenceable(840) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11mpf_manager3setER3mpfRKS0_(ptr noundef nonnull align 8 dereferenceable(840) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  br label %_ZN3f2nI11mpf_managerE4ceilERK3mpfRS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  tail call void @_ZN11mpf_manager3subE17mpf_rounding_modeRK3mpfS3_RS1_(ptr noundef nonnull align 8 dereferenceable(840) %i.ag, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_ZN3f2nI11mpf_managerE4ceilERK3mpfRS2_.exit

_ZN3f2nI11mpf_managerE4ceilERK3mpfRS2_.exit:      ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %7 = and i1 %4, %i.w
  br i1 %7, label %bb.i, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread

bb.i:                                             ; preds = %_ZN3f2nI11mpf_managerE4ceilERK3mpfRS2_.exit
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !187, !nonnull !41, !align !42 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 2 uses
  br i1 %3, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %i.aj, align 8, !tbaa !115
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !40, !nonnull !41, !align !42
  tail call void @_ZN11mpf_manager3addE17mpf_rounding_modeRK3mpfS3_RS1_(ptr noundef nonnull align 8 dereferenceable(840) %i.al, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  %i.an = load i32, ptr %i.g, align 8
  %i.ao = and i32 %i.an, 2147450880
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call noundef zeroext i1 @_ZN11mpf_manager9is_normalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.aq, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread, label %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i.i

_ZN11mpf_manager10is_regularERK3mpf.exit.i.i.i:   ; preds = %bb.k
  %i.ar = tail call noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.ar, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i.i
  %i.as = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.as, ptr nonnull @_ZTIN3f2nI11mpf_managerE9exceptionE, ptr null) #23
  unreachable

bb.m:                                             ; preds = %bb.i
  store i32 2, ptr %i.aj, align 8, !tbaa !115
  %i.at = load ptr, ptr %i.ai, align 8, !tbaa !40, !nonnull !41, !align !42
  tail call void @_ZN11mpf_manager3subE17mpf_rounding_modeRK3mpfS3_RS1_(ptr noundef nonnull align 8 dereferenceable(840) %i.at, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  %i.av = load i32, ptr %i.g, align 8
  %i.aw = and i32 %i.av, 2147450880
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call noundef zeroext i1 @_ZN11mpf_manager9is_normalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.ay, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread, label %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i.i32

_ZN11mpf_manager10is_regularERK3mpf.exit.i.i.i32: ; preds = %bb.n
  %i.az = tail call noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.az, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i.i32
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.ba, ptr nonnull @_ZTIN3f2nI11mpf_managerE9exceptionE, ptr null) #23
  unreachable

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN11mpf_manager3setER3mpfRKS0_(ptr noundef nonnull align 8 dereferenceable(840) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !40, !nonnull !41, !align !42 ; 2 uses
  %i.bc = load i32, ptr %i.g, align 8
  %i.bd = and i32 %i.bc, 2147450880
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.a, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = tail call noundef zeroext i1 @_ZN11mpf_manager9is_normalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.bf, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.a, label %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i

_ZN11mpf_manager10is_regularERK3mpf.exit.i.i:     ; preds = %bb.q
  %i.bg = tail call noundef zeroext i1 @_ZN11mpf_manager11is_denormalERK3mpf(ptr noundef nonnull align 8 dereferenceable(840) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br i1 %i.bg, label %_ZN3f2nI11mpf_managerE3incER3mpf.exit.a, label %bb.r

bb.r:                                             ; preds = %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i
  %i.bh = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.bh, ptr nonnull @_ZTIN3f2nI11mpf_managerE9exceptionE, ptr null) #23
  unreachable

_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread:     ; preds = %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i.i32, %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i.i, %_ZN3f2nI11mpf_managerE4ceilERK3mpfRS2_.exit, %bb.j, %bb.k, %bb.m, %bb.n
  %8 = select i1 %3, i32 536870912, i32 0
  br label %bb.s

_ZN3f2nI11mpf_managerE3incER3mpf.exit.a:          ; preds = %_ZN11mpf_manager10is_regularERK3mpf.exit.i.i, %bb.q, %bb.p
  %9 = select i1 %3, i32 536870912, i32 0
  %spec.select.a = select i1 %4, i32 1073741824, i32 0
  %10 = or disjoint i32 %spec.select.a, %9
  br label %bb.s

bb.s:                                             ; preds = %_ZN3f2nI11mpf_managerE3incER3mpf.exit.a, %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread
  %11 = phi i32 [ %8, %_ZN3f2nI11mpf_managerE3incER3mpf.exit.thread ], [ %10, %_ZN3f2nI11mpf_managerE3incER3mpf.exit.a ]
  %.in = load i32, ptr %i.i, align 8
  %i.bi = and i32 %.in, 536870911
  %i.bj = or disjoint i32 %11, %i.bi
  store i32 %i.bj, ptr %i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !188
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !104
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !86
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !105
  %i.bq = load i64, ptr %6, align 8, !tbaa !189
  store i64 %i.bq, ptr %i.h, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !76
  store ptr %i.g, ptr %i.bn, align 8, !tbaa !86
  %i.br = load i32, ptr %i.i, align 8             ; 2 uses
  %i.bs = and i32 %i.br, 536870912
  %.not.i = icmp eq i32 %i.bs, 0
  %i.bt = load ptr, ptr %5, align 8, !tbaa !75, !nonnull !41, !align !42
  %i.bu = and i32 %i.br, 536870911
  %..i = select i1 %.not.i, i64 24, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 %..i
  call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3setERNS5_3refEjRKPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(12) %i.bv, i32 noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = load ptr, ptr %5, align 8, !tbaa !75, !nonnull !41, !align !42
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(12) %i.bx, i32 noundef %1)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !76 ; 4 uses
  %i.ca = load ptr, ptr %5, align 8, !tbaa !75, !nonnull !41, !align !42
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_mpfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(12) %i.cb, i32 noundef %1)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !76 ; 4 uses
  %i.ce = icmp ne ptr %i.bz, null
  %i.cf = icmp ne ptr %i.cd, null
  %or.cond.i = and i1 %i.ce, %i.cf
  br i1 %or.cond.i, label %bb.t, label %_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !187, !nonnull !41, !align !42
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.cj = call noundef zeroext i1 @_ZN11mpf_manager2ltERK3mpfS2_(ptr noundef nonnull align 8 dereferenceable(840) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
  br i1 %i.cj, label %_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread34, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = and i32 %i.cl, 1073741824
  %.not.i33 = icmp eq i32 %i.cm, 0
  br i1 %.not.i33, label %bb.v, label %_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = and i32 %i.co, 1073741824
  %.not14.i = icmp eq i32 %i.cp, 0
  br i1 %.not14.i, label %_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit, label %_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit

_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit: ; preds = %bb.u, %bb.v
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !187, !nonnull !41, !align !42
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40, !nonnull !41, !align !42
  %i.cs = call noundef zeroext i1 @_ZN11mpf_manager2eqERK3mpfS2_(ptr noundef nonnull align 8 dereferenceable(840) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
  br i1 %i.cs, label %_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread34, label %_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit

_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread34: ; preds = %bb.t, %_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1132 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !190
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !190
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %1, ptr %i.cw, align 8, !tbaa !66
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !90 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !91 ; 4 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread34
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store ptr %i.da, ptr %i.db, align 8, !tbaa !91
  store ptr null, ptr %i.cx, align 8, !tbaa !90
  br label %bb.z

bb.x:                                             ; preds = %_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread34
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !182
  %i.de = icmp eq ptr %i.dd, %5
  br i1 %i.de, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !182
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.not16.i.i = icmp eq ptr %i.da, null
  br i1 %.not16.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  store ptr %i.cy, ptr %i.df, align 8, !tbaa !90
  store ptr null, ptr %i.cz, align 8, !tbaa !91
  br label %_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit

bb.ab:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !183
  %i.di = icmp eq ptr %i.dh, %5
  br i1 %i.di, label %bb.ac, label %_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cy, ptr %i.dg, align 8, !tbaa !183
  br label %_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit: ; preds = %bb.v, %bb.s, %bb.ac, %bb.ab, %bb.aa, %_ZNK9subpaving9context_tINS_10config_mpfEE18conflicting_boundsEjPNS2_4nodeE.exit
  %i.dj = load i64, ptr %i.bk, align 8, !tbaa !188
  %i.dk = add i64 %i.dj, 1                        ; 2 uses
  store i64 %i.dk, ptr %i.bk, align 8, !tbaa !188
  %i.dl = icmp eq i64 %i.dk, -1
  br i1 %i.dl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit
  %i.dm = call ptr @__cxa_allocate_exception(i64 1) #21
  call void @__cxa_throw(ptr %i.dm, ptr nonnull @_ZTIN9subpaving9exceptionE, ptr null) #23
  unreachable

bb.ae:                                            ; preds = %_ZN9subpaving9context_tINS_10config_mpfEE12set_conflictEjPNS2_4nodeE.exit
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_mpfEE13splitting_varEPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.subpaving::context_t<subpaving::config_mpf>::justification", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.010 = load ptr, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.012 = phi ptr [ %.0, %bb.d ], [ %.010, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 56
  call void @_ZN9subpaving9context_tINS_10config_mpfEE13justificationC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = load ptr, ptr %2, align 8, !tbaa !102
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
  %.0 = load ptr, ptr %i.m, align 8, !tbaa !76    ; 2 uses
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
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_mpfEE13is_definitionEj(ptr noundef nonnull align 8 dereferenceable(1560) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !194
  %i.f = icmp ne ptr %i.e, null
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_mpfEE16set_arith_failedEv(ptr noundef nonnull align 8 dereferenceable(1560) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8, !tbaa !195
  ret void
end_hunk_0
