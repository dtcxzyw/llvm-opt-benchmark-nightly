inline.NumInlined: 991
inline.NumDeleted: 424
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5Ipopt19MetadataMeasurement14GetMeasurementEi:bb.a
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc90, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.fn = phi ptr [ %i.fd, %.noexc90 ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !21
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !34, !noalias !231 ; 7 uses
  %.not.i.i.i.i92 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i92, label %_ZNK5Ipopt9IpoptData5trialEv.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !8, !noalias !231
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !8, !noalias !231
  br label %_ZNK5Ipopt9IpoptData5trialEv.exit

_ZNK5Ipopt9IpoptData5trialEv.exit:                ; preds = %bb.ak, %bb.aj
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 208
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !40, !noalias !234
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !48, !noalias !234 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i93, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData5trialEv.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 232
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !51, !noalias !234
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !54, !noalias !234 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not3.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i
  %.pre169 = load i32, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !8
  %i.gb = add nsw i32 %.pre169, -1
  br label %bb.al

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData5trialEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.fx, %_ZNK5Ipopt9IpoptData5trialEv.exit ], [ %i.ga, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !8, !noalias !239 ; 2 uses
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 8, !tbaa !8, !noalias !239
  br label %bb.al

bb.al:                                            ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %i.gf = phi i32 [ %i.gb, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge ], [ %i.gd, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ] ; 2 uses
  %storemerge.i.i = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i._crit_edge ], [ %.0.i3.i.i.i, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %storemerge.i.i) ]
  %i.gg = call ptr @__dynamic_cast(ptr nonnull %storemerge.i.i, ptr nonnull @_ZTIN5Ipopt6VectorE, ptr nonnull @_ZTIN5Ipopt11DenseVectorE, i64 0) #20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 216
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !229 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8
  store i32 %i.gf, ptr %i.gj, align 8, !tbaa !8
  %i.gk = icmp eq i32 %i.gf, 0
  br i1 %i.gk, label %bb.am, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.gl = load ptr, ptr %storemerge.i.i, align 8, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i) #20, !inline_history !68
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %bb.am, %bb.al
  %i.go = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !8
  %i.gq = add nsw i32 %i.gp, -1                   ; 2 uses
  store i32 %i.gq, ptr %i.go, align 8, !tbaa !8
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.an, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.an:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.gs = load ptr, ptr %i.fr, align 8, !tbaa !10
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(280) %i.fr) #20, !inline_history !69
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, %bb.an
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.gv = ashr exact i64 %i.dj, 3                 ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.gv, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %i.gw = icmp ult i64 %i.gv, 2
  br i1 %i.gw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit42
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit121

bb.ap:                                            ; preds = %.noexc.i, %bb.d
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.aq:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.m
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.aq
  %i.hc = load i64, ptr %i.m, align 8, !tbaa !146
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.gy, %bb.ap ], [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.gz, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit121

bb.ar:                                            ; preds = %.noexc.i48, %bb.p
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.as:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i82
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %6, align 8, !tbaa !147   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.bp
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.as
  %i.hi = load i64, ptr %i.bp, align 8, !tbaa !146
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.ar
  %.pn29 = phi { ptr, i32 } [ %i.he, %bb.ar ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.hf, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit119

bb.at:                                            ; preds = %bb.ad
  %i.hk = landingpad { ptr, i32 }
          cleanup
  %i.hl = load i32, ptr %i.dv, align 8, !tbaa !8
  %i.hm = add nsw i32 %i.hl, -1                   ; 2 uses
  store i32 %i.hm, ptr %i.dv, align 8, !tbaa !8
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.au, label %_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit103

bb.au:                                            ; preds = %bb.at
  %i.ho = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(160) %i.dr) #20, !inline_history !16
  br label %_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit103

_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit103: ; preds = %bb.at, %bb.au
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 248) #21
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158

