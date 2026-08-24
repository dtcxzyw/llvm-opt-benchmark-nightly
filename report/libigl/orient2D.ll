Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/orient2D?download=true
inline.NumInlined: 693
inline.NumDeleted: 315
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38, !range !42, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !55
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not38 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !38, !range !42 ; 2 uses
  %.pre59 = trunc nuw i8 %.pre to i1              ; 2 uses
  br i1 %.not38, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.pre59, ptr %0, ptr %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !55
  %i.u = sub nuw nsw i64 64, %i.d
  %i.v = lshr i64 %i.t, %i.u
  %.not39 = icmp ne i64 %i.v, 0
  %i.w = zext i1 %.not39 to i64
  %spec.select = add i64 %i.f, %i.w
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %spec.select, %bb.d ], [ %i.f, %bb.c ]
  %i.x = add i64 %.0, %i.b
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 288230376151711744) ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 6 uses
  %i.z = load i64, ptr %0, align 16
  %spec.select.i8.i = select i1 %.pre59, i64 8, i64 %i.z ; 2 uses
  %i.aa = icmp ugt i64 %spec.select.i, %spec.select.i8.i
  br i1 %i.aa, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %._crit_edge
  %i.ab = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %spec.select.i)
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i, i64 288230376151711744) ; 2 uses
  %i.ac = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #30 ; 3 uses
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !38, !range !42, !noundef !43
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.af, ptr %0, ptr %i.ah
  %i.aj = load i64, ptr %i.e, align 16, !tbaa !48
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.am = load i8, ptr %i.al, align 2, !tbaa !50, !range !42, !noundef !43
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %0, align 16
  %i.ap = shl i64 %i.ao, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ap) #31
  %.pre52.pre = load i8, ptr %i.y, align 1, !tbaa !38, !range !42
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.y, align 1, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre52 = phi i8 [ 0, %bb.g ], [ %.pre52.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !48
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !47
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !48
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre54 = load ptr, ptr %.phi.trans.insert53, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.h, %bb.i
  %i.aq = phi ptr [ %i.ad, %bb.h ], [ %.pre54, %bb.i ]
  %i.ar = phi i8 [ %.pre52, %bb.h ], [ %.pre, %bb.i ]
  %i.as = trunc nuw i8 %i.ar to i1                ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = select i1 %i.as, ptr %0, ptr %i.aq      ; 4 uses
  %.not40 = icmp eq i64 %spec.select.i, %i.f
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %spec.select.i
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  store i64 0, ptr %i.aw, align 8, !tbaa !55
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
  %i.bd = load i8, ptr %i.y, align 1, !tbaa !38, !range !42, !noundef !43
  %i.be = trunc nuw i8 %i.bd to i1                ; 2 uses
  %i.bf = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.bg = select i1 %i.be, ptr %0, ptr %i.bf
  %i.bh = load i64, ptr %i.e, align 16, !tbaa !48
  %i.bi = shl i64 %i.bh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.bg, i64 %i.bi, i1 false)
  br i1 %i.be, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.noexc
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !50, !range !42, !noundef !43
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i64, ptr %0, align 16
  %i.bn = shl i64 %i.bm, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bn) #31
  %.pre55.pre = load i8, ptr %i.y, align 1, !tbaa !38, !range !42
  %i.bo = trunc nuw i8 %.pre55.pre to i1
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre55 = phi i1 [ false, %bb.o ], [ %i.bo, %bb.n ]
  store i64 1, ptr %i.e, align 16, !tbaa !48
  store i64 1, ptr %0, align 16, !tbaa !47
  store ptr %i.bc, ptr %i.at, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.q:                                             ; preds = %bb.l
  store i64 1, ptr %i.e, align 16, !tbaa !48
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
  store i64 0, ptr %i.bs, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bt, align 8, !tbaa !49
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
  %i.b = trunc i128 %i.a to i64                   ; 14 uses
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !48  ; 8 uses
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38, !range !42, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.j, ptr %0, ptr %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !55
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not93 = icmp eq i64 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !38, !range !42 ; 2 uses
  %.pre120 = trunc nuw i8 %.pre to i1             ; 2 uses
  br i1 %.not93, label %._crit_edge112, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.pre120, ptr %0, ptr %i.p
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.f
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !55
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
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !38, !range !42, !noundef !43
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.af, ptr %0, ptr %i.ah
  %i.aj = load i64, ptr %i.e, align 16, !tbaa !48
  %i.ak = shl i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.am = load i8, ptr %i.al, align 2, !tbaa !50, !range !42, !noundef !43
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %0, align 16
  %i.ap = shl i64 %i.ao, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ap) #31
  %.pre113.pre = load i8, ptr %i.y, align 1, !tbaa !38, !range !42
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.y, align 1, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre113 = phi i8 [ 0, %bb.g ], [ %.pre113.pre, %bb.f ]
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !48
  store i64 %.sroa.speculated.i, ptr %0, align 16, !tbaa !47
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.i:                                             ; preds = %._crit_edge112
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !48
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
  %i.av = select i1 %i.at, ptr %0, ptr %.pre117   ; 20 uses
  %i.aw = icmp ult i64 %i.x, %i.b
  br i1 %i.aw, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not104 = select i1 %i.at, i1 true, i1 %i.ar
  br i1 %.not104, label %bb.o, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99: ; preds = %bb.j
  %i.ax = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc unwind label %bb.p     ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.ay = load i8, ptr %i.y, align 1, !tbaa !38, !range !42, !noundef !43
  %i.az = trunc nuw i8 %i.ay to i1                ; 2 uses
  %i.ba = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bb = select i1 %i.az, ptr %0, ptr %i.ba
  %i.bc = load i64, ptr %i.e, align 16, !tbaa !48
  %i.bd = shl i64 %i.bc, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.bb, i64 %i.bd, i1 false)
  br i1 %i.az, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !50, !range !42, !noundef !43
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i64, ptr %0, align 16
  %i.bi = shl i64 %i.bh, 3
  tail call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bi) #31
  %.pre116.pre = load i8, ptr %i.y, align 1, !tbaa !38, !range !42
  %i.bj = trunc nuw i8 %.pre116.pre to i1
  %i.bk = select i1 %i.bj, ptr %0, ptr %i.ax
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre116 = phi ptr [ %i.ax, %bb.m ], [ %i.bk, %bb.l ]
  store i64 1, ptr %i.e, align 16, !tbaa !48
  store i64 1, ptr %0, align 16, !tbaa !47
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.o:                                             ; preds = %bb.j
  store i64 1, ptr %i.e, align 16, !tbaa !48
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i99
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #29
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.o, %bb.n
  %.pre-phi124 = phi ptr [ %i.av, %bb.o ], [ %.pre116, %bb.n ]
  store i64 0, ptr %.pre-phi124, align 8, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.bn, align 8, !tbaa !49
  br label %bb.y

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %.not95 = icmp ult i64 %i.x, 288230376151711745
  %i.bo = sub i64 %i.x, %spec.select.i            ; 3 uses
  br i1 %.not95, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %i.f, %i.b
  %i.bq = icmp ugt i64 %i.x, %i.bp
  %i.br = xor i64 %i.bo, -1                       ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %i.av, i64 %i.f
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !55 ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = sub nuw nsw i64 64, %i.d
  %i.bw = lshr i64 %i.bu, %i.bv
  %i.bx = getelementptr [8 x i8], ptr %i.av, i64 %i.x
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.br
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !55
  %i.bz = add nsw i64 %i.x, -1
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ca = shl i64 %i.bu, %i.d                     ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.av, i64 %i.x
  %i.cc = getelementptr [8 x i8], ptr %i.cb, i64 %i.br ; 2 uses
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !55
  %i.cd = icmp ugt i64 %i.f, 1
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %2 = add i64 %i.f, -2
  %3 = sub i64 %2, %i.bo
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %3
  %i.ce = load i64, ptr %4, align 8, !tbaa !55
  %i.cf = sub nuw nsw i64 64, %i.d
  %i.cg = lshr i64 %i.ce, %i.cf
  %i.ch = or disjoint i64 %i.cg, %i.ca
  store i64 %i.ch, ptr %i.cc, align 8, !tbaa !55
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s, %bb.q
  %.187 = phi i64 [ %i.x, %bb.q ], [ %i.bz, %bb.s ], [ %i.x, %bb.u ], [ %i.x, %bb.t ] ; 12 uses
  %.0 = phi i64 [ %i.bo, %bb.q ], [ 0, %bb.s ], [ 1, %bb.u ], [ 1, %bb.t ] ; 11 uses
  %i.ci = add nsw i64 %i.b, 2                     ; 2 uses
  %i.cj = sub nsw i64 %.187, %.0                  ; 2 uses
  %.not96107 = icmp slt i64 %i.cj, %i.ci
  br i1 %.not96107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %invariant.op = add i64 %.187, -2               ; 2 uses
  %i.ck = sub nuw nsw i64 64, %i.d                ; 2 uses
  %i.cl = xor i64 %.0, -1
  %i.cm = add i64 %.187, %i.cl                    ; 2 uses
  %i.cn = add i64 %i.b, 1
  %i.co = tail call i64 @llvm.smin.i64(i64 %i.cm, i64 %i.cn)
  %i.cp = add i64 %.0, %i.co
  %i.cq = sub i64 %.187, %i.cp                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cr = xor i64 %.0, -1
  %i.cs = add i64 %.187, %i.cr
  %i.ct = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cs, i64 %i.ct)
  %i.cu = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.cu ; 2 uses
  %i.cv = shl i64 %.187, 3                        ; 2 uses
  %i.cw = sub i64 %.187, %.0
  %i.cx = shl i64 %i.cw, 3
  %scevgep136.a = getelementptr i8, ptr %i.av, i64 %i.cx ; 2 uses
  %i.cy = shl i64 %i.b, 3                         ; 2 uses
  %i.cz = sub i64 %i.cu, %i.cy
  %scevgep137.a = getelementptr i8, ptr %i.av, i64 %i.cz
  %i.da = add i64 %.0, %i.b
  %i.db = shl i64 %i.da, 3                        ; 2 uses
  %i.dc = sub i64 %i.cv, %i.db
  %scevgep138.a = getelementptr i8, ptr %i.av, i64 %i.dc
  %i.dd = add i64 %i.cu, -8
  %i.de = sub i64 %i.dd, %i.cy
  %scevgep139.a = getelementptr i8, ptr %i.av, i64 %i.de
  %i.df = add i64 %i.cv, -8
  %i.dg = sub i64 %i.df, %i.db
  %scevgep140 = getelementptr i8, ptr %i.av, i64 %i.dg
  %bound0 = icmp ult ptr %scevgep, %scevgep138.a
  %bound1 = icmp ult ptr %scevgep137.a, %scevgep136.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0141 = icmp ult ptr %scevgep, %scevgep140
  %bound1142 = icmp ult ptr %scevgep139.a, %scevgep136.a
  %found.conflict143 = and i1 %bound0141, %bound1142
  %conflict.rdx = or i1 %found.conflict, %found.conflict143
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, -2                      ; 4 uses
  %i.dh = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert144 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat145 = shufflevector <2 x i64> %broadcast.splatinsert144, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = add i64 %.0, %index                     ; 2 uses
  %i.dj = xor i64 %i.di, -1
  %i.dk = add i64 %.187, %i.dj                    ; 2 uses
  %i.dl = sub i64 %i.dk, %i.b
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %wide.load = load <2 x i64>, ptr %i.dn, align 8, !tbaa !55, !alias.scope !141
  %i.do = shl <2 x i64> %wide.load, %broadcast.splat145 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dk
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8 ; 2 uses
  store <2 x i64> %i.do, ptr %i.dq, align 8, !tbaa !55, !alias.scope !144, !noalias !146
  %i.dr = add i64 %i.di, %i.b
  %i.ds = sub i64 %invariant.op, %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %wide.load146 = load <2 x i64>, ptr %i.du, align 8, !tbaa !55, !alias.scope !148
  %i.dv = lshr <2 x i64> %wide.load146, %broadcast.splat
  %i.dw = or disjoint <2 x i64> %i.dv, %i.do
  store <2 x i64> %i.dw, ptr %i.dq, align 8, !tbaa !55, !alias.scope !144, !noalias !146
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %i.dy = add i64 %n.vec, -1
  %i.dz = sub i64 %i.cm, %i.dy
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.dh, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.en, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ea = xor i64 %.1108, -1
  %i.eb = add i64 %.187, %i.ea                    ; 2 uses
  %i.ec = sub i64 %i.eb, %i.b
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !55
  %i.ef = shl i64 %i.ee, %i.d                     ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.eb ; 2 uses
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !55
  %i.eh = add i64 %.1108, %i.b
  %i.ei = sub i64 %invariant.op, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !55
  %i.el = lshr i64 %i.ek, %i.ck
  %i.em = or disjoint i64 %i.el, %i.ef
  store i64 %i.em, ptr %i.eg, align 8, !tbaa !55
  %i.en = add i64 %.1108, 1                       ; 3 uses
  %i.eo = sub nsw i64 %.187, %i.en                ; 2 uses
  %.not96 = icmp slt i64 %i.eo, %i.ci
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.v
  %.1.lcssa = phi i64 [ %.0, %bb.v ], [ %i.dh, %middle.block ], [ %i.en, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.cj, %bb.v ], [ %i.dz, %middle.block ], [ %i.eo, %scalar.ph ]
  %i.ep = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.ep
  br i1 %.not97, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.eq = xor i64 %.1.lcssa, -1
  %i.er = add i64 %.187, %i.eq                    ; 2 uses
  %i.es = sub i64 %i.er, %i.b
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !55
  %i.ev = shl i64 %i.eu, %i.d
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.er
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !55
  %i.ex = add i64 %.1.lcssa, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  %.2 = phi i64 [ %i.ex, %bb.w ], [ %.1.lcssa, %._crit_edge ]
  %i.ey = sub i64 %.187, %.2
  %i.ez = shl i64 %i.ey, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.ez, i1 false)
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !153, !noalias !155, !nonnull !43, !align !115
  %i.b = icmp eq ptr %i.a, %0                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111, !noalias !158, !nonnull !43, !align !115 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.thread

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i64 0, ptr %7, align 16, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  store i64 1, ptr %i.g, align 16, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 3 uses
  store i8 0, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 73 ; 4 uses
  store i8 1, ptr %i.i, align 1, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 74 ; 4 uses
  store i8 0, ptr %i.j, align 2, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusES9_NSC_INSB_10shift_leftES9_ivvEEvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !161

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !38, !range !42, !noundef !43
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr %i.j, align 2, !range !42
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %common.resume, label %bb.d
end_hunk_0
