Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cvL3DFTIdEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit.thread804
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

bb.ay:                                            ; preds = %bb.av
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752: ; preds = %bb.ay
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !52
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752, %bb.ax
  %.pn705 = phi { ptr, i32 } [ %i.eu, %bb.ax ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752 ], [ %i.ev, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bx

bb.az:                                            ; preds = %bb.at
  %i.fb = zext nneg i32 %i.es to i64              ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv949, %i.fb
  br i1 %i.fc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv949 ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.fb ; 2 uses
  %i.ff = load <2 x double>, ptr %i.fd, align 8, !tbaa !113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.fe, i64 16, i1 false), !tbaa.struct !535
  store <2 x double> %i.ff, ptr %i.fe, align 8, !tbaa !113
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %indvars.iv.next950 = add nuw nsw i64 %indvars.iv949, 1 ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %.3831, i64 %i.dm
  %exitcond.not = icmp eq i64 %indvars.iv.next950, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit814, label %bb.at, !llvm.loop !513

.loopexit814:                                     ; preds = %bb.bb, %bb.as, %.preheader815, %bb.aj, %bb.ai, %bb.aa
  br i1 %i.i, label %.preheader813, label %bb.bd

.preheader813:                                    ; preds = %.loopexit814
  %.not709837 = icmp slt i32 %i.f, 2
  br i1 %.not709837, label %._crit_edge840, label %.lr.ph839.preheader

.lr.ph839.preheader:                              ; preds = %.preheader813
  %i.fh = add nsw i32 %i.f, -2
  %i.fi = lshr i32 %i.fh, 1                       ; 2 uses
  %narrow = add nuw i32 %i.fi, 1                  ; 2 uses
  %i.fj = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.fj, 1
  %i.fk = icmp eq i32 %i.fi, 0
  br i1 %i.fk, label %.lr.ph839.epil.preheader, label %.lr.ph839.preheader.new

.lr.ph839.preheader.new:                          ; preds = %.lr.ph839.preheader
  %unroll_iter = and i64 %i.fj, 4294967294
  br label %.lr.ph839

.lr.ph839:                                        ; preds = %.lr.ph839, %.lr.ph839.preheader.new
  %indvars.iv955 = phi i64 [ 0, %.lr.ph839.preheader.new ], [ %indvars.iv.next956.1, %.lr.ph839 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph839.preheader.new ], [ %niter.next.1, %.lr.ph839 ]
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv955 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !134
  %i.fo = fneg double %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !134
  %i.fr = fneg double %i.fq
  store double %i.fo, ptr %i.fm, align 8, !tbaa !134
  store double %i.fr, ptr %i.fp, align 8, !tbaa !134
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv955 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !134
  %i.fv = fneg double %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 56 ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !134
  %i.fy = fneg double %i.fx
  store double %i.fv, ptr %i.ft, align 8, !tbaa !134
  store double %i.fy, ptr %i.fw, align 8, !tbaa !134
  %indvars.iv.next956.1 = add nuw nsw i64 %indvars.iv955, 4 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge840.loopexit.unr-lcssa, label %.lr.ph839, !llvm.loop !514

._crit_edge840.loopexit.unr-lcssa:                ; preds = %.lr.ph839
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge840.loopexit, label %.lr.ph839.epil.preheader

.lr.ph839.epil.preheader:                         ; preds = %._crit_edge840.loopexit.unr-lcssa, %.lr.ph839.preheader
  %indvars.iv955.epil.init = phi i64 [ 0, %.lr.ph839.preheader ], [ %indvars.iv.next956.1, %._crit_edge840.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1513 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1513)
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv955.epil.init ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !134
  %i.gc = fneg double %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !134
  %i.gf = fneg double %i.ge
  store double %i.gc, ptr %i.ga, align 8, !tbaa !134
  store double %i.gf, ptr %i.gd, align 8, !tbaa !134
  %indvars.iv.next956.epil = add nuw nsw i64 %indvars.iv955.epil.init, 2
  br label %._crit_edge840.loopexit

._crit_edge840.loopexit:                          ; preds = %._crit_edge840.loopexit.unr-lcssa, %.lr.ph839.epil.preheader
  %indvars.iv.next956.lcssa = phi i64 [ %indvars.iv.next956.1, %._crit_edge840.loopexit.unr-lcssa ], [ %indvars.iv.next956.epil, %.lr.ph839.epil.preheader ]
  %i.gg = trunc nuw nsw i64 %indvars.iv.next956.lcssa to i32
  br label %._crit_edge840

._crit_edge840:                                   ; preds = %._crit_edge840.loopexit, %.preheader813
  %.4645.lcssa = phi i32 [ 0, %.preheader813 ], [ %i.gg, %._crit_edge840.loopexit ]
  %i.gh = icmp slt i32 %.4645.lcssa, %i.f
  br i1 %i.gh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge840
  %i.gi = zext nneg i32 %i.f to i64
  %i.gj = getelementptr [16 x i8], ptr %2, i64 %i.gi
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8     ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !134
  %i.gm = fneg double %i.gl
  store double %i.gm, ptr %i.gk, align 8, !tbaa !134
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit814, %bb.bc, %._crit_edge840, %bb.r, %._crit_edge, %bb.z, %._crit_edge828
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !145
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !42 ; 7 uses
  %i.gq = and i32 %i.gp, 1
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %.preheader812, label %.loopexit810

.preheader812:                                    ; preds = %bb.bd
  %.not714850 = icmp slt i32 %i.gp, 4
  br i1 %.not714850, label %.preheader809, label %.lr.ph853

.lr.ph853:                                        ; preds = %.preheader812
  %i.gs = load i32, ptr %i.e, align 4, !tbaa !140 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph849.us.preheader, label %.loopexit811

.lr.ph849.us.preheader:                           ; preds = %.lr.ph853
  %i.gu = zext nneg i32 %i.gs to i64              ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 16     ; 3 uses
  %scevgep1114 = getelementptr i8, ptr %2, i64 -8
  %i.gv = add nsw i64 %i.gu, -1
  %scevgep1116 = getelementptr i8, ptr %2, i64 16
  %scevgep1118 = getelementptr i8, ptr %2, i64 -8
  %scevgep1120 = getelementptr i8, ptr %2, i64 16
  %scevgep1122 = getelementptr i8, ptr %2, i64 -8
  %scevgep1124 = getelementptr i8, ptr %2, i64 16
  %scevgep1126 = getelementptr i8, ptr %2, i64 -8
  %scevgep1128 = getelementptr i8, ptr %i.b, i64 48 ; 4 uses
  %scevgep1129 = getelementptr i8, ptr %i.b, i64 -40
  %scevgep1131 = getelementptr i8, ptr %i.b, i64 16 ; 4 uses
  %scevgep1132 = getelementptr i8, ptr %i.b, i64 -8
  %scevgep1134 = getelementptr i8, ptr %i.b, i64 32 ; 4 uses
  %scevgep1135 = getelementptr i8, ptr %i.b, i64 -24
  %scevgep1137 = getelementptr i8, ptr %2, i64 24 ; 3 uses
  %scevgep1139 = getelementptr i8, ptr %2, i64 24
  %scevgep1142 = getelementptr i8, ptr %2, i64 24
  %scevgep1145 = getelementptr i8, ptr %2, i64 24
  %scevgep1148 = getelementptr i8, ptr %i.b, i64 56 ; 4 uses
  %scevgep1149 = getelementptr i8, ptr %i.b, i64 -32
  %scevgep1151 = getelementptr i8, ptr %i.b, i64 24 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.b, <2 x i64> <i64 24, i64 40> ; 2 uses
  %scevgep1153 = getelementptr i8, ptr %i.b, i64 40 ; 3 uses
  %scevgep1154 = getelementptr i8, ptr %i.b, i64 -16
  %i.gx = insertelement <2 x ptr> poison, ptr %scevgep1148, i64 0
  %i.gy = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.gz = shufflevector <4 x ptr> %i.gy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ha = insertelement <4 x ptr> poison, ptr %scevgep1128, i64 3
  %i.hb = insertelement <4 x ptr> poison, ptr %scevgep1137, i64 0
  %i.hc = shufflevector <4 x ptr> %i.hb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hd = insertelement <4 x ptr> poison, ptr %scevgep1148, i64 3
  %i.he = shufflevector <2 x ptr> %i.gw, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hf = shufflevector <2 x ptr> %i.gx, <2 x ptr> %i.gw, <2 x i32> <i32 0, i32 2>
  br label %.lr.ph849.us

.lr.ph849.us:                                     ; preds = %.lr.ph849.us.preheader, %..loopexit811_crit_edge.us
  %i.hg = phi i32 [ %i.re, %..loopexit811_crit_edge.us ], [ 4, %.lr.ph849.us.preheader ] ; 7 uses
  %.1634852.us = phi i32 [ %i.hg, %..loopexit811_crit_edge.us ], [ 1, %.lr.ph849.us.preheader ] ; 5 uses
  %.0799851.us = phi i32 [ %i.hh, %..loopexit811_crit_edge.us ], [ %i.k, %.lr.ph849.us.preheader ] ; 2 uses
  %i.hh = sdiv i32 %.0799851.us, 4                ; 3 uses
  %i.hi = shl i32 %.1634852.us, 1
  %i.hj = sext i32 %i.hi to i64                   ; 5 uses
  %i.hk = sext i32 %.1634852.us to i64            ; 9 uses
  %i.hl = icmp sgt i32 %.1634852.us, 1
  br i1 %i.hl, label %.lr.ph845.us.us.preheader, label %.lr.ph849.split.us856.preheader

.lr.ph849.split.us856.preheader:                  ; preds = %.lr.ph849.us
  %i.hm = sext i32 %i.hg to i64
  br label %.lr.ph849.split.us856

