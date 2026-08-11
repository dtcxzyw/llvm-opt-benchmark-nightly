inline.NumInlined: 7634
inline.NumDeleted: 3197
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 213
loop-unroll.NumUnrolled: 226
begin_hunk_0_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLin1ELi1EdLin1ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv1469 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next1470, %._crit_edge ] ; 4 uses
  %i.cm = getelementptr [8 x i8], ptr %i.bg, i64 %indvars.iv1469 ; 4 uses
  %i.cn = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv1469 ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1469 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.cg
  %brmerge2611 = select i1 %brmerge, i1 true, i1 %op.rdx2347
  br i1 %brmerge2611, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 6 uses
  %i.co = getelementptr [8 x i8], ptr %i.cm, i64 %index
  %wide.load = load <2 x double>, ptr %i.co, align 8, !tbaa !526, !alias.scope !678 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index
  %wide.load1709 = load <2 x double>, ptr %i.cp, align 8, !tbaa !526, !alias.scope !681
  %i.cq = getelementptr [8 x i8], ptr %i.cn, i64 %index
  %i.cr = fadd <2 x double> %wide.load, %wide.load1709
  store <2 x double> %i.cr, ptr %i.cq, align 8, !tbaa !526, !alias.scope !683, !noalias !685
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index
  %wide.load1711 = load <2 x double>, ptr %i.cs, align 8, !tbaa !526, !alias.scope !688
  %i.ct = getelementptr [8 x i8], ptr %gep, i64 %index
  %i.cu = fadd <2 x double> %wide.load, %wide.load1711
  store <2 x double> %i.cu, ptr %i.ct, align 8, !tbaa !526, !alias.scope !689, !noalias !690
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !691

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cw = mul nsw i64 %i.bh, %indvars.iv.ph
  %i.cx = getelementptr [8 x i8], ptr %i.cm, i64 %i.cw ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !526
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.ph
  %i.da = load double, ptr %i.cz, align 8, !tbaa !526
  %i.db = mul nsw i64 %i.bk, %indvars.iv.ph       ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cn, i64 %i.db
  %i.dd = fadd double %i.cy, %i.da
  store double %i.dd, ptr %i.dc, align 8, !tbaa !526
  %i.de = load double, ptr %i.cx, align 8, !tbaa !526
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.ph
  %i.dg = load double, ptr %i.df, align 8, !tbaa !526
  %i.dh = getelementptr [8 x i8], ptr %gep, i64 %i.db
  %i.di = fadd double %i.de, %i.dg
  store double %i.di, ptr %i.dh, align 8, !tbaa !526
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dj = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.dj, label %._crit_edge, label %scalar.ph

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i: ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.dk = load i64, ptr %i.g, align 8, !tbaa !31  ; 3 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %sext1432 = shl i64 %i.dk, 32                   ; 2 uses
  %i.dm = ashr exact i64 %sext1432, 32            ; 8 uses
  %.not.i.i.i.i = icmp eq i64 %sext1432, 0
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %bb.i, label %.sink.split.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.do = call noalias ptr @malloc(i64 noundef %i.dm) #37 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.invoke.i, label %bb.l

.invoke.i:                                        ; preds = %bb.i
  %i.dq = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dq, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.dq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont.i unwind label %bb.j

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.dm, ptr %i.dr, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  br label %.sink.split.i.i.i.i283

bb.j:                                             ; preds = %.invoke.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.g
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next1470 = add nuw nsw i64 %indvars.iv1469, 1 ; 2 uses
  %exitcond1473.not = icmp eq i64 %indvars.iv.next1470, %i.bm
  br i1 %exitcond1473.not, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, label %.preheader, !llvm.loop !692

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.du = mul nsw i64 %i.bh, %indvars.iv
  %i.dv = getelementptr [8 x i8], ptr %i.cm, i64 %i.du ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !526
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !526
  %i.dz = mul nsw i64 %i.bk, %indvars.iv          ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.cn, i64 %i.dz
  %i.eb = fadd double %i.dw, %i.dy
  store double %i.eb, ptr %i.ea, align 8, !tbaa !526
  %i.ec = load double, ptr %i.dv, align 8, !tbaa !526
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !526
  %i.ef = getelementptr [8 x i8], ptr %gep, i64 %i.dz
  %i.eg = fadd double %i.ec, %i.ee
  store double %i.eg, ptr %i.ef, align 8, !tbaa !526
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.eh = mul nsw i64 %i.bh, %indvars.iv.next
  %i.ei = getelementptr [8 x i8], ptr %i.cm, i64 %i.eh ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !526
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next
  %i.el = load double, ptr %i.ek, align 8, !tbaa !526
  %i.em = mul nsw i64 %i.bk, %indvars.iv.next     ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %i.cn, i64 %i.em
  %i.eo = fadd double %i.ej, %i.el
  store double %i.eo, ptr %i.en, align 8, !tbaa !526
  %i.ep = load double, ptr %i.ei, align 8, !tbaa !526
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next
  %i.er = load double, ptr %i.eq, align 8, !tbaa !526
  %i.es = getelementptr [8 x i8], ptr %gep, i64 %i.em
  %i.et = fadd double %i.ep, %i.er
  store double %i.et, ptr %i.es, align 8, !tbaa !526
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !693

bb.l:                                             ; preds = %bb.i
  store ptr %i.do, ptr %45, align 8, !tbaa !58
  %i.eu = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.dm, ptr %i.eu, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  %i.ev = call noalias ptr @malloc(i64 noundef %i.dm) #37 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.invoke.i285, label %.sink.split.i.i.i.i283

.invoke.i285:                                     ; preds = %bb.l
  %i.ex = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ex, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont.i286 unwind label %bb.m

.cont.i286:                                       ; preds = %.invoke.i285
  unreachable

.sink.split.i.i.i.i283:                           ; preds = %.sink.split.i.i.i.i, %bb.l
  %.sink.i.i.i.i284 = phi ptr [ %i.ev, %bb.l ], [ null, %.sink.split.i.i.i.i ]
  %i.ey = ptrtoint ptr %.sink.i.i.i.i284 to i64
  br label %bb.n

