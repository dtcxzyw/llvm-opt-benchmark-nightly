Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/orient2D?download=true
inline.NumInlined: 693
inline.NumDeleted: 315
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5boost14multiprecision8backends18multiply_karatsubaILm512ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(75) %1, ptr noundef nonnull align 16 dereferenceable(75) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 16, !tbaa !48  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load i64, ptr %i.c, align 16, !tbaa !48  ; 3 uses
  %i.e = icmp ult i64 %i.b, %i.d                  ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 8 uses
  %storemerge.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.d) ; 9 uses
  %i.f = icmp eq i64 %storemerge.i, 1
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i8, ptr %i.g, align 8, !tbaa !49, !range !42, !noundef !43 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38, !range !42, !noundef !43
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %1, ptr %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !55   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38, !range !42, !noundef !43
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.s, ptr %2, ptr %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !55
  %add.narrowed = add i64 %i.w, %i.p              ; 2 uses
  %add.narrowed.overflow = icmp ult i64 %add.narrowed, %i.p ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38, !range !42, !noundef !43
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %i.z, ptr %0, ptr %i.ab       ; 2 uses
  store i64 %add.narrowed, ptr %i.ac, align 8, !tbaa !55
  %i.ad = zext i1 %add.narrowed.overflow to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !55
  %i.af = select i1 %add.narrowed.overflow, i64 2, i64 1 ; 4 uses
  %i.ag = load i64, ptr %0, align 16
  %spec.select.i8.i = select i1 %i.z, i64 8, i64 %i.ag ; 2 uses
  %i.ah = icmp ugt i64 %i.af, %spec.select.i8.i
  br i1 %i.ah, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.ai = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.af) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated16.i, 3
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #30
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.al = load i8, ptr %i.x, align 1, !tbaa !38, !range !42, !noundef !43
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ao = select i1 %i.am, ptr %0, ptr %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 16, !tbaa !48
  %i.ar = shl i64 %i.aq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br i1 %i.am, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.at = load i8, ptr %i.as, align 2, !tbaa !50, !range !42, !noundef !43
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i64, ptr %0, align 16
  %i.aw = shl i64 %i.av, 3
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aw) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc
  store i8 0, ptr %i.x, align 1, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.af, ptr %i.ap, align 16, !tbaa !48
  store i64 %.sroa.speculated16.i, ptr %0, align 16, !tbaa !47
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.af, ptr %i.ax, align 16, !tbaa !48
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #29
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.g, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 %i.h, ptr %i.ba, align 8, !tbaa !49
  %not.add.narrowed.overflow = xor i1 %add.narrowed.overflow, true
  %or.cond.i = and i1 %i.i, %not.add.narrowed.overflow
  br i1 %or.cond.i, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit
  %i.bb = load i8, ptr %i.x, align 1, !tbaa !38, !range !42, !noundef !43
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load ptr, ptr %i.aa, align 8
  %i.be = select i1 %i.bc, ptr %0, ptr %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !55
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ba, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.k:                                             ; preds = %bb.a
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %storemerge.i, i64 288230376151711744) ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 9 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !38, !range !42, !noundef !43
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %i.bk = load i64, ptr %0, align 16
  %spec.select.i8.i72 = select i1 %i.bj, i64 8, i64 %i.bk ; 2 uses
  %i.bl = icmp ugt i64 %spec.select.i, %spec.select.i8.i72
  br i1 %i.bl, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i73, label %bb.p

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i73: ; preds = %bb.k
  %i.bm = shl nuw nsw i64 %spec.select.i8.i72, 2
  %.sroa.speculated16.i74 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %spec.select.i)
  %.sroa.speculated.i75 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i74, i64 288230376151711744) ; 2 uses
  %i.bn = shl nuw nsw i64 %.sroa.speculated.i75, 3
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #30 ; 3 uses
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !38, !range !42, !noundef !43
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = select i1 %i.bq, ptr %0, ptr %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 16, !tbaa !48
  %i.bw = shl i64 %i.bv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br i1 %i.bq, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i73
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !50, !range !42, !noundef !43
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = load i64, ptr %0, align 16
  %i.cb = shl i64 %i.ca, 3
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.cb) #31
  %.pre.pre = load i8, ptr %i.bh, align 1, !tbaa !38, !range !42
  %i.cc = trunc nuw i8 %.pre.pre to i1
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i73
  store i8 0, ptr %i.bh, align 1, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre = phi i1 [ false, %bb.n ], [ %i.cc, %bb.m ]
  store i64 %spec.select.i, ptr %i.bu, align 16, !tbaa !48
  store i64 %.sroa.speculated.i75, ptr %0, align 16, !tbaa !47
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76

bb.p:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %spec.select.i, ptr %i.cd, align 16, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre138 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76: ; preds = %bb.o, %bb.p
  %.pre-phi = phi i1 [ %.pre, %bb.o ], [ %i.bj, %bb.p ]
  %i.ce = phi ptr [ %i.bo, %bb.o ], [ %.pre138, %bb.p ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !38, !range !42, !noundef !43
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = select i1 %i.ch, ptr %1, ptr %i.cj      ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !38, !range !42, !noundef !43
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = select i1 %i.cn, ptr %2, ptr %i.cp      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cs = select i1 %.pre-phi, ptr %0, ptr %i.ce  ; 9 uses
  %spec.select = select i1 %i.e, ptr %i.cq, ptr %i.ck ; 12 uses
  %spec.select112 = select i1 %i.e, ptr %i.ck, ptr %i.cq ; 9 uses
  %.not116 = icmp ult i64 %..i, 4
  br i1 %.not116, label %.preheader115, label %.lr.ph

.preheader115:                                    ; preds = %.lr.ph, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76
  %.060.lcssa = phi i64 [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ], [ %i.cu, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi i8 [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ], [ %i.ed, %.lr.ph ] ; 3 uses
  %i.ct = icmp ult i64 %.060.lcssa, %..i
  br i1 %i.ct, label %.lr.ph122.preheader, label %.preheader

.lr.ph122.preheader:                              ; preds = %.preheader115
  %xtraiter = and i64 %..i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph122.prol.loopexit, label %.lr.ph122.prol

.lr.ph122.prol:                                   ; preds = %.lr.ph122.preheader, %.lr.ph122.prol
  %.1121.prol = phi i8 [ %10, %.lr.ph122.prol ], [ %.0.lcssa, %.lr.ph122.preheader ]
  %.161120.prol = phi i64 [ %11, %.lr.ph122.prol ], [ %.060.lcssa, %.lr.ph122.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph122.prol ], [ 0, %.lr.ph122.preheader ]
  %3 = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.161120.prol
  %4 = load i64, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %.161120.prol
  %6 = load i64, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.161120.prol
  %8 = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %.1121.prol, i64 %4, i64 %6) ; 2 uses
  %9 = extractvalue { i8, i64 } %8, 1
  store i64 %9, ptr %7, align 8
  %10 = extractvalue { i8, i64 } %8, 0            ; 3 uses
  %11 = add nuw i64 %.161120.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph122.prol.loopexit, label %.lr.ph122.prol, !llvm.loop !102

.lr.ph122.prol.loopexit:                          ; preds = %.lr.ph122.prol, %.lr.ph122.preheader
  %.lcssa156.unr = phi i8 [ poison, %.lr.ph122.preheader ], [ %10, %.lr.ph122.prol ]
  %.1121.unr = phi i8 [ %.0.lcssa, %.lr.ph122.preheader ], [ %10, %.lr.ph122.prol ]
  %.161120.unr = phi i64 [ %.060.lcssa, %.lr.ph122.preheader ], [ %11, %.lr.ph122.prol ]
  %12 = sub i64 %.060.lcssa, %..i
  %13 = icmp ugt i64 %12, -4
  br i1 %13, label %.preheader, label %.lr.ph122.a

.lr.ph:                                           ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76, %.lr.ph
  %i.cu = phi i64 [ %i.ee, %.lr.ph ], [ 4, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ] ; 3 uses
  %.0118 = phi i8 [ %i.ed, %.lr.ph ], [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ]
  %.060117 = phi i64 [ %i.cu, %.lr.ph ], [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.060117
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %.060117
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !55
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.060117 ; 4 uses
  %i.da = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %.0118, i64 %i.cw, i64 %i.cy) ; 2 uses
  %i.db = extractvalue { i8, i64 } %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8
  %i.dc = extractvalue { i8, i64 } %i.da, 0
  %i.dd = or disjoint i64 %.060117, 1             ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !55
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %i.dd
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !55
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dj = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %i.dc, i64 %i.df, i64 %i.dh) ; 2 uses
  %i.dk = extractvalue { i8, i64 } %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8
  %i.dl = extractvalue { i8, i64 } %i.dj, 0
  %i.dm = or disjoint i64 %.060117, 2             ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !55
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %i.dm
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !55
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ds = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %i.dl, i64 %i.do, i64 %i.dq) ; 2 uses
  %i.dt = extractvalue { i8, i64 } %i.ds, 1
  store i64 %i.dt, ptr %i.dr, align 8
  %i.du = extractvalue { i8, i64 } %i.ds, 0
  %i.dv = or disjoint i64 %.060117, 3             ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !55
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %i.dv
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !55
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.eb = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %i.du, i64 %i.dx, i64 %i.dz) ; 2 uses
  %i.ec = extractvalue { i8, i64 } %i.eb, 1
  store i64 %i.ec, ptr %i.ea, align 8
  %i.ed = extractvalue { i8, i64 } %i.eb, 0       ; 2 uses
  %i.ee = add i64 %i.cu, 4                        ; 2 uses
  %.not = icmp ugt i64 %i.ee, %..i
  br i1 %.not, label %.preheader115, label %.lr.ph, !llvm.loop !103

.preheader:                                       ; preds = %.lr.ph122.prol.loopexit, %.lr.ph122.a, %.preheader115
  %.161.lcssa = phi i64 [ %.060.lcssa, %.preheader115 ], [ %..i, %.lr.ph122.a ], [ %..i, %.lr.ph122.prol.loopexit ] ; 3 uses
  %.1.lcssa = phi i8 [ %.0.lcssa, %.preheader115 ], [ %.lcssa156.unr, %.lr.ph122.prol.loopexit ], [ %i.ep, %.lr.ph122.a ]
  %i.ef = icmp ult i64 %.161.lcssa, %storemerge.i
  %i.eg = icmp ne i8 %.1.lcssa, 0                 ; 2 uses
  %i.eh = and i1 %i.ef, %i.eg
  br i1 %i.eh, label %.lr.ph126, label %._crit_edge

