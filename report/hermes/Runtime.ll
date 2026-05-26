inline.NumInlined: 3791
inline.NumDeleted: 2147
begin_hunk_0_@_ZN6hermes2vm7Runtime21initPredefinedStringsEv:.preheader39.preheader
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 6 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !19
  %i.gj = zext i8 %i.gi to i64
  %i.gk = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gg, i64 %i.gj) #29 ; 0 uses
  %i.gl = load i8, ptr %i.gh, align 1, !tbaa !19
  %i.gm = zext i8 %i.gl to i32
  %i.gn = add i32 %i.ge, %i.gm                    ; 2 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 7 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !19
  %i.gs = zext i8 %i.gr to i64
  %i.gt = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gp, i64 %i.gs) #29 ; 0 uses
  %i.gu = load i8, ptr %i.gq, align 1, !tbaa !19
  %i.gv = zext i8 %i.gu to i32
  %i.gw = add i32 %i.gn, %i.gv                    ; 2 uses
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 8 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !19
  %i.hb = zext i8 %i.ha to i64
  %i.hc = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.gy, i64 %i.hb) #29 ; 0 uses
  %i.hd = load i8, ptr %i.gz, align 1, !tbaa !19
  %i.he = zext i8 %i.hd to i32
  %i.hf = add i32 %i.gw, %i.he
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload, i64 9
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !19
  %i.hk = zext i8 %i.hj to i64
  %i.hl = tail call i32 @_ZN6hermes2vm15IdentifierTable26createNotUniquedLazySymbolEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr %i.hh, i64 %i.hk) #29 ; 0 uses
  ret void
}

declare ptr @_ZN6hermes2vm6Domain6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule19createUninitializedERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS0_18RuntimeModuleFlagsEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime20initCharacterStringsEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %0, ptr %1, align 8, !tbaa !422
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  store ptr %i.c, ptr %i.a, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !115
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !424
  store ptr %1, ptr %i.b, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9568 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9584 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !463
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !464  ; 7 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp ult i64 %i.r, 2048
  br i1 %i.s, label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9576 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !465  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = sub i64 %i.v, %i.q
  %i.x = call noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #31 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.u
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = add i64 %i.v, -8
  %i.aa = sub i64 %i.z, %i.q                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 56
  %i.ad = sub i64 %i.y, %i.q
  %diff.check = icmp ult i64 %i.ad, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.o, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.o, i64 %i.ah ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.ai = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 8, !alias.scope !469, !noalias !466
  %wide.load19 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !469, !noalias !466
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !466, !noalias !469
  store <2 x i64> %wide.load19, ptr %i.aj, align 8, !alias.scope !466, !noalias !469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !471

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader41

.lr.ph.i.i.i.i.preheader41:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader41, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader41 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !469, !noalias !466
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !alias.scope !466, !noalias !469
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !472

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.o, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #30
  br label %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.x, ptr %i.l, align 8, !tbaa !464
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store ptr %i.ao, ptr %i.t, align 8, !tbaa !465
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 2048
  store ptr %i.ap, ptr %i.m, align 8, !tbaa !463
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN6hermes2vm17PinnedHermesValueESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9576 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.d:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit
  %.010 = phi i16 [ 0, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE7reserveEm.exit ], [ %i.cc, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !419
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  store i32 0, ptr %i.k, align 8, !tbaa !424
  store ptr %i.at, ptr %i.j, align 8, !tbaa !110
  store ptr %i.e, ptr %i.i, align 8, !tbaa !100
  %i.au = call ptr @_ZN6hermes2vm7Runtime23allocateCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %0, i16 noundef zeroext %.010)
  %.sroa.0.0.copyload.i = load i64, ptr %i.au, align 8, !tbaa !18 ; 2 uses
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !465 ; 5 uses
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !463
  %.not.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %.sroa.0.0.copyload.i, ptr %i.av, align 8
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !465
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !465
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !464 ; 7 uses
  %i.ba = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.g, label %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.be = ashr exact i64 %i.bc, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i7)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #31 ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  store i64 %.sroa.0.0.copyload.i, ptr %i.bj, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = ptrtoaddr ptr %i.bi to i64
  %i.bl = add i64 %i.ba, -8
  %i.bm = sub i64 %i.bl, %i.bb                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.bm, 24
  %i.bp = sub i64 %i.bk, %i.bb
  %diff.check22 = icmp ult i64 %i.bp, 32
  %or.cond39 = or i1 %min.iters.check24, %diff.check22
  br i1 %or.cond39, label %.lr.ph.i.i.i.i.i.i.preheader40, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec27 = and i64 %i.bo, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec27, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.bi, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.az, i64 %i.bq
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph25
  %index29 = phi i64 [ 0, %vector.ph25 ], [ %index.next34, %vector.body28 ] ; 2 uses
  %i.bt = shl i64 %index29, 3                     ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.az, i64 %i.bt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.bu = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load32 = load <2 x i64>, ptr %next.gep31, align 8, !alias.scope !476, !noalias !473
  %wide.load33 = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !476, !noalias !473
  %i.bv = getelementptr i8, ptr %next.gep30, i64 16
  store <2 x i64> %wide.load32, ptr %next.gep30, align 8, !alias.scope !473, !noalias !476
  store <2 x i64> %wide.load33, ptr %i.bv, align 8, !alias.scope !473, !noalias !476
  %index.next34 = add nuw i64 %index29, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next34, %n.vec27
  br i1 %i.bw, label %middle.block35, label %vector.body28, !llvm.loop !478

middle.block35:                                   ; preds = %vector.body28
  %cmp.n36 = icmp eq i64 %i.bo, %n.vec27
  br i1 %cmp.n36, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader40

.lr.ph.i.i.i.i.i.i.preheader40:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block35
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block35 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block35 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader40 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader40 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.bx = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !476, !noalias !473
  store i64 %i.bx, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !473, !noalias !476
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.by, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !479

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block35, %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bi, %_ZNKSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.br, %middle.block35 ], [ %i.bz, %.lr.ph.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bi, ptr %i.l, align 8, !tbaa !464
  store ptr %i.ca, ptr %i.aq, align 8, !tbaa !465
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.cb, ptr %i.m, align 8, !tbaa !463
  br label %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.e, %_ZNSt6vectorIN6hermes2vm17PinnedHermesValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cc = add nuw nsw i16 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i16 %i.cc, 256
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !480
}

declare void @_ZN6hermes2vm13RuntimeModule38initializeWithoutCJSModulesMayAllocateEOSt10shared_ptrINS_3hbc20BCProviderFromBufferEE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc20BCProviderFromBuffer26createBCProviderFromBufferB5cxx11ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::unique_ptr.215", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #31 ; 6 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !425
  store i64 %i.d, ptr %3, align 8, !tbaa !425
  store ptr null, ptr %1, align 8, !tbaa !425
  call void @_ZN6hermes3hbc20BCProviderFromBufferC1ESt10unique_ptrIKNS_6BufferESt14default_deleteIS4_EENS0_12BytecodeFormE(ptr noundef nonnull align 8 dereferenceable(376) %i.c, ptr noundef nonnull %3, i32 noundef %2) #29
  %i.e = load ptr, ptr %3, align 8, !tbaa !425    ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i

