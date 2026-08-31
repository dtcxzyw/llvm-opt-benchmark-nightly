Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/outer_vertex?download=true
inline.NumInlined: 916
inline.NumDeleted: 389
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_:bb.a

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ae = load i8, ptr %i.y, align 1, !tbaa !68, !range !65, !noundef !66
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = select i1 %i.af, ptr %0, ptr %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !67
  %i.al = shl i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.ai, i64 %i.al, i1 false)
  br i1 %i.af, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.an = load i8, ptr %i.am, align 2, !tbaa !129, !range !65, !noundef !66
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %0, align 16
  %i.aq = shl i64 %i.ap, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.aq) #33
  %.pre161.pre = load i8, ptr %i.y, align 1, !tbaa !68, !range !65
  %i.ar = trunc nuw i8 %.pre161.pre to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc
  store i8 0, ptr %i.y, align 1, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre161 = phi i1 [ false, %bb.e ], [ %i.ar, %bb.d ]
  store i64 1, ptr %i.aj, align 16, !tbaa !67
  store i64 1, ptr %0, align 16, !tbaa !16
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75

bb.g:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.as, align 16, !tbaa !67
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre163 = load ptr, ptr %.phi.trans.insert162, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75: ; preds = %bb.g, %bb.f
  %.pre-phi = phi i1 [ %i.aa, %bb.g ], [ %.pre161, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %.pre163, %bb.g ], [ %i.ad, %bb.f ]
  %i.aw = select i1 %.pre-phi, ptr %0, ptr %i.av
  store i64 %i.x, ptr %i.aw, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i64, ptr %i.ay, align 16
  %i.ba = zext i1 %.067.in to i8
  store i8 %i.ba, ptr %i.ax, align 8, !tbaa !62
  %i.bb = icmp eq i64 %i.az, 1
  %or.cond.i78 = select i1 %.067.in, i1 %i.bb, i1 false
  br i1 %or.cond.i78, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = select i1 %.pre-phi, ptr %0, ptr %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ax, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.k:                                             ; preds = %bb.a
  %.not.i79 = icmp eq i64 %i.b, %i.d
  br i1 %.not.i79, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp ugt i64 %i.b, %i.d
  %i.bi = select i1 %i.bh, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.m:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !68, !range !65, !noundef !66
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = select i1 %i.bl, ptr %1, ptr %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !68, !range !65, !noundef !66
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = select i1 %i.br, ptr %2, ptr %i.bt
  %i.bv = icmp slt i64 %i.b, 1
  br i1 %i.bv, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph190

bb.n:                                             ; preds = %.lr.ph190
  %i.bw = icmp slt i64 %.015.in.i188, 2
  br i1 %i.bw, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph190, !llvm.loop !130

.lr.ph190:                                        ; preds = %bb.m, %bb.n
  %.015.in.i188 = phi i64 [ %.015.i, %bb.n ], [ %i.b, %bb.m ] ; 2 uses
  %.015.i = add nsw i64 %.015.in.i188, -1         ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.015.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !69 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.015.i
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !69 ; 2 uses
  %.not19.i = icmp eq i64 %i.by, %i.ca
  br i1 %.not19.i, label %bb.n, label %bb.o, !llvm.loop !130

bb.o:                                             ; preds = %.lr.ph190
  %i.cb = icmp ugt i64 %i.by, %i.ca
  %i.cc = select i1 %i.cb, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.o
  %.2.i = phi i32 [ %i.bi, %bb.l ], [ %i.cc, %bb.o ], [ 0, %bb.m ], [ 0, %bb.n ] ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %storemerge.i, i64 288230376151711744) ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 8 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !68, !range !65, !noundef !66 ; 2 uses
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load i64, ptr %0, align 16              ; 2 uses
  %spec.select.i8.i80 = select i1 %i.cf, i64 2, i64 %i.cg ; 2 uses
  %i.ch = icmp ugt i64 %spec.select.i, %spec.select.i8.i80
  br i1 %i.ch, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i81, label %bb.t

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i81: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %i.ci = shl nuw nsw i64 %spec.select.i8.i80, 2
  %.sroa.speculated16.i82 = tail call i64 @llvm.umax.i64(i64 %i.ci, i64 %spec.select.i)
  %.sroa.speculated.i83 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i82, i64 288230376151711744) ; 2 uses
  %i.cj = shl nuw nsw i64 %.sroa.speculated.i83, 3
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #30 ; 3 uses
  %i.cl = load i8, ptr %i.cd, align 1, !tbaa !68, !range !65, !noundef !66
  %i.cm = trunc nuw i8 %i.cl to i1                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = select i1 %i.cm, ptr %0, ptr %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 16, !tbaa !67
  %i.cs = shl i64 %i.cr, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.cp, i64 %i.cs, i1 false)
  br i1 %i.cm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i81
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !129, !range !65, !noundef !66
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = load i64, ptr %0, align 16
  %i.cx = shl i64 %i.cw, 3
  tail call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cx) #33
  %.pre.pre = load i8, ptr %i.cd, align 1, !tbaa !68, !range !65
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i81
  store i8 0, ptr %i.cd, align 1, !tbaa !68
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pre = phi i8 [ 0, %bb.r ], [ %.pre.pre, %bb.q ]
  store i64 %spec.select.i, ptr %i.cq, align 16, !tbaa !67
  store i64 %.sroa.speculated.i83, ptr %0, align 16, !tbaa !16
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84

bb.t:                                             ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.cy, align 16, !tbaa !67
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre158 = load ptr, ptr %.phi.trans.insert, align 8
  %i.cz = icmp ne i64 %i.cg, 0
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84: ; preds = %bb.s, %bb.t
  %i.da = phi i1 [ true, %bb.s ], [ %i.cz, %bb.t ]
  %.pre160 = phi ptr [ %i.ck, %bb.s ], [ %.pre158, %bb.t ]
  %i.db = phi i8 [ %.pre, %bb.s ], [ %i.ce, %bb.t ]
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !68, !range !65, !noundef !66
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = select i1 %i.de, ptr %1, ptr %i.dg      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !68, !range !65, !noundef !66
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = select i1 %i.dk, ptr %2, ptr %i.dm      ; 2 uses
  %i.do = trunc nuw i8 %i.db to i1                ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dq = select i1 %i.do, ptr %0, ptr %.pre160   ; 10 uses
  %i.dr = icmp slt i32 %.2.i, 0                   ; 2 uses
  br i1 %i.dr, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84
  %i.ds = icmp eq i32 %.2.i, 0
  br i1 %i.ds, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %.not126 = select i1 %i.do, i1 true, i1 %i.da
  br i1 %.not126, label %bb.aa, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i86

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i86: ; preds = %bb.v
  %i.dt = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc89 unwind label %bb.ab  ; 4 uses

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i86
  %i.du = load i8, ptr %i.cd, align 1, !tbaa !68, !range !65, !noundef !66
  %i.dv = trunc nuw i8 %i.du to i1                ; 2 uses
  %i.dw = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dx = select i1 %i.dv, ptr %0, ptr %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 16, !tbaa !67
  %i.ea = shl i64 %i.dz, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr align 8 %i.dx, i64 %i.ea, i1 false)
  br i1 %i.dv, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.noexc89
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !129, !range !65, !noundef !66
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = load i64, ptr %0, align 16
  %i.ef = shl i64 %i.ee, 3
  tail call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ef) #33
  %.pre159.pre = load i8, ptr %i.cd, align 1, !tbaa !68, !range !65
  %i.eg = trunc nuw i8 %.pre159.pre to i1
  %i.eh = select i1 %i.eg, ptr %0, ptr %i.dt
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %.noexc89
  store i8 0, ptr %i.cd, align 1, !tbaa !68
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre159 = phi ptr [ %i.dt, %bb.y ], [ %i.eh, %bb.x ]
  store i64 1, ptr %i.dy, align 16, !tbaa !67
  store i64 1, ptr %0, align 16, !tbaa !16
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.aa:                                            ; preds = %bb.v
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.ei, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.ab:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i86
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  tail call void @__clang_call_terminate(ptr %i.ek) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.aa, %bb.z
  %.pre-phi171 = phi ptr [ %i.dq, %bb.aa ], [ %.pre159, %bb.z ]
  store i64 0, ptr %.pre-phi171, align 8, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.el, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ac:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84, %bb.u
  %.0121 = phi ptr [ %i.dh, %bb.u ], [ %i.dn, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84 ] ; 12 uses
  %.0120 = phi ptr [ %i.dn, %bb.u ], [ %i.dh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit84 ] ; 9 uses
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
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %.164138.prol
  %6 = load i64, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.164138.prol
  %8 = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %.1139.prol, i64 %4, i64 %6) ; 2 uses
  %9 = extractvalue { i8, i64 } %8, 1
  store i64 %9, ptr %7, align 8
  %10 = extractvalue { i8, i64 } %8, 0            ; 3 uses
  %11 = add nuw i64 %.164138.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph140.prol.loopexit, label %.lr.ph140.prol, !llvm.loop !131

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
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !69
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %.063135
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !69
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.063135 ; 4 uses
  %i.et = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %.0136, i64 %i.ep, i64 %i.er) ; 2 uses
  %i.eu = extractvalue { i8, i64 } %i.et, 1
  store i64 %i.eu, ptr %i.es, align 8
  %i.ev = extractvalue { i8, i64 } %i.et, 0
  %i.ew = or disjoint i64 %.063135, 1             ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !69
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %i.ew
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !69
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fc = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %i.ev, i64 %i.ey, i64 %i.fa) ; 2 uses
  %i.fd = extractvalue { i8, i64 } %i.fc, 1
  store i64 %i.fd, ptr %i.fb, align 8
  %i.fe = extractvalue { i8, i64 } %i.fc, 0
  %i.ff = or disjoint i64 %.063135, 2             ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !69
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %i.ff
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !69
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fl = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %i.fe, i64 %i.fh, i64 %i.fj) ; 2 uses
  %i.fm = extractvalue { i8, i64 } %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8
  %i.fn = extractvalue { i8, i64 } %i.fl, 0
  %i.fo = or disjoint i64 %.063135, 3             ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !69
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %i.fo
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !69
  %i.ft = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.fu = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %i.fn, i64 %i.fq, i64 %i.fs) ; 2 uses
  %i.fv = extractvalue { i8, i64 } %i.fu, 1
  store i64 %i.fv, ptr %i.ft, align 8
  %i.fw = extractvalue { i8, i64 } %i.fu, 0       ; 2 uses
  %i.fx = add i64 %i.en, 4                        ; 2 uses
  %.not = icmp ugt i64 %i.fx, %..i
  br i1 %.not, label %.preheader130, label %.lr.ph, !llvm.loop !133

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
  %15 = load i64, ptr %14, align 8, !tbaa !69
  %16 = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %.164138
  %17 = load i64, ptr %16, align 8, !tbaa !69
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.164138
  %19 = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %.1139, i64 %15, i64 %17) ; 2 uses
  %20 = extractvalue { i8, i64 } %19, 1
  store i64 %20, ptr %18, align 8
  %21 = extractvalue { i8, i64 } %19, 0
  %22 = add nuw i64 %.164138, 1                   ; 3 uses
  %23 = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !69
  %25 = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %22
  %26 = load i64, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %22
  %28 = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %21, i64 %24, i64 %26) ; 2 uses
  %29 = extractvalue { i8, i64 } %28, 1
  store i64 %29, ptr %27, align 8
  %30 = extractvalue { i8, i64 } %28, 0
  %31 = add nuw i64 %.164138, 2                   ; 3 uses
  %32 = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !69
  %34 = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %31
  %35 = load i64, ptr %34, align 8, !tbaa !69
  %36 = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %31
  %37 = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %30, i64 %33, i64 %35) ; 2 uses
  %38 = extractvalue { i8, i64 } %37, 1
  store i64 %38, ptr %36, align 8
  %39 = extractvalue { i8, i64 } %37, 0
  %40 = add nuw i64 %.164138, 3                   ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %40
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !69
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.0120, i64 %40
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !69
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %40
  %i.gg = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %39, i64 %i.gc, i64 %i.ge) ; 2 uses
  %i.gh = extractvalue { i8, i64 } %i.gg, 1
  store i64 %i.gh, ptr %i.gf, align 8
  %i.gi = extractvalue { i8, i64 } %i.gg, 0       ; 2 uses
  %41 = add nuw i64 %.164138, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %41, %..i
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph140.a, !llvm.loop !134

