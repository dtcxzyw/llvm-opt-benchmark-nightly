Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/orient2D?download=true
inline.NumInlined: 693
inline.NumDeleted: 315
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %spec.select.i
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  store i64 0, ptr %i.aw, align 8, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.ax = lshr i128 %1, 3
  %i.ay = trunc i128 %i.ax to i64                 ; 4 uses
  %i.az = shl nuw nsw i64 %spec.select.i, 3       ; 2 uses
  %.not41 = icmp ugt i64 %i.az, %i.ay
  br i1 %.not41, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %0, align 16
  %i.bb = icmp ne i64 %i.ba, 0
  %.not51 = select i1 %i.as, i1 true, i1 %i.bb
  br i1 %.not51, label %bb.q, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43: ; preds = %bb.l
  %i.bc = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc unwind label %bb.r     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bd = load i8, ptr %i.y, align 1, !tbaa !27, !range !28, !noundef !29
  %i.be = trunc nuw i8 %i.bd to i1                ; 2 uses
  %i.bf = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bg = select i1 %i.be, ptr %0, ptr %i.bf
  %i.bh = load i64, ptr %i.e, align 16, !tbaa !31
  %i.bi = shl i64 %i.bh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.bg, i64 %i.bi, i1 false)
  br i1 %i.be, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !33, !range !28, !noundef !29
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i64, ptr %0, align 16
  %i.bn = shl i64 %i.bm, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bn) #31
  %.pre55.pre = load i8, ptr %i.y, align 1, !tbaa !27, !range !28
  %i.bo = trunc nuw i8 %.pre55.pre to i1
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre55 = phi i1 [ false, %bb.o ], [ %i.bo, %bb.n ]
  store i64 1, ptr %i.e, align 16, !tbaa !31
  store i64 1, ptr %0, align 16, !tbaa !30
  store ptr %i.bc, ptr %i.at, align 8, !tbaa !30
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.q:                                             ; preds = %bb.l
  store i64 1, ptr %i.e, align 16, !tbaa !31
  %.pre56 = load ptr, ptr %i.at, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i43
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #29
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.q, %bb.p
  %.pre-phi61 = phi i1 [ %i.as, %bb.q ], [ %.pre55, %bb.p ]
  %i.br = phi ptr [ %.pre56, %bb.q ], [ %i.bc, %bb.p ]
  %i.bs = select i1 %.pre-phi61, ptr %0, ptr %i.br
  store i64 0, ptr %i.bs, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bt, align 8, !tbaa !32
  br label %bb.t