_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #29, !inline_history !432
  br label %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIKN6hermes6BufferEEclEPS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !10, !alias.scope !481
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !14, !noalias !481 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !481 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !481
  store i64 %i.m, ptr %i.b, align 8, !tbaa !18, !noalias !481
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #29 ; 2 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !14, !alias.scope !481
  %i.p = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !481
  store i64 %i.p, ptr %i.j, align 8, !tbaa !19, !alias.scope !481
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit
  %i.q = phi ptr [ %i.o, %bb.b ], [ %i.j, %_ZNSt10unique_ptrIKN6hermes6BufferESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !19
  store i8 %i.r, ptr %i.q, align 1, !tbaa !19
  br label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit

_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.s = load i64, ptr %i.b, align 8, !tbaa !18, !noalias !481 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !17, !alias.scope !481
  %i.u = load ptr, ptr %4, align 8, !tbaa !14, !alias.scope !481
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !481
  %i.w = load i64, ptr %i.t, align 8, !tbaa !17   ; 5 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge.i.i.i1.thread, label %bb.e

._crit_edge.i.i.i1.thread:                        ; preds = %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  %i.y = ptrtoint ptr %i.c to i64
  store i64 %i.y, ptr %0, align 8, !tbaa !430
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !tbaa !18
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase11getErrorStrB5cxx11Ev.exit
  store i64 0, ptr %0, align 8, !tbaa !430
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !10
  %i.ad = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.w, ptr %i.a, align 8, !tbaa !18
  %i.ae = icmp ugt i64 %i.w, 15
  br i1 %i.ae, label %._crit_edge.i.i.i1.thread16, label %._crit_edge.i.i.i1

._crit_edge.i.i.i1.thread16:                      ; preds = %bb.e
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #29 ; 2 uses
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !14
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.ag, ptr %i.ac, align 8, !tbaa !19
  br label %bb.g

._crit_edge.i.i.i1:                               ; preds = %bb.e
  %cond = icmp eq i64 %i.w, 1
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i1
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !19
  store i8 %i.ah, ptr %i.ac, align 8, !tbaa !19
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i1.thread16, %._crit_edge.i.i.i1
  %i.ai = phi ptr [ %i.af, %._crit_edge.i.i.i1.thread16 ], [ %i.ac, %._crit_edge.i.i.i1 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ad, i64 %i.w, i1 false)
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i1.thread
  %.sroa.06.01012 = phi ptr [ null, %._crit_edge.i.i.i1.thread ], [ %i.c, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %i.aj = phi ptr [ %i.z, %._crit_edge.i.i.i1.thread ], [ %i.ab, %bb.g ], [ %i.ab, %bb.f ]
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !17
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ao = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.j
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !19
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.not.i3 = icmp eq ptr %.sroa.06.01012, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit5, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i4

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.06.01012) #29
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.06.01012, i64 noundef 376) #30
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime30generateSpecialRuntimeBytecodeEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0) local_unnamed_addr #0 align 2 {
_ZN6hermes3hbc21SimpleBytecodeBuilder11addFunctionEjjOSt6vectorIhSaIhEE.exit:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.hermes::hbc::SimpleBytecodeBuilder", align 8 ; 10 uses
  %2 = alloca %"class.hermes::hbc::BytecodeInstructionGenerator", align 16 ; 9 uses
  %3 = alloca %"class.std::vector.362", align 16  ; 6 uses
  %4 = alloca %"class.hermes::hbc::BytecodeInstructionGenerator", align 8 ; 10 uses
  %5 = alloca %"class.std::vector.362", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %2, i8 0, i64 25, i1 false)
  %i.e = call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator22emitLoadConstUndefinedEl(ptr noundef nonnull align 8 dereferenceable(25) %2, i64 noundef 0) ; 0 uses
  %i.f = call noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %2, i64 noundef 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !461, !noalias !484
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !461, !alias.scope !484
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !487, !noalias !484
  store ptr %i.j, ptr %i.h, align 16, !tbaa !487, !alias.scope !484
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(25) %2, i8 0, i64 24, i1 false), !noalias !484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 1, ptr %i.c, align 4, !tbaa !3
  store i32 1, ptr %i.d, align 4, !tbaa !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE17_M_realloc_insertIJRjS7_S_IhSaIhEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr null, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %.pr = load ptr, ptr %3, align 16, !tbaa !489   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.a

bb.a:                                             ; preds = %_ZN6hermes3hbc21SimpleBytecodeBuilder11addFunctionEjjOSt6vectorIhSaIhEE.exit
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7Runtime13markWeakRootsERNS0_16WeakRootAcceptorEb:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 11) #29
  tail call void @_ZN6hermes2vm7Runtime29markDomainRefInRuntimeModulesERNS0_16WeakRootAcceptorE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %2, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 9560
  %i.f = load ptr, ptr %1, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %.0.ptr) #29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9392 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9400
  %.sroa.025.033 = load ptr, ptr %i.j, align 8, !tbaa !368 ; 2 uses
  %.not3034 = icmp eq ptr %.sroa.025.033, %i.i
  br i1 %.not3034, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.lr.ph
  %.sroa.025.035 = phi ptr [ %.sroa.025.0, %.lr.ph ], [ %.sroa.025.033, %.preheader.preheader ] ; 2 uses
  tail call void @_ZN6hermes2vm13RuntimeModule22markLongLivedWeakRootsERNS0_16WeakRootAcceptorE(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.025.035, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.025.035, i64 8
  %.sroa.025.0 = load ptr, ptr %i.k, align 8, !tbaa !368 ; 2 uses
  %.not30 = icmp eq ptr %.sroa.025.0, %i.i
  br i1 %.not30, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader.preheader, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8992
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !579  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9000
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !579  ; 2 uses
  %.not3136 = icmp eq ptr %i.m, %i.o
  br i1 %.not3136, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit, label %.lr.ph38

.lr.ph38:                                         ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 856
  br label %bb.b

_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit: ; preds = %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit, %.loopexit
  %i.q = load ptr, ptr %1, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.t = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.u = sub nsw i64 %i.t, %i.b
  %i.v = sitofp i64 %i.u to double
  %i.w = fdiv double %i.v, 1.000000e+09
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9176 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !559
  %i.z = fadd double %i.y, %i.w
  store double %i.z, ptr %i.x, align 8, !tbaa !559
  ret void

bb.b:                                             ; preds = %.lr.ph38, %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit
  %.sroa.021.037 = phi ptr [ %i.m, %.lr.ph38 ], [ %i.ae, %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %i.a, align 8, !tbaa !575
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.021.037, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

_ZNKSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEEclES3_S5_.exit: ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.037, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !580
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.037, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1) #29, !inline_history !582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.021.037, i64 32 ; 2 uses
  %.not31 = icmp eq ptr %i.ae, %i.o
  br i1 %.not31, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime29markDomainRefInRuntimeModulesERNS0_16WeakRootAcceptorE(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.293", align 8   ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9392 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9400
  %.sroa.015.019 = load ptr, ptr %i.c, align 8, !tbaa !368 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.015.019, %i.b
  br i1 %.not20, label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %2, align 8, !tbaa !583   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre27 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !583 ; 2 uses
  %.not1822 = icmp eq ptr %.pre, %.pre27
  br i1 %.not1822, label %._crit_edge26, label %.lr.ph25

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.015.021 = phi ptr [ %.sroa.015.0, %bb.c ], [ %.sroa.015.019, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 48 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #29, !inline_history !585
  %i.h = load i32, ptr %i.d, align 4, !tbaa !64
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !51

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN6hermes2vm13RuntimeModule21prepareForDestructionEv(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.015.021) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %.sroa.015.021, ptr %i.a, align 8, !tbaa !586
  call void @_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8
  %.sroa.015.0 = load ptr, ptr %i.i, align 8, !tbaa !368 ; 2 uses
  %.not = icmp eq ptr %.sroa.015.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge26.loopexit:                           ; preds = %bb.f
  %.pre28 = load ptr, ptr %2, align 8, !tbaa !587
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge26.loopexit, %._crit_edge
  %i.j = phi ptr [ %.pre28, %._crit_edge26.loopexit ], [ %.pre, %._crit_edge ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge26
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !589
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #30
  br label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EED2Ev.exit: ; preds = %bb.a, %._crit_edge26, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

.lr.ph25:                                         ; preds = %._crit_edge, %bb.f
  %.sroa.011.023 = phi ptr [ %i.r, %bb.f ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.011.023, align 8, !tbaa !586 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph25
  call void @_ZN6hermes2vm13RuntimeModuleD1Ev(ptr noundef nonnull align 8 dereferenceable(192) %i.p) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 192) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph25
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.023, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.r, %.pre27
  br i1 %.not18, label %._crit_edge26.loopexit, label %.lr.ph25
}

declare void @_ZN6hermes2vm13RuntimeModule22markLongLivedWeakRootsERNS0_16WeakRootAcceptorE(ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_ZThn16_N6hermes2vm7Runtime13markWeakRootsERNS0_16WeakRootAcceptorEb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN6hermes2vm7Runtime13markWeakRootsERNS0_16WeakRootAcceptorEb(ptr noundef nonnull align 8 dereferenceable(9816) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !590  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !589
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !586
  store ptr %i.e, ptr %i.b, align 8, !tbaa !586
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !590
  br label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !587    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.j ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !586
  store ptr %i.r, ptr %i.q, align 8, !tbaa !586
  %i.s = icmp sgt i64 %i.j, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #30
  br label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !587
  store ptr %i.t, ptr %i.a, align 8, !tbaa !590
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  store ptr %i.u, ptr %i.c, align 8, !tbaa !589
  br label %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN6hermes2vm13RuntimeModuleESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime27markRootsForCompleteMarkingERNS0_28RootAndSlotAcceptorWithNamesE(ptr noundef nonnull align 8 captures(none) dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.b = load ptr, ptr %1, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 14) #29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !451  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm16SamplingProfiler27markRootsForCompleteMarkingERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(264) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  br label %_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit

_ZN6hermes2vm7Runtime19MarkRootsPhaseTimerD2Ev.exit: ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.k = sub nsw i64 %i.j, %i.a
  %i.l = sitofp i64 %i.k to double
  %i.m = fdiv double %i.l, 1.000000e+09
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9200 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !559
  %i.p = fadd double %i.o, %i.m
  store double %i.p, ptr %i.n, align 8, !tbaa !559
  ret void
}

declare void @_ZN6hermes2vm16SamplingProfiler27markRootsForCompleteMarkingERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_ZThn16_N6hermes2vm7Runtime27markRootsForCompleteMarkingERNS0_28RootAndSlotAcceptorWithNamesE(ptr noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.b = load ptr, ptr %1, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 14) #29, !inline_history !591
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !451  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN6hermes2vm7Runtime27markRootsForCompleteMarkingERNS0_28RootAndSlotAcceptorWithNamesE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm16SamplingProfiler27markRootsForCompleteMarkingERNS0_12RootAcceptorE(ptr noundef nonnull align 8 dereferenceable(264) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1) #29
  br label %_ZN6hermes2vm7Runtime27markRootsForCompleteMarkingERNS0_28RootAndSlotAcceptorWithNamesE.exit

_ZN6hermes2vm7Runtime27markRootsForCompleteMarkingERNS0_28RootAndSlotAcceptorWithNamesE.exit: ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !591
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #29
  %i.k = sub nsw i64 %i.j, %i.a
  %i.l = sitofp i64 %i.k to double
  %i.m = fdiv double %i.l, 1.000000e+09
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9184 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !559
  %i.p = fadd double %i.o, %i.m
  store double %i.p, ptr %i.n, align 8, !tbaa !559
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime16visitIdentifiersERKSt8functionIFvNS0_8SymbolIDEPKNS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 1 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9240
  tail call void @_ZN6hermes2vm15IdentifierTable16visitIdentifiersERKSt8functionIFvNS0_8SymbolIDEPKNS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr noundef nonnull align 1 %1) #29
  ret void
}

declare void @_ZN6hermes2vm15IdentifierTable16visitIdentifiersERKSt8functionIFvNS0_8SymbolIDEPKNS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 1) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_ZThn16_N6hermes2vm7Runtime16visitIdentifiersERKSt8functionIFvNS0_8SymbolIDEPKNS0_15StringPrimitiveEEE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9224
  tail call void @_ZN6hermes2vm15IdentifierTable16visitIdentifiersERKSt8functionIFvNS0_8SymbolIDEPKNS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr noundef nonnull align 1 %1) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime19convertSymbolToUTF8B5cxx11ENS0_8SymbolIDE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9240
  tail call void @_ZN6hermes2vm15IdentifierTable19convertSymbolToUTF8B5cxx11ENS0_8SymbolIDE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(84) %i.a, i32 %2) #29
  ret void
}

