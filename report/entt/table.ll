Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/table?download=true
inline.NumInlined: 4860
inline.NumDeleted: 1708
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4entt11basic_tableIJSt6vectorIiN4test18throwing_allocatorIiEEES1_IcNS3_IcEEEEEC2INS3_IvEEEERKT_:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4test18throwing_allocatorIiEC2IvEERKNS0_IT_EE.exit
  %i.l = load i32, ptr %i.f, align 4, !tbaa !41
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.f, align 4, !tbaa !41
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit

bb.f:                                             ; preds = %_ZN4test18throwing_allocatorIiEC2IvEERKNS0_IT_EE.exit
  %i.n = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit: ; preds = %bb.e, %bb.f
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !86   ; 10 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i.i.i.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i4, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 6 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.r = load i32, ptr %i.p, align 4, !tbaa !41
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !41
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %i.u = icmp eq i8 %.pre, 0
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.v = load i32, ptr %i.p, align 4, !tbaa !41
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.p, align 4, !tbaa !41
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEED2Ev.exit

_ZNSt6vectorIcN4test18throwing_allocatorIcEEED2Ev.exit: ; preds = %bb.i, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.y, align 8, !tbaa !151
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pr, ptr %i.z, align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.d, ptr %i.ab, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEED2Ev.exit
  store i32 0, ptr %i.ad, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !96
  %i.ai = load ptr, ptr %.pr, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !4
  %i.al = load ptr, ptr %.pr, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27, !inline_history !4
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit

bb.l:                                             ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEED2Ev.exit
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %bb.m ], [ %i.aq, %bb.n ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.o, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit, !prof !69

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #27
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit.critedge: ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit.thread
  %.ph = phi ptr [ %i.o, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit ], [ %i.e, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit.thread ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.ph, ptr %i.as, align 8, !tbaa !151
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.d, ptr %i.av, align 8, !tbaa !81
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit: ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit.critedge, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.o
  br i1 %.not.i.i.i.i.i, label %_ZN4test18throwing_allocatorIiED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ax, align 8, !tbaa !95
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !96
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #27, !inline_history !5
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #27, !inline_history !5
  br label %_ZN4test18throwing_allocatorIiED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i17 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i17, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

bb.t:                                             ; preds = %bb.r
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i19 = phi i32 [ %i.ba, %bb.s ], [ %i.bk, %bb.t ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i19, 1
  br i1 %i.bl, label %bb.u, label %_ZN4test18throwing_allocatorIiED2Ev.exit, !prof !69

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #27
  br label %_ZN4test18throwing_allocatorIiED2Ev.exit

_ZN4test18throwing_allocatorIiED2Ev.exit:         ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11basic_tableIJSt6vectorIiN4test18throwing_allocatorIiEEES1_IcNS3_IcEEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.171) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !145
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = icmp ult i64 %i.j, %1
  br i1 %i.k, label %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE7reserveEm.exit

_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !146
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.h
  %i.p = tail call noundef ptr @_ZN4test18throwing_allocatorIiE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %1) ; 7 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !145  ; 8 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !146  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE11_M_allocateEm.exit.i
  %2 = ptrtoaddr ptr %i.q to i64                  ; 2 uses
  %i.s = ptrtoaddr ptr %i.p to i64
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = add i64 %i.t, -4
  %i.v = sub i64 %i.u, %2                         ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 44
  %i.y = sub i64 %2, %i.s
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.p, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ac ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.ad = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !41, !alias.scope !1303, !noalias !1302
  %wide.load15 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !41, !alias.scope !1303, !noalias !1302
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !41, !alias.scope !1302, !noalias !1303
  store <4 x i32> %wide.load15, ptr %i.ae, align 4, !tbaa !41, !alias.scope !1302, !noalias !1303
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader45

.lr.ph.i.i.i.i.preheader45:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader45, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader45 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader45 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.ag = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !41, !alias.scope !1303, !noalias !1302
  store i32 %i.ag, ptr %.012.i.i.i.i, align 4, !tbaa !41, !alias.scope !1302, !noalias !1303
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1280

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE13_M_deallocateEPim.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.q to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.am) #30
  br label %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE13_M_deallocateEPim.exit.i: ; preds = %bb.d, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i
  store ptr %i.p, ptr %i.c, align 8, !tbaa !145
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.an, ptr %i.l, align 8, !tbaa !146
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %1
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !144
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE7reserveEm.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE13_M_deallocateEPim.exit.i, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !155
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !148
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.av, %1
  br i1 %i.aw, label %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE7reserveEm.exit