.lr.ph145:                                        ; preds = %.preheader, %.lr.ph145
  %.2144 = phi i8 [ %i.go, %.lr.ph145 ], [ %.1.lcssa, %.preheader ]
  %.265143 = phi i64 [ %i.gp, %.lr.ph145 ], [ %.164.lcssa, %.preheader ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.0121, i64 %.265143
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !69
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.265143
  %i.gm = tail call { i8, i64 } @llvm.x86.subborrow.64(i8 %.2144, i64 %i.gk, i64 0) ; 2 uses
  %i.gn = extractvalue { i8, i64 } %i.gm, 1
  store i64 %i.gn, ptr %i.gl, align 8
  %i.go = extractvalue { i8, i64 } %i.gm, 0       ; 2 uses
  %i.gp = add nuw i64 %.265143, 1                 ; 3 uses
  %i.gq = icmp ne i8 %i.go, 0
  %i.gr = icmp ult i64 %i.gp, %storemerge.i
  %i.gs = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %i.gs, label %.lr.ph145, label %._crit_edge, !llvm.loop !135

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
  %i.gw = load i8, ptr %i.cd, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = load ptr, ptr %i.dp, align 8
  %i.gz = select i1 %i.gx, ptr %0, ptr %i.gy      ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.ha, align 16, !tbaa !67
  %i.hb = add i64 %.promoted, -1                  ; 2 uses
  %.not.i147.not = icmp eq i64 %i.hb, 0
  br i1 %.not.i147.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.ae, %bb.af
  %i.hc = phi i64 [ %i.hi, %bb.af ], [ %i.hb, %bb.ae ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !69
  %.not2.i = icmp eq i64 %i.he, 0
  br i1 %.not2.i, label %bb.af, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread: ; preds = %.lr.ph150
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !62, !range !65, !noundef !66 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.hg, ptr %i.hh, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93

bb.af:                                            ; preds = %.lr.ph150
  store i64 %i.hc, ptr %i.ha, align 16, !tbaa !67
  %i.hi = add i64 %i.hc, -1                       ; 2 uses
  %.not.i.not = icmp eq i64 %i.hi, 0
  br i1 %.not.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph150, !llvm.loop !136

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %bb.af, %bb.ae
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !62, !range !65, !noundef !66 ; 2 uses
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store i8 %i.hk, ptr %i.hm, align 8, !tbaa !62
  br i1 %i.hl, label %bb.ag, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93

bb.ag:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.hn = load i64, ptr %i.gz, align 8, !tbaa !69
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.ah, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.hm, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.ag, %bb.ah
  %i.hp = phi i8 [ %i.hg, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread ], [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit ], [ 1, %bb.ag ], [ 0, %bb.ah ] ; 2 uses
  %.not.i132 = phi i1 [ true, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread ], [ false, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit ], [ false, %bb.ag ], [ false, %bb.ah ]
  %i.hq = phi ptr [ %i.hh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread ], [ %i.hm, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit ], [ %i.hm, %bb.ag ], [ %i.hm, %bb.ah ] ; 2 uses
  br i1 %i.dr, label %bb.ai, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ai:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93
  %i.hr = trunc nuw i8 %i.hp to i1
  %i.hs = xor i8 %i.hp, 1
  store i8 %i.hs, ptr %i.hq, align 8, !tbaa !62
  %or.cond.i.not = or i1 %.not.i132, %i.hr
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ht = load i64, ptr %i.gz, align 8, !tbaa !69
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.ak, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %i.hq, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit93, %bb.ai, %bb.aj, %bb.ak, %bb.j, %bb.i, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit75
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !67  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 16, !tbaa !67  ; 3 uses
  %i.e = icmp ult i64 %i.b, %i.d                  ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.d) ; 8 uses
  %storemerge.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.d) ; 9 uses
  %i.f = icmp eq i64 %storemerge.i, 1
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i8, ptr %i.g, align 8, !tbaa !62, !range !65, !noundef !66 ; 2 uses
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.k = load i8, ptr %i.j, align 1, !tbaa !68, !range !65, !noundef !66
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %1, ptr %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !69   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.r = load i8, ptr %i.q, align 1, !tbaa !68, !range !65, !noundef !66
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.s, ptr %2, ptr %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !69
  %add.narrowed = add i64 %i.w, %i.p              ; 2 uses
  %add.narrowed.overflow = icmp ult i64 %add.narrowed, %i.p ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !68, !range !65, !noundef !66
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %i.z, ptr %0, ptr %i.ab       ; 2 uses
  store i64 %add.narrowed, ptr %i.ac, align 8, !tbaa !69
  %i.ad = zext i1 %add.narrowed.overflow to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !69
  %i.af = select i1 %add.narrowed.overflow, i64 2, i64 1 ; 4 uses
  %i.ag = load i64, ptr %0, align 16
  %spec.select.i8.i = select i1 %i.z, i64 2, i64 %i.ag ; 2 uses
  %i.ah = icmp ugt i64 %i.af, %spec.select.i8.i
  br i1 %i.ah, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.g

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.ai = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.af) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated16.i, 3
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #30
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.al = load i8, ptr %i.x, align 1, !tbaa !68, !range !65, !noundef !66
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  %i.an = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ao = select i1 %i.am, ptr %0, ptr %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 16, !tbaa !67
  %i.ar = shl i64 %i.aq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br i1 %i.am, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.at = load i8, ptr %i.as, align 2, !tbaa !129, !range !65, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i64, ptr %0, align 16
  %i.aw = shl i64 %i.av, 3
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aw) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc
  store i8 0, ptr %i.x, align 1, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.af, ptr %i.ap, align 16, !tbaa !67
  store i64 %.sroa.speculated16.i, ptr %0, align 16, !tbaa !16
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.af, ptr %i.ax, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.g, %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.h, ptr %i.ba, align 8, !tbaa !62
  %not.add.narrowed.overflow = xor i1 %add.narrowed.overflow, true
  %or.cond.i = and i1 %i.i, %not.add.narrowed.overflow
  br i1 %or.cond.i, label %bb.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit
  %i.bb = load i8, ptr %i.x, align 1, !tbaa !68, !range !65, !noundef !66
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load ptr, ptr %i.aa, align 8
  %i.be = select i1 %i.bc, ptr %0, ptr %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !69
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ba, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.k:                                             ; preds = %bb.a
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %storemerge.i, i64 288230376151711744) ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 9 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !68, !range !65, !noundef !66
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %i.bk = load i64, ptr %0, align 16
  %spec.select.i8.i72 = select i1 %i.bj, i64 2, i64 %i.bk ; 2 uses
  %i.bl = icmp ugt i64 %spec.select.i, %spec.select.i8.i72
  br i1 %i.bl, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i73, label %bb.p

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i73: ; preds = %bb.k
  %i.bm = shl nuw nsw i64 %spec.select.i8.i72, 2
  %.sroa.speculated16.i74 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %spec.select.i)
  %.sroa.speculated.i75 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i74, i64 288230376151711744) ; 2 uses
  %i.bn = shl nuw nsw i64 %.sroa.speculated.i75, 3
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #30 ; 3 uses
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !68, !range !65, !noundef !66
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = select i1 %i.bq, ptr %0, ptr %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 16, !tbaa !67
  %i.bw = shl i64 %i.bv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br i1 %i.bq, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i73
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !129, !range !65, !noundef !66
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = load i64, ptr %0, align 16
  %i.cb = shl i64 %i.ca, 3
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.cb) #33
  %.pre.pre = load i8, ptr %i.bh, align 1, !tbaa !68, !range !65
  %i.cc = trunc nuw i8 %.pre.pre to i1
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i73
  store i8 0, ptr %i.bh, align 1, !tbaa !68
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre = phi i1 [ false, %bb.n ], [ %i.cc, %bb.m ]
  store i64 %spec.select.i, ptr %i.bu, align 16, !tbaa !67
  store i64 %.sroa.speculated.i75, ptr %0, align 16, !tbaa !16
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76

bb.p:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.cd, align 16, !tbaa !67
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre138 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76: ; preds = %bb.o, %bb.p
  %.pre-phi = phi i1 [ %.pre, %bb.o ], [ %i.bj, %bb.p ]
  %i.ce = phi ptr [ %i.bo, %bb.o ], [ %.pre138, %bb.p ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = select i1 %i.ch, ptr %1, ptr %i.cj      ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !68, !range !65, !noundef !66
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

.preheader115:                                    ; preds = %.lr.ph, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76
  %.060.lcssa = phi i64 [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ], [ %i.cu, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi i8 [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ], [ %i.ed, %.lr.ph ] ; 3 uses
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
  %4 = load i64, ptr %3, align 8, !tbaa !69
  %5 = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %.161120.prol
  %6 = load i64, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.161120.prol
  %8 = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %.1121.prol, i64 %4, i64 %6) ; 2 uses
  %9 = extractvalue { i8, i64 } %8, 1
  store i64 %9, ptr %7, align 8
  %10 = extractvalue { i8, i64 } %8, 0            ; 3 uses
  %11 = add nuw i64 %.161120.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph122.prol.loopexit, label %.lr.ph122.prol, !llvm.loop !137

.lr.ph122.prol.loopexit:                          ; preds = %.lr.ph122.prol, %.lr.ph122.preheader
  %.lcssa156.unr = phi i8 [ poison, %.lr.ph122.preheader ], [ %10, %.lr.ph122.prol ]
  %.1121.unr = phi i8 [ %.0.lcssa, %.lr.ph122.preheader ], [ %10, %.lr.ph122.prol ]
  %.161120.unr = phi i64 [ %.060.lcssa, %.lr.ph122.preheader ], [ %11, %.lr.ph122.prol ]
  %12 = sub i64 %.060.lcssa, %..i
  %13 = icmp ugt i64 %12, -4
  br i1 %13, label %.preheader, label %.lr.ph122.a

.lr.ph:                                           ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76, %.lr.ph
  %i.cu = phi i64 [ %i.ee, %.lr.ph ], [ 4, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ] ; 3 uses
  %.0118 = phi i8 [ %i.ed, %.lr.ph ], [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ]
  %.060117 = phi i64 [ %i.cu, %.lr.ph ], [ 0, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit76 ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.060117
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !69
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %.060117
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !69
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.060117 ; 4 uses
  %i.da = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %.0118, i64 %i.cw, i64 %i.cy) ; 2 uses
  %i.db = extractvalue { i8, i64 } %i.da, 1
  store i64 %i.db, ptr %i.cz, align 8
  %i.dc = extractvalue { i8, i64 } %i.da, 0
  %i.dd = or disjoint i64 %.060117, 1             ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !69
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %i.dd
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !69
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dj = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %i.dc, i64 %i.df, i64 %i.dh) ; 2 uses
  %i.dk = extractvalue { i8, i64 } %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8
  %i.dl = extractvalue { i8, i64 } %i.dj, 0
  %i.dm = or disjoint i64 %.060117, 2             ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !69
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %i.dm
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !69
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ds = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %i.dl, i64 %i.do, i64 %i.dq) ; 2 uses
  %i.dt = extractvalue { i8, i64 } %i.ds, 1
  store i64 %i.dt, ptr %i.dr, align 8
  %i.du = extractvalue { i8, i64 } %i.ds, 0
  %i.dv = or disjoint i64 %.060117, 3             ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !69
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %i.dv
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !69
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.eb = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %i.du, i64 %i.dx, i64 %i.dz) ; 2 uses
  %i.ec = extractvalue { i8, i64 } %i.eb, 1
  store i64 %i.ec, ptr %i.ea, align 8
  %i.ed = extractvalue { i8, i64 } %i.eb, 0       ; 2 uses
  %i.ee = add i64 %i.cu, 4                        ; 2 uses
  %.not = icmp ugt i64 %i.ee, %..i
  br i1 %.not, label %.preheader115, label %.lr.ph, !llvm.loop !138

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
  %15 = load i64, ptr %14, align 8, !tbaa !69
  %16 = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %.161120
  %17 = load i64, ptr %16, align 8, !tbaa !69
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.161120
  %19 = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %.1121, i64 %15, i64 %17) ; 2 uses
  %20 = extractvalue { i8, i64 } %19, 1
  store i64 %20, ptr %18, align 8
  %21 = extractvalue { i8, i64 } %19, 0
  %22 = add nuw i64 %.161120, 1                   ; 3 uses
  %23 = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !69
  %25 = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %22
  %26 = load i64, ptr %25, align 8, !tbaa !69
  %27 = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %22
  %28 = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %21, i64 %24, i64 %26) ; 2 uses
  %29 = extractvalue { i8, i64 } %28, 1
  store i64 %29, ptr %27, align 8
  %30 = extractvalue { i8, i64 } %28, 0
  %31 = add nuw i64 %.161120, 2                   ; 3 uses
  %32 = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %31
  %33 = load i64, ptr %32, align 8, !tbaa !69
  %34 = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %31
  %35 = load i64, ptr %34, align 8, !tbaa !69
  %36 = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %31
  %37 = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %30, i64 %33, i64 %35) ; 2 uses
  %38 = extractvalue { i8, i64 } %37, 1
  store i64 %38, ptr %36, align 8
  %39 = extractvalue { i8, i64 } %37, 0
  %40 = add nuw i64 %.161120, 3                   ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %40
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !69
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %spec.select112, i64 %40
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !69
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %40
  %i.en = tail call { i8, i64 } @llvm.x86.addcarry.64(i8 %39, i64 %i.ej, i64 %i.el) ; 2 uses
  %i.eo = extractvalue { i8, i64 } %i.en, 1
  store i64 %i.eo, ptr %i.em, align 8
  %i.ep = extractvalue { i8, i64 } %i.en, 0       ; 2 uses
  %41 = add nuw i64 %.161120, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %41, %..i
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph122.a, !llvm.loop !139

.lr.ph126:                                        ; preds = %.preheader, %.lr.ph126
  %.262125 = phi i64 [ %i.ew, %.lr.ph126 ], [ %.161.lcssa, %.preheader ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %.262125
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !69
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.262125
  %i.et = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.er, i64 1) ; 2 uses
  %i.eu = extractvalue { i64, i1 } %i.et, 0
  %i.ev = extractvalue { i64, i1 } %i.et, 1       ; 2 uses
  store i64 %i.eu, ptr %i.es, align 8
  %i.ew = add nuw i64 %.262125, 1                 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, %storemerge.i
  %i.ey = and i1 %i.ex, %i.ev
  br i1 %i.ey, label %.lr.ph126, label %._crit_edge, !llvm.loop !140

._crit_edge:                                      ; preds = %.lr.ph126, %.preheader
  %.262.lcssa = phi i64 [ %.161.lcssa, %.preheader ], [ %i.ew, %.lr.ph126 ] ; 4 uses
  %.lcssa = phi i1 [ %i.eg, %.preheader ], [ %i.ev, %.lr.ph126 ]
  %i.ez = icmp eq i64 %.262.lcssa, %storemerge.i  ; 2 uses
  %or.cond = and i1 %i.ez, %.lcssa
  br i1 %or.cond, label %bb.q, label %bb.x

bb.q:                                             ; preds = %._crit_edge
  %i.fa = add i64 %storemerge.i, 1
  %spec.select.i77 = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 288230376151711744) ; 5 uses
  %i.fb = load i8, ptr %i.bh, align 1, !tbaa !68, !range !65, !noundef !66
  %i.fc = trunc nuw i8 %i.fb to i1
  %i.fd = load i64, ptr %0, align 16
  %spec.select.i8.i78 = select i1 %i.fc, i64 2, i64 %i.fd ; 2 uses
  %i.fe = icmp ugt i64 %spec.select.i77, %spec.select.i8.i78
  br i1 %i.fe, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i79, label %bb.v

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i79: ; preds = %bb.q
  %i.ff = shl nuw nsw i64 %spec.select.i8.i78, 2
  %.sroa.speculated16.i80 = tail call i64 @llvm.umax.i64(i64 %i.ff, i64 %spec.select.i77)
  %.sroa.speculated.i81 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i80, i64 288230376151711744) ; 2 uses
  %i.fg = shl nuw nsw i64 %.sroa.speculated.i81, 3
  %i.fh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #30 ; 2 uses
  %i.fi = load i8, ptr %i.bh, align 1, !tbaa !68, !range !65, !noundef !66
  %i.fj = trunc nuw i8 %i.fi to i1                ; 2 uses
  %i.fk = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.fl = select i1 %i.fj, ptr %0, ptr %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 16, !tbaa !67
  %i.fo = shl i64 %i.fn, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fh, ptr align 8 %i.fl, i64 %i.fo, i1 false)
  br i1 %i.fj, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i79
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.fq = load i8, ptr %i.fp, align 2, !tbaa !129, !range !65, !noundef !66
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fs = load i64, ptr %0, align 16
  %i.ft = shl i64 %i.fs, 3
  tail call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.ft) #33
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i79
  store i8 0, ptr %i.bh, align 1, !tbaa !68
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i64 %spec.select.i77, ptr %i.fm, align 16, !tbaa !67
  store i64 %.sroa.speculated.i81, ptr %0, align 16, !tbaa !16
  store ptr %i.fh, ptr %i.cr, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82

bb.v:                                             ; preds = %bb.q
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i77, ptr %i.fu, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82: ; preds = %bb.u, %bb.v
  %i.fv = icmp ugt i64 %spec.select.i77, %storemerge.i
  br i1 %i.fv, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82
  %i.fw = load i8, ptr %i.bh, align 1, !tbaa !68, !range !65, !noundef !66
  %i.fx = trunc nuw i8 %i.fw to i1
  %i.fy = load ptr, ptr %i.cr, align 8
  %i.fz = select i1 %i.fx, ptr %0, ptr %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %storemerge.i
  store i64 1, ptr %i.ga, align 8, !tbaa !69
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