bb.s:                                             ; preds = %bb.k
  %i.bu = sub nuw nsw i64 %i.az, %i.ay
  %i.bv = shl i64 %i.f, 3
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.au, i64 %.sroa.speculated, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 0, i64 %i.ay, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.s, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(75) %0, i128 noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64                   ; 13 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !31  ; 7 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27, !range !28, !noundef !29
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !27, !range !28 ; 2 uses
  %.pre120 = trunc nuw i8 %.pre to i1             ; 2 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.pre120, ptr %0, ptr %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = sub nuw nsw i64 64, %i.d
  %i.v = lshr i64 %i.t, %i.u
  %.not94 = icmp ne i64 %i.v, 0
  %i.w = zext i1 %.not94 to i64
  %spec.select = add i64 %i.f, %i.w
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.c, %bb.d
  %.086 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.x = add i64 %.086, %i.b                      ; 11 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711744) ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 6 uses
  %i.z = load i64, ptr %0, align 16               ; 2 uses
  %spec.select.i8.i = select i1 %.pre120, i64 8, i64 %i.z ; 2 uses
  %i.aa = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.aa, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge112
  %i.ab = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ac = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #30 ; 3 uses
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !27, !range !28, !noundef !29
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.af, ptr %0, ptr %i.ah
  %i.aj = load i64, ptr %i.e, align 16, !tbaa !31
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.am = load i8, ptr %i.al, align 2, !tbaa !33, !range !28, !noundef !29
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %0, align 16
  %i.ap = shl i64 %i.ao, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ap) #31
  %.pre113.pre = load i8, ptr %i.y, align 1, !tbaa !27, !range !28
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.y, align 1, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !31
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !30
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !30
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !31
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre115 = load ptr, ptr %.phi.trans.insert114, align 8
  %i.aq = icmp ne i64 %i.z, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.ar = phi i1 [ true, %bb.h ], [ %i.aq, %bb.i ]
  %.pre117 = phi ptr [ %i.ad, %bb.h ], [ %.pre115, %bb.i ]
  %i.as = phi i8 [ %.pre113, %bb.h ], [ %.pre, %bb.i ]
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.av = select i1 %i.at, ptr %0, ptr %.pre117   ; 19 uses
  %i.aw = icmp ult i64 %i.x, %i.b
  br i1 %i.aw, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.at, i1 true, i1 %i.ar
  br i1 %.not104, label %bb.o, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.ax = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc unwind label %bb.p     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.ay = load i8, ptr %i.y, align 1, !tbaa !27, !range !28, !noundef !29
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bb = select i1 %i.az, ptr %0, ptr %i.ba
  %i.bc = load i64, ptr %i.e, align 16, !tbaa !31
  %i.bd = shl i64 %i.bc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.bb, i64 %i.bd, i1 false)
  br i1 %i.az, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !33, !range !28, !noundef !29
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %0, align 16
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bi) #31
  %.pre116.pre = load i8, ptr %i.y, align 1, !tbaa !27, !range !28
  %i.bj = trunc nuw i8 %.pre116.pre to i1
  %i.bk = select i1 %i.bj, ptr %0, ptr %i.ax
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre116 = phi ptr [ %i.ax, %bb.m ], [ %i.bk, %bb.l ]
  store i64 1, ptr %i.e, align 16, !tbaa !31
  store i64 1, ptr %0, align 16, !tbaa !30
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !30
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !31
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #29
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.o, %bb.n
  %.pre-phi124 = phi ptr [ %i.av, %bb.o ], [ %.pre116, %bb.n ]
  store i64 0, ptr %.pre-phi124, align 8, !tbaa !39
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bn, align 8, !tbaa !32
  br label %bb.y

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.x, 288230376151711745
  %i.bo = sub i64 %i.x, %spec.select.i            ; 2 uses
  br i1 %.not95, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %i.f, %i.b
  %i.bq = icmp ugt i64 %i.x, %i.bp
  %i.br = xor i64 %i.bo, -1                       ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %i.av, i64 %i.f ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = sub nuw nsw i64 64, %i.d
  %i.bw = lshr i64 %i.bu, %i.bv
  %i.bx = getelementptr [8 x i8], ptr %i.av, i64 %i.x
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.br
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !39
  %i.bz = add nsw i64 %i.x, -1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ca = shl i64 %i.bu, %i.d                     ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.av, i64 %i.x
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %i.br ; 2 uses
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !39
  %i.cd = icmp ugt i64 %i.f, 1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr i8, ptr %i.bs, i64 -16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !39
  %i.cg = sub nuw nsw i64 64, %i.d
  %i.ch = lshr i64 %i.cf, %i.cg
  %i.ci = or disjoint i64 %i.ch, %i.ca
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !39
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s, %bb.q
  %.187 = phi i64 [ %i.x, %bb.q ], [ %i.bz, %bb.s ], [ %i.x, %bb.u ], [ %i.x, %bb.t ] ; 11 uses
  %.0 = phi i64 [ %i.bo, %bb.q ], [ 0, %bb.s ], [ 1, %bb.u ], [ 1, %bb.t ] ; 10 uses
  %i.cj = add nsw i64 %i.b, 2                     ; 2 uses
  %i.ck = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.ck, %i.cj
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.cl = sub nuw nsw i64 64, %i.d                ; 2 uses
  %i.cm = xor i64 %.0, -1
  %i.cn = add i64 %.187, %i.cm                    ; 2 uses
  %i.co = add i64 %i.b, 1
  %i.cp = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 %i.co) ; 2 uses
  %i.cq = add i64 %.0, %i.cp
  %i.cr = sub i64 %.187, %i.cq                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cs = shl i64 %i.cp, 3                        ; 3 uses
  %i.ct = getelementptr i8, ptr %i.av, i64 %i.cs  ; 2 uses
  %2 = shl i64 %.187, 3                           ; 2 uses
  %i.cu = sub i64 %.187, %.0
  %i.cv = shl i64 %i.cu, 3
  %i.cw = getelementptr i8, ptr %i.av, i64 %i.cv  ; 2 uses
  %i.cx = shl i64 %i.b, 3                         ; 2 uses
  %3 = sub i64 %i.cs, %i.cx
  %4 = getelementptr i8, ptr %i.av, i64 %3
  %i.cy = add i64 %.0, %i.b
  %5 = shl i64 %i.cy, 3                           ; 2 uses
  %i.cz = sub i64 %2, %5
  %i.da = getelementptr i8, ptr %i.av, i64 %i.cz
  %i.db = add i64 %i.cs, -8
  %i.dc = sub i64 %i.db, %i.cx
  %6 = getelementptr i8, ptr %i.av, i64 %i.dc
  %7 = add i64 %2, -8
  %8 = sub i64 %7, %5
  %i.dd = getelementptr i8, ptr %i.av, i64 %8
  %bound0 = icmp ult ptr %i.ct, %i.da
  %bound1 = icmp ult ptr %4, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  %bound0143 = icmp ult ptr %i.ct, %i.dd
  %bound1144 = icmp ult ptr %6, %i.cw
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx = or i1 %found.conflict, %found.conflict145
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -2                      ; 4 uses
  %i.de = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat147 = shufflevector <2 x i64> %broadcast.splatinsert146, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = add i64 %.0, %index                     ; 2 uses
  %i.dg = xor i64 %i.df, -1
  %i.dh = add i64 %.187, %i.dg                    ; 2 uses
  %i.di = sub i64 %i.dh, %i.b
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %wide.load = load <2 x i64>, ptr %i.dk, align 8, !tbaa !39, !alias.scope !147
  %i.dl = shl <2 x i64> %wide.load, %broadcast.splat147 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dh
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  store <2 x i64> %i.dl, ptr %i.dn, align 8, !tbaa !39, !alias.scope !148, !noalias !149
  %i.do = add i64 %i.df, %i.b
  %i.dp = sub i64 %invariant.op, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %wide.load148 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !39, !alias.scope !150
  %i.ds = lshr <2 x i64> %wide.load148, %broadcast.splat
  %i.dt = or disjoint <2 x i64> %i.ds, %i.dl
  store <2 x i64> %i.dt, ptr %i.dn, align 8, !tbaa !39, !alias.scope !148, !noalias !149
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %i.dv = add i64 %n.vec, -1
  %i.dw = sub i64 %i.cn, %i.dv
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.de, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.ek, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dx = xor i64 %.1108, -1
  %i.dy = add i64 %.187, %i.dx                    ; 2 uses
  %i.dz = sub i64 %i.dy, %i.b
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !39
  %i.ec = shl i64 %i.eb, %i.d                     ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dy ; 2 uses
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !39
  %i.ee = add i64 %.1108, %i.b
  %i.ef = sub i64 %invariant.op, %i.ee
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !39
  %i.ei = lshr i64 %i.eh, %i.cl
  %i.ej = or disjoint i64 %i.ei, %i.ec
  store i64 %i.ej, ptr %i.ed, align 8, !tbaa !39
  %i.ek = add i64 %.1108, 1                       ; 3 uses
  %i.el = sub nsw i64 %.187, %i.ek                ; 2 uses
  %.not96 = icmp slt i64 %i.el, %i.cj
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !146

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.v
  %.1.lcssa = phi i64 [ %.0, %bb.v ], [ %i.de, %middle.block ], [ %i.ek, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.ck, %bb.v ], [ %i.dw, %middle.block ], [ %i.el, %scalar.ph ]
  %i.em = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.em
  br i1 %.not97, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.en = xor i64 %.1.lcssa, -1
  %i.eo = add i64 %.187, %i.en                    ; 2 uses
  %i.ep = sub i64 %i.eo, %i.b
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !39
  %i.es = shl i64 %i.er, %i.d
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.eo
  store i64 %i.es, ptr %i.et, align 8, !tbaa !39
  %i.eu = add i64 %.1.lcssa, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  %.2 = phi i64 [ %i.eu, %bb.w ], [ %.1.lcssa, %._crit_edge ]
  %i.ev = sub i64 %.187, %.2
  %i.ew = shl i64 %i.ev, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.ew, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %bb.x, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::detail::minus", align 1 ; 3 uses
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"union.boost::multiprecision::backends::cpp_int_base<512, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::data_type", align 16 ; 4 uses
  %7 = alloca %"class.boost::multiprecision::number.96", align 16 ; 14 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.109", align 8 ; 5 uses
  %9 = alloca %"struct.boost::multiprecision::detail::shift_left", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !165, !noalias !166, !nonnull !29, !align !54
  %i.b = icmp eq ptr %i.a, %0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53, !noalias !167, !nonnull !29, !align !54 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.thread

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i64 0, ptr %7, align 16, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 1, ptr %i.g, align 16, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 73 ; 4 uses
  store i8 1, ptr %i.i, align 1, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 74 ; 4 uses
  store i8 0, ptr %i.j, align 2, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !157

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !27, !range !28, !noundef !29
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr %i.j, align 2, !range !28
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %7, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #31, !inline_history !2
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(75) %7, i64 64, i1 false), !tbaa.struct !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %7, ptr noundef nonnull align 16 dereferenceable(75) %0, i64 64, i1 false), !tbaa.struct !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !55
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !56, !range !28, !noundef !29
  %i.v = load i8, ptr %i.t, align 8, !tbaa !56, !range !28, !noundef !29
  store i8 %i.v, ptr %i.h, align 8, !tbaa !56
  store i8 %i.u, ptr %i.t, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.x = load i8, ptr %i.i, align 1, !tbaa !56, !range !28, !noundef !29
  %i.y = load i8, ptr %i.w, align 1, !tbaa !56, !range !28, !noundef !29 ; 2 uses
  store i8 %i.y, ptr %i.i, align 1, !tbaa !56
  store i8 %i.x, ptr %i.w, align 1, !tbaa !56
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 16, !tbaa !44
  %i.ab = load i64, ptr %i.z, align 16, !tbaa !44
  store i64 %i.ab, ptr %i.g, align 16, !tbaa !44
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 2, !tbaa !56, !range !28, !noundef !29
  %i.ae = load i8, ptr %i.ac, align 2, !tbaa !56, !range !28, !noundef !29 ; 2 uses
  store i8 %i.ae, ptr %i.j, align 2, !tbaa !56
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !56
  %i.af = or i8 %i.ae, %i.y
  %or.cond.i.i25.not = icmp eq i8 %i.af, 0
  br i1 %or.cond.i.i25.not, label %bb.e, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %7, align 16
  %i.aj = shl i64 %i.ai, 3
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #31
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.thread:                                          ; preds = %bb.a
  br i1 %i.b, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  store ptr %i.d, ptr %8, align 8, !tbaa !41, !alias.scope !168
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i32, ptr %i.e, align 8, !tbaa !43, !noalias !168
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !43, !alias.scope !168
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.critedge:                                        ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, %.thread
  %i.am = load i32, ptr %i.e, align 8, !tbaa !43, !noalias !169 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.31)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr @.str.32, ptr %5, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.33, ptr %i.ao, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1474, ptr %i.ap, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %i.aq, align 4, !tbaa !61
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #28
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit: ; preds = %.critedge
  %i.as = zext nneg i32 %i.am to i64
  tail call void @_ZN5boost14multiprecision11default_ops15eval_left_shiftINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_mEEvRT_RKT0_T1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.d, i64 noundef %i.as)
  %i.at = load ptr, ptr %1, align 8, !tbaa !165, !noalias !170, !nonnull !29, !align !54 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !32, !range !28, !noundef !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !32, !range !28, !noundef !29
  %.not.i28 = icmp eq i8 %i.av, %i.ax
  br i1 %.not.i28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit
  tail call void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.at)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit
  tail call void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.at)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29: ; preds = %bb.j, %bb.k
  %i.ay = load i8, ptr %i.au, align 8, !tbaa !32, !range !28, !noundef !29 ; 2 uses
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = xor i8 %i.ay, 1
  store i8 %i.ba, ptr %i.au, align 8, !tbaa !32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = load i64, ptr %i.bb, align 16
  %i.bd = icmp ne i64 %i.bc, 1
  %or.cond.i.not = select i1 %i.az, i1 true, i1 %i.bd
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !27, !range !28, !noundef !29
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = select i1 %i.bg, ptr %0, ptr %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !39
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.au, align 8, !tbaa !32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit: ; preds = %bb.m, %bb.l, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29, %bb.f, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL7Point_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_(ptr noundef nonnull align 16 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef nonnull align 16 dereferenceable(84) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.04.i = alloca [2 x %"class.CGAL::cpp_float"], align 16 ; 29 uses
  %.sroa.03 = alloca [2 x %"class.CGAL::cpp_float"], align 16 ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  store i64 0, ptr %.sroa.04.i, align 16, !tbaa !30, !alias.scope !173
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !31, !noalias !173 ; 2 uses
  %.sroa.04.i.64.i.64.i.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 64
  store i64 %i.b, ptr %.sroa.04.i.64.i.64.i.64..sroa_idx, align 16, !tbaa !31, !alias.scope !173
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !32, !range !28, !noalias !173, !noundef !29
  %.sroa.04.i.72.i.72.i.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 72
  store i8 %i.d, ptr %.sroa.04.i.72.i.72.i.72..sroa_idx, align 8, !tbaa !32, !alias.scope !173
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27, !range !28, !noalias !173, !noundef !29 ; 2 uses
  %.sroa.04.i.73.i.73.i.73..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 73
  store i8 %i.f, ptr %.sroa.04.i.73.i.73.i.73..sroa_idx, align 1, !tbaa !27, !alias.scope !173
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.h = load i8, ptr %i.g, align 2, !tbaa !33, !range !28, !noalias !173, !noundef !29
  %.sroa.04.i.74.i.74.i.74..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 74
  store i8 %i.h, ptr %.sroa.04.i.74.i.74.i.74..sroa_idx, align 2, !tbaa !33, !alias.scope !173
  %i.i = trunc nuw i8 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = shl i64 %i.b, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %.sroa.04.i, ptr nonnull align 16 dereferenceable(84) %1, i64 %i.j, i1 false)
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i, ptr noundef nonnull align 16 dereferenceable(84) %1, i64 16, i1 false), !tbaa.struct !47
  store i64 0, ptr %i.a, align 16, !tbaa !31, !noalias !173
  store i8 1, ptr %i.e, align 1, !tbaa !27, !noalias !173
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i