declare void @_ZN6hermes2vm15IdentifierTable19convertSymbolToUTF8B5cxx11ENS0_8SymbolIDE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(84), i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @_ZThn16_N6hermes2vm7Runtime19convertSymbolToUTF8B5cxx11ENS0_8SymbolIDE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i32 %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9224
  tail call void @_ZN6hermes2vm15IdentifierTable19convertSymbolToUTF8B5cxx11ENS0_8SymbolIDE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(84) %i.a, i32 %2) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes2vm7Runtime19printRuntimeGCStatsERNS_11JSONEmitterE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.109, i64 7) #29
  tail call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9224
  %i.c = load double, ptr %i.b, align 8, !tbaa !592
  tail call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull @.str.110, i64 18) #29
  tail call void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.c) #29
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9088
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #29
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6hermes2vm7Runtime19printRuntimeGCStatsERNS_11JSONEmitterEE19markRootsPhaseNames, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !461  ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !10
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.k, ptr %i.a, align 8, !tbaa !18
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #29 ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !14
  %i.n = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.n, ptr %i.d, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !19
  store i8 %i.p, ptr %i.o, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.j, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  store i64 %i.q, ptr %i.e, align 8, !tbaa !17
  %i.r = load ptr, ptr %3, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.t = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !593
  %i.u = and i64 %i.t, -4
  %i.v = icmp eq i64 %i.u, 4611686018427387900
  br i1 %i.v, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.181) #32, !noalias !593
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.w = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.111, i64 noundef 4) #29, !noalias !593 ; 6 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !10, !alias.scope !593
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm7Runtime14printExceptionERN4llvh11raw_ostreamENS0_6HandleINS0_11HermesValueEEE:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !97 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 192 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 200
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.bf = icmp ult ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.n, label %bb.o, !prof !66

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !100
  store i64 %.sroa.855.0.ph, ptr %i.bc, align 8, !tbaa !18
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.o:                                             ; preds = %bb.m
  %i.bh = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ba, i64 %.sroa.855.0.ph) #29
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.n, %bb.o
  %.0.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.n ], [ %i.bh, %bb.o ]
  %i.bi = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i) #29 ; 3 uses
  %.not = icmp eq ptr %i.bi, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.p, label %bb.q, !prof !51

bb.p:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.126) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

bb.q:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !700
  %i.bm = and i32 %i.bl, 2147483647
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %2) #29 ; 2 uses
  %.not62 = icmp eq ptr %i.bo, inttoptr (i64 -1 to ptr)
  br i1 %.not62, label %.thread, label %bb.s, !prof !51

.thread:                                          ; preds = %bb.r
  %i.bp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.124) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.038.1 = phi ptr [ %i.bi, %bb.q ], [ %i.bo, %bb.r ]
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %.sroa.038.1, ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  %i.bq = load ptr, ptr %3, align 8, !tbaa !113
  %i.br = load i32, ptr %i.an, align 8, !tbaa !114
  %i.bs = zext i32 %i.br to i64
  %i.bt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes2vmlsERN4llvh11raw_ostreamENS1_8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr %i.bq, i64 %i.bs) #29 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !696
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !699 ; 2 uses
  %i.by = icmp eq ptr %i.bv, %i.bx
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bt, ptr noundef nonnull @.str.125, i64 noundef 1) #29 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

bb.u:                                             ; preds = %bb.s
  store i8 10, ptr %i.bx, align 1
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !699
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

_ZN4llvh11raw_ostreamlsEPKc.exit36:               ; preds = %bb.p, %bb.u, %bb.t, %.thread, %bb.k, %bb.l
  %i.cc = phi ptr [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %i.am, %.thread ], [ %i.am, %bb.t ], [ %i.am, %bb.p ], [ %i.am, %bb.u ]
  %i.cd = load ptr, ptr %3, align 8, !tbaa !113   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.cc
  br i1 %i.ce, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit36
  call void @free(ptr noundef %i.cd) #29
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit36, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm7Runtime14printExceptionERNS_11raw_ostreamENS3_6HandleINS3_11HermesValueEEEE3$_0ED2Ev.exit"

