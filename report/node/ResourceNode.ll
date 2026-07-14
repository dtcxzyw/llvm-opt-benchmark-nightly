inline.NumInlined: 1276
inline.NumDeleted: 693
begin_hunk_0_@_ZN4LIEF2PE12ResourceNodeC2ERKS1_:bb.a
  %i.as = load ptr, ptr %i.ag, align 8
  %.not.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.h
  %i.at = load i64, ptr %2, align 8
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = load ptr, ptr %i.am, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.am, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.u, align 8             ; 10 uses
  %i.ax = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 4 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 3 uses
  %.not.i.i11 = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i11)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #20 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = load i64, ptr %2, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i.i12 = icmp eq ptr %i.aw, %i.ar
  br i1 %.not10.i.i.i.i12, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i13.preheader

.lr.ph.i.i.i.i13.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bk = sub i64 %i.ax, %i.ay
  %i.bl = add i64 %i.bk, -8                       ; 2 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i13.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i13.preheader
  %scevgep = getelementptr i8, ptr %i.bh, i64 8
  %i.bo = add i64 %i.ax, -8
  %i.bp = sub i64 %i.bo, %i.ay
  %i.bq = and i64 %i.bp, -8                       ; 2 uses
  %scevgep34 = getelementptr i8, ptr %scevgep, i64 %i.bq
  %scevgep35 = getelementptr i8, ptr %i.aw, i64 8
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.bq
  %bound0 = icmp ult ptr %i.bh, %scevgep36
  %bound1 = icmp ult ptr %i.aw, %scevgep34
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i13.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 3 uses
  %i.br = shl i64 %n.vec, 3                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.aw, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.aw, i64 %i.bu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.bv = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep37, align 8, !alias.scope !92, !noalias !87
  %wide.load38 = load <2 x i64>, ptr %i.bv, align 8, !alias.scope !92, !noalias !87
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !95, !noalias !92
  store <2 x i64> %wide.load38, ptr %i.bw, align 8, !alias.scope !95, !noalias !92
  %i.bx = getelementptr i8, ptr %next.gep37, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep37, align 8, !alias.scope !92, !noalias !87
  store <2 x ptr> splat (ptr null), ptr %i.bx, align 8, !alias.scope !92, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i13.preheader40

.lr.ph.i.i.i.i13.preheader40:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i13.preheader, %middle.block
  %.012.i.i.i.i14.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i13.preheader ], [ %i.bs, %middle.block ]
  %.0911.i.i.i.i15.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i13.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %.lr.ph.i.i.i.i13.preheader40, %.lr.ph.i.i.i.i13
  %.012.i.i.i.i14 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i13 ], [ %.012.i.i.i.i14.ph, %.lr.ph.i.i.i.i13.preheader40 ] ; 2 uses
  %.0911.i.i.i.i15 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i13 ], [ %.0911.i.i.i.i15.ph, %.lr.ph.i.i.i.i13.preheader40 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.bz = load i64, ptr %.0911.i.i.i.i15, align 8, !alias.scope !90, !noalias !87
  store i64 %i.bz, ptr %.012.i.i.i.i14, align 8, !alias.scope !87, !noalias !90
  store ptr null, ptr %.0911.i.i.i.i15, align 8, !alias.scope !90, !noalias !87
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i15, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i14, i64 8 ; 2 uses
  %.not.i.i.i.i16 = icmp eq ptr %i.ca, %i.ar
  br i1 %.not.i.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i13, !llvm.loop !98

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i13, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bh, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bs, %middle.block ], [ %i.cb, %.lr.ph.i.i.i.i13 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.cd = load ptr, ptr %i.ag, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cf) #21
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.bh, ptr %i.u, align 8
  store ptr %i.cc, ptr %i.am, align 8
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.cg, ptr %i.ag, align 8
  %.pr = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
  %i.ch = load ptr, ptr %.pr, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(76) %.pr) #19, !inline_history !99
  br label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.019.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.h
}

