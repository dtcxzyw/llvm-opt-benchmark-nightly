Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLowRankAugSystemSolver?download=true
inline.NumInlined: 930
inline.NumDeleted: 365
begin_hunk_0_@_ZN5Ipopt22LowRankAugSystemSolver5SolveEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dPKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_RS4_SB_SB_SB_bi:bb.a
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !68
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %2, ptr %i.cw, align 8, !tbaa !69
  %.not109 = icmp eq ptr %3, null
  br i1 %.not109, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !99
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sink = phi i32 [ %i.cy, %bb.z ], [ 0, %bb.y ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.sink, ptr %i.cz, align 8, !tbaa !70
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %4, ptr %i.da, align 8, !tbaa !71
  %.not110 = icmp eq ptr %5, null
  br i1 %.not110, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !99
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.sink214 = phi i32 [ %i.dc, %bb.ab ], [ 0, %bb.aa ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sink214, ptr %i.dd, align 8, !tbaa !72
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %6, ptr %i.de, align 8, !tbaa !100
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !101
  %.not111 = icmp eq ptr %8, null
  br i1 %.not111, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !99
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sink215 = phi i32 [ %i.dj, %bb.ad ], [ 0, %bb.ac ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %.sink215, ptr %i.dk, align 4, !tbaa !102
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %9, ptr %i.dl, align 8, !tbaa !103
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !99
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !104
  %.not112 = icmp eq ptr %11, null
  br i1 %.not112, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !99
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.sink216 = phi i32 [ %i.dq, %bb.af ], [ 0, %bb.ae ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %.sink216, ptr %i.dr, align 4, !tbaa !105
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %12, ptr %i.ds, align 8, !tbaa !106
  store i8 0, ptr %i.a, align 8, !tbaa !81
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit
  %i.dt = load ptr, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !74
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(49) %i.dt, ptr noundef %i.dv, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef nonnull %7, ptr noundef %8, double noundef %9, ptr noundef nonnull %10, ptr noundef %11, double noundef %12, ptr noundef nonnull align 8 dereferenceable(205) %13, ptr noundef nonnull align 8 dereferenceable(205) %14, ptr noundef nonnull align 8 dereferenceable(205) %15, ptr noundef nonnull align 8 dereferenceable(205) %16, ptr noundef nonnull align 8 dereferenceable(205) %17, ptr noundef nonnull align 8 dereferenceable(205) %18, ptr noundef nonnull align 8 dereferenceable(205) %19, ptr noundef nonnull align 8 dereferenceable(205) %20, i1 noundef zeroext %spec.select, i32 noundef %22) ; 3 uses
  %i.ea = load ptr, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !34
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call noundef zeroext i1 %i.ed(ptr noundef nonnull align 8 dereferenceable(49) %i.ea)
  br i1 %i.ee, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ef = load ptr, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef i32 %i.ei(ptr noundef nonnull align 8 dereferenceable(49) %i.ef)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !107
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.not113 = icmp eq i32 %i.dz, 0
  br i1 %.not113, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !80 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ep(ptr noundef nonnull align 8 dereferenceable(40) %i.em, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %i.dz)
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164

bb.al:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !75
  %.not210 = icmp eq ptr %i.er, null
  br i1 %.not210, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !75
  %.not211 = icmp eq ptr %i.et, null
  br i1 %.not211, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !73 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !34
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef ptr %i.ey(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, i1 noundef zeroext false) ; 13 uses
  %.not.i.i128 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i128, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !32
  %i.fc = add nsw i32 %i.fb, 1
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !32
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit: ; preds = %bb.an, %bb.ao
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ez, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %13)
          to label %bb.ap unwind label %bb.bg

bb.ap:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ez, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %14)
          to label %bb.aq unwind label %bb.bg

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ez, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(205) %15)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.ez, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(205) %16)
          to label %bb.as unwind label %bb.bg

