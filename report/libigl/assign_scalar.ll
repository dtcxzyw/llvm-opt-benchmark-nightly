Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/assign_scalar?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1060
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE13do_get_stringB5cxx11ESt13_Ios_FmtflagsRKSt17integral_constantIbLb0EE:bb.a

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !86
  store i8 0, ptr %i.b, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 16, !tbaa !154 ; 2 uses
  %i.f = shl i64 %i.e, 6
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %2, 8
  %.not194 = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store i64 0, ptr %i.i, align 8, !tbaa !86
  store i8 0, ptr %i.h, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.k = load i64, ptr %i.j, align 16, !tbaa !154 ; 2 uses
  %i.l = shl i64 %i.k, 6                          ; 2 uses
  br i1 %.not194, label %bb.y, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.m = phi i64 [ %i.f, %.thread ], [ %i.l, %bb.b ] ; 3 uses
  %i.n = phi i64 [ %i.e, %.thread ], [ %i.k, %bb.b ] ; 4 uses
  %i.o = phi ptr [ %i.d, %.thread ], [ %i.j, %bb.b ]
  %i.p = phi ptr [ %i.c, %.thread ], [ %i.i, %bb.b ] ; 4 uses
  %i.q = phi ptr [ %i.b, %.thread ], [ %i.h, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !73, !range !63, !noundef !64
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.59)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr @.str.34, ptr %5, align 8, !tbaa !163
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.60, ptr %i.u, align 8, !tbaa !164
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 2042, ptr %i.v, align 8, !tbaa !165
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 119, ptr %i.w, align 4, !tbaa !166
  invoke void @_ZN5boost15throw_exceptionISt13runtime_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #36
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn99 = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ci

bb.j:                                             ; preds = %bb.c
  %i.z = select i1 %.not193, i32 4, i32 3         ; 3 uses
  %notmask = shl nsw i32 -1, %i.z
  %i.aa = xor i32 %notmask, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 0, ptr %6, align 16, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !155, !range !63, !noundef !64
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.n, ptr %i.ab, align 16, !tbaa !154
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.af, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 25 ; 2 uses
  store i8 0, ptr %i.ag, align 1, !tbaa !74
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 2 uses
  store i8 1, ptr %i.ah, align 2, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %6, ptr noundef nonnull align 16 dereferenceable(27) %1, i64 16, i1 false), !tbaa.struct !196
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit130

bb.l:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.ai, align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 25 ; 3 uses
  store i8 1, ptr %i.aj, align 1, !tbaa !74
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 2 uses
  store i8 0, ptr %i.ak, align 2, !tbaa !155
  %spec.select.i135 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 288230376151711744) ; 3 uses
  %i.al = icmp ult i64 %i.n, 3
  br i1 %i.al, label %bb.n, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.l
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i135, i64 8) ; 2 uses
  %i.am = shl nuw nsw i64 %.sroa.speculated16.i, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #37
          to label %bb.m unwind label %bb.o       ; 2 uses

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.aj, align 1, !tbaa !74
  %.pre215.pre = load i64, ptr %i.o, align 16, !tbaa !154
  store i64 %spec.select.i135, ptr %i.ab, align 16, !tbaa !154
  store i64 %.sroa.speculated16.i, ptr %6, align 16, !tbaa !87
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !87
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.n:                                             ; preds = %bb.l
  store i64 %spec.select.i135, ptr %i.ab, align 16, !tbaa !154
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.n, %bb.m
  %i.ap = phi ptr [ %6, %bb.n ], [ %i.an, %bb.m ]
  %i.aq = phi i64 [ %i.n, %bb.n ], [ %.pre215.pre, %bb.m ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !74, !range !63, !noundef !64
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = select i1 %i.at, ptr %1, ptr %i.av
  %i.ax = shl i64 %i.aq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.aw, i64 %i.ax, i1 false)
  %.pre216 = load i64, ptr %i.p, align 8, !tbaa !86
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit130

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit130: ; preds = %bb.k, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit
  %i.az = phi i64 [ 0, %bb.k ], [ %.pre216, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ]
  %i.ba = phi ptr [ %i.ah, %bb.k ], [ %i.ak, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ] ; 2 uses
  %i.bb = phi ptr [ %i.ag, %bb.k ], [ %i.aj, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit ] ; 4 uses
  %i.bc = zext nneg i32 %i.z to i64               ; 3 uses
  %i.bd = udiv i64 %i.m, %i.bc                    ; 2 uses
  %i.be = urem i64 %i.m, %i.bc                    ; 2 uses
  %.not88 = icmp ne i64 %i.be, 0                  ; 2 uses
  %i.bf = zext i1 %.not88 to i64
  %i.bg = add nuw nsw i64 %i.bd, %i.bf
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %i.az, i64 noundef %i.bg, i8 noundef signext 48)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit: ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit130
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !86
  %i.bj = and i32 %2, 16384
  %.not89 = icmp eq i32 %i.bj, 0                  ; 2 uses
  %.065202 = add i64 %i.bi, -1                    ; 2 uses
  %.not208 = icmp ult i64 %i.m, %i.bc
  br i1 %.not208, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = select i1 %.not89, i8 39, i8 7
  %i.bm = zext nneg i32 %i.z to i128
  br label %bb.p