.lr.ph845.us.us.preheader:                        ; preds = %.lr.ph849.us
  %i.hn = sext i32 %i.hh to i64                   ; 3 uses
  %i.ho = sext i32 %i.hg to i64                   ; 3 uses
  %wide.trip.count968 = zext nneg i32 %.1634852.us to i64 ; 5 uses
  %i.hp = shl nuw nsw i64 %wide.trip.count968, 4  ; 6 uses
  %i.hq = shl nuw nsw i64 %i.hj, 4                ; 5 uses
  %scevgep1117 = getelementptr i8, ptr %scevgep1116, i64 %i.hq ; 6 uses
  %i.hr = shl nuw nsw i64 %i.hk, 4                ; 4 uses
  %scevgep1121 = getelementptr i8, ptr %scevgep1120, i64 %i.hr ; 6 uses
  %i.hs = add nuw nsw i64 %i.hr, %i.hq            ; 2 uses
  %scevgep1125 = getelementptr i8, ptr %scevgep1124, i64 %i.hs ; 6 uses
  %i.ht = mul nuw nsw i64 %wide.trip.count968, 48 ; 2 uses
  %scevgep1130 = getelementptr i8, ptr %scevgep1129, i64 %i.ht ; 4 uses
  %scevgep1133 = getelementptr i8, ptr %scevgep1132, i64 %i.hp ; 4 uses
  %i.hu = shl nuw nsw i64 %wide.trip.count968, 5  ; 2 uses
  %scevgep1136 = getelementptr i8, ptr %scevgep1135, i64 %i.hu ; 4 uses
  %scevgep1140 = getelementptr i8, ptr %scevgep1139, i64 %i.hq ; 6 uses
  %scevgep1143 = getelementptr i8, ptr %scevgep1142, i64 %i.hr ; 3 uses
  %scevgep1146 = getelementptr i8, ptr %scevgep1145, i64 %i.hs ; 4 uses
  %scevgep1150 = getelementptr i8, ptr %scevgep1149, i64 %i.ht ; 3 uses
  %scevgep1152 = getelementptr i8, ptr %i.b, i64 %i.hp ; 4 uses
  %scevgep1155 = getelementptr i8, ptr %scevgep1154, i64 %i.hu ; 4 uses
  %i.hv = insertelement <4 x ptr> poison, ptr %scevgep1143, i64 0
  %i.hw = shufflevector <4 x ptr> %i.hv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hx = insertelement <2 x ptr> poison, ptr %scevgep1146, i64 0 ; 2 uses
  %i.hy = shufflevector <2 x ptr> %i.hx, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.hz = insertelement <2 x ptr> poison, ptr %scevgep1150, i64 0 ; 2 uses
  %i.ia = insertelement <2 x ptr> %i.hz, ptr %scevgep1152, i64 1
  %i.ib = shufflevector <2 x ptr> %i.hx, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ic = insertelement <4 x ptr> %i.ib, ptr %scevgep1148, i64 1
  %i.id = shufflevector <2 x ptr> %i.hz, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.ie = insertelement <4 x i32> poison, i32 %i.hg, i64 0
  %i.if = insertelement <4 x ptr> %i.ha, ptr %scevgep1121, i64 0
  %i.ig = insertelement <4 x ptr> %i.if, ptr %scevgep1117, i64 1
  %i.ih = insertelement <4 x ptr> %i.ig, ptr %scevgep1125, i64 2
  %i.ii = insertelement <4 x ptr> %i.hd, ptr %scevgep1140, i64 0
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep1143, i64 1
  %i.ik = insertelement <4 x ptr> %i.ij, ptr %scevgep1146, i64 2
  %i.il = shufflevector <4 x ptr> %i.ic, <4 x ptr> %i.he, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %min.iters.check = icmp ugt i32 %.1634852.us, 17
  %i.im = and i32 %.0799851.us, -4
  %ident.check.not = icmp eq i32 %i.im, 4
  %or.cond1443 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %invariant.op = add i64 %i.hq, %i.hp
  %invariant.op1533 = add i64 %i.hq, %i.hp
  %i.in = insertelement <4 x ptr> poison, ptr %scevgep1130, i64 3
  %bound01173 = icmp ult ptr %scevgep, %scevgep1133
  %bound01178 = icmp ult ptr %scevgep, %scevgep1136
  %bound01195 = icmp ult ptr %scevgep1117, %scevgep1130
  %bound01200 = icmp ult ptr %scevgep1117, %scevgep1133
  %bound01205 = icmp ult ptr %scevgep1117, %scevgep1136
  %bound01216 = icmp ult ptr %scevgep1121, %scevgep1130
  %bound01221 = icmp ult ptr %scevgep1121, %scevgep1133
  %bound01226 = icmp ult ptr %scevgep1121, %scevgep1136
  %bound01231 = icmp ult ptr %scevgep1125, %scevgep1130
  %bound01236 = icmp ult ptr %scevgep1125, %scevgep1133
  %bound01241 = icmp ult ptr %scevgep1125, %scevgep1136
  %i.io = insertelement <4 x ptr> poison, ptr %scevgep1150, i64 3
  %bound01269 = icmp ult ptr %scevgep1137, %scevgep1152
  %bound01274 = icmp ult ptr %scevgep1137, %scevgep1155
  %bound01291 = icmp ult ptr %scevgep1140, %scevgep1150
  %bound01296 = icmp ult ptr %scevgep1140, %scevgep1152
  %bound01301 = icmp ult ptr %scevgep1140, %scevgep1155
  %i.ip = icmp ult <2 x ptr> %i.hy, %i.ia
  %bound01337 = icmp ult ptr %scevgep1146, %scevgep1155
  %stride.check1160 = icmp slt i32 %i.hg, 0
  %i.iq = insertelement <8 x i1> poison, i1 %bound01337, i64 6
  %i.ir = insertelement <8 x i1> %i.iq, i1 %stride.check1160, i64 7
  %i.is = shufflevector <2 x i1> %i.ip, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.it = shufflevector <4 x i32> %i.ie, <4 x i32> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iu = icmp slt <8 x i32> %i.it, <i32 0, i32 0, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef>
  %21 = and i64 %wide.trip.count968, 2147483644   ; 2 uses
  %n.vec = add nsw i64 %21, -1                    ; 2 uses
  %i.iv = add nsw i64 %21, -4
  br label %.lr.ph845.us.us

.lr.ph849.split.us856:                            ; preds = %.lr.ph849.split.us856.preheader, %.lr.ph849.split.us856
  %indvars.iv958 = phi i64 [ 0, %.lr.ph849.split.us856.preheader ], [ %indvars.iv.next959, %.lr.ph849.split.us856 ] ; 2 uses
  %i.iw = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv958 ; 4 uses
  %i.ix = getelementptr inbounds [16 x i8], ptr %i.iw, i64 %i.hj ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = getelementptr inbounds [16 x i8], ptr %i.ix, i64 %i.hk ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = getelementptr inbounds [16 x i8], ptr %i.iw, i64 %i.hk ; 2 uses
  %i.jc = load <2 x double>, ptr %i.ix, align 8, !tbaa !113 ; 3 uses
  %i.jd = load double, ptr %i.iy, align 8, !tbaa !134
  %i.je = load <2 x double>, ptr %i.iz, align 8, !tbaa !113 ; 3 uses
  %i.jf = load double, ptr %i.ja, align 8, !tbaa !134
  %i.jg = shufflevector <2 x double> %i.jc, <2 x double> %i.je, <2 x i32> <i32 1, i32 2>
  %i.jh = shufflevector <2 x double> %i.je, <2 x double> %i.jc, <2 x i32> <i32 1, i32 2>
  %i.ji = fsub <2 x double> %i.jg, %i.jh          ; 2 uses
  %i.jj = load <2 x double>, ptr %i.iw, align 8, !tbaa !113 ; 2 uses
  %i.jk = load <2 x double>, ptr %i.jb, align 8, !tbaa !113 ; 2 uses
  %i.jl = fsub <2 x double> %i.jj, %i.jk          ; 2 uses
  %i.jm = insertelement <2 x double> %i.jc, double %i.jd, i64 1
  %i.jn = insertelement <2 x double> %i.je, double %i.jf, i64 1
  %i.jo = fadd <2 x double> %i.jm, %i.jn          ; 2 uses
  %i.jp = fadd <2 x double> %i.jj, %i.jk          ; 2 uses
  %i.jq = fadd <2 x double> %i.jo, %i.jp
  store <2 x double> %i.jq, ptr %i.iw, align 8, !tbaa !113
  %i.jr = fsub <2 x double> %i.jp, %i.jo
  store <2 x double> %i.jr, ptr %i.ix, align 8, !tbaa !113
  %i.js = fadd <2 x double> %i.ji, %i.jl
  store <2 x double> %i.js, ptr %i.jb, align 8, !tbaa !113
  %i.jt = fsub <2 x double> %i.jl, %i.ji
  store <2 x double> %i.jt, ptr %i.iz, align 8, !tbaa !113
  %indvars.iv.next959 = add nsw i64 %indvars.iv958, %i.hm ; 2 uses
  %i.ju = icmp slt i64 %indvars.iv.next959, %i.gu
  br i1 %i.ju, label %.lr.ph849.split.us856, label %..loopexit811_crit_edge.us, !llvm.loop !515

