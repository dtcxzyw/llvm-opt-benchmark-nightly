Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLeastSquareMults?download=true
inline.NumInlined: 251
inline.NumDeleted: 91
begin_hunk_0_@_ZN5Ipopt22LeastSquareMultipliers20CalculateMultipliersERNS_6VectorES2_:bb.a
  %.not3.i.i.i99 = icmp eq ptr %i.dh, null
  br i1 %.not3.i.i.i99, label %_ZNK5Ipopt14IteratesVector3v_UEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i95

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i95: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i98, %_ZNK5Ipopt9IpoptData4currEv.exit93
  %.0.i3.i.i.i96 = phi ptr [ %i.dd, %_ZNK5Ipopt9IpoptData4currEv.exit93 ], [ %i.dh, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i98 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i96, i64 8 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !9, !noalias !109
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !9, !noalias !109
  br label %_ZNK5Ipopt14IteratesVector3v_UEv.exit

_ZNK5Ipopt14IteratesVector3v_UEv.exit:            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i98, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i95
  %storemerge.i.i97 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i98 ], [ %.0.i3.i.i.i96, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i95 ] ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !9
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !9
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.s, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit101

bb.s:                                             ; preds = %_ZNK5Ipopt14IteratesVector3v_UEv.exit
  %i.dp = load ptr, ptr %i.cw, align 8, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(280) %i.cw) #8, !inline_history !43
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit101

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit101: ; preds = %_ZNK5Ipopt14IteratesVector3v_UEv.exit, %bb.s
  %i.ds = load ptr, ptr %6, align 8, !tbaa !99
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !112 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef ptr %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.du)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit unwind label %bb.ca, !inline_history !68 ; 36 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit:                 ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit101
  %.not.i.i102 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i102, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !9
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !9
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit:      ; preds = %bb.t, %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.ec = load ptr, ptr %6, align 8, !tbaa !99    ; 16 uses
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !11
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(205) %i.dy, ptr noundef nonnull align 8 dereferenceable(205) %i.ec)
          to label %.noexc unwind label %bb.cb, !inline_history !69

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.dy)
          to label %.noexc103 unwind label %bb.cb

.noexc103:                                        ; preds = %.noexc
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !121 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !126
  %i.ek = icmp eq i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc103
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.em = load i32, ptr %i.el, align 8, !tbaa !121
  %i.en = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  store i32 %i.em, ptr %i.en, align 8, !tbaa !126
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !127
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  store double %i.ep, ptr %i.eq, align 8, !tbaa !127
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc103
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 104
  %i.es = load i32, ptr %i.er, align 8, !tbaa !128
  %i.et = icmp eq i32 %i.eh, %i.es
  br i1 %i.et, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !121
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dy, i64 104
  store i32 %i.ev, ptr %i.ew, align 8, !tbaa !128
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 112
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !129
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dy, i64 112
  store double %i.ey, ptr %i.ez, align 8, !tbaa !129
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 120
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !130
  %i.fc = icmp eq i32 %i.eh, %i.fb
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !121
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dy, i64 120
  store i32 %i.fe, ptr %i.ff, align 8, !tbaa !130
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ec, i64 128
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !131
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  store double %i.fh, ptr %i.fi, align 8, !tbaa !131
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ec, i64 136
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !132
  %i.fl = icmp eq i32 %i.eh, %i.fk
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !121
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dy, i64 136
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !132
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ec, i64 144
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !133
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dy, i64 144
  store double %i.fq, ptr %i.fr, align 8, !tbaa !133
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ec, i64 152
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !134
  %i.fu = icmp eq i32 %i.eh, %i.ft
  br i1 %i.fu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !121
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dy, i64 152
  store i32 %i.fw, ptr %i.fx, align 8, !tbaa !134
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ec, i64 160
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !135
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dy, i64 160
  store double %i.fz, ptr %i.ga, align 8, !tbaa !135
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ec, i64 168
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !136
  %i.gd = icmp eq i32 %i.eh, %i.gc
  br i1 %i.gd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !121
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dy, i64 168
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !136
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ec, i64 176
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !137
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  store double %i.gi, ptr %i.gj, align 8, !tbaa !137
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ec, i64 184
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !138
  %i.gm = icmp eq i32 %i.eh, %i.gl
  br i1 %i.gm, label %bb.ag, label %_ZN5Ipopt6Vector4CopyERKS0_.exit

