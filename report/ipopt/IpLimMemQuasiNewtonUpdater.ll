Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLimMemQuasiNewtonUpdater?download=true
inline.NumInlined: 2195
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5Ipopt24LimMemQuasiNewtonUpdater16SplitEigenvaluesERNS_14DenseGenMatrixERKNS_11DenseVectorERNS_8SmartPtrIS1_EES8_:bb.a
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load ptr, ptr %i.bb, align 8, !tbaa !44
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(248) %i.bb) #20, !inline_history !20
  br label %common.resume

bb.af:                                            ; preds = %bb.g
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !188
  %i.fi = icmp eq i32 %.0105.lcssa, %i.fh
  br i1 %i.fi, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !157, !noalias !476
  %i.fl = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #23, !noalias !476 ; 16 uses
  invoke void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248) %i.fl, ptr noundef nonnull align 8 dereferenceable(160) %i.fk)
          to label %_ZNK5Ipopt11DenseVector18MakeNewDenseVectorEv.exit128 unwind label %bb.ah, !noalias !476

bb.ah:                                            ; preds = %bb.ag
  %i.fm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 248) #21, !noalias !476
  br label %common.resume

_ZNK5Ipopt11DenseVector18MakeNewDenseVectorEv.exit128: ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 6 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !42, !noalias !476
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !42, !noalias !476
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !44
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 192
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr noundef nonnull align 8 dereferenceable(205) %i.fl, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %2, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %2, double noundef 0.000000e+00)
          to label %.noexc129 unwind label %bb.ap, !inline_history !11

.noexc129:                                        ; preds = %_ZNK5Ipopt11DenseVector18MakeNewDenseVectorEv.exit128
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.fl)
          to label %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit unwind label %bb.ap

_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit:      ; preds = %.noexc129
  %i.ft = load ptr, ptr %i.fl, align 8, !tbaa !44
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 136
  %i.fv = load ptr, ptr %i.fu, align 8
  invoke void %i.fv(ptr noundef nonnull align 8 dereferenceable(205) %i.fl)
          to label %.noexc131 unwind label %bb.ap, !inline_history !14

.noexc131:                                        ; preds = %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.fl)
          to label %_ZN5Ipopt6Vector15ElementWiseSqrtEv.exit133 unwind label %bb.ap

_ZN5Ipopt6Vector15ElementWiseSqrtEv.exit133:      ; preds = %.noexc131
  %i.fw = load ptr, ptr %i.fl, align 8, !tbaa !44
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 120
  %i.fy = load ptr, ptr %i.fx, align 8
  invoke void %i.fy(ptr noundef nonnull align 8 dereferenceable(205) %i.fl)
          to label %.noexc134 unwind label %bb.ap, !inline_history !15

.noexc134:                                        ; preds = %_ZN5Ipopt6Vector15ElementWiseSqrtEv.exit133
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.fl)
          to label %_ZN5Ipopt6Vector21ElementWiseReciprocalEv.exit136 unwind label %bb.ap

_ZN5Ipopt6Vector21ElementWiseReciprocalEv.exit136: ; preds = %.noexc134
  invoke void @_ZN5Ipopt14DenseGenMatrix12ScaleColumnsERKNS_11DenseVectorE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(248) %i.fl)
          to label %bb.ai unwind label %bb.ap

bb.ai:                                            ; preds = %_ZN5Ipopt6Vector21ElementWiseReciprocalEv.exit136
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !42
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 8, !tbaa !42
  %i.gc = load ptr, ptr %3, align 8, !tbaa !94    ; 4 uses
  %.not.i.i.i138 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i138, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !42
  %i.gf = add nsw i32 %i.ge, -1                   ; 2 uses
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !42
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !44
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  tail call void %i.gj(ptr noundef nonnull align 8 dereferenceable(104) %i.gc) #20, !inline_history !3
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  store ptr %1, ptr %3, align 8, !tbaa !94
  %i.gk = load ptr, ptr %4, align 8, !tbaa !94    ; 4 uses
  %.not.i.i.i140 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i140, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !42
  %i.gn = add nsw i32 %i.gm, -1                   ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !42
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gp = load ptr, ptr %i.gk, align 8, !tbaa !44
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  tail call void %i.gr(ptr noundef nonnull align 8 dereferenceable(104) %i.gk) #20, !inline_history !3
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an
  store ptr null, ptr %4, align 8, !tbaa !94
  %i.gs = load i32, ptr %i.fn, align 8, !tbaa !42
  %i.gt = add nsw i32 %i.gs, -1                   ; 2 uses
  store i32 %i.gt, ptr %i.fn, align 8, !tbaa !42
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit.sink.split, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