.lr.ph845.us.us:                                  ; preds = %.lr.ph845.us.us.preheader, %._crit_edge846.us.us
  %indvars.iv970 = phi i64 [ 0, %.lr.ph845.us.us.preheader ], [ %indvars.iv.next971, %._crit_edge846.us.us ] ; 2 uses
  %i.jv = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv970 ; 6 uses
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.hj ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %i.hk ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.hk ; 2 uses
  %i.kb = load <2 x double>, ptr %i.jw, align 8, !tbaa !113 ; 3 uses
  %i.kc = load double, ptr %i.jx, align 8, !tbaa !134
  %i.kd = load <2 x double>, ptr %i.jy, align 8, !tbaa !113 ; 3 uses
  %i.ke = load double, ptr %i.jz, align 8, !tbaa !134
  %i.kf = shufflevector <2 x double> %i.kb, <2 x double> %i.kd, <2 x i32> <i32 1, i32 2>
  %i.kg = shufflevector <2 x double> %i.kd, <2 x double> %i.kb, <2 x i32> <i32 1, i32 2>
  %i.kh = fsub <2 x double> %i.kf, %i.kg          ; 2 uses
  %i.ki = load <2 x double>, ptr %i.jv, align 8, !tbaa !113 ; 2 uses
  %i.kj = load <2 x double>, ptr %i.ka, align 8, !tbaa !113 ; 2 uses
  %i.kk = fsub <2 x double> %i.ki, %i.kj          ; 2 uses
  %i.kl = insertelement <2 x double> %i.kb, double %i.kc, i64 1
  %i.km = insertelement <2 x double> %i.kd, double %i.ke, i64 1
  %i.kn = fadd <2 x double> %i.kl, %i.km          ; 2 uses
  %i.ko = fadd <2 x double> %i.ki, %i.kj          ; 2 uses
  %i.kp = fadd <2 x double> %i.kn, %i.ko
  store <2 x double> %i.kp, ptr %i.jv, align 8, !tbaa !113
  %i.kq = fsub <2 x double> %i.ko, %i.kn
  store <2 x double> %i.kq, ptr %i.jw, align 8, !tbaa !113
  %i.kr = fadd <2 x double> %i.kh, %i.kk
  store <2 x double> %i.kr, ptr %i.ka, align 8, !tbaa !113
  %i.ks = fsub <2 x double> %i.kk, %i.kh
  store <2 x double> %i.ks, ptr %i.jy, align 8, !tbaa !113
  br i1 %or.cond1443, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph845.us.us
  %i.kt = udiv i64 %i.gv, %i.ho
  %i.ku = shl i64 %i.kt, 4
  %i.kv = mul i64 %i.ku, %i.ho                    ; 3 uses
  %i.kw = add i64 %i.kv, %i.hp                    ; 2 uses
  %scevgep1115 = getelementptr i8, ptr %scevgep1114, i64 %i.kw ; 3 uses
  %.reass = add i64 %i.kv, %invariant.op          ; 2 uses
  %scevgep1119 = getelementptr i8, ptr %scevgep1118, i64 %.reass ; 6 uses
  %i.kx = add i64 %i.kv, %i.hr                    ; 2 uses
  %i.ky = add i64 %i.kx, %i.hp                    ; 2 uses
  %scevgep1123 = getelementptr i8, ptr %scevgep1122, i64 %i.ky ; 6 uses
  %.reass1534 = add i64 %i.kx, %invariant.op1533  ; 2 uses
  %scevgep1127 = getelementptr i8, ptr %scevgep1126, i64 %.reass1534 ; 6 uses
  %scevgep1138 = getelementptr i8, ptr %2, i64 %i.kw ; 3 uses
  %scevgep1141 = getelementptr i8, ptr %2, i64 %.reass ; 6 uses
  %scevgep1144 = getelementptr i8, ptr %2, i64 %i.ky ; 3 uses
  %scevgep1147 = getelementptr i8, ptr %2, i64 %.reass1534 ; 4 uses
  %i.kz = insertelement <4 x ptr> %i.in, ptr %scevgep1123, i64 0
  %i.la = insertelement <4 x ptr> %i.kz, ptr %scevgep1119, i64 1
  %i.lb = insertelement <4 x ptr> %i.la, ptr %scevgep1127, i64 2
  %i.lc = icmp ult <4 x ptr> %i.gz, %i.lb
  %i.ld = insertelement <4 x ptr> poison, ptr %scevgep1115, i64 0
  %i.le = shufflevector <4 x ptr> %i.ld, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lf = icmp ult <4 x ptr> %i.ih, %i.le
  %i.lg = and <4 x i1> %i.lc, %i.lf
  %bound11174 = icmp ult ptr %scevgep1131, %scevgep1115
  %found.conflict1175 = and i1 %bound01173, %bound11174
  %bound11179 = icmp ult ptr %scevgep1134, %scevgep1115
  %found.conflict1180 = and i1 %bound01178, %bound11179
  %bound01183 = icmp ult ptr %scevgep1117, %scevgep1123
  %bound11184 = icmp ult ptr %scevgep1121, %scevgep1119
  %found.conflict1185 = and i1 %bound01183, %bound11184
  %bound01189 = icmp ult ptr %scevgep1117, %scevgep1127
  %bound11190 = icmp ult ptr %scevgep1125, %scevgep1119
  %found.conflict1191 = and i1 %bound01189, %bound11190
  %bound11196 = icmp ult ptr %scevgep1128, %scevgep1119
  %found.conflict1197 = and i1 %bound01195, %bound11196
  %bound11201 = icmp ult ptr %scevgep1131, %scevgep1119
  %found.conflict1202 = and i1 %bound01200, %bound11201
  %bound11206 = icmp ult ptr %scevgep1134, %scevgep1119
  %found.conflict1207 = and i1 %bound01205, %bound11206
  %bound01210 = icmp ult ptr %scevgep1121, %scevgep1127
  %bound11211 = icmp ult ptr %scevgep1125, %scevgep1123
  %found.conflict1212 = and i1 %bound01210, %bound11211
  %bound11217 = icmp ult ptr %scevgep1128, %scevgep1123
  %found.conflict1218 = and i1 %bound01216, %bound11217
  %bound11222 = icmp ult ptr %scevgep1131, %scevgep1123
  %found.conflict1223 = and i1 %bound01221, %bound11222
  %bound11227 = icmp ult ptr %scevgep1134, %scevgep1123
  %found.conflict1228 = and i1 %bound01226, %bound11227
  %bound11232 = icmp ult ptr %scevgep1128, %scevgep1127
  %found.conflict1233 = and i1 %bound01231, %bound11232
  %bound11237 = icmp ult ptr %scevgep1131, %scevgep1127
  %found.conflict1238 = and i1 %bound01236, %bound11237
  %bound11242 = icmp ult ptr %scevgep1134, %scevgep1127
  %found.conflict1243 = and i1 %bound01241, %bound11242
  %i.lh = insertelement <4 x ptr> %i.io, ptr %scevgep1141, i64 0
  %i.li = insertelement <4 x ptr> %i.lh, ptr %scevgep1144, i64 1
  %i.lj = insertelement <4 x ptr> %i.li, ptr %scevgep1147, i64 2
  %i.lk = icmp ult <4 x ptr> %i.hc, %i.lj
  %i.ll = insertelement <4 x ptr> poison, ptr %scevgep1138, i64 0
  %i.lm = shufflevector <4 x ptr> %i.ll, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ln = icmp ult <4 x ptr> %i.ik, %i.lm
  %i.lo = and <4 x i1> %i.lk, %i.ln
  %bound11270 = icmp ult ptr %scevgep1151, %scevgep1138
  %found.conflict1271 = and i1 %bound01269, %bound11270
  %bound11275 = icmp ult ptr %scevgep1153, %scevgep1138
  %found.conflict1276 = and i1 %bound01274, %bound11275
  %bound01279 = icmp ult ptr %scevgep1140, %scevgep1144
  %bound11280 = icmp ult ptr %scevgep1143, %scevgep1141
  %found.conflict1281 = and i1 %bound01279, %bound11280
  %bound01285 = icmp ult ptr %scevgep1140, %scevgep1147
  %bound11286 = icmp ult ptr %scevgep1146, %scevgep1141
  %found.conflict1287 = and i1 %bound01285, %bound11286
  %bound11292 = icmp ult ptr %scevgep1148, %scevgep1141
  %found.conflict1293 = and i1 %bound01291, %bound11292
  %bound11297 = icmp ult ptr %scevgep1151, %scevgep1141
  %found.conflict1298 = and i1 %bound01296, %bound11297
  %bound11302 = icmp ult ptr %scevgep1153, %scevgep1141
  %found.conflict1303 = and i1 %bound01301, %bound11302
  %bound11338 = icmp ult ptr %scevgep1153, %scevgep1147
  %i.lp = insertelement <4 x ptr> %i.id, ptr %scevgep1147, i64 0 ; 2 uses
  %i.lq = insertelement <4 x ptr> %i.lp, ptr %scevgep1152, i64 2
  %i.lr = insertelement <4 x ptr> %i.lq, ptr %scevgep1155, i64 3
  %i.ls = icmp ult <4 x ptr> %i.hw, %i.lr
  %i.lt = insertelement <4 x ptr> poison, ptr %scevgep1144, i64 0
  %i.lu = shufflevector <4 x ptr> %i.lt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lv = icmp ult <4 x ptr> %i.il, %i.lu
  %i.lw = shufflevector <4 x ptr> %i.lp, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.lx = icmp ult <2 x ptr> %i.hf, %i.lw
  %i.ly = shufflevector <4 x i1> %i.ls, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lz = shufflevector <8 x i1> %i.ly, <8 x i1> %i.ir, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.ma = shufflevector <8 x i1> %i.lz, <8 x i1> %i.is, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.mb = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound11338, i64 6
  %i.mc = shufflevector <4 x i1> %i.lv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.md = shufflevector <8 x i1> %i.mc, <8 x i1> %i.mb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.me = shufflevector <2 x i1> %i.lx, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mf = shufflevector <8 x i1> %i.md, <8 x i1> %i.me, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.mg = and <8 x i1> %i.ma, %i.mf               ; 2 uses
  %i.mh = or <8 x i1> %i.mg, %i.iu
  %i.mi = shufflevector <8 x i1> %i.mh, <8 x i1> %i.mg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.mj = bitcast <8 x i1> %i.mi to i8
  %i.mk = icmp ne i8 %i.mj, 0
  %rdx.op1472 = or <4 x i1> %i.lg, %i.lo
  %i.ml = bitcast <4 x i1> %rdx.op1472 to i4
  %i.mm = icmp ne i4 %i.ml, 0
  %op.rdx1473 = or i1 %i.mm, %found.conflict1175
  %op.rdx1474 = or i1 %found.conflict1180, %found.conflict1185
  %op.rdx1475 = or i1 %found.conflict1191, %found.conflict1197
  %op.rdx1476 = or i1 %found.conflict1202, %found.conflict1207
  %op.rdx1477 = or i1 %found.conflict1212, %found.conflict1218
  %op.rdx1478 = or i1 %found.conflict1223, %found.conflict1228
  %op.rdx1479 = or i1 %found.conflict1233, %found.conflict1238
  %op.rdx1480 = or i1 %found.conflict1243, %found.conflict1271
  %op.rdx1481 = or i1 %found.conflict1276, %found.conflict1281
  %op.rdx1482 = or i1 %found.conflict1287, %found.conflict1293
  %op.rdx1483 = or i1 %found.conflict1298, %found.conflict1303
  %op.rdx1484 = or i1 %op.rdx1473, %op.rdx1474
  %op.rdx1485 = or i1 %op.rdx1475, %op.rdx1476
  %op.rdx1486 = or i1 %op.rdx1477, %op.rdx1478
  %op.rdx1487 = or i1 %op.rdx1479, %op.rdx1480
  %op.rdx1488 = or i1 %op.rdx1481, %op.rdx1482
  %op.rdx1489 = or i1 %op.rdx1483, %i.mk
  %op.rdx1490 = or i1 %op.rdx1484, %op.rdx1485
  %op.rdx1491 = or i1 %op.rdx1486, %op.rdx1487
  %op.rdx1492 = or i1 %op.rdx1488, %op.rdx1489
  %op.rdx1493 = or i1 %op.rdx1490, %op.rdx1491
  %op.rdx1494 = or i1 %op.rdx1493, %op.rdx1492
  br i1 %op.rdx1494, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.mn = or disjoint i64 %index, 1               ; 4 uses
  %i.mo = add i64 %index, 2                       ; 2 uses
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.mn ; 4 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.mp, i64 %i.hj ; 3 uses
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mp, i64 %i.hk ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.mr, align 8, !tbaa !113 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1342 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ms = shl nsw i64 %i.mn, 5
  %i.mt = shl nsw i64 %i.mo, 5
  %i.mu = getelementptr inbounds i8, ptr %i.b, i64 %i.ms ; 2 uses
  %i.mv = getelementptr inbounds i8, ptr %i.b, i64 %i.mt ; 2 uses
  %i.mw = load double, ptr %i.mu, align 8, !tbaa !133, !alias.scope !536
  %i.mx = load double, ptr %i.mv, align 8, !tbaa !133, !alias.scope !536
  %i.my = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.mz = insertelement <2 x double> %i.my, double %i.mx, i64 1 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.nc = load double, ptr %i.na, align 8, !tbaa !134, !alias.scope !537
  %i.nd = load double, ptr %i.nb, align 8, !tbaa !134, !alias.scope !537
  %i.ne = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.nf = insertelement <2 x double> %i.ne, double %i.nd, i64 1 ; 2 uses
  %i.ng = fneg <2 x double> %i.nf
  %i.nh = fmul <2 x double> %strided.vec1342, %i.ng
  %i.ni = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.mz, <2 x double> %i.nh) ; 2 uses
  %i.nj = fmul <2 x double> %i.mz, %strided.vec1342
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.nf, <2 x double> %i.nj) ; 2 uses
  %wide.vec1343 = load <4 x double>, ptr %i.mq, align 8, !tbaa !113 ; 2 uses
  %strided.vec1344 = shufflevector <4 x double> %wide.vec1343, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1345 = shufflevector <4 x double> %wide.vec1343, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.nl = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mn
  %wide.vec1346 = load <4 x double>, ptr %i.nl, align 8, !tbaa !113 ; 2 uses
  %strided.vec1347 = shufflevector <4 x double> %wide.vec1346, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1348 = shufflevector <4 x double> %wide.vec1346, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.nm = fmul <2 x double> %strided.vec1345, %strided.vec1347
  %i.nn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec1344, <2 x double> %strided.vec1348, <2 x double> %i.nm) ; 2 uses
  %i.no = fneg <2 x double> %strided.vec1348
  %i.np = fmul <2 x double> %strided.vec1345, %i.no
  %i.nq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec1344, <2 x double> %strided.vec1347, <2 x double> %i.np) ; 2 uses
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.mq, i64 %i.hk ; 2 uses
  %wide.vec1349 = load <4 x double>, ptr %i.nr, align 8, !tbaa !113 ; 2 uses
  %strided.vec1350 = shufflevector <4 x double> %wide.vec1349, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1351 = shufflevector <4 x double> %wide.vec1349, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ns = mul nsw i64 %i.mn, 48
  %i.nt = mul nsw i64 %i.mo, 48
  %i.nu = getelementptr inbounds i8, ptr %i.b, i64 %i.ns ; 2 uses
  %i.nv = getelementptr inbounds i8, ptr %i.b, i64 %i.nt ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.ny = load double, ptr %i.nw, align 8, !tbaa !134, !alias.scope !538
  %i.nz = load double, ptr %i.nx, align 8, !tbaa !134, !alias.scope !538
  %i.oa = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.ob = insertelement <2 x double> %i.oa, double %i.nz, i64 1 ; 2 uses
  %i.oc = load double, ptr %i.nu, align 8, !tbaa !133, !alias.scope !539
  %i.od = load double, ptr %i.nv, align 8, !tbaa !133, !alias.scope !539
  %i.oe = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.of = insertelement <2 x double> %i.oe, double %i.od, i64 1 ; 2 uses
  %i.og = fmul <2 x double> %strided.vec1351, %i.of
  %i.oh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec1350, <2 x double> %i.ob, <2 x double> %i.og) ; 2 uses
  %i.oi = fneg <2 x double> %i.ob
  %i.oj = fmul <2 x double> %strided.vec1351, %i.oi
  %i.ok = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec1350, <2 x double> %i.of, <2 x double> %i.oj) ; 2 uses
  %i.ol = fadd <2 x double> %i.nq, %i.ok          ; 2 uses
  %i.om = fadd <2 x double> %i.nn, %i.oh          ; 2 uses
  %i.on = fsub <2 x double> %i.nn, %i.oh          ; 2 uses
  %i.oo = fsub <2 x double> %i.ok, %i.nq          ; 2 uses
  %wide.vec1352 = load <4 x double>, ptr %i.mp, align 8, !tbaa !113 ; 2 uses
  %strided.vec1353 = shufflevector <4 x double> %wide.vec1352, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec1354 = shufflevector <4 x double> %wide.vec1352, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.op = fadd <2 x double> %i.ni, %strided.vec1353 ; 2 uses
  %i.oq = fadd <2 x double> %i.nk, %strided.vec1354 ; 2 uses
  %i.or = fsub <2 x double> %strided.vec1353, %i.ni ; 2 uses
  %i.os = fsub <2 x double> %strided.vec1354, %i.nk ; 2 uses
  %i.ot = fadd <2 x double> %i.op, %i.ol
  %i.ou = fadd <2 x double> %i.oq, %i.om
  %interleaved.vec = shufflevector <2 x double> %i.ot, <2 x double> %i.ou, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.mp, align 8, !tbaa !113
  %i.ov = fsub <2 x double> %i.op, %i.ol
  %i.ow = fsub <2 x double> %i.oq, %i.om
  %interleaved.vec1355 = shufflevector <2 x double> %i.ov, <2 x double> %i.ow, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1355, ptr %i.mq, align 8, !tbaa !113
  %i.ox = fadd <2 x double> %i.or, %i.on
  %i.oy = fadd <2 x double> %i.oo, %i.os
  %interleaved.vec1356 = shufflevector <2 x double> %i.ox, <2 x double> %i.oy, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1356, ptr %i.mr, align 8, !tbaa !113
  %i.oz = fsub <2 x double> %i.or, %i.on
  %i.pa = fsub <2 x double> %i.os, %i.oo
  %interleaved.vec1357 = shufflevector <2 x double> %i.oz, <2 x double> %i.pa, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1357, ptr %i.nr, align 8, !tbaa !113
  %index.next = add nuw i64 %index, 2
  %i.pb = icmp eq i64 %index, %i.iv
  br i1 %i.pb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !521

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph845.us.us
  %indvars.iv963.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph845.us.us ], [ %n.vec, %vector.body ]
  %indvars.iv961.ph = phi i64 [ %i.hn, %vector.memcheck ], [ %i.hn, %.lr.ph845.us.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv963 = phi i64 [ %indvars.iv.next964, %scalar.ph ], [ %indvars.iv963.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv961 = phi i64 [ %indvars.iv.next962, %scalar.ph ], [ %indvars.iv961.ph, %scalar.ph.preheader ] ; 4 uses
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %indvars.iv963 ; 4 uses
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.pc, i64 %i.hj ; 3 uses
  %i.pe = getelementptr inbounds nuw [16 x i8], ptr %i.pc, i64 %i.hk ; 3 uses
  %.idx = shl nsw i64 %indvars.iv961, 5
  %i.pf = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.pi = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv961 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %i.hk ; 2 uses
  %.idx1071 = mul nsw i64 %indvars.iv961, 48
  %i.pl = getelementptr inbounds i8, ptr %i.b, i64 %.idx1071 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load double, ptr %i.pe, align 8, !tbaa !133
  %i.po = load double, ptr %i.pg, align 8, !tbaa !134
  %i.pp = load double, ptr %i.ph, align 8, !tbaa !134
  %i.pq = load <2 x double>, ptr %i.pf, align 8, !tbaa !113 ; 2 uses
  %i.pr = fneg double %i.pp
  %i.ps = insertelement <2 x double> poison, double %i.po, i64 0
  %i.pt = shufflevector <2 x double> %i.ps, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pu = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.pv = insertelement <2 x double> %i.pu, double %i.pr, i64 0
  %i.pw = fmul <2 x double> %i.pt, %i.pv
  %i.px = insertelement <2 x double> poison, double %i.pn, i64 0
  %i.py = shufflevector <2 x double> %i.px, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.pq, <2 x double> %i.pw) ; 2 uses
  %i.qa = load <2 x double>, ptr %i.pd, align 8, !tbaa !113 ; 2 uses
  %i.qb = load <2 x double>, ptr %i.pi, align 8, !tbaa !113 ; 2 uses
  %i.qc = load double, ptr %i.pj, align 8, !tbaa !134
  %i.qd = fneg double %i.qc
  %i.qe = load <2 x double>, ptr %i.pk, align 8, !tbaa !113 ; 2 uses
  %i.qf = load <2 x double>, ptr %i.pl, align 8, !tbaa !113 ; 3 uses
  %i.qg = load double, ptr %i.pm, align 8, !tbaa !134
  %i.qh = shufflevector <2 x double> %i.qe, <2 x double> %i.qa, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qi = insertelement <2 x double> %i.qf, double %i.qd, i64 1
  %i.qj = fmul <2 x double> %i.qh, %i.qi
  %i.qk = shufflevector <2 x double> %i.qe, <2 x double> %i.qa, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ql = shufflevector <2 x double> %i.qf, <2 x double> %i.qb, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.qm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.ql, <2 x double> %i.qj) ; 2 uses
  %i.qn = fneg double %i.qg
  %i.qo = insertelement <2 x double> %i.ql, double %i.qn, i64 0
  %i.qp = fmul <2 x double> %i.qh, %i.qo
  %i.qq = shufflevector <2 x double> %i.qf, <2 x double> %i.qb, <2 x i32> <i32 0, i32 3>
  %i.qr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.qq, <2 x double> %i.qp) ; 2 uses
  %i.qs = shufflevector <2 x double> %i.qr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qt = fsub <2 x double> %i.qs, %i.qm          ; 2 uses
  %i.qu = load <2 x double>, ptr %i.pc, align 8, !tbaa !113 ; 2 uses
  %i.qv = fsub <2 x double> %i.qu, %i.pz          ; 2 uses
  %i.qw = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qx = fadd <2 x double> %i.qr, %i.qw          ; 2 uses
  %i.qy = fadd <2 x double> %i.pz, %i.qu          ; 2 uses
  %i.qz = fadd <2 x double> %i.qy, %i.qx
  store <2 x double> %i.qz, ptr %i.pc, align 8, !tbaa !113
  %i.ra = fsub <2 x double> %i.qy, %i.qx
  store <2 x double> %i.ra, ptr %i.pd, align 8, !tbaa !113
  %i.rb = fadd <2 x double> %i.qt, %i.qv
  store <2 x double> %i.rb, ptr %i.pe, align 8, !tbaa !113
  %i.rc = fsub <2 x double> %i.qv, %i.qt
  store <2 x double> %i.rc, ptr %i.pk, align 8, !tbaa !113
  %indvars.iv.next964 = add nuw nsw i64 %indvars.iv963, 1 ; 2 uses
  %indvars.iv.next962 = add nsw i64 %indvars.iv961, %i.hn
  %exitcond969.not = icmp eq i64 %indvars.iv.next964, %wide.trip.count968
  br i1 %exitcond969.not, label %._crit_edge846.us.us, label %scalar.ph, !llvm.loop !522