_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE7reserveEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !149
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.au
  %i.bb = tail call noundef ptr @_ZN4test18throwing_allocatorIcE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) ; 9 uses
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !148 ; 8 uses
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !149 ; 3 uses
  %.not10.i.i.i.i2 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not10.i.i.i.i2, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i
  %i.be = ptrtoaddr ptr %i.bc to i64              ; 2 uses
  %3 = ptrtoaddr ptr %i.bb to i64
  %4 = ptrtoaddr ptr %i.bd to i64                 ; 3 uses
  %5 = sub i64 %4, %i.be                          ; 7 uses
  %min.iters.check20 = icmp ult i64 %5, 8
  %i.bf = sub i64 %i.be, %3
  %diff.check18 = icmp ugt i64 %i.bf, -32
  %or.cond44 = or i1 %min.iters.check20, %diff.check18
  br i1 %or.cond44, label %.lr.ph.i.i.i.i3.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i64 %5, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph22

vector.ph22:                                      ; preds = %vector.main.loop.iter.check
  %i.bg = and i64 %5, 24
  %n.vec23 = and i64 %5, -32                      ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bb, i64 %n.vec23
  %i.bi = getelementptr i8, ptr %i.bc, i64 %n.vec23
  br label %vector.body24

vector.body24:                                    ; preds = %vector.ph22, %vector.body24
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 3 uses
  %next.gep26 = getelementptr i8, ptr %i.bb, i64 %index25 ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.bc, i64 %index25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.bj = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load28 = load <16 x i8>, ptr %next.gep27, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  %wide.load29 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  %i.bk = getelementptr i8, ptr %next.gep26, i64 16
  store <16 x i8> %wide.load28, ptr %next.gep26, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  store <16 x i8> %wide.load29, ptr %i.bk, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  %index.next30 = add nuw i64 %index25, 32        ; 2 uses
  %i.bl = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.bl, label %middle.block31, label %vector.body24, !llvm.loop !1284

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %5, %n.vec23
  br i1 %cmp.n32, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block31
  %min.epilog.iters.check = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i3.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec23, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %5, -8                       ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bb, i64 %n.vec35
  %i.bn = getelementptr i8, ptr %i.bc, i64 %n.vec35
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %next.gep37 = getelementptr i8, ptr %i.bb, i64 %index36
  %next.gep38 = getelementptr i8, ptr %i.bc, i64 %index36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %wide.load39 = load <8 x i8>, ptr %next.gep38, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  store <8 x i8> %wide.load39, ptr %next.gep37, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  %index.next40 = add nuw i64 %index36, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.bo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1285

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %5, %n.vec35
  br i1 %cmp.n41, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i3.preheader