bb.m:                                             ; preds = %.invoke.i285
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.critedge:                                        ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.dm, ptr %i.fa, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %.sink.split.i.i.i.i283
  %storemerge = phi i64 [ 0, %.critedge ], [ %i.ey, %.sink.split.i.i.i.i283 ]
  store i64 %storemerge, ptr %46, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %i.dm, ptr %i.fb, align 8, !tbaa !36
  %i.fc = icmp sgt i32 %i.dl, 0
  br i1 %i.fc, label %.lr.ph.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count1477 = and i64 %i.dk, 2147483647
  br label %.lr.ph

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit315, %bb.n
  %.0113.lcssa = phi i32 [ 0, %bb.n ], [ %.1114, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 13 uses
  %.0111.lcssa = phi i32 [ 0, %bb.n ], [ %.1112, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 13 uses
  %i.fd = add nsw i32 %.0111.lcssa, %.0113.lcssa  ; 4 uses
  %i.fe = sext i32 %i.fd to i64                   ; 94 uses
  %i.ff = icmp eq i32 %i.fd, 0                    ; 2 uses
  %84 = mul nsw i64 %i.fe, 3
  %i.fg = icmp sgt i32 %i.fd, 0                   ; 4 uses
  br i1 %i.fg, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.fh = mul nuw nsw i64 %i.fe, 12
  %i.fi = call noalias ptr @malloc(i64 noundef %i.fh) #37 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %bb.o, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.fk = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fk, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc834 unwind label %bb.p

.noexc834:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4CGAL6HandleD2Ev.exit315
  %indvars.iv1474 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next1475, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 7 uses
  %.01111460 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1112, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 2 uses
  %.01131459 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1114, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  %i.fm = load ptr, ptr %1, align 8, !tbaa !34
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv1474
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !60
  %i.fp = sext i32 %i.fo to i64
  %i.fq = load ptr, ptr %0, align 8, !tbaa !544
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %i.fp ; 3 uses
  %i.fs = load i64, ptr %i.ar, align 8, !tbaa !554 ; 2 uses
  %i.ft = getelementptr [8 x i8], ptr %i.fr, i64 %i.fs
  %.idx1436 = shl i64 %i.fs, 4
  %i.fu = getelementptr i8, ptr %i.fr, i64 %.idx1436
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %38, ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 1 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(8) %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %bb.q unwind label %bb.aw

bb.q:                                             ; preds = %.lr.ph
  %i.fv = load ptr, ptr %38, align 8, !tbaa !24
  store ptr %i.fv, ptr %48, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.fw = load ptr, ptr %1, align 8, !tbaa !34
  %i.fx = load i64, ptr %i.g, align 8, !tbaa !31
  %i.fy = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv1474
  %i.fz = getelementptr [4 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !60
  %i.gb = sext i32 %i.ga to i64
  %i.gc = load ptr, ptr %0, align 8, !tbaa !544
  %i.gd = getelementptr [8 x i8], ptr %i.gc, i64 %i.gb ; 3 uses
  %i.ge = load i64, ptr %i.ar, align 8, !tbaa !554 ; 2 uses
  %i.gf = getelementptr [8 x i8], ptr %i.gd, i64 %i.ge
  %.idx1437 = shl i64 %i.ge, 4
  %i.gg = getelementptr i8, ptr %i.gd, i64 %.idx1437
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %35, ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 1 dereferenceable(1) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %i.gg)
          to label %bb.r unwind label %bb.ax

bb.r:                                             ; preds = %bb.q
  %i.gh = load ptr, ptr %35, align 8, !tbaa !24
  store ptr %i.gh, ptr %49, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  %i.gi = load ptr, ptr %1, align 8, !tbaa !34
  %i.gj = load i64, ptr %i.g, align 8, !tbaa !31
  %i.gk = getelementptr [4 x i8], ptr %i.gi, i64 %indvars.iv1474
  %.idx1438 = shl i64 %i.gj, 3
  %i.gl = getelementptr i8, ptr %i.gk, i64 %.idx1438
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !60
  %i.gn = sext i32 %i.gm to i64
  %i.go = load ptr, ptr %0, align 8, !tbaa !544
  %i.gp = getelementptr [8 x i8], ptr %i.go, i64 %i.gn ; 3 uses
  %i.gq = load i64, ptr %i.ar, align 8, !tbaa !554 ; 2 uses
  %i.gr = getelementptr [8 x i8], ptr %i.gp, i64 %i.gq
  %.idx1439 = shl i64 %i.gq, 4
  %i.gs = getelementptr i8, ptr %i.gp, i64 %.idx1439
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %32, ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef nonnull align 1 dereferenceable(1) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef nonnull align 8 dereferenceable(8) %i.gs)
          to label %bb.s unwind label %bb.ay

bb.s:                                             ; preds = %bb.r
  %i.gt = load ptr, ptr %32, align 8, !tbaa !24
  store ptr %i.gt, ptr %50, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Plane_3") align 8 %29, ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.t unwind label %bb.az

bb.t:                                             ; preds = %bb.s
  %i.gu = load ptr, ptr %29, align 8, !tbaa !24
  store ptr %i.gu, ptr %47, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.gv = load ptr, ptr %50, align 8, !tbaa !24   ; 4 uses
  %.not.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.gw, 0
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 3 uses
  %i.gy = load atomic i32, ptr %i.gx monotonic, align 4 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.gz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ha = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(12) %i.gv) #23, !inline_history !35
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.hd = add nsw i32 %i.gy, -1
  store atomic i32 %i.hd, ptr %i.gx monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.y:                                             ; preds = %bb.u
  br i1 %i.gz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.he = atomicrmw sub ptr %i.gx, i32 1 release, align 4
  %i.hf = icmp eq i32 %i.he, 1
  br i1 %i.hf, label %bb.aa, label %_ZN4CGAL6HandleD2Ev.exit

bb.aa:                                            ; preds = %bb.z, %bb.y
  fence acquire
  %i.hg = load ptr, ptr %50, align 8, !tbaa !24   ; 3 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !28
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(12) %i.hg) #23, !inline_history !35
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  %i.hl = load ptr, ptr %49, align 8, !tbaa !24   ; 4 uses
  %.not.i.i299 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i299, label %_ZN4CGAL6HandleD2Ev.exit301, label %bb.ac

bb.ac:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i300 = icmp eq i8 %i.hm, 0
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 3 uses
  %i.ho = load atomic i32, ptr %i.hn monotonic, align 4 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 1                    ; 2 uses
  br i1 %.not.i.i.i300, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.hp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hq = load ptr, ptr %i.hl, align 8, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(12) %i.hl) #23, !inline_history !35
  br label %_ZN4CGAL6HandleD2Ev.exit301

bb.af:                                            ; preds = %bb.ad
  %i.ht = add nsw i32 %i.ho, -1
  store atomic i32 %i.ht, ptr %i.hn monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit301

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.hp, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hu = atomicrmw sub ptr %i.hn, i32 1 release, align 4
  %i.hv = icmp eq i32 %i.hu, 1
  br i1 %i.hv, label %bb.ai, label %_ZN4CGAL6HandleD2Ev.exit301

bb.ai:                                            ; preds = %bb.ah, %bb.ag
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLin1ELi1EdLin1ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %63, ptr noundef nonnull align 8 dereferenceable(16) %46)
          to label %bb.di unwind label %bb.fs

bb.di:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.102") align 8 %62, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.dj unwind label %bb.ft

