Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/table?download=true
begin_hunk_0_@_ZN4entt11basic_tableIJSt6vectorIiN4test18throwing_allocatorIiEEES1_IcNS3_IcEEEEEC2INS3_IvEEEERKT_:bb.a
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
  %i.s = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.t = ptrtoaddr ptr %i.p to i64
  %i.u = ptrtoaddr ptr %i.r to i64
  %i.v = add i64 %i.u, -4
  %i.w = sub i64 %i.v, %i.s                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 44
  %i.z = sub i64 %i.s, %i.t
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.q, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ad ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.ae = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !41, !alias.scope !1303, !noalias !1302
  %wide.load15 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !41, !alias.scope !1303, !noalias !1302
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !41, !alias.scope !1302, !noalias !1303
  store <4 x i32> %wide.load15, ptr %i.af, align 4, !tbaa !41, !alias.scope !1302, !noalias !1303
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader45

.lr.ph.i.i.i.i.preheader45:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader45, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader45 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader45 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.ah = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !41, !alias.scope !1303, !noalias !1302
  store i32 %i.ah, ptr %.012.i.i.i.i, align 4, !tbaa !41, !alias.scope !1302, !noalias !1303
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1280

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE13_M_deallocateEPim.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.q to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.an) #30
  br label %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE13_M_deallocateEPim.exit.i: ; preds = %bb.d, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit.i
  store ptr %i.p, ptr %i.c, align 8, !tbaa !145
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.ao, ptr %i.l, align 8, !tbaa !146
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %1
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !144
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE7reserveEm.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE13_M_deallocateEPim.exit.i, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !155
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !148
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp ult i64 %i.aw, %1
  br i1 %i.ax, label %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE7reserveEm.exit

_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE7reserveEm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !149
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.av
  %i.bc = tail call noundef ptr @_ZN4test18throwing_allocatorIcE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) ; 9 uses
  %i.bd = load ptr, ptr %i.aq, align 8, !tbaa !148 ; 8 uses
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !149 ; 3 uses
  %.not10.i.i.i.i2 = icmp eq ptr %i.bd, %i.be
  br i1 %.not10.i.i.i.i2, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i
  %i.bf = ptrtoaddr ptr %i.bd to i64              ; 2 uses
  %i.bg = ptrtoaddr ptr %i.bc to i64
  %i.bh = ptrtoaddr ptr %i.be to i64              ; 3 uses
  %i.bi = sub i64 %i.bh, %i.bf                    ; 7 uses
  %min.iters.check20 = icmp ult i64 %i.bi, 4
  %i.bj = sub i64 %i.bf, %i.bg
  %diff.check18 = icmp ugt i64 %i.bj, -32
  %or.cond44 = or i1 %min.iters.check20, %diff.check18
  br i1 %or.cond44, label %.lr.ph.i.i.i.i3.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp ult i64 %i.bi, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph22

vector.ph22:                                      ; preds = %vector.main.loop.iter.check
  %i.bk = and i64 %i.bi, 28
  %n.vec23 = and i64 %i.bi, -32                   ; 5 uses
  %i.bl = getelementptr i8, ptr %i.bc, i64 %n.vec23
  %i.bm = getelementptr i8, ptr %i.bd, i64 %n.vec23
  br label %vector.body24

vector.body24:                                    ; preds = %vector.body24, %vector.ph22
  %index25 = phi i64 [ 0, %vector.ph22 ], [ %index.next30, %vector.body24 ] ; 3 uses
  %next.gep26 = getelementptr i8, ptr %i.bc, i64 %index25 ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.bd, i64 %index25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.bn = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load28 = load <16 x i8>, ptr %next.gep27, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  %wide.load29 = load <16 x i8>, ptr %i.bn, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  %i.bo = getelementptr i8, ptr %next.gep26, i64 16
  store <16 x i8> %wide.load28, ptr %next.gep26, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  store <16 x i8> %wide.load29, ptr %i.bo, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  %index.next30 = add nuw i64 %index25, 32        ; 2 uses
  %i.bp = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.bp, label %middle.block31, label %vector.body24, !llvm.loop !1284

middle.block31:                                   ; preds = %vector.body24
  %cmp.n32 = icmp eq i64 %i.bi, %n.vec23
  br i1 %cmp.n32, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block31
  %min.epilog.iters.check = icmp eq i64 %i.bk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i3.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec23, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.bi, -4                    ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bc, i64 %n.vec35
  %i.br = getelementptr i8, ptr %i.bd, i64 %n.vec35
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %next.gep37 = getelementptr i8, ptr %i.bc, i64 %index36
  %next.gep38 = getelementptr i8, ptr %i.bd, i64 %index36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %wide.load39 = load <4 x i8>, ptr %next.gep38, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  store <4 x i8> %wide.load39, ptr %next.gep37, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  %index.next40 = add nuw i64 %index36, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1285

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.bi, %n.vec35
  br i1 %cmp.n41, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i3.preheader