.lr.ph.i.i.i.i3.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i4.ph = phi ptr [ %i.bb, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i5.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i5.ph46 = ptrtoaddr ptr %.0911.i.i.i.i5.ph to i64 ; 2 uses
  %i.bp = sub i64 %4, %.0911.i.i.i.i5.ph46
  %xtraiter = and i64 %i.bp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i3.prol.loopexit, label %.lr.ph.i.i.i.i3.prol

.lr.ph.i.i.i.i3.prol:                             ; preds = %.lr.ph.i.i.i.i3.preheader, %.lr.ph.i.i.i.i3.prol
  %.012.i.i.i.i4.prol = phi ptr [ %i.bs, %.lr.ph.i.i.i.i3.prol ], [ %.012.i.i.i.i4.ph, %.lr.ph.i.i.i.i3.preheader ] ; 2 uses
  %.0911.i.i.i.i5.prol = phi ptr [ %i.br, %.lr.ph.i.i.i.i3.prol ], [ %.0911.i.i.i.i5.ph, %.lr.ph.i.i.i.i3.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i3.prol ], [ 0, %.lr.ph.i.i.i.i3.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.bq = load i8, ptr %.0911.i.i.i.i5.prol, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  store i8 %i.bq, ptr %.012.i.i.i.i4.prol, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5.prol, i64 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i3.prol.loopexit, label %.lr.ph.i.i.i.i3.prol, !llvm.loop !1286

.lr.ph.i.i.i.i3.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i3.prol, %.lr.ph.i.i.i.i3.preheader
  %.012.i.i.i.i4.unr = phi ptr [ %.012.i.i.i.i4.ph, %.lr.ph.i.i.i.i3.preheader ], [ %i.bs, %.lr.ph.i.i.i.i3.prol ]
  %.0911.i.i.i.i5.unr = phi ptr [ %.0911.i.i.i.i5.ph, %.lr.ph.i.i.i.i3.preheader ], [ %i.br, %.lr.ph.i.i.i.i3.prol ]
  %i.bt = sub i64 %.0911.i.i.i.i5.ph46, %4
  %i.bu = icmp ugt i64 %i.bt, -8
  br i1 %i.bu, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %.lr.ph.i.i.i.i3.prol.loopexit, %.lr.ph.i.i.i.i3
  %.012.i.i.i.i4 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i3 ], [ %.012.i.i.i.i4.unr, %.lr.ph.i.i.i.i3.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i5 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i3 ], [ %.0911.i.i.i.i5.unr, %.lr.ph.i.i.i.i3.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.bv = load i8, ptr %.0911.i.i.i.i5, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  store i8 %i.bv, ptr %.012.i.i.i.i4, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !47, !alias.scope !1307, !noalias !1306
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !47, !alias.scope !1306, !noalias !1307
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !47, !alias.scope !1309, !noalias !1308
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !47, !alias.scope !1308, !noalias !1309
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 3
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !47, !alias.scope !1311, !noalias !1310
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !47, !alias.scope !1310, !noalias !1311
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !47, !alias.scope !1313, !noalias !1312
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !47, !alias.scope !1312, !noalias !1313
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 5
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !47, !alias.scope !1315, !noalias !1314
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !47, !alias.scope !1314, !noalias !1315
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 6
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !47, !alias.scope !1317, !noalias !1316
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !47, !alias.scope !1316, !noalias !1317
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 7
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !47, !alias.scope !1319, !noalias !1318
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !47, !alias.scope !1318, !noalias !1319
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 8
  %.not.i.i.i.i6.7 = icmp eq ptr %i.cr, %i.bd
  br i1 %.not.i.i.i.i6.7, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i3, !llvm.loop !1301

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i3.prol.loopexit, %.lr.ph.i.i.i.i3, %vec.epilog.middle.block, %middle.block31
  %.pr.i = load ptr, ptr %i.ap, align 8, !tbaa !148
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i
  %i.ct = phi ptr [ %.pr.i, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i ], [ %i.bc, %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i7 = icmp eq ptr %i.ct, null
  br i1 %.not.i8.i7, label %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE13_M_deallocateEPcm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  %i.cu = load ptr, ptr %i.aq, align 8, !tbaa !155
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #30
  br label %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE13_M_deallocateEPcm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  store ptr %i.bb, ptr %i.ap, align 8, !tbaa !148
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store ptr %i.cy, ptr %i.ax, align 8, !tbaa !149
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %1
  store ptr %i.cz, ptr %i.aq, align 8, !tbaa !155
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE7reserveEm.exit

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE7reserveEm.exit: ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE7reserveEm.exit, %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE13_M_deallocateEPcm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11basic_tableIJSt6vectorIiN4test18throwing_allocatorIiEEES1_IcNS3_IcEEEEE7emplaceIJicEEESt5tupleIJRiRcEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !41
  store i32 %i.f, ptr %i.c, align 4, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.g, ptr %i.b, align 8, !tbaa !146
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145  ; 7 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #31
  unreachable

_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  %i.r = select i1 %i.p, i64 2305843009213693951, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = tail call noundef ptr @_ZN4test18throwing_allocatorIiE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.r) ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.l
  %i.u = load i32, ptr %2, align 4, !tbaa !41
  store i32 %i.u, ptr %i.t, align 4, !tbaa !41
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i
  %4 = ptrtoaddr ptr %i.s to i64
  %i.v = add i64 %i.j, -4
  %i.w = sub i64 %i.v, %i.k                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 44
  %i.z = sub i64 %i.k, %4
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.ae = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !41, !alias.scope !1349, !noalias !1348
  %wide.load25 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !41, !alias.scope !1349, !noalias !1348
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !41, !alias.scope !1348, !noalias !1349
  store <4 x i32> %wide.load25, ptr %i.af, align 4, !tbaa !41, !alias.scope !1348, !noalias !1349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader55

.lr.ph.i.i.i.i.i.preheader55:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader55, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.ah = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !41, !alias.scope !1349, !noalias !1348
  store i32 %i.ah, ptr %.012.i.i.i.i.i, align 4, !tbaa !41, !alias.scope !1348, !noalias !1349
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1324

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.an) #30
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i
  store ptr %i.s, ptr %i.h, align 8, !tbaa !145
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !146
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !144
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i
  %i.ap = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i ], [ %i.c, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !149 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !155
  %.not.i3 = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit
  %i.au = load i8, ptr %3, align 1, !tbaa !47
  store i8 %i.au, ptr %i.ar, align 1, !tbaa !47
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !149 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !149
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJcEEERcDpOT_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !148 ; 9 uses
  %i.az = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 12 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775807
  br i1 %i.bc, label %bb.h, label %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #31
  unreachable

_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i4 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bd = add i64 %.sroa.speculated.i.i.i4, %i.bb ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bb
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 9223372036854775807)
  %i.bg = select i1 %i.be, i64 9223372036854775807, i64 %i.bf ; 3 uses
  %.not.i.i.i5 = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i5)
  %i.bh = tail call noundef ptr @_ZN4test18throwing_allocatorIcE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.bg) ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  %i.bj = load i8, ptr %3, align 1, !tbaa !47
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !47
  %.not10.i.i.i.i.i6 = icmp eq ptr %i.ay, %i.ar
  br i1 %.not10.i.i.i.i.i6, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i
  %5 = ptrtoaddr ptr %i.bh to i64
  %min.iters.check30 = icmp ult i64 %i.bb, 8
  %i.bk = sub i64 %i.ba, %5
  %diff.check28 = icmp ugt i64 %i.bk, -32
  %or.cond54 = or i1 %min.iters.check30, %diff.check28
  br i1 %or.cond54, label %.lr.ph.i.i.i.i.i7.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check31 = icmp ult i64 %i.bb, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph32