bb.as:                                            ; preds = %bb.ar
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !73 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !34
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(48) %i.fd, i1 noundef zeroext false)
          to label %bb.at unwind label %bb.bg     ; 14 uses

bb.at:                                            ; preds = %bb.as
  %.not.i.i129 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i129, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !32
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !32
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130: ; preds = %bb.au, %bb.at
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.fh, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %17)
          to label %bb.av unwind label %bb.bs

bb.av:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.fh, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(205) %18)
          to label %bb.aw unwind label %bb.bs

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.fh, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(205) %19)
          to label %bb.ax unwind label %bb.bs

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.fh, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(205) %20)
          to label %bb.ay unwind label %bb.bs

bb.ay:                                            ; preds = %bb.ax
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !75 ; 2 uses
  %.not212 = icmp eq ptr %i.fm, null
  br i1 %.not212, label %bb.bk, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !110
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !90
  %i.fr = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #16
          to label %bb.ba unwind label %bb.bs     ; 22 uses

bb.ba:                                            ; preds = %bb.az
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 5 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 %i.fq, ptr %i.ft, align 4, !tbaa !88
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.fr, align 8, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 24 ; 3 uses
  store i32 0, ptr %i.fu, align 8, !tbaa !146
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  store ptr null, ptr %i.fv, align 8, !tbaa !116
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store ptr %i.fu, ptr %i.fw, align 8, !tbaa !147
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !148
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  store i64 0, ptr %i.fy, align 8, !tbaa !149
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 72 ; 3 uses
  store i32 0, ptr %i.fz, align 8, !tbaa !146
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 80
  store ptr null, ptr %i.ga, align 8, !tbaa !116
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 88
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !147
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  store ptr %i.fz, ptr %i.gc, align 8, !tbaa !148
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 104
  store i64 0, ptr %i.gd, align 8, !tbaa !149
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 120 ; 3 uses
  store i32 0, ptr %i.ge, align 8, !tbaa !146
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  store ptr null, ptr %i.gf, align 8, !tbaa !116
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 136
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !147
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fr, i64 144
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !148
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fr, i64 152
  store i64 0, ptr %i.gi, align 8, !tbaa !149
  store i32 1, ptr %i.fs, align 8, !tbaa !32
  %i.gj = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #16
          to label %.noexc132 unwind label %bb.bh ; 10 uses

.noexc132:                                        ; preds = %bb.ba
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.gj, ptr noundef nonnull align 8 dereferenceable(160) %i.fr)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %.noexc132
  %i.gk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef 248) #15
  br label %.body133

bb.bc:                                            ; preds = %.noexc132
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 6 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !32
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !32
  %i.go = load ptr, ptr %i.fl, align 8, !tbaa !75 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !34
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(69) %i.go, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.ez, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.gj)
          to label %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit unwind label %bb.bi, !inline_history !142

_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %bb.bc
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !76
  invoke void @_ZNK5Ipopt14DenseGenMatrix19CholeskySolveVectorERNS_11DenseVectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.gt, ptr noundef nonnull align 8 dereferenceable(248) %i.gj)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit
  %i.gu = load ptr, ptr %i.fl, align 8, !tbaa !75 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !34
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void %i.gx(ptr noundef nonnull align 8 dereferenceable(69) %i.gu, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.gj, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.fh)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit unwind label %bb.bi, !inline_history !8

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %bb.bd
  %i.gy = load i32, ptr %i.gl, align 8, !tbaa !32
  %i.gz = add nsw i32 %i.gy, -1                   ; 2 uses
  store i32 %i.gz, ptr %i.gl, align 8, !tbaa !32
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.be, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

bb.be:                                            ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit
  %i.hb = load ptr, ptr %i.gj, align 8, !tbaa !34
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  tail call void %i.hd(ptr noundef nonnull align 8 dereferenceable(248) %i.gj) #14, !inline_history !143
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit:   ; preds = %bb.be, %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit
  %i.he = load i32, ptr %i.fs, align 8, !tbaa !32
  %i.hf = add nsw i32 %i.he, -1                   ; 2 uses
  store i32 %i.hf, ptr %i.fs, align 8, !tbaa !32
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit
  %i.hh = load ptr, ptr %i.fr, align 8, !tbaa !34
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  tail call void %i.hj(ptr noundef nonnull align 8 dereferenceable(160) %i.fr) #14, !inline_history !144
  br label %bb.bk

