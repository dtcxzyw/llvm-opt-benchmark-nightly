Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyMLCPConstraintSolver?download=true
inline.NumInlined: 604
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastMultiBodyERK19btContactSolverInfo:bb.a

vector.body295:                                   ; preds = %vector.body295, %vector.ph293
  %index296 = phi i64 [ 0, %vector.ph293 ], [ %index.next299, %vector.body295 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index296 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index296 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load297 = load <4 x float>, ptr %i.eo, align 4, !tbaa !25
  %wide.load298 = load <4 x float>, ptr %i.ep, align 4, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x float> %wide.load297, ptr %i.en, align 4, !tbaa !25
  store <4 x float> %wide.load298, ptr %i.eq, align 4, !tbaa !25
  %index.next299 = add nuw i64 %index296, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next299, %n.vec294
  br i1 %i.er, label %middle.block300, label %vector.body295, !llvm.loop !222

middle.block300:                                  ; preds = %vector.body295
  %cmp.n301 = icmp eq i64 %n.vec294, %wide.trip.count.i.i.i.i125
  br i1 %cmp.n301, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph291.preheader

scalar.ph291.preheader:                           ; preds = %.lr.ph.i.i.i.i124, %middle.block300
  %indvars.iv.i.i.i.i126.ph = phi i64 [ 0, %.lr.ph.i.i.i.i124 ], [ %n.vec294, %middle.block300 ] ; 3 uses
  %xtraiter331 = and i64 %wide.trip.count.i.i.i.i125, 3 ; 2 uses
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %scalar.ph291.prol.loopexit, label %scalar.ph291.prol

scalar.ph291.prol:                                ; preds = %scalar.ph291.preheader, %scalar.ph291.prol
  %indvars.iv.i.i.i.i126.prol = phi i64 [ %indvars.iv.next.i.i.i.i127.prol, %scalar.ph291.prol ], [ %indvars.iv.i.i.i.i126.ph, %scalar.ph291.preheader ] ; 3 uses
  %prol.iter333 = phi i64 [ %prol.iter333.next, %scalar.ph291.prol ], [ 0, %scalar.ph291.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i.i126.prol
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i.i126.prol
  %i.eu = load float, ptr %i.et, align 4, !tbaa !25
  store float %i.eu, ptr %i.es, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.i127.prol = add nuw nsw i64 %indvars.iv.i.i.i.i126.prol, 1 ; 2 uses
  %prol.iter333.next = add i64 %prol.iter333, 1   ; 2 uses
  %prol.iter333.cmp.not = icmp eq i64 %prol.iter333.next, %xtraiter331
  br i1 %prol.iter333.cmp.not, label %scalar.ph291.prol.loopexit, label %scalar.ph291.prol, !llvm.loop !223

scalar.ph291.prol.loopexit:                       ; preds = %scalar.ph291.prol, %scalar.ph291.preheader
  %indvars.iv.i.i.i.i126.unr = phi i64 [ %indvars.iv.i.i.i.i126.ph, %scalar.ph291.preheader ], [ %indvars.iv.next.i.i.i.i127.prol, %scalar.ph291.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i.i.i.i126.ph, %wide.trip.count.i.i.i.i125
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph291

scalar.ph291:                                     ; preds = %scalar.ph291.prol.loopexit, %scalar.ph291
  %indvars.iv.i.i.i.i126 = phi i64 [ %indvars.iv.next.i.i.i.i127.3, %scalar.ph291 ], [ %indvars.iv.i.i.i.i126.unr, %scalar.ph291.prol.loopexit ] ; 6 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i.i126
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i.i126
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !25
  store float %i.ez, ptr %i.ex, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.i127 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !25
  store float %i.fc, ptr %i.fa, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.i127.1 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127.1
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127.1
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !25
  store float %i.ff, ptr %i.fd, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.i127.2 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 3 ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next.i.i.i.i127.2
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next.i.i.i.i127.2
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !25
  store float %i.fi, ptr %i.fg, align 4, !tbaa !25
  %indvars.iv.next.i.i.i.i127.3 = add nuw nsw i64 %indvars.iv.i.i.i.i126, 4 ; 2 uses
  %exitcond.not.i.i.i.i128.3 = icmp eq i64 %indvars.iv.next.i.i.i.i127.3, %wide.trip.count.i.i.i.i125
  br i1 %exitcond.not.i.i.i.i128.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, label %scalar.ph291, !llvm.loop !224

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i.i118
  %.not.i5.i.i.i121 = icmp eq ptr %i.ej, null
  br i1 %.not.i5.i.i.i121, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122: ; preds = %scalar.ph291.prol.loopexit, %scalar.ph291, %middle.block300, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.fk = load i8, ptr %i.fj, align 8, !tbaa !30, !range !31, !noundef !32
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.s, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123

bb.s:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ej)
          to label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123 unwind label %bb.t

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123: ; preds = %bb.s, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i.i122, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i.i120
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store i8 1, ptr %i.fm, align 8, !tbaa !30
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !23
  store i32 %i.b, ptr %i.ed, align 8, !tbaa !22
  br label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123, %..lr.ph.i_crit_edge.i110
  %i.fn = phi ptr [ %.pre.i112, %..lr.ph.i_crit_edge.i110 ], [ %i.eg, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i.i123 ]
  %i.fo = sext i32 %i.eb to i64                   ; 2 uses
  %i.fp = shl nsw i64 %i.fo, 2
  %scevgep.i115 = getelementptr i8, ptr %i.fn, i64 %i.fp
  %i.fq = sub nsw i64 %.pre-phi, %i.fo
  %i.fr = shl nuw nsw i64 %i.fq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i115, i8 0, i64 %i.fr, i1 false), !tbaa !25
  br label %_ZN9btVectorXIfE6resizeEi.exit131

_ZN9btVectorXIfE6resizeEi.exit131:                ; preds = %bb.p, %.lr.ph.i.i113
  store i32 %i.b, ptr %i.ea, align 4, !tbaa !21
  br i1 %i.az, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %_ZN9btVectorXIfE6resizeEi.exit131
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !92 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !23 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !23 ; 3 uses
  %wide.trip.count207 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter335 = and i64 %wide.trip.count207, 1
  %i.fy = icmp eq i32 %i.b, 1
  br i1 %i.fy, label %.epil.preheader334, label %.lr.ph178.new

.lr.ph178.new:                                    ; preds = %.lr.ph178
  %unroll_iter338 = and i64 %wide.trip.count207, 2147483646
  br label %bb.u

._crit_edge179.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %._crit_edge179, label %.epil.preheader334

.epil.preheader334:                               ; preds = %._crit_edge179.loopexit.unr-lcssa, %.lr.ph178
  %indvars.iv204.epil.init = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next205.1, %._crit_edge179.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod337 = trunc i32 %i.b to i1
  call void @llvm.assume(i1 %lcmp.mod337)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv204.epil.init
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !94 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 136
  %i.gc = load float, ptr %i.gb, align 8, !tbaa !243
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv204.epil.init
  store float %i.gc, ptr %i.gd, align 4, !tbaa !25
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 140
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !244
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv204.epil.init
  store float %i.gf, ptr %i.gg, align 4, !tbaa !25
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %.epil.preheader334, %._crit_edge179.loopexit.unr-lcssa, %_ZN9btVectorXIfE6resizeEi.exit131
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.8)
          to label %bb.v unwind label %bb.x

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.i, %bb.h
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.bs