bb.ap:                                            ; preds = %_ZN5Ipopt6Vector21ElementWiseReciprocalEv.exit136, %_ZNK5Ipopt11DenseVector18MakeNewDenseVectorEv.exit128, %.noexc129, %_ZN5Ipopt6Vector12AddOneVectorEdRKS0_d.exit, %.noexc131, %_ZN5Ipopt6Vector15ElementWiseSqrtEv.exit133, %.noexc134
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gw = load i32, ptr %i.fn, align 8, !tbaa !42
  %i.gx = add nsw i32 %i.gw, -1                   ; 2 uses
  store i32 %i.gx, ptr %i.fn, align 8, !tbaa !42
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.aq, label %common.resume

bb.aq:                                            ; preds = %bb.ap
  %i.gz = load ptr, ptr %i.fl, align 8, !tbaa !44
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  tail call void %i.hb(ptr noundef nonnull align 8 dereferenceable(248) %i.fl) #20, !inline_history !20
  br label %common.resume

bb.ar:                                            ; preds = %bb.af
  %i.hc = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  invoke void @_ZN5Ipopt19DenseGenMatrixSpaceC1Eii(ptr noundef nonnull align 8 dereferenceable(20) %i.hc, i32 noundef %i.d, i32 noundef %.0105.lcssa)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 6 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !42
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 8, !tbaa !42
  %i.hg = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc147 unwind label %bb.ay ; 7 uses

.noexc147:                                        ; preds = %bb.as
  invoke void @_ZN5Ipopt14DenseGenMatrixC1EPKNS_19DenseGenMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(104) %i.hg, ptr noundef nonnull align 8 dereferenceable(20) %i.hc)
          to label %_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit unwind label %bb.at

bb.at:                                            ; preds = %.noexc147
  %i.hh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef 104) #21
  br label %.body

_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit: ; preds = %.noexc147
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !42
  %i.hk = add nsw i32 %i.hj, 1
  store i32 %i.hk, ptr %i.hi, align 8, !tbaa !42
  %i.hl = load ptr, ptr %3, align 8, !tbaa !94    ; 4 uses
  %.not.i.i.i149 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i149, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !42
  %i.ho = add nsw i32 %i.hn, -1                   ; 2 uses
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !42
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hq = load ptr, ptr %i.hl, align 8, !tbaa !44
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef nonnull align 8 dereferenceable(104) %i.hl) #20, !inline_history !3
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit
  store ptr %i.hg, ptr %3, align 8, !tbaa !94
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 88
  store i8 1, ptr %i.ht, align 8, !tbaa !190
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(104) %i.hg)
          to label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit unwind label %bb.az

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit:          ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hg, i64 80
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !191 ; 7 uses
  br i1 %i.k, label %.lr.ph190.us.preheader, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader: ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit
  %wide.trip.count206 = zext i32 %.0105.lcssa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count206, 3      ; 3 uses
  %5 = icmp ult i32 %.0105.lcssa, 4
  br i1 %5, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader.new

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader.new: ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader
  %unroll_iter = and i64 %wide.trip.count206, 4294967292
  br label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split

.lr.ph190.us.preheader:                           ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit
  %i.hw = ptrtoaddr ptr %i.hv to i64
  %i.hx = zext nneg i32 %i.d to i64               ; 6 uses
  %wide.trip.count217 = zext i32 %.0105.lcssa to i64
  %min.iters.check256 = icmp eq i32 %i.d, 1
  %i.hy = sub i64 %i.j, %i.hw
  %diff.check = icmp ugt i64 %i.hy, -16
  %or.cond = select i1 %min.iters.check256, i1 true, i1 %diff.check
  %n.vec258 = and i64 %i.hx, 2147483646           ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec258, %i.hx
  br label %.lr.ph190.us