._crit_edge846.us.us:                             ; preds = %scalar.ph
  %indvars.iv.next971 = add nsw i64 %indvars.iv970, %i.ho ; 2 uses
  %i.rd = icmp slt i64 %indvars.iv.next971, %i.gu
  br i1 %i.rd, label %.lr.ph845.us.us, label %..loopexit811_crit_edge.us, !llvm.loop !515

..loopexit811_crit_edge.us:                       ; preds = %.lr.ph849.split.us856, %._crit_edge846.us.us
  %i.re = shl nsw i32 %i.hg, 2                    ; 2 uses
  %.not714.us = icmp sgt i32 %i.re, %i.gp
  br i1 %.not714.us, label %.preheader809, label %.lr.ph849.us, !llvm.loop !523

.preheader809:                                    ; preds = %.loopexit811, %..loopexit811_crit_edge.us, %.preheader812
  %.0799.lcssa = phi i32 [ %i.k, %.preheader812 ], [ %i.hh, %..loopexit811_crit_edge.us ], [ %i.ri, %.loopexit811 ] ; 2 uses
  %.1634.lcssa = phi i32 [ 1, %.preheader812 ], [ %i.hg, %..loopexit811_crit_edge.us ], [ %i.rh, %.loopexit811 ] ; 3 uses
  %i.rf = icmp slt i32 %.1634.lcssa, %i.gp
  br i1 %i.rf, label %.lr.ph862, label %.loopexit810

.lr.ph862:                                        ; preds = %.preheader809
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 51
  br label %bb.be

.loopexit811:                                     ; preds = %.lr.ph853, %.loopexit811
  %i.rh = phi i32 [ %i.rj, %.loopexit811 ], [ 4, %.lr.ph853 ] ; 2 uses
  %.0799851 = phi i32 [ %i.ri, %.loopexit811 ], [ %i.k, %.lr.ph853 ]
  %i.ri = sdiv i32 %.0799851, 4                   ; 2 uses
  %i.rj = shl nsw i32 %i.rh, 2                    ; 2 uses
  %.not714 = icmp sgt i32 %i.rj, %i.gp
  br i1 %.not714, label %.preheader809, label %.loopexit811, !llvm.loop !523

bb.be:                                            ; preds = %.lr.ph862, %bb.bh
  %.2635861 = phi i32 [ %.1634.lcssa, %.lr.ph862 ], [ %i.rk, %bb.bh ]
  %.1800860 = phi i32 [ %.0799.lcssa, %.lr.ph862 ], [ %i.rl, %bb.bh ]
  %i.rk = shl nsw i32 %.2635861, 1                ; 5 uses
  %i.rl = sdiv i32 %.1800860, 2                   ; 4 uses
  %i.rm = load i8, ptr %i.rg, align 1, !tbaa !25, !range !44, !noundef !45
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ro = load i32, ptr %i.e, align 4, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNK2cv6DFT_R2IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %2, i32 noundef %i.ro, i32 noundef %i.rk, i32 noundef %i.rl, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.rp = load i32, ptr %i.e, align 4, !tbaa !140
  call void @_ZNK2cv6DFT_R2IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %2, i32 noundef %i.rp, i32 noundef %i.rk, i32 noundef %i.rl, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.rq = load ptr, ptr %i.gn, align 8, !tbaa !145
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !42 ; 3 uses
  %i.rs = icmp slt i32 %i.rk, %i.rr
  br i1 %i.rs, label %bb.be, label %.loopexit810.loopexit, !llvm.loop !524

.loopexit810.loopexit:                            ; preds = %bb.bh
  %.pre1029 = and i32 %i.rr, 1
  %i.rt = xor i32 %.pre1029, 1
  br label %.loopexit810

.loopexit810:                                     ; preds = %.loopexit810.loopexit, %.preheader809, %bb.bd
  %.pre-phi = phi i32 [ %i.rt, %.loopexit810.loopexit ], [ 1, %.preheader809 ], [ 0, %bb.bd ]
  %i.ru = phi i32 [ %i.rr, %.loopexit810.loopexit ], [ %i.gp, %.preheader809 ], [ %i.gp, %bb.bd ]
  %.2801 = phi i32 [ %i.rl, %.loopexit810.loopexit ], [ %.0799.lcssa, %.preheader809 ], [ %i.k, %bb.bd ]
  %.3636 = phi i32 [ %i.rk, %.loopexit810.loopexit ], [ %.1634.lcssa, %.preheader809 ], [ 1, %bb.bd ]
  %i.rv = load i32, ptr %0, align 8, !tbaa !22
  %i.rw = icmp slt i32 %.pre-phi, %i.rv
  br i1 %i.rw, label %.lr.ph913, label %._crit_edge914