bb.u:                                             ; preds = %bb.u, %.lr.ph178.new
  %indvars.iv204 = phi i64 [ 0, %.lr.ph178.new ], [ %indvars.iv.next205.1, %bb.u ] ; 5 uses
  %niter339 = phi i64 [ 0, %.lr.ph178.new ], [ %niter339.next.1, %bb.u ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv204
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !94 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 136
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !243
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv204
  store float %i.gl, ptr %i.gm, align 4, !tbaa !25
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 140
  %i.go = load float, ptr %i.gn, align 4, !tbaa !244
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv204
  store float %i.go, ptr %i.gp, align 4, !tbaa !25
  %indvars.iv.next205 = or disjoint i64 %indvars.iv204, 1 ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.next205
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !94 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 136
  %i.gt = load float, ptr %i.gs, align 8, !tbaa !243
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next205
  store float %i.gt, ptr %i.gu, align 4, !tbaa !25
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 140
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !244
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next205
  store float %i.gw, ptr %i.gx, align 4, !tbaa !25
  %indvars.iv.next205.1 = add nuw nsw i64 %indvars.iv204, 2 ; 2 uses
  %niter339.next.1 = add i64 %niter339, 2         ; 2 uses
  %niter339.ncmp.1 = icmp eq i64 %niter339.next.1, %unroll_iter338
  br i1 %niter339.ncmp.1, label %._crit_edge179.loopexit.unr-lcssa, label %bb.u, !llvm.loop !225

bb.v:                                             ; preds = %._crit_edge179
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  invoke void @_ZN9btMatrixXIfE6resizeEii(ptr noundef nonnull align 8 dereferenceable(88) %i.gy, i32 noundef %i.b, i32 noundef %i.b)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.az, label %.lr.ph186, label %._crit_edge187.a

.lr.ph186:                                        ; preds = %bb.w
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !92 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !67
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !23 ; 3 uses
  %i.hj = sext i32 %i.hg to i64                   ; 2 uses
  %i.hk = shl nuw i32 %i.b, 1
  %wide.trip.count221 = zext nneg i32 %i.b to i64 ; 2 uses
  br label %bb.aa

..loopexit169_crit_edge:                          ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i
  %i.hl = add i32 %i.mx, %indvars.iv213
  store i32 %i.hl, ptr %i.he, align 8, !tbaa !68
  br label %.loopexit169

.loopexit169:                                     ; preds = %..loopexit169_crit_edge, %.loopexit170
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge187.a, label %bb.aa, !llvm.loop !226

._crit_edge187.a:                                 ; preds = %.loopexit169, %bb.w
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.hm = load i32, ptr %i.gy, align 8, !tbaa !81 ; 5 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph190, label %bb.bi

.lr.ph190:                                        ; preds = %._crit_edge187.a
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !67
  %i.hq = add i32 %i.hp, 1                        ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !23 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %.promoted192 = load i32, ptr %i.hv, align 8, !tbaa !68
  %wide.trip.count226 = zext nneg i32 %i.hm to i64 ; 2 uses
  %xtraiter382 = and i64 %wide.trip.count226, 1
  %i.hw = icmp eq i32 %i.hm, 1
  br i1 %i.hw, label %.epil.preheader381, label %.lr.ph190.new

.lr.ph190.new:                                    ; preds = %.lr.ph190
  %unroll_iter386 = and i64 %wide.trip.count226, 2147483646
  br label %bb.bm

bb.x:                                             ; preds = %._crit_edge179
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.hy, %bb.y ], [ %i.hx, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.bs

bb.aa:                                            ; preds = %.lr.ph186, %.loopexit169
  %indvars.iv218 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next219, %.loopexit169 ] ; 5 uses
  %indvars.iv213.in = phi i32 [ %i.hk, %.lr.ph186 ], [ %indvars.iv213, %.loopexit169 ]
  %indvars.iv209 = phi i64 [ 1, %.lr.ph186 ], [ %indvars.iv.next210, %.loopexit169 ] ; 2 uses
  %indvars.iv213 = add i32 %indvars.iv213.in, -2  ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv218
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !94 ; 34 uses
  %.val = load ptr, ptr %i.hb, align 8            ; 2 uses
  %.val82 = load ptr, ptr %i.hc, align 8          ; 2 uses
  %.val83 = load ptr, ptr %i.hd, align 8          ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 176
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !98 ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 192
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !99 ; 5 uses
  %.not.i132 = icmp eq ptr %i.ic, null
  br i1 %.not.i132, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !100
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %.val82, i64 %i.ih ; 5 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %.val83, i64 %i.ih ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 628
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !115 ; 3 uses
  %i.im = icmp sgt i32 %i.il, -6
  br i1 %i.im, label %.lr.ph.preheader.i.i, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ab
  %i.in = add nsw i32 %i.il, 6
  %wide.trip.count.i.i133 = zext nneg i32 %i.in to i64 ; 2 uses
  %xtraiter340 = and i64 %wide.trip.count.i.i133, 3 ; 3 uses
  %i.io = add i32 %i.il, 5
  %i.ip = icmp ult i32 %i.io, 3
  br i1 %i.ip, label %.lr.ph.i.i134.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter344 = and i64 %wide.trip.count.i.i133, 2147483644
  br label %.lr.ph.i.i134