bb.ag:                                            ; preds = %bb.af
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !121
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dy, i64 184
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !138
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ec, i64 192
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !139
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dy, i64 192
  store double %i.gr, ptr %i.gs, align 8, !tbaa !139
  br label %_ZN5Ipopt6Vector4CopyERKS0_.exit

_ZN5Ipopt6Vector4CopyERKS0_.exit:                 ; preds = %bb.ag, %bb.af
  %i.gt = load ptr, ptr %7, align 8, !tbaa !142   ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !11
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8
  invoke void %i.gw(ptr noundef nonnull align 8 dereferenceable(69) %i.gt, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.dy)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit unwind label %bb.cb, !inline_history !70

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %_ZN5Ipopt6Vector4CopyERKS0_.exit
  %i.gx = load ptr, ptr %8, align 8, !tbaa !142   ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !11
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(69) %i.gx, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i77, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.dy)
          to label %bb.ah unwind label %bb.cb, !inline_history !70

bb.ah:                                            ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit
  %i.hb = load ptr, ptr %i.z, align 8, !tbaa !24
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !86, !noalias !143 ; 10 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i107, label %_ZNK5Ipopt9IpoptData4currEv.exit108, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !9, !noalias !143
  %i.hg = add nsw i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 8, !tbaa !9, !noalias !143
  br label %_ZNK5Ipopt9IpoptData4currEv.exit108

_ZNK5Ipopt9IpoptData4currEv.exit108:              ; preds = %bb.ai, %bb.ah
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 208
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !90, !noalias !144
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !94, !noalias !144 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i109, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i113, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i110

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i113: ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit108
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 232
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !97, !noalias !144
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !99, !noalias !144, !nonnull !145, !noundef !145
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i110

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i110: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i113, %_ZNK5Ipopt9IpoptData4currEv.exit108
  %.0.i3.i.i.i111 = phi ptr [ %i.hk, %_ZNK5Ipopt9IpoptData4currEv.exit108 ], [ %i.ho, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i113 ] ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i111, i64 8 ; 6 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !9, !noalias !146
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hp, align 8, !tbaa !9, !noalias !146
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i111, i64 56
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !112 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !11
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef ptr %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.ht)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit116 unwind label %bb.cc, !inline_history !68 ; 12 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit116:              ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i110
  %.not.i.i117 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i117, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit118, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit116
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !9
  %i.ia = add nsw i32 %i.hz, 1
  store i32 %i.ia, ptr %i.hy, align 8, !tbaa !9
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit118

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit118:   ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit116, %bb.aj
  %i.ib = load i32, ptr %i.hp, align 8, !tbaa !9
  %i.ic = add nsw i32 %i.ib, -1                   ; 2 uses
  store i32 %i.ic, ptr %i.hp, align 8, !tbaa !9
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.ak, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.ak:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit118
  %i.ie = load ptr, ptr %.0.i3.i.i.i111, align 8, !tbaa !11
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i111) #8, !inline_history !79
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.ak, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit118
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !9
  %i.ij = add nsw i32 %i.ii, -1                   ; 2 uses
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !9
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.al, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit121