.lr.ph190.us:                                     ; preds = %.lr.ph190.us.preheader, %._crit_edge191.us
  %indvars.iv213 = phi i64 [ 0, %.lr.ph190.us.preheader ], [ %indvars.iv.next214, %._crit_edge191.us ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv213
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !147
  %i.ib = fneg double %i.ia
  %i.ic = tail call double @sqrt(double noundef %i.ib) #20 ; 6 uses
  %i.id = mul nuw nsw i64 %indvars.iv213, %i.hx   ; 6 uses
  br i1 %or.cond, label %scalar.ph255.preheader, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph190.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ic, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next262, %vector.body259 ] ; 2 uses
  %i.ie = add nuw nsw i64 %index260, %i.id        ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ie
  %wide.load261 = load <2 x double>, ptr %i.if, align 8, !tbaa !147
  %i.ig = fdiv <2 x double> %wide.load261, %broadcast.splat
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ie
  store <2 x double> %i.ig, ptr %i.ih, align 8, !tbaa !147
  %index.next262 = add nuw i64 %index260, 2       ; 2 uses
  %i.ii = icmp eq i64 %index.next262, %n.vec258
  br i1 %i.ii, label %middle.block263, label %vector.body259, !llvm.loop !465

middle.block263:                                  ; preds = %vector.body259
  br i1 %cmp.n264, label %._crit_edge191.us, label %scalar.ph255.preheader

scalar.ph255.preheader:                           ; preds = %.lr.ph190.us, %middle.block263
  %indvars.iv208.ph = phi i64 [ 0, %.lr.ph190.us ], [ %n.vec258, %middle.block263 ] ; 4 uses
  %i.ij = sub nsw i64 %i.hx, %indvars.iv208.ph
  %xtraiter287 = and i64 %i.ij, 3                 ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %scalar.ph255.prol.loopexit, label %scalar.ph255.prol

scalar.ph255.prol:                                ; preds = %scalar.ph255.preheader, %scalar.ph255.prol
  %indvars.iv208.prol = phi i64 [ %indvars.iv.next209.prol, %scalar.ph255.prol ], [ %indvars.iv208.ph, %scalar.ph255.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph255.prol ], [ 0, %scalar.ph255.preheader ]
  %i.ik = add nuw nsw i64 %indvars.iv208.prol, %i.id ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !147
  %i.in = fdiv double %i.im, %i.ic
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ik
  store double %i.in, ptr %i.io, align 8, !tbaa !147
  %indvars.iv.next209.prol = add nuw nsw i64 %indvars.iv208.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter287
  br i1 %prol.iter.cmp.not, label %scalar.ph255.prol.loopexit, label %scalar.ph255.prol, !llvm.loop !466

scalar.ph255.prol.loopexit:                       ; preds = %scalar.ph255.prol, %scalar.ph255.preheader
  %indvars.iv208.unr = phi i64 [ %indvars.iv208.ph, %scalar.ph255.preheader ], [ %indvars.iv.next209.prol, %scalar.ph255.prol ]
  %i.ip = sub nsw i64 %indvars.iv208.ph, %i.hx
  %i.iq = icmp ugt i64 %i.ip, -4
  br i1 %i.iq, label %._crit_edge191.us, label %scalar.ph255.preheader.new

scalar.ph255.preheader.new:                       ; preds = %scalar.ph255.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.id
  %invariant.op299 = add nuw nsw i64 2, %i.id
  %invariant.op301 = add nuw nsw i64 3, %i.id
  br label %scalar.ph255

