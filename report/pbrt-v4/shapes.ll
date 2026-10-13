Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pstd3pmr21polymorphic_allocatorISt4byteE9constructIN4pbrt12TriangleMeshEJRKNS5_9TransformERbRSt6vectorIiSaIiEERSB_INS5_6Point3IfEESaISG_EESB_INS5_7Vector3IfEESaISL_EERSB_INS5_7Normal3IfEESaISP_EERSB_INS5_6Point2IfEESaISU_EESE_RS3_EEEvPT_DpOT0_:bb.a
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36
  %.pre = load ptr, ptr %4, align 8, !tbaa !143   ; 2 uses
  %.pre72 = load ptr, ptr %i.c, align 8, !tbaa !143
  %.pre81 = ptrtoint ptr %.pre72 to i64
  %.pre82 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi83 = phi i64 [ %.pre82, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre81, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.l, ptr %11, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !148
  %i.p = sub i64 %.pre-phi, %.pre-phi83           ; 4 uses
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !250

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 4
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.k, align 4, !tbaa !89
  store i32 %i.s, ptr %i.l, align 4, !tbaa !89
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  store ptr %i.t, ptr %i.m, align 8, !tbaa !150
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !145  ; 3 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !146    ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i19 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i19, label %.noexc21, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.aa = sdiv exact i64 %i.z, 12
  %i.ab = icmp ugt i64 %i.aa, 768614336404564650
  br i1 %i.ab, label %.noexc.i.i20, label %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !249

.noexc.i.i20:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %.noexc.i.i20
  unreachable

_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #36
          to label %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc21_crit_edge unwind label %bb.v

_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc21_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre73 = load ptr, ptr %5, align 8, !tbaa !151
  %.pre74 = load ptr, ptr %i.u, align 8, !tbaa !151
  br label %.noexc21

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc21_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.pre74, %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc21_crit_edge ] ; 2 uses
  %i.ae = phi ptr [ %i.w, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.pre73, %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc21_crit_edge ] ; 2 uses
  %i.af = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.ac, %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc21_crit_edge ] ; 4 uses
  store ptr %i.af, ptr %12, align 8, !tbaa !146
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !168
  %.not7.i.i.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not7.i.i.i.i.i, label %.loopexit67, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc21, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.af, %.noexc21 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ae, %.noexc21 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i, i64 12, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.ad
  br i1 %.not.i.i.i.i.i, label %.loopexit67, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.loopexit67:                                      ; preds = %.lr.ph.i.i.i.i.i, %.noexc21
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.af, %.noexc21 ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !145
  %i.al = load <2 x ptr>, ptr %6, align 8, !tbaa !156
  store <2 x ptr> %i.al, ptr %13, align 16, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !166
  store ptr %i.ao, ptr %i.am, align 16, !tbaa !166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !162 ; 3 uses
  %i.ar = load ptr, ptr %7, align 8, !tbaa !161   ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i22 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i.i.i22, label %.noexc31, label %bb.h

bb.h:                                             ; preds = %.loopexit67
  %i.av = sdiv exact i64 %i.au, 12
  %i.aw = icmp ugt i64 %i.av, 768614336404564650
  br i1 %i.aw, label %.noexc.i.i29, label %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !249

.noexc.i.i29:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc30 unwind label %bb.w

.noexc30:                                         ; preds = %.noexc.i.i29
  unreachable

_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #36
          to label %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc31_crit_edge unwind label %bb.w

_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc31_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre75 = load ptr, ptr %7, align 8, !tbaa !159
  %.pre76 = load ptr, ptr %i.ap, align 8, !tbaa !159
  br label %.noexc31