_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i:             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i32, ptr %i.k, align 16, !tbaa !37, !noalias !173 ; 3 uses
  %.sroa.04.i.80.i.80.i.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 80
  store i32 %i.l, ptr %.sroa.04.i.80.i.80.i.80..sroa_idx, align 16, !tbaa !37, !alias.scope !173
  %.sroa.04.96..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 96 ; 2 uses
  %.sroa.04.i.96..sroa_idx129 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 96
  store i64 0, ptr %.sroa.04.i.96..sroa_idx129, align 16, !tbaa !30, !alias.scope !173
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 16, !tbaa !31, !noalias !173 ; 2 uses
  %.sroa.04.i.160.i.160.i.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 160
  store i64 %i.n, ptr %.sroa.04.i.160.i.160.i.160..sroa_idx, align 16, !tbaa !31, !alias.scope !173
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = load i8, ptr %i.o, align 8, !tbaa !32, !range !28, !noalias !173, !noundef !29
  %.sroa.04.i.168.i.168.i.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 168
  store i8 %i.p, ptr %.sroa.04.i.168.i.168.i.168..sroa_idx, align 8, !tbaa !32, !alias.scope !173
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !27, !range !28, !noalias !173, !noundef !29 ; 2 uses
  %.sroa.04.i.169.i.169.i.169..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 169
  store i8 %i.r, ptr %.sroa.04.i.169.i.169.i.169..sroa_idx, align 1, !tbaa !27, !alias.scope !173
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.t = load i8, ptr %i.s, align 2, !tbaa !33, !range !28, !noalias !173, !noundef !29
  %.sroa.04.i.170.i.170.i.170..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 170
  store i8 %i.t, ptr %.sroa.04.i.170.i.170.i.170..sroa_idx, align 2, !tbaa !33, !alias.scope !173
  %i.u = trunc nuw i8 %i.r to i1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i
  %i.v = shl i64 %i.n, 3
  %.sroa.04.i.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %.sroa.04.i.96..sroa_idx, ptr nonnull align 16 dereferenceable(84) %2, i64 %i.v, i1 false)
  br label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.96..sroa_idx49.i, ptr noundef nonnull align 16 dereferenceable(84) %2, i64 16, i1 false), !tbaa.struct !47
  store i64 0, ptr %i.m, align 16, !tbaa !31, !noalias !173
  store i8 1, ptr %i.q, align 1, !tbaa !27, !noalias !173
  br label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i