.lr.ph913:                                        ; preds = %.loopexit810
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 51
  %scevgep.i = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.rz = and i32 %i.ru, 1
  %i.sa = xor i32 %i.rz, 1
  %i.sb = zext nneg i32 %i.sa to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph913, %bb.bt
  %indvars.iv1018 = phi i64 [ %i.sb, %.lr.ph913 ], [ %indvars.iv.next1019, %bb.bt ] ; 2 uses
  %.4911 = phi i32 [ %.3636, %.lr.ph913 ], [ %i.sf, %bb.bt ] ; 4 uses
  %.3802909 = phi i32 [ %.2801, %.lr.ph913 ], [ %i.sg, %bb.bt ]
  %i.sc = load ptr, ptr %i.gn, align 8, !tbaa !145
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %indvars.iv1018
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !42 ; 8 uses
  %i.sf = mul i32 %i.se, %.4911                   ; 5 uses
  %i.sg = sdiv i32 %.3802909, %i.se               ; 5 uses
  switch i32 %i.se, label %bb.bn [
    i32 3, label %bb.bj
    i32 5, label %bb.bm
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.sh = load i8, ptr %i.rx, align 1, !tbaa !25, !range !44, !noundef !45
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.sj = load i32, ptr %i.e, align 4, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK2cv6DFT_R3IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %2, i32 noundef %i.sj, i32 noundef %i.sf, i32 noundef %i.sg, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.bt

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.sk = load i32, ptr %i.e, align 4, !tbaa !140
  call void @_ZNK2cv6DFT_R3IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef %2, i32 noundef %i.sk, i32 noundef %i.sf, i32 noundef %i.sg, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.bt

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.sl = load i32, ptr %i.e, align 4, !tbaa !140
  call void @_ZNK2cv6DFT_R5IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef %2, i32 noundef %i.sl, i32 noundef %i.sf, i32 noundef %i.sg, ptr noundef %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bi
  %i.sm = add nsw i32 %i.se, -1
  %i.sn = sdiv i32 %i.sm, 2                       ; 3 uses
  %i.so = load i32, ptr %i.j, align 8, !tbaa !142
  %i.sp = sdiv i32 %i.so, %i.se
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.sq = shl nsw i32 %i.sn, 1                    ; 2 uses
  %i.sr = sext i32 %i.sq to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %scevgep.i, i8 0, i64 1152, i1 false)
  store ptr %scevgep.i, ptr %20, align 8, !tbaa !542
  %.not.i.i = icmp ugt i32 %i.sq, 72
end_hunk_0
begin_hunk_1_@_ZNK2cv6DFT_R2IdEclEPNS_7ComplexIdEEiiiPKS3_:bb.a
  %i.ay = getelementptr inbounds [16 x i8], ptr %5, i64 %i.av
  %wide.vec148 = load <4 x double>, ptr %i.ay, align 8, !tbaa !113 ; 2 uses
  %strided.vec149 = shufflevector <4 x double> %wide.vec148, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec150 = shufflevector <4 x double> %wide.vec148, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.az = fneg <2 x double> %strided.vec150
  %i.ba = fmul <2 x double> %strided.vec147, %i.az
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec149, <2 x double> %i.ba) ; 2 uses
  %i.bc = fmul <2 x double> %strided.vec, %strided.vec150
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec147, <2 x double> %strided.vec149, <2 x double> %i.bc) ; 2 uses
  %wide.vec151 = load <4 x double>, ptr %i.aw, align 8, !tbaa !113 ; 2 uses
  %strided.vec152 = shufflevector <4 x double> %wide.vec151, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec153 = shufflevector <4 x double> %wide.vec151, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.be = fadd <2 x double> %strided.vec152, %i.bb
  %i.bf = fadd <2 x double> %strided.vec153, %i.bd
  %interleaved.vec = shufflevector <2 x double> %i.be, <2 x double> %i.bf, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.aw, align 8, !tbaa !113
  %i.bg = fsub <2 x double> %strided.vec152, %i.bb
  %i.bh = fsub <2 x double> %strided.vec153, %i.bd
  %interleaved.vec154 = shufflevector <2 x double> %i.bg, <2 x double> %i.bh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec154, ptr %i.ax, align 8, !tbaa !113
  %index.next155 = add nuw i64 %index146, 2       ; 2 uses
  %i.bi = icmp eq i64 %index.next155, %n.vec
  br i1 %i.bi, label %middle.block156, label %vector.body145, !llvm.loop !545

middle.block156:                                  ; preds = %vector.body145
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph142.preheader

scalar.ph142.preheader:                           ; preds = %vector.memcheck107, %.lr.ph.us, %middle.block156
  %indvars.iv81.ph = phi i64 [ 1, %vector.memcheck107 ], [ 1, %.lr.ph.us ], [ %i.al, %middle.block156 ]
  %indvars.iv79.ph = phi i64 [ %i.u, %vector.memcheck107 ], [ %i.u, %.lr.ph.us ], [ %i.al, %middle.block156 ]
  br label %scalar.ph142

scalar.ph142:                                     ; preds = %scalar.ph142.preheader, %scalar.ph142
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph142 ], [ %indvars.iv81.ph, %scalar.ph142.preheader ] ; 2 uses
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %scalar.ph142 ], [ %indvars.iv79.ph, %scalar.ph142.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv81 ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.c ; 2 uses
  %i.bl = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv79 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !133
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !134 ; 2 uses
  %i.bp = fneg double %i.bo
  %i.bq = load <2 x double>, ptr %i.bk, align 8, !tbaa !113 ; 2 uses
  %i.br = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bp, i64 1
  %i.bt = fmul <2 x double> %i.bq, %i.bs
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bw, <2 x double> %i.bu) ; 2 uses
  %i.by = load <2 x double>, ptr %i.bj, align 8, !tbaa !113 ; 2 uses
  %i.bz = fadd <2 x double> %i.by, %i.bx
  store <2 x double> %i.bz, ptr %i.bj, align 8, !tbaa !113
  %i.ca = fsub <2 x double> %i.by, %i.bx
  store <2 x double> %i.ca, ptr %i.bk, align 8, !tbaa !113
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, %i.u
  %exitcond.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph142, !llvm.loop !546

._crit_edge.us:                                   ; preds = %scalar.ph142, %middle.block156
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, %i.v ; 2 uses
  %i.cb = trunc nuw i64 %indvars.iv.next87 to i32
  %i.cc = icmp sgt i32 %2, %i.cb
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cc, label %.lr.ph.us, label %._crit_edge76, !llvm.loop !547

._crit_edge76:                                    ; preds = %vector.body, %.lr.ph75.split, %._crit_edge.us, %bb.a
  ret void

.lr.ph75.split:                                   ; preds = %.lr.ph75.split.preheader160, %.lr.ph75.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph75.split ], [ 0, %.lr.ph75.split.preheader160 ] ; 2 uses
  %i.cd = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.cd, i64 %i.c ; 2 uses
  %i.cf = load <2 x double>, ptr %i.cd, align 8, !tbaa !113 ; 2 uses
  %i.cg = load <2 x double>, ptr %i.ce, align 8, !tbaa !113 ; 2 uses
  %i.ch = fadd <2 x double> %i.cf, %i.cg
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !113
  %i.ci = fsub <2 x double> %i.cf, %i.cg
  store <2 x double> %i.ci, ptr %i.ce, align 8, !tbaa !113
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.e ; 2 uses
  %i.cj = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.cj, label %.lr.ph75.split, label %._crit_edge76, !llvm.loop !548
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R3IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 3                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %bb.a
  %i.c = sext i32 %i.a to i64                     ; 6 uses
  %i.d = shl nsw i32 %i.a, 1
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = icmp sgt i32 %3, 5
  br i1 %i.f, label %.lr.ph.us.preheader, label %.lr.ph133.split.preheader

.lr.ph133.split.preheader:                        ; preds = %.lr.ph133
  %i.g = sext i32 %3 to i64
  %i.h = zext nneg i32 %2 to i64                  ; 4 uses
  %min.iters.check = icmp ugt i32 %2, 17
  %ident.check.not = icmp eq i32 %3, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph133.split.preheader326

vector.memcheck:                                  ; preds = %.lr.ph133.split.preheader
  %i.i = shl nuw nsw i64 %i.h, 4                  ; 6 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8       ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.i
  %i.m = getelementptr i8, ptr %i.l, i64 -8       ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.i
  %i.o = getelementptr i8, ptr %i.n, i64 -8       ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %bound0 = icmp ult ptr %1, %i.m
  %bound1 = icmp ult ptr %1, %i.k
  %found.conflict = and i1 %bound0, %bound1
  %bound0179 = icmp ult ptr %1, %i.o
  %bound1180 = icmp ult ptr %1, %i.k
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx = or i1 %found.conflict, %found.conflict181
  %bound0182 = icmp ult ptr %1, %i.o
  %bound1183 = icmp ult ptr %1, %i.m
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx, %found.conflict184
  %bound0186 = icmp ult ptr %i.p, %i.s
  %bound1187 = icmp ult ptr %i.r, %i.q
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %i.p, %i.u
  %bound1191 = icmp ult ptr %i.t, %i.q
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %i.r, %i.u
  %bound1195 = icmp ult ptr %i.t, %i.s
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  br i1 %conflict.rdx197, label %.lr.ph133.split.preheader326, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483646               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %1, i64 %index ; 4 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.c ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.w, align 8, !tbaa !113 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec198 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.e ; 2 uses
  %wide.vec199 = load <4 x double>, ptr %i.x, align 8, !tbaa !113 ; 2 uses
  %strided.vec200 = shufflevector <4 x double> %wide.vec199, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec201 = shufflevector <4 x double> %wide.vec199, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.y = fadd <2 x double> %strided.vec, %strided.vec200 ; 2 uses
  %i.z = fadd <2 x double> %strided.vec198, %strided.vec201 ; 2 uses
  %wide.vec202 = load <4 x double>, ptr %i.v, align 8, !tbaa !113 ; 2 uses
  %strided.vec203 = shufflevector <4 x double> %wide.vec202, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec204 = shufflevector <4 x double> %wide.vec202, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aa = fsub <2 x double> %strided.vec198, %strided.vec201
  %i.ab = fmul <2 x double> %i.aa, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.ac = fsub <2 x double> %strided.vec200, %strided.vec
  %i.ad = fmul <2 x double> %i.ac, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.ae = fadd <2 x double> %i.y, %strided.vec203
  %i.af = fadd <2 x double> %i.z, %strided.vec204
  %interleaved.vec = shufflevector <2 x double> %i.ae, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.v, align 8, !tbaa !113
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec203) ; 2 uses
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec204) ; 2 uses
  %i.ai = fadd <2 x double> %i.ag, %i.ab
  %i.aj = fadd <2 x double> %i.ad, %i.ah
  %interleaved.vec205 = shufflevector <2 x double> %i.ai, <2 x double> %i.aj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec205, ptr %i.w, align 8, !tbaa !113
  %i.ak = fsub <2 x double> %i.ag, %i.ab
  %i.al = fsub <2 x double> %i.ah, %i.ad
  %interleaved.vec206 = shufflevector <2 x double> %i.ak, <2 x double> %i.al, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec206, ptr %i.x, align 8, !tbaa !113
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !549

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge134, label %.lr.ph133.split.preheader326