.lr.ph122.a:                                      ; preds = %.lr.ph122.prol.loopexit, %.lr.ph122.a
  %.1121 = phi i8 [ %i.ep, %.lr.ph122.a ], [ %.1121.unr, %.lr.ph122.prol.loopexit ]
  %.161120 = phi i64 [ %41, %.lr.ph122.a ], [ %.161120.unr, %.lr.ph122.prol.loopexit ] ; 7 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.161120
  %15 = load i64, ptr %14, align 8, !tbaa !55
  %16 = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %.161120
  %17 = load i64, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.161120
  %19 = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %.1121, i64 %15, i64 %17) ; 2 uses
  %20 = extractvalue { i8, i64 } %19, 1
  store i64 %20, ptr %18, align 8
  %21 = extractvalue { i8, i64 } %19, 0
  %22 = add nuw i64 %.161120, 1                   ; 3 uses
  %23 = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %22
  %26 = load i64, ptr %25, align 8, !tbaa !55
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %22
  %28 = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %21, i64 %24, i64 %26) ; 2 uses
  %29 = extractvalue { i8, i64 } %28, 1
  store i64 %29, ptr %27, align 8
  %30 = extractvalue { i8, i64 } %28, 0
  %31 = add nuw i64 %.161120, 2                   ; 3 uses
  %32 = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %31
  %35 = load i64, ptr %34, align 8, !tbaa !55
  %36 = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %31
  %37 = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %30, i64 %33, i64 %35) ; 2 uses
  %38 = extractvalue { i8, i64 } %37, 1
  store i64 %38, ptr %36, align 8
  %39 = extractvalue { i8, i64 } %37, 0
  %40 = add nuw i64 %.161120, 3                   ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %40
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !55
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %40
  %i.en = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %39, i64 %i.ej, i64 %i.el) ; 2 uses
  %i.eo = extractvalue { i8, i64 } %i.en, 1
  store i64 %i.eo, ptr %i.em, align 8
  %i.ep = extractvalue { i8, i64 } %i.en, 0       ; 2 uses
  %41 = add nuw i64 %.161120, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %41, %..i
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph122.a, !llvm.loop !104

.lr.ph126:                                        ; preds = %.preheader, %.lr.ph126
  %.262125 = phi i64 [ %i.ew, %.lr.ph126 ], [ %.161.lcssa, %.preheader ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.262125
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !55
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.262125
  %i.et = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.er, i64 1) ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 0
  %i.ev = extractvalue { i64, i1 } %i.et, 1       ; 2 uses
  store i64 %i.eu, ptr %i.es, align 8
  %i.ew = add nuw i64 %.262125, 1                 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %storemerge.i
  %i.ey = and i1 %i.ex, %i.ev
  br i1 %i.ey, label %.lr.ph126, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph126, %.preheader
  %.262.lcssa = phi i64 [ %.161.lcssa, %.preheader ], [ %i.ew, %.lr.ph126 ] ; 4 uses
  %.lcssa = phi i1 [ %i.eg, %.preheader ], [ %i.ev, %.lr.ph126 ]
  %i.ez = icmp eq i64 %.262.lcssa, %storemerge.i  ; 2 uses
  %or.cond = and i1 %i.ez, %.lcssa
  br i1 %or.cond, label %bb.q, label %bb.x

bb.q:                                             ; preds = %._crit_edge
  %i.fa = add i64 %storemerge.i, 1
  %spec.select.i77 = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 288230376151711744) ; 5 uses
  %i.fb = load i8, ptr %i.bh, align 1, !tbaa !38, !range !42, !noundef !43
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i64, ptr %0, align 16
  %spec.select.i8.i78 = select i1 %i.fc, i64 8, i64 %i.fd ; 2 uses
  %i.fe = icmp ugt i64 %spec.select.i77, %spec.select.i8.i78
  br i1 %i.fe, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i79, label %bb.v

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i79: ; preds = %bb.q
  %i.ff = shl nuw nsw i64 %spec.select.i8.i78, 2
  %.sroa.speculated16.i80 = tail call i64 @llvm.umax.i64(i64 %i.ff, i64 %spec.select.i77)
  %.sroa.speculated.i81 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i80, i64 288230376151711744) ; 2 uses
  %i.fg = shl nuw nsw i64 %.sroa.speculated.i81, 3
  %i.fh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #30 ; 2 uses
  %i.fi = load i8, ptr %i.bh, align 1, !tbaa !38, !range !42, !noundef !43
  %i.fj = trunc nuw i8 %i.fi to i1                ; 2 uses
  %i.fk = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.fl = select i1 %i.fj, ptr %0, ptr %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 16, !tbaa !48
  %i.fo = shl i64 %i.fn, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fh, ptr align 8 %i.fl, i64 %i.fo, i1 false)
  br i1 %i.fj, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i79
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !50, !range !42, !noundef !43
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fs = load i64, ptr %0, align 16
  %i.ft = shl i64 %i.fs, 3
  tail call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.ft) #31
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i79
  store i8 0, ptr %i.bh, align 1, !tbaa !38
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i64 %spec.select.i77, ptr %i.fm, align 16, !tbaa !48
  store i64 %.sroa.speculated.i81, ptr %0, align 16, !tbaa !47
  store ptr %i.fh, ptr %i.cr, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82

bb.v:                                             ; preds = %bb.q
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %spec.select.i77, ptr %i.fu, align 16, !tbaa !48
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82: ; preds = %bb.u, %bb.v
  %i.fv = icmp ugt i64 %spec.select.i77, %storemerge.i
  br i1 %i.fv, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82
  %i.fw = load i8, ptr %i.bh, align 1, !tbaa !38, !range !42, !noundef !43
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = load ptr, ptr %i.cr, align 8
  %i.fz = select i1 %i.fx, ptr %0, ptr %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %storemerge.i
  store i64 1, ptr %i.ga, align 8, !tbaa !55
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge
  %.not70 = icmp eq ptr %spec.select, %i.cs
  %or.cond113 = select i1 %i.ez, i1 true, i1 %.not70
  br i1 %or.cond113, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.idx114 = shl nuw nsw i64 %.262.lcssa, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx114
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.262.lcssa
  %i.gd = sub nsw i64 %storemerge.i, %.262.lcssa
  %gepdiff = shl nsw i64 %i.gd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gc, ptr align 8 %i.gb, i64 %gepdiff, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82, %bb.w
  %i.ge = load i8, ptr %i.bh, align 1, !tbaa !38, !range !42, !noundef !43
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = load ptr, ptr %i.cr, align 8
  %i.gh = select i1 %i.gf, ptr %0, ptr %i.gg      ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.gi, align 16, !tbaa !48
  %i.gj = add i64 %.promoted, -1                  ; 2 uses
  %.not.i71129 = icmp eq i64 %i.gj, 0
  br i1 %.not.i71129, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.z, %bb.aa
  %i.gk = phi i64 [ %i.gq, %bb.aa ], [ %i.gj, %bb.z ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !55
  %.not2.i = icmp eq i64 %i.gm, 0
  br i1 %.not2.i, label %bb.aa, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread: ; preds = %.lr.ph131
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !49, !range !42, !noundef !43
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.go, ptr %i.gp, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.aa:                                            ; preds = %.lr.ph131
  store i64 %i.gk, ptr %i.gi, align 16, !tbaa !48
  %i.gq = add i64 %i.gk, -1                       ; 2 uses
  %.not.i71 = icmp eq i64 %i.gq, 0
  br i1 %.not.i71, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph131, !llvm.loop !87

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %bb.aa, %bb.z
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !49, !range !42, !noundef !43 ; 2 uses
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 %i.gs, ptr %i.gu, align 8, !tbaa !49
  br i1 %i.gt, label %bb.ab, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ab:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.gv = load i64, ptr %i.gh, align 8, !tbaa !55
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %bb.ac, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.gu, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.ac, %bb.ab, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread, %bb.j, %bb.i, %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(75) %1, ptr noundef nonnull align 16 dereferenceable(75) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 16, !tbaa !48  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load i64, ptr %i.c, align 16, !tbaa !48  ; 4 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 8 uses
  %storemerge.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.d) ; 6 uses
  %i.e = icmp eq i64 %storemerge.i, 1
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !49, !range !42, !noundef !43
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.j = load i8, ptr %i.i, align 1, !tbaa !38, !range !42, !noundef !43
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %i.k, ptr %1, ptr %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !55   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38, !range !42, !noundef !43
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %i.r, ptr %2, ptr %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !55   ; 3 uses
  %i.w = icmp ugt i64 %i.v, %i.o
  %.0123 = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.o)
  %.0122 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.o)
  %.067.in = xor i1 %i.w, %i.h                    ; 2 uses
  %i.x = sub i64 %.0123, %.0122
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !38, !range !42, !noundef !43
  %i.aa = trunc nuw i8 %i.z to i1                 ; 2 uses
  %i.ab = load i64, ptr %0, align 16
  %i.ac = icmp ne i64 %i.ab, 0
  %.not129 = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %.not129, label %bb.g, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.ad = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !38, !range !42, !noundef !43
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.af, ptr %0, ptr %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !48
  %i.al = shl i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ai, i64 %i.al, i1 false)
  br i1 %i.af, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.an = load i8, ptr %i.am, align 2, !tbaa !50, !range !42, !noundef !43
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %0, align 16
  %i.aq = shl i64 %i.ap, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aq) #31
  %.pre161.pre = load i8, ptr %i.y, align 1, !tbaa !38, !range !42
  %i.ar = trunc nuw i8 %.pre161.pre to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre161 = phi i1 [ false, %bb.e ], [ %i.ar, %bb.d ]
  store i64 1, ptr %i.aj, align 16, !tbaa !48
  store i64 1, ptr %0, align 16, !tbaa !47
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75

bb.g:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.as, align 16, !tbaa !48
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre163 = load ptr, ptr %.phi.trans.insert162, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75: ; preds = %bb.g, %bb.f
  %.pre-phi = phi i1 [ %i.aa, %bb.g ], [ %.pre161, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %.pre163, %bb.g ], [ %i.ad, %bb.f ]
  %i.aw = select i1 %.pre-phi, ptr %0, ptr %i.av
  store i64 %i.x, ptr %i.aw, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load i64, ptr %i.ay, align 16
  %i.ba = zext i1 %.067.in to i8
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !49
  %i.bb = icmp eq i64 %i.az, 1
  %or.cond.i78 = select i1 %.067.in, i1 %i.bb, i1 false
  br i1 %or.cond.i78, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = select i1 %.pre-phi, ptr %0, ptr %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !55
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ax, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.k:                                             ; preds = %bb.a
  %.not.i79 = icmp eq i64 %i.b, %i.d
  br i1 %.not.i79, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp ugt i64 %i.b, %i.d
  %i.bi = select i1 %i.bh, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm512ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.m:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !38, !range !42, !noundef !43
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = select i1 %i.bl, ptr %1, ptr %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !38, !range !42, !noundef !43
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = select i1 %i.br, ptr %2, ptr %i.bt
  %i.bv = icmp slt i64 %i.b, 1
  br i1 %i.bv, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm512ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph190

bb.n:                                             ; preds = %.lr.ph190
  %i.bw = icmp slt i64 %.015.in.i188, 2
  br i1 %i.bw, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm512ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph190, !llvm.loop !106