.noexc31:                                         ; preds = %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc31_crit_edge, %.loopexit67
  %i.ay = phi ptr [ %i.aq, %.loopexit67 ], [ %.pre76, %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc31_crit_edge ] ; 2 uses
  %i.az = phi ptr [ %i.ar, %.loopexit67 ], [ %.pre75, %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc31_crit_edge ] ; 2 uses
  %i.ba = phi ptr [ null, %.loopexit67 ], [ %i.ax, %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc31_crit_edge ] ; 4 uses
  store ptr %i.ba, ptr %14, align 8, !tbaa !161
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !165
  %.not7.i.i.i.i.i23 = icmp eq ptr %i.az, %i.ay
  br i1 %.not7.i.i.i.i.i23, label %.loopexit66, label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.noexc31, %.lr.ph.i.i.i.i.i24
  %.09.i.i.i.i.i25 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i24 ], [ %i.ba, %.noexc31 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i26 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i24 ], [ %i.az, %.noexc31 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i25, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i26, i64 12, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i26, i64 12 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i25, i64 12 ; 2 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.be, %i.ay
  br i1 %.not.i.i.i.i.i27, label %.loopexit66, label %.lr.ph.i.i.i.i.i24, !llvm.loop !8

.loopexit66:                                      ; preds = %.lr.ph.i.i.i.i.i24, %.noexc31
  %.0.lcssa.i.i.i.i.i28 = phi ptr [ %i.ba, %.noexc31 ], [ %i.bf, %.lr.ph.i.i.i.i.i24 ]
  store ptr %.0.lcssa.i.i.i.i.i28, ptr %i.bb, align 8, !tbaa !162
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !155 ; 3 uses
  %i.bi = load ptr, ptr %8, align 8, !tbaa !154   ; 3 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i32 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i32, label %.noexc41, label %bb.i

bb.i:                                             ; preds = %.loopexit66
  %i.bm = icmp ugt i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %.noexc.i.i39, label %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !249

.noexc.i.i39:                                     ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc40 unwind label %bb.x

.noexc40:                                         ; preds = %.noexc.i.i39
  unreachable

_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.i
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #36
          to label %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge unwind label %bb.x

_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre77 = load ptr, ptr %8, align 8, !tbaa !152
  %.pre78 = load ptr, ptr %i.bg, align 8, !tbaa !152
  br label %.noexc41

.noexc41:                                         ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge, %.loopexit66
  %i.bo = phi ptr [ %i.bh, %.loopexit66 ], [ %.pre78, %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ] ; 3 uses
  %i.bp = phi ptr [ %i.bi, %.loopexit66 ], [ %.pre77, %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ] ; 7 uses
  %i.bq = phi ptr [ null, %.loopexit66 ], [ %i.bn, %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc41_crit_edge ] ; 9 uses
  store ptr %i.bq, ptr %15, align 8, !tbaa !154
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bl
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !167
  %.not7.i.i.i.i.i33 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not7.i.i.i.i.i33, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc41
  %i.bu = ptrtoaddr ptr %i.bp to i64              ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bq to i64
  %i.bw = ptrtoaddr ptr %i.bo to i64
  %i.bx = add i64 %i.bw, -8
  %i.by = sub i64 %i.bx, %i.bu                    ; 3 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  %i.cb = sub i64 %i.bu, %i.bv
  %diff.check = icmp ugt i64 %i.cb, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i34.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check125 = icmp ult i64 %i.by, 120
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %i.ca, 12
  %n.vec = and i64 %i.ca, 4611686018427387888     ; 4 uses
  %i.cd = shl i64 %n.vec, 3                       ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bq, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bp, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.cg ; 4 uses
  %next.gep126 = getelementptr i8, ptr %i.bp, i64 %i.cg ; 4 uses
  %i.ch = getelementptr i8, ptr %next.gep126, i64 32
  %i.ci = getelementptr i8, ptr %next.gep126, i64 64
  %i.cj = getelementptr i8, ptr %next.gep126, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep126, align 4
  %wide.load127 = load <4 x i64>, ptr %i.ch, align 4
  %wide.load128 = load <4 x i64>, ptr %i.ci, align 4
  %wide.load129 = load <4 x i64>, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %next.gep, i64 32
  %i.cl = getelementptr i8, ptr %next.gep, i64 64
  %i.cm = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4
  store <4 x i64> %wide.load127, ptr %i.ck, align 4
  store <4 x i64> %wide.load128, ptr %i.cl, align 4
  store <4 x i64> %wide.load129, ptr %i.cm, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1903

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i34.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.co = shl i64 %n.vec131, 3                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bq, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %i.bp, i64 %i.co
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = shl i64 %index132, 3                    ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.bq, i64 %i.cr
  %next.gep134 = getelementptr i8, ptr %i.bp, i64 %i.cr
  %wide.load135 = load <4 x i64>, ptr %next.gep134, align 4
  store <4 x i64> %wide.load135, ptr %next.gep133, align 4
  %index.next136 = add nuw i64 %index132, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1904

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %i.ca, %n.vec131
  br i1 %cmp.n137, label %.loopexit, label %.lr.ph.i.i.i.i.i34.preheader

.lr.ph.i.i.i.i.i34.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i35.ph = phi ptr [ %i.bq, %iter.check ], [ %i.ce, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i36.ph = phi ptr [ %i.bp, %iter.check ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i34

.lr.ph.i.i.i.i.i34:                               ; preds = %.lr.ph.i.i.i.i.i34.preheader, %.lr.ph.i.i.i.i.i34
  %.09.i.i.i.i.i35 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i34 ], [ %.09.i.i.i.i.i35.ph, %.lr.ph.i.i.i.i.i34.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i36 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i34 ], [ %.sroa.04.08.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i34.preheader ] ; 2 uses
  %i.ct = load i64, ptr %.sroa.04.08.i.i.i.i.i36, align 4
  store i64 %i.ct, ptr %.09.i.i.i.i.i35, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i36, i64 8 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i35, i64 8 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.cu, %i.bo
  br i1 %.not.i.i.i.i.i37, label %.loopexit, label %.lr.ph.i.i.i.i.i34, !llvm.loop !1905

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i34, %middle.block, %vec.epilog.middle.block, %.noexc41
  %.0.lcssa.i.i.i.i.i38 = phi ptr [ %i.bq, %.noexc41 ], [ %i.cp, %vec.epilog.middle.block ], [ %i.ce, %middle.block ], [ %i.cv, %.lr.ph.i.i.i.i.i34 ]
  store ptr %.0.lcssa.i.i.i.i.i38, ptr %i.br, align 8, !tbaa !155
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !150 ; 2 uses
  %i.cy = load ptr, ptr %9, align 8, !tbaa !149   ; 3 uses
  %i.cz = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = sub i64 %i.cz, %i.da                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %.not.i.i.i.i42 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not.i.i.i.i42, label %.noexc46, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.dc = icmp ugt i64 %i.db, 9223372036854775804
  br i1 %i.dc, label %.noexc.i.i44, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43, !prof !249

.noexc.i.i44:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc45 unwind label %bb.y

.noexc45:                                         ; preds = %.noexc.i.i44
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43: ; preds = %bb.j
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #36
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43..noexc46_crit_edge unwind label %bb.y

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43..noexc46_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43
  %.pre79 = load ptr, ptr %9, align 8, !tbaa !143 ; 2 uses
  %.pre80 = load ptr, ptr %i.cw, align 8, !tbaa !143
  %.pre84 = ptrtoint ptr %.pre80 to i64
  %.pre86 = ptrtoint ptr %.pre79 to i64
  br label %.noexc46

.noexc46:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43..noexc46_crit_edge, %.loopexit
  %.pre-phi87 = phi i64 [ %.pre86, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43..noexc46_crit_edge ], [ %i.da, %.loopexit ]
  %.pre-phi85 = phi i64 [ %.pre84, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43..noexc46_crit_edge ], [ %i.cz, %.loopexit ]
  %i.de = phi ptr [ %.pre79, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43..noexc46_crit_edge ], [ %i.cy, %.loopexit ] ; 2 uses
  %i.df = phi ptr [ %i.dd, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i43..noexc46_crit_edge ], [ null, %.loopexit ] ; 5 uses
  store ptr %i.df, ptr %16, align 8, !tbaa !149
  %i.dg = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.db
  %i.di = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !148
  %i.dj = sub i64 %.pre-phi85, %.pre-phi87        ; 4 uses
  %i.dk = icmp sgt i64 %i.dj, 4
  br i1 %i.dk, label %bb.k, label %bb.l, !prof !250

bb.k:                                             ; preds = %.noexc46
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.df, ptr align 4 %i.de, i64 %i.dj, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %.noexc46
  %i.dl = icmp eq i64 %i.dj, 4
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = load i32, ptr %i.de, align 4, !tbaa !89
  store i32 %i.dm, ptr %i.df, align 4, !tbaa !89
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.dn = getelementptr inbounds i8, ptr %i.df, i64 %i.dj
  store ptr %i.dn, ptr %i.dg, align 8, !tbaa !150
  %.sroa.0.0.copyload = load ptr, ptr %10, align 8, !tbaa !80
  %i.do = ptrtoint ptr %.sroa.0.0.copyload to i64
  invoke void @_ZN4pbrt12TriangleMeshC1ERKNS_9TransformEbSt6vectorIiSaIiEES4_INS_6Point3IfEESaIS8_EES4_INS_7Vector3IfEESaISC_EES4_INS_7Normal3IfEESaISG_EES4_INS_6Point2IfEESaISK_EES6_N4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(58) %1, ptr noundef nonnull align 4 dereferenceable(128) %2, i1 noundef zeroext %i.b, ptr nofree noundef nonnull align 8 dereferenceable(24) %11, ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr nofree noundef nonnull align 8 dereferenceable(24) %16, i64 %i.do)
          to label %bb.o unwind label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %16, align 8, !tbaa !149  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr %i.di, align 8, !tbaa !148
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dt) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  %i.du = load ptr, ptr %15, align 8, !tbaa !154  ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dv = load ptr, ptr %i.bt, align 8, !tbaa !167
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #33
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit:  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.q
  %i.dz = load ptr, ptr %14, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit
  %i.ea = load ptr, ptr %i.bd, align 8, !tbaa !165
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #33
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, %bb.r
  %i.ee = load ptr, ptr %13, align 16, !tbaa !158 ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIN4pbrt7Vector3IfEESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN4pstd3pmr21polymorphic_allocatorISt4byteE9constructIN4pbrt17BilinearPatchMeshEJRKNS5_9TransformERbRSt6vectorIiSaIiEERSB_INS5_6Point3IfEESaISG_EERSB_INS5_7Normal3IfEESaISL_EERSB_INS5_6Point2IfEESaISQ_EESE_DnRS3_EEEvPT_DpOT0_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !249

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36
  %.pre = load ptr, ptr %4, align 8, !tbaa !143   ; 2 uses
  %.pre68 = load ptr, ptr %i.c, align 8, !tbaa !143
  %.pre77 = ptrtoint ptr %.pre68 to i64
  %.pre78 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi79 = phi i64 [ %.pre78, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.g, %bb.a ]
  %.pre-phi = phi i64 [ %.pre77, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.l, ptr %11, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !148
  %i.p = sub i64 %.pre-phi, %.pre-phi79           ; 4 uses
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !250

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 4
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.k, align 4, !tbaa !89
  store i32 %i.s, ptr %i.l, align 4, !tbaa !89
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.p
  store ptr %i.t, ptr %i.m, align 8, !tbaa !150
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !145  ; 3 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !146    ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i.i.i18, label %.noexc20, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.aa = sdiv exact i64 %i.z, 12
  %i.ab = icmp ugt i64 %i.aa, 768614336404564650
  br i1 %i.ab, label %.noexc.i.i19, label %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !249

.noexc.i.i19:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i19
  unreachable

_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #36
          to label %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge unwind label %bb.u

_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre69 = load ptr, ptr %5, align 8, !tbaa !151
  %.pre70 = load ptr, ptr %i.u, align 8, !tbaa !151
  br label %.noexc20

.noexc20:                                         ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ad = phi ptr [ %i.v, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.pre70, %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge ] ; 2 uses
  %i.ae = phi ptr [ %i.w, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %.pre69, %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge ] ; 2 uses
  %i.af = phi ptr [ null, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit ], [ %i.ac, %_ZNSt15__new_allocatorIN4pbrt6Point3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc20_crit_edge ] ; 4 uses
  store ptr %i.af, ptr %12, align 8, !tbaa !146
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !168
  %.not7.i.i.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not7.i.i.i.i.i, label %.loopexit63, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc20, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.af, %.noexc20 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ae, %.noexc20 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i, i64 12, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.ad
  br i1 %.not.i.i.i.i.i, label %.loopexit63, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

.loopexit63:                                      ; preds = %.lr.ph.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.af, %.noexc20 ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !145
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !162 ; 3 uses
  %i.an = load ptr, ptr %6, align 8, !tbaa !161   ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i21 = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i.i.i21, label %.noexc30, label %bb.h

bb.h:                                             ; preds = %.loopexit63
  %i.ar = sdiv exact i64 %i.aq, 12
  %i.as = icmp ugt i64 %i.ar, 768614336404564650
  br i1 %i.as, label %.noexc.i.i28, label %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !249

.noexc.i.i28:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %.noexc.i.i28
  unreachable

_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #36
          to label %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge unwind label %bb.v

_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre71 = load ptr, ptr %6, align 8, !tbaa !159
  %.pre72 = load ptr, ptr %i.al, align 8, !tbaa !159
  br label %.noexc30

.noexc30:                                         ; preds = %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge, %.loopexit63
  %i.au = phi ptr [ %i.am, %.loopexit63 ], [ %.pre72, %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ] ; 2 uses
  %i.av = phi ptr [ %i.an, %.loopexit63 ], [ %.pre71, %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ] ; 2 uses
  %i.aw = phi ptr [ null, %.loopexit63 ], [ %i.at, %_ZNSt15__new_allocatorIN4pbrt7Normal3IfEEE8allocateEmPKv.exit.i.i.i.i..noexc30_crit_edge ] ; 4 uses
  store ptr %i.aw, ptr %13, align 8, !tbaa !161
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !165
  %.not7.i.i.i.i.i22 = icmp eq ptr %i.av, %i.au
  br i1 %.not7.i.i.i.i.i22, label %.loopexit62, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %.noexc30, %.lr.ph.i.i.i.i.i23
  %.09.i.i.i.i.i24 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i23 ], [ %i.aw, %.noexc30 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i25 = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i23 ], [ %i.av, %.noexc30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i24, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i25, i64 12, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i25, i64 12 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i24, i64 12 ; 2 uses
  %.not.i.i.i.i.i26 = icmp eq ptr %i.ba, %i.au
  br i1 %.not.i.i.i.i.i26, label %.loopexit62, label %.lr.ph.i.i.i.i.i23, !llvm.loop !8

.loopexit62:                                      ; preds = %.lr.ph.i.i.i.i.i23, %.noexc30
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.aw, %.noexc30 ], [ %i.bb, %.lr.ph.i.i.i.i.i23 ]
  store ptr %.0.lcssa.i.i.i.i.i27, ptr %i.ax, align 8, !tbaa !162
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !155 ; 3 uses
  %i.be = load ptr, ptr %7, align 8, !tbaa !154   ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i31 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i.i.i.i31, label %.noexc40, label %bb.i