bb.al:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.il = load ptr, ptr %i.hd, align 8, !tbaa !11
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(280) %i.hd) #8, !inline_history !43
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit121

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit121: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.al
  %i.io = load ptr, ptr %9, align 8, !tbaa !142   ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !11
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8
  invoke void %i.ir(ptr noundef nonnull align 8 dereferenceable(69) %i.io, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i87, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.hx)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit123 unwind label %bb.ce, !inline_history !70

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit123: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit121
  %i.is = load ptr, ptr %10, align 8, !tbaa !142  ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !11
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8
  invoke void %i.iv(ptr noundef nonnull align 8 dereferenceable(69) %i.is, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i97, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.hx)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit125 unwind label %bb.ce, !inline_history !70

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit125: ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit123
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !112 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !11
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef ptr %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.ix)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit127 unwind label %bb.ce, !inline_history !68 ; 13 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit127:              ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit125
  %.not.i.i128 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i128, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit129, label %bb.am

bb.am:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit127
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !9
  %i.je = add nsw i32 %i.jd, 1
  store i32 %i.je, ptr %i.jc, align 8, !tbaa !9
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit129

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit129:   ; preds = %bb.am, %_ZNK5Ipopt6Vector7MakeNewEv.exit127
  %i.jf = load ptr, ptr %i.jb, align 8, !tbaa !11
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 72
  %i.jh = load ptr, ptr %i.jg, align 8
  invoke void %i.jh(ptr noundef nonnull align 8 dereferenceable(205) %i.jb, double noundef 0.000000e+00)
          to label %.noexc130 unwind label %bb.cf, !inline_history !80

.noexc130:                                        ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit129
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.jb)
          to label %_ZN5Ipopt6Vector3SetEd.exit unwind label %bb.cf

_ZN5Ipopt6Vector3SetEd.exit:                      ; preds = %.noexc130
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !112 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !11
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = invoke noundef ptr %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.jj)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit133 unwind label %bb.cf, !inline_history !68 ; 13 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit133:              ; preds = %_ZN5Ipopt6Vector3SetEd.exit
  %.not.i.i134 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i134, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit135, label %bb.an

bb.an:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit133
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !9
  %i.jq = add nsw i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jo, align 8, !tbaa !9
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit135

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit135:   ; preds = %bb.an, %_ZNK5Ipopt6Vector7MakeNewEv.exit133
  %i.jr = load ptr, ptr %i.jn, align 8, !tbaa !11
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.jt = load ptr, ptr %i.js, align 8
  invoke void %i.jt(ptr noundef nonnull align 8 dereferenceable(205) %i.jn, double noundef 0.000000e+00)
          to label %.noexc136 unwind label %bb.cg, !inline_history !80

.noexc136:                                        ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit135
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.jn)
          to label %_ZN5Ipopt6Vector3SetEd.exit138 unwind label %bb.cg

_ZN5Ipopt6Vector3SetEd.exit138:                   ; preds = %.noexc136
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !112 ; 2 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !11
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = invoke noundef ptr %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jv)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit140 unwind label %bb.cg, !inline_history !68 ; 9 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit140:              ; preds = %_ZN5Ipopt6Vector3SetEd.exit138
  %.not.i.i141 = icmp eq ptr %i.jz, null          ; 2 uses
  br i1 %.not.i.i141, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit142, label %bb.ao

bb.ao:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit140
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !9
  %i.kc = add nsw i32 %i.kb, 1
  store i32 %i.kc, ptr %i.ka, align 8, !tbaa !9
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit142

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit142:   ; preds = %bb.ao, %_ZNK5Ipopt6Vector7MakeNewEv.exit140
  %i.kd = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !112 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !11
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = invoke noundef ptr %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.ke)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit144 unwind label %bb.ch, !inline_history !68 ; 9 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit144:              ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit142
  %.not.i.i145 = icmp eq ptr %i.ki, null          ; 2 uses
  br i1 %.not.i.i145, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit144
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !9
  %i.kl = add nsw i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 8, !tbaa !9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZNK5Ipopt6Vector7MakeNewEv.exit144
  %i.km = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !112
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !148
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !112
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 12
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !148
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !15 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !11
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = invoke noundef zeroext i1 %i.ky(ptr noundef nonnull align 8 dereferenceable(49) %i.kv)
          to label %bb.ar unwind label %bb.ci