scalar.ph255:                                     ; preds = %scalar.ph255, %scalar.ph255.preheader.new
  %indvars.iv208 = phi i64 [ %indvars.iv208.unr, %scalar.ph255.preheader.new ], [ %indvars.iv.next209.3, %scalar.ph255 ] ; 5 uses
  %i.ir = add nuw nsw i64 %indvars.iv208, %i.id   ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !147
  %i.iu = fdiv double %i.it, %i.ic
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ir
  store double %i.iu, ptr %i.iv, align 8, !tbaa !147
  %.reass = add nuw nsw i64 %indvars.iv208, %invariant.op ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.reass
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !147
  %i.iy = fdiv double %i.ix, %i.ic
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.reass
  store double %i.iy, ptr %i.iz, align 8, !tbaa !147
  %.reass300 = add nuw nsw i64 %indvars.iv208, %invariant.op299 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.reass300
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !147
  %i.jc = fdiv double %i.jb, %i.ic
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.reass300
  store double %i.jc, ptr %i.jd, align 8, !tbaa !147
  %.reass302 = add nuw nsw i64 %indvars.iv208, %invariant.op301 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.reass302
  %i.jf = load double, ptr %i.je, align 8, !tbaa !147
  %i.jg = fdiv double %i.jf, %i.ic
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.reass302
  store double %i.jg, ptr %i.jh, align 8, !tbaa !147
  %indvars.iv.next209.3 = add nuw nsw i64 %indvars.iv208, 4 ; 2 uses
  %exitcond212.not.3 = icmp eq i64 %indvars.iv.next209.3, %i.hx
  br i1 %exitcond212.not.3, label %._crit_edge191.us, label %scalar.ph255, !llvm.loop !467

._crit_edge191.us:                                ; preds = %scalar.ph255.prol.loopexit, %scalar.ph255, %middle.block263
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count217
  br i1 %exitcond218.not, label %.split.us, label %.lr.ph190.us, !llvm.loop !468

.split.us.loopexit283.unr-lcssa:                  ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader: ; preds = %.split.us.loopexit283.unr-lcssa, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader
  %indvars.iv203.epil.init = phi i64 [ 0, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader ], [ %indvars.iv.next204.3, %.split.us.loopexit283.unr-lcssa ]
  %lcmp.mod286 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod286)
  br label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil: ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader
  %indvars.iv203.epil = phi i64 [ %indvars.iv203.epil.init, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader ], [ %indvars.iv.next204.epil, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil.preheader ], [ %epil.iter.next, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil ]
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203.epil
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !147
  %i.jk = fneg double %i.jj
  %i.jl = tail call double @sqrt(double noundef %i.jk) #20 ; 0 uses
  %indvars.iv.next204.epil = add nuw nsw i64 %indvars.iv203.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split.us, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil, !llvm.loop !469

.split.us:                                        ; preds = %.split.us.loopexit283.unr-lcssa, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.epil, %._crit_edge191.us
  %i.jm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.ba unwind label %bb.bh     ; 8 uses

bb.ax:                                            ; preds = %bb.ar
  %i.jn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 24) #21
  br label %common.resume

bb.ay:                                            ; preds = %bb.as
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %bb.aw
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split:    ; preds = %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader.new
  %indvars.iv203 = phi i64 [ 0, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader.new ], [ %indvars.iv.next204.3, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split.preheader.new ], [ %niter.next.3, %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split ]
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !147
  %i.js = fneg double %i.jr
  %i.jt = tail call double @sqrt(double noundef %i.js) #20 ; 0 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !147
  %i.jx = fneg double %i.jw
  %i.jy = tail call double @sqrt(double noundef %i.jx) #20 ; 0 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !147
  %i.kc = fneg double %i.kb
  %i.kd = tail call double @sqrt(double noundef %i.kc) #20 ; 0 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv203
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !147
  %i.kh = fneg double %i.kg
  %i.ki = tail call double @sqrt(double noundef %i.kh) #20 ; 0 uses
  %indvars.iv.next204.3 = add nuw nsw i64 %indvars.iv203, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split.us.loopexit283.unr-lcssa, label %_ZN5Ipopt14DenseGenMatrix6ValuesEv.exit.split, !llvm.loop !468

bb.ba:                                            ; preds = %.split.us
  %i.kj = sub nsw i32 %i.d, %.0105.lcssa          ; 4 uses
  invoke void @_ZN5Ipopt19DenseGenMatrixSpaceC1Eii(ptr noundef nonnull align 8 dereferenceable(20) %i.jm, i32 noundef %i.d, i32 noundef %i.kj)
          to label %bb.bb unwind label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 6 uses
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !42
  %i.km = add nsw i32 %i.kl, 1
  store i32 %i.km, ptr %i.kk, align 8, !tbaa !42
  %i.kn = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #23
          to label %.noexc153 unwind label %bb.bj ; 7 uses

.noexc153:                                        ; preds = %bb.bb
  invoke void @_ZN5Ipopt14DenseGenMatrixC1EPKNS_19DenseGenMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(104) %i.kn, ptr noundef nonnull align 8 dereferenceable(20) %i.jm)
          to label %_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit156 unwind label %bb.bc