.lr.ph133.split.preheader326:                     ; preds = %vector.memcheck, %.lr.ph133.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph133.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph133.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph133
  %i.an = sext i32 %4 to i64                      ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2)
  %i.ao = zext nneg i32 %3 to i64                 ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = shl nuw nsw i64 %wide.trip.count, 4     ; 7 uses
  %i.ar = add nsw i64 %i.aq, -8                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.c, 4                 ; 4 uses
  %i.at = shl nuw nsw i64 %i.e, 4                 ; 4 uses
  %scevgep215 = getelementptr i8, ptr %5, i64 32  ; 3 uses
  %i.au = shl nuw nsw i64 %wide.trip.count, 5     ; 2 uses
  %i.av = getelementptr i8, ptr %5, i64 %i.au
  %scevgep216 = getelementptr i8, ptr %i.av, i64 -24 ; 3 uses
  %scevgep217 = getelementptr i8, ptr %5, i64 16  ; 3 uses
  %scevgep218 = getelementptr i8, ptr %5, i64 %i.ar ; 3 uses
  %scevgep225 = getelementptr i8, ptr %5, i64 40  ; 3 uses
  %i.aw = getelementptr i8, ptr %5, i64 %i.au
  %scevgep226 = getelementptr i8, ptr %i.aw, i64 -16 ; 3 uses
  %scevgep227 = getelementptr i8, ptr %5, i64 24  ; 3 uses
  %scevgep228 = getelementptr i8, ptr %5, i64 %i.aq ; 3 uses
  %min.iters.check301 = icmp sgt i32 %3, 23
  %ident.check208.not = icmp eq i32 %4, 1
  %or.cond325 = and i1 %min.iters.check301, %ident.check208.not
  %i.ax = getelementptr i8, ptr %1, i64 %i.at
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.aq
  %i.az = getelementptr i8, ptr %1, i64 %i.at
  %i.ba = getelementptr i8, ptr %i.az, i64 24
  %i.bb = getelementptr i8, ptr %1, i64 %i.as
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.aq
  %i.bd = getelementptr i8, ptr %1, i64 %i.as
  %i.be = getelementptr i8, ptr %i.bd, i64 24
  %i.bf = getelementptr i8, ptr %1, i64 %i.aq
  %i.bg = getelementptr i8, ptr %1, i64 %i.at
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.aq
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = getelementptr i8, ptr %1, i64 %i.at
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = getelementptr i8, ptr %1, i64 %i.as
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.aq
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = getelementptr i8, ptr %1, i64 %i.as
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = getelementptr i8, ptr %1, i64 %i.ar
  %6 = and i64 %wide.trip.count, 1073741822       ; 2 uses
  %n.vec303 = add nsw i64 %6, -1                  ; 2 uses
  %i.br = add nsw i64 %6, -4
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %indvars.iv144 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next145, %._crit_edge.us ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv144 ; 6 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.c ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.e ; 2 uses
  %i.bv = load <2 x double>, ptr %i.bt, align 8, !tbaa !113 ; 3 uses
  %i.bw = load <2 x double>, ptr %i.bu, align 8, !tbaa !113 ; 3 uses
  %i.bx = fadd <2 x double> %i.bv, %i.bw          ; 2 uses
  %i.by = load <2 x double>, ptr %i.bs, align 8, !tbaa !113 ; 2 uses
  %i.bz = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.ca = shufflevector <2 x double> %i.bw, <2 x double> %i.bv, <2 x i32> <i32 1, i32 2>
  %i.cb = fsub <2 x double> %i.bz, %i.ca
  %i.cc = fmul <2 x double> %i.cb, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.cd = fadd <2 x double> %i.bx, %i.by
  store <2 x double> %i.cd, ptr %i.bs, align 8, !tbaa !113
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> splat (double -5.000000e-01), <2 x double> %i.by) ; 2 uses
  %i.cf = fadd <2 x double> %i.ce, %i.cc
  store <2 x double> %i.cf, ptr %i.bt, align 8, !tbaa !113
  %i.cg = fsub <2 x double> %i.ce, %i.cc
  store <2 x double> %i.cg, ptr %i.bu, align 8, !tbaa !113
  br i1 %or.cond325, label %vector.memcheck209, label %scalar.ph300.preheader

vector.memcheck209:                               ; preds = %.lr.ph.us
  %i.ch = mul i64 %i.ap, %indvar                  ; 12 uses
  %scevgep224 = getelementptr i8, ptr %i.ay, i64 %i.ch ; 4 uses
  %scevgep223 = getelementptr i8, ptr %i.ba, i64 %i.ch ; 4 uses
  %scevgep222 = getelementptr i8, ptr %i.bc, i64 %i.ch ; 4 uses
  %scevgep221 = getelementptr i8, ptr %i.be, i64 %i.ch ; 4 uses
  %scevgep220 = getelementptr i8, ptr %i.bf, i64 %i.ch ; 4 uses
  %i.ci = getelementptr i8, ptr %1, i64 %i.ch
  %scevgep219 = getelementptr i8, ptr %i.ci, i64 24 ; 4 uses
  %scevgep214 = getelementptr i8, ptr %i.bi, i64 %i.ch ; 4 uses
  %scevgep213 = getelementptr i8, ptr %i.bk, i64 %i.ch ; 4 uses
  %scevgep212 = getelementptr i8, ptr %i.bn, i64 %i.ch ; 4 uses
  %scevgep211 = getelementptr i8, ptr %i.bp, i64 %i.ch ; 4 uses
  %scevgep210 = getelementptr i8, ptr %i.bq, i64 %i.ch ; 4 uses
  %i.cj = getelementptr i8, ptr %1, i64 %i.ch
  %scevgep = getelementptr i8, ptr %i.cj, i64 16  ; 4 uses
  %bound0229 = icmp ult ptr %scevgep, %scevgep212
  %bound1230 = icmp ult ptr %scevgep211, %scevgep210
  %found.conflict231 = and i1 %bound0229, %bound1230
  %bound0232 = icmp ult ptr %scevgep, %scevgep214
  %bound1233 = icmp ult ptr %scevgep213, %scevgep210
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %found.conflict231, %found.conflict234
  %bound0236 = icmp ult ptr %scevgep, %scevgep216
  %bound1237 = icmp ult ptr %scevgep215, %scevgep210
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %scevgep, %scevgep218
  %bound1241 = icmp ult ptr %scevgep217, %scevgep210
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  %bound0244 = icmp ult ptr %scevgep211, %scevgep214
  %bound1245 = icmp ult ptr %scevgep213, %scevgep212
  %found.conflict246 = and i1 %bound0244, %bound1245
  %conflict.rdx247 = or i1 %conflict.rdx243, %found.conflict246
  %bound0248 = icmp ult ptr %scevgep211, %scevgep216
  %bound1249 = icmp ult ptr %scevgep215, %scevgep212
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx247, %found.conflict250
  %bound0252 = icmp ult ptr %scevgep211, %scevgep218
  %bound1253 = icmp ult ptr %scevgep217, %scevgep212
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  %bound0256 = icmp ult ptr %scevgep213, %scevgep216
  %bound1257 = icmp ult ptr %scevgep215, %scevgep214
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  %bound0260 = icmp ult ptr %scevgep213, %scevgep218
  %bound1261 = icmp ult ptr %scevgep217, %scevgep214
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %scevgep219, %scevgep222
  %bound1265 = icmp ult ptr %scevgep221, %scevgep220
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  %bound0268 = icmp ult ptr %scevgep219, %scevgep224
  %bound1269 = icmp ult ptr %scevgep223, %scevgep220
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  %bound0272 = icmp ult ptr %scevgep219, %scevgep226
  %bound1273 = icmp ult ptr %scevgep225, %scevgep220
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %scevgep219, %scevgep228
  %bound1277 = icmp ult ptr %scevgep227, %scevgep220
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %scevgep221, %scevgep224
  %bound1281 = icmp ult ptr %scevgep223, %scevgep222
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  %bound0284 = icmp ult ptr %scevgep221, %scevgep226
  %bound1285 = icmp ult ptr %scevgep225, %scevgep222
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx283, %found.conflict286
  %bound0288 = icmp ult ptr %scevgep221, %scevgep228
  %bound1289 = icmp ult ptr %scevgep227, %scevgep222
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  %bound0292 = icmp ult ptr %scevgep223, %scevgep226
  %bound1293 = icmp ult ptr %scevgep225, %scevgep224
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %scevgep223, %scevgep228
  %bound1297 = icmp ult ptr %scevgep227, %scevgep224
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  br i1 %conflict.rdx299, label %scalar.ph300.preheader, label %vector.body304

vector.body304:                                   ; preds = %vector.memcheck209, %vector.body304
  %index305 = phi i64 [ %index.next321, %vector.body304 ], [ 0, %vector.memcheck209 ] ; 4 uses
  %i.ck = or disjoint i64 %index305, 1            ; 3 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.ck ; 4 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.c ; 2 uses
  %wide.vec306 = load <4 x double>, ptr %i.cm, align 8, !tbaa !113 ; 2 uses
  %strided.vec307 = shufflevector <4 x double> %wide.vec306, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec308 = shufflevector <4 x double> %wide.vec306, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cn = getelementptr inbounds [16 x i8], ptr %5, i64 %i.ck
  %wide.vec309 = load <4 x double>, ptr %i.cn, align 8, !tbaa !113 ; 2 uses
  %strided.vec310 = shufflevector <4 x double> %wide.vec309, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec311 = shufflevector <4 x double> %wide.vec309, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.co = fneg <2 x double> %strided.vec311
  %i.cp = fmul <2 x double> %strided.vec308, %i.co
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec307, <2 x double> %strided.vec310, <2 x double> %i.cp) ; 2 uses
  %i.cr = fmul <2 x double> %strided.vec310, %strided.vec308
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec307, <2 x double> %strided.vec311, <2 x double> %i.cr) ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.e ; 2 uses
  %wide.vec312 = load <4 x double>, ptr %i.ct, align 8, !tbaa !113 ; 2 uses
  %strided.vec313 = shufflevector <4 x double> %wide.vec312, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec314 = shufflevector <4 x double> %wide.vec312, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cu = shl nsw i64 %i.ck, 5
  %i.cv = shl i64 %index305, 5
  %i.cw = getelementptr inbounds i8, ptr %5, i64 %i.cu ; 2 uses
  %i.cx = getelementptr i8, ptr %5, i64 %i.cv     ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 64
  %i.cz = load double, ptr %i.cw, align 8, !tbaa !133, !alias.scope !557
  %i.da = load double, ptr %i.cy, align 8, !tbaa !133, !alias.scope !557
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = getelementptr i8, ptr %i.cx, i64 72
  %i.df = load double, ptr %i.dd, align 8, !tbaa !134, !alias.scope !558
  %i.dg = load double, ptr %i.de, align 8, !tbaa !134, !alias.scope !558
  %i.dh = insertelement <2 x double> poison, double %i.df, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.dg, i64 1 ; 2 uses
  %i.dj = fneg <2 x double> %i.di
  %i.dk = fmul <2 x double> %strided.vec314, %i.dj
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec313, <2 x double> %i.dc, <2 x double> %i.dk) ; 2 uses
  %i.dm = fmul <2 x double> %i.dc, %strided.vec314
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec313, <2 x double> %i.di, <2 x double> %i.dm) ; 2 uses
  %i.do = fadd <2 x double> %i.cq, %i.dl          ; 2 uses
  %i.dp = fadd <2 x double> %i.cs, %i.dn          ; 2 uses
  %i.dq = fsub <2 x double> %i.cs, %i.dn
  %i.dr = fmul <2 x double> %i.dq, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.ds = fsub <2 x double> %i.dl, %i.cq
  %i.dt = fmul <2 x double> %i.ds, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %wide.vec315 = load <4 x double>, ptr %i.cl, align 8, !tbaa !113 ; 2 uses
  %strided.vec316 = shufflevector <4 x double> %wide.vec315, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec317 = shufflevector <4 x double> %wide.vec315, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.du = fadd <2 x double> %strided.vec316, %i.do
  %i.dv = fadd <2 x double> %strided.vec317, %i.dp
  %interleaved.vec318 = shufflevector <2 x double> %i.du, <2 x double> %i.dv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec318, ptr %i.cl, align 8, !tbaa !113
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec316) ; 2 uses
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> splat (double -5.000000e-01), <2 x double> %strided.vec317) ; 2 uses
  %i.dy = fadd <2 x double> %i.dr, %i.dw
  %i.dz = fadd <2 x double> %i.dx, %i.dt
  %interleaved.vec319 = shufflevector <2 x double> %i.dy, <2 x double> %i.dz, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec319, ptr %i.cm, align 8, !tbaa !113
  %i.ea = fsub <2 x double> %i.dw, %i.dr
  %i.eb = fsub <2 x double> %i.dx, %i.dt
  %interleaved.vec320 = shufflevector <2 x double> %i.ea, <2 x double> %i.eb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec320, ptr %i.ct, align 8, !tbaa !113
  %index.next321 = add nuw i64 %index305, 2
  %i.ec = icmp eq i64 %index305, %i.br
  br i1 %i.ec, label %scalar.ph300.preheader, label %vector.body304, !llvm.loop !553