_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.x = load i32, ptr %i.w, align 16, !tbaa !37, !noalias !173 ; 3 uses
  %.sroa.04.i.176.i.176.i.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 176
  store i32 %i.x, ptr %.sroa.04.i.176.i.176.i.176..sroa_idx, align 16, !tbaa !37, !alias.scope !173
  store i64 0, ptr %.sroa.03, align 16, !tbaa !30
  %.sroa.04.i.64.i.64.i.64..sroa_idx124 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 64
  %.sroa.04.i.64..sroa.04.i.64..sroa.04.i.64..sroa.04.64..sroa.04.64..sroa.04.64..i = load i64, ptr %.sroa.04.i.64.i.64.i.64..sroa_idx124, align 16, !tbaa !31 ; 2 uses
  %.sroa.03.64..sroa_idx104 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 64
  store i64 %.sroa.04.i.64..sroa.04.i.64..sroa.04.i.64..sroa.04.64..sroa.04.64..sroa.04.64..i, ptr %.sroa.03.64..sroa_idx104, align 16, !tbaa !31
  %.sroa.04.i.72.i.72.i.72..sroa_idx125 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 72
  %.sroa.04.i.72..sroa.04.i.72..sroa.04.i.72..sroa.04.72..sroa.04.72..sroa.04.72..i = load i8, ptr %.sroa.04.i.72.i.72.i.72..sroa_idx125, align 8, !tbaa !32
  %.sroa.03.72..sroa_idx106 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 72
  store i8 %.sroa.04.i.72..sroa.04.i.72..sroa.04.i.72..sroa.04.72..sroa.04.72..sroa.04.72..i, ptr %.sroa.03.72..sroa_idx106, align 8, !tbaa !32
  %.sroa.04.i.73.i.73.i.73..sroa_idx126 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 73
  %.sroa.04.i.73..sroa.04.i.73..sroa.04.i.73..sroa.04.73..sroa.04.73..sroa.04.73..i = load i8, ptr %.sroa.04.i.73.i.73.i.73..sroa_idx126, align 1, !tbaa !27 ; 2 uses
  %.sroa.03.73..sroa_idx108 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 73
  store i8 %.sroa.04.i.73..sroa.04.i.73..sroa.04.i.73..sroa.04.73..sroa.04.73..sroa.04.73..i, ptr %.sroa.03.73..sroa_idx108, align 1, !tbaa !27
  %.sroa.04.i.74.i.74.i.74..sroa_idx127 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 74
  %.sroa.04.i.74..sroa.04.i.74..sroa.04.i.74..sroa.04.74..sroa.04.74..sroa.04.74..i = load i8, ptr %.sroa.04.i.74.i.74.i.74..sroa_idx127, align 2, !tbaa !33
  %.sroa.03.74..sroa_idx110 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 74
  store i8 %.sroa.04.i.74..sroa.04.i.74..sroa.04.i.74..sroa.04.74..sroa.04.74..sroa.04.74..i, ptr %.sroa.03.74..sroa_idx110, align 2, !tbaa !33
  %i.y = trunc nuw i8 %.sroa.04.i.73..sroa.04.i.73..sroa.04.i.73..sroa.04.73..sroa.04.73..sroa.04.73..i to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i
  %i.z = shl i64 %.sroa.04.i.64..sroa.04.i.64..sroa.04.i.64..sroa.04.64..sroa.04.64..sroa.04.64..i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %.sroa.03, ptr nonnull align 16 dereferenceable(192) %.sroa.04.i, i64 %i.z, i1 false)
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i