"_ZN4llvh6detail10scope_exitIZN6hermes2vm7Runtime14printExceptionERNS_11raw_ostreamENS3_6HandleINS3_11HermesValueEEEE3$_0ED2Ev.exit": ; preds = %bb.i, %bb.h, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !696
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !699  ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, i64 noundef %i.a) #29
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !699
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes2vmlsERN4llvh11raw_ostreamENS1_8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(36), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm7Runtime9getGlobalEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime12getEpiloguesEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.349") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(9816) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9392 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9400
  %.sroa.010.016 = load ptr, ptr %i.b, align 8, !tbaa !368 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.010.016, %i.a
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit, %bb.a
  %.lcssa14 = phi ptr [ null, %bb.a ], [ %i.ag, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit ]
  store ptr %.lcssa14, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit
  %i.e = phi ptr [ null, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit ] ; 6 uses
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.af, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit ] ; 5 uses
  %.sroa.010.018 = phi ptr [ %.sroa.010.016, %.lr.ph ], [ %.sroa.010.0, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit ] ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 96
  %i.i = load i8, ptr %i.h, align 8
  %i.j = and i8 %i.i, 2
  %.not13 = icmp eq i8 %i.j, 0
  br i1 %.not13, label %bb.c, label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !607
  %i.m = tail call { ptr, i64 } @_ZNK6hermes3hbc20BCProviderFromBuffer11getEpilogueEv(ptr noundef nonnull align 8 dereferenceable(376) %i.l) #29 ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.f, align 8, !tbaa !461
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.c, align 8, !tbaa !702
  br label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.e to i64
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775792
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.g, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 4                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i, %i.u ; 2 uses
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 576460752303423487) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #31 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s ; 2 uses
  store ptr %i.n, ptr %i.z, align 8, !tbaa !461
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx7, align 8, !tbaa !18
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !705, !alias.scope !706
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !710

_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.s) #30
  br label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !702
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w ; 2 uses
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !711
  br label %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %i.ae = phi ptr [ %i.ad, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.e, %bb.d ], [ %i.e, %bb.b ]
  %i.af = phi ptr [ %i.ac, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.p, %bb.d ], [ %i.f, %bb.b ]
  %i.ag = phi ptr [ %i.y, %_ZNSt6vectorIN4llvh8ArrayRefIhEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %.sroa.010.0 = load ptr, ptr %i.ah, align 8, !tbaa !368 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = tail call fastcc noundef i32 @_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.462", align 8 ; 6 uses
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %5 = alloca %"class.hermes::vm::SmallXString.455", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %0, ptr %4, align 8, !tbaa !422
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  store ptr %i.c, ptr %i.a, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !115
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !424
  store ptr %4, ptr %i.b, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 64, ptr %i.n, align 4, !tbaa !115
  call void @_ZNK6hermes2vm11TwineChar168toVectorERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(16) %5) #29
  %i.o = load ptr, ptr %5, align 8, !tbaa !113    ; 2 uses
  %i.p = load i32, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %.not.i = icmp ult i32 %i.p, 65536
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.r = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.o, i64 %i.q) #29
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.462") align 8 %3, ptr %i.o, i64 %i.q)
  %i.s = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #29
  %i.t = load ptr, ptr %3, align 8, !tbaa !712    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !19
  %i.x = shl i64 %i.w, 1
  %i.y = add i64 %i.x, 2
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.r, %bb.b ], [ %i.s, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.z = extractvalue { i32, i64 } %.pn.i, 0
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %i.ab = extractvalue { i32, i64 } %.pn.i, 1
  %i.ac = and i64 %i.ab, 281474976710655
  %i.ad = or disjoint i64 %i.ac, -844424930131968 ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !97  ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !100 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !110
  %i.aj = icmp ult ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !100
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !18
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.f:                                             ; preds = %bb.d
  %i.al = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ae, i64 %i.ad) #29
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !97  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre11 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !100
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.e, %bb.f
  %i.am = phi ptr [ %i.ak, %bb.e ], [ %.pre11, %bb.f ]
  %i.an = phi ptr [ %i.ae, %bb.e ], [ %.pre, %bb.f ] ; 4 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.al, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 208 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !424 ; 2 uses
  %i.ar = call ptr @_ZN6hermes2vm7JSError6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) #29
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = or i64 %i.as, -281474976710656          ; 2 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !97  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 192 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !100 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = icmp ult ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !100
  store i64 %i.at, ptr %i.aw, align 8, !tbaa !18
  br label %_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE.exit

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.bb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.au, i64 %i.at) #29
  br label %_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE.exit

_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.g ], [ %i.bb, %bb.h ] ; 3 uses
  %i.bc = call noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #29 ; 0 uses
  %i.bd = call noundef i32 @_ZN6hermes2vm7JSError10setMessageENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i) #29 ; 0 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.be, align 8, !tbaa !420
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.bg = zext i32 %i.aq to i64
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !419
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !424
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !110
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !100
  br label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, %_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE.exit
  %i.bm = load ptr, ptr %5, align 8, !tbaa !113   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.l
  br i1 %i.bn, label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.bm) #29
  br label %_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj64EED2Ev.exit:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %0, ptr %2, align 8, !tbaa !422
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  store ptr %i.c, ptr %i.a, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !115
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !114
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm7Runtime21raiseUncatchableErrorENS0_6HandleINS0_8JSObjectEEEN4llvh9StringRefE:bb.a
  %i.n = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %2, i64 %3) #29
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr %2, i64 %3)
  %i.o = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  %i.p = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn.i = phi { i32, i64 } [ %i.n, %bb.d ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.u = extractvalue { i32, i64 } %.pn.i, 0
  %i.v = extractvalue { i32, i64 } %.pn.i, 1      ; 2 uses
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !100  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !110
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !66

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !100
  store i64 %i.v, ptr %i.z, align 8, !tbaa !18
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.x, i64 %i.v) #29
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i7 = phi ptr [ %i.z, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = call noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #29 ; 0 uses
  %i.ag = call noundef i32 @_ZN6hermes2vm7JSError10setMessageENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i7) #29 ; 0 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.ah, align 8, !tbaa !420
  br label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm7Runtime17raiseTimeoutErrorEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call noundef i32 @_ZN6hermes2vm7Runtime21raiseUncatchableErrorENS0_6HandleINS0_8JSObjectEEEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull @.str.143, i64 35)
  ret i32 %i.b
}

declare ptr @_ZN6hermes2vm7JSError17createUncatchableERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm7Runtime19insertVisitedObjectEPNS0_8JSObjectE(ptr noundef nonnull align 8 captures(none) dereferenceable(9816) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9592 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !562  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9600 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !562  ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 9 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.j = and i64 %i.g, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ %i.w, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.v, %bb.f ] ; 9 uses
  %i.k = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !969
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !969
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !969
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit23, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !969
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.w = add nsw i64 %.052.i.i.i.i, -1
  %i.x = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.x, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !970

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.e, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.y = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.y, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !969
  %i.aa = icmp eq ptr %i.z, %1
  br i1 %i.aa, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ab, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !969
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !969
  %i.ag = icmp eq ptr %i.af, %1
  %spec.select.i.i.i.i = select i1 %i.ag, ptr %.sroa.032.2.i.i.i.i, ptr %i.d
  br label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit23: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit25: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit: ; preds = %bb.b, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit23, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit25, %bb.g, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.g ], [ %i.aj, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit25 ], [ %i.ai, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit23 ], [ %i.ah, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.b ]
  %.not = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.d
  br i1 %.not, label %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread, label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE9push_backERKS3_.exit

