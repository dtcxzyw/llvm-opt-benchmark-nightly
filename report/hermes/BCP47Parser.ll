inline.NumInlined: 1092
inline.NumDeleted: 420
begin_hunk_0_@_ZNK6hermes13platform_intl22ParsedLocaleIdentifier12canonicalizeB5cxx11Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0280.0331, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0280.0331, i64 48 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !13
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.ar, label %.preheader314.preheader

.preheader314.preheader:                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit57
  %i.et = icmp eq i64 %i.ea, 2305843009213693949
  br i1 %i.et, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i60

bb.ah:                                            ; preds = %.preheader314.preheader
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i60: ; preds = %.preheader314.preheader
  %i.eu = add i64 %i.ea, 3                        ; 6 uses
  %i.ev = icmp eq ptr %i.en, %i.d                 ; 2 uses
  br i1 %i.ev, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i61

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i60
  %i.ew = icmp ult i64 %i.eg, 8
  call void @llvm.assume(i1 %i.ew)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i61: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i60
  %i.ex = load i64, ptr %i.d, align 8
  %i.ey = select i1 %i.ev, i64 7, i64 %i.ex
  %.not.i.i62 = icmp ugt i64 %i.eu, %i.ey
  br i1 %.not.i.i62, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i61
  store i16 45, ptr %i.eo, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit65

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i61
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eg, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
  %.pre364 = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit65

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit65: ; preds = %bb.aj, %bb.ak
  %i.ez = phi ptr [ %i.en, %bb.aj ], [ %.pre364, %bb.ak ] ; 2 uses
  store i64 %i.eu, ptr %i.e, align 8, !tbaa !13
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %i.eu ; 3 uses
  store i16 0, ptr %i.fa, align 2, !tbaa !24
  %i.fb = load ptr, ptr %i.ep, align 8, !tbaa !7  ; 3 uses
  %i.fc = load i64, ptr %i.eq, align 8, !tbaa !13 ; 5 uses
  %i.fd = sub i64 2305843009213693948, %i.ea
  %i.fe = icmp ult i64 %i.fd, %i.fc
  br i1 %i.fe, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i66

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit65
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit65
  %i.ff = add i64 %i.fc, %i.eu                    ; 4 uses
  %i.fg = icmp eq ptr %i.ez, %i.d                 ; 2 uses
  br i1 %i.fg, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i67

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i66
  %i.fh = icmp ult i64 %i.eu, 8
  call void @llvm.assume(i1 %i.fh)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i67

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i67: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i66
  %i.fi = load i64, ptr %i.d, align 8
  %i.fj = select i1 %i.fg, i64 7, i64 %i.fi
  %.not.i.i.i68 = icmp ugt i64 %i.ff, %i.fj
  br i1 %.not.i.i.i68, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i67
  switch i64 %i.fc, label %bb.ap [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit71
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fk = load i16, ptr %i.fb, align 2, !tbaa !24
  store i16 %i.fk, ptr %i.fa, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit71

bb.ap:                                            ; preds = %bb.an
  %i.fl = shl i64 %i.fc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fa, ptr align 2 %i.fb, i64 %i.fl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit71

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i67
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eu, i64 noundef 0, ptr noundef %i.fb, i64 noundef %i.fc)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit71

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit71: ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq
  store i64 %i.ff, ptr %i.e, align 8, !tbaa !13
  %i.fm = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.ff
  store i16 0, ptr %i.fn, align 2, !tbaa !24
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit71, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit57
  %i.fo = phi ptr [ %i.fm, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit71 ], [ %i.en, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit57 ]
  %i.fp = phi i64 [ %i.ff, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit71 ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendESt16initializer_listIDsE.exit57 ]
  %i.fq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0280.0331) #18 ; 3 uses
  %.not300 = icmp eq ptr %i.fq, %i.cw
  br i1 %.not300, label %.critedge, label %bb.ab, !llvm.loop !63