bb.ar:                                            ; preds = %bb.aq
  %i.la = add nsw i32 %i.kt, %i.kp
  %i.lb = load ptr, ptr %i.ku, align 8, !tbaa !15 ; 2 uses
  %i.lc = load ptr, ptr %3, align 8, !tbaa !151
  %i.ld = load ptr, ptr %4, align 8, !tbaa !142
  %i.le = load ptr, ptr %5, align 8, !tbaa !142
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !11
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = invoke noundef i32 %i.lh(ptr noundef nonnull align 8 dereferenceable(49) %i.lb, ptr noundef %i.lc, double noundef 0.000000e+00, ptr noundef null, double noundef 1.000000e+00, ptr noundef null, double noundef 1.000000e+00, ptr noundef %i.ld, ptr noundef null, double noundef 0.000000e+00, ptr noundef %i.le, ptr noundef null, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.dy, ptr noundef nonnull align 8 dereferenceable(205) %i.hx, ptr noundef nonnull align 8 dereferenceable(205) %i.jb, ptr noundef nonnull align 8 dereferenceable(205) %i.jn, ptr noundef nonnull align 8 dereferenceable(205) %i.jz, ptr noundef nonnull align 8 dereferenceable(205) %i.ki, ptr noundef nonnull align 8 dereferenceable(205) %1, ptr noundef nonnull align 8 dereferenceable(205) %2, i1 noundef zeroext %i.kz, i32 noundef %i.la)
          to label %bb.as unwind label %.thread

.thread:                                          ; preds = %bb.ar
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.as:                                            ; preds = %bb.ar
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !9
  %i.lm = add nsw i32 %i.ll, -1                   ; 2 uses
  store i32 %i.lm, ptr %i.lk, align 8, !tbaa !9
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.at, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5Ipopt22LeastSquareMultipliers20CalculateMultipliersERNS_6VectorES2_:bb.a
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit168

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit168:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.os = load ptr, ptr %8, align 8, !tbaa !142   ; 4 uses
  %.not.i.i169 = icmp eq ptr %i.os, null
  br i1 %.not.i.i169, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit170, label %bb.bh

bb.bh:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit168
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !9
  %i.ov = add nsw i32 %i.ou, -1                   ; 2 uses
  store i32 %i.ov, ptr %i.ot, align 8, !tbaa !9
  %i.ow = icmp eq i32 %i.ov, 0
  br i1 %i.ow, label %bb.bi, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit170

bb.bi:                                            ; preds = %bb.bh
  %i.ox = load ptr, ptr %i.os, align 8, !tbaa !11
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(69) %i.os) #8, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit170

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit170:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit168, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.pa = load ptr, ptr %7, align 8, !tbaa !142   ; 4 uses
  %.not.i.i171 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i171, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit172, label %bb.bj

bb.bj:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit170
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 8, !tbaa !9
  %i.pd = add nsw i32 %i.pc, -1                   ; 2 uses
  store i32 %i.pd, ptr %i.pb, align 8, !tbaa !9
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.bk, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit172

bb.bk:                                            ; preds = %bb.bj
  %i.pf = load ptr, ptr %i.pa, align 8, !tbaa !11
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(69) %i.pa) #8, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit172

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit172:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit170, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.pi = load ptr, ptr %6, align 8, !tbaa !99    ; 4 uses
  %.not.i.i173 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i173, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit174, label %bb.bl

bb.bl:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit172
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !9
  %i.pl = add nsw i32 %i.pk, -1                   ; 2 uses
  store i32 %i.pl, ptr %i.pj, align 8, !tbaa !9
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %bb.bm, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit174

bb.bm:                                            ; preds = %bb.bl
  %i.pn = load ptr, ptr %i.pi, align 8, !tbaa !11
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load ptr, ptr %i.po, align 8
  call void %i.pp(ptr noundef nonnull align 8 dereferenceable(205) %i.pi) #8, !inline_history !79
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit174

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit174:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit172, %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.pq = load ptr, ptr %5, align 8, !tbaa !142   ; 4 uses
  %.not.i.i175 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i175, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit176, label %bb.bn