bb.dj:                                            ; preds = %bb.di
  %i.vg = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !69
  %i.vj = load ptr, ptr %i.vg, align 8, !tbaa !74 ; 8 uses
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = ptrtoint ptr %i.vj to i64               ; 2 uses
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = ashr exact i64 %i.vm, 2                 ; 4 uses
  %i.vo = load ptr, ptr %59, align 8, !tbaa !111, !noalias !730
  %i.vp = getelementptr inbounds i8, ptr %i.vo, i64 %i.tq ; 5 uses
  %i.vq = load ptr, ptr %62, align 8, !tbaa !120, !nonnull !14, !align !83
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !111 ; 5 uses
  %i.vs = icmp sgt i64 %i.vn, 0
  br i1 %i.vs, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.dj
  %xtraiter2411 = and i64 %i.vn, 3                ; 3 uses
  %i.vt = icmp ult i64 %i.vn, 4
  br i1 %i.vt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter2415 = and i64 %i.vn, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.wv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter2416 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter2416.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !60
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr [4 x i8], ptr %i.vr, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !60
  store i32 %i.vz, ptr %i.vu, align 4, !tbaa !60
  %i.wa = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.wa
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.wa
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !60
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr [4 x i8], ptr %i.vr, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !60
  store i32 %i.wg, ptr %i.wb, align 4, !tbaa !60
  %i.wh = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.wh
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !60
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr [4 x i8], ptr %i.vr, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !60
  store i32 %i.wn, ptr %i.wi, align 4, !tbaa !60
  %i.wo = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %i.wo
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !60
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr [4 x i8], ptr %i.vr, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !60
  store i32 %i.wu, ptr %i.wp, align 4, !tbaa !60
  %i.wv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter2416.next.3 = add nuw nsw i64 %niter2416, 4 ; 2 uses
  %niter2416.ncmp.3 = icmp eq i64 %niter2416.next.3, %unroll_iter2415
  br i1 %niter2416.ncmp.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !130

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.dj
  %.not.i.i.i.i338 = icmp eq ptr %i.vj, null
  br i1 %.not.i.i.i.i338, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod2413.not = icmp eq i64 %xtraiter2411, 0
  br i1 %lcmp.mod2413.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.wv, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod2414 = icmp ne i64 %xtraiter2411, 0
  call void @llvm.assume(i1 %lcmp.mod2414)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.xc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter2412 = phi i64 [ %epil.iter2412.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !60
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr [4 x i8], ptr %i.vr, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !60
  store i32 %i.xb, ptr %i.ww, align 4, !tbaa !60
  %i.xc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter2412.next = add i64 %epil.iter2412, 1 ; 2 uses
  %epil.iter2412.cmp.not = icmp eq i64 %epil.iter2412.next, %xtraiter2411
  br i1 %epil.iter2412.cmp.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !733

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.xd = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !108
  %i.xf = ptrtoint ptr %i.xe to i64
  %i.xg = sub i64 %i.xf, %i.vl
  call void @_ZdlPvm(ptr noundef nonnull %i.vj, i64 noundef %i.xg) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.xh = load ptr, ptr %63, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i339 = icmp eq ptr %i.xh, null
  br i1 %.not.i.i.i339, label %_ZNSt6vectorIiSaIiEED2Ev.exit340, label %bb.dk

bb.dk:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit
  %i.xi = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !108
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = ptrtoint ptr %i.xh to i64
  %i.xm = sub i64 %i.xk, %i.xl
  call void @_ZdlPvm(ptr noundef nonnull %i.xh, i64 noundef %i.xm) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

_ZNSt6vectorIiSaIiEED2Ev.exit340:                 ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  %i.xn = load ptr, ptr %i.tk, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i341 = icmp eq ptr %i.xn, null
  br i1 %.not.i.i.i.i341, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit340
  %i.xo = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !108
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = ptrtoint ptr %i.xn to i64
  %i.xs = sub i64 %i.xq, %i.xr
  call void @_ZdlPvm(ptr noundef nonnull %i.xn, i64 noundef %i.xs) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit340, %bb.dl
  %i.xt = load ptr, ptr %61, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i343 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i.i343, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342
  %i.xu = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !108
  %i.xw = ptrtoint ptr %i.xv to i64
  %i.xx = ptrtoint ptr %i.xt to i64
  %i.xy = sub i64 %i.xw, %i.xx
  call void @_ZdlPvm(ptr noundef nonnull %i.xt, i64 noundef %i.xy) #35
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  %i.xz = sext i32 %.0113.lcssa to i64            ; 2 uses
  %i.ya = sext i32 %.0111.lcssa to i64
  %i.yb = load ptr, ptr %59, align 8, !tbaa !111, !noalias !734
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.yb, i64 %i.xz ; 2 uses
  %i.yd = load i64, ptr %i.tj, align 8, !tbaa !113, !noalias !734 ; 2 uses
  store ptr %i.yc, ptr %64, align 8
  %.sroa.51315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.ya, ptr %.sroa.51315.0..sroa_idx, align 8
  %.sroa.61316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 1, ptr %.sroa.61316.0..sroa_idx, align 8
  %.sroa.71317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %59, ptr %.sroa.71317.0..sroa_idx, align 8
  %.sroa.81318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 32
  store i64 %i.xz, ptr %.sroa.81318.0..sroa_idx, align 8
  %.sroa.91319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 40
  store i64 0, ptr %.sroa.91319.0..sroa_idx, align 8
  %.sroa.101320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 48
  store i64 %i.yd, ptr %.sroa.101320.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store i32 %i.dl, ptr %23, align 4, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  store ptr %i.yc, ptr %24, align 8, !tbaa !137
  %i.ye = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.yd, ptr %i.ye, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %24, ptr %25, align 8, !tbaa !141
  %i.yf = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %23, ptr %i.yf, align 8, !tbaa !143
  %i.yg = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %26, ptr %i.yg, align 8, !tbaa !145
  %i.yh = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %64, ptr %i.yh, align 8, !tbaa !147
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEENS_5ArrayIiLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIiiEELi0EEELi4ELi0EE3runERSK_(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347 unwind label %bb.fx

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347: ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br i1 %i.fg, label %85, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit351

85:                                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347
  %86 = icmp samesign ugt i64 %84, 4611686018427387903
  br i1 %86, label %.invoke1670, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856: ; preds = %85
  %i.yi = mul nuw nsw i64 %i.fe, 12
  %i.yj = call noalias ptr @malloc(i64 noundef %i.yi) #37 ; 2 uses
  %i.yk = icmp eq ptr %i.yj, null
  br i1 %i.yk, label %.invoke1670, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit351

.invoke1670:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856, %85
  %i.yl = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.yl, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.yl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont1671 unwind label %bb.do

.cont1671:                                        ; preds = %.invoke1670
  unreachable

bb.do:                                            ; preds = %.invoke1670
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %.body326

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit351: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347
  %.sroa.01374.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347 ], [ %i.yj, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856 ] ; 59 uses
  %.sroa.01374.01727 = ptrtoaddr ptr %.sroa.01374.0 to i64 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %66, ptr noundef nonnull align 8 dereferenceable(16) %45)
          to label %bb.dp unwind label %bb.fy

bb.dp:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit351
  invoke void @_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.357") align 8 %65, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.dq unwind label %bb.fz

bb.dq:                                            ; preds = %bb.dp
  %i.yn = load ptr, ptr %65, align 8, !tbaa !704, !noalias !737, !nonnull !14, !align !83 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !69, !noalias !737 ; 2 uses
  %i.yr = load ptr, ptr %i.yo, align 8, !tbaa !74, !noalias !737 ; 4 uses
  %i.ys = ptrtoint ptr %i.yq to i64
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.ys, %i.yt                    ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.yq, %i.yr
  br i1 %.not.i.i.i.i.i.i.i, label %.thread1.i, label %bb.dr

.thread1.i:                                       ; preds = %bb.dq
  %i.yv = getelementptr inbounds i8, ptr null, i64 %i.yu
  br label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  %i.yw = icmp ugt i64 %i.yu, 9223372036854775804
  br i1 %i.yw, label %.noexc.i.i.i.i.i, label %bb.ds, !prof !152

.noexc.i.i.i.i.i:                                 ; preds = %bb.dr
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc352 unwind label %bb.ga

.noexc352:                                        ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.ds:                                            ; preds = %bb.dr
  %i.yx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yu) #38
          to label %.noexc353 unwind label %bb.ga ; 6 uses

.noexc353:                                        ; preds = %bb.ds
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.yu ; 3 uses
  %i.yz = icmp samesign ugt i64 %i.yu, 4
  br i1 %i.yz, label %bb.dt, label %bb.du, !prof !153

bb.dt:                                            ; preds = %.noexc353
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yx, ptr align 4 %i.yr, i64 %i.yu, i1 false), !noalias !737
  br label %bb.dw

bb.du:                                            ; preds = %.noexc353
  %i.za = icmp eq i64 %i.yu, 4
  br i1 %i.za, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.zb = load i32, ptr %i.yr, align 4, !tbaa !60, !noalias !737
  store i32 %i.zb, ptr %i.yx, align 4, !tbaa !60, !noalias !737
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %.thread1.i
  %.sroa.13.0 = phi ptr [ %i.yv, %.thread1.i ], [ %i.yy, %bb.dt ], [ %i.yy, %bb.dv ], [ %i.yy, %bb.du ] ; 2 uses
  %.sroa.51293.0 = phi ptr [ null, %.thread1.i ], [ %i.yx, %bb.dt ], [ %i.yx, %bb.dv ], [ %i.yx, %bb.du ] ; 8 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %65, i64 32
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !110, !noalias !737 ; 5 uses
  %i.ze = ptrtoint ptr %.sroa.13.0 to i64
  %i.zf = ptrtoint ptr %.sroa.51293.0 to i64
  %i.zg = sub i64 %i.ze, %i.zf                    ; 9 uses
  %.not.i.i.i.i.i.i.i354 = icmp eq ptr %.sroa.13.0, %.sroa.51293.0
  br i1 %.not.i.i.i.i.i.i.i354, label %.thread1.i356, label %bb.dx