.critedge:                                        ; preds = %bb.ab, %bb.ar, %._crit_edge
  %.sroa.0280.0.lcssa = phi ptr [ %i.cv, %._crit_edge ], [ %i.fq, %bb.ar ], [ %.sroa.0280.0331, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 30 uses
  store ptr %i.fr, ptr %2, align 8, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  store i64 0, ptr %i.fs, align 8, !tbaa !13
  store i16 0, ptr %i.fr, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !13 ; 8 uses
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %.thread, label %.preheader313.preheader

.preheader313.preheader:                          ; preds = %.critedge
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i16 45, ptr %i.fr, align 8, !tbaa !24
  store i64 1, ptr %i.fs, align 8, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 3 uses
  store i16 0, ptr %i.fx, align 2, !tbaa !24
  %i.fy = load ptr, ptr %i.fw, align 8, !tbaa !7  ; 3 uses
  %i.fz = icmp ugt i64 %i.fu, 2305843009213693950
  br i1 %i.fz, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i80

bb.as:                                            ; preds = %.preheader313.preheader
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i80: ; preds = %.preheader313.preheader
  %i.ga = add nuw nsw i64 %i.fu, 1                ; 6 uses
  %.not.i.i.i82 = icmp samesign ugt i64 %i.fu, 6
  br i1 %.not.i.i.i82, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i80
  %cond = icmp eq i64 %i.fu, 1
  br i1 %cond, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gb = load i16, ptr %i.fy, align 2, !tbaa !24
  store i16 %i.gb, ptr %i.fx, align 2, !tbaa !24
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.gc = shl nuw nsw i64 %i.fu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fx, ptr align 2 %i.fy, i64 %i.gc, i1 false)
  br label %bb.ax

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i80
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1, i64 noundef 0, ptr noundef %i.fy, i64 noundef %i.fu)
  %.pre365 = load ptr, ptr %2, align 8, !tbaa !7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.gd = phi ptr [ %.pre365, %bb.aw ], [ %i.fr, %bb.au ], [ %i.fr, %bb.av ] ; 5 uses
  store i64 %i.ga, ptr %i.fs, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %i.ga
  store i16 0, ptr %i.ge, align 2, !tbaa !24
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !13 ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.bh, label %.preheader312.preheader

.thread:                                          ; preds = %.critedge
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !13 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %.thread435, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread

.preheader312.preheader:                          ; preds = %bb.ax
  %i.gn = icmp eq i64 %i.ga, 2305843009213693951
  br i1 %i.gn, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88