bb.bn:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit174
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !9
  %i.pt = add nsw i32 %i.ps, -1                   ; 2 uses
  store i32 %i.pt, ptr %i.pr, align 8, !tbaa !9
  %i.pu = icmp eq i32 %i.pt, 0
  br i1 %i.pu, label %bb.bo, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit176

bb.bo:                                            ; preds = %bb.bn
  %i.pv = load ptr, ptr %i.pq, align 8, !tbaa !11
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(69) %i.pq) #8, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit176

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit176:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit174, %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.py = load ptr, ptr %4, align 8, !tbaa !142   ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.py, null
  br i1 %.not.i.i177, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit178, label %bb.bp

bb.bp:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit176
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !9
  %i.qb = add nsw i32 %i.qa, -1                   ; 2 uses
  store i32 %i.qb, ptr %i.pz, align 8, !tbaa !9
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %bb.bq, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit178

bb.bq:                                            ; preds = %bb.bp
  %i.qd = load ptr, ptr %i.py, align 8, !tbaa !11
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(69) %i.py) #8, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit178

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit178:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit176, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.qg = load ptr, ptr %3, align 8, !tbaa !151   ; 4 uses
  %.not.i.i179 = icmp eq ptr %i.qg, null
  br i1 %.not.i.i179, label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit178
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !9
  %i.qj = add nsw i32 %i.qi, -1                   ; 2 uses
  store i32 %i.qj, ptr %i.qh, align 8, !tbaa !9
  %i.qk = icmp eq i32 %i.qj, 0
  br i1 %i.qk, label %bb.bs, label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit

bb.bs:                                            ; preds = %bb.br
  %i.ql = load ptr, ptr %i.qg, align 8, !tbaa !11
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(80) %i.qg) #8, !inline_history !83
  br label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit178, %bb.br, %bb.bs
  %.not = icmp eq i32 %i.li, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i1 %.not

bb.bt:                                            ; preds = %bb.a
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit225

bb.bu:                                            ; preds = %bb.b
  %i.qp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit223

bb.bv:                                            ; preds = %bb.c
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit221

bb.bw:                                            ; preds = %bb.d
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit219

bb.bx:                                            ; preds = %bb.e
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit217

bb.by:                                            ; preds = %bb.f
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit215

bb.bz:                                            ; preds = %bb.g
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit213

bb.ca:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit101
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit203

bb.cb:                                            ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit, %_ZN5Ipopt6Vector4CopyERKS0_.exit, %.noexc, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread

bb.cc:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i110
  %i.qx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qy = load i32, ptr %i.hp, align 8, !tbaa !9
  %i.qz = add nsw i32 %i.qy, -1                   ; 2 uses
  store i32 %i.qz, ptr %i.hp, align 8, !tbaa !9
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.cd, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit189.thread

bb.cd:                                            ; preds = %bb.cc
  %i.rb = load ptr, ptr %.0.i3.i.i.i111, align 8, !tbaa !11
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8
  call void %i.rd(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i111) #8, !inline_history !79
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit189.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit189.thread: ; preds = %bb.cc, %bb.cd
  %i.re = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !9
  %i.rg = add nsw i32 %i.rf, -1                   ; 2 uses
  store i32 %i.rg, ptr %i.re, align 8, !tbaa !9
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %11, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread

11:                                               ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit189.thread
  %12 = load ptr, ptr %i.hd, align 8, !tbaa !11
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr noundef nonnull align 8 dereferenceable(280) %i.hd) #8, !inline_history !43
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread

bb.ce:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit121, %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit123, %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit125
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit199

bb.cf:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit129, %.noexc130, %_ZN5Ipopt6Vector3SetEd.exit
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit197