.thread1.i356:                                    ; preds = %bb.dw
  %i.zh = getelementptr inbounds i8, ptr null, i64 %i.zg
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit

bb.dx:                                            ; preds = %bb.dw
  %i.zi = icmp ugt i64 %i.zg, 9223372036854775804
  br i1 %i.zi, label %.noexc.i.i.i.i.i355, label %bb.dy, !prof !152

.noexc.i.i.i.i.i355:                              ; preds = %bb.dx
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc357 unwind label %bb.gb

.noexc357:                                        ; preds = %.noexc.i.i.i.i.i355
  unreachable

bb.dy:                                            ; preds = %bb.dx
  %i.zj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zg) #38
          to label %.noexc358 unwind label %bb.gb ; 6 uses

.noexc358:                                        ; preds = %bb.dy
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zg ; 3 uses
  %i.zl = icmp samesign ugt i64 %i.zg, 4
  br i1 %i.zl, label %bb.dz, label %bb.ea, !prof !153

bb.dz:                                            ; preds = %.noexc358
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zj, ptr align 4 %.sroa.51293.0, i64 %i.zg, i1 false), !noalias !740
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit

bb.ea:                                            ; preds = %.noexc358
  %i.zm = icmp eq i64 %i.zg, 4
  br i1 %i.zm, label %bb.eb, label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit

bb.eb:                                            ; preds = %bb.ea
  %i.zn = load i32, ptr %.sroa.51293.0, align 4, !tbaa !60, !noalias !740
  store i32 %i.zn, ptr %i.zj, align 4, !tbaa !60, !noalias !740
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit

_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit: ; preds = %bb.eb, %bb.ea, %bb.dz, %.thread1.i356
  %.sroa.131303.0 = phi ptr [ %i.zh, %.thread1.i356 ], [ %i.zk, %bb.dz ], [ %i.zk, %bb.eb ], [ %i.zk, %bb.ea ]
  %.sroa.51299.0 = phi ptr [ null, %.thread1.i356 ], [ %i.zj, %bb.dz ], [ %i.zj, %bb.eb ], [ %i.zj, %bb.ea ] ; 10 uses
  %i.zo = ptrtoint ptr %.sroa.131303.0 to i64
  %i.zp = ptrtoint ptr %.sroa.51299.0 to i64
  %i.zq = sub i64 %i.zo, %i.zp                    ; 3 uses
  %i.zr = ashr exact i64 %i.zq, 2                 ; 7 uses
  %i.zs = load ptr, ptr %i.yn, align 8, !tbaa !34, !noalias !743
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !31, !noalias !743
  %i.zv = icmp sgt i64 %i.zd, 0
  %i.zw = icmp sgt i64 %i.zr, 0
  %or.cond.i.i359 = select i1 %i.zv, i1 %i.zw, i1 false
  br i1 %or.cond.i.i359, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_7ReverseINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.preheader:  ; preds = %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit
  %xtraiter2418 = and i64 %i.zr, 3                ; 3 uses
  %i.zx = icmp ult i64 %i.zr, 4
  %unroll_iter2422 = and i64 %i.zr, 9223372036854775804
  %lcmp.mod2420.not = icmp eq i64 %xtraiter2418, 0
  %lcmp.mod2421 = icmp ne i64 %xtraiter2418, 0
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360

.preheader.i.i.i.i.i.i.i.i.i.i.i.i360:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i361 = phi i64 [ %i.aaj, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.preheader ] ; 3 uses
  %i.zy = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i361, %i.fe
  %i.zz = getelementptr [4 x i8], ptr %.sroa.01374.0, i64 %i.zy ; 5 uses
  %i.aaa = xor i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i361, -1
  %i.aab = add nsw i64 %i.zd, %i.aaa
  %i.aac = mul nsw i64 %i.aab, %i.zu
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i362 = getelementptr [4 x i8], ptr %i.zs, i64 %i.aac ; 5 uses
  br i1 %i.zx, label %.epil.preheader2417, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new
  br i1 %lcmp.mod2420.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366, label %.epil.preheader2417

.epil.preheader2417:                              ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360
  %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360 ], [ %i.abh, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2421)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.epil.preheader2417
  %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil.init, %.epil.preheader2417 ], [ %i.aai, %bb.ec ] ; 3 uses
  %epil.iter2419 = phi i64 [ 0, %.epil.preheader2417 ], [ %epil.iter2419.next, %bb.ec ]
  %i.aad = getelementptr [4 x i8], ptr %i.zz, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51299.0, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !60, !noalias !743
  %i.aag = sext i32 %i.aaf to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.i364.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i362, i64 %i.aag
  %i.aah = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i364.epil, align 4, !tbaa !60, !noalias !743
  store i32 %i.aah, ptr %i.aad, align 4, !tbaa !60, !noalias !743
  %i.aai = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil, 1
  %epil.iter2419.next = add i64 %epil.iter2419, 1 ; 2 uses
  %epil.iter2419.cmp.not = icmp eq i64 %epil.iter2419.next, %xtraiter2418
  br i1 %epil.iter2419.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366, label %bb.ec, !llvm.loop !746

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366:           ; preds = %bb.ec, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366.unr-lcssa
  %i.aaj = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i361, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i367 = icmp eq i64 %i.aaj, %i.zd
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i367, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_7ReverseINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360, !llvm.loop !747

.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new
  %.09.i.i.i.i.i.i.i.i.i.i.i.i363 = phi i64 [ %i.abh, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360 ] ; 6 uses
  %niter2423 = phi i64 [ %niter2423.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360 ]
  %i.aak = getelementptr [4 x i8], ptr %i.zz, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51299.0, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !60, !noalias !743
  %i.aan = sext i32 %i.aam to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.i364 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i362, i64 %i.aan
  %i.aao = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i364, align 4, !tbaa !60, !noalias !743
  store i32 %i.aao, ptr %i.aak, align 4, !tbaa !60, !noalias !743
  %i.aap = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363, 1 ; 2 uses
  %i.aaq = getelementptr [4 x i8], ptr %i.zz, i64 %i.aap
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51299.0, i64 %i.aap
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !60, !noalias !743
  %i.aat = sext i32 %i.aas to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.i364.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i362, i64 %i.aat
  %i.aau = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i364.1, align 4, !tbaa !60, !noalias !743
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLi3ELi1EdLi3ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv1469 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next1470, %._crit_edge ] ; 4 uses
  %i.cf = getelementptr [8 x i8], ptr %i.bb, i64 %indvars.iv1469 ; 4 uses
  %i.cg = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv1469 ; 4 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv1469 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bz
  %brmerge2611 = select i1 %brmerge, i1 true, i1 %op.rdx2347
  br i1 %brmerge2611, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 6 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cf, i64 %index
  %wide.load = load <2 x double>, ptr %i.ch, align 8, !tbaa !526, !alias.scope !988 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %wide.load1709 = load <2 x double>, ptr %i.ci, align 8, !tbaa !526, !alias.scope !991
  %i.cj = getelementptr [8 x i8], ptr %i.cg, i64 %index
  %i.ck = fadd <2 x double> %wide.load, %wide.load1709
  store <2 x double> %i.ck, ptr %i.cj, align 8, !tbaa !526, !alias.scope !993, !noalias !995
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  %wide.load1711 = load <2 x double>, ptr %i.cl, align 8, !tbaa !526, !alias.scope !998
  %i.cm = getelementptr [8 x i8], ptr %gep, i64 %index
  %i.cn = fadd <2 x double> %wide.load, %wide.load1711
  store <2 x double> %i.cn, ptr %i.cm, align 8, !tbaa !526, !alias.scope !999, !noalias !1000
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1001

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cp = mul nsw i64 %i.bc, %indvars.iv.ph
  %i.cq = getelementptr [8 x i8], ptr %i.cf, i64 %i.cp ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !526
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !526
  %i.cu = mul nsw i64 %i.be, %indvars.iv.ph       ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.cg, i64 %i.cu
  %i.cw = fadd double %i.cr, %i.ct
  store double %i.cw, ptr %i.cv, align 8, !tbaa !526
  %i.cx = load double, ptr %i.cq, align 8, !tbaa !526
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.ph
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !526
  %i.da = getelementptr [8 x i8], ptr %gep, i64 %i.cu
  %i.db = fadd double %i.cx, %i.cz
  store double %i.db, ptr %i.da, align 8, !tbaa !526
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dc = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.dc, label %._crit_edge, label %scalar.ph

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i: ; preds = %._crit_edge, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.dd = load i64, ptr %i.g, align 8, !tbaa !31  ; 3 uses
  %i.de = trunc i64 %i.dd to i32                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %sext1432 = shl i64 %i.dd, 32                   ; 2 uses
  %i.df = ashr exact i64 %sext1432, 32            ; 8 uses
  %.not.i.i.i.i = icmp eq i64 %sext1432, 0
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %bb.i, label %.sink.split.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.dh = call noalias ptr @malloc(i64 noundef %i.df) #37 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.invoke.i, label %bb.l