.lr.ph190:                                        ; preds = %bb.m, %bb.n
  %.015.in.i188 = phi i64 [ %.015.i, %bb.n ], [ %i.b, %bb.m ] ; 2 uses
  %.015.i = add nsw i64 %.015.in.i188, -1         ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.015.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !55 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.015.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !55 ; 2 uses
  %.not19.i = icmp eq i64 %i.by, %i.ca
  br i1 %.not19.i, label %bb.n, label %bb.o, !llvm.loop !106

bb.o:                                             ; preds = %.lr.ph190
  %i.cb = icmp ugt i64 %i.by, %i.ca
  %i.cc = select i1 %i.cb, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm512ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

_ZNK5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm512ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.o
  %.2.i = phi i32 [ %i.bi, %bb.l ], [ %i.cc, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %storemerge.i, i64 288230376151711744) ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 8 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !38, !range !42, !noundef !43 ; 2 uses
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load i64, ptr %0, align 16              ; 2 uses
  %spec.select.i8.i80 = select i1 %i.cf, i64 8, i64 %i.cg ; 2 uses
  %i.ch = icmp ugt i64 %spec.select.i, %spec.select.i8.i80
  br i1 %i.ch, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i81, label %bb.t

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i81: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm512ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %i.ci = shl nuw nsw i64 %spec.select.i8.i80, 2
  %.sroa.speculated16.i82 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %spec.select.i)
  %.sroa.speculated.i83 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i82, i64 288230376151711744) ; 2 uses
  %i.cj = shl nuw nsw i64 %.sroa.speculated.i83, 3
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #30 ; 3 uses
  %i.cl = load i8, ptr %i.cd, align 1, !tbaa !38, !range !42, !noundef !43
  %i.cm = trunc nuw i8 %i.cl to i1                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = select i1 %i.cm, ptr %0, ptr %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 16, !tbaa !48
  %i.cs = shl i64 %i.cr, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.cp, i64 %i.cs, i1 false)
  br i1 %i.cm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i81
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !50, !range !42, !noundef !43
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = load i64, ptr %0, align 16
  %i.cx = shl i64 %i.cw, 3
  tail call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cx) #31
  %.pre.pre = load i8, ptr %i.cd, align 1, !tbaa !38, !range !42
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i81
  store i8 0, ptr %i.cd, align 1, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre = phi i8 [ 0, %bb.r ], [ %.pre.pre, %bb.q ]
  store i64 %spec.select.i, ptr %i.cq, align 16, !tbaa !48
  store i64 %.sroa.speculated.i83, ptr %0, align 16, !tbaa !47
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84

bb.t:                                             ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm512ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %spec.select.i, ptr %i.cy, align 16, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre158 = load ptr, ptr %.phi.trans.insert, align 8
  %i.cz = icmp ne i64 %i.cg, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84: ; preds = %bb.s, %bb.t
  %i.da = phi i1 [ true, %bb.s ], [ %i.cz, %bb.t ]
  %.pre160 = phi ptr [ %i.ck, %bb.s ], [ %.pre158, %bb.t ]
  %i.db = phi i8 [ %.pre, %bb.s ], [ %i.ce, %bb.t ]
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !38, !range !42, !noundef !43
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = select i1 %i.de, ptr %1, ptr %i.dg      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !38, !range !42, !noundef !43
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = select i1 %i.dk, ptr %2, ptr %i.dm      ; 2 uses
  %i.do = trunc nuw i8 %i.db to i1                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dq = select i1 %i.do, ptr %0, ptr %.pre160   ; 10 uses
  %i.dr = icmp slt i32 %.2.i, 0                   ; 2 uses
  br i1 %i.dr, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84
  %i.ds = icmp eq i32 %.2.i, 0
  br i1 %i.ds, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %.not126 = select i1 %i.do, i1 true, i1 %i.da
  br i1 %.not126, label %bb.aa, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i86

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i86: ; preds = %bb.v
  %i.dt = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc89 unwind label %bb.ab  ; 4 uses

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i86
  %i.du = load i8, ptr %i.cd, align 1, !tbaa !38, !range !42, !noundef !43
  %i.dv = trunc nuw i8 %i.du to i1                ; 2 uses
  %i.dw = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dx = select i1 %i.dv, ptr %0, ptr %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 16, !tbaa !48
  %i.ea = shl i64 %i.dz, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr align 8 %i.dx, i64 %i.ea, i1 false)
  br i1 %i.dv, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.noexc89
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !50, !range !42, !noundef !43
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = load i64, ptr %0, align 16
  %i.ef = shl i64 %i.ee, 3
  tail call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ef) #31
  %.pre159.pre = load i8, ptr %i.cd, align 1, !tbaa !38, !range !42
  %i.eg = trunc nuw i8 %.pre159.pre to i1
  %i.eh = select i1 %i.eg, ptr %0, ptr %i.dt
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %.noexc89
  store i8 0, ptr %i.cd, align 1, !tbaa !38
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre159 = phi ptr [ %i.dt, %bb.y ], [ %i.eh, %bb.x ]
  store i64 1, ptr %i.dy, align 16, !tbaa !48
  store i64 1, ptr %0, align 16, !tbaa !47
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.aa:                                            ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.ei, align 16, !tbaa !48
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i86
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  tail call void @__clang_call_terminate(ptr %i.ek) #29
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.aa, %bb.z
  %.pre-phi171 = phi ptr [ %i.dq, %bb.aa ], [ %.pre159, %bb.z ]
  store i64 0, ptr %.pre-phi171, align 8, !tbaa !55
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.el, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ac:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84, %bb.u
  %.0121 = phi ptr [ %i.dh, %bb.u ], [ %i.dn, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84 ] ; 12 uses
  %.0120 = phi ptr [ %i.dn, %bb.u ], [ %i.dh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84 ] ; 9 uses
  %.not134 = icmp ult i64 %..i, 4
  br i1 %.not134, label %.preheader130, label %.lr.ph

.preheader130:                                    ; preds = %.lr.ph, %bb.ac
  %.063.lcssa = phi i64 [ 0, %bb.ac ], [ %i.en, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi i8 [ 0, %bb.ac ], [ %i.fw, %.lr.ph ] ; 3 uses
  %i.em = icmp ult i64 %.063.lcssa, %..i
  br i1 %i.em, label %.lr.ph140.preheader, label %.preheader

.lr.ph140.preheader:                              ; preds = %.preheader130
  %xtraiter = and i64 %..i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph140.prol.loopexit, label %.lr.ph140.prol

.lr.ph140.prol:                                   ; preds = %.lr.ph140.preheader, %.lr.ph140.prol
  %.1139.prol = phi i8 [ %10, %.lr.ph140.prol ], [ %.0.lcssa, %.lr.ph140.preheader ]
  %.164138.prol = phi i64 [ %11, %.lr.ph140.prol ], [ %.063.lcssa, %.lr.ph140.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph140.prol ], [ 0, %.lr.ph140.preheader ]
  %3 = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %.164138.prol
  %4 = load i64, ptr %3, align 8, !tbaa !55
  %5 = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %.164138.prol
  %6 = load i64, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.164138.prol
  %8 = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %.1139.prol, i64 %4, i64 %6) ; 2 uses
  %9 = extractvalue { i8, i64 } %8, 1
  store i64 %9, ptr %7, align 8
  %10 = extractvalue { i8, i64 } %8, 0            ; 3 uses
  %11 = add nuw i64 %.164138.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph140.prol.loopexit, label %.lr.ph140.prol, !llvm.loop !107

.lr.ph140.prol.loopexit:                          ; preds = %.lr.ph140.prol, %.lr.ph140.preheader
  %.lcssa191.unr = phi i8 [ poison, %.lr.ph140.preheader ], [ %10, %.lr.ph140.prol ]
  %.1139.unr = phi i8 [ %.0.lcssa, %.lr.ph140.preheader ], [ %10, %.lr.ph140.prol ]
  %.164138.unr = phi i64 [ %.063.lcssa, %.lr.ph140.preheader ], [ %11, %.lr.ph140.prol ]
  %12 = sub i64 %.063.lcssa, %..i
  %13 = icmp ugt i64 %12, -4
  br i1 %13, label %.preheader, label %.lr.ph140.a

.lr.ph:                                           ; preds = %bb.ac, %.lr.ph
  %i.en = phi i64 [ %i.fx, %.lr.ph ], [ 4, %bb.ac ] ; 3 uses
  %.0136 = phi i8 [ %i.fw, %.lr.ph ], [ 0, %bb.ac ]
  %.063135 = phi i64 [ %i.en, %.lr.ph ], [ 0, %bb.ac ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %.063135
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !55
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %.063135
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !55
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.063135 ; 4 uses
  %i.et = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %.0136, i64 %i.ep, i64 %i.er) ; 2 uses
  %i.eu = extractvalue { i8, i64 } %i.et, 1
  store i64 %i.eu, ptr %i.es, align 8
  %i.ev = extractvalue { i8, i64 } %i.et, 0
  %i.ew = or disjoint i64 %.063135, 1             ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !55
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %i.ew
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fc = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %i.ev, i64 %i.ey, i64 %i.fa) ; 2 uses
  %i.fd = extractvalue { i8, i64 } %i.fc, 1
  store i64 %i.fd, ptr %i.fb, align 8
  %i.fe = extractvalue { i8, i64 } %i.fc, 0
  %i.ff = or disjoint i64 %.063135, 2             ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !55
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %i.ff
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !55
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fl = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %i.fe, i64 %i.fh, i64 %i.fj) ; 2 uses
  %i.fm = extractvalue { i8, i64 } %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8
  %i.fn = extractvalue { i8, i64 } %i.fl, 0
  %i.fo = or disjoint i64 %.063135, 3             ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !55
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %i.fo
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !55
  %i.ft = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.fu = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %i.fn, i64 %i.fq, i64 %i.fs) ; 2 uses
  %i.fv = extractvalue { i8, i64 } %i.fu, 1
  store i64 %i.fv, ptr %i.ft, align 8
  %i.fw = extractvalue { i8, i64 } %i.fu, 0       ; 2 uses
  %i.fx = add i64 %i.en, 4                        ; 2 uses
  %.not = icmp ugt i64 %i.fx, %..i
  br i1 %.not, label %.preheader130, label %.lr.ph, !llvm.loop !108

.preheader:                                       ; preds = %.lr.ph140.prol.loopexit, %.lr.ph140.a, %.preheader130
  %.164.lcssa = phi i64 [ %.063.lcssa, %.preheader130 ], [ %..i, %.lr.ph140.a ], [ %..i, %.lr.ph140.prol.loopexit ] ; 3 uses
  %.1.lcssa = phi i8 [ %.0.lcssa, %.preheader130 ], [ %.lcssa191.unr, %.lr.ph140.prol.loopexit ], [ %i.gi, %.lr.ph140.a ] ; 2 uses
  %i.fy = icmp ne i8 %.1.lcssa, 0
  %i.fz = icmp ult i64 %.164.lcssa, %storemerge.i
  %i.ga = and i1 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph145, label %._crit_edge