.lr.ph.i.i.i.i3.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i4.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i5.ph = phi ptr [ %i.bd, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i5.ph46 = ptrtoaddr ptr %.0911.i.i.i.i5.ph to i64 ; 2 uses
  %i.bt = sub i64 %i.bh, %.0911.i.i.i.i5.ph46
  %xtraiter = and i64 %i.bt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i3.prol.loopexit, label %.lr.ph.i.i.i.i3.prol

.lr.ph.i.i.i.i3.prol:                             ; preds = %.lr.ph.i.i.i.i3.preheader, %.lr.ph.i.i.i.i3.prol
  %.012.i.i.i.i4.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i3.prol ], [ %.012.i.i.i.i4.ph, %.lr.ph.i.i.i.i3.preheader ] ; 2 uses
  %.0911.i.i.i.i5.prol = phi ptr [ %i.bv, %.lr.ph.i.i.i.i3.prol ], [ %.0911.i.i.i.i5.ph, %.lr.ph.i.i.i.i3.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i3.prol ], [ 0, %.lr.ph.i.i.i.i3.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.bu = load i8, ptr %.0911.i.i.i.i5.prol, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  store i8 %i.bu, ptr %.012.i.i.i.i4.prol, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5.prol, i64 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i3.prol.loopexit, label %.lr.ph.i.i.i.i3.prol, !llvm.loop !1286

.lr.ph.i.i.i.i3.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i3.prol, %.lr.ph.i.i.i.i3.preheader
  %.012.i.i.i.i4.unr = phi ptr [ %.012.i.i.i.i4.ph, %.lr.ph.i.i.i.i3.preheader ], [ %i.bw, %.lr.ph.i.i.i.i3.prol ]
  %.0911.i.i.i.i5.unr = phi ptr [ %.0911.i.i.i.i5.ph, %.lr.ph.i.i.i.i3.preheader ], [ %i.bv, %.lr.ph.i.i.i.i3.prol ]
  %i.bx = sub i64 %.0911.i.i.i.i5.ph46, %i.bh
  %i.by = icmp ugt i64 %i.bx, -8
  br i1 %i.by, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %.lr.ph.i.i.i.i3.prol.loopexit, %.lr.ph.i.i.i.i3
  %.012.i.i.i.i4 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i3 ], [ %.012.i.i.i.i4.unr, %.lr.ph.i.i.i.i3.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i5 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i3 ], [ %.0911.i.i.i.i5.unr, %.lr.ph.i.i.i.i3.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.bz = load i8, ptr %.0911.i.i.i.i5, align 1, !tbaa !47, !alias.scope !1305, !noalias !1304
  store i8 %i.bz, ptr %.012.i.i.i.i4, align 1, !tbaa !47, !alias.scope !1304, !noalias !1305
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !47, !alias.scope !1307, !noalias !1306
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !47, !alias.scope !1306, !noalias !1307
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !47, !alias.scope !1309, !noalias !1308
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !47, !alias.scope !1308, !noalias !1309
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 3
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !47, !alias.scope !1311, !noalias !1310
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !47, !alias.scope !1310, !noalias !1311
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !47, !alias.scope !1313, !noalias !1312
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !47, !alias.scope !1312, !noalias !1313
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 5
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !47, !alias.scope !1315, !noalias !1314
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !47, !alias.scope !1314, !noalias !1315
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 6
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !47, !alias.scope !1317, !noalias !1316
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !47, !alias.scope !1316, !noalias !1317
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 7
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !47, !alias.scope !1319, !noalias !1318
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !47, !alias.scope !1318, !noalias !1319
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 8
  %.not.i.i.i.i6.7 = icmp eq ptr %i.cv, %i.be
  br i1 %.not.i.i.i.i6.7, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i3, !llvm.loop !1301

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i3.prol.loopexit, %.lr.ph.i.i.i.i3, %vec.epilog.middle.block, %middle.block31
  %.pr.i = load ptr, ptr %i.aq, align 8, !tbaa !148
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i, %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i
  %i.cx = phi ptr [ %.pr.i, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exitthread-pre-split.i ], [ %i.bd, %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i7 = icmp eq ptr %i.cx, null
  br i1 %.not.i8.i7, label %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE13_M_deallocateEPcm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  %i.cy = load ptr, ptr %i.ar, align 8, !tbaa !155
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.db) #30
  br label %_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE13_M_deallocateEPcm.exit.i

_ZNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE13_M_deallocateEPcm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit.i
  store ptr %i.bc, ptr %i.aq, align 8, !tbaa !148
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store ptr %i.dc, ptr %i.ay, align 8, !tbaa !149
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %1
  store ptr %i.dd, ptr %i.ar, align 8, !tbaa !155
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
  %i.v = ptrtoaddr ptr %i.s to i64
  %i.w = add i64 %i.j, -4
  %i.x = sub i64 %i.w, %i.k                       ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 44
  %i.aa = sub i64 %i.k, %i.v
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.i, i64 %i.ae ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.af = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !41, !alias.scope !1349, !noalias !1348
  %wide.load25 = load <4 x i32>, ptr %i.af, align 4, !tbaa !41, !alias.scope !1349, !noalias !1348
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !41, !alias.scope !1348, !noalias !1349
  store <4 x i32> %wide.load25, ptr %i.ag, align 4, !tbaa !41, !alias.scope !1348, !noalias !1349
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader55

.lr.ph.i.i.i.i.i.preheader55:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader55, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader55 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.ai = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !41, !alias.scope !1349, !noalias !1348
  store i32 %i.ai, ptr %.012.i.i.i.i.i, align 4, !tbaa !41, !alias.scope !1348, !noalias !1349
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1324

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %middle.block ], [ %i.ak, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ao) #30
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit22.i.i
  store ptr %i.s, ptr %i.h, align 8, !tbaa !145
  store ptr %i.al, ptr %i.b, align 8, !tbaa !146
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !144
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i
  %i.aq = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i ], [ %i.c, %bb.b ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !149 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !155
  %.not.i3 = icmp eq ptr %i.as, %i.au
  br i1 %.not.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit
  %i.av = load i8, ptr %3, align 1, !tbaa !47
  store i8 %i.av, ptr %i.as, align 1, !tbaa !47
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !149 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !149
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJcEEERcDpOT_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJiEEERiDpOT_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !148 ; 9 uses
  %i.ba = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 12 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775807
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #31
  unreachable

_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i4 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.be = add i64 %.sroa.speculated.i.i.i4, %i.bc ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bc
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 9223372036854775807)
  %i.bh = select i1 %i.bf, i64 9223372036854775807, i64 %i.bg ; 3 uses
  %.not.i.i.i5 = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i5)
  %i.bi = tail call noundef ptr @_ZN4test18throwing_allocatorIcE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.bh) ; 10 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  %i.bk = load i8, ptr %3, align 1, !tbaa !47
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !47
  %.not10.i.i.i.i.i6 = icmp eq ptr %i.az, %i.as
  br i1 %.not10.i.i.i.i.i6, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i
  %i.bl = ptrtoaddr ptr %i.bi to i64
  %min.iters.check30 = icmp ult i64 %i.bc, 4
  %i.bm = sub i64 %i.bb, %i.bl
  %diff.check28 = icmp ugt i64 %i.bm, -32
  %or.cond54 = or i1 %min.iters.check30, %diff.check28
  br i1 %or.cond54, label %.lr.ph.i.i.i.i.i7.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check31 = icmp ult i64 %i.bc, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph32