_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9608 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !535
  %.not.i = icmp eq ptr %i.d, %i.al
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread
  store ptr %1, ptr %i.d, align 8, !tbaa !969
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.am, ptr %i.c, align 8, !tbaa !971
  br label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit.thread
  %i.an = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.an, label %bb.l, label %_ZNKSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.ao = ashr exact i64 %i.g, 3                  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #31 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.at, align 8, !tbaa !969
  %i.au = icmp sgt i64 %i.g, 0
  br i1 %i.au, label %bb.m, label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.b, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.not.i17.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.as, ptr %i.a, align 8, !tbaa !534
  store ptr %i.av, ptr %i.c, align 8, !tbaa !971
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.aw, ptr %i.ak, align 8, !tbaa !535
  br label %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit
  %i.ax = phi i1 [ true, %_ZN4llvh4findIRSt6vectorIPN6hermes2vm8JSObjectESaIS5_EES5_EEDTcl9adl_beginfp_EEOT_RKT0_.exit ], [ false, %bb.j ], [ false, %_ZNSt6vectorIPN6hermes2vm8JSObjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  ret i1 %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6hermes2vm7Runtime19removeVisitedObjectEPNS0_8JSObjectE(ptr noundef nonnull align 8 captures(none) dereferenceable(9816) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9600 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !971
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !971
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator22emitLoadConstUndefinedEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !493  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !489    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 118, ptr %i.b, align 1, !tbaa !19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !493
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.f ; 2 uses
  store i8 118, ptr %i.s, align 1, !tbaa !19
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i: ; preds = %bb.f, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !489
  store ptr %i.u, ptr %i.a, align 8, !tbaa !493
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p ; 2 uses
  store ptr %i.v, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit: ; preds = %bb.b, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i
  %i.w = phi ptr [ %.pre, %bb.b ], [ %i.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !972, !range !123, !noundef !124
  %i.z = zext i1 %i.x to i8
  %i.aa = or i8 %i.y, %i.z
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !972
  %i.ab = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  store i8 %i.ab, ptr %.pre.i.i, align 1, !tbaa !19
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !493
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

bb.i:                                             ; preds = %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !489   ; 4 uses
  %i.af = ptrtoint ptr %i.w to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 8 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.j, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.i
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.aj = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ah ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 9223372036854775807)
  %i.am = select i1 %i.ak, i64 9223372036854775807, i64 %i.al ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.ao = phi ptr [ %i.an, %bb.k ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah ; 2 uses
  store i8 %i.ab, ptr %i.ap, align 1, !tbaa !19
  %i.aq = icmp sgt i64 %i.ah, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.l, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #30
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.ao, ptr %0, align 8, !tbaa !489
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !493
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store ptr %i.as, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit

_ZN6hermes3hbc28BytecodeInstructionGenerator8emitReg8El.exit: ; preds = %bb.h, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i
  %i.at = trunc i64 %i.f to i32
  ret i32 %i.at
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl(ptr noundef nonnull align 8 dereferenceable(25) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !493  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !489    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !487
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 92, ptr %i.b, align 1, !tbaa !19
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !493
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !493
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !487
  br label %_ZN6hermes3hbc28BytecodeInstructionGenerator10emitOpcodeENS0_8OperatorE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.f ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
end_hunk_3
begin_hunk_4_@free
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes3hbc14BCProviderBase11getEpilogueEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes3hbc14BCProviderBase13getSourceHashEv(ptr dead_on_unwind noalias writable sret(%"struct.std::array.445") align 1 %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !19
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBaseD0Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase11startWarmupEh(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 noundef zeroext %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase7madviseENS_8oscompat7MAdviceE(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase27adviseStringTableSequentialEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase23adviseStringTableRandomEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase19willNeedStringTableEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc14BCProviderBase22startPageAccessTrackerEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes3hbc14BCProviderBase20getPageAccessTrackerEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK6hermes3hbc14BCProviderBase12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #22

declare noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7HadesGCD1Ev(ptr noundef nonnull align 8 dereferenceable(8112)) unnamed_addr #7

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #7

declare void @_ZN6hermes11JSONEmitter13emitNullValueEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare void @_ZN6hermes2vm6GCBase18runtimeWillExecuteEv(ptr noundef nonnull align 8 dereferenceable(717)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK6hermes3hbc20BCProviderFromBuffer11getEpilogueEv(ptr noundef nonnull align 8 dereferenceable(376)) unnamed_addr #2

declare void @_ZNK6hermes2vm11TwineChar168toVectorERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm7JSError6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes10isAllASCIIEPKhS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE6createERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIcE6createINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIcEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %2, ptr %i.a, align 8, !tbaa !18
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #29 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !14
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.f, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.h, ptr %i.g, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.i = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  store i64 %i.i, ptr %i.c, align 8, !tbaa !17
  %i.j = load ptr, ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

declare noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7JSError10setMessageENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE17_M_realloc_insertIJRjS7_S_IhSaIhEEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !505    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 40
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #31 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 5 uses
  %i.p = load i32, ptr %2, align 4, !tbaa !3
  %i.q = load i32, ptr %3, align 4, !tbaa !3
  store i32 0, ptr %i.o, align 8, !tbaa !498
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.p, ptr %i.r, align 4, !tbaa !503
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.q, ptr %i.s, align 8, !tbaa !504
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load <2 x ptr>, ptr %4, align 8, !tbaa !461
  store <2 x ptr> %i.u, ptr %i.t, align 8, !tbaa !461
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !487
  store ptr %i.x, ptr %i.v, align 8, !tbaa !487
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.n, %_ZNKSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 12, i1 false), !alias.scope !1072
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.z, align 8, !tbaa !461, !alias.scope !1070, !noalias !1067
  store <2 x ptr> %i.aa, ptr %i.y, align 8, !tbaa !461, !alias.scope !1067, !noalias !1070
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !487, !alias.scope !1070, !noalias !1067
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !487, !alias.scope !1067, !noalias !1070
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false), !alias.scope !1070, !noalias !1067
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !1073

_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.af, %.lr.ph.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i18, label %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i19
  %.012.i.i.i20 = phi ptr [ %i.ao, %.lr.ph.i.i.i19 ], [ %i.ag, %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  %.0911.i.i.i21 = phi ptr [ %i.an, %.lr.ph.i.i.i19 ], [ %1, %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i20, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i21, i64 12, i1 false), !alias.scope !1079
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !461, !alias.scope !1077, !noalias !1074
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !461, !alias.scope !1074, !noalias !1077
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !487, !alias.scope !1077, !noalias !1074
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !487, !alias.scope !1074, !noalias !1077
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false), !alias.scope !1077, !noalias !1074
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 40 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, label %.lr.ph.i.i.i19, !llvm.loop !1073

_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24: ; preds = %.lr.ph.i.i.i19, %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.ag, %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ao, %.lr.ph.i.i.i19 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !497
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #30
  br label %_ZNSt12_Vector_baseIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN6hermes3hbc21SimpleBytecodeBuilder14SimpleFunctionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !505
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !494
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.j
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !497
  ret void
}

declare void @_ZN6hermes2vm6detail19IdentifierHashTable13growAndRehashEj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #23

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIcLb0EE15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE15createLongLivedERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.462") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1080
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !1081
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.178) #32
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #31 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !712
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !961
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !961
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !1081
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !961
  ret void
}

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes6bigint17dropExtraSignBitsEN4llvh8ArrayRefIhEE(ptr, i64) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes3hbc18getStringFromEntryERKNS_16StringTableEntryEN4llvh8ArrayRefIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(8), ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #24

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6hermes2vm15StorageProviderELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !39     ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 10 uses
  store ptr null, ptr %1, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN6hermes2vm15StorageProviderESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1082
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !44 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !49
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #29, !inline_history !1084
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #29, !inline_history !1084
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !51

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #29
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !44
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !47
  store i32 0, ptr %i.f, align 4, !tbaa !49
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !1085
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !1085
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i6 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableIPN6hermes2vm20CodeCoverageProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS3_:bb.a
.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNSt10_HashtableIPN6hermes2vm20CodeCoverageProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit
  %.1 = phi i64 [ 1, %_ZNSt10_HashtableIPN6hermes2vm20CodeCoverageProfilerES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb0EEE.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #25

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6hermes3hbc20BCProviderFromBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !430    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !607
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 10 uses
  store ptr null, ptr %1, align 8, !tbaa !430
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1122
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !44 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !49
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #29, !inline_history !1084
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #29, !inline_history !1084
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !51

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #29
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !44
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.e, align 8, !tbaa !47
  store i32 0, ptr %i.f, align 4, !tbaa !49
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !1085
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !1085
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i6 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7: ; preds = %bb.m, %bb.l
  %.0.i.i.i8 = phi i32 [ %i.aa, %bb.l ], [ %i.aj, %bb.m ]
  %i.ak = icmp eq i32 %.0.i.i.i8, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i7, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1124 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.b) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 376) #30
  br label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt19_Sp_counted_deleterIPN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #5

declare void @_ZN6hermes11JSONEmitter9emitValueEd(ptr noundef nonnull align 8 dereferenceable(72), double noundef) local_unnamed_addr #2

declare void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !526  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !525    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 4
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #31 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !26
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !26
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.s, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.n, %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !1129, !noalias !1126
  store ptr null, ptr %i.x, align 8, !tbaa !44, !alias.scope !1129, !noalias !1126
  store <2 x ptr> %i.y, ptr %.012.i.i.i, align 8, !tbaa !26, !alias.scope !1126, !noalias !1129
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !607, !alias.scope !1129, !noalias !1126
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !1131

_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNSt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEEC2ERKS3_.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.af, %.lr.ph.i.i.i18 ], [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ae, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.ad = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !26, !alias.scope !1135, !noalias !1132
  store ptr null, ptr %i.ac, align 8, !tbaa !44, !alias.scope !1135, !noalias !1132
  store <2 x ptr> %i.ad, ptr %.012.i.i.i19, align 8, !tbaa !26, !alias.scope !1132, !noalias !1135
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !607, !alias.scope !1135, !noalias !1132
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !1131

_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ab, %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.af, %.lr.ph.i.i.i18 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !529
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN6hermes3hbc20BCProviderFromBufferEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.f
  store ptr %i.n, ptr %0, align 8, !tbaa !525
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !526
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.j
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !529
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEaSEODs(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !958    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.f, i64 noundef 0, i64 noundef 2) #29
  %.pre.i = load i32, ptr %i.b, align 8, !tbaa !114
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %.pre.i, %bb.b ], [ %i.c, %bb.a ]
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %1, align 2
  store i16 %i.k, ptr %i.j, align 1
  %i.l = load i32, ptr %i.b, align 8, !tbaa !114
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.b, align 8, !tbaa !114
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb1EZNS_32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorIN4llvh11SmallVectorIDsLj16EEEEEET_S7_PKcS9_EUlRKNS3_5TwineEE_EEjRS9_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 2 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !461    ; 10 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19    ; 2 uses
  %i.e = sext i8 %i.d to i32                      ; 6 uses
  %i.f = and i32 %i.e, 224
  %i.g = icmp eq i32 %i.f, 192
  br i1 %i.g, label %bb.b, label %bb.c, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !19
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %i.j, 192
  %.not77 = icmp eq i32 %i.k, 128
  tail call void @llvm.assume(i1 %.not77)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store ptr %i.l, ptr %0, align 8, !tbaa !461
  %i.m = shl nsw i32 %i.e, 6
  %i.n = and i32 %i.m, 1984
  %i.o = and i32 %i.j, 63
  %i.p = or disjoint i32 %i.o, %i.n
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.e, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %bb.d, label %bb.e, !prof !66

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19    ; 2 uses
  %.not75 = icmp slt i8 %i.t, -64
  tail call void @llvm.assume(i1 %.not75)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19    ; 2 uses
  %.not76 = icmp slt i8 %i.v, -64
  tail call void @llvm.assume(i1 %.not76)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store ptr %i.w, ptr %0, align 8, !tbaa !461
  %i.x = shl nsw i32 %i.e, 12
  %i.y = and i32 %i.x, 61440
  %i.z = and i8 %i.t, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = or disjoint i32 %i.ab, %i.y
  %i.ad = and i8 %i.v, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ag = and i32 %i.e, 248
  %i.ah = icmp eq i32 %i.ag, 240
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19  ; 2 uses
  %.not = icmp slt i8 %i.aj, -64
  tail call void @llvm.assume(i1 %.not)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19  ; 2 uses
  %.not73 = icmp slt i8 %i.al, -64
  tail call void @llvm.assume(i1 %.not73)
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !19  ; 2 uses
  %.not74 = icmp slt i8 %i.an, -64
  tail call void @llvm.assume(i1 %.not74)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store ptr %i.ao, ptr %0, align 8, !tbaa !461
  %i.ap = shl nsw i32 %i.e, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = and i8 %i.aj, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 12
  %i.au = or disjoint i32 %i.at, %i.aq            ; 3 uses
  %i.av = and i8 %i.al, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 6
  %i.ay = and i8 %i.an, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.au            ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.au, 65535
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp samesign ugt i32 %i.au, 1114111
  br i1 %i.bd, label %bb.g, label %.critedge, !prof !51

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.bf, align 1, !tbaa !516
  store ptr @.str.187, ptr %2, align 8, !tbaa !19
  store i8 3, ptr %i.be, align 8, !tbaa !519
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.bg = zext nneg i32 %i.bb to i64
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !18
  store ptr %i.a, ptr %3, align 8, !tbaa !19, !alias.scope !1137
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !19, !alias.scope !1137
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 15, ptr %i.bi, align 8, !tbaa !519, !alias.scope !1137
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.bj, align 1, !tbaa !516, !alias.scope !1137
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %1, ptr noundef nonnull align 8 dereferenceable(18) %2, ptr noundef nonnull align 8 dereferenceable(18) %3)
  unreachable