.lr.ph.i.i134:                                    ; preds = %.lr.ph.i.i134, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i134 ] ; 6 uses
  %.089.i.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i.new ], [ %i.jj, %.lr.ph.i.i134 ]
  %niter345 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter345.next.3, %.lr.ph.i.i134 ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.i.i
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !25
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !25
  %i.iu = call float @llvm.fmuladd.f32(float %i.ir, float %i.it, float %.089.i.i)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next.i.i
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !25
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !25
  %i.iz = call float @llvm.fmuladd.f32(float %i.iw, float %i.iy, float %i.iu)
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next.i.i.1
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !25
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i.1
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !25
  %i.je = call float @llvm.fmuladd.f32(float %i.jb, float %i.jd, float %i.iz)
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.next.i.i.2
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !25
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.next.i.i.2
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !25
  %i.jj = call float @llvm.fmuladd.f32(float %i.jg, float %i.ji, float %i.je) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter345.next.3 = add i64 %niter345, 4         ; 2 uses
  %niter345.ncmp.3 = icmp eq i64 %niter345.next.3, %unroll_iter344
  br i1 %niter345.ncmp.3, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i134, !llvm.loop !227

bb.ac:                                            ; preds = %bb.aa
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ia, i64 168
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !116
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [248 x i8], ptr %.val, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 240
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !56 ; 2 uses
  %.not44.i = icmp eq ptr %i.jp, null
  br i1 %.not44.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 452
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !80
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.js = phi float [ %i.jr, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ia, i64 80
  %i.jv = load float, ptr %i.jt, align 8, !tbaa !25
  %i.jw = load float, ptr %i.ju, align 8, !tbaa !25
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ia, i64 20
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !25
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ia, i64 84
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !25
  %i.kb = fmul float %i.jy, %i.ka
  %i.kc = call float @llvm.fmuladd.f32(float %i.jv, float %i.jw, float %i.kb)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !25
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  %i.kg = load float, ptr %i.kf, align 8, !tbaa !25
  %i.kh = call noundef float @llvm.fmuladd.f32(float %i.ke, float %i.kg, float %i.kc)
  %i.ki = fadd float %i.js, %i.kh
  br label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i134
  %lcmp.mod341.not = icmp eq i64 %xtraiter340, 0
  br i1 %lcmp.mod341.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i, label %.lr.ph.i.i134.epil.preheader

.lr.ph.i.i134.epil.preheader:                     ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa ]
  %.089.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.jj, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod343 = icmp ne i64 %xtraiter340, 0
  call void @llvm.assume(i1 %lcmp.mod343)
  br label %.lr.ph.i.i134.epil

