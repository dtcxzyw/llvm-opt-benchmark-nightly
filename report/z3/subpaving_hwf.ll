Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/subpaving_hwf?download=true
inline.NumInlined: 2360
inline.NumDeleted: 505
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN9subpaving9context_tINS_10config_hwfEE13node_splitter7mk_nodeEPNS2_4nodeE:bb.a
bb.c:                                             ; preds = %bb.a
  br i1 %i.j, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i8.i:            ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !62   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i, label %_ZN6vectorIjLb0EjE4backEv.exit.i9.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i:    ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8.i, %bb.c
  %i.w = load i32, ptr %i.g, align 8, !tbaa !176  ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.g, align 8, !tbaa !176
  br label %_ZN6id_gen2mkEv.exit12.i

_ZN6vectorIjLb0EjE4backEv.exit.i9.i:              ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8.i
  %i.y = add i32 %i.u, -1                         ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62
  store i32 %i.y, ptr %i.t, align 4, !tbaa !62
  br label %_ZN6id_gen2mkEv.exit12.i

_ZN6id_gen2mkEv.exit12.i:                         ; preds = %_ZN6vectorIjLb0EjE4backEv.exit.i9.i, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i
  %.0.i10.i = phi i32 [ %i.w, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11.i ], [ %i.ab, %_ZN6vectorIjLb0EjE4backEv.exit.i9.i ]
  tail call void @_ZN9subpaving9context_tINS_10config_hwfEE4nodeC1EPS3_j(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %1, i32 noundef %.0.i10.i)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6id_gen2mkEv.exit12.i, %_ZN6id_gen2mkEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !177 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull %i.e), !inline_history !178
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !179 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  store ptr %i.e, ptr %i.ak, align 8, !tbaa !87
  br label %_ZN9subpaving9context_tINS_10config_hwfEE7mk_nodeEPNS2_4nodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 488
  store ptr %i.e, ptr %i.al, align 8, !tbaa !180
  br label %_ZN9subpaving9context_tINS_10config_hwfEE7mk_nodeEPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_hwfEE7mk_nodeEPNS2_4nodeE.exit: ; preds = %bb.e, %bb.f
  store ptr %i.e, ptr %i.ah, align 8, !tbaa !179
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 624 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !181
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !181
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_hwfEE7mk_nodeEPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174
  %i.c = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i64 noundef 104) ; 8 uses
  %i.d = icmp eq ptr %1, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 5 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i

_ZNK6vectorIjLb0EjE5emptyEv.exit.i:               ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62   ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !62
  store i32 %i.n, ptr %i.i, align 4, !tbaa !62
  br label %_ZN6id_gen2mkEv.exit

_ZN6id_gen2mkEv.exit:                             ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i, %_ZN6vectorIjLb0EjE4backEv.exit.i
  %.0.i = phi i32 [ %i.l, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i ], [ %i.q, %_ZN6vectorIjLb0EjE4backEv.exit.i ]
  tail call void @_ZN9subpaving9context_tINS_10config_hwfEE4nodeC1ERS2_j(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %.0.i)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.h, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11, label %_ZNK6vectorIjLb0EjE5emptyEv.exit.i8

_ZNK6vectorIjLb0EjE5emptyEv.exit.i8:              ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !62   ; 2 uses
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
  %i.z = load i32, ptr %i.y, align 4, !tbaa !62
  store i32 %i.w, ptr %i.r, align 4, !tbaa !62
  br label %_ZN6id_gen2mkEv.exit12