declare void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(76) ptr @_ZN4LIEF2PE12ResourceNodeaSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(76) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.38", align 8 ; 7 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp ugt i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.m, align 8              ; 9 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 4 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.t
  br i1 %i.ab, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.af = sub i64 %i.ae, %i.z
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #20 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.x, %i.ad
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %3 = add i64 %i.ae, -8
  %i.ah = sub i64 %3, %i.z                        ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader69, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = add i64 %i.ae, -8
  %i.al = sub i64 %i.ak, %i.z
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.an
  %scevgep40 = getelementptr i8, ptr %i.x, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %scevgep40
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader69, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.x, i64 %i.ar ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.as = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !alias.scope !105, !noalias !100
  %wide.load42 = load <2 x i64>, ptr %i.as, align 8, !alias.scope !105, !noalias !100
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !108, !noalias !105
  store <2 x i64> %wide.load42, ptr %i.at, align 8, !alias.scope !108, !noalias !105
  %i.au = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !alias.scope !105, !noalias !100
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !alias.scope !105, !noalias !100
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader69

.lr.ph.i.i.i.i.preheader69:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader69, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader69 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.aw = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !103, !noalias !100
  store i64 %i.aw, ptr %.012.i.i.i.i, align 8, !alias.scope !100, !noalias !103
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !103, !noalias !100
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.ad
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !111

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.az = phi ptr [ %.pre.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i ], [ %i.x, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.az, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.ba = load ptr, ptr %i.v, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ag, ptr %i.m, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.be, ptr %i.ac, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store ptr %i.bf, ptr %i.v, align 8
  %.pre = load ptr, ptr %i.n, align 8
  %.pre27 = load ptr, ptr %i.o, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.d, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bg = phi ptr [ %i.p, %bb.d ], [ %.pre27, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bh = phi ptr [ %i.q, %bb.d ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not25 = icmp eq ptr %i.bh, %i.bg
  br i1 %.not25, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit
  %.sroa.021.026 = phi ptr [ %i.bh, %.lr.ph ], [ %i.dg, %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.bj = load ptr, ptr %.sroa.021.026, align 8   ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.38") align 8 %2, ptr noundef nonnull align 8 dereferenceable(76) %i.bj) #19
  %i.bn = load ptr, ptr %i.bi, align 8            ; 5 uses
  %i.bo = load ptr, ptr %i.v, align 8
  %.not.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i, label %bb.g, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.f
  %i.bp = load i64, ptr %2, align 8
  store i64 %i.bp, ptr %i.bn, align 8
  %i.bq = load ptr, ptr %i.bi, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.br, ptr %i.bi, align 8
  br label %_ZNSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr %i.m, align 8             ; 10 uses
  %i.bt = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64               ; 4 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.bx = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 1152921504606846975)
  %i.cb = select i1 %i.bz, i64 1152921504606846975, i64 %i.ca ; 3 uses
  %.not.i.i13 = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i13)
  %i.cc = shl nuw nsw i64 %i.cb, 3
  %i.cd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #20 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  %i.cf = load i64, ptr %2, align 8
  store i64 %i.cf, ptr %i.ce, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i.i14 = icmp eq ptr %i.bs, %i.bn
  br i1 %.not10.i.i.i.i14, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i15.preheader

.lr.ph.i.i.i.i15.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.cg = sub i64 %i.bt, %i.bu
  %i.ch = add i64 %i.cg, -8                       ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check53 = icmp ult i64 %i.ch, 56
  br i1 %min.iters.check53, label %.lr.ph.i.i.i.i15.preheader68, label %vector.memcheck44

vector.memcheck44:                                ; preds = %.lr.ph.i.i.i.i15.preheader
  %scevgep45 = getelementptr i8, ptr %i.cd, i64 8
  %i.ck = add i64 %i.bt, -8
  %i.cl = sub i64 %i.ck, %i.bu
  %i.cm = and i64 %i.cl, -8                       ; 2 uses
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %i.cm
  %scevgep47 = getelementptr i8, ptr %i.bs, i64 8
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.cm
  %bound049 = icmp ult ptr %i.cd, %scevgep48
  %bound150 = icmp ult ptr %i.bs, %scevgep46
  %found.conflict51 = and i1 %bound049, %bound150
  br i1 %found.conflict51, label %.lr.ph.i.i.i.i15.preheader68, label %vector.ph54

vector.ph54:                                      ; preds = %vector.memcheck44
  %n.vec56 = and i64 %i.cj, 4611686018427387900   ; 3 uses
  %i.cn = shl i64 %n.vec56, 3                     ; 2 uses
  %i.co = getelementptr i8, ptr %i.cd, i64 %i.cn  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bs, i64 %i.cn
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph54
  %index58 = phi i64 [ 0, %vector.ph54 ], [ %index.next63, %vector.body57 ] ; 2 uses
  %i.cq = shl i64 %index58, 3                     ; 2 uses
  %next.gep59 = getelementptr i8, ptr %i.cd, i64 %i.cq ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.bs, i64 %i.cq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.cr = getelementptr i8, ptr %next.gep60, i64 16
  %wide.load61 = load <2 x i64>, ptr %next.gep60, align 8, !alias.scope !117, !noalias !112
  %wide.load62 = load <2 x i64>, ptr %i.cr, align 8, !alias.scope !117, !noalias !112
  %i.cs = getelementptr i8, ptr %next.gep59, i64 16
  store <2 x i64> %wide.load61, ptr %next.gep59, align 8, !alias.scope !120, !noalias !117
  store <2 x i64> %wide.load62, ptr %i.cs, align 8, !alias.scope !120, !noalias !117
  %i.ct = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep60, align 8, !alias.scope !117, !noalias !112
  store <2 x ptr> splat (ptr null), ptr %i.ct, align 8, !alias.scope !117, !noalias !112
  %index.next63 = add nuw i64 %index58, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.cu, label %middle.block64, label %vector.body57, !llvm.loop !122

middle.block64:                                   ; preds = %vector.body57
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23.i = icmp ult i64 %i.l, %i.h
  br i1 %.not23.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #20 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not28.i = icmp eq ptr %i.b, %i.c
  br i1 %.not28.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26.i
  %.not.i27.i = icmp eq ptr %i.c, null
  br i1 %.not.i27.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #21
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmEN11InvalidNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(76) initializes((0, 8)) %0) unnamed_addr #12 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4LIEF2PE12ResourceNodeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(76) %i.e) #19, !inline_history !168
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF2PE12ResourceNodeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !148

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #21, !inline_history !169
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EEEvT_S8_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4LIEF2PE12ResourceNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %i.t = load i64, ptr %i.r, align 8
  %i.u = shl i64 %i.t, 1
  %i.v = add i64 %i.u, 2
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.v) #21, !inline_history !169
  br label %_ZN4LIEF2PE12ResourceNodeD2Ev.exit