vector.ph32:                                      ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %i.bc, 28
  %n.vec33 = and i64 %i.bc, -32                   ; 5 uses
  %i.bo = getelementptr i8, ptr %i.bi, i64 %n.vec33 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.az, i64 %n.vec33
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 3 uses
  %next.gep36 = getelementptr i8, ptr %i.bi, i64 %index35 ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.az, i64 %index35 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.bq = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <16 x i8>, ptr %next.gep37, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  %wide.load39 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  %i.br = getelementptr i8, ptr %next.gep36, i64 16
  store <16 x i8> %wide.load38, ptr %next.gep36, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  store <16 x i8> %wide.load39, ptr %i.br, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  %index.next40 = add nuw i64 %index35, 32        ; 2 uses
  %i.bs = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.bs, label %middle.block41, label %vector.body34, !llvm.loop !1328

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %i.bc, %n.vec33
  br i1 %cmp.n42, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block41
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i7.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec33, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.bc, -4                    ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bi, i64 %n.vec45 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.az, i64 %n.vec45
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 3 uses
  %next.gep47 = getelementptr i8, ptr %i.bi, i64 %index46
  %next.gep48 = getelementptr i8, ptr %i.az, i64 %index46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %wide.load49 = load <4 x i8>, ptr %next.gep48, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  store <4 x i8> %wide.load49, ptr %next.gep47, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  %index.next50 = add nuw i64 %index46, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next50, %n.vec45
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1329

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.bc, %n.vec45
  br i1 %cmp.n51, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i7.preheader

.lr.ph.i.i.i.i.i7.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i8.ph = phi ptr [ %i.bi, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.i9.ph = phi ptr [ %i.az, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bu, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.i9.ph57 = ptrtoaddr ptr %.0911.i.i.i.i.i9.ph to i64 ; 2 uses
  %i.bw = sub i64 %i.ba, %.0911.i.i.i.i.i9.ph57
  %xtraiter = and i64 %i.bw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i.i7.prol

.lr.ph.i.i.i.i.i7.prol:                           ; preds = %.lr.ph.i.i.i.i.i7.preheader, %.lr.ph.i.i.i.i.i7.prol
  %.012.i.i.i.i.i8.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i7.prol ], [ %.012.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i7.preheader ] ; 2 uses
  %.0911.i.i.i.i.i9.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i7.prol ], [ %.0911.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i7.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i7.prol ], [ 0, %.lr.ph.i.i.i.i.i7.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.bx = load i8, ptr %.0911.i.i.i.i.i9.prol, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  store i8 %i.bx, ptr %.012.i.i.i.i.i8.prol, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9.prol, i64 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i7.prol.loopexit, label %.lr.ph.i.i.i.i.i7.prol, !llvm.loop !1330

.lr.ph.i.i.i.i.i7.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i.i7.prol, %.lr.ph.i.i.i.i.i7.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i7.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i7.prol ]
  %.012.i.i.i.i.i8.unr = phi ptr [ %.012.i.i.i.i.i8.ph, %.lr.ph.i.i.i.i.i7.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i7.prol ]
  %.0911.i.i.i.i.i9.unr = phi ptr [ %.0911.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i7.preheader ], [ %i.by, %.lr.ph.i.i.i.i.i7.prol ]
  %i.ca = sub i64 %.0911.i.i.i.i.i9.ph57, %i.ba
  %i.cb = icmp ugt i64 %i.ca, -8
  br i1 %i.cb, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %.lr.ph.i.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i.i7
  %.012.i.i.i.i.i8 = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i7 ], [ %.012.i.i.i.i.i8.unr, %.lr.ph.i.i.i.i.i7.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i9 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i7 ], [ %.0911.i.i.i.i.i9.unr, %.lr.ph.i.i.i.i.i7.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.cc = load i8, ptr %.0911.i.i.i.i.i9, align 1, !tbaa !47, !alias.scope !1351, !noalias !1350
  store i8 %i.cc, ptr %.012.i.i.i.i.i8, align 1, !tbaa !47, !alias.scope !1350, !noalias !1351
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !47, !alias.scope !1353, !noalias !1352
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !47, !alias.scope !1352, !noalias !1353
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 2
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !47, !alias.scope !1355, !noalias !1354
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !47, !alias.scope !1354, !noalias !1355
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 3
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !47, !alias.scope !1357, !noalias !1356
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !47, !alias.scope !1356, !noalias !1357
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !47, !alias.scope !1359, !noalias !1358
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !47, !alias.scope !1358, !noalias !1359
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 5
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !47, !alias.scope !1361, !noalias !1360
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !47, !alias.scope !1360, !noalias !1361
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 6
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363)
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !47, !alias.scope !1363, !noalias !1362
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !47, !alias.scope !1362, !noalias !1363
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 7
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !47, !alias.scope !1365, !noalias !1364
  store i8 %i.cx, ptr %i.cw, align 1, !tbaa !47, !alias.scope !1364, !noalias !1365
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i9, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i8, i64 8 ; 2 uses
  %.not.i.i.i.i.i10.7 = icmp eq ptr %i.cy, %i.as
  br i1 %.not.i.i.i.i.i10.7, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i7, !llvm.loop !1345

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i7.prol.loopexit, %.lr.ph.i.i.i.i.i7, %middle.block41, %vec.epilog.middle.block, %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i11 = phi ptr [ %i.bi, %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i ], [ %i.bt, %vec.epilog.middle.block ], [ %i.bo, %middle.block41 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i7.prol.loopexit ], [ %i.cz, %.lr.ph.i.i.i.i.i7 ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i11, i64 1
  %.not.i23.i.i12 = icmp eq ptr %i.az, null
  br i1 %.not.i23.i.i12, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i
  %i.db = load ptr, ptr %i.at, align 8, !tbaa !155
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.dd) #30
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit22.i.i
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !148
  store ptr %i.da, ptr %i.ar, align 8, !tbaa !149
  %i.de = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store ptr %i.de, ptr %i.at, align 8, !tbaa !155
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJcEEERcDpOT_.exit

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJcEEERcDpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i
  %i.df = phi ptr [ %.0.lcssa.i.i.i.i.i11, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i ], [ %i.aw, %bb.f ]
  store ptr %i.df, ptr %0, align 8, !tbaa !49, !alias.scope !1366
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.dg, align 8, !tbaa !80, !alias.scope !1366
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
  br label %_ZN4test18throwing_allocatorIiEC2IvEERKNS0_IT_EE.exit

_ZN4test18throwing_allocatorIiEC2IvEERKNS0_IT_EE.exit: ; preds = %bb.d, %bb.c
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4test18throwing_allocatorIiEC2IvEERKNS0_IT_EE.exit
  %i.k = load i32, ptr %i.e, align 4, !tbaa !41
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.e, align 4, !tbaa !41
  br label %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit.i

bb.f:                                             ; preds = %_ZN4test18throwing_allocatorIiEC2IvEERKNS0_IT_EE.exit
  %i.m = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit.i