vector.ph32:                                      ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.bb, 24
  %n.vec33 = and i64 %i.bb, -32                   ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bh, i64 %n.vec33 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ay, i64 %n.vec33
  br label %vector.body34

vector.body34:                                    ; preds = %vector.ph32, %vector.body34
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.bh, i64 %index35 ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.ay, i64 %index35 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.bo = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <16 x i8>, ptr %next.gep37, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  %wide.load39 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  %i.bp = getelementptr i8, ptr %next.gep36, i64 16
  store <16 x i8> %wide.load38, ptr %next.gep36, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  store <16 x i8> %wide.load39, ptr %i.bp, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  %index.next40 = add nuw i64 %index35, 32        ; 2 uses
  %i.bq = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.bq, label %middle.block41, label %vector.body34, !llvm.loop !1328

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %i.bb, %n.vec33
  br i1 %cmp.n42, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block41
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i7.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec33, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.bb, -8                    ; 4 uses
  %i.br = getelementptr i8, ptr %i.bh, i64 %n.vec45 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ay, i64 %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 3 uses
  %next.gep47 = getelementptr i8, ptr %i.bh, i64 %index46
  %next.gep48 = getelementptr i8, ptr %i.ay, i64 %index46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %wide.load49 = load <8 x i8>, ptr %next.gep48, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  store <8 x i8> %wide.load49, ptr %next.gep47, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  %index.next50 = add nuw i64 %index46, 8         ; 2 uses
  %i.bt = icmp eq i64 %index.next50, %n.vec45
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1329

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.bb, %n.vec45
  br i1 %cmp.n51, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i7.preheader