.invoke.i:                                        ; preds = %bb.i
  %i.dj = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dj, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont.i unwind label %bb.j

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.h
  %i.dk = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.df, ptr %i.dk, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  br label %.sink.split.i.i.i.i283

bb.j:                                             ; preds = %.invoke.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.g
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next1470 = add nuw nsw i64 %indvars.iv1469, 1 ; 2 uses
  %exitcond1473.not = icmp eq i64 %indvars.iv.next1470, %i.bf
  br i1 %exitcond1473.not, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i, label %.preheader, !llvm.loop !1002

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dn = mul nsw i64 %i.bc, %indvars.iv
  %i.do = getelementptr [8 x i8], ptr %i.cf, i64 %i.dn ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !526
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !526
  %i.ds = mul nsw i64 %i.be, %indvars.iv          ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %i.cg, i64 %i.ds
  %i.du = fadd double %i.dp, %i.dr
  store double %i.du, ptr %i.dt, align 8, !tbaa !526
  %i.dv = load double, ptr %i.do, align 8, !tbaa !526
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !526
  %i.dy = getelementptr [8 x i8], ptr %gep, i64 %i.ds
  %i.dz = fadd double %i.dv, %i.dx
  store double %i.dz, ptr %i.dy, align 8, !tbaa !526
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ea = mul nsw i64 %i.bc, %indvars.iv.next
  %i.eb = getelementptr [8 x i8], ptr %i.cf, i64 %i.ea ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !526
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !526
  %i.ef = mul nsw i64 %i.be, %indvars.iv.next     ; 2 uses
  %i.eg = getelementptr [8 x i8], ptr %i.cg, i64 %i.ef
  %i.eh = fadd double %i.ec, %i.ee
  store double %i.eh, ptr %i.eg, align 8, !tbaa !526
  %i.ei = load double, ptr %i.eb, align 8, !tbaa !526
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !526
  %i.el = getelementptr [8 x i8], ptr %gep, i64 %i.ef
  %i.em = fadd double %i.ei, %i.ek
  store double %i.em, ptr %i.el, align 8, !tbaa !526
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !1003

bb.l:                                             ; preds = %bb.i
  store ptr %i.dh, ptr %45, align 8, !tbaa !58
  %i.en = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.df, ptr %i.en, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %46, i8 0, i64 16, i1 false)
  %i.eo = call noalias ptr @malloc(i64 noundef %i.df) #37 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %.invoke.i285, label %.sink.split.i.i.i.i283

.invoke.i285:                                     ; preds = %bb.l
  %i.eq = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.eq, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.eq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont.i286 unwind label %bb.m

.cont.i286:                                       ; preds = %.invoke.i285
  unreachable

.sink.split.i.i.i.i283:                           ; preds = %.sink.split.i.i.i.i, %bb.l
  %.sink.i.i.i.i284 = phi ptr [ %i.eo, %bb.l ], [ null, %.sink.split.i.i.i.i ]
  %i.er = ptrtoint ptr %.sink.i.i.i.i284 to i64
  br label %bb.n

bb.m:                                             ; preds = %.invoke.i285
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.critedge:                                        ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 %i.df, ptr %i.et, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %.sink.split.i.i.i.i283
  %storemerge = phi i64 [ 0, %.critedge ], [ %i.er, %.sink.split.i.i.i.i283 ]
  store i64 %storemerge, ptr %46, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 %i.df, ptr %i.eu, align 8, !tbaa !36
  %i.ev = icmp sgt i32 %i.de, 0
  br i1 %i.ev, label %.lr.ph.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count1477 = and i64 %i.dd, 2147483647
  br label %.lr.ph

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit315, %bb.n
  %.0113.lcssa = phi i32 [ 0, %bb.n ], [ %.1114, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 13 uses
  %.0111.lcssa = phi i32 [ 0, %bb.n ], [ %.1112, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 13 uses
  %i.ew = add nsw i32 %.0111.lcssa, %.0113.lcssa  ; 4 uses
  %i.ex = sext i32 %i.ew to i64                   ; 94 uses
  %i.ey = icmp eq i32 %i.ew, 0                    ; 2 uses
  %84 = mul nsw i64 %i.ex, 3
  %i.ez = icmp sgt i32 %i.ew, 0                   ; 4 uses
  br i1 %i.ez, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.fa = mul nuw nsw i64 %i.ex, 12
  %i.fb = call noalias ptr @malloc(i64 noundef %i.fa) #37 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.o, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.fd = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fd, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.fd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.noexc834 unwind label %bb.p

.noexc834:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body287

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4CGAL6HandleD2Ev.exit315
  %indvars.iv1474 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next1475, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 7 uses
  %.01111460 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1112, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 2 uses
  %.01131459 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1114, %_ZN4CGAL6HandleD2Ev.exit315 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  %i.ff = load ptr, ptr %1, align 8, !tbaa !34
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv1474
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !60
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load ptr, ptr %0, align 8, !tbaa !544
  %i.fk = getelementptr [8 x i8], ptr %i.fj, i64 %i.fi ; 3 uses
  %i.fl = load i64, ptr %i.am, align 8, !tbaa !554 ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.fk, i64 %i.fl
  %.idx1436 = shl i64 %i.fl, 4
  %i.fn = getelementptr i8, ptr %i.fk, i64 %.idx1436
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %38, ptr noundef nonnull align 1 dereferenceable(1) %39, ptr noundef nonnull align 1 dereferenceable(1) %40, ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %bb.q unwind label %bb.aw

bb.q:                                             ; preds = %.lr.ph
  %i.fo = load ptr, ptr %38, align 8, !tbaa !24
  store ptr %i.fo, ptr %48, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  %i.fp = load ptr, ptr %1, align 8, !tbaa !34
  %i.fq = load i64, ptr %i.g, align 8, !tbaa !31
  %i.fr = getelementptr [4 x i8], ptr %i.fp, i64 %indvars.iv1474
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !60
  %i.fu = sext i32 %i.ft to i64
  %i.fv = load ptr, ptr %0, align 8, !tbaa !544
  %i.fw = getelementptr [8 x i8], ptr %i.fv, i64 %i.fu ; 3 uses
  %i.fx = load i64, ptr %i.am, align 8, !tbaa !554 ; 2 uses
  %i.fy = getelementptr [8 x i8], ptr %i.fw, i64 %i.fx
  %.idx1437 = shl i64 %i.fx, 4
  %i.fz = getelementptr i8, ptr %i.fw, i64 %.idx1437
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %35, ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 1 dereferenceable(1) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.fw, ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.r unwind label %bb.ax

bb.r:                                             ; preds = %bb.q
  %i.ga = load ptr, ptr %35, align 8, !tbaa !24
  store ptr %i.ga, ptr %49, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  %i.gb = load ptr, ptr %1, align 8, !tbaa !34
  %i.gc = load i64, ptr %i.g, align 8, !tbaa !31
  %i.gd = getelementptr [4 x i8], ptr %i.gb, i64 %indvars.iv1474
  %.idx1438 = shl i64 %i.gc, 3
  %i.ge = getelementptr i8, ptr %i.gd, i64 %.idx1438
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !60
  %i.gg = sext i32 %i.gf to i64
  %i.gh = load ptr, ptr %0, align 8, !tbaa !544
  %i.gi = getelementptr [8 x i8], ptr %i.gh, i64 %i.gg ; 3 uses
  %i.gj = load i64, ptr %i.am, align 8, !tbaa !554 ; 2 uses
  %i.gk = getelementptr [8 x i8], ptr %i.gi, i64 %i.gj
  %.idx1439 = shl i64 %i.gj, 4
  %i.gl = getelementptr i8, ptr %i.gi, i64 %.idx1439
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %32, ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef nonnull align 1 dereferenceable(1) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull align 8 dereferenceable(8) %i.gl)
          to label %bb.s unwind label %bb.ay

bb.s:                                             ; preds = %bb.r
  %i.gm = load ptr, ptr %32, align 8, !tbaa !24
  store ptr %i.gm, ptr %50, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors17Construct_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Plane_3") align 8 %29, ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.t unwind label %bb.az

bb.t:                                             ; preds = %bb.s
  %i.gn = load ptr, ptr %29, align 8, !tbaa !24
  store ptr %i.gn, ptr %47, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.go = load ptr, ptr %50, align 8, !tbaa !24   ; 4 uses
  %.not.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i = icmp eq i8 %i.gp, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 3 uses
  %i.gr = load atomic i32, ptr %i.gq monotonic, align 4 ; 2 uses
  %i.gs = icmp eq i32 %i.gr, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.gs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gt = load ptr, ptr %i.go, align 8, !tbaa !28
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(12) %i.go) #23, !inline_history !35
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.gw = add nsw i32 %i.gr, -1
  store atomic i32 %i.gw, ptr %i.gq monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.y:                                             ; preds = %bb.u
  br i1 %i.gs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gx = atomicrmw sub ptr %i.gq, i32 1 release, align 4
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.aa, label %_ZN4CGAL6HandleD2Ev.exit