.lr.ph140.a:                                      ; preds = %.lr.ph140.prol.loopexit, %.lr.ph140.a
  %.1139 = phi i8 [ %i.gi, %.lr.ph140.a ], [ %.1139.unr, %.lr.ph140.prol.loopexit ]
  %.164138 = phi i64 [ %41, %.lr.ph140.a ], [ %.164138.unr, %.lr.ph140.prol.loopexit ] ; 7 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %.164138
  %15 = load i64, ptr %14, align 8, !tbaa !55
  %16 = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %.164138
  %17 = load i64, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.164138
  %19 = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %.1139, i64 %15, i64 %17) ; 2 uses
  %20 = extractvalue { i8, i64 } %19, 1
  store i64 %20, ptr %18, align 8
  %21 = extractvalue { i8, i64 } %19, 0
  %22 = add nuw i64 %.164138, 1                   ; 3 uses
  %23 = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %22
  %26 = load i64, ptr %25, align 8, !tbaa !55
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %22
  %28 = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %21, i64 %24, i64 %26) ; 2 uses
  %29 = extractvalue { i8, i64 } %28, 1
  store i64 %29, ptr %27, align 8
  %30 = extractvalue { i8, i64 } %28, 0
  %31 = add nuw i64 %.164138, 2                   ; 3 uses
  %32 = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %31
  %35 = load i64, ptr %34, align 8, !tbaa !55
  %36 = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %31
  %37 = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %30, i64 %33, i64 %35) ; 2 uses
  %38 = extractvalue { i8, i64 } %37, 1
  store i64 %38, ptr %36, align 8
  %39 = extractvalue { i8, i64 } %37, 0
  %40 = add nuw i64 %.164138, 3                   ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %40
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !55
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %40
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !55
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %40
  %i.gg = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %39, i64 %i.gc, i64 %i.ge) ; 2 uses
  %i.gh = extractvalue { i8, i64 } %i.gg, 1
  store i64 %i.gh, ptr %i.gf, align 8
  %i.gi = extractvalue { i8, i64 } %i.gg, 0       ; 2 uses
  %41 = add nuw i64 %.164138, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %41, %..i
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph140.a, !llvm.loop !109

.lr.ph145:                                        ; preds = %.preheader, %.lr.ph145
  %.2144 = phi i8 [ %i.go, %.lr.ph145 ], [ %.1.lcssa, %.preheader ]
  %.265143 = phi i64 [ %i.gp, %.lr.ph145 ], [ %.164.lcssa, %.preheader ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %.265143
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !55
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.265143
  %i.gm = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %.2144, i64 %i.gk, i64 0) ; 2 uses
  %i.gn = extractvalue { i8, i64 } %i.gm, 1
  store i64 %i.gn, ptr %i.gl, align 8
  %i.go = extractvalue { i8, i64 } %i.gm, 0       ; 2 uses
  %i.gp = add nuw i64 %.265143, 1                 ; 3 uses
  %i.gq = icmp ne i8 %i.go, 0
  %i.gr = icmp ult i64 %i.gp, %storemerge.i
  %i.gs = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %i.gs, label %.lr.ph145, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph145, %.preheader
  %.265.lcssa = phi i64 [ %.164.lcssa, %.preheader ], [ %i.gp, %.lr.ph145 ] ; 4 uses
  %.not73 = icmp eq i64 %storemerge.i, %.265.lcssa
  %.not74 = icmp eq ptr %.0121, %i.dq
  %or.cond = select i1 %.not73, i1 true, i1 %.not74
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %.idx127 = shl nuw nsw i64 %.265.lcssa, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %.0121, i64 %.idx127
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.265.lcssa
  %i.gv = sub nsw i64 %storemerge.i, %.265.lcssa
  %gepdiff = shl nsw i64 %i.gv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gu, ptr align 8 %i.gt, i64 %gepdiff, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  %i.gw = load i8, ptr %i.cd, align 1, !tbaa !38, !range !42, !noundef !43
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = load ptr, ptr %i.dp, align 8
  %i.gz = select i1 %i.gx, ptr %0, ptr %i.gy      ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted = load i64, ptr %i.ha, align 16, !tbaa !48
  %i.hb = add i64 %.promoted, -1                  ; 2 uses
  %.not.i147.not = icmp eq i64 %i.hb, 0
  br i1 %.not.i147.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.ae, %bb.af
  %i.hc = phi i64 [ %i.hi, %bb.af ], [ %i.hb, %bb.ae ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !55
  %.not2.i = icmp eq i64 %i.he, 0
  br i1 %.not2.i, label %bb.af, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread: ; preds = %.lr.ph150
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !49, !range !42, !noundef !43 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 %i.hg, ptr %i.hh, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93

bb.af:                                            ; preds = %.lr.ph150
  store i64 %i.hc, ptr %i.ha, align 16, !tbaa !48
  %i.hi = add i64 %i.hc, -1                       ; 2 uses
  %.not.i.not = icmp eq i64 %i.hi, 0
  br i1 %.not.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph150, !llvm.loop !87

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %bb.af, %bb.ae
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !49, !range !42, !noundef !43 ; 2 uses
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  store i8 %i.hk, ptr %i.hm, align 8, !tbaa !49
  br i1 %i.hl, label %bb.ag, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93

bb.ag:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.hn = load i64, ptr %i.gz, align 8, !tbaa !55
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.ah, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.hm, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.ag, %bb.ah
  %i.hp = phi i8 [ %i.hg, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread ], [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit ], [ 1, %bb.ag ], [ 0, %bb.ah ] ; 2 uses
  %.not.i132 = phi i1 [ true, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread ], [ false, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit ], [ false, %bb.ag ], [ false, %bb.ah ]
  %i.hq = phi ptr [ %i.hh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread ], [ %i.hm, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit ], [ %i.hm, %bb.ag ], [ %i.hm, %bb.ah ] ; 2 uses
  br i1 %i.dr, label %bb.ai, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ai:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93
  %i.hr = trunc nuw i8 %i.hp to i1
  %i.hs = xor i8 %i.hp, 1
  store i8 %i.hs, ptr %i.hq, align 8, !tbaa !49
  %or.cond.i.not = or i1 %.not.i132, %i.hr
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ht = load i64, ptr %i.gz, align 8, !tbaa !55
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.ak, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.hq, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93, %bb.ai, %bb.aj, %bb.ak, %bb.j, %bb.i, %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusENSC_INSB_10shift_leftES9_ivvEES9_vvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::detail::minus", align 1 ; 3 uses
  %4 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %5 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %6 = alloca %"union.boost::multiprecision::backends::cpp_int_base<512, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::data_type", align 16 ; 4 uses
  %7 = alloca %"class.boost::multiprecision::number.96", align 16 ; 14 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.109", align 8 ; 5 uses
  %9 = alloca %"struct.boost::multiprecision::detail::shift_left", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !111, !noalias !112, !nonnull !43, !align !115 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = icmp eq ptr %i.a, %0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !116, !noalias !43, !nonnull !43, !align !115
  %i.f = icmp eq ptr %i.e, %0                     ; 2 uses
  br i1 %i.c, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, label %.critedge

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit: ; preds = %bb.a
  br i1 %i.f, label %bb.b, label %.critedge3

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
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_5minusENSC_INSB_10shift_leftES9_ivvEES9_vvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusENSB_10expressionINSB_10shift_leftES9_ivvEES9_vvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit unwind label %bb.c, !inline_history !118

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load i8, ptr %i.i, align 1, !tbaa !38, !range !42, !noundef !43
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = load i8, ptr %i.j, align 2, !range !42
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %7, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #31, !inline_history !74
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.k ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusENSB_10expressionINSB_10shift_leftES9_ivvEES9_vvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(75) %7, i64 64, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %7, ptr noundef nonnull align 16 dereferenceable(75) %0, i64 64, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !120, !range !42, !noundef !43
  %i.v = load i8, ptr %i.t, align 8, !tbaa !120, !range !42, !noundef !43
  store i8 %i.v, ptr %i.h, align 8, !tbaa !120
  store i8 %i.u, ptr %i.t, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.x = load i8, ptr %i.i, align 1, !tbaa !120, !range !42, !noundef !43
  %i.y = load i8, ptr %i.w, align 1, !tbaa !120, !range !42, !noundef !43 ; 2 uses
  store i8 %i.y, ptr %i.i, align 1, !tbaa !120
  store i8 %i.x, ptr %i.w, align 1, !tbaa !120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 16, !tbaa !81
  %i.ab = load i64, ptr %i.z, align 16, !tbaa !81
  store i64 %i.ab, ptr %i.g, align 16, !tbaa !81
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 2, !tbaa !120, !range !42, !noundef !43
  %i.ae = load i8, ptr %i.ac, align 2, !tbaa !120, !range !42, !noundef !43 ; 2 uses
  store i8 %i.ae, ptr %i.j, align 2, !tbaa !120
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !120
  %i.af = or i8 %i.ae, %i.y
  %or.cond.i.i23.not = icmp eq i8 %i.af, 0
  br i1 %or.cond.i.i23.not, label %bb.e, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusENSB_10expressionINSB_10shift_leftES9_ivvEES9_vvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i64, ptr %7, align 16
  %i.aj = shl i64 %i.ai, 3
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aj) #31
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusENSB_10expressionINSB_10shift_leftES9_ivvEES9_vvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit22

.critedge:                                        ; preds = %bb.a
  br i1 %i.f, label %bb.f, label %.critedge3

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  store ptr %i.a, ptr %8, align 8, !tbaa !66, !alias.scope !121
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i32, ptr %i.b, align 8, !tbaa !71, !noalias !121
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !71, !alias.scope !121
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !49, !range !42, !noundef !43 ; 2 uses
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = xor i8 %i.an, 1
  store i8 %i.ap, ptr %i.am, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load i64, ptr %i.aq, align 16
  %i.as = icmp ne i64 %i.ar, 1
  %or.cond.i21.not = select i1 %i.ao, i1 true, i1 %i.as
  br i1 %or.cond.i21.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.au = load i8, ptr %i.at, align 1, !tbaa !38, !range !42, !noundef !43
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = select i1 %i.av, ptr %0, ptr %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !55
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.h, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit22

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.am, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit22

.critedge3:                                       ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, %.critedge
  %i.bb = load i32, ptr %i.b, align 8, !tbaa !71, !noalias !124 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.i, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit

bb.i:                                             ; preds = %.critedge3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.31)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr @.str.32, ptr %5, align 8, !tbaa !127
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.33, ptr %i.bd, align 8, !tbaa !129
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1474, ptr %i.be, align 8, !tbaa !130
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %i.bf, align 4, !tbaa !131
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #28
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit: ; preds = %.critedge3
  %i.bh = zext nneg i32 %i.bb to i64
  tail call void @_ZN5boost14multiprecision11default_ops15eval_left_shiftINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_mEEvRT_RKT0_T1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.a, i64 noundef %i.bh)
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !116, !noalias !132, !nonnull !43, !align !115 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !49, !range !42, !noundef !43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !49, !range !42, !noundef !43
  %.not.i26 = icmp eq i8 %i.bk, %i.bm
  br i1 %.not.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit
  tail call void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.bi)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit22

bb.m:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit
  tail call void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.bi)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit22

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit22: ; preds = %bb.m, %bb.l, %bb.h, %bb.g, %bb.f, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::multiprecision::number.96", align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail10shift_leftES9_ivvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !tbaa !49, !range !42, !noundef !43
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49, !range !42, !noundef !43
  %.not.i = icmp eq i8 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %3)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit unwind label %bb.e

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit: ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 73
  %i.f = load i8, ptr %i.e, align 1, !tbaa !38, !range !42, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 74
  %i.i = load i8, ptr %i.h, align 2, !range !42
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load i64, ptr %3, align 16
  %i.n = shl i64 %i.m, 3
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.n) #31
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 73
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38, !range !42, !noundef !43
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 74
  %i.t = load i8, ptr %i.s, align 2, !range !42
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i.i4 = select i1 %i.r, i1 true, i1 %i.u
  br i1 %or.cond.i.i4, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i64, ptr %3, align 16
  %i.y = shl i64 %i.x, 3
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.y) #31
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit5

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit5: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail10shift_leftES9_ivvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::out_of_range", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  store i64 0, ptr %0, align 16, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.a, align 16, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.b, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  store i8 1, ptr %i.c, align 1, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  store i8 0, ptr %i.d, align 2, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22, !noalias !135 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10shift_leftES9_ivvEEvRKNSB_10expressionIT_T0_T1_T2_T3_EERKSt17integral_constantIbLb1EE.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.31)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr @.str.32, ptr %4, align 8, !tbaa !127
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.33, ptr %i.h, align 8, !tbaa !129
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 1474, ptr %i.i, align 8, !tbaa !130
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 87, ptr %i.j, align 4, !tbaa !131
  invoke void @_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZNSt12out_of_rangeD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10shift_leftES9_ivvEEvRKNSB_10expressionIT_T0_T1_T2_T3_EERKSt17integral_constantIbLb1EE.exit.i: ; preds = %bb.a
  %i.l = zext nneg i32 %i.f to i64
  %i.m = load ptr, ptr %1, align 8, !tbaa !111, !noalias !138, !nonnull !43, !align !115
  invoke void @_ZN5boost14multiprecision11default_ops15eval_left_shiftINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_mEEvRT_RKT0_T1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.m, i64 noundef %i.l)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSINS0_6detail10shift_leftES9_ivvEENSt9enable_ifIXsr3std14is_convertibleINSB_10expressionIT_T0_T1_T2_T3_E11result_typeES9_EE5valueERS9_E4typeERKSK_.exit unwind label %bb.e

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEaSINS0_6detail10shift_leftES9_ivvEENSt9enable_ifIXsr3std14is_convertibleINSB_10expressionIT_T0_T1_T2_T3_E11result_typeES9_EE5valueERS9_E4typeERKSK_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10shift_leftES9_ivvEEvRKNSB_10expressionIT_T0_T1_T2_T3_EERKSt17integral_constantIbLb1EE.exit.i
  ret void

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10shift_leftES9_ivvEEvRKNSB_10expressionIT_T0_T1_T2_T3_EERKSt17integral_constantIbLb1EE.exit.i, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.k, %bb.d ]
  %i.o = load i8, ptr %i.c, align 1, !tbaa !38, !range !42, !noundef !43
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i8, ptr %i.d, align 2, !range !42
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i64, ptr %0, align 16
  %i.v = shl i64 %i.u, 3
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #31
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision11default_ops15eval_left_shiftINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_mEEvRT_RKT0_T1_(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(75) %1, i64 noundef %2) local_unnamed_addr #13 comdat {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store i64 0, ptr %i.a, align 16, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 16, !tbaa !48
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 288230376151711744) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !38, !range !42, !noundef !43
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = load i64, ptr %0, align 16
  %spec.select.i8.i.i = select i1 %i.f, i64 8, i64 %i.g ; 2 uses
  %i.h = icmp ugt i64 %spec.select.i.i, %spec.select.i8.i.i
  br i1 %i.h, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i: ; preds = %bb.b
  %i.i = shl nuw nsw i64 %spec.select.i8.i.i, 2
  %.sroa.speculated16.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %spec.select.i.i)
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i, i64 288230376151711744) ; 2 uses
  %i.j = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 3 uses
  %i.l = load i8, ptr %i.d, align 1, !tbaa !38, !range !42, !noundef !43
  %i.m = trunc nuw i8 %i.l to i1                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = select i1 %i.m, ptr %0, ptr %i.o
  %i.q = load i64, ptr %i.a, align 16, !tbaa !48
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.p, i64 %i.r, i1 false)
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.t = load i8, ptr %i.s, align 2, !tbaa !50, !range !42, !noundef !43
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %0, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.w) #31
  %.pre.pre.i = load i8, ptr %i.d, align 1, !tbaa !38, !range !42
  %i.x = trunc nuw i8 %.pre.pre.i to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  store i8 0, ptr %i.d, align 1, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre.i = phi i1 [ false, %bb.e ], [ %i.x, %bb.d ]
  store i64 %spec.select.i.i, ptr %i.a, align 16, !tbaa !48
  store i64 %.sroa.speculated.i.i, ptr %0, align 16, !tbaa !47
  store ptr %i.k, ptr %i.n, align 8, !tbaa !47
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i