bb.bg:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread

bb.bh:                                            ; preds = %bb.ba
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body133

bb.bi:                                            ; preds = %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit, %bb.bc, %bb.bd
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hn = load i32, ptr %i.gl, align 8, !tbaa !32
  %i.ho = add nsw i32 %i.hn, -1                   ; 2 uses
  store i32 %i.ho, ptr %i.gl, align 8, !tbaa !32
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bj, label %.body133

bb.bj:                                            ; preds = %bb.bi
  %i.hq = load ptr, ptr %i.gj, align 8, !tbaa !34
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef nonnull align 8 dereferenceable(248) %i.gj) #14, !inline_history !143
  br label %.body133

.body133:                                         ; preds = %bb.bb, %bb.bh, %bb.bi, %bb.bj
  %.pn114 = phi { ptr, i32 } [ %i.gk, %bb.bb ], [ %i.hl, %bb.bh ], [ %i.hm, %bb.bi ], [ %i.hm, %bb.bj ] ; 2 uses
  %i.ht = load i32, ptr %i.fs, align 8, !tbaa !32
  %i.hu = add nsw i32 %i.ht, -1                   ; 2 uses
  store i32 %i.hu, ptr %i.fs, align 8, !tbaa !32
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.bx, label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread

bb.bk:                                            ; preds = %bb.ay, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit, %bb.bf
  %i.hw = load ptr, ptr %i.eq, align 8, !tbaa !75 ; 2 uses
  %.not213 = icmp eq ptr %i.hw, null
  br i1 %.not213, label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit157, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !110
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !90
  %i.ib = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #16
          to label %bb.bm unwind label %bb.bs     ; 22 uses

bb.bm:                                            ; preds = %bb.bl
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  store i32 %i.ia, ptr %i.id, align 4, !tbaa !88
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt16DenseVectorSpaceE, i64 16), ptr %i.ib, align 8, !tbaa !34
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 24 ; 3 uses
  store i32 0, ptr %i.ie, align 8, !tbaa !146
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  store ptr null, ptr %i.if, align 8, !tbaa !116
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 40
  store ptr %i.ie, ptr %i.ig, align 8, !tbaa !147
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  store ptr %i.ie, ptr %i.ih, align 8, !tbaa !148
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  store i64 0, ptr %i.ii, align 8, !tbaa !149
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 72 ; 3 uses
  store i32 0, ptr %i.ij, align 8, !tbaa !146
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 80
  store ptr null, ptr %i.ik, align 8, !tbaa !116
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 88
  store ptr %i.ij, ptr %i.il, align 8, !tbaa !147
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  store ptr %i.ij, ptr %i.im, align 8, !tbaa !148
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 104
  store i64 0, ptr %i.in, align 8, !tbaa !149
  %i.io = getelementptr inbounds nuw i8, ptr %i.ib, i64 120 ; 3 uses
  store i32 0, ptr %i.io, align 8, !tbaa !146
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 128
  store ptr null, ptr %i.ip, align 8, !tbaa !116
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ib, i64 136
  store ptr %i.io, ptr %i.iq, align 8, !tbaa !147
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 144
  store ptr %i.io, ptr %i.ir, align 8, !tbaa !148
  %i.is = getelementptr inbounds nuw i8, ptr %i.ib, i64 152
  store i64 0, ptr %i.is, align 8, !tbaa !149
  store i32 1, ptr %i.ic, align 8, !tbaa !32
  %i.it = invoke noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #16
          to label %.noexc145 unwind label %bb.bt ; 10 uses

.noexc145:                                        ; preds = %bb.bm
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.it, ptr noundef nonnull align 8 dereferenceable(160) %i.ib)
          to label %bb.bo unwind label %bb.bn