_ZN4LIEF2PE12ResourceNodeD2Ev.exit:               ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(76) %0) #19, !inline_history !169
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZZNK4LIEF2PE12ResourceNode11safe_get_atEmENK11InvalidNode5cloneEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.38") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

declare void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #20 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = load i64, ptr %2, align 8
  store i64 %i.s, ptr %i.r, align 8
  store ptr null, ptr %2, align 8
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %3 = add i64 %i.a, -8
  %i.t = sub i64 %3, %i.f                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = add i64 %i.a, -8
  %i.x = sub i64 %i.w, %i.f
  %i.y = and i64 %i.x, -8
  %i.z = add i64 %i.y, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.z
  %scevgep35 = getelementptr i8, ptr %i.d, i64 %i.z
  %bound0 = icmp ult ptr %i.q, %scevgep35
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.ad ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.d, i64 %i.ad ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !175, !noalias !170
  %wide.load37 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !175, !noalias !170
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !178, !noalias !175
  store <2 x i64> %wide.load37, ptr %i.af, align 8, !alias.scope !178, !noalias !175
  %i.ag = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !alias.scope !175, !noalias !170
  store <2 x ptr> splat (ptr null), ptr %i.ag, align 8, !alias.scope !175, !noalias !170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader62

.lr.ph.i.i.i.preheader62:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader62, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader62 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.ai = load i64, ptr %.0911.i.i.i, align 8, !alias.scope !173, !noalias !170
  store i64 %i.ai, ptr %.012.i.i.i, align 8, !alias.scope !170, !noalias !173
  store ptr null, ptr %.0911.i.i.i, align 8, !alias.scope !173, !noalias !170
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !181

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %middle.block ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.al = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %4 = add i64 %i.e, -8
  %i.am = sub i64 %4, %i.a                        ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.am, 184
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader61, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ap = add i64 %i.e, -8
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %i.as = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ar
  %scevgep40 = getelementptr i8, ptr %i.as, i64 16
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  %scevgep41 = getelementptr i8, ptr %i.at, i64 8
  %bound042 = icmp ult ptr %i.al, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader61, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec49 = and i64 %i.ao, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec49, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.al, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ax = shl i64 %index51, 3                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.al, i64 %i.ax ; 2 uses
  %next.gep53 = getelementptr i8, ptr %1, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.ay = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <2 x i64>, ptr %next.gep53, align 8, !alias.scope !187, !noalias !182
  %wide.load55 = load <2 x i64>, ptr %i.ay, align 8, !alias.scope !187, !noalias !182
  %i.az = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x i64> %wide.load54, ptr %next.gep52, align 8, !alias.scope !190, !noalias !187
  store <2 x i64> %wide.load55, ptr %i.az, align 8, !alias.scope !190, !noalias !187
  %i.ba = getelementptr i8, ptr %next.gep53, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep53, align 8, !alias.scope !187, !noalias !182
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !alias.scope !187, !noalias !182
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.bb, label %middle.block57, label %vector.body50, !llvm.loop !192

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i64 %i.ao, %n.vec49
  br i1 %cmp.n58, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader61