.lr.ph.i.i134.epil:                               ; preds = %.lr.ph.i.i134.epil, %.lr.ph.i.i134.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i134.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i134.epil ] ; 3 uses
  %.089.i.i.epil = phi float [ %.089.i.i.epil.init, %.lr.ph.i.i134.epil.preheader ], [ %i.kn, %.lr.ph.i.i134.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i134.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i134.epil ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.i.i.epil
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !25
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i.i.epil
  %i.km = load float, ptr %i.kl, align 4, !tbaa !25
  %i.kn = call float @llvm.fmuladd.f32(float %i.kk, float %i.km, float %.089.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter340
  br i1 %epil.iter.cmp.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i, label %.lr.ph.i.i134.epil, !llvm.loop !228

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i: ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i134.epil, %bb.ae, %bb.ab
  %.0.in.i = phi float [ %i.ki, %bb.ae ], [ 0.000000e+00, %bb.ab ], [ %i.jj, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i.loopexit.unr-lcssa ], [ %i.kn, %.lr.ph.i.i134.epil ]
  %.not45.i = icmp eq ptr %i.ie, null
  br i1 %.not45.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !117
  %i.kq = sext i32 %i.kp to i64                   ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %.val82, i64 %i.kq ; 5 uses
  %i.ks = getelementptr inbounds [4 x i8], ptr %.val83, i64 %i.kq ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ie, i64 628
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !115 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, -6
  br i1 %i.kv, label %.lr.ph.preheader.i48.i, label %.loopexit170

.lr.ph.preheader.i48.i:                           ; preds = %bb.af
  %i.kw = add nsw i32 %i.ku, 6
  %wide.trip.count.i49.i = zext nneg i32 %i.kw to i64 ; 2 uses
  %xtraiter346 = and i64 %wide.trip.count.i49.i, 3 ; 3 uses
  %i.kx = add i32 %i.ku, 5
  %i.ky = icmp ult i32 %i.kx, 3
  br i1 %i.ky, label %.lr.ph.i50.i.epil.preheader, label %.lr.ph.preheader.i48.i.new

.lr.ph.preheader.i48.i.new:                       ; preds = %.lr.ph.preheader.i48.i
  %unroll_iter351 = and i64 %wide.trip.count.i49.i, 2147483644
  br label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %.lr.ph.i50.i, %.lr.ph.preheader.i48.i.new
  %indvars.iv.i51.i = phi i64 [ 0, %.lr.ph.preheader.i48.i.new ], [ %indvars.iv.next.i53.i.3, %.lr.ph.i50.i ] ; 6 uses
  %.089.i52.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i48.i.new ], [ %i.ls, %.lr.ph.i50.i ]
  %niter352 = phi i64 [ 0, %.lr.ph.preheader.i48.i.new ], [ %niter352.next.3, %.lr.ph.i50.i ]
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i51.i
  %i.la = load float, ptr %i.kz, align 4, !tbaa !25
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.i51.i
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !25
  %i.ld = call float @llvm.fmuladd.f32(float %i.la, float %i.lc, float %.089.i52.i)
  %indvars.iv.next.i53.i = or disjoint i64 %indvars.iv.i51.i, 1 ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i53.i
  %i.lf = load float, ptr %i.le, align 4, !tbaa !25
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next.i53.i
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !25
  %i.li = call float @llvm.fmuladd.f32(float %i.lf, float %i.lh, float %i.ld)
  %indvars.iv.next.i53.i.1 = or disjoint i64 %indvars.iv.i51.i, 2 ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i53.i.1
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !25
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next.i53.i.1
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !25
  %i.ln = call float @llvm.fmuladd.f32(float %i.lk, float %i.lm, float %i.li)
  %indvars.iv.next.i53.i.2 = or disjoint i64 %indvars.iv.i51.i, 3 ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i53.i.2
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !25
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next.i53.i.2
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !25
  %i.ls = call float @llvm.fmuladd.f32(float %i.lp, float %i.lr, float %i.ln) ; 3 uses
  %indvars.iv.next.i53.i.3 = add nuw nsw i64 %indvars.iv.i51.i, 4 ; 2 uses
  %niter352.next.3 = add i64 %niter352, 4         ; 2 uses
  %niter352.ncmp.3 = icmp eq i64 %niter352.next.3, %unroll_iter351
  br i1 %niter352.ncmp.3, label %.loopexit170.loopexit.unr-lcssa, label %.lr.ph.i50.i, !llvm.loop !227

bb.ag:                                            ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ia, i64 188
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !118
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [248 x i8], ptr %.val, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 240
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !56 ; 2 uses
  %.not46.i = icmp eq ptr %i.ly, null
  br i1 %.not46.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 452
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !80
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.mb = phi float [ %i.ma, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.md = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  %i.me = load float, ptr %i.mc, align 8, !tbaa !25
  %i.mf = load float, ptr %i.md, align 8, !tbaa !25
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ia, i64 52
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !25
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ia, i64 100
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !25
  %i.mk = fmul float %i.mh, %i.mj
  %i.ml = call float @llvm.fmuladd.f32(float %i.me, float %i.mf, float %i.mk)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.mn = load float, ptr %i.mm, align 8, !tbaa !25
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.mp = load float, ptr %i.mo, align 8, !tbaa !25
  %i.mq = call noundef float @llvm.fmuladd.f32(float %i.mn, float %i.mp, float %i.ml)
  %i.mr = fadd float %i.mb, %i.mq
  br label %.loopexit170

.loopexit170.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i50.i
  %lcmp.mod348.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod348.not, label %.loopexit170, label %.lr.ph.i50.i.epil.preheader

.lr.ph.i50.i.epil.preheader:                      ; preds = %.loopexit170.loopexit.unr-lcssa, %.lr.ph.preheader.i48.i
  %indvars.iv.i51.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i48.i ], [ %indvars.iv.next.i53.i.3, %.loopexit170.loopexit.unr-lcssa ]
  %.089.i52.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i48.i ], [ %i.ls, %.loopexit170.loopexit.unr-lcssa ]
  %lcmp.mod350 = icmp ne i64 %xtraiter346, 0
  call void @llvm.assume(i1 %lcmp.mod350)
  br label %.lr.ph.i50.i.epil