_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit.i: ; preds = %bb.a, %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86, !noalias !1373 ; 8 uses
  %.not.i.i.i.i.i.i24 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i24, label %bb.p, label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIiN4test18throwing_allocatorIiEEEC2ERKS2_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 7 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47, !noalias !1373
  %.not.i.i.i.i.i.i12.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i12.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.p, align 4, !tbaa !41, !noalias !1373
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !41, !noalias !1373
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4, !noalias !1373 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.p, align 8, !tbaa !95
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !96
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #27, !inline_history !1369
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc:bb.a
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
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = add i64 %i.i, -4
  %i.v = sub i64 %i.u, %i.j                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 44
  %i.y = sub i64 %i.j, %i.t
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader53, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.h, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.ad = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !41, !alias.scope !1408, !noalias !1407
  %wide.load23 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !41, !alias.scope !1408, !noalias !1407
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !41, !alias.scope !1407, !noalias !1408
  store <4 x i32> %wide.load23, ptr %i.ae, align 4, !tbaa !41, !alias.scope !1407, !noalias !1408
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i.preheader53

.lr.ph.i.i.i.i.i.preheader53:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader53, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader53 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader53 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.ag = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !41, !alias.scope !1408, !noalias !1407
  store i32 %i.ag, ptr %.012.i.i.i.i.i, align 4, !tbaa !41, !alias.scope !1407, !noalias !1408
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1383

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIiN4test18throwing_allocatorIiEEE12_M_check_lenEmPKc.exit.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i22.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.am) #30
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE11_S_relocateEPiS4_S4_RS2_.exit21.i.i
  store ptr %i.r, ptr %i.g, align 8, !tbaa !145
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !146
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  store ptr %i.an, ptr %i.d, align 8, !tbaa !144
  br label %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit

_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i
  %i.ao = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPiS3_EEDpOT_.exit.i ], [ %i.c, %bb.b ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !149 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !155
  %.not.i1 = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit
  store i8 0, ptr %i.aq, align 1, !tbaa !47
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !149 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !149
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJEEERcDpOT_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIiN4test18throwing_allocatorIiEEE12emplace_backIJEEERiDpOT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !148 ; 9 uses
  %i.ax = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 12 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775807
  br i1 %i.ba, label %bb.h, label %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.166) #31
  unreachable

_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i2 = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i.i.i2, %i.az ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775807)
  %i.be = select i1 %i.bc, i64 9223372036854775807, i64 %i.bd ; 3 uses
  %.not.i.i.i3 = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i3)
  %i.bf = tail call noundef ptr @_ZN4test18throwing_allocatorIcE8allocateEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.be) ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.az
  store i8 0, ptr %i.bg, align 1, !tbaa !47
  %.not10.i.i.i.i.i4 = icmp eq ptr %i.aw, %i.aq
  br i1 %.not10.i.i.i.i.i4, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i
  %i.bh = ptrtoaddr ptr %i.bf to i64
  %min.iters.check28 = icmp ult i64 %i.az, 4
  %i.bi = sub i64 %i.ay, %i.bh
  %diff.check26 = icmp ugt i64 %i.bi, -32
  %or.cond52 = or i1 %min.iters.check28, %diff.check26
  br i1 %or.cond52, label %.lr.ph.i.i.i.i.i5.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.az, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.az, 28
  %n.vec31 = and i64 %i.az, -32                   ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bf, i64 %n.vec31 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.aw, i64 %n.vec31
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 3 uses
  %next.gep34 = getelementptr i8, ptr %i.bf, i64 %index33 ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.aw, i64 %index33 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.bm = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <16 x i8>, ptr %next.gep35, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  %wide.load37 = load <16 x i8>, ptr %i.bm, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  %i.bn = getelementptr i8, ptr %next.gep34, i64 16
  store <16 x i8> %wide.load36, ptr %next.gep34, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  store <16 x i8> %wide.load37, ptr %i.bn, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  %index.next38 = add nuw i64 %index33, 32        ; 2 uses
  %i.bo = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.bo, label %middle.block39, label %vector.body32, !llvm.loop !1387

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %i.az, %n.vec31
  br i1 %cmp.n40, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block39
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i5.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec31, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec43 = and i64 %i.az, -4                    ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 %n.vec43 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.aw, i64 %n.vec43
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %next.gep45 = getelementptr i8, ptr %i.bf, i64 %index44
  %next.gep46 = getelementptr i8, ptr %i.aw, i64 %index44
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %wide.load47 = load <4 x i8>, ptr %next.gep46, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  store <4 x i8> %wide.load47, ptr %next.gep45, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  %index.next48 = add nuw i64 %index44, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next48, %n.vec43
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1388

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %i.az, %n.vec43
  br i1 %cmp.n49, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i5.preheader

.lr.ph.i.i.i.i.i5.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i6.ph = phi ptr [ %i.bf, %iter.check ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 2 uses
  %.0911.i.i.i.i.i7.ph = phi ptr [ %i.aw, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ] ; 3 uses
  %.0911.i.i.i.i.i7.ph55 = ptrtoaddr ptr %.0911.i.i.i.i.i7.ph to i64 ; 2 uses
  %i.bs = sub i64 %i.ax, %.0911.i.i.i.i.i7.ph55
  %xtraiter = and i64 %i.bs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i5.prol.loopexit, label %.lr.ph.i.i.i.i.i5.prol

.lr.ph.i.i.i.i.i5.prol:                           ; preds = %.lr.ph.i.i.i.i.i5.preheader, %.lr.ph.i.i.i.i.i5.prol
  %.012.i.i.i.i.i6.prol = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i5.prol ], [ %.012.i.i.i.i.i6.ph, %.lr.ph.i.i.i.i.i5.preheader ] ; 2 uses
  %.0911.i.i.i.i.i7.prol = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i5.prol ], [ %.0911.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i5.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i5.prol ], [ 0, %.lr.ph.i.i.i.i.i5.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.bt = load i8, ptr %.0911.i.i.i.i.i7.prol, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  store i8 %i.bt, ptr %.012.i.i.i.i.i6.prol, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7.prol, i64 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i5.prol.loopexit, label %.lr.ph.i.i.i.i.i5.prol, !llvm.loop !1389

.lr.ph.i.i.i.i.i5.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i.i5.prol, %.lr.ph.i.i.i.i.i5.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i5.preheader ], [ %i.bv, %.lr.ph.i.i.i.i.i5.prol ]
  %.012.i.i.i.i.i6.unr = phi ptr [ %.012.i.i.i.i.i6.ph, %.lr.ph.i.i.i.i.i5.preheader ], [ %i.bv, %.lr.ph.i.i.i.i.i5.prol ]
  %.0911.i.i.i.i.i7.unr = phi ptr [ %.0911.i.i.i.i.i7.ph, %.lr.ph.i.i.i.i.i5.preheader ], [ %i.bu, %.lr.ph.i.i.i.i.i5.prol ]
  %i.bw = sub i64 %.0911.i.i.i.i.i7.ph55, %i.ax
  %i.bx = icmp ugt i64 %i.bw, -8
  br i1 %i.bx, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i5