bb.i:                                             ; preds = %.loopexit62
  %i.bi = icmp ugt i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %.noexc.i.i38, label %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !249

.noexc.i.i38:                                     ; preds = %bb.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc39 unwind label %bb.w

.noexc39:                                         ; preds = %.noexc.i.i38
  unreachable

_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.i
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #36
          to label %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc40_crit_edge unwind label %bb.w

_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc40_crit_edge: ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre73 = load ptr, ptr %7, align 8, !tbaa !152
  %.pre74 = load ptr, ptr %i.bc, align 8, !tbaa !152
  br label %.noexc40

.noexc40:                                         ; preds = %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc40_crit_edge, %.loopexit62
  %i.bk = phi ptr [ %i.bd, %.loopexit62 ], [ %.pre74, %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc40_crit_edge ] ; 3 uses
  %i.bl = phi ptr [ %i.be, %.loopexit62 ], [ %.pre73, %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc40_crit_edge ] ; 7 uses
  %i.bm = phi ptr [ null, %.loopexit62 ], [ %i.bj, %_ZNSt15__new_allocatorIN4pbrt6Point2IfEEE8allocateEmPKv.exit.i.i.i.i..noexc40_crit_edge ] ; 9 uses
  store ptr %i.bm, ptr %14, align 8, !tbaa !154
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bh
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !167
  %.not7.i.i.i.i.i32 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not7.i.i.i.i.i32, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc40
  %i.bq = ptrtoaddr ptr %i.bl to i64              ; 2 uses
  %i.br = ptrtoaddr ptr %i.bm to i64
  %i.bs = ptrtoaddr ptr %i.bk to i64
  %i.bt = add i64 %i.bs, -8
  %i.bu = sub i64 %i.bt, %i.bq                    ; 3 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bu, 24
  %i.bx = sub i64 %i.bq, %i.br
  %diff.check = icmp ugt i64 %i.bx, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i33.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check119 = icmp ult i64 %i.bu, 120
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bw, 12
  %n.vec = and i64 %i.bw, 4611686018427387888     ; 4 uses
  %i.bz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bm, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bl, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.cc ; 4 uses
  %next.gep120 = getelementptr i8, ptr %i.bl, i64 %i.cc ; 4 uses
  %i.cd = getelementptr i8, ptr %next.gep120, i64 32
  %i.ce = getelementptr i8, ptr %next.gep120, i64 64
  %i.cf = getelementptr i8, ptr %next.gep120, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep120, align 4
  %wide.load121 = load <4 x i64>, ptr %i.cd, align 4
  %wide.load122 = load <4 x i64>, ptr %i.ce, align 4
  %wide.load123 = load <4 x i64>, ptr %i.cf, align 4
  %i.cg = getelementptr i8, ptr %next.gep, i64 32
  %i.ch = getelementptr i8, ptr %next.gep, i64 64
  %i.ci = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4
  store <4 x i64> %wide.load121, ptr %i.cg, align 4
  store <4 x i64> %wide.load122, ptr %i.ch, align 4
  store <4 x i64> %wide.load123, ptr %i.ci, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !1906

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i33.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec125 = and i64 %i.bw, 4611686018427387900  ; 3 uses
  %i.ck = shl i64 %n.vec125, 3                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bm, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bl, i64 %i.ck
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next130, %vec.epilog.vector.body ] ; 2 uses
  %i.cn = shl i64 %index126, 3                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.bm, i64 %i.cn
  %next.gep128 = getelementptr i8, ptr %i.bl, i64 %i.cn
  %wide.load129 = load <4 x i64>, ptr %next.gep128, align 4
  store <4 x i64> %wide.load129, ptr %next.gep127, align 4
  %index.next130 = add nuw i64 %index126, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next130, %n.vec125
  br i1 %i.co, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1907

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n131 = icmp eq i64 %i.bw, %n.vec125
  br i1 %cmp.n131, label %.loopexit, label %.lr.ph.i.i.i.i.i33.preheader