.lr.ph.i50.i.epil:                                ; preds = %.lr.ph.i50.i.epil, %.lr.ph.i50.i.epil.preheader
  %indvars.iv.i51.i.epil = phi i64 [ %indvars.iv.i51.i.epil.init, %.lr.ph.i50.i.epil.preheader ], [ %indvars.iv.next.i53.i.epil, %.lr.ph.i50.i.epil ] ; 3 uses
  %.089.i52.i.epil = phi float [ %.089.i52.i.epil.init, %.lr.ph.i50.i.epil.preheader ], [ %i.mw, %.lr.ph.i50.i.epil ]
  %epil.iter347 = phi i64 [ 0, %.lr.ph.i50.i.epil.preheader ], [ %epil.iter347.next, %.lr.ph.i50.i.epil ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i51.i.epil
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !25
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.i51.i.epil
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !25
  %i.mw = call float @llvm.fmuladd.f32(float %i.mt, float %i.mv, float %.089.i52.i.epil) ; 2 uses
  %indvars.iv.next.i53.i.epil = add nuw nsw i64 %indvars.iv.i51.i.epil, 1
  %epil.iter347.next = add i64 %epil.iter347, 1   ; 2 uses
  %epil.iter347.cmp.not = icmp eq i64 %epil.iter347.next, %xtraiter346
  br i1 %epil.iter347.cmp.not, label %.loopexit170, label %.lr.ph.i50.i.epil, !llvm.loop !229

.loopexit170:                                     ; preds = %.loopexit170.loopexit.unr-lcssa, %.lr.ph.i50.i.epil, %bb.af, %bb.ai
  %.pn.i = phi float [ %i.mr, %bb.ai ], [ 0.000000e+00, %bb.af ], [ %i.ls, %.loopexit170.loopexit.unr-lcssa ], [ %i.mw, %.lr.ph.i50.i.epil ]
  %.0.i = fadd float %.0.in.i, 0.000000e+00
  %.1.i = fadd float %.0.i, %.pn.i
  %7 = load i32, ptr %i.he, align 8, !tbaa !68
  %i.mx = add nsw i32 %7, 1                       ; 2 uses
  store i32 %i.mx, ptr %i.he, align 8, !tbaa !68
  %i.my = mul nsw i64 %indvars.iv218, %i.hj       ; 2 uses
  %i.mz = getelementptr [4 x i8], ptr %i.hi, i64 %i.my
  %i.na = getelementptr [4 x i8], ptr %i.mz, i64 %indvars.iv218
  store float %.1.i, ptr %i.na, align 4, !tbaa !25
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 3 uses
  %i.nb = icmp slt i64 %indvars.iv.next219, %.pre-phi
  br i1 %i.nb, label %.lr.ph182, label %.loopexit169

.lr.ph182:                                        ; preds = %.loopexit170
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ie, i64 628 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ia, i64 12 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ic, i64 628 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ia, i64 168 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ia, i64 188 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ia, i64 96 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ia, i64 64 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ia, i64 100 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ia, i64 104 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ia, i64 68 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ia, i64 72 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ia, i64 80 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ia, i64 32 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ia, i64 84 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ia, i64 88 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ia, i64 36 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ia, i64 40 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.hi, i64 %i.my
  %invariant.gep267 = getelementptr [4 x i8], ptr %i.hi, i64 %indvars.iv218
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph182, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i
  %indvars.iv211 = phi i64 [ %indvars.iv209, %.lr.ph182 ], [ %indvars.iv.next212, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit138.i ] ; 4 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv211
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !94 ; 30 uses
  %.val84 = load ptr, ptr %i.hb, align 8          ; 4 uses
  %.val85 = load ptr, ptr %i.hc, align 8          ; 2 uses
  %.val86 = load ptr, ptr %i.hd, align 8          ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 176
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !98 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 192
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !99 ; 3 uses
  %.not.i135 = icmp eq ptr %i.nx, null
  br i1 %.not.i135, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !100
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %.val85, i64 %i.oc ; 10 uses
  %i.oe = icmp eq ptr %i.nx, %i.ic
  br i1 %i.oe, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.of = load i32, ptr %i.ne, align 4, !tbaa !115 ; 3 uses
  %i.og = load i32, ptr %i.nf, align 4, !tbaa !100
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %.val86, i64 %i.oh ; 5 uses
  %i.oj = icmp sgt i32 %i.of, -6
  br i1 %i.oj, label %.lr.ph.preheader.i.i137, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i136

.lr.ph.preheader.i.i137:                          ; preds = %bb.al
  %i.ok = add nsw i32 %i.of, 6
  %wide.trip.count.i.i138 = zext nneg i32 %i.ok to i64 ; 2 uses
  %xtraiter360 = and i64 %wide.trip.count.i.i138, 3 ; 3 uses
  %i.ol = add i32 %i.of, 5
  %i.om = icmp ult i32 %i.ol, 3
  br i1 %i.om, label %.lr.ph.i.i139.epil.preheader, label %.lr.ph.preheader.i.i137.new

.lr.ph.preheader.i.i137.new:                      ; preds = %.lr.ph.preheader.i.i137
  %unroll_iter365 = and i64 %wide.trip.count.i.i138, 2147483644
  br label %.lr.ph.i.i139

.lr.ph.i.i139:                                    ; preds = %.lr.ph.i.i139, %.lr.ph.preheader.i.i137.new
  %indvars.iv.i.i140 = phi i64 [ 0, %.lr.ph.preheader.i.i137.new ], [ %indvars.iv.next.i.i142.3, %.lr.ph.i.i139 ] ; 6 uses
  %.089.i.i141 = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i137.new ], [ %i.pg, %.lr.ph.i.i139 ]
  %niter366 = phi i64 [ 0, %.lr.ph.preheader.i.i137.new ], [ %niter366.next.3, %.lr.ph.i.i139 ]
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.i.i140
  %i.oo = load float, ptr %i.on, align 4, !tbaa !25
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.i.i140
  %i.oq = load float, ptr %i.op, align 4, !tbaa !25
  %i.or = call float @llvm.fmuladd.f32(float %i.oo, float %i.oq, float %.089.i.i141)
  %indvars.iv.next.i.i142 = or disjoint i64 %indvars.iv.i.i140, 1 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i142
  %i.ot = load float, ptr %i.os, align 4, !tbaa !25
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i.i142
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !25
  %i.ow = call float @llvm.fmuladd.f32(float %i.ot, float %i.ov, float %i.or)
  %indvars.iv.next.i.i142.1 = or disjoint i64 %indvars.iv.i.i140, 2 ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i142.1
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !25
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i.i142.1
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !25
  %i.pb = call float @llvm.fmuladd.f32(float %i.oy, float %i.pa, float %i.ow)
  %indvars.iv.next.i.i142.2 = or disjoint i64 %indvars.iv.i.i140, 3 ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.next.i.i142.2
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !25
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i.i142.2
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !25
  %i.pg = call float @llvm.fmuladd.f32(float %i.pd, float %i.pf, float %i.pb) ; 3 uses
  %indvars.iv.next.i.i142.3 = add nuw nsw i64 %indvars.iv.i.i140, 4 ; 2 uses
  %niter366.next.3 = add i64 %niter366, 4         ; 2 uses
  %niter366.ncmp.3 = icmp eq i64 %niter366.next.3, %unroll_iter365
  br i1 %niter366.ncmp.3, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i139, !llvm.loop !227

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i139
  %lcmp.mod362.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod362.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i, label %.lr.ph.i.i139.epil.preheader