.lr.ph.i.i.i.i.i5:                                ; preds = %.lr.ph.i.i.i.i.i5.prol.loopexit, %.lr.ph.i.i.i.i.i5
  %.012.i.i.i.i.i6 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i5 ], [ %.012.i.i.i.i.i6.unr, %.lr.ph.i.i.i.i.i5.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i7 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i5 ], [ %.0911.i.i.i.i.i7.unr, %.lr.ph.i.i.i.i.i5.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.by = load i8, ptr %.0911.i.i.i.i.i7, align 1, !tbaa !47, !alias.scope !1410, !noalias !1409
  store i8 %i.by, ptr %.012.i.i.i.i.i6, align 1, !tbaa !47, !alias.scope !1409, !noalias !1410
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1412)
  %i.cb = load i8, ptr %i.bz, align 1, !tbaa !47, !alias.scope !1412, !noalias !1411
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !47, !alias.scope !1411, !noalias !1412
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !47, !alias.scope !1414, !noalias !1413
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !47, !alias.scope !1413, !noalias !1414
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 3
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.ch = load i8, ptr %i.cf, align 1, !tbaa !47, !alias.scope !1416, !noalias !1415
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !47, !alias.scope !1415, !noalias !1416
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !47, !alias.scope !1418, !noalias !1417
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !47, !alias.scope !1417, !noalias !1418
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 5
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.cn = load i8, ptr %i.cl, align 1, !tbaa !47, !alias.scope !1420, !noalias !1419
  store i8 %i.cn, ptr %i.cm, align 1, !tbaa !47, !alias.scope !1419, !noalias !1420
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 6
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !47, !alias.scope !1422, !noalias !1421
  store i8 %i.cq, ptr %i.cp, align 1, !tbaa !47, !alias.scope !1421, !noalias !1422
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 7
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.ct = load i8, ptr %i.cr, align 1, !tbaa !47, !alias.scope !1424, !noalias !1423
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !47, !alias.scope !1423, !noalias !1424
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i7, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i6, i64 8 ; 2 uses
  %.not.i.i.i.i.i8.7 = icmp eq ptr %i.cu, %i.aq
  br i1 %.not.i.i.i.i.i8.7, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i, label %.lr.ph.i.i.i.i.i5, !llvm.loop !1404

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i5.prol.loopexit, %.lr.ph.i.i.i.i.i5, %middle.block39, %vec.epilog.middle.block, %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i9 = phi ptr [ %i.bf, %_ZNKSt6vectorIcN4test18throwing_allocatorIcEEE12_M_check_lenEmPKc.exit.i.i ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bk, %middle.block39 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i5.prol.loopexit ], [ %i.cv, %.lr.ph.i.i.i.i.i5 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i9, i64 1
  %.not.i22.i.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i22.i.i10, label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i
  %i.cx = load ptr, ptr %i.ar, align 8, !tbaa !155
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cz) #30
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE11_S_relocateEPcS4_S4_RS2_.exit21.i.i
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !148
  store ptr %i.cw, ptr %i.ap, align 8, !tbaa !149
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store ptr %i.da, ptr %i.ar, align 8, !tbaa !155
  br label %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJEEERcDpOT_.exit