bb.z:                                             ; preds = %bb.x, %bb.y, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit82, %bb.w
  %i.ge = load i8, ptr %i.bh, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = load ptr, ptr %i.cr, align 8
  %i.gh = select i1 %i.gf, ptr %0, ptr %i.gg      ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.gi, align 16, !tbaa !67
  %i.gj = add i64 %.promoted, -1                  ; 2 uses
  %.not.i129 = icmp eq i64 %i.gj, 0
  br i1 %.not.i129, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.z, %bb.aa
  %i.gk = phi i64 [ %i.gq, %bb.aa ], [ %i.gj, %bb.z ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !69
  %.not2.i = icmp eq i64 %i.gm, 0
  br i1 %.not2.i, label %bb.aa, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread: ; preds = %.lr.ph131
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !62, !range !65, !noundef !66
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.go, ptr %i.gp, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.aa:                                            ; preds = %.lr.ph131
  store i64 %i.gk, ptr %i.gi, align 16, !tbaa !67
  %i.gq = add i64 %i.gk, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph131, !llvm.loop !136

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %bb.aa, %bb.z
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !62, !range !65, !noundef !66 ; 2 uses
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.gs, ptr %i.gu, align 8, !tbaa !62
  br i1 %i.gt, label %bb.ab, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ab:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.gv = load i64, ptr %i.gh, align 8, !tbaa !69
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %bb.ac, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.gu, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.ac, %bb.ab, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.thread, %bb.j, %bb.i, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare { i8, i64 } @llvm.x86.subborrow.64(i8, i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare { i8, i64 } @llvm.x86.addcarry.64(i8, i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_RKy(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !69
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !68, !range !65, !noundef !66
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = load i64, ptr %0, align 16
  %i.f = icmp ne i64 %i.e, 0
  %.not52 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not52, label %bb.g, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.h = load i8, ptr %i.b, align 1, !tbaa !68, !range !65, !noundef !66
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = select i1 %i.i, ptr %0, ptr %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 16, !tbaa !67
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.l, i64 %i.o, i1 false)
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = load i8, ptr %i.p, align 2, !tbaa !129, !range !65, !noundef !66
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 16
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.t) #33
  %.pre57.pre = load i8, ptr %i.b, align 1, !tbaa !68, !range !65
  %i.u = trunc nuw i8 %.pre57.pre to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc
  store i8 0, ptr %i.b, align 1, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre57 = phi i1 [ false, %bb.e ], [ %i.u, %bb.d ]
  store i64 1, ptr %i.m, align 16, !tbaa !67
  store i64 1, ptr %0, align 16, !tbaa !16
  store ptr %i.g, ptr %i.j, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.v, align 16, !tbaa !67
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.g, %bb.f
  %.pre-phi = phi i1 [ %i.d, %bb.g ], [ %.pre57, %bb.f ]
  %i.y = phi ptr [ %.pre59, %bb.g ], [ %i.g, %bb.f ]
  %i.z = select i1 %.pre-phi, ptr %0, ptr %i.y
  store i64 0, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.aa, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %1, %0
  br i1 %.not37, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge, label %bb.j

._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge: ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !67
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 288230376151711744) ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !68, !range !65, !noundef !66
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i64, ptr %0, align 16
  %spec.select.i8.i40 = select i1 %i.af, i64 2, i64 %i.ag ; 2 uses
  %i.ah = icmp ugt i64 %spec.select.i, %spec.select.i8.i40
  br i1 %i.ah, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41, label %bb.n

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41: ; preds = %bb.j
  %i.ai = shl nuw nsw i64 %spec.select.i8.i40, 2
  %.sroa.speculated16.i42 = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %spec.select.i)
  %.sroa.speculated.i43 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i42, i64 288230376151711744) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated.i43, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #30 ; 3 uses
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !68, !range !65, !noundef !66
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = select i1 %i.am, ptr %0, ptr %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !67
  %i.as = shl i64 %i.ar, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br i1 %i.am, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.au = load i8, ptr %i.at, align 2, !tbaa !129, !range !65, !noundef !66
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i64, ptr %0, align 16
  %i.ax = shl i64 %i.aw, 3
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ax) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread

bb.m:                                             ; preds = %bb.k, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41
  store i8 0, ptr %i.ad, align 1, !tbaa !68
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread: ; preds = %bb.l, %bb.m
  store i64 %spec.select.i, ptr %i.aq, align 16, !tbaa !67
  store i64 %.sroa.speculated.i43, ptr %0, align 16, !tbaa !16
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = select i1 %i.ba, ptr %0, ptr %i.ak      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.idx64 = shl nuw nsw i64 %spec.select.i, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx64
  br label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i, ptr %i.bf, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44: ; preds = %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge, %bb.n
  %i.bg = phi i64 [ %.pre, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge ], [ %spec.select.i, %bb.n ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !68, !range !65, !noundef !66
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = select i1 %i.bj, ptr %0, ptr %i.bl      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not3853 = icmp eq i64 %i.bg, 0
  br i1 %.not3853, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44
  %i.bp = phi ptr [ %i.be, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bo, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bq = phi ptr [ %i.bd, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bn, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.br = phi ptr [ %i.bc, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bm, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bs = phi ptr [ %i.bb, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bk, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.bt = phi i1 [ %i.ba, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bj, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bu = phi ptr [ %i.ay, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.bv = phi i64 [ %spec.select.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bg, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = select i1 %i.by, ptr %1, ptr %i.ca
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.056 = phi ptr [ %i.cl, %.lr.ph ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %.03255 = phi ptr [ %i.ck, %.lr.ph ], [ %i.br, %.lr.ph.preheader ] ; 2 uses
  %.03354 = phi i128 [ %i.cj, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.cc = load i64, ptr %.056, align 8, !tbaa !69
  %i.cd = zext i64 %i.cc to i128
  %i.ce = load i64, ptr %2, align 8, !tbaa !69
  %i.cf = zext i64 %i.ce to i128
  %i.cg = mul nuw i128 %i.cf, %i.cd
  %i.ch = add nuw i128 %i.cg, %.03354             ; 2 uses
  %i.ci = trunc i128 %i.ch to i64
  store i64 %i.ci, ptr %.03255, align 8, !tbaa !69
  %i.cj = lshr i128 %i.ch, 64                     ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.03255, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %.not38 = icmp eq ptr %i.ck, %i.bp
  br i1 %.not38, label %._crit_edge, label %.lr.ph, !llvm.loop !141

._crit_edge:                                      ; preds = %.lr.ph
  %.not39 = icmp eq i128 %i.cj, 0
  br i1 %.not39, label %._crit_edge.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.cm = add i64 %i.bv, 1
  %spec.select.i45 = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 288230376151711744) ; 5 uses
  %i.cn = load i64, ptr %0, align 16
  %spec.select.i8.i46 = select i1 %i.bt, i64 2, i64 %i.cn ; 2 uses
  %i.co = icmp ugt i64 %spec.select.i45, %spec.select.i8.i46
  br i1 %i.co, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i47, label %bb.t

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i47: ; preds = %bb.o
  %i.cp = shl nuw nsw i64 %spec.select.i8.i46, 2
  %.sroa.speculated16.i48 = tail call i64 @llvm.umax.i64(i64 %i.cp, i64 %spec.select.i45)
  %.sroa.speculated.i49 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i48, i64 288230376151711744) ; 2 uses
  %i.cq = shl nuw nsw i64 %.sroa.speculated.i49, 3
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #30 ; 2 uses
  %i.cs = load i8, ptr %i.bu, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ct = trunc nuw i8 %i.cs to i1                ; 2 uses
  %i.cu = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.cv = select i1 %i.ct, ptr %0, ptr %i.cu
  %i.cw = load i64, ptr %i.bq, align 16, !tbaa !67
  %i.cx = shl i64 %i.cw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr align 8 %i.cv, i64 %i.cx, i1 false)
  br i1 %i.ct, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i47
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !129, !range !65, !noundef !66
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.db = load i64, ptr %0, align 16
  %i.dc = shl i64 %i.db, 3
  tail call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.dc) #33
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i47
  store i8 0, ptr %i.bu, align 1, !tbaa !68
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 %spec.select.i45, ptr %i.bq, align 16, !tbaa !67
  store i64 %.sroa.speculated.i49, ptr %0, align 16, !tbaa !16
  store ptr %i.cr, ptr %i.bs, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit50

bb.t:                                             ; preds = %bb.o
  store i64 %spec.select.i45, ptr %i.bq, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit50

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit50: ; preds = %bb.s, %bb.t
  %i.dd = icmp ugt i64 %spec.select.i45, %i.bv
  br i1 %i.dd, label %bb.u, label %._crit_edge.thread

bb.u:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit50
  %i.de = trunc nuw i128 %i.cj to i64
  %i.df = load i8, ptr %i.bu, align 1, !tbaa !68, !range !65, !noundef !66
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = load ptr, ptr %i.bs, align 8
  %i.di = select i1 %i.dg, ptr %0, ptr %i.dh
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.bv
  store i64 %i.de, ptr %i.dj, align 8, !tbaa !69
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit50, %bb.u, %._crit_edge
  %i.dk = phi ptr [ %i.bu, %._crit_edge ], [ %i.bu, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit50 ], [ %i.bu, %bb.u ], [ %i.bh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.dl = phi ptr [ %i.bs, %._crit_edge ], [ %i.bs, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit50 ], [ %i.bs, %bb.u ], [ %i.bk, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.dm = phi ptr [ %i.bq, %._crit_edge ], [ %i.bq, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit50 ], [ %i.bq, %bb.u ], [ %i.bn, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !62, !range !65, !noundef !66 ; 2 uses
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.do, ptr %i.dq, align 8, !tbaa !62
  %i.dr = load i64, ptr %i.dm, align 16
  %i.ds = icmp eq i64 %i.dr, 1
  %or.cond.i = select i1 %i.dp, i1 %i.ds, i1 false
  br i1 %or.cond.i, label %bb.v, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.v:                                             ; preds = %._crit_edge.thread
  %i.dt = load i8, ptr %i.dk, align 1, !tbaa !68, !range !65, !noundef !66
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = load ptr, ptr %i.dl, align 8
  %i.dw = select i1 %i.du, ptr %0, ptr %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !69
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.w, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.dq, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.w, %bb.v, %._crit_edge.thread, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2IxEERKT_PKNSt9enable_ifIXaasr3std16is_constructibleIS7_SA_EE5valuentsr3std17is_floating_pointISA_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.b = tail call noundef i64 @llvm.abs.i64(i64 %i.a, i1 false)
  store i64 %i.b, ptr %0, align 16, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.c, align 16, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.lobit.i = lshr i64 %i.a, 63
  %i.e = trunc nuw nsw i64 %.lobit.i to i8
  store i8 %i.e, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 1, ptr %i.f, align 1, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.g, align 2, !tbaa !129
  %i.h = load atomic i8, ptr @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result) #29
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !68, !alias.scope !142
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 26), align 2, !tbaa !129, !alias.scope !142
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !67, !alias.scope !142
  store i64 1, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, align 16, !tbaa !69, !alias.scope !142
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !62, !alias.scope !142
  %i.k = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev, ptr nonnull @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr nonnull @__dso_handle) #29 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result) #29
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  store i64 0, ptr %i.l, align 16, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 26), align 2, !tbaa !129, !range !65, !noundef !66
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !67
  store i64 %i.p, ptr %i.m, align 16, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !62, !range !65, !noundef !66
  store i8 %i.r, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.s, align 1, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 1, ptr %i.t, align 2, !tbaa !129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.l, ptr noundef nonnull align 16 dereferenceable(27) @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16, i1 false), !tbaa.struct !145
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit

bb.e:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit
  store i64 0, ptr %i.m, align 16, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !62, !range !65, !noundef !66
  store i8 %i.v, ptr %i.u, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 4 uses
  store i8 1, ptr %i.w, align 1, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  store i8 0, ptr %i.x, align 2, !tbaa !129
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !67 ; 3 uses
  %spec.select.i3 = tail call i64 @llvm.umin.i64(i64 %i.y, i64 288230376151711744) ; 3 uses
  %i.z = icmp ugt i64 %i.y, 2
  br i1 %i.z, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.j

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.e
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i3, i64 8) ; 2 uses
  %i.aa = shl nuw nsw i64 %.sroa.speculated16.i, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #30
          to label %.noexc unwind label %.body    ; 4 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ac = load i8, ptr %i.w, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = select i1 %i.ad, ptr %i.l, ptr %i.af
  %i.ah = load i64, ptr %i.m, align 16, !tbaa !67
  %i.ai = shl i64 %i.ah, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.ag, i64 %i.ai, i1 false)
  br i1 %i.ad, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.aj = load i8, ptr %i.x, align 2, !tbaa !129, !range !65, !noundef !66
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.l, align 16
  %i.am = shl i64 %i.al, 3
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.am) #33
  %.pre.pre = load i8, ptr %i.w, align 1, !tbaa !68, !range !65
  %i.an = trunc nuw i8 %.pre.pre to i1
  %i.ao = select i1 %i.an, ptr %i.l, ptr %i.ab
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.noexc
  store i8 0, ptr %i.w, align 1, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre = phi ptr [ %i.ab, %bb.h ], [ %i.ao, %bb.g ]
  store i64 %spec.select.i3, ptr %i.m, align 16, !tbaa !67
  store i64 %.sroa.speculated16.i, ptr %i.l, align 16, !tbaa !16
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !16
  %.pre6 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.j:                                             ; preds = %bb.e
  store i64 %spec.select.i3, ptr %i.m, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.j, %bb.i
  %i.ap = phi i64 [ %i.y, %bb.j ], [ %.pre6, %bb.i ]
  %i.aq = phi ptr [ %i.l, %bb.j ], [ %.pre, %bb.i ]
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !68, !range !65, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 8), align 8
  %i.au = select i1 %i.as, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr %i.at
  %i.av = shl i64 %i.ap, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %i.au, i64 %i.av, i1 false)
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit

.body:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load i8, ptr %i.f, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr %i.g, align 2, !range !65
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.k

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  ret void