.lr.ph.i.i.i17.preheader61:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block57
  %.012.i.i.i18.ph = phi ptr [ %i.al, %vector.memcheck39 ], [ %i.al, %.lr.ph.i.i.i17.preheader ], [ %i.av, %middle.block57 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.aw, %middle.block57 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader61, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.be, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader61 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.bc = load i64, ptr %.0911.i.i.i19, align 8, !alias.scope !185, !noalias !182
  store i64 %i.bc, ptr %.012.i.i.i18, align 8, !alias.scope !182, !noalias !185
  store ptr null, ptr %.0911.i.i.i19, align 8, !alias.scope !185, !noalias !182
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !193

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block57, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.al, %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.av, %middle.block57 ], [ %i.be, %.lr.ph.i.i.i17 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #21
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE12ResourceNodeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bj, ptr %i.bf, align 8
  ret void
}

declare void @_ZN4LIEF2PE17ResourceDirectoryC1ERKNS0_7details27pe_resource_directory_tableE(ptr noundef nonnull align 8 dereferenceable(92), ptr noundef nonnull align 1 dereferenceable(16)) unnamed_addr #2

declare void @_ZN4LIEF11swap_endianItEEvPT_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 7, i64 %i.f          ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #23
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 2305843009213693951)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = shl nuw nsw i64 %.0, 1
  %i.m = add nuw nsw i64 %i.l, 2
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #20 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8
  %i.p = shl i64 %i.o, 1
  %i.q = add i64 %i.p, 2
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.q) #21
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8
  store i16 0, ptr %i.c, align 2
  br label %bb.g

.split12:                                         ; preds = %.thread, %bb.d
  %i.s = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split12
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.s, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

bb.f:                                             ; preds = %.split12
  %i.v = shl i64 %i.b, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.s, ptr align 2 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit: ; preds = %bb.e, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.b
  store i16 0, ptr %i.y, align 2
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = icmp ult i64 %i.g, 8
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
end_hunk_1