.lr.ph.i.i.i.i.i33.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.i.i34.ph = phi ptr [ %i.bm, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  %.sroa.04.08.i.i.i.i.i35.ph = phi ptr [ %i.bl, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i33

.lr.ph.i.i.i.i.i33:                               ; preds = %.lr.ph.i.i.i.i.i33.preheader, %.lr.ph.i.i.i.i.i33
  %.09.i.i.i.i.i34 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i33 ], [ %.09.i.i.i.i.i34.ph, %.lr.ph.i.i.i.i.i33.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i35 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i33 ], [ %.sroa.04.08.i.i.i.i.i35.ph, %.lr.ph.i.i.i.i.i33.preheader ] ; 2 uses
  %i.cp = load i64, ptr %.sroa.04.08.i.i.i.i.i35, align 4
  store i64 %i.cp, ptr %.09.i.i.i.i.i34, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i35, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.cq, %i.bk
  br i1 %.not.i.i.i.i.i36, label %.loopexit, label %.lr.ph.i.i.i.i.i33, !llvm.loop !1908

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i33, %middle.block, %vec.epilog.middle.block, %.noexc40
  %.0.lcssa.i.i.i.i.i37 = phi ptr [ %i.bm, %.noexc40 ], [ %i.cl, %vec.epilog.middle.block ], [ %i.ca, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i.i33 ]
  store ptr %.0.lcssa.i.i.i.i.i37, ptr %i.bn, align 8, !tbaa !155
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !150 ; 2 uses
  %i.cu = load ptr, ptr %8, align 8, !tbaa !149   ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i.i.i41 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i.i.i41, label %.noexc45, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.cy = icmp ugt i64 %i.cx, 9223372036854775804
  br i1 %i.cy, label %.noexc.i.i43, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42, !prof !249

.noexc.i.i43:                                     ; preds = %bb.j
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc44 unwind label %bb.x

.noexc44:                                         ; preds = %.noexc.i.i43
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42: ; preds = %bb.j
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #36
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42..noexc45_crit_edge unwind label %bb.x

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42..noexc45_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42
  %.pre75 = load ptr, ptr %8, align 8, !tbaa !143 ; 2 uses
  %.pre76 = load ptr, ptr %i.cs, align 8, !tbaa !143
  %.pre80 = ptrtoint ptr %.pre76 to i64
  %.pre82 = ptrtoint ptr %.pre75 to i64
  br label %.noexc45

.noexc45:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42..noexc45_crit_edge, %.loopexit
  %.pre-phi83 = phi i64 [ %.pre82, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42..noexc45_crit_edge ], [ %i.cw, %.loopexit ]
  %.pre-phi81 = phi i64 [ %.pre80, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42..noexc45_crit_edge ], [ %i.cv, %.loopexit ]
  %i.da = phi ptr [ %.pre75, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42..noexc45_crit_edge ], [ %i.cu, %.loopexit ] ; 2 uses
  %i.db = phi ptr [ %i.cz, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i42..noexc45_crit_edge ], [ null, %.loopexit ] ; 5 uses
  store ptr %i.db, ptr %15, align 8, !tbaa !149
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cx
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !148
  %i.df = sub i64 %.pre-phi81, %.pre-phi83        ; 4 uses
  %i.dg = icmp sgt i64 %i.df, 4
  br i1 %i.dg, label %bb.k, label %bb.l, !prof !250

bb.k:                                             ; preds = %.noexc45
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.db, ptr align 4 %i.da, i64 %i.df, i1 false)
  br label %bb.n