bb.h:                                             ; preds = %bb.e
  store ptr %i.ai, ptr %0, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.bl, align 1, !tbaa !516
  store ptr @.str.188, ptr %5, align 8, !tbaa !19
  store i8 3, ptr %i.bk, align 8, !tbaa !519
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.bm = zext i8 %i.d to i64
  store i64 %i.bm, ptr %i.b, align 8, !tbaa !18
  store ptr %i.b, ptr %6, align 8, !tbaa !19, !alias.scope !1140
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bn, align 8, !tbaa !19, !alias.scope !1140
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 15, ptr %i.bo, align 8, !tbaa !519, !alias.scope !1140
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.bp, align 1, !tbaa !516, !alias.scope !1140
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %4, ptr noundef nonnull align 8 dereferenceable(18) %5, ptr noundef nonnull align 8 dereferenceable(18) %6)
  unreachable

.critedge:                                        ; preds = %bb.d, %bb.b, %bb.f
  %.6 = phi i32 [ %i.bb, %bb.f ], [ %i.af, %bb.d ], [ %i.p, %bb.b ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN6hermes2vm8CallableESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !447    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !533
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
end_hunk_5
begin_hunk_6_@"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0E9_M_invokeERKSt9_Any_dataOjOS4_S8_OS9_":bb.a
  %.sroa.06.0.copyload.i.i65.i.i.i = phi ptr [ undef, %bb.w ], [ %i.fi, %bb.y ]
  %i.fo = phi i1 [ true, %bb.w ], [ false, %bb.y ] ; 2 uses
  %i.fp = phi i64 [ 0, %bb.w ], [ 1, %bb.y ]
  %i.fq = phi i64 [ 0, %bb.w ], [ %i.fh, %bb.y ]
  %i.fr = phi i32 [ 0, %bb.w ], [ %i.fg, %bb.y ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.fs = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ei, ptr noundef nonnull align 8 dereferenceable(9816) %.val, i32 %.val7) #29
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.fs) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.ft = icmp eq i32 %i.fr, 0
  br i1 %i.ft, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit64.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !627, !noalias !1209 ; 2 uses
  switch i32 %i.fv, label %bb.ab [
    i32 0, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i
    i32 1, label %bb.aa
  ]

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i: ; preds = %bb.z, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit64.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.fw, align 8, !tbaa !627, !alias.scope !1210
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.fx, align 8, !tbaa !649, !alias.scope !1210
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false), !alias.scope !1210
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14, i64 48, i1 false), !tbaa.struct !736
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !627, !noalias !1213
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fz = add i64 %i.fq, %i.fp
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !650, !noalias !1209
  %i.gc = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !651, !noalias !1209
  %i.ge = add i64 %i.gd, %i.gb
  %.0.i.i66.i.i.i = select i1 %i.fo, i32 %i.fr, i32 2 ; 2 uses
  %.sroa.06.0.i.i67.i.i.i = select i1 %i.fo, ptr %.sroa.06.0.copyload.i.i65.i.i.i, ptr %14
  %i.gf = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.gg = load i32, ptr %i.gf, align 8, !noalias !1209
  %i.gh = icmp eq i32 %i.gg, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i68.i.i.i = load ptr, ptr %17, align 8, !noalias !1209
  %.015.i.i69.i.i.i = select i1 %i.gh, i32 %i.fv, i32 2
  %.sroa.03.0.i.i70.i.i.i = select i1 %i.gh, ptr %.sroa.03.0.copyload.i.i68.i.i.i, ptr %17
  store ptr %.sroa.06.0.i.i67.i.i.i, ptr %13, align 8, !tbaa !19, !alias.scope !1209
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.0.i.i66.i.i.i, ptr %i.gi, align 8, !tbaa !627, !alias.scope !1209
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sroa.03.0.i.i70.i.i.i, ptr %i.gj, align 8, !tbaa !19, !alias.scope !1209
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.015.i.i69.i.i.i, ptr %i.gk, align 8, !tbaa !649, !alias.scope !1209
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.fz, ptr %i.gl, align 8, !tbaa !650, !alias.scope !1209
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ge, ptr %i.gm, align 8, !tbaa !651, !alias.scope !1209
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.gn = phi i32 [ %.0.i.i66.i.i.i, %bb.ab ], [ %.pre.i.i, %bb.aa ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  switch i32 %i.gn, label %bb.ae [
    i32 0, label %bb.ac
    i32 1, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.go, align 8, !tbaa !627, !alias.scope !1220
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.gp, align 8, !tbaa !649, !alias.scope !1220
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i8 0, i64 16, i1 false), !alias.scope !1220
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i

bb.ad:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i
  store ptr @.str.191, ptr %12, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !620
  %.sroa.618.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %.sroa.618.0..sroa_idx.i.i.i, align 8, !tbaa !620
  %.sroa.719.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 18, ptr %.sroa.719.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !18
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i

bb.ae:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !650, !noalias !1213
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !651, !noalias !1213
  %i.gv = add i64 %i.gu, %i.gs
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.gx = load i32, ptr %i.gw, align 8, !noalias !1213
  %i.gy = icmp eq i32 %i.gx, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i74.i.i.i = load ptr, ptr %13, align 8, !noalias !1213
  %.0.i.i75.i.i.i = select i1 %i.gy, i32 %i.gn, i32 2
  %.sroa.06.0.i.i76.i.i.i = select i1 %i.gy, ptr %.sroa.06.0.copyload.i.i74.i.i.i, ptr %13
  store ptr %.sroa.06.0.i.i76.i.i.i, ptr %12, align 8, !tbaa !19, !alias.scope !1213
  %i.gz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.0.i.i75.i.i.i, ptr %i.gz, align 8, !tbaa !627, !alias.scope !1213
  %i.ha = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.191, ptr %i.ha, align 8, !tbaa !19, !alias.scope !1213
  %i.hb = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 3, ptr %i.hb, align 8, !tbaa !649, !alias.scope !1213
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %i.gv, ptr %i.hc, align 8, !tbaa !650, !alias.scope !1213
  %i.hd = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 18, ptr %i.hd, align 8, !tbaa !651, !alias.scope !1213
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.he = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.hf = call fastcc noundef i32 @_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %.val, ptr nonnull %i.he, ptr noundef nonnull align 8 dereferenceable(48) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit45.i.i.i, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i.i.i, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i
  %.2.i.i.i = phi i32 [ %i.cj, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit45.i.i.i ], [ 0, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.i.i.i ], [ %i.hf, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i ], [ 1, %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i32 %.2.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1093
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !383
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime24assertBuiltinsUnmodifiedEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime14freezeBuiltinsEvE3$_0E9_M_invokeERKSt9_Any_dataOjOS4_S8_OS9_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #0 align 2 {
bb.a:
  %5 = alloca %"class.hermes::OptValue.398", align 8 ; 6 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !26    ; 5 uses
  %.val5 = load i32, ptr %1, align 4, !tbaa !3
  %.val6 = load i32, ptr %2, align 4, !tbaa !1009 ; 3 uses
  %.val7 = load i32, ptr %4, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = load ptr, ptr %.val, align 8, !tbaa !1223
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1225, !nonnull !124, !align !1226 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !681  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !687
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.val7, ptr %i.e, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.h, ptr %i.d, align 8, !tbaa !681
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !678  ; 7 uses
  %i.j = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 2                   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.n ; 2 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #31 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i32 %.val7, ptr %i.s, align 4, !tbaa !3
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.t = ptrtoaddr ptr %i.r to i64
  %i.u = add i64 %i.j, -4
  %i.v = sub i64 %i.u, %i.k                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  %i.y = sub i64 %i.t, %i.k
  %diff.check = icmp ult i64 %i.y, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.ad = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep21, align 4, !tbaa !3, !alias.scope !1230, !noalias !1227
  %wide.load22 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !3, !alias.scope !1230, !noalias !1227
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !1227, !noalias !1230
  store <4 x i32> %wide.load22, ptr %i.ae, align 4, !tbaa !3, !alias.scope !1227, !noalias !1230
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader44

.lr.ph.i.i.i.i.i.i.i.i.preheader44:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader44 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  %i.ag = load i32, ptr %.0911.i.i.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !1230, !noalias !1227
  store i32 %i.ag, ptr %.012.i.i.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !1227, !noalias !1230
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1233

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.aa, %middle.block ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #30
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  store ptr %i.r, ptr %i.c, align 8, !tbaa !678
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !681
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !687
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.b
  %i.al = add i32 %.val5, 1                       ; 2 uses
  %i.am = icmp eq i32 %i.al, 37
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @_ZN6hermes2vmL20publicNativeBuiltinsE, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !982
  %i.aq = zext i16 %i.ap to i32
  %.not.i.i.i = icmp eq i32 %.val6, %i.aq
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime14freezeBuiltinsEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1234, !nonnull !124, !align !1226 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !681 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !687
  %.not.i7.i.i.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i7.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.val6, ptr %i.au, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !681
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !678 ; 7 uses
  %i.az = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #32
  unreachable

_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i: ; preds = %bb.i
  %i.bd = ashr exact i64 %i.bb, 2                 ; 2 uses
  %.sroa.speculated.i.i.i9.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i9.i.i.i, %i.bd ; 2 uses
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i10.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i10.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #31 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  store i32 %.val6, ptr %i.bi, align 4, !tbaa !3
  %.not10.i.i.i.i.i11.i.i.i = icmp eq ptr %i.ay, %i.au
  br i1 %.not10.i.i.i.i.i11.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i12.i.i.i.preheader

.lr.ph.i.i.i.i.i12.i.i.i.preheader:               ; preds = %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i
  %i.bj = ptrtoaddr ptr %i.bh to i64
  %i.bk = add i64 %i.az, -4
  %i.bl = sub i64 %i.bk, %i.ba                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.bl, 28
  %i.bo = sub i64 %i.bj, %i.ba
  %diff.check25 = icmp ult i64 %i.bo, 32
  %or.cond42 = or i1 %min.iters.check27, %diff.check25
  br i1 %or.cond42, label %.lr.ph.i.i.i.i.i12.i.i.i.preheader43, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i.i.i.i.i12.i.i.i.preheader
  %n.vec30 = and i64 %i.bn, 9223372036854775800   ; 3 uses
  %i.bp = shl i64 %n.vec30, 2                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.ay, i64 %i.bp
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph28
  %index32 = phi i64 [ 0, %vector.ph28 ], [ %index.next37, %vector.body31 ] ; 2 uses
  %i.bs = shl i64 %index32, 2                     ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.bh, i64 %i.bs ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.ay, i64 %i.bs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %i.bt = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load35 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !3, !alias.scope !1238, !noalias !1235
  %wide.load36 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !3, !alias.scope !1238, !noalias !1235
  %i.bu = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load35, ptr %next.gep33, align 4, !tbaa !3, !alias.scope !1235, !noalias !1238
  store <4 x i32> %wide.load36, ptr %i.bu, align 4, !tbaa !3, !alias.scope !1235, !noalias !1238
  %index.next37 = add nuw i64 %index32, 8         ; 2 uses
  %i.bv = icmp eq i64 %index.next37, %n.vec30
  br i1 %i.bv, label %middle.block38, label %vector.body31, !llvm.loop !1240

middle.block38:                                   ; preds = %vector.body31
  %cmp.n39 = icmp eq i64 %i.bn, %n.vec30
  br i1 %cmp.n39, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i12.i.i.i.preheader43

.lr.ph.i.i.i.i.i12.i.i.i.preheader43:             ; preds = %.lr.ph.i.i.i.i.i12.i.i.i.preheader, %middle.block38
  %.012.i.i.i.i.i13.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i12.i.i.i.preheader ], [ %i.bq, %middle.block38 ]
  %.0911.i.i.i.i.i14.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i12.i.i.i.preheader ], [ %i.br, %middle.block38 ]
  br label %.lr.ph.i.i.i.i.i12.i.i.i

