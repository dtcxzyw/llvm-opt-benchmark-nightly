Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_intersections?download=true
inline.NumInlined: 39098
inline.NumDeleted: 8954
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 152
loop-unroll.NumUnrolled: 306
begin_hunk_0_@_ZN5boost14multiprecision8backends19right_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.f = load i64, ptr %i.e, align 16, !tbaa !854 ; 6 uses
  %.not = icmp ugt i64 %i.f, %i.b
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !391, !range !392, !noundef !393
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %i.j = load i64, ptr %0, align 16
  %i.k = icmp ne i64 %i.j, 0
  %.not57 = select i1 %i.i, i1 true, i1 %i.k
  br i1 %.not57, label %bb.g, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.m = load i8, ptr %i.g, align 1, !tbaa !391, !range !392, !noundef !393
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = select i1 %i.n, ptr %0, ptr %i.p
  %i.r = load i64, ptr %i.e, align 16, !tbaa !854
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.q, i64 %i.s, i1 false)
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.u = load i8, ptr %i.t, align 2, !tbaa !864, !range !392, !noundef !393
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %0, align 16
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.x) #37
  %.pre.pre = load i8, ptr %i.g, align 1, !tbaa !391, !range !392
  %i.y = trunc nuw i8 %.pre.pre to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc
  store i8 0, ptr %i.g, align 1, !tbaa !391
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre = phi i1 [ false, %bb.e ], [ %i.y, %bb.d ]
  store i64 1, ptr %i.e, align 16, !tbaa !854
  store i64 1, ptr %0, align 16, !tbaa !439
  store ptr %i.l, ptr %i.o, align 8, !tbaa !439
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit44

bb.g:                                             ; preds = %bb.b
  store i64 1, ptr %i.e, align 16, !tbaa !854
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre64 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit44

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #42
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit44: ; preds = %bb.g, %bb.f
  %.pre-phi72 = phi i1 [ %i.i, %bb.g ], [ %.pre, %bb.f ]
  %i.ab = phi ptr [ %.pre64, %bb.g ], [ %i.l, %bb.f ]
  %i.ac = select i1 %.pre-phi72, ptr %0, ptr %i.ab
  store i64 0, ptr %i.ac, align 8, !tbaa !856
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ad, align 8, !tbaa !863
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit55

bb.i:                                             ; preds = %bb.a
  %i.ae = sub nuw i64 %i.f, %i.b                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 6 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !391, !range !392, !noundef !393
  %i.ah = trunc nuw i8 %i.ag to i1                ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %i.ah, ptr %0, ptr %i.aj      ; 15 uses
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %i.f
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !856
  %i.ao = lshr i64 %i.an, %i.d
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.aq = add i64 %i.ae, -1                       ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.as = load i64, ptr %0, align 16
  %i.at = icmp ne i64 %i.as, 0
  %.not59 = select i1 %i.ah, i1 true, i1 %i.at
  br i1 %.not59, label %bb.p, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i46

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i46: ; preds = %bb.k
  %i.au = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %.noexc49 unwind label %bb.q   ; 4 uses

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i46
  %i.av = load i8, ptr %i.af, align 1, !tbaa !391, !range !392, !noundef !393
  %i.aw = trunc nuw i8 %i.av to i1                ; 2 uses
  %i.ax = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ay = select i1 %i.aw, ptr %0, ptr %i.ax
  %i.az = load i64, ptr %i.e, align 16, !tbaa !854
  %i.ba = shl i64 %i.az, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.ay, i64 %i.ba, i1 false)
  br i1 %i.aw, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.noexc49
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !864, !range !392, !noundef !393
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %0, align 16
  %i.bf = shl i64 %i.be, 3
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bf) #37
  %.pre65.pre = load i8, ptr %i.af, align 1, !tbaa !391, !range !392
  %i.bg = trunc nuw i8 %.pre65.pre to i1
  %i.bh = select i1 %i.bg, ptr %0, ptr %i.au
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %.noexc49
  store i8 0, ptr %i.af, align 1, !tbaa !391
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre65 = phi ptr [ %i.au, %bb.n ], [ %i.bh, %bb.m ]
  store i64 1, ptr %i.e, align 16, !tbaa !854
  store i64 1, ptr %0, align 16, !tbaa !439
  store ptr %i.au, ptr %i.ai, align 8, !tbaa !439
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.p:                                             ; preds = %bb.k
  store i64 1, ptr %i.e, align 16, !tbaa !854
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.q:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i46
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #42
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.p, %bb.o
  %.pre-phi70 = phi ptr [ %i.ak, %bb.p ], [ %.pre65, %bb.o ]
  store i64 0, ptr %.pre-phi70, align 8, !tbaa !856
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bk, align 8, !tbaa !863
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit55