bb.cg:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit135, %.noexc136, %_ZN5Ipopt6Vector3SetEd.exit138
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit195

bb.ch:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit142
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit193

bb.ci:                                            ; preds = %bb.aq
  %i.rm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not.i.i145, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit193, label %bb.cj

bb.cj:                                            ; preds = %.thread, %bb.ci
  %i.rn = phi { ptr, i32 } [ %i.lj, %.thread ], [ %i.rm, %bb.ci ] ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !9
  %i.rq = add nsw i32 %i.rp, -1                   ; 2 uses
  store i32 %i.rq, ptr %i.ro, align 8, !tbaa !9
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %bb.ck, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit193

bb.ck:                                            ; preds = %bb.cj
  %i.rs = load ptr, ptr %i.ki, align 8, !tbaa !11
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(205) %i.ki) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit193

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit193:      ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch
  %.pn49.pn = phi { ptr, i32 } [ %i.rl, %bb.ch ], [ %i.rm, %bb.ci ], [ %i.rn, %bb.cj ], [ %i.rn, %bb.ck ] ; 3 uses
  br i1 %.not.i.i141, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit195, label %bb.cl

bb.cl:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit193
  %i.rv = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !9
  %i.rx = add nsw i32 %i.rw, -1                   ; 2 uses
  store i32 %i.rx, ptr %i.rv, align 8, !tbaa !9
  %i.ry = icmp eq i32 %i.rx, 0
  br i1 %i.ry, label %bb.cm, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit195

bb.cm:                                            ; preds = %bb.cl
  %i.rz = load ptr, ptr %i.jz, align 8, !tbaa !11
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(205) %i.jz) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit195

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit195:      ; preds = %bb.cm, %bb.cl, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit193, %bb.cg
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.cm ], [ %i.rk, %bb.cg ], [ %.pn49.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit193 ], [ %.pn49.pn, %bb.cl ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 2 uses
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !9
  %i.se = add nsw i32 %i.sd, -1                   ; 2 uses
  store i32 %i.se, ptr %i.sc, align 8, !tbaa !9
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %bb.cn, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit197

bb.cn:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit195
  %i.sg = load ptr, ptr %i.jn, align 8, !tbaa !11
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = load ptr, ptr %i.sh, align 8
  call void %i.si(ptr noundef nonnull align 8 dereferenceable(205) %i.jn) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit197

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit197:      ; preds = %bb.cn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit195, %bb.cf
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %bb.cn ], [ %i.rj, %bb.cf ], [ %.pn49.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit195 ] ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !9
  %i.sl = add nsw i32 %i.sk, -1                   ; 2 uses
  store i32 %i.sl, ptr %i.sj, align 8, !tbaa !9
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %bb.co, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit199

bb.co:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit197
  %i.sn = load ptr, ptr %i.jb, align 8, !tbaa !11
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sp = load ptr, ptr %i.so, align 8
  call void %i.sp(ptr noundef nonnull align 8 dereferenceable(205) %i.jb) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit199

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit199:      ; preds = %bb.co, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit197, %bb.ce
  %.pn49.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn.pn, %bb.co ], [ %i.ri, %bb.ce ], [ %.pn49.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit197 ] ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.hx, i64 8 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !9
  %i.ss = add nsw i32 %i.sr, -1                   ; 2 uses
  store i32 %i.ss, ptr %i.sq, align 8, !tbaa !9
  %i.st = icmp eq i32 %i.ss, 0
  br i1 %i.st, label %bb.cp, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread

bb.cp:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit199
  %i.su = load ptr, ptr %i.hx, align 8, !tbaa !11
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8
  call void %i.sw(ptr noundef nonnull align 8 dereferenceable(205) %i.hx) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread: ; preds = %bb.cb, %bb.cp, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit199, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit189.thread, %11
  %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn290 = phi { ptr, i32 } [ %i.qw, %bb.cb ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn, %bb.cp ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit199 ], [ %i.qx, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit189.thread ], [ %i.qx, %11 ] ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !9
  %i.sz = add nsw i32 %i.sy, -1                   ; 2 uses
  store i32 %i.sz, ptr %i.sx, align 8, !tbaa !9
  %i.ta = icmp eq i32 %i.sz, 0
  br i1 %i.ta, label %bb.cq, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit203