bb.ay:                                            ; preds = %.preheader312.preheader
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88: ; preds = %.preheader312.preheader
  %i.go = add nuw nsw i64 %i.fu, 2                ; 2 uses
  %i.gp = icmp eq ptr %i.gd, %i.fr
  br i1 %i.gp, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88
  %i.gq = phi i64 [ %i.go, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ], [ 1, %.thread ]
  %i.gr = phi i64 [ %i.gh, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ], [ %i.gl, %.thread ]
  %i.gs = phi ptr [ %i.gg, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ], [ %i.gk, %.thread ]
  %i.gt = phi ptr [ %i.gf, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ], [ %i.gj, %.thread ]
  %i.gu = phi i64 [ %i.ga, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ], [ 0, %.thread ] ; 2 uses
  %i.gv = phi ptr [ %i.gd, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ], [ %i.fr, %.thread ]
  %i.gw = icmp samesign ult i64 %i.gu, 8
  call void @llvm.assume(i1 %i.gw)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i89: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88
  %i.gx = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread ], [ false, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ]
  %i.gy = phi i64 [ %i.gq, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ] ; 5 uses
  %i.gz = phi i64 [ %i.gr, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread ], [ %i.gh, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ]
  %i.ha = phi ptr [ %i.gs, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ]
  %i.hb = phi ptr [ %i.gt, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ]
  %i.hc = phi i64 [ %i.gu, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ] ; 4 uses
  %i.hd = phi ptr [ %i.gv, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88.thread ], [ %i.gd, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i88 ] ; 2 uses
  %i.he = load i64, ptr %i.fr, align 8
  %i.hf = select i1 %i.gx, i64 7, i64 %i.he
  %.not.i.i90 = icmp ugt i64 %i.gy, %i.hf
  br i1 %.not.i.i90, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i89
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.hd, i64 %i.hc
  store i16 45, ptr %i.hg, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit93

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i89
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.hc, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
  %.pre366 = load ptr, ptr %2, align 8, !tbaa !7
  %.pre367 = load i64, ptr %i.ha, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit93

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit93: ; preds = %bb.az, %bb.ba
  %i.hh = phi i64 [ %i.gz, %bb.az ], [ %.pre367, %bb.ba ] ; 5 uses
  %i.hi = phi ptr [ %i.hd, %bb.az ], [ %.pre366, %bb.ba ] ; 2 uses
  store i64 %i.gy, ptr %i.fs, align 8, !tbaa !13
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.gy ; 3 uses
  store i16 0, ptr %i.hj, align 2, !tbaa !24
  %i.hk = load ptr, ptr %i.hb, align 8, !tbaa !7  ; 3 uses
  %i.hl = sub nuw nsw i64 2305843009213693950, %i.hc
  %i.hm = icmp ult i64 %i.hl, %i.hh
  br i1 %i.hm, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i94

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit93
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit93
  %i.hn = add nuw nsw i64 %i.hh, %i.gy            ; 4 uses
  %i.ho = icmp eq ptr %i.hi, %i.fr                ; 2 uses
  br i1 %i.ho, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i95

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i94
  %i.hp = icmp samesign ult i64 %i.hc, 7
  call void @llvm.assume(i1 %i.hp)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i95: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i94
  %i.hq = load i64, ptr %i.fr, align 8
  %i.hr = select i1 %i.ho, i64 7, i64 %i.hq
  %.not.i.i.i96 = icmp ugt i64 %i.hn, %i.hr
  br i1 %.not.i.i.i96, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i95
  switch i64 %i.hh, label %bb.bf [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit99
    i64 1, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd
  %i.hs = load i16, ptr %i.hk, align 2, !tbaa !24
  store i16 %i.hs, ptr %i.hj, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit99

bb.bf:                                            ; preds = %bb.bd
  %i.ht = shl nuw nsw i64 %i.hh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.hj, ptr align 2 %i.hk, i64 %i.ht, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit99

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i95
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.gy, i64 noundef 0, ptr noundef %i.hk, i64 noundef %i.hh)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit99

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit99: ; preds = %bb.bd, %bb.be, %bb.bf, %bb.bg
  store i64 %i.hn, ptr %i.fs, align 8, !tbaa !13
  %i.hu = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %i.hn
  store i16 0, ptr %i.hv, align 2, !tbaa !24
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit99, %bb.ax
  %i.hw = phi ptr [ %i.hu, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit99 ], [ %i.gd, %bb.ax ] ; 4 uses
  %i.hx = phi i64 [ %i.hn, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit99 ], [ %i.ga, %bb.ax ] ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !13 ; 3 uses
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.br, label %.preheader311.preheader

.thread435:                                       ; preds = %.thread
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !13 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread

.preheader311.preheader:                          ; preds = %bb.bh
  %i.ig = icmp eq i64 %i.hx, 2305843009213693951
  br i1 %i.ig, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102