bb.g:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i, i64 16, i1 false), !tbaa.struct !47
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i

_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i:            ; preds = %bb.g, %bb.f
  %.sroa.03.80..sroa_idx112 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 80
  store i32 %i.l, ptr %.sroa.03.80..sroa_idx112, align 16, !tbaa !37
  %.sroa.03.96..sroa_idx49 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96 ; 2 uses
  %.sroa.03.96..sroa_idx114 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96
  store i64 0, ptr %.sroa.03.96..sroa_idx114, align 16, !tbaa !30
  %.sroa.04.i.160.i.160.i.160..sroa_idx130 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 160
  %.sroa.04.i.160..sroa.04.i.160..sroa.04.i.160..sroa.04.160..sroa.04.160..sroa.04.160..i = load i64, ptr %.sroa.04.i.160.i.160.i.160..sroa_idx130, align 16, !tbaa !31 ; 2 uses
  %.sroa.03.160..sroa_idx115 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 160
  store i64 %.sroa.04.i.160..sroa.04.i.160..sroa.04.i.160..sroa.04.160..sroa.04.160..sroa.04.160..i, ptr %.sroa.03.160..sroa_idx115, align 16, !tbaa !31
  %.sroa.04.i.168.i.168.i.168..sroa_idx131 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 168
  %.sroa.04.i.168..sroa.04.i.168..sroa.04.i.168..sroa.04.168..sroa.04.168..sroa.04.168..i = load i8, ptr %.sroa.04.i.168.i.168.i.168..sroa_idx131, align 8, !tbaa !32
  %.sroa.03.168..sroa_idx117 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 168
  store i8 %.sroa.04.i.168..sroa.04.i.168..sroa.04.i.168..sroa.04.168..sroa.04.168..sroa.04.168..i, ptr %.sroa.03.168..sroa_idx117, align 8, !tbaa !32
  %.sroa.04.i.169.i.169.i.169..sroa_idx132 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 169
  %.sroa.04.i.169..sroa.04.i.169..sroa.04.i.169..sroa.04.169..sroa.04.169..sroa.04.169..i = load i8, ptr %.sroa.04.i.169.i.169.i.169..sroa_idx132, align 1, !tbaa !27 ; 2 uses
  %.sroa.03.169..sroa_idx119 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 169
  store i8 %.sroa.04.i.169..sroa.04.i.169..sroa.04.i.169..sroa.04.169..sroa.04.169..sroa.04.169..i, ptr %.sroa.03.169..sroa_idx119, align 1, !tbaa !27
  %.sroa.04.i.170.i.170.i.170..sroa_idx133 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 170
  %.sroa.04.i.170..sroa.04.i.170..sroa.04.i.170..sroa.04.170..sroa.04.170..sroa.04.170..i = load i8, ptr %.sroa.04.i.170.i.170.i.170..sroa_idx133, align 2, !tbaa !33
  %.sroa.03.170..sroa_idx121 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 170
  store i8 %.sroa.04.i.170..sroa.04.i.170..sroa.04.i.170..sroa.04.170..sroa.04.170..sroa.04.170..i, ptr %.sroa.03.170..sroa_idx121, align 2, !tbaa !33
  %i.aa = trunc nuw i8 %.sroa.04.i.169..sroa.04.i.169..sroa.04.i.169..sroa.04.169..sroa.04.169..sroa.04.169..i to i1
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.96..sroa_idx49, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.96..sroa_idx49.i, i64 16, i1 false), !tbaa.struct !47
  br label %_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i
  %i.ab = shl i64 %.sroa.04.i.160..sroa.04.i.160..sroa.04.i.160..sroa.04.160..sroa.04.160..sroa.04.160..i, 3
  %.sroa.03.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96
  %.sroa.04.i.96..sroa_idx128 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %.sroa.03.96..sroa_idx, ptr nonnull align 16 dereferenceable(84) %.sroa.04.i.96..sroa_idx128, i64 %i.ab, i1 false)
  br label %_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit

_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit: ; preds = %bb.h, %bb.i
  %.sroa.03.176..sroa_idx123 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 176
  store i32 %i.x, ptr %.sroa.03.176..sroa_idx123, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  store i64 0, ptr %0, align 16, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.03.64..sroa_idx105 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 64
  %.sroa.03.64..sroa.03.64..sroa.03.64..sroa.03.64. = load i64, ptr %.sroa.03.64..sroa_idx105, align 16, !tbaa !31 ; 2 uses
  store i64 %.sroa.03.64..sroa.03.64..sroa.03.64..sroa.03.64., ptr %i.ac, align 16, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.72..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 72
  %.sroa.03.72..sroa.03.72..sroa.03.72..sroa.03.72. = load i8, ptr %.sroa.03.72..sroa_idx107, align 8, !tbaa !32
  store i8 %.sroa.03.72..sroa.03.72..sroa.03.72..sroa.03.72., ptr %i.ad, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.sroa.03.73..sroa_idx109 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 73
  %.sroa.03.73..sroa.03.73..sroa.03.73..sroa.03.73. = load i8, ptr %.sroa.03.73..sroa_idx109, align 1, !tbaa !27 ; 2 uses
  store i8 %.sroa.03.73..sroa.03.73..sroa.03.73..sroa.03.73., ptr %i.ae, align 1, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 74
  %.sroa.03.74..sroa_idx111 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 74
  %.sroa.03.74..sroa.03.74..sroa.03.74..sroa.03.74. = load i8, ptr %.sroa.03.74..sroa_idx111, align 2, !tbaa !33
  store i8 %.sroa.03.74..sroa.03.74..sroa.03.74..sroa.03.74., ptr %i.af, align 2, !tbaa !33
  %i.ag = trunc nuw i8 %.sroa.03.73..sroa.03.73..sroa.03.73..sroa.03.73. to i1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit
  %i.ah = shl i64 %.sroa.03.64..sroa.03.64..sroa.03.64..sroa.03.64., 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %0, ptr nonnull align 16 dereferenceable(192) %.sroa.03, i64 %i.ah, i1 false)
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i

bb.k:                                             ; preds = %_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03, i64 16, i1 false), !tbaa.struct !47
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i

_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i:           ; preds = %bb.k, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.l, ptr %i.ai, align 16, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i64 0, ptr %i.aj, align 16, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.03.160..sroa_idx116 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 160
  %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160. = load i64, ptr %.sroa.03.160..sroa_idx116, align 16, !tbaa !31 ; 2 uses
  store i64 %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160., ptr %i.ak, align 16, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.03.168..sroa_idx118 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 168
  %.sroa.03.168..sroa.03.168..sroa.03.168..sroa.03.168. = load i8, ptr %.sroa.03.168..sroa_idx118, align 8, !tbaa !32
  store i8 %.sroa.03.168..sroa.03.168..sroa.03.168..sroa.03.168., ptr %i.al, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 169
  %.sroa.03.169..sroa_idx120 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 169
  %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169. = load i8, ptr %.sroa.03.169..sroa_idx120, align 1, !tbaa !27 ; 2 uses
  store i8 %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169., ptr %i.am, align 1, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 170
  %.sroa.03.170..sroa_idx122 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 170
  %.sroa.03.170..sroa.03.170..sroa.03.170..sroa.03.170. = load i8, ptr %.sroa.03.170..sroa_idx122, align 2, !tbaa !33
  store i8 %.sroa.03.170..sroa.03.170..sroa.03.170..sroa.03.170., ptr %i.an, align 2, !tbaa !33
  %i.ao = trunc nuw i8 %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169. to i1
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aj, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.96..sroa_idx49, i64 16, i1 false), !tbaa.struct !47
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