_ZN6id_gen2mkEv.exit12:                           ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11, %_ZN6vectorIjLb0EjE4backEv.exit.i9
  %.0.i10 = phi i32 [ %i.u, %_ZNK6vectorIjLb0EjE5emptyEv.exit.thread.i11 ], [ %i.z, %_ZN6vectorIjLb0EjE4backEv.exit.i9 ]
  tail call void @_ZN9subpaving9context_tINS_10config_hwfEE4nodeC1EPS3_j(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull %1, i32 noundef %.0.i10)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6id_gen2mkEv.exit12, %_ZN6id_gen2mkEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !179 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !88
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !87
  br label %_ZN9subpaving9context_tINS_10config_hwfEE10push_frontEPNS2_4nodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.c, ptr %i.aj, align 8, !tbaa !180
  br label %_ZN9subpaving9context_tINS_10config_hwfEE10push_frontEPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_hwfEE10push_frontEPNS2_4nodeE.exit: ; preds = %bb.e, %bb.f
  store ptr %i.c, ptr %i.af, align 8, !tbaa !179
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !181
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !181
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_hwfEE13node_splitter16mk_decided_boundEjRK3hwfbbPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"class.subpaving::context_t<subpaving::config_hwf>::justification", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  call void @_ZN9subpaving9context_tINS_10config_hwfEE13justificationC1Eb(ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext true)
  %i.c = call noundef ptr @_ZN9subpaving9context_tINS_10config_hwfEE8mk_boundEjRK3hwfbbPNS2_4nodeENS2_13justificationE(ptr noundef nonnull align 8 dereferenceable(840) %i.b, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull align 8 dead_on_return %6)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN9subpaving9context_tINS_10config_hwfEE8mk_boundEjRK3hwfbbPNS2_4nodeENS2_13justificationE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef align 8 dead_on_return %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !182
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174
  %i.g = tail call noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i64 noundef 40) ; 20 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  tail call void @_ZN9subpaving9context_tINS_10config_hwfEE13justificationC1Eb(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext true)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %1, 536870911
  %i.l = and i32 %i.j, -536870912
  %i.m = or disjoint i32 %i.l, %i.k
  store i32 %i.m, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = zext i32 %1 to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !183, !range !113, !noundef !37
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !184, !nonnull !37, !align !38
  %9 = load ptr, ptr %8, align 8, !tbaa !36, !nonnull !37, !align !38
  %10 = tail call noundef zeroext i1 @_ZN11hwf_manager6is_intERK3hwf(ptr noundef nonnull align 8 dereferenceable(736) %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.t = load ptr, ptr %7, align 8, !tbaa !184, !nonnull !37, !align !38 ; 8 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36, !nonnull !37, !align !38 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 8 uses
  br i1 %3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11hwf_manager17round_to_integralE17mpf_rounding_modeRK3hwfRS1_(ptr noundef nonnull align 8 dereferenceable(736) %i.u, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !36, !nonnull !37, !align !38
  %i.x = tail call noundef zeroext i1 @_ZN11hwf_manager3gteERK3hwfS2_(ptr noundef nonnull align 8 dereferenceable(736) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !36, !nonnull !37, !align !38 ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11hwf_manager3setER3hwfRKS0_(ptr noundef nonnull align 8 dereferenceable(736) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %_ZN3f2nI11hwf_managerE4ceilERK3hwfRS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  tail call void @_ZN11hwf_manager3addE17mpf_rounding_modeRK3hwfS3_RS1_(ptr noundef nonnull align 8 dereferenceable(736) %i.y, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZN3f2nI11hwf_managerE4ceilERK3hwfRS2_.exit

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN11hwf_manager17round_to_integralE17mpf_rounding_modeRK3hwfRS1_(ptr noundef nonnull align 8 dereferenceable(736) %i.u, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !36, !nonnull !37, !align !38
  %i.ab = tail call noundef zeroext i1 @_ZN11hwf_manager3lteERK3hwfS2_(ptr noundef nonnull align 8 dereferenceable(736) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !36, !nonnull !37, !align !38 ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN11hwf_manager3setER3hwfRKS0_(ptr noundef nonnull align 8 dereferenceable(736) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %_ZN3f2nI11hwf_managerE4ceilERK3hwfRS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  tail call void @_ZN11hwf_manager3subE17mpf_rounding_modeRK3hwfS3_RS1_(ptr noundef nonnull align 8 dereferenceable(736) %i.ac, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_ZN3f2nI11hwf_managerE4ceilERK3hwfRS2_.exit

_ZN3f2nI11hwf_managerE4ceilERK3hwfRS2_.exit:      ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %11 = and i1 %4, %10
  br i1 %11, label %bb.i, label %_ZN3f2nI11hwf_managerE3incER3hwf.exit

bb.i:                                             ; preds = %_ZN3f2nI11hwf_managerE4ceilERK3hwfRS2_.exit
  %i.ae = load ptr, ptr %7, align 8, !tbaa !184, !nonnull !37, !align !38 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  br i1 %3, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  store i32 3, ptr %i.af, align 8, !tbaa !112
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !36, !nonnull !37, !align !38
  tail call void @_ZN11hwf_manager3addE17mpf_rounding_modeRK3hwfS3_RS1_(ptr noundef nonnull align 8 dereferenceable(736) %i.ah, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !36, !nonnull !37, !align !38
  %i.aj = tail call noundef zeroext i1 @_ZN11hwf_manager10is_regularERK3hwf(ptr noundef nonnull align 8 dereferenceable(736) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.aj, label %_ZN3f2nI11hwf_managerE3incER3hwf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.ak, ptr nonnull @_ZTIN3f2nI11hwf_managerE9exceptionE, ptr null) #23
  unreachable

bb.l:                                             ; preds = %bb.i
  store i32 2, ptr %i.af, align 8, !tbaa !112
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !36, !nonnull !37, !align !38
  tail call void @_ZN11hwf_manager3subE17mpf_rounding_modeRK3hwfS3_RS1_(ptr noundef nonnull align 8 dereferenceable(736) %i.al, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !36, !nonnull !37, !align !38
  %i.an = tail call noundef zeroext i1 @_ZN11hwf_manager10is_regularERK3hwf(ptr noundef nonnull align 8 dereferenceable(736) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.an, label %_ZN3f2nI11hwf_managerE3incER3hwf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.ao, ptr nonnull @_ZTIN3f2nI11hwf_managerE9exceptionE, ptr null) #23
  unreachable

bb.n:                                             ; preds = %bb.a
  %12 = zext i1 %4 to i32
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !184, !nonnull !37, !align !38 ; 2 uses
  %15 = load ptr, ptr %14, align 8, !tbaa !36, !nonnull !37, !align !38
  tail call void @_ZN11hwf_manager3setER3hwfRKS0_(ptr noundef nonnull align 8 dereferenceable(736) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ap = load ptr, ptr %14, align 8, !tbaa !36, !nonnull !37, !align !38
  %i.aq = tail call noundef zeroext i1 @_ZN11hwf_manager10is_regularERK3hwf(ptr noundef nonnull align 8 dereferenceable(736) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br i1 %i.aq, label %_ZN3f2nI11hwf_managerE3incER3hwf.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 1) #21
  tail call void @__cxa_throw(ptr %i.ar, ptr nonnull @_ZTIN3f2nI11hwf_managerE9exceptionE, ptr null) #23
  unreachable

_ZN3f2nI11hwf_managerE3incER3hwf.exit:            ; preds = %bb.n, %bb.l, %bb.j, %_ZN3f2nI11hwf_managerE4ceilERK3hwfRS2_.exit
  %.1 = phi i32 [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %_ZN3f2nI11hwf_managerE4ceilERK3hwfRS2_.exit ], [ %12, %bb.n ]
  %i.as = load i32, ptr %i.i, align 8
  %i.at = select i1 %3, i32 536870912, i32 0
  %i.au = and i32 %i.as, 536870911
  %i.av = or disjoint i32 %i.at, %i.au
  %16 = shl nuw nsw i32 %.1, 30
  %i.aw = or disjoint i32 %i.av, %16
  store i32 %i.aw, ptr %i.i, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !185
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !101
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !102
  %i.bd = load i64, ptr %6, align 8, !tbaa !186
  store i64 %i.bd, ptr %i.h, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !73
  store ptr %i.g, ptr %i.ba, align 8, !tbaa !83
  %i.be = load i32, ptr %i.i, align 8             ; 2 uses
  %i.bf = and i32 %i.be, 536870912
  %.not.i = icmp eq i32 %i.bf, 0
  %i.bg = load ptr, ptr %5, align 8, !tbaa !72, !nonnull !37, !align !38
  %i.bh = and i32 %i.be, 536870911
  %..i = select i1 %.not.i, i64 24, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 %..i
  call void @_ZN14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3setERNS5_3refEjRKPNS3_5boundE(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(12) %i.bi, i32 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load ptr, ptr %5, align 8, !tbaa !72, !nonnull !37, !align !38
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(12) %i.bk, i32 noundef %1)
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !73 ; 4 uses
  %i.bn = load ptr, ptr %5, align 8, !tbaa !72, !nonnull !37, !align !38
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK14parray_managerIN9subpaving9context_tINS0_10config_hwfEE18bound_array_configEE3getERKNS5_3refEj(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(12) %i.bo, i32 noundef %1)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !73 ; 4 uses
  %i.br = icmp ne ptr %i.bm, null
  %i.bs = icmp ne ptr %i.bq, null
  %or.cond.i = and i1 %i.br, %i.bs
  br i1 %or.cond.i, label %bb.p, label %_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit

bb.p:                                             ; preds = %_ZN3f2nI11hwf_managerE3incER3hwf.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !184, !nonnull !37, !align !38
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36, !nonnull !37, !align !38
  %i.bw = call noundef zeroext i1 @_ZN11hwf_manager2ltERK3hwfS2_(ptr noundef nonnull align 8 dereferenceable(736) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  br i1 %i.bw, label %_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread33, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = and i32 %i.by, 1073741824
  %.not.i32 = icmp eq i32 %i.bz, 0
  br i1 %.not.i32, label %bb.r, label %_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = and i32 %i.cb, 1073741824
  %.not14.i = icmp eq i32 %i.cc, 0
  br i1 %.not14.i, label %_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit, label %_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit

_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit: ; preds = %bb.q, %bb.r
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !184, !nonnull !37, !align !38
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36, !nonnull !37, !align !38
  %i.cf = call noundef zeroext i1 @_ZN11hwf_manager2eqERK3hwfS2_(ptr noundef nonnull align 8 dereferenceable(736) %i.ce, ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  br i1 %i.cf, label %_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread33, label %_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit

_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread33: ; preds = %bb.p, %_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !187
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !187
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %1, ptr %i.cj, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !87 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !88 ; 4 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread33
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !88
  store ptr null, ptr %i.ck, align 8, !tbaa !87
  br label %bb.v

bb.t:                                             ; preds = %_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit.thread33
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !179
  %i.cr = icmp eq ptr %i.cq, %5
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !179
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.not16.i.i = icmp eq ptr %i.cn, null
  br i1 %.not16.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  store ptr %i.cl, ptr %i.cs, align 8, !tbaa !87
  store ptr null, ptr %i.cm, align 8, !tbaa !88
  br label %_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit

bb.x:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !180
  %i.cv = icmp eq ptr %i.cu, %5
  br i1 %i.cv, label %bb.y, label %_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit

bb.y:                                             ; preds = %bb.x
  store ptr %i.cl, ptr %i.ct, align 8, !tbaa !180
  br label %_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit

_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit: ; preds = %bb.r, %_ZN3f2nI11hwf_managerE3incER3hwf.exit, %bb.y, %bb.x, %bb.w, %_ZNK9subpaving9context_tINS_10config_hwfEE18conflicting_boundsEjPNS2_4nodeE.exit
  %i.cw = load i64, ptr %i.ax, align 8, !tbaa !185
  %i.cx = add i64 %i.cw, 1                        ; 2 uses
  store i64 %i.cx, ptr %i.ax, align 8, !tbaa !185
  %i.cy = icmp eq i64 %i.cx, -1
  br i1 %i.cy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit
  %i.cz = call ptr @__cxa_allocate_exception(i64 1) #21
  call void @__cxa_throw(ptr %i.cz, ptr nonnull @_ZTIN9subpaving9exceptionE, ptr null) #23
  unreachable

bb.aa:                                            ; preds = %_ZN9subpaving9context_tINS_10config_hwfEE12set_conflictEjPNS2_4nodeE.exit
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i32 @_ZNK9subpaving9context_tINS_10config_hwfEE13splitting_varEPNS2_4nodeE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.subpaving::context_t<subpaving::config_hwf>::justification", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.010 = load ptr, ptr %i.d, align 8, !tbaa !73  ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.012 = phi ptr [ %.0, %bb.d ], [ %.010, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 32
  call void @_ZN9subpaving9context_tINS_10config_hwfEE13justificationC1ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.f = load ptr, ptr %2, align 8, !tbaa !99
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 7
  %i.i = icmp eq i64 %i.h, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 536870911
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.012, i64 24
  %.0 = load ptr, ptr %i.m, align 8, !tbaa !73    ; 2 uses
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
define weak_odr hidden noundef zeroext i1 @_ZNK9subpaving9context_tINS_10config_hwfEE13is_definitionEj(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !191
  %i.f = icmp ne ptr %i.e, null
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN9subpaving9context_tINS_10config_hwfEE16set_arith_failedEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.a, align 8, !tbaa !192
  ret void
end_hunk_0