bb.bi:                                            ; preds = %.preheader311.preheader
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102: ; preds = %.preheader311.preheader
  %i.ih = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %i.ii = icmp eq ptr %i.hw, %i.fr
  br i1 %i.ii, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread: ; preds = %.thread435, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102
  %i.ij = phi i64 [ %i.ih, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ], [ 1, %.thread435 ]
  %i.ik = phi i64 [ %i.ia, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ], [ %i.ie, %.thread435 ]
  %i.il = phi ptr [ %i.hz, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ], [ %i.id, %.thread435 ]
  %i.im = phi ptr [ %i.hy, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ], [ %i.ic, %.thread435 ]
  %i.in = phi i64 [ %i.hx, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ], [ 0, %.thread435 ] ; 2 uses
  %i.io = phi ptr [ %i.hw, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ], [ %i.fr, %.thread435 ]
  %i.ip = icmp samesign ult i64 %i.in, 8
  call void @llvm.assume(i1 %i.ip)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i103: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102
  %i.iq = phi i1 [ true, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread ], [ false, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ]
  %i.ir = phi i64 [ %i.ij, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ] ; 6 uses
  %i.is = phi i64 [ %i.ik, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread ], [ %i.ia, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ]
  %i.it = phi ptr [ %i.il, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread ], [ %i.hz, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ]
  %i.iu = phi ptr [ %i.im, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ]
  %i.iv = phi i64 [ %i.in, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ] ; 3 uses
  %i.iw = phi ptr [ %i.io, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102.thread ], [ %i.hw, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i102 ] ; 2 uses
  %i.ix = load i64, ptr %i.fr, align 8
  %i.iy = select i1 %i.iq, i64 7, i64 %i.ix
  %.not.i.i104 = icmp ugt i64 %i.ir, %i.iy
  br i1 %.not.i.i104, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i103
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.iw, i64 %i.iv
  store i16 45, ptr %i.iz, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit107

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i103
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.iv, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
  %.pre368 = load ptr, ptr %2, align 8, !tbaa !7
  %.pre369 = load i64, ptr %i.it, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit107

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit107: ; preds = %bb.bj, %bb.bk
  %i.ja = phi i64 [ %i.is, %bb.bj ], [ %.pre369, %bb.bk ] ; 5 uses
  %i.jb = phi ptr [ %i.iw, %bb.bj ], [ %.pre368, %bb.bk ] ; 2 uses
  store i64 %i.ir, ptr %i.fs, align 8, !tbaa !13
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.jb, i64 %i.ir ; 3 uses
  store i16 0, ptr %i.jc, align 2, !tbaa !24
  %i.jd = load ptr, ptr %i.iu, align 8, !tbaa !7  ; 3 uses
  %i.je = sub nsw i64 2305843009213693950, %i.iv
  %i.jf = icmp ult i64 %i.je, %i.ja
  br i1 %i.jf, label %bb.bl, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i108

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit107
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i108: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendEPKDs.exit107
  %i.jg = add i64 %i.ja, %i.ir                    ; 4 uses
  %i.jh = icmp eq ptr %i.jb, %i.fr                ; 2 uses
  br i1 %i.jh, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i109

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i108
  %i.ji = icmp samesign ult i64 %i.ir, 8
  call void @llvm.assume(i1 %i.ji)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i109

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i109: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i108
  %i.jj = load i64, ptr %i.fr, align 8
  %i.jk = select i1 %i.jh, i64 7, i64 %i.jj
  %.not.i.i.i110 = icmp ugt i64 %i.jg, %i.jk
  br i1 %.not.i.i.i110, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i109
  switch i64 %i.ja, label %bb.bp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit113
    i64 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.jl = load i16, ptr %i.jd, align 2, !tbaa !24
  store i16 %i.jl, ptr %i.jc, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit113

bb.bp:                                            ; preds = %bb.bn
  %i.jm = shl i64 %i.ja, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.jc, ptr align 2 %i.jd, i64 %i.jm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit113

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i109
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ir, i64 noundef 0, ptr noundef %i.jd, i64 noundef %i.ja)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit113

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit113: ; preds = %bb.bn, %bb.bo, %bb.bp, %bb.bq
  store i64 %i.jg, ptr %i.fs, align 8, !tbaa !13
  %i.jn = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %i.jg
  store i16 0, ptr %i.jo, align 2, !tbaa !24
  br label %bb.br

bb.br:                                            ; preds = %.thread435, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit113, %bb.bh
  %i.jp = phi ptr [ %i.jn, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit113 ], [ %i.hw, %bb.bh ], [ %i.fr, %.thread435 ] ; 2 uses
  %i.jq = phi i64 [ %i.jg, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit113 ], [ %i.hx, %bb.bh ], [ 0, %.thread435 ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !37 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %.not301338 = icmp eq ptr %i.js, %i.jt
  br i1 %.not301338, label %._crit_edge342, label %.lr.ph341
end_hunk_0