scalar.ph300.preheader:                           ; preds = %vector.body304, %vector.memcheck209, %.lr.ph.us
  %indvars.iv139.ph = phi i64 [ %i.an, %vector.memcheck209 ], [ %i.an, %.lr.ph.us ], [ %n.vec303, %vector.body304 ]
  %indvars.iv137.ph = phi i64 [ 1, %vector.memcheck209 ], [ 1, %.lr.ph.us ], [ %n.vec303, %vector.body304 ]
  br label %scalar.ph300

scalar.ph300:                                     ; preds = %scalar.ph300.preheader, %scalar.ph300
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph300 ], [ %indvars.iv139.ph, %scalar.ph300.preheader ] ; 3 uses
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph300 ], [ %indvars.iv137.ph, %scalar.ph300.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %indvars.iv137 ; 4 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.c ; 3 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !133 ; 2 uses
  %i.eg = getelementptr inbounds [16 x i8], ptr %5, i64 %indvars.iv139 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !134 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.e ; 3 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !133 ; 2 uses
  %.idx = shl nsw i64 %indvars.iv139, 5
  %i.em = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load double, ptr %i.en, align 8, !tbaa !134 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eq = load double, ptr %i.eg, align 8, !tbaa !133 ; 2 uses
  %i.er = load double, ptr %i.ej, align 8, !tbaa !134 ; 2 uses
  %i.es = fneg double %i.er
  %i.et = fmul double %i.eq, %i.ei
  %i.eu = load double, ptr %i.em, align 8, !tbaa !133 ; 2 uses
  %i.ev = load double, ptr %i.ep, align 8, !tbaa !134 ; 2 uses
  %i.ew = fneg double %i.ev
  %i.ex = fmul double %i.eo, %i.ew
  %i.ey = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.el, i64 1
  %i.fa = insertelement <2 x double> poison, double %i.er, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.eu, i64 1
  %i.fc = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.ex, i64 1
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fb, <2 x double> %i.fd) ; 2 uses
  %i.ff = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.ei, i64 1
  %i.fh = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.es, i64 1
  %i.fj = fmul <2 x double> %i.fg, %i.fi
  %i.fk = insertelement <2 x double> poison, double %i.el, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.ef, i64 1
  %i.fm = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.eq, i64 1
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fn, <2 x double> %i.fj) ; 2 uses
  %i.fp = fsub <2 x double> %i.fe, %i.fo
  %i.fq = fmul <2 x double> %i.fp, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.fr = load <2 x double>, ptr %i.ed, align 8, !tbaa !113 ; 2 uses
  %i.fs = fadd <2 x double> %i.fe, %i.fo
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fu = fadd <2 x double> %i.fr, %i.ft
  store <2 x double> %i.fu, ptr %i.ed, align 8, !tbaa !113
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> splat (double -5.000000e-01), <2 x double> %i.fr) ; 2 uses
  %i.fw = fadd <2 x double> %i.fq, %i.fv
  store <2 x double> %i.fw, ptr %i.ee, align 8, !tbaa !113
  %i.fx = fsub <2 x double> %i.fv, %i.fq
  store <2 x double> %i.fx, ptr %i.ek, align 8, !tbaa !113
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, %i.an
  %exitcond.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph300, !llvm.loop !554

._crit_edge.us:                                   ; preds = %scalar.ph300
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, %i.ao ; 2 uses
  %i.fy = trunc nuw i64 %indvars.iv.next145 to i32
  %i.fz = icmp sgt i32 %2, %i.fy
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fz, label %.lr.ph.us, label %._crit_edge134, !llvm.loop !555

._crit_edge134:                                   ; preds = %.lr.ph133.split, %._crit_edge.us, %middle.block, %bb.a
  ret void