bb.l:                                             ; preds = %.noexc45
  %i.dh = icmp eq i64 %i.df, 4
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.di = load i32, ptr %i.da, align 4, !tbaa !89
  store i32 %i.di, ptr %i.db, align 4, !tbaa !89
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.dj = getelementptr inbounds i8, ptr %i.db, i64 %i.df
  store ptr %i.dj, ptr %i.dc, align 8, !tbaa !150
  %.sroa.0.0.copyload = load ptr, ptr %10, align 8, !tbaa !80
  %i.dk = ptrtoint ptr %.sroa.0.0.copyload to i64
  invoke void @_ZN4pbrt17BilinearPatchMeshC1ERKNS_9TransformEbSt6vectorIiSaIiEES4_INS_6Point3IfEESaIS8_EES4_INS_7Normal3IfEESaISC_EES4_INS_6Point2IfEESaISG_EES6_PNS_19PiecewiseConstant2DEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(128) %2, i1 noundef zeroext %i.b, ptr nofree noundef nonnull align 8 dereferenceable(24) %11, ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13, ptr nofree noundef nonnull align 8 dereferenceable(24) %14, ptr nofree noundef nonnull align 8 dereferenceable(24) %15, ptr noundef null, i64 %i.dk)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.dl = load ptr, ptr %15, align 8, !tbaa !149  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !148
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dp) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.o, %bb.p
  %i.dq = load ptr, ptr %14, align 8, !tbaa !154  ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dr = load ptr, ptr %i.bp, align 8, !tbaa !167
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.du) #33
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit:  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.q
  %i.dv = load ptr, ptr %13, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit
  %i.dw = load ptr, ptr %i.az, align 8, !tbaa !165
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.dz) #33
  br label %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, %bb.r
  %i.ea = load ptr, ptr %12, align 8, !tbaa !146  ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIN4pbrt6Point3IfEESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN4pbrt7Normal3IfEESaIS2_EED2Ev.exit
end_hunk_1