bb.aa:                                            ; preds = %bb.z, %bb.y
  fence acquire
  %i.gz = load ptr, ptr %50, align 8, !tbaa !24   ; 3 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !28
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(12) %i.gz) #23, !inline_history !35
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.t, %bb.w, %bb.x, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  %i.he = load ptr, ptr %49, align 8, !tbaa !24   ; 4 uses
  %.not.i.i299 = icmp eq ptr %i.he, null
  br i1 %.not.i.i299, label %_ZN4CGAL6HandleD2Ev.exit301, label %bb.ac

bb.ac:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.hf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i300 = icmp eq i8 %i.hf, 0
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 3 uses
  %i.hh = load atomic i32, ptr %i.hg monotonic, align 4 ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 1                    ; 2 uses
  br i1 %.not.i.i.i300, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.hi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !28
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(12) %i.he) #23, !inline_history !35
  br label %_ZN4CGAL6HandleD2Ev.exit301

bb.af:                                            ; preds = %bb.ad
  %i.hm = add nsw i32 %i.hh, -1
  store atomic i32 %i.hm, ptr %i.hg monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit301

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.hi, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hn = atomicrmw sub ptr %i.hg, i32 1 release, align 4
  %i.ho = icmp eq i32 %i.hn, 1
  br i1 %i.ho, label %bb.ai, label %_ZN4CGAL6HandleD2Ev.exit301

bb.ai:                                            ; preds = %bb.ah, %bb.ag
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal13minkowski_sumIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEEdLi3ELi1EdLi3ELi1ES5_S6_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EERKNS4_IT1_Li1EXT2_EXT3_ELi1EXT2_EEERKNS4_IT4_Li1EXT5_EXT6_ELi1EXT5_EEEbRNS3_15PlainObjectBaseIT7_EERNSP_IT8_EERNSP_IT9_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %63, ptr noundef nonnull align 8 dereferenceable(16) %46)
          to label %bb.di unwind label %bb.fs

bb.di:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEElsINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit
  invoke void @_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_15IndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.102") align 8 %62, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.dj unwind label %bb.ft

bb.dj:                                            ; preds = %bb.di
  %i.uz = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.va = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !69
  %i.vc = load ptr, ptr %i.uz, align 8, !tbaa !74 ; 8 uses
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = ptrtoint ptr %i.vc to i64               ; 2 uses
  %i.vf = sub i64 %i.vd, %i.ve
  %i.vg = ashr exact i64 %i.vf, 2                 ; 4 uses
  %i.vh = load ptr, ptr %59, align 8, !tbaa !111, !noalias !1029
  %i.vi = getelementptr inbounds i8, ptr %i.vh, i64 %i.tj ; 5 uses
  %i.vj = load ptr, ptr %62, align 8, !tbaa !120, !nonnull !14, !align !83
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !111 ; 5 uses
  %i.vl = icmp sgt i64 %i.vg, 0
  br i1 %i.vl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.dj
  %xtraiter2411 = and i64 %i.vg, 3                ; 3 uses
  %i.vm = icmp ult i64 %i.vg, 4
  br i1 %i.vm, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter2415 = and i64 %i.vg, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.wo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter2416 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter2416.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !60
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr [4 x i8], ptr %i.vk, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !60
  store i32 %i.vs, ptr %i.vn, align 4, !tbaa !60
  %i.vt = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.vt
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.vt
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !60
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr [4 x i8], ptr %i.vk, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !60
  store i32 %i.vz, ptr %i.vu, align 4, !tbaa !60
  %i.wa = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.wa
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.wa
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !60
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr [4 x i8], ptr %i.vk, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !60
  store i32 %i.wg, ptr %i.wb, align 4, !tbaa !60
  %i.wh = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %i.wh
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !60
  %i.wl = sext i32 %i.wk to i64
  %i.wm = getelementptr [4 x i8], ptr %i.vk, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !60
  store i32 %i.wn, ptr %i.wi, align 4, !tbaa !60
  %i.wo = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter2416.next.3 = add nuw nsw i64 %niter2416, 4 ; 2 uses
  %niter2416.ncmp.3 = icmp eq i64 %niter2416.next.3, %unroll_iter2415
  br i1 %niter2416.ncmp.3, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !130

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.dj
  %.not.i.i.i.i338 = icmp eq ptr %i.vc, null
  br i1 %.not.i.i.i.i338, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod2413.not = icmp eq i64 %xtraiter2411, 0
  br i1 %lcmp.mod2413.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.wo, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod2414 = icmp ne i64 %xtraiter2411, 0
  call void @llvm.assume(i1 %lcmp.mod2414)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.wv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter2412 = phi i64 [ %epil.iter2412.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !60
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr [4 x i8], ptr %i.vk, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !60
  store i32 %i.wu, ptr %i.wp, align 4, !tbaa !60
  %i.wv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter2412.next = add i64 %epil.iter2412, 1 ; 2 uses
  %epil.iter2412.cmp.not = icmp eq i64 %epil.iter2412.next, %xtraiter2411
  br i1 %epil.iter2412.cmp.not, label %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1032

_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.ww = getelementptr inbounds nuw i8, ptr %62, i64 24
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !108
  %i.wy = ptrtoint ptr %i.wx to i64
  %i.wz = sub i64 %i.wy, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.vc, i64 noundef %i.wz) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit: ; preds = %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen16CommaInitializerINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEcmINS_11IndexedViewIS2_St6vectorIiSaIiEENS_8internal8AllRangeILi1EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.thread
  %i.xa = load ptr, ptr %63, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i339 = icmp eq ptr %i.xa, null
  br i1 %.not.i.i.i339, label %_ZNSt6vectorIiSaIiEED2Ev.exit340, label %bb.dk