bb.g:                                             ; preds = %bb.b
  store i64 %spec.select.i.i, ptr %i.a, align 16, !tbaa !48
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i: ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.f ], [ %i.f, %bb.g ]
  %i.y = phi ptr [ %i.k, %bb.f ], [ %.pre8.i, %bb.g ]
  %i.z = select i1 %.pre-phi.i, ptr %0, ptr %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !38, !range !42, !noundef !43
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = select i1 %i.ac, ptr %1, ptr %i.ae
  %i.ag = load i64, ptr %i.b, align 16, !tbaa !48
  %i.ah = shl i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %i.af, i64 %i.ah, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !49, !range !42, !noundef !43
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !49
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit: ; preds = %bb.a, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i
  %i.al = zext i64 %2 to i128                     ; 3 uses
  %.not.i3 = icmp eq i64 %2, 0
  br i1 %.not.i3, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit
  %i.am = and i128 %i.al, 7
  %i.an = icmp eq i128 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(75) %0, i128 noundef %i.al)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(75) %0, i128 noundef %i.al)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !38, !range !42, !noundef !43
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = select i1 %i.aq, ptr %0, ptr %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.promoted.i = load i64, ptr %i.au, align 16, !tbaa !48
  %i.av = add i64 %.promoted.i, -1                ; 2 uses
  %.not.i7.i = icmp eq i64 %i.av, 0
  br i1 %.not.i7.i, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %bb.l
  %i.aw = phi i64 [ %i.az, %bb.l ], [ %i.av, %bb.k ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !55
  %.not2.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not2.i.i, label %bb.l, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit

bb.l:                                             ; preds = %.lr.ph.i
  store i64 %i.aw, ptr %i.au, align 16, !tbaa !48
  %i.az = add i64 %i.aw, -1                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit, label %.lr.ph.i, !llvm.loop !87

_ZN5boost14multiprecision8backends15eval_left_shiftILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit: ; preds = %.lr.ph.i, %bb.l, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(75) %0, i128 noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i128 %1, 6
  %i.b = trunc i128 %i.a to i64
  %i.c = trunc i128 %1 to i64
  %i.d = and i64 %i.c, 63                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !48  ; 6 uses
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
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
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
  %i.bo = sub i64 %i.x, %spec.select.i            ; 2 uses
  br i1 %.not95, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bp = add i64 %i.f, %i.b
  %i.bq = icmp ugt i64 %i.x, %i.bp
  %i.br = xor i64 %i.bo, -1                       ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %i.av, i64 %i.f ; 2 uses
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
  %i.ce = getelementptr i8, ptr %i.bs, i64 -16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !55
  %i.cg = sub nuw nsw i64 64, %i.d
  %i.ch = lshr i64 %i.cf, %i.cg
  %i.ci = or disjoint i64 %i.ch, %i.ca
  store i64 %i.ci, ptr %i.cc, align 8, !tbaa !55
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s, %bb.q
  %.187 = phi i64 [ %i.x, %bb.q ], [ %i.bz, %bb.s ], [ %i.x, %bb.u ], [ %i.x, %bb.t ] ; 12 uses
  %.0 = phi i64 [ %i.bo, %bb.q ], [ 0, %bb.s ], [ 1, %bb.u ], [ 1, %bb.t ] ; 11 uses
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
  %i.cp = tail call i64 @llvm.smin.i64(i64 %i.cn, i64 %i.co)
  %i.cq = add i64 %.0, %i.cp
  %i.cr = sub i64 %.187, %i.cq                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cs = xor i64 %.0, -1
  %i.ct = add i64 %.187, %i.cs
  %i.cu = add i64 %i.b, 1
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ct, i64 %i.cu)
  %i.cv = shl i64 %smin, 3                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.cv ; 2 uses
  %i.cw = shl i64 %.187, 3                        ; 2 uses
  %i.cx = sub i64 %.187, %.0
  %i.cy = shl i64 %i.cx, 3
  %scevgep135 = getelementptr i8, ptr %i.av, i64 %i.cy ; 2 uses
  %i.cz = shl i64 %i.b, 3                         ; 2 uses
  %i.da = sub i64 %i.cv, %i.cz
  %scevgep136 = getelementptr i8, ptr %i.av, i64 %i.da
  %i.db = add i64 %.0, %i.b
  %i.dc = shl i64 %i.db, 3                        ; 2 uses
  %i.dd = sub i64 %i.cw, %i.dc
  %scevgep137 = getelementptr i8, ptr %i.av, i64 %i.dd
  %i.de = add i64 %i.cv, -8
  %i.df = sub i64 %i.de, %i.cz
  %scevgep138 = getelementptr i8, ptr %i.av, i64 %i.df
  %i.dg = add i64 %i.cw, -8
  %i.dh = sub i64 %i.dg, %i.dc
  %scevgep139 = getelementptr i8, ptr %i.av, i64 %i.dh
  %bound0 = icmp ult ptr %scevgep, %scevgep137
  %bound1 = icmp ult ptr %scevgep136, %scevgep135
  %found.conflict = and i1 %bound0, %bound1
  %bound0140 = icmp ult ptr %scevgep, %scevgep139
  %bound1141 = icmp ult ptr %scevgep138, %scevgep135
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx = or i1 %found.conflict, %found.conflict142
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, -2                      ; 4 uses
  %i.di = add i64 %.0, %n.vec                     ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat144 = shufflevector <2 x i64> %broadcast.splatinsert143, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = add i64 %.0, %index                     ; 2 uses
  %i.dk = xor i64 %i.dj, -1
  %i.dl = add i64 %.187, %i.dk                    ; 2 uses
  %i.dm = sub i64 %i.dl, %i.b
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %wide.load = load <2 x i64>, ptr %i.do, align 8, !tbaa !55, !alias.scope !141
  %i.dp = shl <2 x i64> %wide.load, %broadcast.splat144 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dl
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8 ; 2 uses
  store <2 x i64> %i.dp, ptr %i.dr, align 8, !tbaa !55, !alias.scope !144, !noalias !146
  %i.ds = add i64 %i.dj, %i.b
  %i.dt = sub i64 %invariant.op, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8
  %wide.load145 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !55, !alias.scope !148
  %i.dw = lshr <2 x i64> %wide.load145, %broadcast.splat
  %i.dx = or disjoint <2 x i64> %i.dw, %i.dp
  store <2 x i64> %i.dx, ptr %i.dr, align 8, !tbaa !55, !alias.scope !144, !noalias !146
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %i.dz = add i64 %n.vec, -1
  %i.ea = sub i64 %i.cn, %i.dz
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.1108.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %.lr.ph ], [ %i.di, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1108 = phi i64 [ %i.eo, %scalar.ph ], [ %.1108.ph, %scalar.ph.preheader ] ; 3 uses
  %i.eb = xor i64 %.1108, -1
  %i.ec = add i64 %.187, %i.eb                    ; 2 uses
  %i.ed = sub i64 %i.ec, %i.b
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !55
  %i.eg = shl i64 %i.ef, %i.d                     ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ec ; 2 uses
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !55
  %i.ei = add i64 %.1108, %i.b
  %i.ej = sub i64 %invariant.op, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !55
  %i.em = lshr i64 %i.el, %i.cl
  %i.en = or disjoint i64 %i.em, %i.eg
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !55
  %i.eo = add i64 %.1108, 1                       ; 3 uses
  %i.ep = sub nsw i64 %.187, %i.eo                ; 2 uses
  %.not96 = icmp slt i64 %i.ep, %i.cj
  br i1 %.not96, label %._crit_edge, label %scalar.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.v
  %.1.lcssa = phi i64 [ %.0, %bb.v ], [ %i.di, %middle.block ], [ %i.eo, %scalar.ph ] ; 3 uses
  %.lcssa = phi i64 [ %i.ck, %bb.v ], [ %i.ea, %middle.block ], [ %i.ep, %scalar.ph ]
  %i.eq = add i64 %i.b, 1
  %.not97 = icmp ult i64 %.lcssa, %i.eq
  br i1 %.not97, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.er = xor i64 %.1.lcssa, -1
  %i.es = add i64 %.187, %i.er                    ; 2 uses
  %i.et = sub i64 %i.es, %i.b
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !55
  %i.ew = shl i64 %i.ev, %i.d
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.es
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !55
  %i.ey = add i64 %.1.lcssa, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  %.2 = phi i64 [ %i.ey, %bb.w ], [ %.1.lcssa, %._crit_edge ]
  %i.ez = sub i64 %.187, %.2
  %i.fa = shl i64 %i.ez, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.fa, i1 false)
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

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %7, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #31, !inline_history !79
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.i ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail5minusES9_NSB_10expressionINSB_10shift_leftES9_ivvEEvvEERKNSD_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeES9_EE5valueEvE4typeE.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(75) %7, i64 64, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %7, ptr noundef nonnull align 16 dereferenceable(75) %0, i64 64, i1 false), !tbaa.struct !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !119
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load i8, ptr %i.h, align 8, !tbaa !120, !range !42, !noundef !43
  %i.v = load i8, ptr %i.t, align 8, !tbaa !120, !range !42, !noundef !43
  store i8 %i.v, ptr %i.h, align 8, !tbaa !120
  store i8 %i.u, ptr %i.t, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.x = load i8, ptr %i.i, align 1, !tbaa !120, !range !42, !noundef !43
  %i.y = load i8, ptr %i.w, align 1, !tbaa !120, !range !42, !noundef !43 ; 2 uses
  store i8 %i.y, ptr %i.i, align 1, !tbaa !120
  store i8 %i.x, ptr %i.w, align 1, !tbaa !120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load i64, ptr %i.g, align 16, !tbaa !81
  %i.ab = load i64, ptr %i.z, align 16, !tbaa !81
  store i64 %i.ab, ptr %i.g, align 16, !tbaa !81
  store i64 %i.aa, ptr %i.z, align 16, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ad = load i8, ptr %i.j, align 2, !tbaa !120, !range !42, !noundef !43
  %i.ae = load i8, ptr %i.ac, align 2, !tbaa !120, !range !42, !noundef !43 ; 2 uses
  store i8 %i.ae, ptr %i.j, align 2, !tbaa !120
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !120
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  store ptr %i.d, ptr %8, align 8, !tbaa !66, !alias.scope !162
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.al = load i32, ptr %i.e, align 8, !tbaa !71, !noalias !162
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !71, !alias.scope !162
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_10shift_leftES9_ivvEESD_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

.critedge:                                        ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit, %.thread
  %i.am = load i32, ptr %i.e, align 8, !tbaa !71, !noalias !165 ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.31)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr @.str.32, ptr %5, align 8, !tbaa !127
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.33, ptr %i.ao, align 8, !tbaa !129
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1474, ptr %i.ap, align 8, !tbaa !130
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 87, ptr %i.aq, align 4, !tbaa !131
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
  %i.at = load ptr, ptr %1, align 8, !tbaa !153, !noalias !168, !nonnull !43, !align !115 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !49, !range !42, !noundef !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !49, !range !42, !noundef !43
  %.not.i28 = icmp eq i8 %i.av, %i.ax
  br i1 %.not.i28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit
  tail call void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.at)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_10shift_leftES9_ivvEEEEvRKT_RKSD_.exit
  tail call void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(75) %i.at)
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29: ; preds = %bb.j, %bb.k
  %i.ay = load i8, ptr %i.au, align 8, !tbaa !49, !range !42, !noundef !43 ; 2 uses
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = xor i8 %i.ay, 1
  store i8 %i.ba, ptr %i.au, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = load i64, ptr %i.bb, align 16
  %i.bd = icmp ne i64 %i.bc, 1
  %or.cond.i.not = select i1 %i.az, i1 true, i1 %i.bd
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSB_8terminalES9_vvvEEEEvRKT_RKSD_.exit29
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !38, !range !42, !noundef !43
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = select i1 %i.bg, ptr %0, ptr %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.m, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.au, align 8, !tbaa !49
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  store i64 0, ptr %.sroa.04.i, align 16, !tbaa !47, !alias.scope !171
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !48, !noalias !171 ; 2 uses
  %.sroa.04.i.64.i.64.i.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 64
  store i64 %i.b, ptr %.sroa.04.i.64.i.64.i.64..sroa_idx, align 16, !tbaa !48, !alias.scope !171
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !49, !range !42, !noalias !171, !noundef !43
  %.sroa.04.i.72.i.72.i.72..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 72
  store i8 %i.d, ptr %.sroa.04.i.72.i.72.i.72..sroa_idx, align 8, !tbaa !49, !alias.scope !171
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !38, !range !42, !noalias !171, !noundef !43 ; 2 uses
  %.sroa.04.i.73.i.73.i.73..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 73
  store i8 %i.f, ptr %.sroa.04.i.73.i.73.i.73..sroa_idx, align 1, !tbaa !38, !alias.scope !171
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.h = load i8, ptr %i.g, align 2, !tbaa !50, !range !42, !noalias !171, !noundef !43
  %.sroa.04.i.74.i.74.i.74..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 74
  store i8 %i.h, ptr %.sroa.04.i.74.i.74.i.74..sroa_idx, align 2, !tbaa !50, !alias.scope !171
  %i.i = trunc nuw i8 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = shl i64 %i.b, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %.sroa.04.i, ptr nonnull align 16 dereferenceable(84) %1, i64 %i.j, i1 false)
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i, ptr noundef nonnull align 16 dereferenceable(84) %1, i64 16, i1 false), !tbaa.struct !80
  store i64 0, ptr %i.a, align 16, !tbaa !48, !noalias !171
  store i8 1, ptr %i.e, align 1, !tbaa !38, !noalias !171
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i

_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i:             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load i32, ptr %i.k, align 16, !tbaa !51, !noalias !171 ; 3 uses
  %.sroa.04.i.80.i.80.i.80..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 80
  store i32 %i.l, ptr %.sroa.04.i.80.i.80.i.80..sroa_idx, align 16, !tbaa !51, !alias.scope !171
  %.sroa.04.96..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 96 ; 2 uses
  %.sroa.04.i.96..sroa_idx129 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 96
  store i64 0, ptr %.sroa.04.i.96..sroa_idx129, align 16, !tbaa !47, !alias.scope !171
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 16, !tbaa !48, !noalias !171 ; 2 uses
  %.sroa.04.i.160.i.160.i.160..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 160
  store i64 %i.n, ptr %.sroa.04.i.160.i.160.i.160..sroa_idx, align 16, !tbaa !48, !alias.scope !171
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = load i8, ptr %i.o, align 8, !tbaa !49, !range !42, !noalias !171, !noundef !43
  %.sroa.04.i.168.i.168.i.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 168
  store i8 %i.p, ptr %.sroa.04.i.168.i.168.i.168..sroa_idx, align 8, !tbaa !49, !alias.scope !171
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !38, !range !42, !noalias !171, !noundef !43 ; 2 uses
  %.sroa.04.i.169.i.169.i.169..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 169
  store i8 %i.r, ptr %.sroa.04.i.169.i.169.i.169..sroa_idx, align 1, !tbaa !38, !alias.scope !171
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.t = load i8, ptr %i.s, align 2, !tbaa !50, !range !42, !noalias !171, !noundef !43
  %.sroa.04.i.170.i.170.i.170..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 170
  store i8 %i.t, ptr %.sroa.04.i.170.i.170.i.170..sroa_idx, align 2, !tbaa !50, !alias.scope !171
  %i.u = trunc nuw i8 %i.r to i1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i
  %i.v = shl i64 %i.n, 3
  %.sroa.04.i.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %.sroa.04.i.96..sroa_idx, ptr nonnull align 16 dereferenceable(84) %2, i64 %i.v, i1 false)
  br label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.96..sroa_idx49.i, ptr noundef nonnull align 16 dereferenceable(84) %2, i64 16, i1 false), !tbaa.struct !80
  store i64 0, ptr %i.m, align 16, !tbaa !48, !noalias !171
  store i8 1, ptr %i.q, align 1, !tbaa !38, !noalias !171
  br label %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i