.lr.ph.i.i.i.i.i7.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i8.ph = phi ptr [ %i.bh, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.i9.ph = phi ptr [ %i.ay, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.i9.ph57 = ptrtoaddr ptr %.0911.i.i.i.i.i9.ph to i64 ; 2 uses
  %i.bu = sub i64 %i.az, %.0911.i.i.i.i.i9.ph57
  %xtraiter = and i64 %i.bu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i.i7.prol

.lr.ph.i.i.i.i.i7.prol:                           ; preds = %.lr.ph.i.i.i.i.i7.preheader, %.lr.ph.i.i.i.i.i7.prol
  %.012.i.i.i.i.i8.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i7.prol ], [ %.012.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i7.preheader ] ; 2 uses
  %.0911.i.i.i.i.i9.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i7.prol ], [ %.0911.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i7.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i7.prol ], [ 0, %.lr.ph.i.i.i.i.i7.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.bv = load i8, ptr %.0911.i.i.i.i.i9.prol, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  store i8 %i.bv, ptr %.012.i.i.i.i.i8.prol, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9.prol, i64 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i.i7.prol, !llvm.loop !1330

.lr.ph.i.i.i.i.i7.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i.i7.prol, %.lr.ph.i.i.i.i.i7.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i7.preheader ], [ %i.bx, %.lr.ph.i.i.i.i.i7.prol ]
  %.012.i.i.i.i.i8.unr = phi ptr [ %.012.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i7.preheader ], [ %i.bx, %.lr.ph.i.i.i.i.i7.prol ]
  %.0911.i.i.i.i.i9.unr = phi ptr [ %.0911.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i7.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i7.prol ]
  %i.by = sub i64 %.0911.i.i.i.i.i9.ph57, %i.az
  %i.bz = icmp ugt i64 %i.by, -8
  br i1 %i.bz, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %.lr.ph.i.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i.i7
  %.012.i.i.i.i.i8 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i7 ], [ %.012.i.i.i.i.i8.unr, %.lr.ph.i.i.i.i.i7.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i9 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i7 ], [ %.0911.i.i.i.i.i9.unr, %.lr.ph.i.i.i.i.i7.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.ca = load i8, ptr %.0911.i.i.i.i.i9, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  store i8 %i.ca, ptr %.012.i.i.i.i.i8, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !47, !alias.scope !1353, !noalias !1352
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !47, !alias.scope !1352, !noalias !1353
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !47, !alias.scope !1355, !noalias !1354
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !47, !alias.scope !1354, !noalias !1355
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 3
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !47, !alias.scope !1357, !noalias !1356
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !47, !alias.scope !1356, !noalias !1357
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !47, !alias.scope !1359, !noalias !1358
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !47, !alias.scope !1358, !noalias !1359
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 5
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !47, !alias.scope !1361, !noalias !1360
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !47, !alias.scope !1360, !noalias !1361
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 6
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !47, !alias.scope !1363, !noalias !1362
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !47, !alias.scope !1362, !noalias !1363
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 7
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !47, !alias.scope !1365, !noalias !1364
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !47, !alias.scope !1364, !noalias !1365
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 8 ; 2 uses
  %.not.i.i.i.i.i10.7 = icmp eq ptr %i.cw, %i.ar
  br i1 %.not.i.i.i.i.i10.7, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i7, !llvm.loop !1345

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i.i7, %middle.block41, %vec.epilog.middle.block, %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i11 = phi ptr [ %i.bh, %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i ], [ %i.br, %vec.epilog.middle.block ], [ %i.bm, %middle.block41 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i7.prol.loopexit ], [ %i.cx, %.lr.ph.i.i.i.i.i7 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i11, i64 1
  %.not.i23.i.i12 = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i12, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i
  %i.cz = load ptr, ptr %i.as, align 8, !tbaa !155
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.db) #30
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i
  store ptr %i.bh, ptr %i.ax, align 8, !tbaa !148
  store ptr %i.cy, ptr %i.aq, align 8, !tbaa !149
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store ptr %i.dc, ptr %i.as, align 8, !tbaa !155
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJcEEERcDpOT_.exit

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJcEEERcDpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i
  %i.dd = phi ptr [ %.0.lcssa.i.i.i.i.i11, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i ], [ %i.av, %bb.f ]
  store ptr %i.dd, ptr %0, align 8, !tbaa !49, !alias.scope !1366
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.de, align 8, !tbaa !80, !alias.scope !1366
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11basic_tableIJSt6vectorIiN4test18throwing_allocatorIiEEES1_IcNS3_IcEEEEEC2INS3_IvEEEEOS8_RKT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 9 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !81
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !41
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !41
  br label %_ZN4test18throwing_allocatorIiEC2IvEERKNS0_IT_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info:bb.a
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.ar, %bb.o ]
  %i.aw = load ptr, ptr %2, align 8, !tbaa !66    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.k
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !47
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !66     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !163  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !163  ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.m = load i64, ptr %i.j, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.n = phi i64 [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.h, %i.n
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.c, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 1, !tbaa !47
  store i8 %i.p, ptr %i.o, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef %i.a, i64 noundef %i.c)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.h, ptr %i.d, align 8, !tbaa !163
  %i.q = load ptr, ptr %0, align 8, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !47
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !163  ; 5 uses
  %i.d = sub i64 9223372036854775807, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.160) #31
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.a
  %i.f = add i64 %i.c, %i.a                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.j = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !47
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.a, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 2 uses
  %cond.i.i = icmp eq i64 %i.a, 1
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %1, align 1, !tbaa !47
  store i8 %i.n, ptr %i.m, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.f, ptr %i.b, align 8, !tbaa !163
  %i.o = load ptr, ptr %0, align 8, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store i8 0, ptr %i.p, align 1, !tbaa !47
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt11basic_tableIJSt6vectorIiN4test18throwing_allocatorIiEEES1_IcNS3_IcEEEEE7emplaceIJEEESt5tupleIJRiRcEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.32") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.f, ptr %i.b, align 8, !tbaa !146
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !145  ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775804
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #31
  unreachable