bb.k:                                             ; preds = %.body
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %0, align 16
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %.body, %bb.k
  resume { ptr, i32 } %i.aw
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 20 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 16, !tbaa !67  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !67  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !68, !range !65, !noundef !66
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = select i1 %i.i, ptr %1, ptr %i.k         ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !68, !range !65, !noundef !66
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %i.o, ptr %2, ptr %i.q         ; 4 uses
  %i.s = icmp eq i64 %i.d, 1
  br i1 %i.s, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !62, !range !65, !noundef !66
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !62, !range !65, !noundef !66
  %i.x = icmp ne i8 %i.u, %i.w                    ; 2 uses
  %i.y = icmp eq i64 %i.f, 1
  br i1 %i.y, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.l, align 8, !tbaa !69
  %i.aa = zext i64 %i.z to i128
  %i.ab = load i64, ptr %i.r, align 8, !tbaa !69
  %i.ac = zext i64 %i.ab to i128
  %i.ad = mul nuw i128 %i.ac, %i.aa               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ag = trunc nuw i8 %i.af to i1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.ag, ptr %0, ptr %i.ai      ; 2 uses
  %i.ak = trunc i128 %i.ad to i64
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !69
  %i.al = lshr i128 %i.ad, 64                     ; 2 uses
  %i.am = trunc nuw i128 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !69
  %.not.i111 = icmp eq i128 %i.al, 0              ; 2 uses
  %i.ao = select i1 %.not.i111, i64 1, i64 2      ; 4 uses
  %i.ap = load i64, ptr %0, align 16
  %spec.select.i8.i = select i1 %i.ag, i64 2, i64 %i.ap ; 2 uses
  %i.aq = icmp ugt i64 %i.ao, %spec.select.i8.i
  br i1 %i.aq, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.h

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.c
  %i.ar = shl nuw nsw i64 %spec.select.i8.i, 2
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.ao) ; 2 uses
  %i.as = shl nuw nsw i64 %.sroa.speculated16.i, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #30
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.au = load i8, ptr %i.ae, align 1, !tbaa !68, !range !65, !noundef !66
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  %i.aw = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.ax = select i1 %i.av, ptr %0, ptr %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 16, !tbaa !67
  %i.ba = shl i64 %i.az, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  br i1 %i.av, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !129, !range !65, !noundef !66
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = load i64, ptr %0, align 16
  %i.bf = shl i64 %i.be, 3
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.bf) #33
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %.noexc
  store i8 0, ptr %i.ae, align 1, !tbaa !68
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i64 %i.ao, ptr %i.ay, align 16, !tbaa !67
  store i64 %.sroa.speculated16.i, ptr %0, align 16, !tbaa !16
  store ptr %i.at, ptr %i.ah, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.h:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.bg, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #34
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.h, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bj, align 8, !tbaa !62
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.bk = load i64, ptr %i.l, align 8, !tbaa !69
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !69
  call void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_RKy(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.phi.trans.insert171 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre172 = load i64, ptr %.phi.trans.insert171, align 16
  %i.bl = icmp eq i64 %.pre172, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit
  %i.bm = phi i1 [ %i.bl, %bb.j ], [ %.not.i111, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIoEENSt9enable_ifIXaasr3std7is_sameIT_oEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit ]
  %i.bn = zext i1 %i.x to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.bn, ptr %i.bo, align 8, !tbaa !62
  %or.cond.i116 = select i1 %i.x, i1 %i.bm, i1 false
  br i1 %or.cond.i116, label %bb.l, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !68, !range !65, !noundef !66
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = select i1 %i.br, ptr %0, ptr %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !69
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.bo, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.n:                                             ; preds = %bb.a
  %i.bx = icmp eq i64 %i.f, 1
  br i1 %i.bx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !62, !range !65, !noundef !66
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !62, !range !65, !noundef !66
  %i.cc = icmp ne i8 %i.bz, %i.cb                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !69
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !69
  call void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_RKy(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ce = zext i1 %i.cc to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.ce, ptr %i.cf, align 8, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load i64, ptr %i.cg, align 16
  %i.ci = icmp eq i64 %i.ch, 1
  %or.cond.i117 = select i1 %i.cc, i1 %i.ci, i1 false
  br i1 %or.cond.i117, label %bb.p, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118

bb.p:                                             ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !68, !range !65, !noundef !66
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = select i1 %i.cl, ptr %0, ptr %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !69
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.q, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.cf, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.r:                                             ; preds = %bb.n
  %i.cr = icmp eq ptr %0, %1
  br i1 %i.cr, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 16, !tbaa !16
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !129, !range !65, !noundef !66
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 %i.d, ptr %i.cs, align 16, !tbaa !67
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !62, !range !65, !noundef !66
  store i8 %i.cy, ptr %i.cw, align 8, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 25 ; 2 uses
  store i8 0, ptr %i.cz, align 1, !tbaa !68
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 2 uses
  store i8 1, ptr %i.da, align 2, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %1, i64 16, i1 false), !tbaa.struct !145
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit

bb.u:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !62, !range !65, !noundef !66
  store i8 %i.dd, ptr %i.db, align 8, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 25 ; 3 uses
  store i8 1, ptr %i.de, align 1, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 2 uses
  store i8 0, ptr %i.df, align 2, !tbaa !129
  %spec.select.i119 = tail call i64 @llvm.umin.i64(i64 %i.d, i64 288230376151711744) ; 3 uses
  %i.dg = icmp ult i64 %i.d, 3
  br i1 %i.dg, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.speculated16.i122 = tail call i64 @llvm.umax.i64(i64 %spec.select.i119, i64 8) ; 2 uses
  %i.dh = shl nuw nsw i64 %.sroa.speculated16.i122, 3
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #30 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.de, align 1, !tbaa !68
  %.pre170.pre = load i64, ptr %i.c, align 16, !tbaa !67
  %.pre169.pre = load ptr, ptr %i.j, align 8
  %.pre168.pre = load i8, ptr %i.g, align 1, !tbaa !68, !range !65
  store i64 %spec.select.i119, ptr %i.cs, align 16, !tbaa !67
  store i64 %.sroa.speculated16.i122, ptr %3, align 16, !tbaa !16
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !16
  %.pre179 = trunc nuw i8 %.pre168.pre to i1
  %.pre180 = select i1 %.pre179, ptr %1, ptr %.pre169.pre
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit125

bb.w:                                             ; preds = %bb.u
  store i64 %spec.select.i119, ptr %i.cs, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit125

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit125: ; preds = %bb.w, %bb.v
  %i.dk = phi ptr [ %3, %bb.w ], [ %i.di, %bb.v ]
  %.pre-phi181 = phi ptr [ %i.l, %bb.w ], [ %.pre180, %bb.v ]
  %i.dl = phi i64 [ %i.d, %bb.w ], [ %.pre170.pre, %bb.v ]
  %i.dm = shl i64 %i.dl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %.pre-phi181, i64 %i.dm, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit

common.resume:                                    ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit105, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit105 ], [ %i.fm, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit: ; preds = %bb.t, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit125
  %i.dn = phi ptr [ %i.da, %bb.t ], [ %i.df, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit125 ] ; 2 uses
  %i.do = phi ptr [ %i.cz, %bb.t ], [ %i.de, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit125 ] ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %2)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !68, !range !65, !noundef !66
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = load i8, ptr %i.dn, align 2, !range !65
  %i.ds = trunc nuw i8 %i.dr to i1
  %or.cond.i106 = select i1 %i.dq, i1 true, i1 %i.ds
  br i1 %or.cond.i106, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load i64, ptr %3, align 16
  %i.dw = shl i64 %i.dv, 3
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dw) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.z:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load i8, ptr %i.do, align 1, !tbaa !68, !range !65, !noundef !66
  %i.dz = trunc nuw i8 %i.dy to i1
  %i.ea = load i8, ptr %i.dn, align 2, !range !65
  %i.eb = trunc nuw i8 %i.ea to i1
  %or.cond.i104 = select i1 %i.dz, i1 true, i1 %i.eb
  br i1 %or.cond.i104, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit105, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = load i64, ptr %3, align 16
  %i.ef = shl i64 %i.ee, 3
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.ef) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit105

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit105: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

bb.ab:                                            ; preds = %bb.r
  %i.eg = icmp eq ptr %0, %2
  br i1 %i.eg, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i64 0, ptr %4, align 16, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !129, !range !65, !noundef !66
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.f, ptr %i.eh, align 16, !tbaa !67
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.en = load i8, ptr %i.em, align 8, !tbaa !62, !range !65, !noundef !66
  store i8 %i.en, ptr %i.el, align 8, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 2 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !68
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  store i8 1, ptr %i.ep, align 2, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %4, ptr noundef nonnull align 16 dereferenceable(27) %2, i64 16, i1 false), !tbaa.struct !145
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113

bb.ae:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.es = load i8, ptr %i.er, align 8, !tbaa !62, !range !65, !noundef !66
  store i8 %i.es, ptr %i.eq, align 8, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 3 uses
  store i8 1, ptr %i.et, align 1, !tbaa !68
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  store i8 0, ptr %i.eu, align 2, !tbaa !129
  %spec.select.i126 = tail call i64 @llvm.umin.i64(i64 %i.f, i64 288230376151711744) ; 3 uses
  %i.ev = icmp ult i64 %i.f, 3
  br i1 %i.ev, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.speculated16.i129 = tail call i64 @llvm.umax.i64(i64 %spec.select.i126, i64 8) ; 2 uses
  %i.ew = shl nuw nsw i64 %.sroa.speculated16.i129, 3
  %i.ex = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #30 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.et, align 1, !tbaa !68
  %.pre165.pre = load i64, ptr %i.e, align 16, !tbaa !67
  %.pre164.pre = load ptr, ptr %i.p, align 8
  %.pre163.pre = load i8, ptr %i.m, align 1, !tbaa !68, !range !65
  store i64 %spec.select.i126, ptr %i.eh, align 16, !tbaa !67
  store i64 %.sroa.speculated16.i129, ptr %4, align 16, !tbaa !16
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !16
  %.pre182 = trunc nuw i8 %.pre163.pre to i1
  %.pre184 = select i1 %.pre182, ptr %2, ptr %.pre164.pre
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit132

bb.ag:                                            ; preds = %bb.ae
  store i64 %spec.select.i126, ptr %i.eh, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit132

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit132: ; preds = %bb.ag, %bb.af
  %i.ez = phi ptr [ %4, %bb.ag ], [ %i.ex, %bb.af ]
  %.pre-phi185 = phi ptr [ %i.r, %bb.ag ], [ %.pre184, %bb.af ]
  %i.fa = phi i64 [ %i.f, %bb.ag ], [ %.pre165.pre, %bb.af ]
  %i.fb = shl i64 %i.fa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr align 8 %.pre-phi185, i64 %i.fb, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113: ; preds = %bb.ad, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit132
  %i.fc = phi ptr [ %i.ep, %bb.ad ], [ %i.eu, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit132 ] ; 2 uses
  %i.fd = phi ptr [ %i.eo, %bb.ad ], [ %i.et, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit132 ] ; 2 uses
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %4)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = load i8, ptr %i.fc, align 2, !range !65
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i102 = select i1 %i.ff, i1 true, i1 %i.fh
  br i1 %or.cond.i102, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load i64, ptr %4, align 16
  %i.fl = shl i64 %i.fk, 3
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fl) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.aj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load i8, ptr %i.fd, align 1, !tbaa !68, !range !65, !noundef !66
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = load i8, ptr %i.fc, align 2, !range !65
  %i.fq = trunc nuw i8 %i.fp to i1
  %or.cond.i = select i1 %i.fo, i1 true, i1 %i.fq
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i64, ptr %4, align 16
  %i.fu = shl i64 %i.ft, 3
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

bb.al:                                            ; preds = %bb.ab
  %i.fv = add i64 %i.f, %i.d
  %spec.select.i133 = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 288230376151711744) ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 6 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = load i64, ptr %0, align 16
  %spec.select.i8.i134 = select i1 %i.fy, i64 2, i64 %i.fz ; 2 uses
  %i.ga = icmp ugt i64 %spec.select.i133, %spec.select.i8.i134
  br i1 %i.ga, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135, label %bb.aq

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135: ; preds = %bb.al
  %i.gb = shl nuw nsw i64 %spec.select.i8.i134, 2
  %.sroa.speculated16.i136 = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %spec.select.i133)
  %.sroa.speculated.i137 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i136, i64 288230376151711744) ; 2 uses
  %i.gc = shl nuw nsw i64 %.sroa.speculated.i137, 3
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #30 ; 2 uses
  %i.ge = load i8, ptr %i.fw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gf = trunc nuw i8 %i.ge to i1                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = select i1 %i.gf, ptr %0, ptr %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !67
  %i.gl = shl i64 %i.gk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br i1 %i.gf, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !129, !range !65, !noundef !66
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = load i64, ptr %0, align 16
  %i.gq = shl i64 %i.gp, 3
  tail call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gq) #33
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  store i8 0, ptr %i.fw, align 1, !tbaa !68
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i64 %spec.select.i133, ptr %i.gj, align 16, !tbaa !67
  store i64 %.sroa.speculated.i137, ptr %0, align 16, !tbaa !16
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

bb.aq:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select.i133, ptr %i.gr, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138: ; preds = %bb.ap, %bb.aq
  %i.gs = icmp ugt i64 %i.d, 39
  %i.gt = icmp ugt i64 %i.f, 39
  %or.cond = and i1 %i.gs, %i.gt
  br i1 %or.cond, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  tail call void @_ZN5boost14multiprecision8backends15setup_karatsubaILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_fixed_precisionINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !62, !range !65, !noundef !66
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !62, !range !65, !noundef !66
  %i.gy = icmp ne i8 %i.gv, %i.gx                 ; 2 uses
  %i.gz = zext i1 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.gz, ptr %i.ha, align 8, !tbaa !62
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hc = load i64, ptr %i.hb, align 16
  %i.hd = icmp eq i64 %i.hc, 1
  %or.cond.i139 = select i1 %i.gy, i1 %i.hd, i1 false
  br i1 %or.cond.i139, label %bb.as, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.as:                                            ; preds = %bb.ar
  %i.he = load i8, ptr %i.fw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = select i1 %i.hf, ptr %0, ptr %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !69
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.at, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.at:                                            ; preds = %bb.as
  store i8 0, ptr %i.ha, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.au:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  %i.hl = load i8, ptr %i.fw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = select i1 %i.hm, ptr %0, ptr %i.ho      ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.hr = shl nuw nsw i64 %spec.select.i133, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hp, i8 0, i64 %i.hr, i1 false)
  %.not = icmp eq i64 %i.d, 0
  %.not158 = icmp eq i64 %i.f, 0
  %or.cond200 = select i1 %.not, i1 true, i1 %.not158
  br i1 %or.cond200, label %._crit_edge154, label %.preheader.us