_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.x = load i32, ptr %i.w, align 16, !tbaa !51, !noalias !171 ; 3 uses
  %.sroa.04.i.176.i.176.i.176..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 176
  store i32 %i.x, ptr %.sroa.04.i.176.i.176.i.176..sroa_idx, align 16, !tbaa !51, !alias.scope !171
  store i64 0, ptr %.sroa.03, align 16, !tbaa !47
  %.sroa.04.i.64.i.64.i.64..sroa_idx124 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 64
  %.sroa.04.i.64..sroa.04.i.64..sroa.04.i.64..sroa.04.64..sroa.04.64..sroa.04.64..i = load i64, ptr %.sroa.04.i.64.i.64.i.64..sroa_idx124, align 16, !tbaa !48 ; 2 uses
  %.sroa.03.64..sroa_idx104 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 64
  store i64 %.sroa.04.i.64..sroa.04.i.64..sroa.04.i.64..sroa.04.64..sroa.04.64..sroa.04.64..i, ptr %.sroa.03.64..sroa_idx104, align 16, !tbaa !48
  %.sroa.04.i.72.i.72.i.72..sroa_idx125 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 72
  %.sroa.04.i.72..sroa.04.i.72..sroa.04.i.72..sroa.04.72..sroa.04.72..sroa.04.72..i = load i8, ptr %.sroa.04.i.72.i.72.i.72..sroa_idx125, align 8, !tbaa !49
  %.sroa.03.72..sroa_idx106 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 72
  store i8 %.sroa.04.i.72..sroa.04.i.72..sroa.04.i.72..sroa.04.72..sroa.04.72..sroa.04.72..i, ptr %.sroa.03.72..sroa_idx106, align 8, !tbaa !49
  %.sroa.04.i.73.i.73.i.73..sroa_idx126 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 73
  %.sroa.04.i.73..sroa.04.i.73..sroa.04.i.73..sroa.04.73..sroa.04.73..sroa.04.73..i = load i8, ptr %.sroa.04.i.73.i.73.i.73..sroa_idx126, align 1, !tbaa !38 ; 2 uses
  %.sroa.03.73..sroa_idx108 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 73
  store i8 %.sroa.04.i.73..sroa.04.i.73..sroa.04.i.73..sroa.04.73..sroa.04.73..sroa.04.73..i, ptr %.sroa.03.73..sroa_idx108, align 1, !tbaa !38
  %.sroa.04.i.74.i.74.i.74..sroa_idx127 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 74
  %.sroa.04.i.74..sroa.04.i.74..sroa.04.i.74..sroa.04.74..sroa.04.74..sroa.04.74..i = load i8, ptr %.sroa.04.i.74.i.74.i.74..sroa_idx127, align 2, !tbaa !50
  %.sroa.03.74..sroa_idx110 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 74
  store i8 %.sroa.04.i.74..sroa.04.i.74..sroa.04.i.74..sroa.04.74..sroa.04.74..sroa.04.74..i, ptr %.sroa.03.74..sroa_idx110, align 2, !tbaa !50
  %i.y = trunc nuw i8 %.sroa.04.i.73..sroa.04.i.73..sroa.04.i.73..sroa.04.73..sroa.04.73..sroa.04.73..i to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i
  %i.z = shl i64 %.sroa.04.i.64..sroa.04.i.64..sroa.04.i.64..sroa.04.64..sroa.04.64..sroa.04.64..i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %.sroa.03, ptr nonnull align 16 dereferenceable(192) %.sroa.04.i, i64 %i.z, i1 false)
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i

bb.g:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i, i64 16, i1 false), !tbaa.struct !80
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i

_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i:            ; preds = %bb.g, %bb.f
  %.sroa.03.80..sroa_idx112 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 80
  store i32 %i.l, ptr %.sroa.03.80..sroa_idx112, align 16, !tbaa !51
  %.sroa.03.96..sroa_idx49 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96 ; 2 uses
  %.sroa.03.96..sroa_idx114 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96
  store i64 0, ptr %.sroa.03.96..sroa_idx114, align 16, !tbaa !47
  %.sroa.04.i.160.i.160.i.160..sroa_idx130 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 160
  %.sroa.04.i.160..sroa.04.i.160..sroa.04.i.160..sroa.04.160..sroa.04.160..sroa.04.160..i = load i64, ptr %.sroa.04.i.160.i.160.i.160..sroa_idx130, align 16, !tbaa !48 ; 2 uses
  %.sroa.03.160..sroa_idx115 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 160
  store i64 %.sroa.04.i.160..sroa.04.i.160..sroa.04.i.160..sroa.04.160..sroa.04.160..sroa.04.160..i, ptr %.sroa.03.160..sroa_idx115, align 16, !tbaa !48
  %.sroa.04.i.168.i.168.i.168..sroa_idx131 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 168
  %.sroa.04.i.168..sroa.04.i.168..sroa.04.i.168..sroa.04.168..sroa.04.168..sroa.04.168..i = load i8, ptr %.sroa.04.i.168.i.168.i.168..sroa_idx131, align 8, !tbaa !49
  %.sroa.03.168..sroa_idx117 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 168
  store i8 %.sroa.04.i.168..sroa.04.i.168..sroa.04.i.168..sroa.04.168..sroa.04.168..sroa.04.168..i, ptr %.sroa.03.168..sroa_idx117, align 8, !tbaa !49
  %.sroa.04.i.169.i.169.i.169..sroa_idx132 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 169
  %.sroa.04.i.169..sroa.04.i.169..sroa.04.i.169..sroa.04.169..sroa.04.169..sroa.04.169..i = load i8, ptr %.sroa.04.i.169.i.169.i.169..sroa_idx132, align 1, !tbaa !38 ; 2 uses
  %.sroa.03.169..sroa_idx119 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 169
  store i8 %.sroa.04.i.169..sroa.04.i.169..sroa.04.i.169..sroa.04.169..sroa.04.169..sroa.04.169..i, ptr %.sroa.03.169..sroa_idx119, align 1, !tbaa !38
  %.sroa.04.i.170.i.170.i.170..sroa_idx133 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 170
  %.sroa.04.i.170..sroa.04.i.170..sroa.04.i.170..sroa.04.170..sroa.04.170..sroa.04.170..i = load i8, ptr %.sroa.04.i.170.i.170.i.170..sroa_idx133, align 2, !tbaa !50
  %.sroa.03.170..sroa_idx121 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 170
  store i8 %.sroa.04.i.170..sroa.04.i.170..sroa.04.i.170..sroa.04.170..sroa.04.170..sroa.04.170..i, ptr %.sroa.03.170..sroa_idx121, align 2, !tbaa !50
  %i.aa = trunc nuw i8 %.sroa.04.i.169..sroa.04.i.169..sroa.04.i.169..sroa.04.169..sroa.04.169..sroa.04.169..i to i1
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.96..sroa_idx49, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.96..sroa_idx49.i, i64 16, i1 false), !tbaa.struct !80
  br label %_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit

bb.i:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i3.i
  %i.ab = shl i64 %.sroa.04.i.160..sroa.04.i.160..sroa.04.i.160..sroa.04.160..sroa.04.160..sroa.04.160..i, 3
  %.sroa.03.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96
  %.sroa.04.i.96..sroa_idx128 = getelementptr inbounds nuw i8, ptr %.sroa.04.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %.sroa.03.96..sroa_idx, ptr nonnull align 16 dereferenceable(84) %.sroa.04.i.96..sroa_idx128, i64 %i.ab, i1 false)
  br label %_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit

_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit: ; preds = %bb.h, %bb.i
  %.sroa.03.176..sroa_idx123 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 176
  store i32 %i.x, ptr %.sroa.03.176..sroa_idx123, align 16, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i)
  store i64 0, ptr %0, align 16, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.03.64..sroa_idx105 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 64
  %.sroa.03.64..sroa.03.64..sroa.03.64..sroa.03.64. = load i64, ptr %.sroa.03.64..sroa_idx105, align 16, !tbaa !48 ; 2 uses
  store i64 %.sroa.03.64..sroa.03.64..sroa.03.64..sroa.03.64., ptr %i.ac, align 16, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.03.72..sroa_idx107 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 72
  %.sroa.03.72..sroa.03.72..sroa.03.72..sroa.03.72. = load i8, ptr %.sroa.03.72..sroa_idx107, align 8, !tbaa !49
  store i8 %.sroa.03.72..sroa.03.72..sroa.03.72..sroa.03.72., ptr %i.ad, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 73
  %.sroa.03.73..sroa_idx109 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 73
  %.sroa.03.73..sroa.03.73..sroa.03.73..sroa.03.73. = load i8, ptr %.sroa.03.73..sroa_idx109, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.03.73..sroa.03.73..sroa.03.73..sroa.03.73., ptr %i.ae, align 1, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 74
  %.sroa.03.74..sroa_idx111 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 74
  %.sroa.03.74..sroa.03.74..sroa.03.74..sroa.03.74. = load i8, ptr %.sroa.03.74..sroa_idx111, align 2, !tbaa !50
  store i8 %.sroa.03.74..sroa.03.74..sroa.03.74..sroa.03.74., ptr %i.af, align 2, !tbaa !50
  %i.ag = trunc nuw i8 %.sroa.03.73..sroa.03.73..sroa.03.73..sroa.03.73. to i1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit
  %i.ah = shl i64 %.sroa.03.64..sroa.03.64..sroa.03.64..sroa.03.64., 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %0, ptr nonnull align 16 dereferenceable(192) %.sroa.03, i64 %i.ah, i1 false)
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i

bb.k:                                             ; preds = %_ZN4CGAL8Vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEC2IS2_S2_EEOT_OT0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03, i64 16, i1 false), !tbaa.struct !80
  br label %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i

_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i:           ; preds = %bb.k, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.l, ptr %i.ai, align 16, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i64 0, ptr %i.aj, align 16, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.03.160..sroa_idx116 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 160
  %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160. = load i64, ptr %.sroa.03.160..sroa_idx116, align 16, !tbaa !48 ; 2 uses
  store i64 %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160., ptr %i.ak, align 16, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.03.168..sroa_idx118 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 168
  %.sroa.03.168..sroa.03.168..sroa.03.168..sroa.03.168. = load i8, ptr %.sroa.03.168..sroa_idx118, align 8, !tbaa !49
  store i8 %.sroa.03.168..sroa.03.168..sroa.03.168..sroa.03.168., ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 169
  %.sroa.03.169..sroa_idx120 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 169
  %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169. = load i8, ptr %.sroa.03.169..sroa_idx120, align 1, !tbaa !38 ; 2 uses
  store i8 %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169., ptr %i.am, align 1, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 170
  %.sroa.03.170..sroa_idx122 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 170
  %.sroa.03.170..sroa.03.170..sroa.03.170..sroa.03.170. = load i8, ptr %.sroa.03.170..sroa_idx122, align 2, !tbaa !50
  store i8 %.sroa.03.170..sroa.03.170..sroa.03.170..sroa.03.170., ptr %i.an, align 2, !tbaa !50
  %i.ao = trunc nuw i8 %.sroa.03.169..sroa.03.169..sroa.03.169..sroa.03.169. to i1
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aj, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.96..sroa_idx49, i64 16, i1 false), !tbaa.struct !80
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