bb.bn:                                            ; preds = %.noexc145
  %i.iu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 248) #15
  br label %.body146

bb.bo:                                            ; preds = %.noexc145
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 6 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !32
  %i.ix = add nsw i32 %i.iw, 1
  store i32 %i.ix, ptr %i.iv, align 8, !tbaa !32
  %i.iy = load ptr, ptr %i.eq, align 8, !tbaa !75 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !34
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(69) %i.iy, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.ez, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.it)
          to label %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit151 unwind label %bb.bu, !inline_history !142

_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit151: ; preds = %bb.bo
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !76
  invoke void @_ZNK5Ipopt14DenseGenMatrix19CholeskySolveVectorERNS_11DenseVectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.jd, ptr noundef nonnull align 8 dereferenceable(248) %i.it)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit151
  %i.je = load ptr, ptr %i.eq, align 8, !tbaa !75 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !34
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(69) %i.je, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.it, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.fh)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit153 unwind label %bb.bu, !inline_history !8

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit153: ; preds = %bb.bp
  %i.ji = load i32, ptr %i.iv, align 8, !tbaa !32
  %i.jj = add nsw i32 %i.ji, -1                   ; 2 uses
  store i32 %i.jj, ptr %i.iv, align 8, !tbaa !32
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %bb.bq, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit155

bb.bq:                                            ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit153
  %i.jl = load ptr, ptr %i.it, align 8, !tbaa !34
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  tail call void %i.jn(ptr noundef nonnull align 8 dereferenceable(248) %i.it) #14, !inline_history !143
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit155

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit155: ; preds = %bb.bq, %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit153
  %i.jo = load i32, ptr %i.ic, align 8, !tbaa !32
  %i.jp = add nsw i32 %i.jo, -1                   ; 2 uses
  store i32 %i.jp, ptr %i.ic, align 8, !tbaa !32
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.br, label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit157

bb.br:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit155
  %i.jr = load ptr, ptr %i.ib, align 8, !tbaa !34
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  tail call void %i.jt(ptr noundef nonnull align 8 dereferenceable(160) %i.ib) #14, !inline_history !144
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit157

bb.bs:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEEC2EPS1_.exit130, %bb.az, %bb.bl
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread

bb.bt:                                            ; preds = %bb.bm
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.bu:                                            ; preds = %_ZNK5Ipopt6Matrix15TransMultVectorEdRKNS_6VectorEdRS1_.exit151, %bb.bo, %bb.bp
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jx = load i32, ptr %i.iv, align 8, !tbaa !32
  %i.jy = add nsw i32 %i.jx, -1                   ; 2 uses
  store i32 %i.jy, ptr %i.iv, align 8, !tbaa !32
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.bv, label %.body146

bb.bv:                                            ; preds = %bb.bu
  %i.ka = load ptr, ptr %i.it, align 8, !tbaa !34
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8
  tail call void %i.kc(ptr noundef nonnull align 8 dereferenceable(248) %i.it) #14, !inline_history !143
  br label %.body146

.body146:                                         ; preds = %bb.bn, %bb.bt, %bb.bu, %bb.bv
  %.pn118 = phi { ptr, i32 } [ %i.iu, %bb.bn ], [ %i.jv, %bb.bt ], [ %i.jw, %bb.bu ], [ %i.jw, %bb.bv ] ; 2 uses
  %i.kd = load i32, ptr %i.ic, align 8, !tbaa !32
  %i.ke = add nsw i32 %i.kd, -1                   ; 2 uses
  store i32 %i.ke, ptr %i.ic, align 8, !tbaa !32
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.bx, label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread

_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit157: ; preds = %bb.bk, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit155, %bb.br
  %i.kg = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !32
  %i.ki = add nsw i32 %i.kh, -1                   ; 2 uses
  store i32 %i.ki, ptr %i.kg, align 8, !tbaa !32
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.bw, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit

bb.bw:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit157
  %i.kk = load ptr, ptr %i.fh, align 8, !tbaa !34
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  tail call void %i.km(ptr noundef nonnull align 8 dereferenceable(265) %i.fh) #14, !inline_history !9
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit: ; preds = %bb.bw, %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit157
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !32
  %i.kp = add nsw i32 %i.ko, -1                   ; 2 uses
  store i32 %i.kp, ptr %i.kn, align 8, !tbaa !32
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %23, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164

23:                                               ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit
  %24 = load ptr, ptr %i.ez, align 8, !tbaa !34
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(265) %i.ez) #14, !inline_history !9
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164

bb.bx:                                            ; preds = %.body146, %.body133
  %.sink235 = phi ptr [ %i.fr, %.body133 ], [ %i.ib, %.body146 ] ; 2 uses
  %.pn118.pn.pn.pn205.ph = phi { ptr, i32 } [ %.pn114, %.body133 ], [ %.pn118, %.body146 ]
  %i.kr = load ptr, ptr %.sink235, align 8, !tbaa !34
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  tail call void %i.kt(ptr noundef nonnull align 8 dereferenceable(160) %.sink235) #14
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread

_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread: ; preds = %bb.bx, %.body133, %.body146, %bb.bs
  %.pn118.pn.pn.pn205 = phi { ptr, i32 } [ %i.ju, %bb.bs ], [ %.pn114, %.body133 ], [ %.pn118, %.body146 ], [ %.pn118.pn.pn.pn205.ph, %bb.bx ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !32
  %i.kw = add nsw i32 %i.kv, -1                   ; 2 uses
  store i32 %i.kw, ptr %i.ku, align 8, !tbaa !32
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.by, label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread

bb.by:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread
  %i.ky = load ptr, ptr %i.fh, align 8, !tbaa !34
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load ptr, ptr %i.kz, align 8
  tail call void %i.la(ptr noundef nonnull align 8 dereferenceable(265) %i.fh) #14, !inline_history !9
  br label %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread: ; preds = %bb.by, %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread, %bb.bg
  %.pn118.pn.pn.pn.pn.pn208 = phi { ptr, i32 } [ %i.hk, %bb.bg ], [ %.pn118.pn.pn.pn205, %bb.by ], [ %.pn118.pn.pn.pn205, %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit143.thread ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !32
  %i.ld = add nsw i32 %i.lc, -1                   ; 2 uses
  store i32 %i.ld, ptr %i.lb, align 8, !tbaa !32
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split, label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127

_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit164: ; preds = %23, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit, %bb.am, %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread, %bb.ak
  %.099 = phi i32 [ %i.cs, %_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d.exit.thread ], [ %i.dz, %bb.ak ], [ 0, %bb.am ], [ 0, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit ], [ 0, %23 ]
  ret i32 %.099

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split: ; preds = %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread, %.body
  %.sink235.a = phi ptr [ %i.h, %.body ], [ %i.ez, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread ] ; 2 uses
  %.pn118.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn118.pn.pn.pn.pn.pn208, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread ]
  %i.lf = load ptr, ptr %.sink235.a, align 8, !tbaa !34
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8
  tail call void %i.lh(ptr noundef nonnull align 8 dereferenceable(20) %.sink235.a) #14
  br label %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127

_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127: ; preds = %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread, %.body
  %.pn118.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn118.pn.pn.pn.pn.pn208, %_ZN5Ipopt8SmartPtrINS_14CompoundVectorEED2Ev.exit166.thread ], [ %.pn118.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrINS_15DiagMatrixSpaceEED2Ev.exit127.sink.split ]
  resume { ptr, i32 } %.pn118.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5Ipopt22LowRankAugSystemSolver29AugmentedSystemRequiresChangeEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(204) %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, double noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, double noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %7, ptr nofree noundef readonly captures(address_is_null) %8, double noundef %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %10, ptr nofree noundef readonly captures(address_is_null) %11, double noundef %12) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !68
  %.not29 = icmp eq i32 %i.b, %i.d
  br i1 %.not29, label %bb.c, label %bb.r