.preheader.us:                                    ; preds = %bb.au, %bb.ay
  %.088153.us = phi i64 [ %i.in, %bb.ay ], [ 0, %bb.au ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.088153.us
  %i.ht = getelementptr [8 x i8], ptr %i.hp, i64 %.088153.us
  br label %bb.av

bb.av:                                            ; preds = %.preheader.us, %bb.av
  %.0151.us = phi i64 [ 0, %.preheader.us ], [ %i.ih, %bb.av ] ; 3 uses
  %.1150.us = phi i128 [ 0, %.preheader.us ], [ %i.ig, %bb.av ]
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !69
  %i.hv = zext i64 %i.hu to i128
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0151.us
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !69
  %i.hy = zext i64 %i.hx to i128
  %i.hz = mul nuw i128 %i.hy, %i.hv
  %i.ia = add nuw i128 %i.hz, %.1150.us
  %i.ib = getelementptr [8 x i8], ptr %i.ht, i64 %.0151.us ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !69
  %i.id = zext i64 %i.ic to i128
  %i.ie = add nuw i128 %i.ia, %i.id               ; 2 uses
  %i.if = trunc i128 %i.ie to i64
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !69
  %i.ig = lshr i128 %i.ie, 64                     ; 3 uses
  %i.ih = add nuw i64 %.0151.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ih, %i.f
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.av, !llvm.loop !148

bb.aw:                                            ; preds = %._crit_edge.us
  %i.ii = add i64 %i.f, %.088153.us               ; 2 uses
  %i.ij = load i64, ptr %i.hq, align 16, !tbaa !67
  %i.ik = icmp ult i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.il = trunc nuw i128 %i.ig to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ii
  store i64 %i.il, ptr %i.im, align 8, !tbaa !69
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.us
  %i.in = add nuw i64 %.088153.us, 1              ; 2 uses
  %exitcond162.not = icmp eq i64 %i.in, %i.d
  br i1 %exitcond162.not, label %._crit_edge154, label %.preheader.us, !llvm.loop !149

._crit_edge.us:                                   ; preds = %bb.av
  %.not.us = icmp eq i128 %i.ig, 0
  br i1 %.not.us, label %bb.ay, label %bb.aw

._crit_edge154:                                   ; preds = %bb.ay, %bb.au
  %i.io = load i8, ptr %i.fw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = load ptr, ptr %i.hn, align 8
  %i.ir = select i1 %i.ip, ptr %0, ptr %i.iq      ; 3 uses
  %.promoted = load i64, ptr %i.hq, align 16, !tbaa !67 ; 2 uses
  %i.is = add i64 %.promoted, -1                  ; 3 uses
  %.not.i155 = icmp eq i64 %i.is, 0
  br i1 %.not.i155, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge154
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !69
  %.not2.i202 = icmp eq i64 %i.iu, 0
  br i1 %.not2.i202, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

.lr.ph:                                           ; preds = %.lr.ph203
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.iy
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !69
  %.not2.i = icmp eq i64 %i.iw, 0
  br i1 %.not2.i, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, !llvm.loop !136

.lr.ph203:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ix = phi i64 [ %i.iy, %.lr.ph ], [ %i.is, %.lr.ph.preheader ] ; 4 uses
  %i.iy = add i64 %i.ix, -1                       ; 3 uses
  %.not.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, label %.lr.ph, !llvm.loop !136

._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge: ; preds = %.lr.ph203
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, !llvm.loop !136

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit: ; preds = %.lr.ph
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, %.lr.ph.preheader
  %.lcssa.ph = phi i64 [ %.promoted, %.lr.ph.preheader ], [ 1, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge ], [ %i.ix, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit ]
  %i.iz = icmp eq i64 %.lcssa.ph, 1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, %._crit_edge154
  %.lcssa = phi i1 [ true, %._crit_edge154 ], [ %i.iz, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !62, !range !65, !noundef !66
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !62, !range !65, !noundef !66
  %i.je = icmp ne i8 %i.jb, %i.jd                 ; 2 uses
  %i.jf = zext i1 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 %i.jf, ptr %i.jg, align 8, !tbaa !62
  %or.cond.i141 = and i1 %.lcssa, %i.je
  br i1 %or.cond.i141, label %bb.az, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.az:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.jh = load i64, ptr %i.ir, align 8, !tbaa !69
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.ba, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.jg, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.ba, %bb.az, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.at, %bb.as, %bb.ar, %bb.m, %bb.l, %bb.k, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends15setup_karatsubaILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_fixed_precisionINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [300 x i64], align 16             ; 4 uses
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_base<0, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::scoped_shared_storage", align 8 ; 10 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_base<0, 18446744073709551615, boost::multiprecision::signed_magnitude, boost::multiprecision::unchecked, std::allocator<unsigned long long>>::scoped_shared_storage", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 16, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !67
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.e) ; 2 uses
  %i.g = mul i64 %i.f, 5                          ; 5 uses
  %i.h = icmp ult i64 %i.g, 300
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.a, ptr %3, align 8, !tbaa !150
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.i, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !153
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.k, align 8, !tbaa !154
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.k, align 8, !tbaa !154, !range !65, !noundef !66
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !150
  %i.o = load i64, ptr %i.i, align 8, !tbaa !152
  %i.p = shl i64 %i.o, 3
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.p) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i8, ptr %i.k, align 8, !tbaa !154, !range !65, !noundef !66
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %3, align 8, !tbaa !150
  %i.u = load i64, ptr %i.i, align 8, !tbaa !152
  %i.v = shl i64 %i.u, 3
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.g, ptr %i.w, align 8, !tbaa !152
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.x, align 8, !tbaa !153
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i8 0, ptr %i.y, align 8, !tbaa !154
  %i.z = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.z, label %bb.h, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit, !prof !155

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.aa, label %.noexc.i, label %.noexc5.i

.noexc.i:                                         ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc5.i:                                        ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit: ; preds = %bb.g
  %i.ab = mul i64 %i.f, 40
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30
  store ptr %i.ac, ptr %4, align 8, !tbaa !150
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit
  %i.ad = load i8, ptr %i.y, align 8, !tbaa !154, !range !65, !noundef !66
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %4, align 8, !tbaa !150
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !152
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.m

bb.k:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageC2ERKS5_m.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load i8, ptr %i.y, align 8, !tbaa !154, !range !65, !noundef !66
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %4, align 8, !tbaa !150
  %i.am = load i64, ptr %i.w, align 8, !tbaa !152
  %i.an = shl i64 %i.am, 3
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.n

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit22, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21
  %.pn = phi { ptr, i32 } [ %i.q, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit21 ], [ %i.ai, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageD2Ev.exit23 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %5 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %7 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %8 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 18 uses
  %9 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 14 uses
  %10 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 14 uses
  %11 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %12 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %13 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 16, !tbaa !67  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !67  ; 5 uses
  %i.f = icmp ult i64 %i.c, 40
  %i.g = icmp ult i64 %i.e, 40
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.e) ; 5 uses
  %i.i = lshr i64 %i.h, 1                         ; 3 uses
  %i.j = add nuw i64 %i.i, 1                      ; 11 uses
  %i.k = icmp ult i64 %i.j, %i.c                  ; 2 uses
  %.sroa.speculated134 = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.c) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.m = load i8, ptr %i.l, align 1, !tbaa !68, !range !65, !noundef !66
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %i.n, ptr %1, ptr %i.p         ; 3 uses
  store i64 %.sroa.speculated134, ptr %4, align 16, !tbaa !156
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !158
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %.sroa.speculated134, ptr %i.s, align 16, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.t, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 3 uses
  store i8 0, ptr %i.u, align 1, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 3 uses
  store i8 1, ptr %i.v, align 2, !tbaa !129
  %i.w = add i64 %.sroa.speculated134, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %i.aa, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !69
  %.not2.i.i = icmp eq i64 %i.z, 0
  br i1 %.not2.i.i, label %bb.d, label %.lr.ph.i101.preheader

bb.d:                                             ; preds = %.lr.ph.i
  store i64 %i.x, ptr %i.s, align 16, !tbaa !67
  %i.aa = add nsw i64 %i.x, -1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %.lr.ph.i101.preheader, label %.lr.ph.i, !llvm.loop !136

.lr.ph.i101.preheader:                            ; preds = %bb.d, %.lr.ph.i
  %i.ab = icmp ult i64 %i.j, %i.e                 ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.e) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = select i1 %i.ae, ptr %2, ptr %i.ag      ; 3 uses
  store i64 %.sroa.speculated, ptr %5, align 16, !tbaa !156
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !158
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.aj, align 16, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.ak, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 25 ; 3 uses
  store i8 0, ptr %i.al, align 1, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 26 ; 3 uses
  store i8 1, ptr %i.am, align 2, !tbaa !129
  %i.an = add i64 %.sroa.speculated, -1
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %bb.e
  %i.ao = phi i64 [ %i.ar, %bb.e ], [ %i.an, %.lr.ph.i101.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !69
  %.not2.i.i102 = icmp eq i64 %i.aq, 0
  br i1 %.not2.i.i102, label %bb.e, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104

bb.e:                                             ; preds = %.lr.ph.i101
  store i64 %i.ao, ptr %i.aj, align 16, !tbaa !67
  %i.ar = add i64 %i.ao, -1                       ; 2 uses
  %.not.i.i103 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i103, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104, label %.lr.ph.i101, !llvm.loop !136

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104: ; preds = %.lr.ph.i101, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 0, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.j
  %spec.select = select i1 %i.k, ptr %i.as, ptr %i.a ; 2 uses
  %i.at = sub i64 %i.c, %i.j
  %i.au = select i1 %i.k, i64 %i.at, i64 1        ; 3 uses
  store i64 %i.au, ptr %6, align 16, !tbaa !156
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %spec.select, ptr %i.av, align 8, !tbaa !158
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.aw, align 16, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.ax, align 8, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 25 ; 3 uses
  store i8 0, ptr %i.ay, align 1, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 3 uses
  store i8 1, ptr %i.az, align 2, !tbaa !129
  %i.ba = add i64 %i.au, -1                       ; 2 uses
  %.not.i3.i105 = icmp eq i64 %i.ba, 0
  br i1 %.not.i3.i105, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104, %bb.f
  %i.bb = phi i64 [ %i.be, %bb.f ], [ %i.ba, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !69
  %.not2.i.i107 = icmp eq i64 %i.bd, 0
  br i1 %.not2.i.i107, label %bb.f, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109

bb.f:                                             ; preds = %.lr.ph.i106
  store i64 %i.bb, ptr %i.aw, align 16, !tbaa !67
  %i.be = add i64 %i.bb, -1                       ; 2 uses
  %.not.i.i108 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i108, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109, label %.lr.ph.i106, !llvm.loop !136

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109: ; preds = %.lr.ph.i106, %bb.f, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.j
  %spec.select165 = select i1 %i.ab, ptr %i.bf, ptr %i.a ; 2 uses
  %i.bg = sub i64 %i.e, %i.j
  %i.bh = select i1 %i.ab, i64 %i.bg, i64 1       ; 3 uses
  store i64 %i.bh, ptr %7, align 16, !tbaa !156
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %spec.select165, ptr %i.bi, align 8, !tbaa !158
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 %i.bh, ptr %i.bj, align 16, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.bk, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 25 ; 3 uses
  store i8 0, ptr %i.bl, align 1, !tbaa !68
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 3 uses
  store i8 1, ptr %i.bm, align 2, !tbaa !129
  %i.bn = add i64 %i.bh, -1                       ; 2 uses
  %.not.i3.i110 = icmp eq i64 %i.bn, 0
  br i1 %.not.i3.i110, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109, %bb.g
  %i.bo = phi i64 [ %i.br, %bb.g ], [ %i.bn, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %spec.select165, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !69
  %.not2.i.i112 = icmp eq i64 %i.bq, 0
  br i1 %.not2.i.i112, label %bb.g, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114

bb.g:                                             ; preds = %.lr.ph.i111
  store i64 %i.bo, ptr %i.bj, align 16, !tbaa !67
  %i.br = add i64 %i.bo, -1                       ; 2 uses
  %.not.i.i113 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i113, label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114, label %.lr.ph.i111, !llvm.loop !136

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114: ; preds = %.lr.ph.i111, %bb.g, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.bs = shl i64 %i.j, 1                         ; 8 uses
  %i.bt = add i64 %i.bs, 2                        ; 3 uses
  %i.bu = load ptr, ptr %3, align 8, !tbaa !150   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !153 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bw
  %i.by = add i64 %i.bw, %i.bt                    ; 2 uses
  store i64 %i.bt, ptr %8, align 16, !tbaa !156
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !158
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bt, ptr %i.ca, align 16, !tbaa !67
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.cb, align 8, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 25 ; 4 uses
  store i8 0, ptr %i.cc, align 1, !tbaa !68
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 26 ; 3 uses
  store i8 1, ptr %i.cd, align 2, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.ce = add nuw i64 %i.i, 2                     ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.by
  %i.cg = add i64 %i.by, %i.ce                    ; 2 uses
  store i64 %i.ce, ptr %9, align 16, !tbaa !156
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !158
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ce, ptr %i.ci, align 16, !tbaa !67
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.cj, align 8, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 25 ; 4 uses
  store i8 0, ptr %i.ck, align 1, !tbaa !68
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 26 ; 3 uses
  store i8 1, ptr %i.cl, align 2, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cg
  %i.cn = add i64 %i.cg, %i.ce
  store i64 %i.cn, ptr %i.bv, align 8, !tbaa !153
  store i64 %i.ce, ptr %10, align 16, !tbaa !156
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !158
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.ce, ptr %i.cp, align 16, !tbaa !67
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.cq, align 8, !tbaa !62
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 25 ; 4 uses
  store i8 0, ptr %i.cr, align 1, !tbaa !68
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 26 ; 3 uses
  store i8 1, ptr %i.cs, align 2, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 5 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !68, !range !65, !noundef !66
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = select i1 %i.cv, ptr %0, ptr %i.cx      ; 2 uses
  store i64 %i.bs, ptr %11, align 16, !tbaa !156
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !158
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 %i.bs, ptr %i.da, align 16, !tbaa !67
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i8 0, ptr %i.db, align 8, !tbaa !62
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 25 ; 3 uses
  store i8 0, ptr %i.dc, align 1, !tbaa !68
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 26 ; 3 uses
  store i8 1, ptr %i.dd, align 2, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.df = load i64, ptr %i.de, align 16, !tbaa !67
  %i.dg = sub i64 %i.df, %i.bs                    ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.bs
  store i64 %i.dg, ptr %12, align 16, !tbaa !156
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !158
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 %i.dg, ptr %i.dj, align 16, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i8 0, ptr %i.dk, align 8, !tbaa !62
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 25 ; 3 uses
  store i8 0, ptr %i.dl, align 1, !tbaa !68
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 26 ; 3 uses
  store i8 1, ptr %i.dm, align 2, !tbaa !129
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %11, ptr noundef nonnull align 16 dereferenceable(27) %4, ptr noundef nonnull align 16 dereferenceable(27) %5, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114
  %i.dn = load i64, ptr %i.da, align 16, !tbaa !67 ; 7 uses
  %i.do = icmp ult i64 %i.dn, %i.bs
  br i1 %i.do, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.dp = load i8, ptr %i.ct, align 1, !tbaa !68, !range !65, !noundef !66
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.dr = and i64 %i.h, 2
  %i.ds = xor i64 %i.dr, 2
  %i.dt = sub i64 %i.ds, %i.dn
  %i.du = or i64 %i.h, 1
  %i.dv = sub i64 %i.du, %i.dn
  %xtraiter = and i64 %i.dt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader, %.lr.ph.split.prol
  %.035167.prol = phi i64 [ %i.dy, %.lr.ph.split.prol ], [ %i.dn, %.lr.ph.split.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader ]
  %i.dw = load ptr, ptr %i.cw, align 8
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.035167.prol
  store i64 0, ptr %i.dx, align 8, !tbaa !69
  %i.dy = add nuw i64 %.035167.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !159

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader
  %.035167.unr = phi i64 [ %i.dn, %.lr.ph.split.preheader ], [ %i.dy, %.lr.ph.split.prol ]
  %i.dz = icmp ult i64 %i.dv, 3
  br i1 %i.dz, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ea = shl i64 %i.dn, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.ea
  %i.eb = and i64 %i.h, -2
  %i.ec = add i64 %i.eb, 2
  %i.ed = sub i64 %i.ec, %i.dn
  %i.ee = shl nuw i64 %i.ed, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.ee, i1 false), !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %.lr.ph.split.us.preheader, %bb.h
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %12, ptr noundef nonnull align 16 dereferenceable(27) %6, ptr noundef nonnull align 16 dereferenceable(27) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %._crit_edge171, %._crit_edge, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2EPKymm.exit114
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %.035167 = phi i64 [ %i.er, %.lr.ph.split ], [ %.035167.unr, %.lr.ph.split.prol.loopexit ] ; 5 uses
  %i.eg = load ptr, ptr %i.cw, align 8
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.035167
  store i64 0, ptr %i.eh, align 8, !tbaa !69
  %i.ei = load ptr, ptr %i.cw, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.035167
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 0, ptr %i.ek, align 8, !tbaa !69
  %i.el = load ptr, ptr %i.cw, align 8
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.035167
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 0, ptr %i.en, align 8, !tbaa !69
  %i.eo = load ptr, ptr %i.cw, align 8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.035167
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i64 0, ptr %i.eq, align 8, !tbaa !69
  %i.er = add nuw i64 %.035167, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.er, %i.bs
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split, !llvm.loop !160

bb.j:                                             ; preds = %._crit_edge
  %i.es = load i64, ptr %i.dj, align 16, !tbaa !67 ; 3 uses
  %i.et = add i64 %i.es, %i.bs                    ; 2 uses
  %i.eu = load i64, ptr %i.de, align 16, !tbaa !67 ; 3 uses
  %i.ev = icmp ult i64 %i.et, %i.eu
  br i1 %i.ev, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %bb.j
  %i.ew = load i8, ptr %i.ct, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.lr.ph170.split.us.preheader, label %.lr.ph170.split

.lr.ph170.split.us.preheader:                     ; preds = %.lr.ph170
  %i.ey = shl i64 %i.i, 4
  %i.ez = shl i64 %i.es, 3
  %i.fa = getelementptr i8, ptr %0, i64 %i.ey
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ez
  %scevgep179 = getelementptr i8, ptr %i.fb, i64 16
  %i.fc = add i64 %i.eu, -2
  %i.fd = and i64 %i.h, -2
  %i.fe = add i64 %i.es, %i.fd
  %i.ff = sub i64 %i.fc, %i.fe
  %i.fg = shl nuw i64 %i.ff, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep179, i8 0, i64 %i.fg, i1 false), !tbaa !69
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %.lr.ph170.split, %.lr.ph170.split.us.preheader, %bb.j
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %9, ptr noundef nonnull align 16 dereferenceable(27) %4, ptr noundef nonnull align 16 dereferenceable(27) %6)
          to label %bb.k unwind label %bb.i