.lr.ph133.split:                                  ; preds = %.lr.ph133.split.preheader326, %.lr.ph133.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph133.split ], [ %indvars.iv.ph, %.lr.ph133.split.preheader326 ] ; 2 uses
  %i.ga = getelementptr inbounds [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.c ; 2 uses
  %i.gc = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.e ; 2 uses
  %i.gd = load <2 x double>, ptr %i.gb, align 8, !tbaa !113 ; 3 uses
  %i.ge = load <2 x double>, ptr %i.gc, align 8, !tbaa !113 ; 3 uses
  %i.gf = fadd <2 x double> %i.gd, %i.ge          ; 2 uses
  %i.gg = load <2 x double>, ptr %i.ga, align 8, !tbaa !113 ; 2 uses
  %i.gh = shufflevector <2 x double> %i.gd, <2 x double> %i.ge, <2 x i32> <i32 1, i32 2>
  %i.gi = shufflevector <2 x double> %i.ge, <2 x double> %i.gd, <2 x i32> <i32 1, i32 2>
  %i.gj = fsub <2 x double> %i.gh, %i.gi
  %i.gk = fmul <2 x double> %i.gj, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.gl = fadd <2 x double> %i.gf, %i.gg
  store <2 x double> %i.gl, ptr %i.ga, align 8, !tbaa !113
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> splat (double -5.000000e-01), <2 x double> %i.gg) ; 2 uses
  %i.gn = fadd <2 x double> %i.gm, %i.gk
  store <2 x double> %i.gn, ptr %i.gb, align 8, !tbaa !113
  %i.go = fsub <2 x double> %i.gm, %i.gk
  store <2 x double> %i.go, ptr %i.gc, align 8, !tbaa !113
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.g ; 2 uses
  %i.gp = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.gp, label %.lr.ph133.split, label %._crit_edge134, !llvm.loop !556
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv6DFT_R5IdEclEPNS_7ComplexIdEEiiiPKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %3, 5                           ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge166.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 4
  %i.d = shl nsw i32 %i.a, 1
  %i.e = zext i32 %i.d to i64                     ; 6 uses
  %i.f = sext i32 %i.a to i64                     ; 5 uses
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge166.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.g = sext i32 %4 to i64
  %i.h = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 6 uses
  %i.i = shl nuw nsw i64 %wide.trip.count, 4      ; 11 uses
  %i.j = add nsw i64 %i.i, -8                     ; 2 uses
  %i.k = shl nuw nsw i64 %i.h, 4
  %i.l = shl nuw nsw i64 %i.f, 4                  ; 8 uses
  %i.m = shl nuw nsw i64 %i.e, 5                  ; 4 uses
  %i.n = shl nuw nsw i64 %i.e, 4                  ; 8 uses
  %i.o = shl nuw nsw i64 %wide.trip.count, 5      ; 2 uses
  %i.p = getelementptr i8, ptr %5, i64 %i.o
  %i.q = mul nuw nsw i64 %wide.trip.count, 48     ; 2 uses
  %i.r = getelementptr i8, ptr %5, i64 %i.q
  %i.s = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.t = insertelement <2 x ptr> %i.s, ptr %i.r, i64 1 ; 2 uses
  %i.u = getelementptr i8, <2 x ptr> %i.t, <2 x i64> <i64 -24, i64 -40>
  %i.v = getelementptr i8, <2 x ptr> %i.t, <2 x i64> <i64 -24, i64 -40>
  %i.w = shl nuw nsw i64 %wide.trip.count, 6      ; 2 uses
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %scevgep188 = getelementptr i8, ptr %i.x, i64 -56 ; 2 uses
  %scevgep189 = getelementptr i8, ptr %5, i64 %i.j ; 2 uses
  %scevgep200 = getelementptr i8, ptr %5, i64 8
  %i.y = getelementptr i8, ptr %5, i64 %i.o
  %i.z = getelementptr i8, ptr %5, i64 %i.q
  %i.aa = insertelement <2 x ptr> poison, ptr %i.y, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %i.z, i64 1 ; 2 uses
  %i.ac = getelementptr i8, <2 x ptr> %i.ab, <2 x i64> <i64 -16, i64 -32>
  %i.ad = getelementptr i8, <2 x ptr> %i.ab, <2 x i64> <i64 -16, i64 -32>
  %i.ae = getelementptr i8, ptr %5, i64 %i.w
  %scevgep203 = getelementptr i8, ptr %i.ae, i64 -48 ; 2 uses
  %scevgep204 = getelementptr i8, ptr %5, i64 %i.i ; 2 uses
  %i.af = insertelement <4 x ptr> poison, ptr %5, i64 0 ; 5 uses
  %i.ag = insertelement <4 x ptr> poison, ptr %scevgep200, i64 0 ; 5 uses
  %i.ah = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <2 x ptr> %i.ad, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <2 x ptr> %i.u, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <2 x ptr> %i.v, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %min.iters.check = icmp ugt i32 %3, 44
  %ident.check.not = icmp eq i32 %4, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %i.al = getelementptr i8, ptr %1, i64 %i.l
  %i.am = getelementptr i8, ptr %i.al, i64 %i.i
  %i.an = getelementptr i8, ptr %i.am, i64 %i.n
  %i.ao = getelementptr i8, ptr %1, i64 %i.l
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.n
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = getelementptr i8, ptr %1, i64 %i.i
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.n
  %i.at = getelementptr i8, ptr %1, i64 %i.n
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = getelementptr i8, ptr %1, i64 %i.m
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.i
  %i.ax = getelementptr i8, ptr %1, i64 %i.m
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = getelementptr i8, ptr %1, i64 %i.l
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.i
  %i.bb = getelementptr i8, ptr %1, i64 %i.l
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = getelementptr i8, ptr %1, i64 %i.i
  %i.be = getelementptr i8, ptr %1, i64 %i.l
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.n
  %i.bh = getelementptr i8, ptr %i.bg, i64 -8
  %i.bi = getelementptr i8, ptr %1, i64 %i.l
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.n
  %i.bk = getelementptr i8, ptr %1, i64 %i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.n
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = getelementptr i8, ptr %1, i64 %i.n
  %i.bo = getelementptr i8, ptr %1, i64 %i.m
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8
  %i.br = getelementptr i8, ptr %1, i64 %i.m
  %i.bs = getelementptr i8, ptr %1, i64 %i.l
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = getelementptr i8, ptr %1, i64 %i.l
  %i.bw = getelementptr i8, ptr %1, i64 %i.j
  %i.bx = insertelement <4 x ptr> %i.ak, ptr %scevgep188, i64 2
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep189, i64 3 ; 4 uses
  %i.bz = insertelement <4 x ptr> %i.aj, ptr %scevgep188, i64 2
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %scevgep189, i64 3
  %i.cb = insertelement <4 x ptr> %i.ai, ptr %scevgep203, i64 2
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %scevgep204, i64 3 ; 4 uses
  %i.cd = insertelement <4 x ptr> %i.ah, ptr %scevgep203, i64 2
  %i.ce = insertelement <4 x ptr> %i.cd, ptr %scevgep204, i64 3
  %6 = add nsw i64 %wide.trip.count, -1
  %n.vec = and i64 %6, -2                         ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv172 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next173, %._crit_edge ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv172 ; 7 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.preheader
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %vector.body ] ; 2 uses
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.preheader
  %i.cg = mul i64 %i.k, %indvar                   ; 19 uses
  %scevgep199 = getelementptr i8, ptr %i.an, i64 %i.cg ; 5 uses
  %scevgep198 = getelementptr i8, ptr %i.aq, i64 %i.cg ; 5 uses
  %scevgep197 = getelementptr i8, ptr %i.as, i64 %i.cg ; 5 uses
  %scevgep196 = getelementptr i8, ptr %i.au, i64 %i.cg ; 5 uses
  %scevgep195 = getelementptr i8, ptr %i.aw, i64 %i.cg ; 5 uses
  %scevgep194 = getelementptr i8, ptr %i.ay, i64 %i.cg ; 5 uses
  %scevgep193 = getelementptr i8, ptr %i.ba, i64 %i.cg ; 5 uses
  %scevgep192 = getelementptr i8, ptr %i.bc, i64 %i.cg ; 5 uses
  %scevgep191 = getelementptr i8, ptr %i.bd, i64 %i.cg ; 5 uses
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  %scevgep190 = getelementptr i8, ptr %i.ch, i64 8 ; 5 uses
  %scevgep185 = getelementptr i8, ptr %i.bh, i64 %i.cg ; 5 uses
  %scevgep184 = getelementptr i8, ptr %i.bj, i64 %i.cg ; 5 uses
  %scevgep183 = getelementptr i8, ptr %i.bm, i64 %i.cg ; 5 uses
  %scevgep182 = getelementptr i8, ptr %i.bn, i64 %i.cg ; 5 uses
  %scevgep181 = getelementptr i8, ptr %i.bq, i64 %i.cg ; 5 uses
  %scevgep180 = getelementptr i8, ptr %i.br, i64 %i.cg ; 5 uses
  %scevgep179 = getelementptr i8, ptr %i.bu, i64 %i.cg ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.bv, i64 %i.cg ; 5 uses
  %scevgep = getelementptr i8, ptr %i.bw, i64 %i.cg ; 5 uses
  %bound0 = icmp ult ptr %i.cf, %scevgep179
  %bound1 = icmp ult ptr %scevgep178, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0205 = icmp ult ptr %i.cf, %scevgep181
  %bound1206 = icmp ult ptr %scevgep180, %scevgep
  %found.conflict207 = and i1 %bound0205, %bound1206
  %bound0208 = icmp ult ptr %i.cf, %scevgep183
  %bound1209 = icmp ult ptr %scevgep182, %scevgep
  %found.conflict210 = and i1 %bound0208, %bound1209
  %bound0212 = icmp ult ptr %i.cf, %scevgep185
  %bound1213 = icmp ult ptr %scevgep184, %scevgep
  %found.conflict214 = and i1 %bound0212, %bound1213
  %i.ci = insertelement <4 x ptr> poison, ptr %i.cf, i64 0
  %i.cj = shufflevector <4 x ptr> %i.ci, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ck = icmp ult <4 x ptr> %i.cj, %i.by
  %i.cl = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cm = icmp ult <4 x ptr> %i.af, %i.cl
  %i.cn = shufflevector <4 x i1> %i.cm, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.co = and <4 x i1> %i.ck, %i.cn
  %bound0232 = icmp ult ptr %scevgep178, %scevgep181
  %bound1233 = icmp ult ptr %scevgep180, %scevgep179
  %found.conflict234 = and i1 %bound0232, %bound1233
  %bound0236 = icmp ult ptr %scevgep178, %scevgep183
  %bound1237 = icmp ult ptr %scevgep182, %scevgep179
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0240 = icmp ult ptr %scevgep178, %scevgep185
  %bound1241 = icmp ult ptr %scevgep184, %scevgep179
  %found.conflict242 = and i1 %bound0240, %bound1241
  %i.cp = insertelement <4 x ptr> poison, ptr %scevgep178, i64 0
  %i.cq = shufflevector <4 x ptr> %i.cp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cr = icmp ult <4 x ptr> %i.cq, %i.by
  %i.cs = insertelement <4 x ptr> poison, ptr %scevgep179, i64 0
  %i.ct = icmp ult <4 x ptr> %i.af, %i.cs
  %i.cu = shufflevector <4 x i1> %i.ct, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.cv = and <4 x i1> %i.cr, %i.cu
  %bound0260 = icmp ult ptr %scevgep180, %scevgep183
  %bound1261 = icmp ult ptr %scevgep182, %scevgep181
  %found.conflict262 = and i1 %bound0260, %bound1261
  %bound0264 = icmp ult ptr %scevgep180, %scevgep185
  %bound1265 = icmp ult ptr %scevgep184, %scevgep181
  %found.conflict266 = and i1 %bound0264, %bound1265
  %i.cw = insertelement <4 x ptr> poison, ptr %scevgep180, i64 0
  %i.cx = shufflevector <4 x ptr> %i.cw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cy = icmp ult <4 x ptr> %i.cx, %i.by
  %i.cz = insertelement <4 x ptr> poison, ptr %scevgep181, i64 0
  %i.da = icmp ult <4 x ptr> %i.af, %i.cz
  %i.db = shufflevector <4 x i1> %i.da, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dc = and <4 x i1> %i.cy, %i.db
  %bound0284 = icmp ult ptr %scevgep182, %scevgep185
  %bound1285 = icmp ult ptr %scevgep184, %scevgep183
  %found.conflict286 = and i1 %bound0284, %bound1285
  %i.dd = insertelement <4 x ptr> poison, ptr %scevgep182, i64 0
  %i.de = shufflevector <4 x ptr> %i.dd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.df = icmp ult <4 x ptr> %i.de, %i.by
  %i.dg = insertelement <4 x ptr> poison, ptr %scevgep183, i64 0
  %i.dh = icmp ult <4 x ptr> %i.af, %i.dg
  %i.di = shufflevector <4 x i1> %i.dh, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dj = and <4 x i1> %i.df, %i.di
  %i.dk = insertelement <4 x ptr> poison, ptr %scevgep184, i64 0
  %i.dl = shufflevector <4 x ptr> %i.dk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dm = icmp ult <4 x ptr> %i.dl, %i.ca
  %i.dn = insertelement <4 x ptr> poison, ptr %scevgep185, i64 0
  %i.do = icmp ult <4 x ptr> %i.af, %i.dn
  %i.dp = shufflevector <4 x i1> %i.do, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dq = and <4 x i1> %i.dm, %i.dp
  %bound0320 = icmp ult ptr %scevgep190, %scevgep193
  %bound1321 = icmp ult ptr %scevgep192, %scevgep191
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0324 = icmp ult ptr %scevgep190, %scevgep195
  %bound1325 = icmp ult ptr %scevgep194, %scevgep191
  %found.conflict326 = and i1 %bound0324, %bound1325
  %bound0328 = icmp ult ptr %scevgep190, %scevgep197
  %bound1329 = icmp ult ptr %scevgep196, %scevgep191
  %found.conflict330 = and i1 %bound0328, %bound1329
  %bound0332 = icmp ult ptr %scevgep190, %scevgep199
  %bound1333 = icmp ult ptr %scevgep198, %scevgep191
  %found.conflict334 = and i1 %bound0332, %bound1333
  %i.dr = insertelement <4 x ptr> poison, ptr %scevgep190, i64 0
  %i.ds = shufflevector <4 x ptr> %i.dr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dt = icmp ult <4 x ptr> %i.ds, %i.cc
  %i.du = insertelement <4 x ptr> poison, ptr %scevgep191, i64 0
  %i.dv = icmp ult <4 x ptr> %i.ag, %i.du
  %i.dw = shufflevector <4 x i1> %i.dv, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.dx = and <4 x i1> %i.dt, %i.dw
  %bound0352 = icmp ult ptr %scevgep192, %scevgep195
  %bound1353 = icmp ult ptr %scevgep194, %scevgep193
  %found.conflict354 = and i1 %bound0352, %bound1353
  %bound0356 = icmp ult ptr %scevgep192, %scevgep197
  %bound1357 = icmp ult ptr %scevgep196, %scevgep193
  %found.conflict358 = and i1 %bound0356, %bound1357
  %bound0360 = icmp ult ptr %scevgep192, %scevgep199
  %bound1361 = icmp ult ptr %scevgep198, %scevgep193
  %found.conflict362 = and i1 %bound0360, %bound1361
  %i.dy = insertelement <4 x ptr> poison, ptr %scevgep192, i64 0
  %i.dz = shufflevector <4 x ptr> %i.dy, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ea = icmp ult <4 x ptr> %i.dz, %i.cc
  %i.eb = insertelement <4 x ptr> poison, ptr %scevgep193, i64 0
  %i.ec = icmp ult <4 x ptr> %i.ag, %i.eb
  %i.ed = shufflevector <4 x i1> %i.ec, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ee = and <4 x i1> %i.ea, %i.ed
  %bound0380 = icmp ult ptr %scevgep194, %scevgep197
  %bound1381 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict382 = and i1 %bound0380, %bound1381
  %bound0384 = icmp ult ptr %scevgep194, %scevgep199
  %bound1385 = icmp ult ptr %scevgep198, %scevgep195
  %found.conflict386 = and i1 %bound0384, %bound1385
  %i.ef = insertelement <4 x ptr> poison, ptr %scevgep194, i64 0
  %i.eg = shufflevector <4 x ptr> %i.ef, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eh = icmp ult <4 x ptr> %i.eg, %i.cc
  %i.ei = insertelement <4 x ptr> poison, ptr %scevgep195, i64 0
  %i.ej = icmp ult <4 x ptr> %i.ag, %i.ei
  %i.ek = shufflevector <4 x i1> %i.ej, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.el = and <4 x i1> %i.eh, %i.ek
  %bound0404 = icmp ult ptr %scevgep196, %scevgep199
  %bound1405 = icmp ult ptr %scevgep198, %scevgep197
  %found.conflict406 = and i1 %bound0404, %bound1405
  %i.em = insertelement <4 x ptr> poison, ptr %scevgep196, i64 0
  %i.en = shufflevector <4 x ptr> %i.em, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.eo = icmp ult <4 x ptr> %i.en, %i.cc
  %i.ep = insertelement <4 x ptr> poison, ptr %scevgep197, i64 0
  %i.eq = icmp ult <4 x ptr> %i.ag, %i.ep
  %i.er = shufflevector <4 x i1> %i.eq, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.es = and <4 x i1> %i.eo, %i.er
  %i.et = insertelement <4 x ptr> poison, ptr %scevgep198, i64 0
  %i.eu = shufflevector <4 x ptr> %i.et, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ev = icmp ult <4 x ptr> %i.eu, %i.ce
  %i.ew = insertelement <4 x ptr> poison, ptr %scevgep199, i64 0
  %i.ex = icmp ult <4 x ptr> %i.ag, %i.ew
  %i.ey = shufflevector <4 x i1> %i.ex, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.ez = and <4 x i1> %i.ev, %i.ey
  %rdx.op = or <4 x i1> %i.co, %i.cv
  %rdx.op460 = or <4 x i1> %rdx.op, %i.dc
  %rdx.op461 = or <4 x i1> %rdx.op460, %i.dj
  %rdx.op462 = or <4 x i1> %rdx.op461, %i.dq
  %rdx.op463 = or <4 x i1> %rdx.op462, %i.dx
  %rdx.op464 = or <4 x i1> %rdx.op463, %i.ee
  %rdx.op465 = or <4 x i1> %rdx.op464, %i.el
  %rdx.op466 = or <4 x i1> %rdx.op465, %i.es
  %rdx.op467 = or <4 x i1> %rdx.op466, %i.ez
  %i.fa = bitcast <4 x i1> %rdx.op467 to i4
  %i.fb = icmp ne i4 %i.fa, 0
  %op.rdx = or i1 %i.fb, %found.conflict
  %op.rdx468 = or i1 %found.conflict207, %found.conflict210
  %op.rdx469 = or i1 %found.conflict214, %found.conflict234
  %op.rdx470 = or i1 %found.conflict238, %found.conflict242
  %op.rdx471 = or i1 %found.conflict262, %found.conflict266
  %op.rdx472 = or i1 %found.conflict286, %found.conflict322
  %op.rdx473 = or i1 %found.conflict326, %found.conflict330
  %op.rdx474 = or i1 %found.conflict334, %found.conflict354
  %op.rdx475 = or i1 %found.conflict358, %found.conflict362
  %op.rdx476 = or i1 %found.conflict382, %found.conflict386
  %op.rdx477 = or i1 %op.rdx, %op.rdx468
  %op.rdx478 = or i1 %op.rdx469, %op.rdx470
  %op.rdx479 = or i1 %op.rdx471, %op.rdx472
  %op.rdx480 = or i1 %op.rdx473, %op.rdx474
  %op.rdx481 = or i1 %op.rdx475, %op.rdx476
  %op.rdx482 = or i1 %op.rdx477, %op.rdx478
  %op.rdx483 = or i1 %op.rdx479, %op.rdx480
  %op.rdx484 = or i1 %op.rdx481, %found.conflict406
  %op.rdx485 = or i1 %op.rdx482, %op.rdx483
  %op.rdx486 = or i1 %op.rdx485, %op.rdx484
  br i1 %op.rdx486, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 7 uses
  %i.fc = or disjoint i64 %index, 1               ; 3 uses
end_hunk_1