.lr.ph.i.i.i.i.i12.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i12.i.i.i.preheader43, %.lr.ph.i.i.i.i.i12.i.i.i
  %.012.i.i.i.i.i13.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i12.i.i.i ], [ %.012.i.i.i.i.i13.i.i.i.ph, %.lr.ph.i.i.i.i.i12.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i14.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i12.i.i.i ], [ %.0911.i.i.i.i.i14.i.i.i.ph, %.lr.ph.i.i.i.i.i12.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  %i.bw = load i32, ptr %.0911.i.i.i.i.i14.i.i.i, align 4, !tbaa !3, !alias.scope !1238, !noalias !1235
  store i32 %i.bw, ptr %.012.i.i.i.i.i13.i.i.i, align 4, !tbaa !3, !alias.scope !1235, !noalias !1238
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i14.i.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i13.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i15.i.i.i = icmp eq ptr %i.bx, %i.au
  br i1 %.not.i.i.i.i.i15.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i, label %.lr.ph.i.i.i.i.i12.i.i.i, !llvm.loop !1241

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i: ; preds = %.lr.ph.i.i.i.i.i12.i.i.i, %middle.block38, %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i
  %.0.lcssa.i.i.i.i.i17.i.i.i = phi ptr [ %i.bh, %_ZNKSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE12_M_check_lenEmPKc.exit.i.i8.i.i.i ], [ %i.bq, %middle.block38 ], [ %i.by, %.lr.ph.i.i.i.i.i12.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i17.i.i.i, i64 4
  %.not.i23.i.i18.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i18.i.i.i, label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i19.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #30
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i19.i.i.i

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i19.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i16.i.i.i
  store ptr %i.bh, ptr %i.as, align 8, !tbaa !678
  store ptr %i.bz, ptr %i.at, align 8, !tbaa !681
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.ca, ptr %i.av, align 8, !tbaa !687
  br label %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i

_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i: ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i19.i.i.i, %bb.h
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %3, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1242, !nonnull !124, !align !1243
  %.sroa.01.0.copyload.i.i.i = load i16, ptr %i.cc, align 2, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1244, !nonnull !124, !align !1243
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ce, align 2, !tbaa !19
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !1225, !nonnull !124, !align !1226 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !678 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !681
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 2
  store ptr %i.cg, ptr %5, align 8, !tbaa !682
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cm, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 1, ptr %i.cn, align 8, !tbaa !683
  tail call void @_ZN6hermes2vm8JSObject37updatePropertyFlagsWithoutTransitionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_13PropertyFlagsES6_NS_8OptValueIN4llvh8ArrayRefINS0_8SymbolIDEEEEE(ptr %.sroa.02.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i16 %.sroa.01.0.copyload.i.i.i, i16 %.sroa.0.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.hermes::OptValue.398") align 8 %5) #29
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !1225, !nonnull !124, !align !1226 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !678 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !681
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, %i.cp
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime14freezeBuiltinsEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !681
  br label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime14freezeBuiltinsEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime14freezeBuiltinsEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %bb.f, %_ZNSt6vectorIN6hermes2vm8SymbolIDESaIS2_EE9push_backERKS2_.exit20.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %.val, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1093
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %.val5, i64 40, i1 false), !tbaa.struct !1245
  store ptr %i.a, ptr %0, align 8, !tbaa !26
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %i.b = icmp eq ptr %.val6.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val6.i, i64 noundef 40) #30
  br label %"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6hermes2vm7Runtime14freezeBuiltinsEvE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvh7hashing6detail23hash_combine_range_implIKhEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, !prof !1015

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !18 ; 2 uses
  %.not1.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not1.i, i64 -49064778989728563, i64 %i.d
  store i64 %i.e, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #29
  br label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit

_ZN4llvh7hashing6detail18get_execution_seedEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18 ; 8 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
  %i.j = icmp ult i64 %i.i, 65
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh7hashing6detail18get_execution_seedEv.exit
  %i.k = tail call noundef i64 @_ZN4llvh7hashing6detail10hash_shortEPKcmm(ptr noundef %0, i64 noundef %i.i, i64 noundef %i.f)
  br label %bb.h

bb.e:                                             ; preds = %_ZN4llvh7hashing6detail18get_execution_seedEv.exit
  %i.l = and i64 %i.i, -64                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = xor i64 %i.f, -5435081209227447693       ; 3 uses
  %i.o = mul i64 %i.n, -7070675565921424023       ; 2 uses
  %i.p = lshr i64 %i.o, 47
  %i.q = xor i64 %i.o, %i.p
  %i.r = xor i64 %i.q, -5435081209227447693
  %i.s = mul i64 %i.r, -7070675565921424023       ; 2 uses
  %i.t = lshr i64 %i.s, 47
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -7070675565921424023
  %i.w = tail call i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 15) ; 2 uses
  %i.x = mul i64 %i.f, -5435081209227447693
  %i.y = lshr i64 %i.f, 47
  %i.z = xor i64 %i.y, %i.f                       ; 4 uses
  %i.aa = xor i64 %i.z, %i.x
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.z, %i.ac
  %i.ae = xor i64 %i.ad, %i.ab
  %i.af = mul i64 %i.ae, -7070675565921424023     ; 2 uses
  %i.ag = lshr i64 %i.af, 47
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, -7070675565921424023     ; 2 uses
  %i.aj = add i64 %i.w, %i.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.ak, align 1, !noalias !1246 ; 2 uses
  %i.al = add i64 %i.aj, %.0.copyload.i.i.i       ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 27)
  %i.an = mul i64 %i.am, -5435081209227447693
  %i.ao = mul i64 %i.f, -5435081209227447692
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i7.i.i = load i64, ptr %i.ap, align 1, !noalias !1246 ; 2 uses
  %i.aq = add i64 %.0.copyload.i7.i.i, %i.ao      ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 22)
  %i.as = mul i64 %i.ar, -5435081209227447693
  %i.at = xor i64 %i.an, %i.ai                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i8.i.i = load i64, ptr %i.au, align 1, !noalias !1246 ; 2 uses
  %i.av = add i64 %.0.copyload.i8.i.i, %i.w
  %i.aw = add i64 %i.av, %i.as                    ; 3 uses
  %i.ax = add i64 %i.v, %i.z                      ; 2 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 31)
  %i.az = mul i64 %i.ay, -5435081209227447693     ; 3 uses
  %i.ba = mul i64 %i.f, -7894485801551159383
  %i.bb = add i64 %i.at, %i.z
  %.0.copyload.i.i.i.i = load i64, ptr %0, align 1, !noalias !1246
  %i.bc = add i64 %.0.copyload.i.i.i.i, %i.ba     ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i15.i.i.i = load i64, ptr %i.bd, align 1, !noalias !1246 ; 2 uses
  %i.be = add i64 %i.bb, %i.bc
  %i.bf = add i64 %i.be, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 43)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i17.i.i.i = load i64, ptr %i.bh, align 1, !noalias !1246 ; 2 uses
  %i.bi = add i64 %i.bc, %.0.copyload.i.i.i
  %i.bj = add i64 %i.bi, %.0.copyload.i17.i.i.i   ; 3 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 20)
  %i.bl = add i64 %i.bk, %i.bc
  %i.bm = add i64 %i.bl, %i.bg                    ; 2 uses
  %i.bn = add i64 %i.bj, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bo = add i64 %i.az, %i.ai
  %i.bp = add i64 %i.aw, %.0.copyload.i17.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.bq, align 1, !noalias !1246
  %i.br = add i64 %i.bo, %.0.copyload.i.i10.i.i   ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bs, align 1, !noalias !1246 ; 2 uses
  %i.bt = add i64 %i.bp, %i.br
  %i.bu = add i64 %i.bt, %.0.copyload.i15.i11.i.i ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 43)
  %i.bw = add i64 %.0.copyload.i8.i.i, %.0.copyload.i7.i.i
  %i.bx = add i64 %i.bw, %i.br                    ; 3 uses
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 20)
  %i.bz = add i64 %i.by, %i.br
  %i.ca = add i64 %i.bz, %i.bv                    ; 2 uses
  %i.cb = add i64 %i.bx, %.0.copyload.i15.i11.i.i ; 2 uses
  %.not50 = icmp samesign eq i64 %i.l, 64
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.049 = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.059 = phi ptr [ %.0, %.lr.ph ], [ %.049, %.lr.ph.preheader ] ; 3 uses
  %.pn58 = phi ptr [ %.059, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 7 uses
end_hunk_6