.lr.ph170.split:                                  ; preds = %.lr.ph170, %.lr.ph170.split
  %.0168 = phi i64 [ %i.fj, %.lr.ph170.split ], [ %i.et, %.lr.ph170 ] ; 2 uses
  %i.fh = load ptr, ptr %i.cw, align 8
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.0168
  store i64 0, ptr %i.fi, align 8, !tbaa !69
  %i.fj = add nuw i64 %.0168, 1                   ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.eu
  br i1 %i.fk, label %.lr.ph170.split, label %._crit_edge171, !llvm.loop !161

bb.k:                                             ; preds = %._crit_edge171
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %10, ptr noundef nonnull align 16 dereferenceable(27) %5, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE(ptr noundef nonnull align 16 dereferenceable(27) %8, ptr noundef nonnull align 16 dereferenceable(27) %9, ptr noundef nonnull align 16 dereferenceable(27) %10, ptr noundef nonnull align 8 dereferenceable(25) %3)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %8, ptr noundef nonnull align 16 dereferenceable(27) %8, ptr noundef nonnull align 16 dereferenceable(27) %12)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %8, ptr noundef nonnull align 16 dereferenceable(27) %8, ptr noundef nonnull align 16 dereferenceable(27) %11)
          to label %bb.o unwind label %bb.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.fl = load i8, ptr %i.ct, align 1, !tbaa !68, !range !65, !noundef !66
  %i.fm = trunc nuw i8 %i.fl to i1
  %i.fn = load ptr, ptr %i.cw, align 8
  %i.fo = select i1 %i.fm, ptr %0, ptr %i.fn
  %i.fp = load i64, ptr %i.de, align 16, !tbaa !67
  %i.fq = sub i64 %i.fp, %i.j                     ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.j
  store i64 %i.fq, ptr %13, align 16, !tbaa !156
  %i.fs = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !158
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.fq, ptr %i.ft, align 16, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 0, ptr %i.fu, align 8, !tbaa !62
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 25 ; 3 uses
  store i8 0, ptr %i.fv, align 1, !tbaa !68
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 26 ; 3 uses
  store i8 1, ptr %i.fw, align 2, !tbaa !129
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %13, ptr noundef nonnull align 16 dereferenceable(27) %13, ptr noundef nonnull align 16 dereferenceable(27) %8)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.fx = load i8, ptr %i.cc, align 1, !tbaa !68, !range !65, !noundef !66
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = load i64, ptr %8, align 16
  %spec.select.i98 = select i1 %i.fy, i64 2, i64 %i.fz
  %i.ga = load i8, ptr %i.ck, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = load i64, ptr %9, align 16
  %spec.select.i97 = select i1 %i.gb, i64 2, i64 %i.gc
  %i.gd = load i8, ptr %i.cr, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ge = trunc nuw i8 %i.gd to i1
  %i.gf = load i64, ptr %10, align 16
  %spec.select.i96 = select i1 %i.ge, i64 2, i64 %i.gf
  %i.gg = load i64, ptr %i.bv, align 8, !tbaa !153
  %i.gh = add i64 %spec.select.i97, %spec.select.i98
  %i.gi = add i64 %i.gh, %spec.select.i96
  %i.gj = sub i64 %i.gg, %i.gi
  store i64 %i.gj, ptr %i.bv, align 8, !tbaa !153
  %i.gk = load i8, ptr %i.ct, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gl = trunc nuw i8 %i.gk to i1
  %i.gm = load ptr, ptr %i.cw, align 8
  %i.gn = select i1 %i.gl, ptr %0, ptr %i.gm
  %.promoted = load i64, ptr %i.de, align 16, !tbaa !67
  %i.go = add i64 %.promoted, -1                  ; 2 uses
  %.not.i173 = icmp eq i64 %i.go, 0
  br i1 %.not.i173, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.p, %bb.q
  %i.gp = phi i64 [ %i.gs, %bb.q ], [ %i.go, %bb.p ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gp
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !69
  %.not2.i = icmp eq i64 %i.gr, 0
  br i1 %.not2.i, label %bb.q, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

bb.q:                                             ; preds = %.lr.ph175
  store i64 %i.gp, ptr %i.de, align 16, !tbaa !67
  %i.gs = add i64 %i.gp, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph175, !llvm.loop !136

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %.lr.ph175, %bb.q, %bb.p
  %i.gt = load i8, ptr %i.fv, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = load i8, ptr %i.fw, align 2, !range !65
  %i.gw = trunc nuw i8 %i.gv to i1
  %or.cond.i75 = select i1 %i.gu, i1 true, i1 %i.gw
  br i1 %or.cond.i75, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit76, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.gx = load ptr, ptr %i.fs, align 8
  %i.gy = load i64, ptr %13, align 16
  %i.gz = shl i64 %i.gy, 3
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.gz) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit76

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit76: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.ha = load i8, ptr %i.dl, align 1, !tbaa !68, !range !65, !noundef !66
  %i.hb = trunc nuw i8 %i.ha to i1
  %i.hc = load i8, ptr %i.dm, align 2, !range !65
  %i.hd = trunc nuw i8 %i.hc to i1
  %or.cond.i73 = select i1 %i.hb, i1 true, i1 %i.hd
  br i1 %or.cond.i73, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit74, label %bb.s

bb.s:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit76
  %i.he = load ptr, ptr %i.di, align 8
  %i.hf = load i64, ptr %12, align 16
  %i.hg = shl i64 %i.hf, 3
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hg) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit74

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit74: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit76, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.hh = load i8, ptr %i.dc, align 1, !tbaa !68, !range !65, !noundef !66
  %i.hi = trunc nuw i8 %i.hh to i1
  %i.hj = load i8, ptr %i.dd, align 2, !range !65
  %i.hk = trunc nuw i8 %i.hj to i1
  %or.cond.i71 = select i1 %i.hi, i1 true, i1 %i.hk
  br i1 %or.cond.i71, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit72, label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit74
  %i.hl = load ptr, ptr %i.cz, align 8
  %i.hm = load i64, ptr %11, align 16
  %i.hn = shl i64 %i.hm, 3
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hn) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit72

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit72: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit74, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.ho = load i8, ptr %i.cr, align 1, !tbaa !68, !range !65, !noundef !66
  %i.hp = trunc nuw i8 %i.ho to i1
  %i.hq = load i8, ptr %i.cs, align 2, !range !65
  %i.hr = trunc nuw i8 %i.hq to i1
  %or.cond.i69 = select i1 %i.hp, i1 true, i1 %i.hr
  br i1 %or.cond.i69, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit70, label %bb.u

bb.u:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit72
  %i.hs = load ptr, ptr %i.co, align 8
  %i.ht = load i64, ptr %10, align 16
  %i.hu = shl i64 %i.ht, 3
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hu) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit70

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit70: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit72, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.hv = load i8, ptr %i.ck, align 1, !tbaa !68, !range !65, !noundef !66
  %i.hw = trunc nuw i8 %i.hv to i1
  %i.hx = load i8, ptr %i.cl, align 2, !range !65
  %i.hy = trunc nuw i8 %i.hx to i1
  %or.cond.i67 = select i1 %i.hw, i1 true, i1 %i.hy
  br i1 %or.cond.i67, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit68, label %bb.v

bb.v:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit70
  %i.hz = load ptr, ptr %i.ch, align 8
  %i.ia = load i64, ptr %9, align 16
  %i.ib = shl i64 %i.ia, 3
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ib) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit68

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit68: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit70, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.ic = load i8, ptr %i.cc, align 1, !tbaa !68, !range !65, !noundef !66
  %i.id = trunc nuw i8 %i.ic to i1
  %i.ie = load i8, ptr %i.cd, align 2, !range !65
  %i.if = trunc nuw i8 %i.ie to i1
  %or.cond.i65 = select i1 %i.id, i1 true, i1 %i.if
  br i1 %or.cond.i65, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit66, label %bb.w

bb.w:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit68
  %i.ig = load ptr, ptr %i.bz, align 8
  %i.ih = load i64, ptr %8, align 16
  %i.ii = shl i64 %i.ih, 3
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ii) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit66

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit66: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit68, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.ij = load i8, ptr %i.bl, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ik = trunc nuw i8 %i.ij to i1
  %i.il = load i8, ptr %i.bm, align 2, !range !65
  %i.im = trunc nuw i8 %i.il to i1
  %or.cond.i63 = select i1 %i.ik, i1 true, i1 %i.im
  br i1 %or.cond.i63, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit64, label %bb.x

bb.x:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit66
  %i.in = load ptr, ptr %i.bi, align 8
  %i.io = load i64, ptr %7, align 16
  %i.ip = shl i64 %i.io, 3
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ip) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit64

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit64: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit66, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.iq = load i8, ptr %i.ay, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ir = trunc nuw i8 %i.iq to i1
  %i.is = load i8, ptr %i.az, align 2, !range !65
  %i.it = trunc nuw i8 %i.is to i1
  %or.cond.i61 = select i1 %i.ir, i1 true, i1 %i.it
  br i1 %or.cond.i61, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit62, label %bb.y

bb.y:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit64
  %i.iu = load ptr, ptr %i.av, align 8
  %i.iv = load i64, ptr %6, align 16
  %i.iw = shl i64 %i.iv, 3
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iw) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit62

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit62: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit64, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ix = load i8, ptr %i.al, align 1, !tbaa !68, !range !65, !noundef !66
  %i.iy = trunc nuw i8 %i.ix to i1
  %i.iz = load i8, ptr %i.am, align 2, !range !65
  %i.ja = trunc nuw i8 %i.iz to i1
  %or.cond.i59 = select i1 %i.iy, i1 true, i1 %i.ja
  br i1 %or.cond.i59, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit60, label %bb.z

bb.z:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit62
  %i.jb = load ptr, ptr %i.ai, align 8
  %i.jc = load i64, ptr %5, align 16
  %i.jd = shl i64 %i.jc, 3
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jd) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit60

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit60: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit62, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.je = load i8, ptr %i.u, align 1, !tbaa !68, !range !65, !noundef !66
  %i.jf = trunc nuw i8 %i.je to i1
  %i.jg = load i8, ptr %i.v, align 2, !range !65
  %i.jh = trunc nuw i8 %i.jg to i1
  %or.cond.i57 = select i1 %i.jf, i1 true, i1 %i.jh
  br i1 %or.cond.i57, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit58, label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit60
  %i.ji = load ptr, ptr %i.r, align 8
  %i.jj = load i64, ptr %4, align 16
  %i.jk = shl i64 %i.jj, 3
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jk) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit58

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit58: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit60, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit58, %bb.b
  ret void

bb.ac:                                            ; preds = %bb.o
  %i.jl = landingpad { ptr, i32 }
          cleanup
  %i.jm = load i8, ptr %i.fv, align 1, !tbaa !68, !range !65, !noundef !66
  %i.jn = trunc nuw i8 %i.jm to i1
  %i.jo = load i8, ptr %i.fw, align 2, !range !65
  %i.jp = trunc nuw i8 %i.jo to i1
  %or.cond.i55 = select i1 %i.jn, i1 true, i1 %i.jp
  br i1 %or.cond.i55, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jq = load ptr, ptr %i.fs, align 8
  %i.jr = load i64, ptr %13, align 16
  %i.js = shl i64 %i.jr, 3
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.js) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56, %bb.i
  %.pn = phi { ptr, i32 } [ %i.jl, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit56 ], [ %i.ef, %bb.i ]
  %i.jt = load i8, ptr %i.dl, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ju = trunc nuw i8 %i.jt to i1
  %i.jv = load i8, ptr %i.dm, align 2, !range !65
  %i.jw = trunc nuw i8 %i.jv to i1
  %or.cond.i53 = select i1 %i.ju, i1 true, i1 %i.jw
  br i1 %or.cond.i53, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit54, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jx = load ptr, ptr %i.di, align 8
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends18multiply_karatsubaILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEEvRNS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EERKS8_SB_RNS8_21scoped_shared_storageE:bb.a

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit52: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit54, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.kh = load i8, ptr %i.cr, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = load i8, ptr %i.cs, align 2, !range !65
  %i.kk = trunc nuw i8 %i.kj to i1
  %or.cond.i49 = select i1 %i.ki, i1 true, i1 %i.kk
  br i1 %or.cond.i49, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit52
  %i.kl = load ptr, ptr %i.co, align 8
  %i.km = load i64, ptr %10, align 16
  %i.kn = shl i64 %i.km, 3
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kn) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit52, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.ko = load i8, ptr %i.ck, align 1, !tbaa !68, !range !65, !noundef !66
  %i.kp = trunc nuw i8 %i.ko to i1
  %i.kq = load i8, ptr %i.cl, align 2, !range !65
  %i.kr = trunc nuw i8 %i.kq to i1
  %or.cond.i47 = select i1 %i.kp, i1 true, i1 %i.kr
  br i1 %or.cond.i47, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48, label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50
  %i.ks = load ptr, ptr %i.ch, align 8
  %i.kt = load i64, ptr %9, align 16
  %i.ku = shl i64 %i.kt, 3
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.ku) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit50, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.kv = load i8, ptr %i.cc, align 1, !tbaa !68, !range !65, !noundef !66
  %i.kw = trunc nuw i8 %i.kv to i1
  %i.kx = load i8, ptr %i.cd, align 2, !range !65
  %i.ky = trunc nuw i8 %i.kx to i1
  %or.cond.i45 = select i1 %i.kw, i1 true, i1 %i.ky
  br i1 %or.cond.i45, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46, label %bb.aj

bb.aj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48
  %i.kz = load ptr, ptr %i.bz, align 8
  %i.la = load i64, ptr %8, align 16
  %i.lb = shl i64 %i.la, 3
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lb) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit48, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.lc = load i8, ptr %i.bl, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ld = trunc nuw i8 %i.lc to i1
  %i.le = load i8, ptr %i.bm, align 2, !range !65
  %i.lf = trunc nuw i8 %i.le to i1
  %or.cond.i43 = select i1 %i.ld, i1 true, i1 %i.lf
  br i1 %or.cond.i43, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44, label %bb.ak