bb.r:                                             ; preds = %bb.j, %bb.i
  %.039 = phi i64 [ %i.aq, %bb.j ], [ %i.ae, %bb.i ]
  %i.bl = add nuw i64 %i.b, 1                     ; 5 uses
  %i.bm = icmp ult i64 %i.bl, %i.f
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.r
  %i.bn = sub nuw nsw i64 64, %i.d                ; 2 uses
  %i.bo = xor i64 %i.b, -1
  %i.bp = add i64 %i.f, %i.bo                     ; 6 uses
  %min.iters.check = icmp ult i64 %i.bp, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bq = shl i64 %i.f, 3                         ; 2 uses
  %i.br = add i64 %i.bq, -8                       ; 2 uses
  %i.bs = shl i64 %i.b, 3                         ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs
  %scevgep = getelementptr i8, ptr %i.ak, i64 %i.bt ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.ak, i64 %i.bs
  %scevgep80 = getelementptr i8, ptr %i.ak, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.ak, i64 %i.bs
  %scevgep81 = getelementptr i8, ptr %i.bu, i64 8
  %scevgep82 = getelementptr i8, ptr %i.ak, i64 %i.bq
  %bound0 = icmp ult ptr %i.ak, %scevgep80
  %bound1 = icmp ult ptr %scevgep79, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound083 = icmp ult ptr %i.ak, %scevgep82
  %bound184 = icmp ult ptr %scevgep81, %scevgep
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx = or i1 %found.conflict, %found.conflict85
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, -2                      ; 5 uses
  %i.bv = add i64 %i.bl, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat87 = shufflevector <2 x i64> %broadcast.splatinsert86, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bw = getelementptr [8 x i8], ptr %i.ak, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = getelementptr [8 x i8], ptr %i.ak, i64 %index ; 3 uses
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.b
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !tbaa !856, !alias.scope !8099
  %i.bz = lshr <2 x i64> %wide.load, %broadcast.splat87 ; 2 uses
  store <2 x i64> %i.bz, ptr %i.bx, align 8, !tbaa !856, !alias.scope !8100, !noalias !8101
  %i.ca = getelementptr [8 x i8], ptr %i.bw, i64 %index
  %wide.load88 = load <2 x i64>, ptr %i.ca, align 8, !tbaa !856, !alias.scope !8102
  %i.cb = shl <2 x i64> %wide.load88, %broadcast.splat
  %i.cc = or disjoint <2 x i64> %i.cb, %i.bz
  store <2 x i64> %i.cc, ptr %i.bx, align 8, !tbaa !856, !alias.scope !8100, !noalias !8101
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !8097

middle.block:                                     ; preds = %vector.body
  %i.ce = add i64 %n.vec, %i.b
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph ], [ %i.bv, %middle.block ]
  %.060.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.cf = phi i64 [ %i.cq, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.060 = phi i64 [ %i.co, %scalar.ph ], [ %.060.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.ak, i64 %.060 ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cg, i64 %i.b
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !856
  %i.cj = lshr i64 %i.ci, %i.d                    ; 2 uses
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !856
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.cf
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !856
  %i.cm = shl i64 %i.cl, %i.bn
  %i.cn = or disjoint i64 %i.cm, %i.cj
  store i64 %i.cn, ptr %i.cg, align 8, !tbaa !856
  %i.co = add i64 %.060, 1                        ; 3 uses
  %i.cp = add i64 %i.co, %i.b                     ; 2 uses
  %i.cq = add nuw i64 %i.cp, 1
  %exitcond.not = icmp eq i64 %i.co, %i.bp
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !8098

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.r
  %.0.lcssa = phi i64 [ 0, %bb.r ], [ %i.bp, %middle.block ], [ %i.bp, %scalar.ph ]
  %.lcssa = phi i64 [ %i.b, %bb.r ], [ %i.ce, %middle.block ], [ %i.cp, %scalar.ph ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.lcssa
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !856
  %i.ct = lshr i64 %i.cs, %i.d
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0.lcssa
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !856
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.039, i64 288230376151711744) ; 4 uses
  %i.cv = load i64, ptr %0, align 16
  %spec.select.i8.i51 = select i1 %i.ah, i64 2, i64 %i.cv ; 2 uses
  %i.cw = icmp ugt i64 %spec.select.i, %spec.select.i8.i51
  br i1 %i.cw, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i52, label %bb.w

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i52: ; preds = %._crit_edge
  %i.cx = shl nuw nsw i64 %spec.select.i8.i51, 2
  %.sroa.speculated16.i53 = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 %spec.select.i)
  %.sroa.speculated.i54 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i53, i64 288230376151711744) ; 2 uses
  %i.cy = shl nuw nsw i64 %.sroa.speculated.i54, 3
  %i.cz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #38 ; 2 uses
  %i.da = load i8, ptr %i.af, align 1, !tbaa !391, !range !392, !noundef !393
  %i.db = trunc nuw i8 %i.da to i1                ; 2 uses
  %i.dc = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dd = select i1 %i.db, ptr %0, ptr %i.dc
  %i.de = load i64, ptr %i.e, align 16, !tbaa !854
  %i.df = shl i64 %i.de, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cz, ptr align 8 %i.dd, i64 %i.df, i1 false)
  br i1 %i.db, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i52
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !864, !range !392, !noundef !393
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = load i64, ptr %0, align 16
  %i.dk = shl i64 %i.dj, 3
  tail call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dk) #37
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i52
  store i8 0, ptr %i.af, align 1, !tbaa !391
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !854
  store i64 %.sroa.speculated.i54, ptr %0, align 16, !tbaa !439
  store ptr %i.cz, ptr %i.ai, align 8, !tbaa !439
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit55