_ZNSt6vectorIcN4test18throwing_allocatorIcEEE12emplace_backIJEEERcDpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i
  %i.db = phi ptr [ %.0.lcssa.i.i.i.i.i9, %_ZNSt6vectorIcN4test18throwing_allocatorIcEEE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPcS3_EEDpOT_.exit.i ], [ %i.at, %bb.f ]
  store ptr %i.db, ptr %0, align 8, !tbaa !49, !alias.scope !1425
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.dc, align 8, !tbaa !80, !alias.scope !1425
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
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15Table_Move_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15Table_Swap_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN19Table_Capacity_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22Table_ShrinkToFit_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN19Table_Iterator_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN24Table_ConstIterator_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26Table_ReverseIterator_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
end_hunk_1
begin_hunk_2_@llvm.umin.i64
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noreturn }
attributes #21 = { nofree nounwind }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn }
attributes #32 = { cold nounwind }
attributes #33 = { cold }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{null, null, null}
!1 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!2 = distinct !{null, null}
!3 = distinct !{ptr @_ZN4test18throwing_allocatorIvED2Ev, null, null, null}
!4 = distinct !{null, null, null, null}
!5 = distinct !{null, null, null, null}
!6 = distinct !{null, null, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null, null, null, null}
!9 = distinct !{null, null, null, null}
!10 = distinct !{null, null, null, null}
!11 = distinct !{null, null, null, null}
!12 = distinct !{!12, !152}
!13 = distinct !{!13, !152}
!14 = distinct !{!14, !152}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"vtable pointer", !19, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"long", !20, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !20, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !20, i64 0}
!29 = !{!"any pointer", !20, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !29, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !29, i64 0, !26, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !29, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !29, i64 0}
!34 = !{!"_ZTSSt6locale", !33, i64 0}
!35 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !30, i64 40, !31, i64 48, !20, i64 64, !21, i64 192, !32, i64 200, !34, i64 208}
!36 = !{!35, !28, i64 32}
!37 = !{!"p1 int", !29, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!39 = !{!38, !37, i64 0}
!40 = !{!38, !37, i64 16}
!41 = !{!21, !21, i64 0}
!42 = !{!38, !37, i64 8}
!43 = !{!"p1 omnipotent char", !29, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !43, i64 16}
!47 = !{!20, !20, i64 0}
!48 = !{!44, !43, i64 8}
!49 = !{!43, !43, i64 0}
!50 = !{!26, !26, i64 0}
!51 = !{!"bool", !20, i64 0}
!52 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !52, i64 0}
!54 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !53, i64 0}
!55 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !54, i64 0}
!56 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !55, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !56, i64 0}
!58 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !57, i64 0}
!59 = !{!"_ZTSN7testing15AssertionResultE", !51, i64 0, !58, i64 8}
!60 = !{!59, !51, i64 0}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!52, !52, i64 0}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !64, i64 0, !26, i64 8, !20, i64 16}
!66 = !{!65, !43, i64 0}
!67 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!70 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!71 = !{!"_ZTSN7testing25MatcherDescriberInterfaceE"}
!72 = !{!"p1 _ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE", !29, i64 0}
!73 = !{!"_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !71, i64 0, !72, i64 8, !20, i64 16}
!74 = !{!73, !72, i64 8}
!75 = !{!"_ZTSN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6VTableE", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24}
!76 = !{!75, !29, i64 24}
!77 = !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev}
!78 = !{!"p1 _ZTSN7testing8internal9DeathTestE", !29, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!37, !37, i64 0}
!81 = !{!29, !29, i64 0}
!82 = !{!"p1 _ZTS8_IO_FILE", !29, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !29, i64 0}
!85 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0}
!86 = !{!85, !84, i64 0}
!87 = !{!"p1 _ZTSN7testing8internal2REE", !29, i64 0}
!88 = !{!"_ZTSSt12__shared_ptrIKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE", !87, i64 0, !85, i64 8}
!89 = !{!"_ZTSSt10shared_ptrIKN7testing8internal2REEE", !88, i64 0}
!90 = !{!"_ZTSN7testing8internal19MatchesRegexMatcherE", !89, i64 0, !51, i64 16}
!91 = !{!90, !51, i64 16}
!92 = !{!"p1 _ZTSN7testing16MatcherInterfaceIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !29, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 8, !21, i64 12}
!95 = !{!94, !21, i64 8}
!96 = !{!94, !21, i64 12}
!97 = !{!53, !52, i64 0}
!98 = !{!"_ZTSSt10_Head_baseILm1EcLb0EE", !20, i64 0}
!99 = !{!98, !20, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EiLb0EE", !21, i64 0}
!101 = !{!100, !21, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm0ERiLb0EE", !37, i64 0}
!103 = !{!102, !37, i64 0}
!104 = !{i64 4}
!105 = !{!"_ZTSSt10_Head_baseILm1ERcLb0EE", !43, i64 0}
!106 = !{!105, !43, i64 0}
!107 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!108 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !37, i64 0}
!109 = !{!108, !37, i64 0}
!110 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEE", !43, i64 0}
!111 = !{!110, !43, i64 0}
!112 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !37, i64 0}
!113 = !{!112, !37, i64 0}
!114 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEE", !43, i64 0}
!115 = !{!114, !43, i64 0}
!116 = !{!"_ZTSSt10_Head_baseILm0ERKiLb0EE", !37, i64 0}
!117 = !{!116, !37, i64 0}
!118 = !{!"_ZTSSt10_Head_baseILm1ERKcLb0EE", !43, i64 0}
!119 = !{!118, !43, i64 0}
!120 = !{!"p1 long", !29, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !121, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseImSaImEE", !122, i64 0}
!124 = !{!"_ZTSSt6vectorImSaImEE", !123, i64 0}
!125 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EEE", !124, i64 0}
!126 = !{!"_ZTSN4entt15compressed_pairISt6vectorImSaImEESt4hashIjEEE", !125, i64 0}
!127 = !{!"p1 _ZTSN4entt8internal14dense_map_nodeIjmEE", !29, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjmEESaIS3_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!"_ZTSNSt12_Vector_baseIN4entt8internal14dense_map_nodeIjmEESaIS3_EE12_Vector_implE", !128, i64 0}
!130 = !{!"_ZTSSt12_Vector_baseIN4entt8internal14dense_map_nodeIjmEESaIS3_EE", !129, i64 0}
!131 = !{!"_ZTSSt6vectorIN4entt8internal14dense_map_nodeIjmEESaIS3_EE", !130, i64 0}
!132 = !{!"_ZTSN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjmEESaIS4_EELm0EEE", !131, i64 0}
!133 = !{!"_ZTSN4entt15compressed_pairISt6vectorINS_8internal14dense_map_nodeIjmEESaIS4_EESt8equal_toIvEEE", !132, i64 0}
!134 = !{!"float", !20, i64 0}
!135 = !{!"_ZTSN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEE", !126, i64 0, !133, i64 24, !134, i64 48}
!136 = !{!135, !134, i64 48}
!137 = !{!128, !127, i64 0}
!138 = !{!128, !127, i64 16}
!139 = !{!121, !120, i64 0}
!140 = !{!121, !120, i64 16}
!141 = !{!"p1 _ZTSN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEE", !29, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseIiN4test18throwing_allocatorIiEEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!144 = !{!143, !37, i64 16}
!145 = !{!143, !37, i64 0}
!146 = !{!143, !37, i64 8}
!147 = !{!"_ZTSNSt12_Vector_baseIcN4test18throwing_allocatorIcEEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!148 = !{!147, !43, i64 0}
!149 = !{!147, !43, i64 8}
!150 = !{!"_ZTSSt12__shared_ptrIN4entt9dense_mapIjmSt4hashIjESt8equal_toIvESaISt4pairIKjmEEEELN9__gnu_cxx12_Lock_policyE2EE", !141, i64 0, !85, i64 8}
!151 = !{!150, !141, i64 0}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !{!"llvm.loop.isvectorized", i32 1}
!154 = !{!"llvm.loop.unroll.runtime.disable"}
!155 = !{!147, !43, i64 16}
!156 = !{!"branch_weights", i32 4, i32 28}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !{!"branch_weights", i32 1, i32 1048575}
!159 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !26, i64 0, !43, i64 8}
!160 = !{!"_ZTSN4entt9type_infoE", !21, i64 0, !21, i64 4, !159, i64 8}
!161 = !{!160, !21, i64 4}
!162 = !{!64, !43, i64 0}
!163 = !{!65, !26, i64 8}
!164 = !{!"_ZTSSt9type_info", !43, i64 8}
!165 = !{!164, !43, i64 8}
!166 = !{!"_ZTSSt15_Sp_counted_ptrIPKN7testing8internal2REELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !87, i64 16}
!167 = !{!166, !87, i64 16}
!168 = !{!88, !87, i64 0}
!169 = !{!75, !29, i64 8}
!170 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !34, i64 56}
!171 = !{!170, !43, i64 40}
!172 = !{!170, !43, i64 32}
!173 = !{!"_ZTSSi", !26, i64 8}
!174 = !{!173, !26, i64 8}
!175 = !{!128, !127, i64 8}
!176 = !{!121, !120, i64 8}
!177 = !{!"_ZTSSt4pairIjmE", !21, i64 0, !26, i64 8}
!178 = !{!"_ZTSN4entt8internal14dense_map_nodeIjmEE", !26, i64 0, !177, i64 8}
!179 = !{!178, !26, i64 0}
!180 = !{!177, !21, i64 0}
!181 = !{!177, !26, i64 8}
!182 = !{!160, !21, i64 0}
!183 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!184 = distinct !{!184, !"_ZNK7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEEcvNS_7MatcherIT_EEIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEv"}
!185 = distinct !{!185, !184, !"_ZNK7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEEcvNS_7MatcherIT_EEIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEv: argument 0"}
!186 = distinct !{ptr @_ZN7testing18PolymorphicMatcherINS_8internal19MatchesRegexMatcherEED2Ev, null, null, null, null}
!187 = !{!185}
!188 = !{!"_ZTSSt13__atomic_baseIiE", !21, i64 0}
!189 = !{!188, !21, i64 0}
!190 = distinct !{null}
!191 = distinct !{!191, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm"}
!192 = distinct !{!192, !191, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm: argument 0"}
!193 = distinct !{!193, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_"}
!194 = distinct !{!194, !193, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_: argument 0"}
!195 = distinct !{!195, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_"}
!196 = distinct !{!196, !195, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_: argument 0"}
!197 = distinct !{!197, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_"}
!198 = distinct !{!198, !197, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_: argument 0"}
!199 = distinct !{!199, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_"}
!200 = distinct !{!200, !199, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_: argument 0"}
!201 = distinct !{!201, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm"}
!202 = distinct !{!202, !201, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm: argument 0"}
!203 = distinct !{!203, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_"}
!204 = distinct !{!204, !203, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_: argument 0"}
!205 = distinct !{!205, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_"}
!206 = distinct !{!206, !205, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_: argument 0"}
!207 = distinct !{!207, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_"}
!208 = distinct !{!208, !207, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_: argument 0"}
!209 = distinct !{!209, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_"}
!210 = distinct !{!210, !209, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_: argument 0"}
!211 = distinct !{!211, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm"}
!212 = distinct !{!212, !211, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm: argument 0"}
!213 = distinct !{!213, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_"}
!214 = distinct !{!214, !213, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_: argument 0"}
!215 = distinct !{!215, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_"}
!216 = distinct !{!216, !215, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_: argument 0"}
!217 = distinct !{!217, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_"}
!218 = distinct !{!218, !217, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_: argument 0"}
!219 = distinct !{!219, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_"}
!220 = distinct !{!220, !219, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_: argument 0"}
!221 = distinct !{!221, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm"}
!222 = distinct !{!222, !221, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm: argument 0"}
!223 = distinct !{!223, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_"}
!224 = distinct !{!224, !223, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_: argument 0"}
!225 = distinct !{!225, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_"}
!226 = distinct !{!226, !225, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_: argument 0"}
!227 = distinct !{!227, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_"}
!228 = distinct !{!228, !227, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_: argument 0"}
!229 = distinct !{!229, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_"}
!230 = distinct !{!230, !229, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_: argument 0"}
!231 = !{!194, !192}
!232 = !{!196}
!233 = !{!200, !198}
!234 = !{!204, !202}
!235 = !{!206}
!236 = !{!210, !208}
!237 = !{!214, !212}
!238 = !{!216}
!239 = !{!220, !218}
!240 = !{!224, !222}
!241 = !{!226}
!242 = !{!230, !228}
!243 = distinct !{!243, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_"}
!244 = distinct !{!244, !243, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_: argument 0"}
!245 = !{!244}
!246 = distinct !{!246, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_"}
!247 = distinct !{!247, !246, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_: argument 0"}
!248 = !{!247}
!249 = distinct !{!249, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
!250 = distinct !{!250, !249, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv: argument 0"}
!251 = distinct !{!251, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5eraseENS_8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPKiS3_EENSA_IPKcS5_EEEEE"}
!252 = distinct !{!252, !251, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5eraseENS_8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPKiS3_EENSA_IPKcS5_EEEEE: argument 0"}
!253 = distinct !{!253, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm"}
!254 = distinct !{!254, !253, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm: argument 0"}
!255 = distinct !{!255, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_"}
!256 = distinct !{!256, !255, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_: argument 0"}
!257 = distinct !{!257, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_"}
!258 = distinct !{!258, !257, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_: argument 0"}
!259 = distinct !{!259, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_"}
!260 = distinct !{!260, !259, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_: argument 0"}
!261 = distinct !{!261, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_"}
!262 = distinct !{!262, !261, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_: argument 0"}
!263 = distinct !{!263, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm"}
!264 = distinct !{!264, !263, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEEixEm: argument 0"}
!265 = distinct !{!265, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_"}
!266 = distinct !{!266, !265, !"_ZSt16forward_as_tupleIJRiRcEESt5tupleIJDpOT_EES5_: argument 0"}
!267 = distinct !{!267, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_"}
!268 = distinct !{!268, !267, !"_ZSt10make_tupleIJicEESt5tupleIJDpNSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeEEEDpOS3_: argument 0"}
!269 = distinct !{!269, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_"}
!270 = distinct !{!270, !269, !"_ZN7testing8internal8EqHelper7CompareISt5tupleIJRiRcEES3_IJicEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_: argument 0"}
!271 = distinct !{!271, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_"}
!272 = distinct !{!272, !271, !"_ZN7testing8internal11CmpHelperEQISt5tupleIJRiRcEES2_IJicEEEENS_15AssertionResultEPKcS9_RKT_RKT0_: argument 0"}
!273 = !{!250}
!274 = !{!252}
!275 = !{!254}
!276 = !{!256, !254}
!277 = !{!258}
!278 = !{!262, !260}
!279 = !{!264}
!280 = !{!266, !264}
!281 = !{!268}
!282 = !{!272, !270}
!283 = distinct !{!283, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
!284 = distinct !{!284, !283, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv: argument 0"}
!285 = distinct !{!285, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5eraseENS_8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPKiS3_EENSA_IPKcS5_EEEEE"}
!286 = distinct !{!286, !285, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5eraseENS_8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPKiS3_EENSA_IPKcS5_EEEEE: argument 0"}
!287 = !{!284}
!288 = !{!286}
!289 = distinct !{!289, !"_ZN7testing8internal11CmpHelperEQImjEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!290 = distinct !{!290, !289, !"_ZN7testing8internal11CmpHelperEQImjEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!291 = !{!290}
!292 = distinct !{!292, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
!293 = distinct !{!293, !292, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv: argument 0"}
!294 = distinct !{!294, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv"}
!295 = distinct !{!295, !294, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv: argument 0"}
!296 = distinct !{!296, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv"}
!297 = distinct !{!297, !296, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv: argument 0"}
!298 = distinct !{!298, !"_ZN7testing8internal8EqHelper7CompareIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS7_IPcS9_IcSaIcEEEEEEESH_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSR_RKSJ_RKSK_"}
!299 = distinct !{!299, !298, !"_ZN7testing8internal8EqHelper7CompareIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS7_IPcS9_IcSaIcEEEEEEESH_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSR_RKSJ_RKSK_: argument 0"}
!300 = distinct !{!300, !"_ZN7testing8internal11CmpHelperEQIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS6_IPcS8_IcSaIcEEEEEEESG_EENS_15AssertionResultEPKcSJ_RKT_RKT0_"}
!301 = distinct !{!301, !300, !"_ZN7testing8internal11CmpHelperEQIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS6_IPcS8_IcSaIcEEEEEEESG_EENS_15AssertionResultEPKcSJ_RKT_RKT0_: argument 0"}
!302 = distinct !{!302, !"_ZN7testing8internal11CmpHelperNEIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS6_IPcS8_IcSaIcEEEEEEESG_EENS_15AssertionResultEPKcSJ_RKT_RKT0_"}
!303 = distinct !{!303, !302, !"_ZN7testing8internal11CmpHelperNEIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS6_IPcS8_IcSaIcEEEEEEESG_EENS_15AssertionResultEPKcSJ_RKT_RKT0_: argument 0"}
!304 = distinct !{!304, !"_ZN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEppEi"}
!305 = distinct !{!305, !304, !"_ZN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEppEi: argument 0"}
!306 = distinct !{!306, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
!307 = distinct !{!307, !306, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv: argument 0"}
!308 = distinct !{!308, !"_ZN7testing8internal8EqHelper7CompareIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS7_IPcS9_IcSaIcEEEEEEESH_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSR_RKSJ_RKSK_"}
!309 = distinct !{!309, !308, !"_ZN7testing8internal8EqHelper7CompareIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS7_IPcS9_IcSaIcEEEEEEESH_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSR_RKSJ_RKSK_: argument 0"}
!310 = distinct !{!310, !"_ZN7testing8internal11CmpHelperEQIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS6_IPcS8_IcSaIcEEEEEEESG_EENS_15AssertionResultEPKcSJ_RKT_RKT0_"}
!311 = distinct !{!311, !310, !"_ZN7testing8internal11CmpHelperEQIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS6_IPcS8_IcSaIcEEEEEEESG_EENS_15AssertionResultEPKcSJ_RKT_RKT0_: argument 0"}
!312 = distinct !{!312, !"_ZN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEmmEi"}
!313 = distinct !{!313, !312, !"_ZN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEmmEi: argument 0"}
!314 = distinct !{!314, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv"}
!315 = distinct !{!315, !314, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv: argument 0"}
!316 = distinct !{!316, !"_ZN7testing8internal8EqHelper7CompareIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS7_IPcS9_IcSaIcEEEEEEESH_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSR_RKSJ_RKSK_"}
!317 = distinct !{!317, !316, !"_ZN7testing8internal8EqHelper7CompareIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS7_IPcS9_IcSaIcEEEEEEESH_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSR_RKSJ_RKSK_: argument 0"}
!318 = distinct !{!318, !"_ZN7testing8internal11CmpHelperEQIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS6_IPcS8_IcSaIcEEEEEEESG_EENS_15AssertionResultEPKcSJ_RKT_RKT0_"}
!319 = distinct !{!319, !318, !"_ZN7testing8internal11CmpHelperEQIN4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS6_IPcS8_IcSaIcEEEEEEESG_EENS_15AssertionResultEPKcSJ_RKT_RKT0_: argument 0"}
!320 = distinct !{!320, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl"}
!321 = distinct !{!321, !320, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl: argument 0"}
!322 = distinct !{!322, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv"}
!323 = distinct !{!323, !322, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv: argument 0"}
!324 = distinct !{!324, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEmiEl"}
!325 = distinct !{!325, !324, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEmiEl: argument 0"}
!326 = distinct !{!326, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl"}
!327 = distinct !{!327, !326, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl: argument 0"}
!328 = distinct !{!328, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
!329 = distinct !{!329, !328, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv: argument 0"}
!330 = distinct !{!330, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv"}
!331 = distinct !{!331, !330, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv: argument 0"}
!332 = distinct !{!332, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
!333 = distinct !{!333, !332, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv: argument 0"}
!334 = distinct !{!334, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv"}
!335 = distinct !{!335, !334, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv: argument 0"}
!336 = distinct !{!336, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
!337 = distinct !{!337, !336, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv: argument 0"}
!338 = distinct !{!338, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl"}
!339 = distinct !{!339, !338, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl: argument 0"}
!340 = distinct !{!340, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv"}
!341 = distinct !{!341, !340, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv: argument 0"}
!342 = distinct !{!342, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEmiEl"}
!343 = distinct !{!343, !342, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEmiEl: argument 0"}
!344 = distinct !{!344, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl"}
!345 = distinct !{!345, !344, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl: argument 0"}
!346 = distinct !{!346, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv"}
!347 = distinct !{!347, !346, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE3endEv: argument 0"}
!348 = distinct !{!348, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEmiEl"}
!349 = distinct !{!349, !348, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEmiEl: argument 0"}
!350 = distinct !{!350, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl"}
!351 = distinct !{!351, !350, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl: argument 0"}
!352 = distinct !{!352, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
!353 = distinct !{!353, !352, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv: argument 0"}
!354 = distinct !{!354, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl"}
!355 = distinct !{!355, !354, !"_ZNK4entt8internal14table_iteratorIJN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS3_IPcS5_IcSaIcEEEEEEplEl: argument 0"}
!356 = distinct !{!356, !"_ZN4entt11basic_tableIJSt6vectorIiSaIiEES1_IcSaIcEEEE5beginEv"}
end_hunk_2