bb.ak:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46
  %i.lg = load ptr, ptr %i.bi, align 8
  %i.lh = load i64, ptr %7, align 16
  %i.li = shl i64 %i.lh, 3
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.li) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit46, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.lj = load i8, ptr %i.ay, align 1, !tbaa !68, !range !65, !noundef !66
  %i.lk = trunc nuw i8 %i.lj to i1
  %i.ll = load i8, ptr %i.az, align 2, !range !65
  %i.lm = trunc nuw i8 %i.ll to i1
  %or.cond.i41 = select i1 %i.lk, i1 true, i1 %i.lm
  br i1 %or.cond.i41, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42, label %bb.al

bb.al:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44
  %i.ln = load ptr, ptr %i.av, align 8
  %i.lo = load i64, ptr %6, align 16
  %i.lp = shl i64 %i.lo, 3
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lp) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit44, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.lq = load i8, ptr %i.al, align 1, !tbaa !68, !range !65, !noundef !66
  %i.lr = trunc nuw i8 %i.lq to i1
  %i.ls = load i8, ptr %i.am, align 2, !range !65
  %i.lt = trunc nuw i8 %i.ls to i1
  %or.cond.i39 = select i1 %i.lr, i1 true, i1 %i.lt
  br i1 %or.cond.i39, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40, label %bb.am

bb.am:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42
  %i.lu = load ptr, ptr %i.ai, align 8
  %i.lv = load i64, ptr %5, align 16
  %i.lw = shl i64 %i.lv, 3
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lw) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit42, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.lx = load i8, ptr %i.u, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ly = trunc nuw i8 %i.lx to i1
  %i.lz = load i8, ptr %i.v, align 2, !range !65
  %i.ma = trunc nuw i8 %i.lz to i1
  %or.cond.i = select i1 %i.ly, i1 true, i1 %i.ma
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40
  %i.mb = load ptr, ptr %i.r, align 8
  %i.mc = load i64, ptr %4, align 16
  %i.md = shl i64 %i.mc, 3
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.md) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit40, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev(ptr noundef nonnull align 16 dead_on_return(44) dereferenceable(44) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !68, !range !65, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.g = load i8, ptr %i.f, align 2, !range !65
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i1.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i1.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.i, align 16
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !68, !range !65, !noundef !66
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !65
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.b, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #33
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #33
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiED0Ev(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load atomic ptr, ptr %i.a monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  fence acquire
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.d = load i8, ptr %i.c, align 1, !tbaa !68, !range !65, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.g = load i8, ptr %i.f, align 2, !range !65
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i1.i.i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.i, align 16
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #33, !inline_history !162
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.o = load i8, ptr %i.n, align 1, !tbaa !68, !range !65, !noundef !66
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.r = load i8, ptr %i.q, align 2, !range !65
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.b, align 16
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #33, !inline_history !162
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.d, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #33, !inline_history !162
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %bb.a, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiE12update_exactEv(ptr noundef nonnull align 16 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41
  %i.e = sext i32 %i.d to i64
  store i64 %i.e, ptr %i.a, align 8, !tbaa !69
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2IxEERKT_PKNSt9enable_ifIXaasr3std16is_constructibleIS7_SA_EE5valuentsr3std17is_floating_pointISA_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.b, ptr %i.f release, align 16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #33
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED0Ev(ptr noundef nonnull align 16 dereferenceable(44) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #34
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.164, align 8            ; 5 uses
  %3 = alloca %class.anon, align 8                ; 4 uses
  %4 = alloca %class.anon.164, align 8            ; 5 uses
  %5 = alloca %class.anon, align 8                ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !16
  %i.g = load <2 x double>, ptr %i.d, align 16    ; 2 uses
  %i.h = extractelement <2 x double> %i.g, i64 0
  %i.i = fneg double %i.h
  %i.j = fcmp olt double %i.f, %i.i
  br i1 %i.j, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = extractelement <2 x double> %i.g, i64 1
  %i.m = load <2 x double>, ptr %i.k, align 16, !tbaa !16
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = fneg double %i.n
  %i.p = fcmp ugt double %i.l, %i.o
  %i.q = select i1 %i.p, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i = phi i16 [ 257, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.0.0.insert.insert.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.0.0.insert.insert.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.r = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.s = trunc i16 %.sroa.0.0.insert.insert.i to i1
  br label %bb.l

bb.e:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.a, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %5, ptr %4, align 8, !tbaa !54
  %i.u = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.u, align 8, !tbaa !54
  %i.v = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.v, align 8, !tbaa !54
  %i.w = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.w) #32
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.ad, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.u, align 8, !tbaa !54
  store ptr null, ptr %i.v, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.u, align 8, !tbaa !54
  store ptr null, ptr %i.v, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.z = load atomic ptr, ptr %i.y monotonic, align 8
  %i.aa = load ptr, ptr %1, align 8, !tbaa !32    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store ptr %i.aa, ptr %3, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %3, ptr %2, align 8, !tbaa !54
  store ptr %2, ptr %i.u, align 8, !tbaa !54
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.v, align 8, !tbaa !54
  %i.ac = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ab, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.k ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.i

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ac) #32
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.u, align 8, !tbaa !54
  store ptr null, ptr %i.v, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.u, align 8, !tbaa !54
  store ptr null, ptr %i.v, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.af = load atomic ptr, ptr %i.ae monotonic, align 8
  %i.ag = call noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.z, ptr noundef nonnull align 16 dereferenceable(64) %i.af)
  %i.ah = icmp slt i32 %i.ag, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.s, %bb.d ], [ %i.ah, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 32 uses
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !67  ; 6 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !68, !range !65, !noundef !66
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %0, ptr %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !69
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !62, !range !65, !noundef !66
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !67
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52: ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !68, !range !65, !noundef !66
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.v, ptr %1, ptr %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !69
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !62, !range !65, !noundef !66
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51
  %i.af = phi i32 [ %i.ae, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51 ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52 ] ; 2 uses
  %.not = icmp eq i32 %i.p, %i.af
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53
  %i.ag = icmp slt i32 %i.p, %i.af
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %bb.at

bb.c:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53
  %i.ai = icmp eq i32 %i.p, 0
  br i1 %i.ai, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp slt i32 %i.p, 0                    ; 3 uses
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.al)
  %i.an = add i64 %i.am, %i.ak
  %i.ao = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.ap)
  %i.ar = add i64 %i.aq, %i.ao
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i64 0, ptr %2, align 16, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.au = load i8, ptr %i.at, align 2, !tbaa !129, !range !65, !noundef !66
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.b, ptr %i.as, align 16, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !62, !range !65, !noundef !66 ; 2 uses
  store i8 %i.ay, ptr %i.aw, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 2 uses
  store i8 0, ptr %i.az, align 1, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 26 ; 2 uses
  store i8 1, ptr %i.ba, align 2, !tbaa !129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 16 dereferenceable(27) %0, i64 16, i1 false), !tbaa.struct !145
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !62, !range !65, !noundef !66
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 3 uses
  store i8 1, ptr %i.be, align 1, !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 26 ; 2 uses
  store i8 0, ptr %i.bf, align 2, !tbaa !129
  %spec.select.i54 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 288230376151711744) ; 3 uses
  %i.bg = icmp ult i64 %i.b, 3
  br i1 %i.bg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i54, i64 8) ; 2 uses
  %i.bh = shl nuw nsw i64 %.sroa.speculated16.i, 3
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #30 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.be, align 1, !tbaa !68
  %.pre64.pre = load i64, ptr %i.a, align 16, !tbaa !67
  store i64 %spec.select.i54, ptr %i.as, align 16, !tbaa !67
  store i64 %.sroa.speculated16.i, ptr %2, align 16, !tbaa !16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !16
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.j:                                             ; preds = %bb.h
  store i64 %spec.select.i54, ptr %i.as, align 16, !tbaa !67
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.j, %bb.i
  %i.bk = phi ptr [ %2, %bb.j ], [ %i.bi, %bb.i ]
  %i.bl = phi i64 [ %i.b, %bb.j ], [ %.pre64.pre, %bb.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !68, !range !65, !noundef !66
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = select i1 %i.bo, ptr %0, ptr %i.bq
  %i.bs = shl i64 %i.bl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.br, i64 %i.bs, i1 false)
  %.pre65 = load i8, ptr %i.bb, align 8, !tbaa !62, !range !65
  %.pre66 = load i64, ptr %i.as, align 16
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit

common.resume:                                    ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit39, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.he, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit ], [ %i.ep, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit39 ]
  resume { ptr, i32 } %common.resume.op

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit: ; preds = %bb.g, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.bt = phi i64 [ %i.b, %bb.g ], [ %.pre66, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ]
  %i.bu = phi i8 [ %i.ay, %bb.g ], [ %.pre65, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ] ; 2 uses
  %i.bv = phi ptr [ %i.ba, %bb.g ], [ %i.bf, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ] ; 3 uses
  %i.bw = phi ptr [ %i.az, %bb.g ], [ %i.be, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ] ; 8 uses
  %i.bx = phi ptr [ %i.aw, %bb.g ], [ %i.bb, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ] ; 4 uses
  %i.by = trunc nuw i8 %i.bu to i1
  %i.bz = xor i8 %i.bu, 1
  store i8 %i.bz, ptr %i.bx, align 8, !tbaa !62
  %i.ca = icmp ne i64 %i.bt, 1
  %or.cond.i49.not = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond.i49.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit50, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit
  %i.cb = load i8, ptr %i.bw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = select i1 %i.cc, ptr %2, ptr %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !69
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.l, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit50

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.bx, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit50

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit50: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit, %bb.k, %bb.l
  %i.ci = invoke noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %2)
          to label %bb.m unwind label %bb.z

bb.m:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit50
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ck = invoke noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.cj)
          to label %bb.n unwind label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.cl = add i64 %i.ck, %i.ci
  store i64 0, ptr %i.as, align 16, !tbaa !67
  %i.cm = load i64, ptr %i.q, align 16, !tbaa !67 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cm, i64 288230376151711744) ; 4 uses
  %i.cn = load i8, ptr %i.bw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.co = trunc nuw i8 %i.cn to i1                ; 2 uses
  %i.cp = load i64, ptr %2, align 16
  %spec.select.i8.i.i = select i1 %i.co, i64 2, i64 %i.cp ; 2 uses
  %i.cq = icmp ugt i64 %spec.select.i.i, %spec.select.i8.i.i
  br i1 %i.cq, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i, label %bb.s

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i: ; preds = %bb.n
  %i.cr = shl nuw nsw i64 %spec.select.i8.i.i, 2
  %.sroa.speculated16.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 %spec.select.i.i)
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i, i64 288230376151711744) ; 2 uses
  %i.cs = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #30
          to label %.noexc56 unwind label %bb.z   ; 3 uses

.noexc56:                                         ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  %i.cu = load i8, ptr %i.bw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.cv = trunc nuw i8 %i.cu to i1                ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.cy = select i1 %i.cv, ptr %2, ptr %i.cx
  %i.cz = load i64, ptr %i.as, align 16, !tbaa !67
  %i.da = shl i64 %i.cz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ct, ptr align 8 %i.cy, i64 %i.da, i1 false)
  br i1 %i.cv, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.noexc56
  %i.db = load i8, ptr %i.bv, align 2, !tbaa !129, !range !65, !noundef !66
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dd = load i64, ptr %2, align 16
  %i.de = shl i64 %i.dd, 3
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.de) #33
  %.pre.pre.i = load i8, ptr %i.bw, align 1, !tbaa !68, !range !65
  %i.df = trunc nuw i8 %.pre.pre.i to i1
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %.noexc56
  store i8 0, ptr %i.bw, align 1, !tbaa !68
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre.i = phi i1 [ false, %bb.q ], [ %i.df, %bb.p ]
  store i64 %spec.select.i.i, ptr %i.as, align 16, !tbaa !67
  store i64 %.sroa.speculated.i.i, ptr %2, align 16, !tbaa !16
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !16
  %.pre67 = load i64, ptr %i.q, align 16, !tbaa !67
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  store i64 %spec.select.i.i, ptr %i.as, align 16, !tbaa !67
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.dg = phi i64 [ %.pre67, %bb.r ], [ %i.cm, %bb.s ]
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.r ], [ %i.co, %bb.s ]
  %i.dh = phi ptr [ %i.ct, %bb.r ], [ %.pre8.i, %bb.s ]
  %i.di = select i1 %.pre-phi.i, ptr %2, ptr %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !68, !range !65, !noundef !66
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = select i1 %i.dl, ptr %1, ptr %i.dn
  %i.dp = shl i64 %i.dg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.di, ptr align 8 %i.do, i64 %i.dp, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !62, !range !65, !noundef !66 ; 2 uses
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = xor i8 %i.dr, 1
  store i8 %i.dt, ptr %i.bx, align 8, !tbaa !62
  %i.du = load i64, ptr %i.as, align 16
  %i.dv = icmp ne i64 %i.du, 1
  %or.cond.i47.not = select i1 %i.ds, i1 true, i1 %i.dv
  br i1 %or.cond.i47.not, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = load i8, ptr %i.bw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = select i1 %i.dx, ptr %2, ptr %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !69
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.v, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

bb.v:                                             ; preds = %bb.u
  store i8 0, ptr %i.bx, align 8, !tbaa !62
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit: ; preds = %bb.t, %bb.u, %bb.v
  %i.ed = invoke noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %2)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6negateEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = invoke noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.ee)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.eg = add i64 %i.ef, %i.ed
  %i.eh = load i8, ptr %i.bw, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = load i8, ptr %i.bv, align 2, !range !65
  %i.ek = trunc nuw i8 %i.ej to i1
end_hunk_1
begin_hunk_2_@_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_:bb.a
  %.024 = phi i64 [ %i.ar, %bb.e ], [ %i.eg, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit41 ]
  %i.ey = sub nsw i64 %.025, %.024                ; 2 uses
  %i.ez = icmp slt i64 %i.ey, -1
  br i1 %i.ez, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = select i1 %i.aj, i32 1, i32 -1
  br label %bb.at

bb.ad:                                            ; preds = %bb.ab
  %i.fb = icmp sgt i64 %i.ey, 1
  br i1 %i.fb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fc = select i1 %i.aj, i32 -1, i32 1
  br label %bb.at

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 0, ptr %3, align 16, !tbaa !16
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.fd, align 16, !tbaa !67
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 0, ptr %i.fe, align 8, !tbaa !62
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 25 ; 4 uses
  store i8 1, ptr %i.ff, align 1, !tbaa !68
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 3 uses
  store i8 0, ptr %i.fg, align 2, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i64 0, ptr %4, align 16, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.fh, align 16, !tbaa !67
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i8 0, ptr %i.fi, align 8, !tbaa !62
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 4 uses
  store i8 1, ptr %i.fj, align 1, !tbaa !68
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 3 uses
  store i8 0, ptr %i.fk, align 2, !tbaa !129
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %i.fl)
          to label %bb.ag unwind label %bb.aq

bb.ag:                                            ; preds = %bb.af
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %4, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %i.fm)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.fn = load i8, ptr %i.fe, align 8, !tbaa !62, !range !65, !noundef !66 ; 2 uses
  %i.fo = trunc nuw i8 %i.fn to i1                ; 2 uses
  %i.fp = load i8, ptr %i.fi, align 8, !tbaa !62, !range !65, !noundef !66
  %.not.i.i = icmp eq i8 %i.fn, %i.fp
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fq = select i1 %i.fo, i32 -1, i32 1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fr = load i64, ptr %i.fd, align 16, !tbaa !67 ; 4 uses
  %i.fs = load i64, ptr %i.fh, align 16, !tbaa !67 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.fr, %i.fs
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = icmp ugt i64 %i.fr, %i.fs
  %i.fu = select i1 %i.ft, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i