bb.m:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i
  %i.ap = shl i64 %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160., 3
  %.sroa.03.96..sroa_idx113 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %i.aj, ptr nonnull align 16 dereferenceable(84) %.sroa.03.96..sroa_idx113, i64 %i.ap, i1 false)
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %bb.l, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.x, ptr %i.aq, align 16, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_orient2D.cpp() #26 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL4lastE) ; 0 uses
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN5EigenL6lastp1E) ; 0 uses
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL3allE) ; 0 uses
  %i.d = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef -52) #25
  %i.e = fadd double %i.d, 1.000000e+00
  store double %i.e, ptr @_ZN4COREL6relEpsE, align 8, !tbaa !14
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL6relEpsE) ; 0 uses
  store i64 0, ptr @_ZN4COREL12EXTLONG_ZEROE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_ZEROE, i64 8), align 8, !tbaa !176
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_ZEROE) ; 0 uses
  store i64 1, ptr @_ZN4COREL11EXTLONG_ONEE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_ONEE, i64 8), align 8, !tbaa !176
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_ONEE) ; 0 uses
  store i64 2, ptr @_ZN4COREL11EXTLONG_TWOE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_TWOE, i64 8), align 8, !tbaa !176
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_TWOE) ; 0 uses
  store i64 3, ptr @_ZN4COREL13EXTLONG_THREEE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_THREEE, i64 8), align 8, !tbaa !176
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_THREEE) ; 0 uses
  store i64 4, ptr @_ZN4COREL12EXTLONG_FOURE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FOURE, i64 8), align 8, !tbaa !176
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FOURE) ; 0 uses
  store i64 5, ptr @_ZN4COREL12EXTLONG_FIVEE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FIVEE, i64 8), align 8, !tbaa !176
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FIVEE) ; 0 uses
  store i64 6, ptr @_ZN4COREL11EXTLONG_SIXE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_SIXE, i64 8), align 8, !tbaa !176
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_SIXE) ; 0 uses
  store i64 7, ptr @_ZN4COREL13EXTLONG_SEVENE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SEVENE, i64 8), align 8, !tbaa !176
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SEVENE) ; 0 uses
  store i64 8, ptr @_ZN4COREL13EXTLONG_EIGHTE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_EIGHTE, i64 8), align 8, !tbaa !176
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_EIGHTE) ; 0 uses
  store i64 1073741824, ptr @_ZN4COREL11EXTLONG_BIGE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_BIGE, i64 8), align 8, !tbaa !176
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_BIGE) ; 0 uses
  store i64 -1073741824, ptr @_ZN4COREL13EXTLONG_SMALLE, align 8, !tbaa !175
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SMALLE, i64 8), align 8, !tbaa !176
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SMALLE) ; 0 uses
  store double f0x4002934F0979A371, ptr @_ZN4COREL5log_5E, align 8, !tbaa !14
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL5log_5E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind memory(argmem: write) }
attributes #23 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { noreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { nounwind memory(none) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !48}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"double", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !15, i64 0}
!19 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!10, !10, i64 0}
!24 = !{!"long", !9, i64 0}
!25 = !{!"bool", !9, i64 0}
!26 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEE", !9, i64 0, !24, i64 64, !25, i64 72, !25, i64 73, !25, i64 74}
!27 = !{!26, !25, i64 73}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!9, !9, i64 0}
!31 = !{!26, !24, i64 64}
!32 = !{!26, !25, i64 72}
!33 = !{!26, !25, i64 74}
!34 = !{!"_ZTSN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEE", !26, i64 0}
!35 = !{!"_ZTSN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEE", !34, i64 0}
!36 = !{!"_ZTSN4CGAL9cpp_floatE", !35, i64 0, !10, i64 80}
!37 = !{!36, !10, i64 80}
!38 = !{!"long long", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTSN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEE", !15, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"_ZTSN5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEE", !40, i64 0, !10, i64 8}
!43 = !{!42, !10, i64 8}
!44 = !{!24, !24, i64 0}
!45 = !{!"p1 long long", !15, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{i64 0, i64 8, !44, i64 8, i64 8, !46}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageE", !45, i64 0, !24, i64 8, !24, i64 16, !25, i64 24}
!50 = !{!49, !45, i64 0}
!51 = !{!49, !24, i64 16}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!42, !40, i64 0}
!54 = !{i64 16}
!55 = !{i64 0, i64 64, !30}
!56 = !{!25, !25, i64 0}
!57 = !{!"_ZTSN5boost15source_locationE", !16, i64 0, !16, i64 8, !10, i64 16, !10, i64 20}
!58 = !{!57, !16, i64 0}
!59 = !{!57, !16, i64 8}
!60 = !{!57, !10, i64 16}
!61 = !{!57, !10, i64 20}
!62 = !{!"branch_weights", i32 1, i32 1048575}
!63 = distinct !{null}
!64 = distinct !{ptr @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_, null}
!65 = distinct !{null}
!66 = !{ptr @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_}
!67 = distinct !{null}
!68 = distinct !{!68, i1 true, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE"}
!69 = distinct !{!69, !68, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE: argument 0"}
!70 = distinct !{!70, i1 true, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE"}
!71 = distinct !{!71, !70, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE: argument 0"}
!72 = distinct !{!72, i1 true, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE"}
!73 = distinct !{!73, !72, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE: argument 0"}
!74 = !{!69}
!75 = !{!71}
!76 = !{!73}
!77 = !{i64 11381835}
!78 = !{i64 11382661}
!79 = distinct !{!79, i1 true, !"_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd"}
!80 = distinct !{!80, !79, !"_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd"}
!82 = distinct !{!82, !81, !"_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd: argument 0"}
!83 = !{!80}
!84 = !{!82}
!85 = distinct !{!85, i1 true, !"_ZN4CGALmlERKNS_9cpp_floatES2_"}
!86 = distinct !{!86, !85, !"_ZN4CGALmlERKNS_9cpp_floatES2_: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN4CGALmlERKNS_9cpp_floatES2_"}
!88 = distinct !{!88, !87, !"_ZN4CGALmlERKNS_9cpp_floatES2_: argument 0"}
!89 = !{!86}
!90 = !{!88}
!91 = distinct !{!91, i1 true, !"_ZN5boost14multiprecisionmiINS0_6detail10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvSA_LSB_1EEENS2_10expressionINS2_5minusENSD_IT_T0_T1_T2_T3_EENS4_IT4_XT5_EEEvvEERKSK_RKSM_"}
!92 = distinct !{!92, !91, !"_ZN5boost14multiprecisionmiINS0_6detail10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvSA_LSB_1EEENS2_10expressionINS2_5minusENSD_IT_T0_T1_T2_T3_EENS4_IT4_XT5_EEEvvEERKSK_RKSM_: argument 0"}
!93 = distinct !{null, null, null}
!94 = distinct !{!94, i1 true, !"_ZN5boost14multiprecisionmiINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1ENS0_6detail10shift_leftENS0_6numberIS7_LS8_1EEEivvEENS9_10expressionINS9_5minusENSB_IT_XT0_EEENSD_IT1_T2_T3_T4_T5_EEvvEERKSG_RKSM_"}
!95 = distinct !{!95, !94, !"_ZN5boost14multiprecisionmiINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1ENS0_6detail10shift_leftENS0_6numberIS7_LS8_1EEEivvEENS9_10expressionINS9_5minusENSB_IT_XT0_EEENSD_IT1_T2_T3_T4_T5_EEvvEERKSG_RKSM_: argument 0"}
!96 = distinct !{null, null, null}
!97 = !{!92}
!98 = !{!95}
!99 = distinct !{!99, !48}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = !{!49, !24, i64 8}
!103 = !{!49, !25, i64 24}
!104 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!105 = distinct !{!105, !52}
!106 = distinct !{!106, !48}
!107 = distinct !{!107, !48}
!108 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9limb_dataE", !24, i64 0, !45, i64 8}
!109 = !{!108, !24, i64 0}
!110 = !{!108, !45, i64 8}
!111 = distinct !{!111, !52}
!112 = distinct !{!112, !48}
!113 = distinct !{!113, !48}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = distinct !{!116, !52}
!117 = distinct !{!117, !48}
!118 = distinct !{!118, !48}
!119 = distinct !{!119, !48}
!120 = distinct !{!120, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv"}
!121 = distinct !{!121, !120, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv: argument 0"}
!122 = distinct !{null, null, null}
!123 = distinct !{!123, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv"}
!124 = distinct !{!124, !123, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv"}
!126 = distinct !{!126, !125, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE5rightEv"}
!128 = distinct !{!128, !127, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE5rightEv: argument 0"}
!129 = !{!121}
!130 = !{!"_ZTSN5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvEE", !42, i64 0, !40, i64 16}
!131 = !{!130, !40, i64 16}
!132 = !{!124}
!133 = !{!126}
!134 = !{!128}
!135 = distinct !{!135, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvE5rightEv"}
!136 = distinct !{!136, !135, !"_ZNK5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvE5rightEv: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvE4leftEv"}
!138 = distinct !{!138, !137, !"_ZNK5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvE4leftEv: argument 0"}
!139 = !{!136}
!140 = !{!138}
!141 = distinct !{!141, i1 false, !"LVerDomain"}
!142 = distinct !{!142, !141}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !141}
!145 = distinct !{!145, !48, !151, !152}
!146 = distinct !{!146, !48, !151}
!147 = !{!142}
!148 = !{!143}
!149 = !{!142, !144}
!150 = !{!144}
!151 = !{!"llvm.loop.isvectorized", i32 1}
!152 = !{!"llvm.loop.unroll.runtime.disable"}
!153 = distinct !{!153, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE4leftEv"}
!154 = distinct !{!154, !153, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE4leftEv: argument 0"}
!155 = distinct !{!155, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv"}
!156 = distinct !{!156, !155, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv: argument 0"}
!157 = distinct !{null, null, null}
!158 = distinct !{!158, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv"}
!159 = distinct !{!159, !158, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv: argument 0"}
!160 = distinct !{!160, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv"}
!161 = distinct !{!161, !160, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv: argument 0"}
!162 = distinct !{!162, i1 true, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE4leftEv"}
!163 = distinct !{!163, !162, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE4leftEv: argument 0"}
!164 = !{!"_ZTSN5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvEE", !40, i64 0, !42, i64 8}
!165 = !{!164, !40, i64 0}
!166 = !{!154}
!167 = !{!156}
!168 = !{!159}
!169 = !{!161}
!170 = !{!163}
!171 = distinct !{!171, i1 true, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_"}
!172 = distinct !{!172, !171, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_: argument 0"}
!173 = !{!172}
!174 = !{!"_ZTSN4CORE7extLongE", !24, i64 0, !10, i64 8}
!175 = !{!174, !24, i64 0}
!176 = !{!174, !10, i64 8}
end_hunk_0