bb.cq:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread
  %i.tb = load ptr, ptr %i.dy, align 8, !tbaa !11
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load ptr, ptr %i.tc, align 8
  call void %i.td(ptr noundef nonnull align 8 dereferenceable(205) %i.dy) #8, !inline_history !81
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit203

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit203:      ; preds = %bb.cq, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread, %bb.ca
  %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qv, %bb.ca ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn290, %bb.cq ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn290, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit191.thread ] ; 3 uses
  %.not.i.i204 = icmp eq ptr %storemerge.i.i97, null
  br i1 %.not.i.i204, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205, label %bb.cr

bb.cr:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit203
  %i.te = getelementptr inbounds nuw i8, ptr %storemerge.i.i97, i64 8 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !9
  %i.tg = add nsw i32 %i.tf, -1                   ; 2 uses
  store i32 %i.tg, ptr %i.te, align 8, !tbaa !9
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.cs, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205

bb.cs:                                            ; preds = %bb.cr
  %i.ti = load ptr, ptr %storemerge.i.i97, align 8, !tbaa !11
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tk = load ptr, ptr %i.tj, align 8
  call void %i.tk(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i97) #8, !inline_history !79
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205:     ; preds = %bb.cs, %bb.cr, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit203
  %.not.i.i206 = icmp eq ptr %storemerge.i.i87, null
  br i1 %.not.i.i206, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit207, label %bb.ct

bb.ct:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205
  %i.tl = getelementptr inbounds nuw i8, ptr %storemerge.i.i87, i64 8 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !9
  %i.tn = add nsw i32 %i.tm, -1                   ; 2 uses
  store i32 %i.tn, ptr %i.tl, align 8, !tbaa !9
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %bb.cu, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit207

bb.cu:                                            ; preds = %bb.ct
  %i.tp = load ptr, ptr %storemerge.i.i87, align 8, !tbaa !11
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i87) #8, !inline_history !79
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit207

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit207:     ; preds = %bb.cu, %bb.ct, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit205
  %.not.i.i208 = icmp eq ptr %storemerge.i.i77, null
  br i1 %.not.i.i208, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit209, label %bb.cv

bb.cv:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit207
  %i.ts = getelementptr inbounds nuw i8, ptr %storemerge.i.i77, i64 8 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !9
  %i.tu = add nsw i32 %i.tt, -1                   ; 2 uses
  store i32 %i.tu, ptr %i.ts, align 8, !tbaa !9
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %bb.cw, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit209

bb.cw:                                            ; preds = %bb.cv
  %i.tw = load ptr, ptr %storemerge.i.i77, align 8, !tbaa !11
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i77) #8, !inline_history !79
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit209

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit209:     ; preds = %bb.cw, %bb.cv, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit207
  %.not.i.i210 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i210, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit211, label %bb.cx

bb.cx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit209
  %i.tz = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !9
  %i.ub = add nsw i32 %i.ua, -1                   ; 2 uses
  store i32 %i.ub, ptr %i.tz, align 8, !tbaa !9
  %i.uc = icmp eq i32 %i.ub, 0
  br i1 %i.uc, label %bb.cy, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit211

bb.cy:                                            ; preds = %bb.cx
  %i.ud = load ptr, ptr %storemerge.i.i, align 8, !tbaa !11
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8
  call void %i.uf(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i) #8, !inline_history !79
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit211

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit211:     ; preds = %bb.cy, %bb.cx, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit209
  %i.ug = load ptr, ptr %10, align 8, !tbaa !142  ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i212, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit213, label %bb.cz