.critedge:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !68
  %.not30 = icmp eq i32 %i.f, 0
  br i1 %.not30, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !69
  %i.i = fcmp une double %2, %i.h
  br i1 %i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %3, null
  br i1 %.not31, label %.critedge46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !70
  %.not32 = icmp eq i32 %i.k, %i.m
  br i1 %.not32, label %bb.f, label %bb.r

.critedge46:                                      ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i32, ptr %i.n, align 8, !tbaa !70
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e, %.critedge46
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load double, ptr %i.p, align 8, !tbaa !71
  %i.r = fcmp une double %4, %i.q
  br i1 %i.r, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not34 = icmp eq ptr %5, null
  br i1 %.not34, label %.critedge48, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !72
  %.not35 = icmp eq i32 %i.t, %i.v
  br i1 %.not35, label %bb.i, label %bb.r

.critedge48:                                      ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i32, ptr %i.w, align 8, !tbaa !72
  %.not36 = icmp eq i32 %i.x, 0
  br i1 %.not36, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h, %.critedge48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load double, ptr %i.y, align 8, !tbaa !100
  %i.aa = fcmp une double %6, %i.z
  br i1 %i.aa, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !101
  %.not37 = icmp eq i32 %i.ac, %i.ae
  br i1 %.not37, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %.not38 = icmp eq ptr %8, null
  br i1 %.not38, label %.critedge50, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !99
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102
  %.not39 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not39, label %bb.m, label %bb.r

.critedge50:                                      ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !102
  %.not40 = icmp eq i32 %i.ak, 0
  br i1 %.not40, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l, %.critedge50
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load double, ptr %i.al, align 8, !tbaa !103
  %i.an = fcmp une double %9, %i.am
  br i1 %i.an, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !104
  %.not41 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not41, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not42 = icmp eq ptr %11, null
  br i1 %.not42, label %.critedge52, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !99
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.av = load i32, ptr %i.au, align 4, !tbaa !105
  %.not43 = icmp eq i32 %i.at, %i.av
  br i1 %.not43, label %bb.q, label %bb.r

.critedge52:                                      ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !105
  %.not44 = icmp eq i32 %i.ax, 0
  br i1 %.not44, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.critedge52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load double, ptr %i.ay, align 8, !tbaa !106
  %i.ba = fcmp une double %12, %i.az
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b, %.critedge, %bb.c, %bb.e, %.critedge46, %bb.f, %bb.h, %.critedge48, %bb.i, %bb.j, %bb.l, %.critedge50, %bb.m, %bb.n, %bb.p, %.critedge52
  %.0 = phi i1 [ true, %bb.b ], [ %i.ba, %bb.q ], [ true, %.critedge52 ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.m ], [ true, %.critedge50 ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.i ], [ true, %.critedge48 ], [ true, %bb.h ], [ true, %bb.f ], [ true, %.critedge46 ], [ true, %bb.e ], [ true, %bb.c ], [ true, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5Ipopt22LowRankAugSystemSolver19UpdateFactorizationEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_bi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(204) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, ptr noundef %3, double noundef %4, ptr noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(69) %7, ptr noundef %8, double noundef %9, ptr noundef nonnull align 8 dereferenceable(69) %10, ptr noundef %11, double noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(205) %16, i1 noundef zeroext %17, i32 noundef %18) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %19 = alloca %"class.Ipopt::SmartPtr.72", align 8 ; 6 uses
  %20 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 9 uses
  %21 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 10 uses
  %22 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 9 uses
  %23 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 9 uses
  %24 = alloca %"class.Ipopt::SmartPtr.16", align 8 ; 9 uses
  %i.a = fcmp oeq double %2, 1.000000e+00
  br i1 %i.a, label %bb.b, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179, !noalias !180 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32, !noalias !180
  %i.f = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(128) %i.c) #14, !inline_history !152
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit
end_hunk_0