bb.dk:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit
  %i.xb = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !108
  %i.xd = ptrtoint ptr %i.xc to i64
  %i.xe = ptrtoint ptr %i.xa to i64
  %i.xf = sub i64 %i.xd, %i.xe
  call void @_ZdlPvm(ptr noundef nonnull %i.xa, i64 noundef %i.xf) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit340

_ZNSt6vectorIiSaIiEED2Ev.exit340:                 ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  %i.xg = load ptr, ptr %i.td, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i341 = icmp eq ptr %i.xg, null
  br i1 %.not.i.i.i.i341, label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit340
  %i.xh = getelementptr inbounds nuw i8, ptr %60, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !108
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = ptrtoint ptr %i.xg to i64
  %i.xl = sub i64 %i.xj, %i.xk
  call void @_ZdlPvm(ptr noundef nonnull %i.xg, i64 noundef %i.xl) #35
  br label %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342

_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit340, %bb.dl
  %i.xm = load ptr, ptr %61, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i343 = icmp eq ptr %i.xm, null
  br i1 %.not.i.i.i343, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342
  %i.xn = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !108
  %i.xp = ptrtoint ptr %i.xo to i64
  %i.xq = ptrtoint ptr %i.xm to i64
  %i.xr = sub i64 %i.xp, %i.xq
  call void @_ZdlPvm(ptr noundef nonnull %i.xm, i64 noundef %i.xr) #35
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN5Eigen11IndexedViewINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEESt6vectorIiSaIiEENS_8internal8AllRangeILi1EEEED2Ev.exit342, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  %i.xs = sext i32 %.0113.lcssa to i64            ; 2 uses
  %i.xt = sext i32 %.0111.lcssa to i64
  %i.xu = load ptr, ptr %59, align 8, !tbaa !111, !noalias !1033
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.xu, i64 %i.xs ; 2 uses
  %i.xw = load i64, ptr %i.tc, align 8, !tbaa !113, !noalias !1033 ; 2 uses
  store ptr %i.xv, ptr %64, align 8
  %.sroa.51315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 %i.xt, ptr %.sroa.51315.0..sroa_idx, align 8
  %.sroa.61316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 1, ptr %.sroa.61316.0..sroa_idx, align 8
  %.sroa.71317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %59, ptr %.sroa.71317.0..sroa_idx, align 8
  %.sroa.81318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 32
  store i64 %i.xs, ptr %.sroa.81318.0..sroa_idx, align 8
  %.sroa.91319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 40
  store i64 0, ptr %.sroa.91319.0..sroa_idx, align 8
  %.sroa.101320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %64, i64 48
  store i64 %i.xw, ptr %.sroa.101320.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  store i32 %i.de, ptr %23, align 4, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  store ptr %i.xv, ptr %24, align 8, !tbaa !137
  %i.xx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 %i.xw, ptr %i.xx, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  store ptr %24, ptr %25, align 8, !tbaa !141
  %i.xy = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %23, ptr %i.xy, align 8, !tbaa !143
  %i.xz = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %26, ptr %i.xz, align 8, !tbaa !145
  %i.ya = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %64, ptr %i.ya, align 8, !tbaa !147
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_12ArrayWrapperINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEENS_5ArrayIiLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13add_assign_opIiiEELi0EEELi4ELi0EE3runERSK_(ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347 unwind label %bb.fx

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347: ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br i1 %i.ez, label %85, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit351

85:                                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347
  %86 = icmp samesign ugt i64 %84, 4611686018427387903
  br i1 %86, label %.invoke1670, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856: ; preds = %85
  %i.yb = mul nuw nsw i64 %i.ex, 12
  %i.yc = call noalias ptr @malloc(i64 noundef %i.yb) #37 ; 2 uses
  %i.yd = icmp eq ptr %i.yc, null
  br i1 %i.yd, label %.invoke1670, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit351

.invoke1670:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856, %85
  %i.ye = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ye, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.ye, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #36
          to label %.cont1671 unwind label %bb.do

.cont1671:                                        ; preds = %.invoke1670
  unreachable

bb.do:                                            ; preds = %.invoke1670
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %.body326

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit351: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347
  %.sroa.01374.0 = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i347 ], [ %i.yc, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i856 ] ; 59 uses
  %.sroa.01374.01727 = ptrtoaddr ptr %.sroa.01374.0 to i64 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #23
  invoke void @_ZN3igl4findILin1ELin1EEESt6vectorIiSaIiEERKN5Eigen5ArrayIbXT_ELi1ELi0EXT0_ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %66, ptr noundef nonnull align 8 dereferenceable(16) %45)
          to label %bb.dp unwind label %bb.fy

bb.dp:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2IiiEERKT_RKT0_.exit351
  invoke void @_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEclISt6vectorIiSaIiEENS_8internal5all_tEEENS8_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeISB_SC_E4typeEEE19ReturnAsIndexedViewESF_E4typeERKSB_RKSC_(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::IndexedView.357") align 8 %65, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 1 dereferenceable(1) @_ZN3igl12placeholdersL3allE)
          to label %bb.dq unwind label %bb.fz

bb.dq:                                            ; preds = %bb.dp
  %i.yg = load ptr, ptr %65, align 8, !tbaa !704, !noalias !1036, !nonnull !14, !align !83 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %65, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !69, !noalias !1036 ; 2 uses
  %i.yk = load ptr, ptr %i.yh, align 8, !tbaa !74, !noalias !1036 ; 4 uses
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = sub i64 %i.yl, %i.ym                    ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.yj, %i.yk
  br i1 %.not.i.i.i.i.i.i.i, label %.thread1.i, label %bb.dr

.thread1.i:                                       ; preds = %bb.dq
  %i.yo = getelementptr inbounds i8, ptr null, i64 %i.yn
  br label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  %i.yp = icmp ugt i64 %i.yn, 9223372036854775804
  br i1 %i.yp, label %.noexc.i.i.i.i.i, label %bb.ds, !prof !152

.noexc.i.i.i.i.i:                                 ; preds = %bb.dr
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc352 unwind label %bb.ga

.noexc352:                                        ; preds = %.noexc.i.i.i.i.i
  unreachable

bb.ds:                                            ; preds = %bb.dr
  %i.yq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yn) #38
          to label %.noexc353 unwind label %bb.ga ; 6 uses

.noexc353:                                        ; preds = %bb.ds
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yn ; 3 uses
  %i.ys = icmp samesign ugt i64 %i.yn, 4
  br i1 %i.ys, label %bb.dt, label %bb.du, !prof !153

bb.dt:                                            ; preds = %.noexc353
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yq, ptr align 4 %i.yk, i64 %i.yn, i1 false), !noalias !1036
  br label %bb.dw