bb.w:                                             ; preds = %._crit_edge
  store i64 %spec.select.i, ptr %i.e, align 16, !tbaa !854
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit55

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit55: ; preds = %bb.w, %bb.v, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit, %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEv.exit, !prof !853

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 25), align 1, !tbaa !391, !alias.scope !8107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 26), align 2, !tbaa !864, !alias.scope !8107
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 16), align 16, !tbaa !854, !alias.scope !8107
  store i64 0, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, align 16, !tbaa !856, !alias.scope !8107
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 24), align 8, !tbaa !863, !alias.scope !8107
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev, ptr nonnull @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result) #23
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEv.exit

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  store i64 0, ptr %0, align 16, !tbaa !439
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 26), align 2, !tbaa !864, !range !392, !noundef !393
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEv.exit
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 16), align 16, !tbaa !854
  store i64 %i.h, ptr %i.e, align 16, !tbaa !854
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 24), align 8, !tbaa !863, !range !392, !noundef !393
  store i8 %i.j, ptr %i.i, align 8, !tbaa !863
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !391
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 1, ptr %i.l, align 2, !tbaa !864
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 16, i1 false), !tbaa.struct !873
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit

bb.e:                                             ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEv.exit
  store i64 0, ptr %i.e, align 16, !tbaa !854
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 24), align 8, !tbaa !863, !range !392, !noundef !393
  store i8 %i.n, ptr %i.m, align 8, !tbaa !863
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 5 uses
  store i8 1, ptr %i.o, align 1, !tbaa !391
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 3 uses
  store i8 0, ptr %i.p, align 2, !tbaa !864
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 16), align 16, !tbaa !854 ; 3 uses
  %spec.select.i4 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 288230376151711744) ; 3 uses
  %i.r = icmp ugt i64 %i.q, 2
  br i1 %i.r, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i, label %bb.j

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.e
  %.sroa.speculated16.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i4, i64 8) ; 2 uses
  %i.s = shl nuw nsw i64 %.sroa.speculated16.i, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #38 ; 4 uses
  %i.u = load i8, ptr %i.o, align 1, !tbaa !391, !range !392, !noundef !393
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = select i1 %i.v, ptr %0, ptr %i.x
  %i.z = load i64, ptr %i.e, align 16, !tbaa !854
  %i.aa = shl i64 %i.z, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.y, i64 %i.aa, i1 false)
  br i1 %i.v, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.ab = load i8, ptr %i.p, align 2, !tbaa !864, !range !392, !noundef !393
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %0, align 16
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ae) #37
  %.pre.pre = load i8, ptr %i.o, align 1, !tbaa !391, !range !392
  %i.af = trunc nuw i8 %.pre.pre to i1
  %i.ag = select i1 %i.af, ptr %0, ptr %i.t
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  store i8 0, ptr %i.o, align 1, !tbaa !391
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre = phi ptr [ %i.t, %bb.h ], [ %i.ag, %bb.g ]
  store i64 %spec.select.i4, ptr %i.e, align 16, !tbaa !854
  store i64 %.sroa.speculated16.i, ptr %0, align 16, !tbaa !439
  store ptr %i.t, ptr %i.w, align 8, !tbaa !439
  %.pre17 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 16), align 16, !tbaa !854
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

bb.j:                                             ; preds = %bb.e
  store i64 %spec.select.i4, ptr %i.e, align 16, !tbaa !854
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit: ; preds = %bb.j, %bb.i
  %i.ah = phi i64 [ %i.q, %bb.j ], [ %.pre17, %bb.i ]
  %i.ai = phi ptr [ %0, %bb.j ], [ %.pre, %bb.i ]
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE4zeroEvE6result, i64 25), align 1, !tbaa !391, !range !392, !noundef !393
end_hunk_0