._crit_edge:                                      ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit
  %.065.lcssa = phi i64 [ %.065202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit ], [ %.065, %bb.q ]
  br i1 %.not88, label %bb.r, label %bb.s

bb.p:                                             ; preds = %.lr.ph, %bb.q
  %.065204 = phi i64 [ %.065202, %.lr.ph ], [ %.065, %bb.q ] ; 2 uses
  %.064203 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.q ]
  %i.bn = load i8, ptr %i.bb, align 1, !tbaa !74, !range !63, !noundef !64
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = load ptr, ptr %i.bk, align 8
  %i.bq = select i1 %i.bo, ptr %6, ptr %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !76
  %i.bs = trunc i64 %i.br to i32
  %i.bt = and i32 %i.bs, %i.aa                    ; 2 uses
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = add nuw nsw i8 %i.bu, 48
  %i.bw = icmp samesign ugt i32 %i.bt, 9
  %i.bx = select i1 %i.bw, i8 %i.bl, i8 0
  %.063 = add nuw nsw i8 %i.bv, %i.bx
  %i.by = load ptr, ptr %0, align 8, !tbaa !88
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.065204
  store i8 %.063, ptr %i.bz, align 1, !tbaa !87
  invoke void @_ZN5boost14multiprecision8backends16eval_right_shiftILm0ELm0ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_ELNS0_16cpp_integer_typeE1EXT1_ET2_EEEE5valueEvE4typeERS9_o(ptr noundef nonnull align 16 dereferenceable(27) %6, i128 noundef %i.bm)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.ca = add nuw nsw i64 %.064203, 1             ; 2 uses
  %.065 = add i64 %.065204, -1                    ; 2 uses
  %13 = icmp ult i64 %i.ca, %i.bd
  br i1 %13, label %bb.p, label %._crit_edge, !llvm.loop !730

bb.r:                                             ; preds = %._crit_edge
  %i.cb = load i8, ptr %i.bb, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = select i1 %i.cc, ptr %6, ptr %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !76
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = trunc nuw nsw i64 %i.be to i8
  %notmask90 = shl nsw i8 -1, %i.ci
  %i.cj = xor i8 %notmask90, -1
  %i.ck = and i8 %i.ch, %i.cj
  %i.cl = add nuw nsw i8 %i.ck, 48
  %i.cm = load ptr, ptr %0, align 8, !tbaa !88
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.065.lcssa
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !87
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.co = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE17find_first_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 48, i64 noundef 0) #24 ; 2 uses
  %i.cp = load i64, ptr %i.p, align 8, !tbaa !86  ; 3 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = icmp ne i64 %i.co, -1
  %or.cond3.not = or i1 %i.cr, %i.cq
  %i.cs = add i64 %i.cp, -1
  %spec.select = select i1 %or.cond3.not, i64 %i.co, i64 %i.cs ; 2 uses
  switch i64 %spec.select, label %bb.u [
    i64 -1, label %bb.t
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ]

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.p, align 8, !tbaa !86
  %i.ct = load ptr, ptr %0, align 8, !tbaa !88
  store i8 0, ptr %i.ct, align 1, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.u:                                             ; preds = %bb.s
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %spec.select, i64 %i.cp)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef %spec.select.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.t, %bb.s, %bb.u
  %i.cu = and i32 %2, 512
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.cv = select i1 %.not89, ptr @.str.63, ptr @.str.62
  %spec.select190 = select i1 %.not193, ptr %i.cv, ptr @.str.61
  %i.cw = select i1 %.not193, i64 2, i64 1
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %spec.select190, i64 noundef %i.cw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %bb.v, %bb.u, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit130
  %lpad.loopexit.split-lp270 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load i8, ptr %i.bb, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = load i8, ptr %i.ba, align 2, !range !63
  %i.db = trunc nuw i8 %i.da to i1
  %or.cond.i116 = select i1 %i.cz, i1 true, i1 %i.db
  br i1 %or.cond.i116, label %.body, label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load i64, ptr %6, align 16
  %i.df = shl i64 %i.de, 3
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.df) #38
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.dg = load i8, ptr %i.bb, align 1, !tbaa !74, !range !63, !noundef !64
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = load i8, ptr %i.ba, align 2, !range !63
  %i.dj = trunc nuw i8 %i.di to i1
  %or.cond.i118 = select i1 %i.dh, i1 true, i1 %i.dj
  br i1 %or.cond.i118, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit119, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = load i64, ptr %6, align 16
  %i.dn = shl i64 %i.dm, 3
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dn) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit119

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmPKc.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.cj