.thread:                                          ; preds = %bb.ag, %.noexc89, %bb.ai
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ay
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0165.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.iz, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod229 = trunc i64 %umax to i1
  call void @llvm.assume(i1 %lcmp.mod229)
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.0165.epil.init
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !165 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %bb.av, label %._crit_edge

bb.av:                                            ; preds = %.lr.ph.epil.preheader
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.0165.epil.init
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !203
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.0165.epil.init
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !203
  %i.hz = fsub double %i.hw, %i.hy
  %i.ia = zext nneg i32 %i.ht to i64
  %i.ib = getelementptr [8 x i8], ptr %i.fn, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.ib, i64 -8
  store double %i.hz, ptr %i.ic, align 8, !tbaa !203
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.av, %.lr.ph.epil.preheader, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.id = load ptr, ptr %0, align 8, !tbaa !212
  invoke void @_ZN5Ipopt11DenseVector9SetValuesEPKd(ptr noundef nonnull align 8 dereferenceable(248) %i.id, ptr noundef %i.fn)
          to label %bb.bc unwind label %bb.az

.lr.ph:                                           ; preds = %bb.ay, %.lr.ph.preheader.new
  %.0165 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.iz, %bb.ay ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.ay ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.0165
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !165 ; 2 uses
  %i.ig = icmp sgt i32 %i.if, 0
  br i1 %i.ig, label %bb.aw, label %.lr.ph.1

bb.aw:                                            ; preds = %.lr.ph
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.0165
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !203
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.0165
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !203
  %i.il = fsub double %i.ii, %i.ik
  %i.im = zext nneg i32 %i.if to i64
  %i.in = getelementptr [8 x i8], ptr %i.fn, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 -8
  store double %i.il, ptr %i.io, align 8, !tbaa !203
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.aw
  %7 = or disjoint i64 %.0165, 1                  ; 3 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %7
  %i.ip = load i32, ptr %8, align 4, !tbaa !165   ; 2 uses
  %i.iq = icmp sgt i32 %i.ip, 0
  br i1 %i.iq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.1
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %7
  %i.is = load double, ptr %i.ir, align 8, !tbaa !203
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %7
  %i.iu = load double, ptr %i.it, align 8, !tbaa !203
  %i.iv = fsub double %i.is, %i.iu
  %i.iw = zext nneg i32 %i.ip to i64
  %i.ix = getelementptr [8 x i8], ptr %i.fn, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 -8
  store double %i.iv, ptr %i.iy, align 8, !tbaa !203
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph.1
  %i.iz = add nuw i64 %.0165, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !242

bb.az:                                            ; preds = %._crit_edge
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre170 = load ptr, ptr %0, align 8, !tbaa !212 ; 2 uses
  %.not.i.i106 = icmp eq ptr %.pre170, null
  br i1 %.not.i.i106, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158, label %bb.ba

bb.ba:                                            ; preds = %.thread, %bb.az
  %.pn35.pn228 = phi { ptr, i32 } [ %i.hr, %.thread ], [ %i.ja, %bb.az ] ; 2 uses
  %i.jb = phi ptr [ %i.em, %.thread ], [ %.pre170, %bb.az ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !8
  %i.je = add nsw i32 %i.jd, -1                   ; 2 uses
  store i32 %i.je, ptr %i.jc, align 8, !tbaa !8
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.bb, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158

bb.bb:                                            ; preds = %bb.ba
  %i.jg = load ptr, ptr %i.jb, align 8, !tbaa !10
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(248) %i.jb) #20, !inline_history !243
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158

bb.bc:                                            ; preds = %._crit_edge
  %i.jj = load i32, ptr %i.dv, align 8, !tbaa !8
  %i.jk = add nsw i32 %i.jj, -1                   ; 2 uses
  store i32 %i.jk, ptr %i.dv, align 8, !tbaa !8
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.bd, label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit

bb.bd:                                            ; preds = %bb.bc
  %i.jm = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(160) %i.dr) #20, !inline_history !244
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit: ; preds = %bb.bc, %bb.bd
  %.not.i.i.i108 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dd) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit, %bb.be
  %.not.i.i.i109 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ba) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.bf
  %i.jp = load ptr, ptr %4, align 8, !tbaa !147   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.e
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.jr = load i64, ptr %i.e, align 8, !tbaa !146
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.jt = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.c
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.jv = load i64, ptr %i.c, align 8, !tbaa !146
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit:   ; preds = %bb.ac
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158: ; preds = %bb.bb, %bb.ba, %bb.az, %_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit103, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit
  %.pn35.pn.pn156 = phi { ptr, i32 } [ %i.hk, %_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit103 ], [ %i.jx, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit ], [ %.pn35.pn228, %bb.bb ], [ %.pn35.pn228, %bb.ba ], [ %i.ja, %bb.az ] ; 2 uses
  %i.jy = load i32, ptr %i.dv, align 8, !tbaa !8
  %i.jz = add nsw i32 %i.jy, -1                   ; 2 uses
  store i32 %i.jz, ptr %i.dv, align 8, !tbaa !8
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.bg, label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit117

bb.bg:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158
  %i.kb = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(160) %i.dr) #20, !inline_history !244
  br label %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit117

_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit117: ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread162, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158, %bb.bg
  %.pn35.pn.pn157 = phi { ptr, i32 } [ %i.ds, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread162 ], [ %.pn35.pn.pn156, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.thread158 ], [ %.pn35.pn.pn156, %bb.bg ] ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIdSaIdEED2Ev.exit119, label %bb.bh

bb.bh:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit117
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dd) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit119

_ZNSt6vectorIdSaIdEED2Ev.exit119:                 ; preds = %bb.bh, %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %.pn35.pn.pn.pn = phi { ptr, i32 } [ %.pn29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn35.pn.pn157, %_ZN5Ipopt8SmartPtrINS_16DenseVectorSpaceEED2Ev.exit117 ], [ %.pn35.pn.pn157, %bb.bh ] ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIiSaIiEED2Ev.exit121, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit119
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.ba) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit121

_ZNSt6vectorIiSaIiEED2Ev.exit121:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNSt6vectorIdSaIdEED2Ev.exit119, %bb.bi, %bb.ao
  %.pn35.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gx, %bb.ao ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %.pn35.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit119 ], [ %.pn35.pn.pn.pn, %bb.bi ]
  %i.ke = load ptr, ptr %4, align 8, !tbaa !147   ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.e
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit121
  %i.kg = load i64, ptr %i.e, align 8, !tbaa !146
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ki = load ptr, ptr %3, align 8, !tbaa !147   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.c
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.kk = load i64, ptr %i.c, align 8, !tbaa !146
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn35.pn.pn.pn.pn.pn
}

declare void @_ZN5Ipopt12append_IndexERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) unnamed_addr #7

declare void @_ZN5Ipopt11DenseVector9SetValuesEPKd(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt19MetadataMeasurement11SetSolutionEiNS_8SmartPtrINS_14IteratesVectorEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"class.std::vector.49", align 8    ; 15 uses
  %5 = alloca %"class.std::vector.49", align 8    ; 15 uses
  %6 = alloca %"class.std::vector.49", align 8    ; 17 uses
  %7 = alloca %"class.std::vector.49", align 8    ; 15 uses
  %8 = alloca %"class.std::vector.49", align 8    ; 15 uses
  %9 = alloca %"class.std::vector.49", align 8    ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @.str.5, i64 15, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 15, ptr %i.b, align 8, !tbaa !143
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 0, ptr %i.c, align 1, !tbaa !146
  invoke void @_ZN5Ipopt12append_IndexERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %1)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %2, align 8, !tbaa !245    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !247
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48, !noalias !247 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %bb.a
end_hunk_0