bb.bc:                                            ; preds = %.noexc153
  %i.ko = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef 104) #21
  br label %.body154

_ZNK5Ipopt19DenseGenMatrixSpace21MakeNewDenseGenMatrixEv.exit156: ; preds = %.noexc153
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !42
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E:bb.a
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !260  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i:              ; preds = %bb.b, %.lr.ph
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !86
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !622

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIdSaIdEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !260  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !625  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !626
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.b, %.lr.ph
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !86
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !623

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIiSaIiEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %1, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !260  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !631  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !632  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !86
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #21
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !627

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !631
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.p = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.g, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !633
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !86
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #21
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !628

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

declare void @_ZN5Ipopt11DenseVectorC1EPKNS_16DenseVectorSpaceE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) unnamed_addr #5

declare void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare void @_ZN5Ipopt22LowRankUpdateSymMatrixC1EPKNS_27LowRankUpdateSymMatrixSpaceE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #16

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noreturn }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!33, !34}
!llvm.ident = !{!35}
!llvm.errno.tbaa = !{!40}

!0 = distinct !{null, null, null}
!1 = distinct !{ptr @_ZN5Ipopt8SmartPtrINS_17MultiVectorMatrixEEaSEPS1_, null, null}
!2 = distinct !{null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null, null}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null}
!7 = distinct !{null, null}
!8 = distinct !{null, null}
!9 = distinct !{null, null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null, null}
!17 = distinct !{null, null}
!18 = distinct !{null, null}
!19 = distinct !{null, null}
!20 = distinct !{null, null}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{ptr @_ZNK5Ipopt6Vector3DotERKS0_, null}
!24 = distinct !{ptr @_ZN5Ipopt8SmartPtrINS_17MultiVectorMatrixEEaSERKS2_, null, null, null}
!25 = distinct !{null, null, null, null}
!26 = distinct !{null, null, null, null}
!27 = distinct !{null, null, null, null}
!28 = distinct !{null, null}
!29 = distinct !{null, null}
!30 = distinct !{null}
!31 = distinct !{!31, !173}
!32 = distinct !{!32, !173}
!33 = !{i32 8, !"PIC Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!"omnipotent char", !36, i64 0}
!38 = !{!"int", !37, i64 0}
!39 = !{!"__libc_errno", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!"_ZTSN5Ipopt16ReferencedObjectE", !38, i64 8}
!42 = !{!41, !38, i64 8}
!43 = !{!"vtable pointer", !36, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"any pointer", !37, i64 0}
!46 = !{!"p1 _ZTSN5Ipopt27LowRankUpdateSymMatrixSpaceE", !45, i64 0}
!47 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_27LowRankUpdateSymMatrixSpaceEEE", !46, i64 0}
!48 = !{!47, !46, i64 0}
!49 = !{!"p1 _ZTSN5Ipopt10JournalistE", !45, i64 0}
!50 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_10JournalistEEE", !49, i64 0}
!51 = !{!"p1 _ZTSN5Ipopt8IpoptNLPE", !45, i64 0}
!52 = !{!"_ZTSN5Ipopt8SmartPtrINS_8IpoptNLPEEE", !51, i64 0}
!53 = !{!"p1 _ZTSN5Ipopt9IpoptDataE", !45, i64 0}
!54 = !{!"_ZTSN5Ipopt8SmartPtrINS_9IpoptDataEEE", !53, i64 0}
!55 = !{!"p1 _ZTSN5Ipopt25IpoptCalculatedQuantitiesE", !45, i64 0}
!56 = !{!"_ZTSN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEE", !55, i64 0}
!57 = !{!"bool", !37, i64 0}
!58 = !{!"_ZTSN5Ipopt23AlgorithmStrategyObjectE", !41, i64 0, !50, i64 16, !52, i64 24, !54, i64 32, !56, i64 40, !57, i64 48}
!59 = !{!"_ZTSN5Ipopt14HessianUpdaterE", !58, i64 0}
!60 = !{!"_ZTSN5Ipopt24LimMemQuasiNewtonUpdater12LMUpdateTypeE", !37, i64 0}
!61 = !{!"_ZTSN5Ipopt24LimMemQuasiNewtonUpdater16LMInitializationE", !37, i64 0}
!62 = !{!"double", !37, i64 0}
!63 = !{!"p1 _ZTSN5Ipopt6VectorE", !45, i64 0}
!64 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_6VectorEEE", !63, i64 0}
!65 = !{!"p1 _ZTSN5Ipopt17MultiVectorMatrixE", !45, i64 0}
!66 = !{!"_ZTSN5Ipopt8SmartPtrINS_17MultiVectorMatrixEEE", !65, i64 0}
!67 = !{!"p1 _ZTSN5Ipopt11DenseVectorE", !45, i64 0}
!68 = !{!"_ZTSN5Ipopt8SmartPtrINS_11DenseVectorEEE", !67, i64 0}
!69 = !{!"p1 _ZTSN5Ipopt14DenseGenMatrixE", !45, i64 0}
!70 = !{!"_ZTSN5Ipopt8SmartPtrINS_14DenseGenMatrixEEE", !69, i64 0}
!71 = !{!"_ZTSN5Ipopt8SmartPtrINS_6VectorEEE", !63, i64 0}
!72 = !{!"p1 _ZTSN5Ipopt14DenseSymMatrixE", !45, i64 0}
!73 = !{!"_ZTSN5Ipopt8SmartPtrINS_14DenseSymMatrixEEE", !72, i64 0}
!74 = !{!"p1 _ZTSN5Ipopt6MatrixE", !45, i64 0}
!75 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_6MatrixEEE", !74, i64 0}
!76 = !{!"_ZTSN5Ipopt24LimMemQuasiNewtonUpdaterE", !59, i64 0, !47, i64 56, !38, i64 64, !60, i64 68, !61, i64 72, !62, i64 80, !38, i64 88, !62, i64 96, !62, i64 104, !57, i64 112, !57, i64 113, !62, i64 120, !64, i64 128, !38, i64 136, !64, i64 144, !62, i64 152, !38, i64 160, !38, i64 164, !66, i64 168, !66, i64 176, !66, i64 184, !68, i64 192, !70, i64 200, !71, i64 208, !62, i64 216, !66, i64 224, !66, i64 232, !73, i64 240, !57, i64 248, !66, i64 256, !73, i64 264, !64, i64 272, !64, i64 280, !75, i64 288, !75, i64 296, !38, i64 304, !66, i64 312, !66, i64 320, !66, i64 328, !68, i64 336, !70, i64 344, !71, i64 352, !62, i64 360, !66, i64 368, !66, i64 376, !73, i64 384, !57, i64 392, !66, i64 400, !73, i64 408}
!77 = !{!76, !57, i64 113}
!78 = !{!64, !63, i64 0}
!79 = !{!"p1 omnipotent char", !45, i64 0}
!80 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !79, i64 0}
!81 = !{!80, !79, i64 0}
!82 = !{!"long", !37, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !80, i64 0, !82, i64 8, !37, i64 16}
!85 = !{!84, !79, i64 0}
!86 = !{!37, !37, i64 0}
!87 = !{!84, !82, i64 8}
!88 = !{!38, !38, i64 0}
!89 = !{!76, !60, i64 68}
!90 = !{!76, !61, i64 72}
!91 = !{!76, !38, i64 164}
!92 = !{!66, !65, i64 0}
!93 = !{!68, !67, i64 0}
!94 = !{!70, !69, i64 0}
!95 = !{!76, !62, i64 216}
!96 = !{!73, !72, i64 0}
!97 = !{!76, !57, i64 248}
!98 = !{!76, !38, i64 136}
!99 = !{!75, !74, i64 0}
!100 = !{!76, !38, i64 160}
!101 = !{!76, !62, i64 120}
!102 = !{i8 0, i8 2}
!103 = !{}
!104 = !{!52, !51, i64 0}
!105 = !{!"p1 _ZTSN5Ipopt14SymMatrixSpaceE", !45, i64 0}
!106 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_14SymMatrixSpaceEEE", !105, i64 0}
!107 = !{!106, !105, i64 0}
!108 = !{!"p1 _ZTSN5Ipopt11MatrixSpaceE", !45, i64 0}
!109 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEE", !108, i64 0}
!110 = !{!109, !108, i64 0}
!111 = !{!"p1 _ZTSN5Ipopt11VectorSpaceE", !45, i64 0}
!112 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_11VectorSpaceEEE", !111, i64 0}
!113 = !{!112, !111, i64 0}
!114 = !{!"any p2 pointer", !45, i64 0}
!115 = !{!"p2 _ZTSN5Ipopt8ObserverE", !114, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIPN5Ipopt8ObserverESaIS2_EE", !118, i64 0}
!120 = !{!"_ZTSN5Ipopt7SubjectE", !119, i64 8}
!121 = !{!"_ZTSN5Ipopt12TaggedObjectE", !41, i64 0, !120, i64 16, !38, i64 48, !38, i64 52}
!122 = !{!121, !38, i64 48}
!123 = !{!54, !53, i64 0}
!124 = !{!"p1 _ZTSN5Ipopt9SymMatrixE", !45, i64 0}
!125 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_9SymMatrixEEE", !124, i64 0}
!126 = !{!76, !62, i64 152}
!127 = !{!50, !49, i64 0}
!128 = !{!"p1 _ZTSN5Ipopt8SmartPtrINS_6VectorEEE", !45, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!129, !128, i64 0}
!131 = !{!71, !63, i64 0}
!132 = !{!"p1 _ZTSN5Ipopt8SmartPtrIKNS_6VectorEEE", !45, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!134 = !{!133, !132, i64 0}
!135 = !{!56, !55, i64 0}
!136 = !{!76, !57, i64 112}
!137 = !{!"p1 _ZTSNSt7__cxx114listIPN5Ipopt15DependentResultIdEESaIS4_EEE", !45, i64 0}
!138 = !{!"_ZTSN5Ipopt13CachedResultsIdEE", !38, i64 8, !137, i64 16}
!139 = !{!"_ZTSN5Ipopt6VectorE", !121, i64 0, !112, i64 56, !138, i64 64, !38, i64 88, !62, i64 96, !38, i64 104, !62, i64 112, !38, i64 120, !62, i64 128, !38, i64 136, !62, i64 144, !38, i64 152, !62, i64 160, !38, i64 168, !62, i64 176, !38, i64 184, !62, i64 192, !38, i64 200, !57, i64 204}
!140 = !{!139, !38, i64 120}
!141 = !{!139, !62, i64 128}
!142 = !{!139, !38, i64 152}
!143 = !{!139, !62, i64 160}
!144 = !{!139, !38, i64 88}
!145 = !{!139, !62, i64 96}
!146 = !{!76, !38, i64 64}
!147 = !{!62, !62, i64 0}
!148 = !{!"_ZTSN5Ipopt6MatrixE", !121, i64 0, !109, i64 56, !38, i64 64, !57, i64 68}
!149 = !{!"p1 _ZTSN5Ipopt19DenseGenMatrixSpaceE", !45, i64 0}
!150 = !{!"p1 double", !45, i64 0}
!151 = !{!"_ZTSN5Ipopt14DenseGenMatrix13FactorizationE", !37, i64 0}
!152 = !{!"p1 int", !45, i64 0}
!153 = !{!"_ZTSN5Ipopt14DenseGenMatrixE", !148, i64 0, !149, i64 72, !150, i64 80, !57, i64 88, !151, i64 92, !152, i64 96}
!154 = !{!153, !149, i64 72}
!155 = !{!"p1 _ZTSN5Ipopt16DenseVectorSpaceE", !45, i64 0}
!156 = !{!"_ZTSN5Ipopt11DenseVectorE", !139, i64 0, !155, i64 208, !150, i64 216, !150, i64 224, !57, i64 232, !57, i64 233, !62, i64 240}
!157 = !{!156, !155, i64 208}
!158 = !{!"_ZTSN5Ipopt11MatrixSpaceE", !41, i64 0, !38, i64 12, !38, i64 16}
!159 = !{!158, !38, i64 16}
!160 = !{ptr @_ZNK5Ipopt6Vector3DotERKS0_}
!161 = !{!76, !38, i64 304}
!162 = !{!76, !57, i64 392}
!163 = !{!76, !62, i64 360}
!164 = !{!139, !38, i64 104}
!165 = !{!139, !62, i64 112}
!166 = !{!139, !38, i64 136}
!167 = !{!139, !62, i64 144}
end_hunk_1