.lr.ph.i.i139.epil.preheader:                     ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i137
  %indvars.iv.i.i140.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i137 ], [ %indvars.iv.next.i.i142.3, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa ]
  %.089.i.i141.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i.i137 ], [ %i.pg, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod364 = icmp ne i64 %xtraiter360, 0
  call void @llvm.assume(i1 %lcmp.mod364)
  br label %.lr.ph.i.i139.epil

.lr.ph.i.i139.epil:                               ; preds = %.lr.ph.i.i139.epil, %.lr.ph.i.i139.epil.preheader
  %indvars.iv.i.i140.epil = phi i64 [ %indvars.iv.i.i140.epil.init, %.lr.ph.i.i139.epil.preheader ], [ %indvars.iv.next.i.i142.epil, %.lr.ph.i.i139.epil ] ; 3 uses
  %.089.i.i141.epil = phi float [ %.089.i.i141.epil.init, %.lr.ph.i.i139.epil.preheader ], [ %i.pl, %.lr.ph.i.i139.epil ]
  %epil.iter361 = phi i64 [ 0, %.lr.ph.i.i139.epil.preheader ], [ %epil.iter361.next, %.lr.ph.i.i139.epil ]
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv.i.i140.epil
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !25
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.i.i140.epil
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !25
  %i.pl = call float @llvm.fmuladd.f32(float %i.pi, float %i.pk, float %.089.i.i141.epil) ; 2 uses
  %indvars.iv.next.i.i142.epil = add nuw nsw i64 %indvars.iv.i.i140.epil, 1
  %epil.iter361.next = add i64 %epil.iter361, 1   ; 2 uses
  %epil.iter361.cmp.not = icmp eq i64 %epil.iter361.next, %xtraiter360
  br i1 %epil.iter361.cmp.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i, label %.lr.ph.i.i139.epil, !llvm.loop !230

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i: ; preds = %.lr.ph.i.i139.epil, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa
  %.lcssa322 = phi float [ %i.pg, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.loopexit.i.unr-lcssa ], [ %i.pl, %.lr.ph.i.i139.epil ]
  %i.pm = fadd float %.lcssa322, 0.000000e+00
  br label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i136

bb.am:                                            ; preds = %bb.ak
  %i.pn = icmp eq ptr %i.nx, %i.ie
  br i1 %i.pn, label %bb.an, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i136

bb.an:                                            ; preds = %bb.am
  %i.po = load i32, ptr %i.nc, align 4, !tbaa !115 ; 3 uses
  %i.pp = load i32, ptr %i.nd, align 4, !tbaa !117
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %.val86, i64 %i.pq ; 5 uses
  %i.ps = icmp sgt i32 %i.po, -6
  br i1 %i.ps, label %.lr.ph.preheader.i122.i, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit.i136

.lr.ph.preheader.i122.i:                          ; preds = %bb.an
  %i.pt = add nsw i32 %i.po, 6
  %wide.trip.count.i123.i = zext nneg i32 %i.pt to i64 ; 2 uses
  %xtraiter353 = and i64 %wide.trip.count.i123.i, 3 ; 3 uses
  %i.pu = add i32 %i.po, 5
  %i.pv = icmp ult i32 %i.pu, 3
  br i1 %i.pv, label %.lr.ph.i124.i.epil.preheader, label %.lr.ph.preheader.i122.i.new

.lr.ph.preheader.i122.i.new:                      ; preds = %.lr.ph.preheader.i122.i
  %unroll_iter358 = and i64 %wide.trip.count.i123.i, 2147483644
  br label %.lr.ph.i124.i

.lr.ph.i124.i:                                    ; preds = %.lr.ph.i124.i, %.lr.ph.preheader.i122.i.new
  %indvars.iv.i125.i = phi i64 [ 0, %.lr.ph.preheader.i122.i.new ], [ %indvars.iv.next.i127.i.3, %.lr.ph.i124.i ] ; 6 uses
  %.089.i126.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i122.i.new ], [ %i.qp, %.lr.ph.i124.i ]
  %niter359 = phi i64 [ 0, %.lr.ph.preheader.i122.i.new ], [ %niter359.next.3, %.lr.ph.i124.i ]
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.i125.i
  %i.px = load float, ptr %i.pw, align 4, !tbaa !25
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.i125.i
  %i.pz = load float, ptr %i.py, align 4, !tbaa !25
  %i.qa = call float @llvm.fmuladd.f32(float %i.px, float %i.pz, float %.089.i126.i)
  %indvars.iv.next.i127.i = or disjoint i64 %indvars.iv.i125.i, 1 ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.i127.i
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !25
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i127.i
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !25
  %i.qf = call float @llvm.fmuladd.f32(float %i.qc, float %i.qe, float %i.qa)
  %indvars.iv.next.i127.i.1 = or disjoint i64 %indvars.iv.i125.i, 2 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.i127.i.1
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !25
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i127.i.1
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !25
  %i.qk = call float @llvm.fmuladd.f32(float %i.qh, float %i.qj, float %i.qf)
  %indvars.iv.next.i127.i.2 = or disjoint i64 %indvars.iv.i125.i, 3 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv.next.i127.i.2
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !25
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv.next.i127.i.2
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !25
  %i.qp = call float @llvm.fmuladd.f32(float %i.qm, float %i.qo, float %i.qk) ; 3 uses
  %indvars.iv.next.i127.i.3 = add nuw nsw i64 %indvars.iv.i125.i, 4 ; 2 uses
  %niter359.next.3 = add i64 %niter359, 4         ; 2 uses
  %niter359.ncmp.3 = icmp eq i64 %niter359.next.3, %unroll_iter358
  br i1 %niter359.ncmp.3, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa, label %.lr.ph.i124.i, !llvm.loop !227

_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i124.i
  %lcmp.mod355.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod355.not, label %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i, label %.lr.ph.i124.i.epil.preheader

.lr.ph.i124.i.epil.preheader:                     ; preds = %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa, %.lr.ph.preheader.i122.i
  %indvars.iv.i125.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i122.i ], [ %indvars.iv.next.i127.i.3, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa ]
  %.089.i126.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader.i122.i ], [ %i.qp, %_ZL37computeDeltaVelocityInConstraintSpacePKfS0_i.exit129.loopexit.i.unr-lcssa ]
  %lcmp.mod357 = icmp ne i64 %xtraiter353, 0
  call void @llvm.assume(i1 %lcmp.mod357)
end_hunk_0