_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 2305843009213693951)
  %i.q = select i1 %i.o, i64 2305843009213693951, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = tail call noundef ptr @_ZN4test18throwing_allocatorIiE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef %i.q) ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.k
  store i32 0, ptr %i.s, align 4, !tbaa !41
  %.not10.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i
  %2 = ptrtoaddr ptr %i.r to i64
  %i.t = add i64 %i.i, -4
  %i.u = sub i64 %i.t, %i.j                       ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 44
  %i.x = sub i64 %i.j, %2
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ab ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.ac = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !41, !alias.scope !1408, !noalias !1407
  %wide.load23 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !41, !alias.scope !1408, !noalias !1407
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !41, !alias.scope !1407, !noalias !1408
  store <4 x i32> %wide.load23, ptr %i.ad, align 4, !tbaa !41, !alias.scope !1407, !noalias !1408
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.preheader53:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader53 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader53 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.af = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !41, !alias.scope !1408, !noalias !1407
  store i32 %i.af, ptr %.012.i.i.i.i.i, align 4, !tbaa !41, !alias.scope !1407, !noalias !1408
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1383

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i22.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.al) #30
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i
  store ptr %i.r, ptr %i.g, align 8, !tbaa !145
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !146
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  store ptr %i.am, ptr %i.d, align 8, !tbaa !144
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i
  %i.an = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i ], [ %i.c, %bb.b ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !149 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !155
  %.not.i1 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit
  store i8 0, ptr %i.ap, align 1, !tbaa !47
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !149 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !149
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJEEERcDpOT_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !148 ; 9 uses
  %i.aw = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 12 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775807
  br i1 %i.az, label %bb.h, label %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #31
  unreachable

_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i2 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.ba = add i64 %.sroa.speculated.i.i.i2, %i.ay ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i.i.i3 = icmp ne i64 %i.bd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3)
  %i.be = tail call noundef ptr @_ZN4test18throwing_allocatorIcE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.bd) ; 10 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ay
  store i8 0, ptr %i.bf, align 1, !tbaa !47
  %.not10.i.i.i.i.i4 = icmp eq ptr %i.av, %i.ap
  br i1 %.not10.i.i.i.i.i4, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i
  %3 = ptrtoaddr ptr %i.be to i64
  %min.iters.check28 = icmp ult i64 %i.ay, 8
  %i.bg = sub i64 %i.ax, %3
  %diff.check26 = icmp ugt i64 %i.bg, -32
  %or.cond52 = or i1 %min.iters.check28, %diff.check26
  br i1 %or.cond52, label %.lr.ph.i.i.i.i.i5.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.ay, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %i.ay, 24
  %n.vec31 = and i64 %i.ay, -32                   ; 5 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 %n.vec31 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.av, i64 %n.vec31
  br label %vector.body32