bb.du:                                            ; preds = %.noexc353
  %i.yt = icmp eq i64 %i.yn, 4
  br i1 %i.yt, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.yu = load i32, ptr %i.yk, align 4, !tbaa !60, !noalias !1036
  store i32 %i.yu, ptr %i.yq, align 4, !tbaa !60, !noalias !1036
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %.thread1.i
  %.sroa.13.0 = phi ptr [ %i.yo, %.thread1.i ], [ %i.yr, %bb.dt ], [ %i.yr, %bb.dv ], [ %i.yr, %bb.du ] ; 2 uses
  %.sroa.51293.0 = phi ptr [ null, %.thread1.i ], [ %i.yq, %bb.dt ], [ %i.yq, %bb.dv ], [ %i.yq, %bb.du ] ; 8 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %65, i64 32
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !110, !noalias !1036 ; 5 uses
  %i.yx = ptrtoint ptr %.sroa.13.0 to i64
  %i.yy = ptrtoint ptr %.sroa.51293.0 to i64
  %i.yz = sub i64 %i.yx, %i.yy                    ; 9 uses
  %.not.i.i.i.i.i.i.i354 = icmp eq ptr %.sroa.13.0, %.sroa.51293.0
  br i1 %.not.i.i.i.i.i.i.i354, label %.thread1.i356, label %bb.dx

.thread1.i356:                                    ; preds = %bb.dw
  %i.za = getelementptr inbounds i8, ptr null, i64 %i.yz
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit

bb.dx:                                            ; preds = %bb.dw
  %i.zb = icmp ugt i64 %i.yz, 9223372036854775804
  br i1 %i.zb, label %.noexc.i.i.i.i.i355, label %bb.dy, !prof !152

.noexc.i.i.i.i.i355:                              ; preds = %bb.dx
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc357 unwind label %bb.gb

.noexc357:                                        ; preds = %.noexc.i.i.i.i.i355
  unreachable

bb.dy:                                            ; preds = %bb.dx
  %i.zc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yz) #38
          to label %.noexc358 unwind label %bb.gb ; 6 uses

.noexc358:                                        ; preds = %bb.dy
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.yz ; 3 uses
  %i.ze = icmp samesign ugt i64 %i.yz, 4
  br i1 %i.ze, label %bb.dz, label %bb.ea, !prof !153

bb.dz:                                            ; preds = %.noexc358
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zc, ptr align 4 %.sroa.51293.0, i64 %i.yz, i1 false), !noalias !1039
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit

bb.ea:                                            ; preds = %.noexc358
  %i.zf = icmp eq i64 %i.yz, 4
  br i1 %i.zf, label %bb.eb, label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit

bb.eb:                                            ; preds = %bb.ea
  %i.zg = load i32, ptr %.sroa.51293.0, align 4, !tbaa !60, !noalias !1039
  store i32 %i.zg, ptr %i.zc, align 4, !tbaa !60, !noalias !1039
  br label %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit

_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit: ; preds = %bb.eb, %bb.ea, %bb.dz, %.thread1.i356
  %.sroa.131303.0 = phi ptr [ %i.za, %.thread1.i356 ], [ %i.zd, %bb.dz ], [ %i.zd, %bb.eb ], [ %i.zd, %bb.ea ]
  %.sroa.51299.0 = phi ptr [ null, %.thread1.i356 ], [ %i.zc, %bb.dz ], [ %i.zc, %bb.eb ], [ %i.zc, %bb.ea ] ; 10 uses
  %i.zh = ptrtoint ptr %.sroa.131303.0 to i64
  %i.zi = ptrtoint ptr %.sroa.51299.0 to i64
  %i.zj = sub i64 %i.zh, %i.zi                    ; 3 uses
  %i.zk = ashr exact i64 %i.zj, 2                 ; 7 uses
  %i.zl = load ptr, ptr %i.yg, align 8, !tbaa !34, !noalias !1042
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !31, !noalias !1042
  %i.zo = icmp sgt i64 %i.yw, 0
  %i.zp = icmp sgt i64 %i.zk, 0
  %or.cond.i.i359 = select i1 %i.zo, i1 %i.zp, i1 false
  br i1 %or.cond.i.i359, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.preheader, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_7ReverseINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.preheader:  ; preds = %_ZN5Eigen12VectorwiseOpINS_11IndexedViewIKNS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEESt6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EE7reverseEv.exit
  %xtraiter2418 = and i64 %i.zk, 3                ; 3 uses
  %i.zq = icmp ult i64 %i.zk, 4
  %unroll_iter2422 = and i64 %i.zk, 9223372036854775804
  %lcmp.mod2420.not = icmp eq i64 %xtraiter2418, 0
  %lcmp.mod2421 = icmp ne i64 %xtraiter2418, 0
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360

.preheader.i.i.i.i.i.i.i.i.i.i.i.i360:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366
  %.0810.i.i.i.i.i.i.i.i.i.i.i.i361 = phi i64 [ %i.aac, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.preheader ] ; 3 uses
  %i.zr = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i361, %i.ex
  %i.zs = getelementptr [4 x i8], ptr %.sroa.01374.0, i64 %i.zr ; 5 uses
  %i.zt = xor i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i361, -1
  %i.zu = add nsw i64 %i.yw, %i.zt
  %i.zv = mul nsw i64 %i.zu, %i.zn
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i362 = getelementptr [4 x i8], ptr %i.zl, i64 %i.zv ; 5 uses
  br i1 %i.zq, label %.epil.preheader2417, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new
  br i1 %lcmp.mod2420.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366, label %.epil.preheader2417

.epil.preheader2417:                              ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360
  %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360 ], [ %i.aba, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2421)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.epil.preheader2417
  %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil.init, %.epil.preheader2417 ], [ %i.aab, %bb.ec ] ; 3 uses
  %epil.iter2419 = phi i64 [ 0, %.epil.preheader2417 ], [ %epil.iter2419.next, %bb.ec ]
  %i.zw = getelementptr [4 x i8], ptr %i.zs, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51299.0, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !60, !noalias !1042
  %i.zz = sext i32 %i.zy to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.i364.epil = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i362, i64 %i.zz
  %i.aaa = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i364.epil, align 4, !tbaa !60, !noalias !1042
  store i32 %i.aaa, ptr %i.zw, align 4, !tbaa !60, !noalias !1042
  %i.aab = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363.epil, 1
  %epil.iter2419.next = add i64 %epil.iter2419, 1 ; 2 uses
  %epil.iter2419.cmp.not = icmp eq i64 %epil.iter2419.next, %xtraiter2418
  br i1 %epil.iter2419.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366, label %bb.ec, !llvm.loop !1045

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366:           ; preds = %bb.ec, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i366.unr-lcssa
  %i.aac = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i.i361, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i367 = icmp eq i64 %i.aac, %i.yw
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i.i367, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEElsINS_7ReverseINS_11IndexedViewIKS2_St6vectorIiSaIiEENS_8internal8AllRangeILin1EEEEELi1EEEEENS_16CommaInitializerIS2_EERKNS0_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360, !llvm.loop !747

.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new:        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new
  %.09.i.i.i.i.i.i.i.i.i.i.i.i363 = phi i64 [ %i.aba, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360 ] ; 6 uses
  %niter2423 = phi i64 [ %niter2423.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360.new ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i360 ]
  %i.aad = getelementptr [4 x i8], ptr %i.zs, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51299.0, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !60, !noalias !1042
  %i.aag = sext i32 %i.aaf to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.i364 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i362, i64 %i.aag
  %i.aah = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i364, align 4, !tbaa !60, !noalias !1042
  store i32 %i.aah, ptr %i.aad, align 4, !tbaa !60, !noalias !1042
  %i.aai = or disjoint i64 %.09.i.i.i.i.i.i.i.i.i.i.i.i363, 1 ; 2 uses
  %i.aaj = getelementptr [4 x i8], ptr %i.zs, i64 %i.aai
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.51299.0, i64 %i.aai
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !60, !noalias !1042
  %i.aam = sext i32 %i.aal to i64
  %gep.i.i.i.i.i.i.i.i.i.i.i.i364.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i362, i64 %i.aam
  %i.aan = load i32, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i364.1, align 4, !tbaa !60, !noalias !1042
end_hunk_3