bb.al:                                            ; preds = %bb.aj
  %i.fv = load i8, ptr %i.ff, align 1, !tbaa !68, !range !65, !noundef !66
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = select i1 %i.fw, ptr %3, ptr %i.fy
  %i.ga = load i8, ptr %i.fj, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = select i1 %i.gb, ptr %4, ptr %i.gd
  %i.gf = icmp slt i64 %i.fr, 1
  br i1 %i.gf, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i, label %.lr.ph

bb.am:                                            ; preds = %.lr.ph
  %i.gg = icmp slt i64 %.015.in.i.i.i79, 2
  br i1 %i.gg, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i, label %.lr.ph, !llvm.loop !130

.lr.ph:                                           ; preds = %bb.al, %bb.am
  %.015.in.i.i.i79 = phi i64 [ %.015.i.i.i, %bb.am ], [ %i.fr, %bb.al ] ; 2 uses
  %.015.i.i.i = add nsw i64 %.015.in.i.i.i79, -1  ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.015.i.i.i
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !69 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.015.i.i.i
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !69 ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.gi, %i.gk
  br i1 %.not19.i.i.i, label %bb.am, label %bb.an, !llvm.loop !130

bb.an:                                            ; preds = %.lr.ph
  %i.gl = icmp ugt i64 %i.gi, %i.gk
  %i.gm = select i1 %i.gl, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i: ; preds = %bb.am, %bb.al, %bb.an, %bb.ak
  %.2.i.i.i = phi i32 [ %i.fu, %bb.ak ], [ %i.gm, %bb.an ], [ 0, %bb.al ], [ 0, %bb.am ] ; 2 uses
  %i.gn = sub nsw i32 0, %.2.i.i.i
  %spec.select.i.i57 = select i1 %i.fo, i32 %i.gn, i32 %.2.i.i.i
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit: ; preds = %bb.ai, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i
  %.05.i.i = phi i32 [ %i.fq, %bb.ai ], [ %spec.select.i.i57, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.i.i ]
  %i.go = load i8, ptr %i.fj, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = load i8, ptr %i.fk, align 2, !range !65
  %i.gr = trunc nuw i8 %i.gq to i1
  %or.cond.i36 = select i1 %i.gp, i1 true, i1 %i.gr
  br i1 %or.cond.i36, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = load i64, ptr %4, align 16
  %i.gv = shl i64 %i.gu, 3
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gv) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.gw = load i8, ptr %i.ff, align 1, !tbaa !68, !range !65, !noundef !66
  %i.gx = trunc nuw i8 %i.gw to i1
  %i.gy = load i8, ptr %i.fg, align 2, !range !65
  %i.gz = trunc nuw i8 %i.gy to i1
  %or.cond.i34 = select i1 %i.gx, i1 true, i1 %i.gz
  br i1 %or.cond.i34, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35, label %bb.ap

bb.ap:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37
  %i.ha = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = load i64, ptr %3, align 16
  %i.hd = shl i64 %i.hc, 3
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hd) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit37, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.at

bb.aq:                                            ; preds = %bb.ag, %bb.af
  %i.he = landingpad { ptr, i32 }
          cleanup
  %i.hf = load i8, ptr %i.fj, align 1, !tbaa !68, !range !65, !noundef !66
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = load i8, ptr %i.fk, align 2, !range !65
  %i.hi = trunc nuw i8 %i.hh to i1
  %or.cond.i32 = select i1 %i.hg, i1 true, i1 %i.hi
  br i1 %or.cond.i32, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = load i64, ptr %4, align 16
  %i.hm = shl i64 %i.hl, 3
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hm) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.hn = load i8, ptr %i.ff, align 1, !tbaa !68, !range !65, !noundef !66
  %i.ho = trunc nuw i8 %i.hn to i1
  %i.hp = load i8, ptr %i.fg, align 2, !range !65
  %i.hq = trunc nuw i8 %i.hp to i1
  %or.cond.i = select i1 %i.ho, i1 true, i1 %i.hq
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = load i64, ptr %3, align 16
  %i.hu = shl i64 %i.ht, 3
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hu) #33
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit33, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

bb.at:                                            ; preds = %bb.ac, %bb.ae, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35, %bb.c, %bb.b
  %.1 = phi i32 [ %i.ah, %bb.b ], [ 0, %bb.c ], [ %i.fa, %bb.ac ], [ %i.fc, %bb.ae ], [ %.05.i.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit35 ]
  ret i32 %.1
}

declare void @__once_proxy() #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv() #8 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163, !nonnull !66, !align !165
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(44) %i.d), !inline_history !166
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_outer_vertex.cpp() #26 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL4lastE) ; 0 uses
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 2, ptr nonnull @_ZN5EigenL6lastp1E) ; 0 uses
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5EigenL3allE) ; 0 uses
  %i.d = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef -52) #29
  %i.e = fadd double %i.d, 1.000000e+00
  store double %i.e, ptr @_ZN4COREL6relEpsE, align 8, !tbaa !88
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL6relEpsE) ; 0 uses
  store i64 0, ptr @_ZN4COREL12EXTLONG_ZEROE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_ZEROE, i64 8), align 8, !tbaa !169
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_ZEROE) ; 0 uses
  store i64 1, ptr @_ZN4COREL11EXTLONG_ONEE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_ONEE, i64 8), align 8, !tbaa !169
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_ONEE) ; 0 uses
  store i64 2, ptr @_ZN4COREL11EXTLONG_TWOE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_TWOE, i64 8), align 8, !tbaa !169
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_TWOE) ; 0 uses
  store i64 3, ptr @_ZN4COREL13EXTLONG_THREEE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_THREEE, i64 8), align 8, !tbaa !169
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_THREEE) ; 0 uses
  store i64 4, ptr @_ZN4COREL12EXTLONG_FOURE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FOURE, i64 8), align 8, !tbaa !169
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FOURE) ; 0 uses
  store i64 5, ptr @_ZN4COREL12EXTLONG_FIVEE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL12EXTLONG_FIVEE, i64 8), align 8, !tbaa !169
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL12EXTLONG_FIVEE) ; 0 uses
  store i64 6, ptr @_ZN4COREL11EXTLONG_SIXE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_SIXE, i64 8), align 8, !tbaa !169
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_SIXE) ; 0 uses
  store i64 7, ptr @_ZN4COREL13EXTLONG_SEVENE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SEVENE, i64 8), align 8, !tbaa !169
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SEVENE) ; 0 uses
  store i64 8, ptr @_ZN4COREL13EXTLONG_EIGHTE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_EIGHTE, i64 8), align 8, !tbaa !169
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_EIGHTE) ; 0 uses
  store i64 1073741824, ptr @_ZN4COREL11EXTLONG_BIGE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL11EXTLONG_BIGE, i64 8), align 8, !tbaa !169
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL11EXTLONG_BIGE) ; 0 uses
  store i64 -1073741824, ptr @_ZN4COREL13EXTLONG_SMALLE, align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4COREL13EXTLONG_SMALLE, i64 8), align 8, !tbaa !169
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 16, ptr nonnull @_ZN4COREL13EXTLONG_SMALLE) ; 0 uses
  store double f0x4002934F0979A371, ptr @_ZN4COREL5log_5E, align 8, !tbaa !88
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4COREL5log_5E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }

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
!9 = !{!10, !13, i64 8}
!10 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !11, i64 0, !13, i64 8}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"_ZTSSt13__atomic_baseIiE", !6, i64 0}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSSt13__atomic_baseIPN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEEE", !19, i64 0}
!19 = !{!"p1 _ZTSN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEE", !12, i64 0}
!20 = !{!21, !6, i64 0}
!21 = !{!"_ZTSSt9once_flag", !6, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !6, i64 44}
!25 = !{!"_ZTSN4CGAL14Lazy_exact_CstIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEiEE", !26, i64 0, !6, i64 44}
!26 = !{!"_ZTSN4CGAL17Lazy_exact_nt_repIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE", !27, i64 0}
!27 = !{!"_ZTSN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE", !28, i64 0, !30, i64 16, !31, i64 32, !21, i64 40}
!28 = !{!"_ZTSN4CGAL3RepE", !29, i64 8}
!29 = !{!"_ZTSSt6atomicIiE", !15, i64 0}
!30 = !{!"_ZTSN4CGAL11Interval_ntILb0EEE", !7, i64 0}
!31 = !{!"_ZTSSt6atomicIPN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEEE", !18, i64 0}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSN4CGAL6HandleE", !34, i64 0}
!34 = !{!"p1 _ZTSN4CGAL3RepE", !12, i64 0}
!35 = !{!13, !13, i64 0}
!36 = !{!37, !13, i64 8}
!37 = !{!"_ZTSN5Eigen12DenseStorageIlLin1ELin1ELi1ELi0EEE", !38, i64 0, !13, i64 8}
!38 = !{!"p1 long", !12, i64 0}
!39 = !{!37, !38, i64 0}
!40 = !{!10, !11, i64 0}
!41 = !{!6, !6, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!45, !11, i64 0}
!45 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !11, i64 0, !13, i64 8, !13, i64 16}
!46 = !{!45, !13, i64 8}
!47 = !{!48, !49, i64 0}
!48 = !{!"_ZTSN5Eigen12DenseStorageIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELin1ELin1ELi1EEE", !49, i64 0, !13, i64 8, !13, i64 16}
!49 = !{!"p1 _ZTSN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEE", !12, i64 0}
!50 = !{!48, !13, i64 16}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSZNK4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EE5exactEvEUlvE_", !53, i64 0}
!53 = !{!"p1 _ZTSN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE", !12, i64 0}
!54 = !{!12, !12, i64 0}
!55 = distinct !{null, null, null, null}
!56 = distinct !{ptr @_ZN4CGAL6HandleD2Ev, null, null}
!57 = distinct !{!57, !43}
!58 = distinct !{!58, !43, !59, !60}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = distinct !{!61, !43, !59}
!62 = !{!63, !64, i64 24}
!63 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEE", !7, i64 0, !13, i64 16, !64, i64 24, !64, i64 25, !64, i64 26}
!64 = !{!"bool", !7, i64 0}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!63, !13, i64 16}
!68 = !{!63, !64, i64 25}
!69 = !{!70, !70, i64 0}
!70 = !{!"long long", !7, i64 0}
!71 = distinct !{!71, !43}
!72 = distinct !{null, null}
!73 = distinct !{!73, !43}
!74 = !{!75, !49, i64 0}
!75 = !{!"_ZTSN5Eigen12DenseStorageIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELin1ELin1ELi0EEE", !49, i64 0, !13, i64 8, !13, i64 16}
!76 = !{!75, !13, i64 8}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !43, !59, !60}
!79 = distinct !{!79, !43, !59}
!80 = distinct !{!80, !43}
!81 = distinct !{!81, !43}
!82 = distinct !{!82, !43, !59, !60}
!83 = distinct !{!83, !43, !59}
!84 = distinct !{!84, !43}
!85 = !{!86, !87, i64 0}
!86 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !87, i64 0, !13, i64 8, !13, i64 16}
!87 = !{!"p1 double", !12, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"double", !7, i64 0}
!90 = !{!86, !13, i64 8}
!91 = distinct !{!91, !43}
!92 = distinct !{!92, !43, !59, !60}
!93 = distinct !{!93, !43, !59}
!94 = distinct !{!94, !43}
!95 = distinct !{!95, !43}
!96 = distinct !{!96, !43, !59, !60}
!97 = distinct !{!97, !43, !59}
!98 = distinct !{!98, !43}
!99 = !{!100, !11, i64 0}
!100 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi3ELi0EEE", !11, i64 0, !13, i64 8}
!101 = !{!100, !13, i64 8}
!102 = !{!103, !87, i64 0}
!103 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EEE", !87, i64 0, !13, i64 8}
!104 = !{!103, !13, i64 8}
!105 = distinct !{!105, !43}
!106 = distinct !{!106, !43, !59, !60}
!107 = distinct !{!107, !43, !59}
!108 = distinct !{!108, !43}
!109 = distinct !{!109, !43}
!110 = distinct !{!110, !43, !59, !60}
!111 = distinct !{!111, !43, !59}
!112 = !{!"branch_weights", i32 1, i32 1048575}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTSN5boost15source_locationE", !115, i64 0, !115, i64 8, !6, i64 16, !6, i64 20}
!115 = !{!"p1 omnipotent char", !12, i64 0}
!116 = !{!114, !115, i64 8}
!117 = !{!114, !6, i64 16}
!118 = !{!114, !6, i64 20}
!119 = !{!115, !115, i64 0}
!120 = !{!121, !122, i64 0}
!121 = !{!"_ZTSN5boost16exception_detail12refcount_ptrINS0_20error_info_containerEEE", !122, i64 0}
!122 = !{!"p1 _ZTSN5boost16exception_detail20error_info_containerE", !12, i64 0}
!123 = distinct !{null}
!124 = !{ptr @_ZN5boost10wrapexceptISt12domain_errorEC2ERKS2_}
!125 = distinct !{ptr @_ZN5boost10wrapexceptISt12domain_errorEC2ERKS2_, null}
!126 = distinct !{null}
!127 = distinct !{null}
!128 = distinct !{null}
!129 = !{!63, !64, i64 26}
!130 = distinct !{!130, !43}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = distinct !{!133, !43}
!134 = distinct !{!134, !43}
!135 = distinct !{!135, !43}
!136 = distinct !{!136, !43}
!137 = distinct !{!137, !132}
!138 = distinct !{!138, !43}
!139 = distinct !{!139, !43}
!140 = distinct !{!140, !43}
!141 = distinct !{!141, !43}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7get_oneEv: argument 0"}
!144 = distinct !{!144, !"_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7get_oneEv"}
!145 = !{i64 0, i64 8, !35, i64 8, i64 8, !146}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 long long", !12, i64 0}
!148 = distinct !{!148, !43}
!149 = distinct !{!149, !43}
!150 = !{!151, !147, i64 0}
!151 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE21scoped_shared_storageE", !147, i64 0, !13, i64 8, !13, i64 16, !64, i64 24}
!152 = !{!151, !13, i64 8}
!153 = !{!151, !13, i64 16}
!154 = !{!151, !64, i64 24}
!155 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!156 = !{!157, !13, i64 0}
!157 = !{!"_ZTSN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9limb_dataE", !13, i64 0, !147, i64 8}
!158 = !{!157, !147, i64 8}
!159 = distinct !{!159, !132}
!160 = distinct !{!160, !43}
!161 = distinct !{!161, !43}
!162 = !{ptr @_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev}
!163 = !{!164, !12, i64 0}
!164 = !{!"_ZTSZSt9call_onceIZNK4CGAL8Lazy_repINS0_11Interval_ntILb0EEEN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEENS0_11To_intervalISG_EELi1EE5exactEvEUlvE_JEEvRSt9once_flagOT_DpOT0_EUlvE_", !12, i64 0}
!165 = !{i64 8}
!166 = distinct !{null, null, null, null, null}
!167 = !{!168, !13, i64 0}
!168 = !{!"_ZTSN4CORE7extLongE", !13, i64 0, !6, i64 8}
!169 = !{!168, !6, i64 8}
end_hunk_2