.body:                                            ; preds = %bb.w, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.o
  %.pn95.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.o ], [ %lpad.loopexit.split-lp270, %bb.w ], [ %lpad.loopexit.split-lp270, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ci

bb.y:                                             ; preds = %bb.b
  %i.do = udiv i64 %i.l, 3
  %i.dp = add nuw nsw i64 %i.do, 1
  %i.dq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, i64 noundef %i.dp, i8 noundef signext 48)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit140 unwind label %bb.ag ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit140: ; preds = %bb.y
  %i.dr = load i64, ptr %i.i, align 8, !tbaa !86
  %i.ds = add i64 %i.dr, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i64 0, ptr %7, align 16, !tbaa !87
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !155, !range !63, !noundef !64
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit140
  %i.dx = load i64, ptr %i.j, align 16, !tbaa !154
  store i64 %i.dx, ptr %i.dt, align 16, !tbaa !154
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !73, !range !63, !noundef !64 ; 2 uses
  store i8 %i.ea, ptr %i.dy, align 8, !tbaa !73
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 25 ; 2 uses
  store i8 0, ptr %i.eb, align 1, !tbaa !74
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 2 uses
  store i8 1, ptr %i.ec, align 2, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %7, ptr noundef nonnull align 16 dereferenceable(27) %1, i64 16, i1 false), !tbaa.struct !196
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc.exit140
  store i64 0, ptr %i.dt, align 16, !tbaa !154
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !73, !range !63, !noundef !64
  store i8 %i.ef, ptr %i.ed, align 8, !tbaa !73
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 25 ; 4 uses
  store i8 1, ptr %i.eg, align 1, !tbaa !74
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 3 uses
  store i8 0, ptr %i.eh, align 2, !tbaa !155
  %i.ei = load i64, ptr %i.j, align 16, !tbaa !154 ; 3 uses
  %spec.select.i141 = tail call i64 @llvm.umin.i64(i64 %i.ei, i64 288230376151711744) ; 3 uses
  %i.ej = icmp ult i64 %i.ei, 3
  br i1 %i.ej, label %bb.ae, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i143

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i143: ; preds = %bb.aa
  %.sroa.speculated16.i144 = tail call i64 @llvm.umax.i64(i64 %spec.select.i141, i64 8) ; 2 uses
  %i.ek = shl nuw nsw i64 %.sroa.speculated16.i144, 3
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #37
          to label %.noexc146 unwind label %bb.af ; 3 uses

.noexc146:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i143
  %i.em = load i8, ptr %i.eg, align 1, !tbaa !74, !range !63, !noundef !64
  %i.en = trunc nuw i8 %i.em to i1                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = select i1 %i.en, ptr %7, ptr %i.ep
  %i.er = load i64, ptr %i.dt, align 16, !tbaa !154
  %i.es = shl i64 %i.er, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.el, ptr align 8 %i.eq, i64 %i.es, i1 false)
  %i.et = load i8, ptr %i.eh, align 2, !range !63
  %i.eu = trunc nuw i8 %i.et to i1
  %or.cond192 = select i1 %i.en, i1 true, i1 %i.eu
  br i1 %or.cond192, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc146
  %i.ev = load i64, ptr %7, align 16
  %i.ew = shl i64 %i.ev, 3
  tail call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.ew) #38
  br label %bb.ad

bb.ac:                                            ; preds = %.noexc146
  store i8 0, ptr %i.eg, align 1, !tbaa !74
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store i64 %spec.select.i141, ptr %i.dt, align 16, !tbaa !154
  store i64 %.sroa.speculated16.i144, ptr %7, align 16, !tbaa !87
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !87
  %.pre219 = load i64, ptr %i.j, align 16, !tbaa !154
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit147

bb.ae:                                            ; preds = %bb.aa
  store i64 %spec.select.i141, ptr %i.dt, align 16, !tbaa !154
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit147

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit147: ; preds = %bb.ae, %bb.ad
  %i.ex = phi ptr [ %7, %bb.ae ], [ %i.el, %bb.ad ]
  %i.ey = phi i64 [ %i.ei, %bb.ae ], [ %.pre219, %bb.ad ]
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !74, !range !63, !noundef !64
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = select i1 %i.fb, ptr %1, ptr %i.fd
  %i.ff = shl i64 %i.ey, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ex, ptr align 8 %i.fe, i64 %i.ff, i1 false)
  %.pre220 = load i8, ptr %i.ed, align 8, !tbaa !73, !range !63
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEC2ERKS6_.exit

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i143
end_hunk_0