bb.m:                                             ; preds = %_ZN4CGAL9cpp_floatC2EOS0_.exit.i.i.i.i
  %i.ap = shl i64 %.sroa.03.160..sroa.03.160..sroa.03.160..sroa.03.160., 3
  %.sroa.03.96..sroa_idx113 = getelementptr inbounds nuw i8, ptr %.sroa.03, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(84) %i.aj, ptr nonnull align 16 dereferenceable(84) %.sroa.03.96..sroa_idx113, i64 %i.ap, i1 false)
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC2INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %bb.l, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.x, ptr %i.aq, align 16, !tbaa !51
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
  store double %i.e, ptr @_ZN4COREL6relEpsE, align 8, !tbaa !9
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL6relEpsE) ; 0 uses
  store i64 0, ptr @_ZN4COREL12EXTLONG_ZEROE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_ZEROE, i64 8), align 8, !tbaa !176
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_ZEROE) ; 0 uses
  store i64 1, ptr @_ZN4COREL11EXTLONG_ONEE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_ONEE, i64 8), align 8, !tbaa !176
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_ONEE) ; 0 uses
  store i64 2, ptr @_ZN4COREL11EXTLONG_TWOE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_TWOE, i64 8), align 8, !tbaa !176
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_TWOE) ; 0 uses
  store i64 3, ptr @_ZN4COREL13EXTLONG_THREEE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_THREEE, i64 8), align 8, !tbaa !176
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_THREEE) ; 0 uses
  store i64 4, ptr @_ZN4COREL12EXTLONG_FOURE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FOURE, i64 8), align 8, !tbaa !176
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FOURE) ; 0 uses
  store i64 5, ptr @_ZN4COREL12EXTLONG_FIVEE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FIVEE, i64 8), align 8, !tbaa !176
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FIVEE) ; 0 uses
  store i64 6, ptr @_ZN4COREL11EXTLONG_SIXE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_SIXE, i64 8), align 8, !tbaa !176
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_SIXE) ; 0 uses
  store i64 7, ptr @_ZN4COREL13EXTLONG_SEVENE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SEVENE, i64 8), align 8, !tbaa !176
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SEVENE) ; 0 uses
  store i64 8, ptr @_ZN4COREL13EXTLONG_EIGHTE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_EIGHTE, i64 8), align 8, !tbaa !176
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_EIGHTE) ; 0 uses
  store i64 1073741824, ptr @_ZN4COREL11EXTLONG_BIGE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_BIGE, i64 8), align 8, !tbaa !176
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_BIGE) ; 0 uses
  store i64 -1073741824, ptr @_ZN4COREL13EXTLONG_SMALLE, align 8, !tbaa !174
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SMALLE, i64 8), align 8, !tbaa !176
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SMALLE) ; 0 uses
  store double f0x4002934F0979A371, ptr @_ZN4COREL5log_5E, align 8, !tbaa !9
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"branch_weights", i32 1, i32 1048575}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !17, i64 0}
!17 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !13, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = distinct !{null}
!21 = distinct !{null}
!22 = !{!6, !6, i64 0}
!23 = !{ptr @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_}
!24 = distinct !{ptr @_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_, null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE: argument 0"}
!29 = distinct !{!29, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE: argument 0"}
!32 = distinct !{!32, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE: argument 0"}
!35 = distinct !{!35, !"_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_12NT_converterIdS8_EEEclERKNS_7Point_2IS3_EE"}
!36 = !{i64 11381835}
!37 = !{i64 11382661}
!38 = !{!39, !41, i64 73}
!39 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEE", !7, i64 0, !40, i64 64, !41, i64 72, !41, i64 73, !41, i64 74}
!40 = !{!"long", !7, i64 0}
!41 = !{!"bool", !7, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd: argument 0"}
!46 = distinct !{!46, !"_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd"}
!47 = !{!7, !7, i64 0}
!48 = !{!39, !40, i64 64}
!49 = !{!39, !41, i64 72}
!50 = !{!39, !41, i64 74}
!51 = !{!52, !6, i64 80}
!52 = !{!"_ZTSN4CGAL9cpp_floatE", !53, i64 0, !6, i64 80}
!53 = !{!"_ZTSN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEE", !54, i64 0}
!54 = !{!"_ZTSN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEE", !39, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"long long", !7, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd: argument 0"}
!59 = distinct !{!59, !"_ZNK4CGAL12NT_converterIdNS_9cpp_floatEEclERKd"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN4CGALmlERKNS_9cpp_floatES2_: argument 0"}
!62 = distinct !{!62, !"_ZN4CGALmlERKNS_9cpp_floatES2_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4CGALmlERKNS_9cpp_floatES2_: argument 0"}
!65 = distinct !{!65, !"_ZN4CGALmlERKNS_9cpp_floatES2_"}
!66 = !{!67, !67, i64 0}
!67 = !{!"p1 _ZTSN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEE", !13, i64 0}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZN5boost14multiprecisionmiINS0_6detail10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvSA_LSB_1EEENS2_10expressionINS2_5minusENSD_IT_T0_T1_T2_T3_EENS4_IT4_XT5_EEEvvEERKSK_RKSM_: argument 0"}
!70 = distinct !{!70, !"_ZN5boost14multiprecisionmiINS0_6detail10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvSA_LSB_1EEENS2_10expressionINS2_5minusENSD_IT_T0_T1_T2_T3_EENS4_IT4_XT5_EEEvvEERKSK_RKSM_"}
!71 = !{!72, !6, i64 8}
!72 = !{!"_ZTSN5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEE", !67, i64 0, !6, i64 8}
!73 = distinct !{null, null, null}
!74 = distinct !{null}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN5boost14multiprecisionmiINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1ENS0_6detail10shift_leftENS0_6numberIS7_LS8_1EEEivvEENS9_10expressionINS9_5minusENSB_IT_XT0_EEENSD_IT1_T2_T3_T4_T5_EEvvEERKSG_RKSM_: argument 0"}
!77 = distinct !{!77, !"_ZN5boost14multiprecisionmiINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1ENS0_6detail10shift_leftENS0_6numberIS7_LS8_1EEEivvEENS9_10expressionINS9_5minusENSB_IT_XT0_EEENSD_IT1_T2_T3_T4_T5_EEvvEERKSG_RKSM_"}
!78 = distinct !{null, null, null}
!79 = distinct !{null}
!80 = !{i64 0, i64 8, !81, i64 8, i64 8, !82}
!81 = !{!40, !40, i64 0}
!82 = !{!83, !83, i64 0}
!83 = !{!"p1 long long", !13, i64 0}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !85}
!89 = !{!90, !83, i64 0}
!90 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageE", !83, i64 0, !40, i64 8, !40, i64 16, !41, i64 24}
!91 = !{!90, !40, i64 8}
!92 = !{!90, !40, i64 16}
!93 = !{!90, !41, i64 24}
!94 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!95 = !{!96, !40, i64 0}
!96 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9limb_dataE", !40, i64 0, !83, i64 8}
!97 = !{!96, !83, i64 8}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !85}
!101 = distinct !{!101, !85}
!102 = distinct !{!102, !99}
!103 = distinct !{!103, !85}
!104 = distinct !{!104, !85}
!105 = distinct !{!105, !85}
!106 = distinct !{!106, !85}
!107 = distinct !{!107, !99}
!108 = distinct !{!108, !85}
!109 = distinct !{!109, !85}
!110 = distinct !{!110, !85}
!111 = !{!72, !67, i64 0}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv: argument 0"}
!114 = distinct !{!114, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv"}
!115 = !{i64 16}
!116 = !{!117, !67, i64 16}
!117 = !{!"_ZTSN5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvEE", !72, i64 0, !67, i64 16}
!118 = distinct !{null, null, null}
!119 = !{i64 0, i64 64, !47}
!120 = !{!41, !41, i64 0}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv: argument 0"}
!123 = distinct !{!123, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv: argument 0"}
!126 = distinct !{!126, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE4leftEv"}
!127 = !{!128, !12, i64 0}
!128 = !{!"_ZTSN5boost15source_locationE", !12, i64 0, !12, i64 8, !6, i64 16, !6, i64 20}
!129 = !{!128, !12, i64 8}
!130 = !{!128, !6, i64 16}
!131 = !{!128, !6, i64 20}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE5rightEv: argument 0"}
!134 = distinct !{!134, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS2_INS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvEESD_vvE5rightEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZNK5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvE5rightEv: argument 0"}
!137 = distinct !{!137, !"_ZNK5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvE5rightEv"}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZNK5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvE4leftEv: argument 0"}
!140 = distinct !{!140, !"_ZNK5boost14multiprecision6detail10expressionINS1_10shift_leftENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEivvE4leftEv"}
!141 = !{!142}
!142 = distinct !{!142, !143}
!143 = distinct !{!143, !"LVerDomain"}
!144 = !{!145}
!145 = distinct !{!145, !143}
!146 = !{!142, !147}
!147 = distinct !{!147, !143}
!148 = !{!147}
!149 = distinct !{!149, !85, !150, !151}
!150 = !{!"llvm.loop.isvectorized", i32 1}
!151 = !{!"llvm.loop.unroll.runtime.disable"}
!152 = distinct !{!152, !85, !150}
!153 = !{!154, !67, i64 0}
!154 = !{!"_ZTSN5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvEE", !67, i64 0, !72, i64 8}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE4leftEv: argument 0"}
!157 = distinct !{!157, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE4leftEv"}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv: argument 0"}
!160 = distinct !{!160, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv"}
!161 = distinct !{null, null, null}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv: argument 0"}
!164 = distinct !{!164, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv: argument 0"}
!167 = distinct !{!167, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE5rightEv"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE4leftEv: argument 0"}
!170 = distinct !{!170, !"_ZNK5boost14multiprecision6detail10expressionINS1_5minusENS0_6numberINS0_8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS2_INS1_10shift_leftESC_ivvEEvvE4leftEv"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_: argument 0"}
!173 = distinct !{!173, !"_ZNK4CGAL23CartesianKernelFunctors18Construct_vector_2INS_16Simple_cartesianINS_9cpp_floatEEEEclENS_15Return_base_tagEOS3_S7_"}
!174 = !{!175, !40, i64 0}
!175 = !{!"_ZTSN4CORE7extLongE", !40, i64 0, !6, i64 8}
!176 = !{!175, !6, i64 8}
end_hunk_1