vector.body32:                                    ; preds = %vector.ph30, %vector.body32
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 3 uses
  %next.gep34 = getelementptr i8, ptr %i.be, i64 %index33 ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.av, i64 %index33 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.bk = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <16 x i8>, ptr %next.gep35, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  %wide.load37 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  %i.bl = getelementptr i8, ptr %next.gep34, i64 16
  store <16 x i8> %wide.load36, ptr %next.gep34, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  store <16 x i8> %wide.load37, ptr %i.bl, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  %index.next38 = add nuw i64 %index33, 32        ; 2 uses
  %i.bm = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.bm, label %middle.block39, label %vector.body32, !llvm.loop !1387

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %i.ay, %n.vec31
  br i1 %cmp.n40, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block39
  %min.epilog.iters.check = icmp eq i64 %i.bh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i5.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec31, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.ay, -8                    ; 4 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %n.vec43 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.av, i64 %n.vec43
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %next.gep45 = getelementptr i8, ptr %i.be, i64 %index44
  %next.gep46 = getelementptr i8, ptr %i.av, i64 %index44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %wide.load47 = load <8 x i8>, ptr %next.gep46, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  store <8 x i8> %wide.load47, ptr %next.gep45, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  %index.next48 = add nuw i64 %index44, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1388

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.ay, %n.vec43
  br i1 %cmp.n49, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i5.preheader

.lr.ph.i.i.i.i.i5.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i6.ph = phi ptr [ %i.be, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.i7.ph = phi ptr [ %i.av, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.i7.ph55 = ptrtoaddr ptr %.0911.i.i.i.i.i7.ph to i64 ; 2 uses
  %i.bq = sub i64 %i.aw, %.0911.i.i.i.i.i7.ph55
  %xtraiter = and i64 %i.bq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i5.prol.loopexit, label %.lr.ph.i.i.i.i.i5.prol

.lr.ph.i.i.i.i.i5.prol:                           ; preds = %.lr.ph.i.i.i.i.i5.preheader, %.lr.ph.i.i.i.i.i5.prol
  %.012.i.i.i.i.i6.prol = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i5.prol ], [ %.012.i.i.i.i.i6.ph, %.lr.ph.i.i.i.i.i5.preheader ] ; 2 uses
  %.0911.i.i.i.i.i7.prol = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i5.prol ], [ %.0911.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i5.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i5.prol ], [ 0, %.lr.ph.i.i.i.i.i5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.br = load i8, ptr %.0911.i.i.i.i.i7.prol, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  store i8 %i.br, ptr %.012.i.i.i.i.i6.prol, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7.prol, i64 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i5.prol.loopexit, label %.lr.ph.i.i.i.i.i5.prol, !llvm.loop !1389

.lr.ph.i.i.i.i.i5.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i.i5.prol, %.lr.ph.i.i.i.i.i5.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i5.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i5.prol ]
  %.012.i.i.i.i.i6.unr = phi ptr [ %.012.i.i.i.i.i6.ph, %.lr.ph.i.i.i.i.i5.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i5.prol ]
  %.0911.i.i.i.i.i7.unr = phi ptr [ %.0911.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i5.preheader ], [ %i.bs, %.lr.ph.i.i.i.i.i5.prol ]
  %i.bu = sub i64 %.0911.i.i.i.i.i7.ph55, %i.aw
  %i.bv = icmp ugt i64 %i.bu, -8
  br i1 %i.bv, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i5