bb.cz:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit211
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !9
  %i.uj = add nsw i32 %i.ui, -1                   ; 2 uses
  store i32 %i.uj, ptr %i.uh, align 8, !tbaa !9
  %i.uk = icmp eq i32 %i.uj, 0
  br i1 %i.uk, label %bb.da, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit213

bb.da:                                            ; preds = %bb.cz
  %i.ul = load ptr, ptr %i.ug, align 8, !tbaa !11
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8
  call void %i.un(ptr noundef nonnull align 8 dereferenceable(69) %i.ug) #8, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit213

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit213:     ; preds = %bb.da, %bb.cz, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit211, %bb.bz
  %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qu, %bb.bz ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit211 ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cz ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.da ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.uo = load ptr, ptr %9, align 8, !tbaa !142   ; 4 uses
  %.not.i.i214 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i214, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit215, label %bb.db

bb.db:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit213
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8 ; 2 uses
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !9
  %i.ur = add nsw i32 %i.uq, -1                   ; 2 uses
  store i32 %i.ur, ptr %i.up, align 8, !tbaa !9
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %bb.dc, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit215

bb.dc:                                            ; preds = %bb.db
  %i.ut = load ptr, ptr %i.uo, align 8, !tbaa !11
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(69) %i.uo) #8, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit215

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit215:     ; preds = %bb.dc, %bb.db, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit213, %bb.by
  %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qt, %bb.by ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit213 ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.db ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dc ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.uw = load ptr, ptr %8, align 8, !tbaa !142   ; 4 uses
  %.not.i.i216 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i216, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit217, label %bb.dd

bb.dd:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit215
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !9
  %i.uz = add nsw i32 %i.uy, -1                   ; 2 uses
  store i32 %i.uz, ptr %i.ux, align 8, !tbaa !9
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %bb.de, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit217

bb.de:                                            ; preds = %bb.dd
  %i.vb = load ptr, ptr %i.uw, align 8, !tbaa !11
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8
  call void %i.vd(ptr noundef nonnull align 8 dereferenceable(69) %i.uw) #8, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit217

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit217:     ; preds = %bb.de, %bb.dd, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit215, %bb.bx
  %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qs, %bb.bx ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit215 ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dd ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.de ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.ve = load ptr, ptr %7, align 8, !tbaa !142   ; 4 uses
  %.not.i.i218 = icmp eq ptr %i.ve, null
  br i1 %.not.i.i218, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit219, label %bb.df

bb.df:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit217
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8 ; 2 uses
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !9
  %i.vh = add nsw i32 %i.vg, -1                   ; 2 uses
  store i32 %i.vh, ptr %i.vf, align 8, !tbaa !9
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %bb.dg, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit219

bb.dg:                                            ; preds = %bb.df
  %i.vj = load ptr, ptr %i.ve, align 8, !tbaa !11
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vl = load ptr, ptr %i.vk, align 8
  call void %i.vl(ptr noundef nonnull align 8 dereferenceable(69) %i.ve) #8, !inline_history !82
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit219

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit219:     ; preds = %bb.dg, %bb.df, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit217, %bb.bw
  %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qr, %bb.bw ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit217 ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.df ], [ %.pn49.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dg ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.vm = load ptr, ptr %6, align 8, !tbaa !99    ; 4 uses
  %.not.i.i220 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i220, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit221, label %bb.dh

bb.dh:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit219
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !9
  %i.vp = add nsw i32 %i.vo, -1                   ; 2 uses
  store i32 %i.vp, ptr %i.vn, align 8, !tbaa !9
  %i.vq = icmp eq i32 %i.vp, 0
  br i1 %i.vq, label %bb.di, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit221

bb.di:                                            ; preds = %bb.dh
  %i.vr = load ptr, ptr %i.vm, align 8, !tbaa !11
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(205) %i.vm) #8, !inline_history !79
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit221

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit221:     ; preds = %bb.di, %bb.dh, %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit219, %bb.bv
end_hunk_1