.lr.ph.i.i.i.i.i5:                                ; preds = %.lr.ph.i.i.i.i.i5.prol.loopexit, %.lr.ph.i.i.i.i.i5
  %.012.i.i.i.i.i6 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i5 ], [ %.012.i.i.i.i.i6.unr, %.lr.ph.i.i.i.i.i5.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i7 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i5 ], [ %.0911.i.i.i.i.i7.unr, %.lr.ph.i.i.i.i.i5.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.bw = load i8, ptr %.0911.i.i.i.i.i7, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  store i8 %i.bw, ptr %.012.i.i.i.i.i6, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !47, !alias.scope !1412, !noalias !1411
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !47, !alias.scope !1411, !noalias !1412
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !47, !alias.scope !1414, !noalias !1413
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !47, !alias.scope !1413, !noalias !1414
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 3
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !47, !alias.scope !1416, !noalias !1415
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !47, !alias.scope !1415, !noalias !1416
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !47, !alias.scope !1418, !noalias !1417
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !47, !alias.scope !1417, !noalias !1418
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 5
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !47, !alias.scope !1420, !noalias !1419
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !47, !alias.scope !1419, !noalias !1420
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 6
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !47, !alias.scope !1422, !noalias !1421
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !47, !alias.scope !1421, !noalias !1422
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 7
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !47, !alias.scope !1424, !noalias !1423
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !47, !alias.scope !1423, !noalias !1424
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 8 ; 2 uses
  %.not.i.i.i.i.i8.7 = icmp eq ptr %i.cs, %i.ap
  br i1 %.not.i.i.i.i.i8.7, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i5, !llvm.loop !1404

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i5.prol.loopexit, %.lr.ph.i.i.i.i.i5, %middle.block39, %vec.epilog.middle.block, %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i9 = phi ptr [ %i.be, %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i ], [ %i.bn, %vec.epilog.middle.block ], [ %i.bi, %middle.block39 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i5.prol.loopexit ], [ %i.ct, %.lr.ph.i.i.i.i.i5 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i9, i64 1
  %.not.i22.i.i10 = icmp eq ptr %i.av, null
  br i1 %.not.i22.i.i10, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i
  %i.cv = load ptr, ptr %i.aq, align 8, !tbaa !155
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.cx) #30
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i
  store ptr %i.be, ptr %i.au, align 8, !tbaa !148
  store ptr %i.cu, ptr %i.ao, align 8, !tbaa !149
  %i.cy = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store ptr %i.cy, ptr %i.aq, align 8, !tbaa !155
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJEEERcDpOT_.exit

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJEEERcDpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i
  %i.cz = phi ptr [ %.0.lcssa.i.i.i.i.i9, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i ], [ %i.as, %bb.f ]
  store ptr %i.cz, ptr %0, align 8, !tbaa !49, !alias.scope !1425
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.da, align 8, !tbaa !80, !alias.scope !1425
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23Table_Constructors_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN41TableDeathTest_DISABLED_Constructors_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
end_hunk_1
