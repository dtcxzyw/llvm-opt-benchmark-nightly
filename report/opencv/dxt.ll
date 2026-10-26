Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cvL3DFTIfEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit733.thread791

bb.ay:                                            ; preds = %bb.av
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752: ; preds = %bb.ay
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !52
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit754: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752, %bb.ax
  %.pn705 = phi { ptr, i32 } [ %i.fb, %bb.ax ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i752 ], [ %i.fc, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bx

bb.az:                                            ; preds = %bb.at
  %i.fi = zext nneg i32 %i.ez to i64              ; 2 uses
  %i.fj = icmp samesign ult i64 %indvars.iv936, %i.fi
  br i1 %i.fj, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv936 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 4, !tbaa !109
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fi ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 4, !tbaa !109
  store i64 %i.fn, ptr %i.fk, align 4, !tbaa !109
  store i64 %i.fl, ptr %i.fm, align 4, !tbaa !109
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %indvars.iv.next937 = add nuw nsw i64 %indvars.iv936, 1 ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %.3818, i64 %i.dq
  %exitcond.not = icmp eq i64 %indvars.iv.next937, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit801, label %bb.at, !llvm.loop !441

.loopexit801:                                     ; preds = %bb.bb, %bb.as, %.preheader802, %bb.aj, %bb.ai, %bb.aa
  br i1 %i.i, label %.preheader800, label %bb.bd

.preheader800:                                    ; preds = %.loopexit801
  %.not709824 = icmp slt i32 %i.f, 2
  br i1 %.not709824, label %._crit_edge827, label %.lr.ph826.preheader

.lr.ph826.preheader:                              ; preds = %.preheader800
  %i.fp = add nsw i32 %i.f, -2
  %i.fq = lshr i32 %i.fp, 1                       ; 2 uses
  %narrow = add nuw i32 %i.fq, 1                  ; 2 uses
  %i.fr = zext i32 %narrow to i64                 ; 2 uses
  %xtraiter = and i64 %i.fr, 1
  %i.fs = icmp eq i32 %i.fq, 0
  br i1 %i.fs, label %.lr.ph826.epil.preheader, label %.lr.ph826.preheader.new

.lr.ph826.preheader.new:                          ; preds = %.lr.ph826.preheader
  %unroll_iter = and i64 %i.fr, 4294967294
  br label %.lr.ph826

.lr.ph826:                                        ; preds = %.lr.ph826, %.lr.ph826.preheader.new
  %indvars.iv942 = phi i64 [ 0, %.lr.ph826.preheader.new ], [ %indvars.iv.next943.1, %.lr.ph826 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph826.preheader.new ], [ %niter.next.1, %.lr.ph826 ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv942 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !137
  %i.fw = fneg float %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 12 ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !137
  %i.fz = fneg float %i.fy
  store float %i.fw, ptr %i.fu, align 4, !tbaa !137
  store float %i.fz, ptr %i.fx, align 4, !tbaa !137
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv942 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 20 ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !137
  %i.gd = fneg float %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 28 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !137
  %i.gg = fneg float %i.gf
  store float %i.gd, ptr %i.gb, align 4, !tbaa !137
  store float %i.gg, ptr %i.ge, align 4, !tbaa !137
  %indvars.iv.next943.1 = add nuw nsw i64 %indvars.iv942, 4 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge827.loopexit.unr-lcssa, label %.lr.ph826, !llvm.loop !442

._crit_edge827.loopexit.unr-lcssa:                ; preds = %.lr.ph826
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge827.loopexit, label %.lr.ph826.epil.preheader

.lr.ph826.epil.preheader:                         ; preds = %._crit_edge827.loopexit.unr-lcssa, %.lr.ph826.preheader
  %indvars.iv942.epil.init = phi i64 [ 0, %.lr.ph826.preheader ], [ %indvars.iv.next943.1, %._crit_edge827.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1458 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1458)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv942.epil.init ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !137
  %i.gk = fneg float %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 12 ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !137
  %i.gn = fneg float %i.gm
  store float %i.gk, ptr %i.gi, align 4, !tbaa !137
  store float %i.gn, ptr %i.gl, align 4, !tbaa !137
  %indvars.iv.next943.epil = add nuw nsw i64 %indvars.iv942.epil.init, 2
  br label %._crit_edge827.loopexit

._crit_edge827.loopexit:                          ; preds = %._crit_edge827.loopexit.unr-lcssa, %.lr.ph826.epil.preheader
  %indvars.iv.next943.lcssa = phi i64 [ %indvars.iv.next943.1, %._crit_edge827.loopexit.unr-lcssa ], [ %indvars.iv.next943.epil, %.lr.ph826.epil.preheader ]
  %i.go = trunc nuw nsw i64 %indvars.iv.next943.lcssa to i32
  br label %._crit_edge827

._crit_edge827:                                   ; preds = %._crit_edge827.loopexit, %.preheader800
  %.4645.lcssa = phi i32 [ 0, %.preheader800 ], [ %i.go, %._crit_edge827.loopexit ]
  %i.gp = icmp slt i32 %.4645.lcssa, %i.f
  br i1 %i.gp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %._crit_edge827
  %i.gq = zext nneg i32 %i.f to i64
  %i.gr = getelementptr [8 x i8], ptr %2, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -4     ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !137
  %i.gu = fneg float %i.gt
  store float %i.gu, ptr %i.gs, align 4, !tbaa !137
  br label %bb.bd

bb.bd:                                            ; preds = %.loopexit801, %bb.bc, %._crit_edge827, %bb.r, %._crit_edge, %bb.z, %._crit_edge815
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !145
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !42 ; 7 uses
  %i.gy = and i32 %i.gx, 1
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %.preheader799, label %.loopexit797

.preheader799:                                    ; preds = %bb.bd
  %.not714837 = icmp slt i32 %i.gx, 4
  br i1 %.not714837, label %.preheader796, label %.lr.ph840

.lr.ph840:                                        ; preds = %.preheader799
  %i.ha = icmp sgt i32 %i.f, 0
  br i1 %i.ha, label %.lr.ph836.us.preheader, label %.loopexit798

.lr.ph836.us.preheader:                           ; preds = %.lr.ph840
  %i.hb = zext nneg i32 %i.f to i64               ; 3 uses
  %scevgep = getelementptr i8, ptr %2, i64 8      ; 3 uses
  %scevgep1099 = getelementptr i8, ptr %2, i64 -4
  %i.hc = add nsw i64 %i.hb, -1
  %scevgep1101 = getelementptr i8, ptr %2, i64 8
  %scevgep1103 = getelementptr i8, ptr %2, i64 -4
  %scevgep1105 = getelementptr i8, ptr %2, i64 8
  %scevgep1107 = getelementptr i8, ptr %2, i64 -4
  %scevgep1109 = getelementptr i8, ptr %2, i64 8
  %scevgep1111 = getelementptr i8, ptr %2, i64 -4
  %scevgep1113 = getelementptr i8, ptr %i.b, i64 24 ; 4 uses
  %scevgep1114 = getelementptr i8, ptr %i.b, i64 -20
  %scevgep1116 = getelementptr i8, ptr %i.b, i64 8 ; 4 uses
  %scevgep1117 = getelementptr i8, ptr %i.b, i64 -4
  %scevgep1119 = getelementptr i8, ptr %i.b, i64 16 ; 4 uses
  %scevgep1120 = getelementptr i8, ptr %i.b, i64 -12
  %scevgep1122 = getelementptr i8, ptr %2, i64 12 ; 3 uses
  %scevgep1124 = getelementptr i8, ptr %2, i64 12
  %scevgep1127 = getelementptr i8, ptr %2, i64 12
  %scevgep1130 = getelementptr i8, ptr %2, i64 12
  %scevgep1133 = getelementptr i8, ptr %i.b, i64 28 ; 4 uses
  %scevgep1134 = getelementptr i8, ptr %i.b, i64 -16
  %scevgep1136 = getelementptr i8, ptr %i.b, i64 12 ; 2 uses
  %i.hd = getelementptr i8, ptr %i.b, <2 x i64> <i64 12, i64 20> ; 2 uses
  %scevgep1138 = getelementptr i8, ptr %i.b, i64 20 ; 3 uses
  %scevgep1139 = getelementptr i8, ptr %i.b, i64 -8
  %i.he = insertelement <2 x ptr> poison, ptr %scevgep1133, i64 0
  %i.hf = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.hg = shufflevector <4 x ptr> %i.hf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hh = insertelement <4 x ptr> poison, ptr %scevgep1113, i64 3
  %i.hi = insertelement <4 x ptr> poison, ptr %scevgep1122, i64 0
  %i.hj = shufflevector <4 x ptr> %i.hi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hk = insertelement <4 x ptr> poison, ptr %scevgep1133, i64 3
  %i.hl = shufflevector <2 x ptr> %i.hd, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hm = shufflevector <2 x ptr> %i.he, <2 x ptr> %i.hd, <2 x i32> <i32 0, i32 2>
  br label %.lr.ph836.us

.lr.ph836.us:                                     ; preds = %.lr.ph836.us.preheader, %..loopexit798_crit_edge.us
  %i.hn = phi i32 [ %i.si, %..loopexit798_crit_edge.us ], [ 4, %.lr.ph836.us.preheader ] ; 6 uses
  %.1634839.us = phi i32 [ %i.hn, %..loopexit798_crit_edge.us ], [ 1, %.lr.ph836.us.preheader ] ; 5 uses
  %.0786838.us = phi i32 [ %i.ho, %..loopexit798_crit_edge.us ], [ %i.k, %.lr.ph836.us.preheader ] ; 2 uses
  %i.ho = sdiv i32 %.0786838.us, 4                ; 3 uses
  %i.hp = shl i32 %.1634839.us, 1
  %i.hq = sext i32 %i.hp to i64                   ; 5 uses
  %i.hr = sext i32 %.1634839.us to i64            ; 9 uses
  %i.hs = icmp sgt i32 %.1634839.us, 1
  br i1 %i.hs, label %.lr.ph832.us.us.preheader, label %.lr.ph836.split.us843.preheader

.lr.ph836.split.us843.preheader:                  ; preds = %.lr.ph836.us
  %i.ht = sext i32 %i.hn to i64
  br label %.lr.ph836.split.us843

.lr.ph832.us.us.preheader:                        ; preds = %.lr.ph836.us
  %i.hu = sext i32 %i.ho to i64                   ; 3 uses
  %i.hv = sext i32 %i.hn to i64                   ; 3 uses
  %wide.trip.count955 = zext nneg i32 %.1634839.us to i64 ; 5 uses
  %i.hw = shl nuw nsw i64 %wide.trip.count955, 3  ; 6 uses
  %i.hx = shl nsw i64 %i.hq, 3                    ; 5 uses
  %scevgep1102 = getelementptr i8, ptr %scevgep1101, i64 %i.hx ; 6 uses
  %i.hy = shl nuw nsw i64 %i.hr, 3                ; 4 uses
  %scevgep1106 = getelementptr i8, ptr %scevgep1105, i64 %i.hy ; 6 uses
  %i.hz = add nsw i64 %i.hy, %i.hx                ; 2 uses
  %scevgep1110 = getelementptr i8, ptr %scevgep1109, i64 %i.hz ; 6 uses
  %i.ia = mul nuw nsw i64 %wide.trip.count955, 24 ; 2 uses
  %scevgep1115 = getelementptr i8, ptr %scevgep1114, i64 %i.ia ; 4 uses
  %scevgep1118 = getelementptr i8, ptr %scevgep1117, i64 %i.hw ; 4 uses
  %i.ib = shl nuw nsw i64 %wide.trip.count955, 4  ; 2 uses
  %scevgep1121 = getelementptr i8, ptr %scevgep1120, i64 %i.ib ; 4 uses
  %scevgep1125 = getelementptr i8, ptr %scevgep1124, i64 %i.hx ; 6 uses
  %scevgep1128 = getelementptr i8, ptr %scevgep1127, i64 %i.hy ; 3 uses
  %scevgep1131 = getelementptr i8, ptr %scevgep1130, i64 %i.hz ; 4 uses
  %scevgep1135 = getelementptr i8, ptr %scevgep1134, i64 %i.ia ; 3 uses
  %scevgep1137 = getelementptr i8, ptr %i.b, i64 %i.hw ; 4 uses
  %scevgep1140 = getelementptr i8, ptr %scevgep1139, i64 %i.ib ; 4 uses
  %i.ic = insertelement <4 x ptr> poison, ptr %scevgep1128, i64 0
  %i.id = shufflevector <4 x ptr> %i.ic, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ie = insertelement <2 x ptr> poison, ptr %scevgep1131, i64 0 ; 2 uses
  %i.if = shufflevector <2 x ptr> %i.ie, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ig = insertelement <2 x ptr> poison, ptr %scevgep1135, i64 0 ; 2 uses
  %i.ih = insertelement <2 x ptr> %i.ig, ptr %scevgep1137, i64 1
  %i.ii = shufflevector <2 x ptr> %i.ie, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep1133, i64 1
  %i.ik = shufflevector <2 x ptr> %i.ig, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.il = insertelement <4 x ptr> %i.hh, ptr %scevgep1102, i64 0
  %i.im = insertelement <4 x ptr> %i.il, ptr %scevgep1106, i64 1
  %i.in = insertelement <4 x ptr> %i.im, ptr %scevgep1110, i64 2
  %i.io = insertelement <4 x ptr> %i.hk, ptr %scevgep1125, i64 0
  %i.ip = insertelement <4 x ptr> %i.io, ptr %scevgep1128, i64 1
  %i.iq = insertelement <4 x ptr> %i.ip, ptr %scevgep1131, i64 2
  %i.ir = shufflevector <4 x ptr> %i.ij, <4 x ptr> %i.hl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.is = add nsw i64 %wide.trip.count955, -1     ; 2 uses
  %min.iters.check = icmp ugt i32 %.1634839.us, 13
  %i.it = and i32 %.0786838.us, -4
  %ident.check.not = icmp eq i32 %i.it, 4
  %or.cond1386 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %invariant.op = add i64 %i.hx, %i.hw
  %invariant.op1478 = add i64 %i.hx, %i.hw
  %i.iu = insertelement <4 x ptr> poison, ptr %scevgep1115, i64 3
  %bound01152 = icmp ult ptr %scevgep, %scevgep1118
  %bound01156 = icmp ult ptr %scevgep, %scevgep1121
  %bound01168 = icmp ult ptr %scevgep1102, %scevgep1115
  %bound01172 = icmp ult ptr %scevgep1102, %scevgep1118
  %bound01176 = icmp ult ptr %scevgep1102, %scevgep1121
  %bound01184 = icmp ult ptr %scevgep1106, %scevgep1115
  %bound01188 = icmp ult ptr %scevgep1106, %scevgep1118
  %bound01192 = icmp ult ptr %scevgep1106, %scevgep1121
  %bound01196 = icmp ult ptr %scevgep1110, %scevgep1115
  %bound01200 = icmp ult ptr %scevgep1110, %scevgep1118
  %bound01204 = icmp ult ptr %scevgep1110, %scevgep1121
  %i.iv = insertelement <4 x ptr> poison, ptr %scevgep1135, i64 3
  %bound01224 = icmp ult ptr %scevgep1122, %scevgep1137
  %bound01228 = icmp ult ptr %scevgep1122, %scevgep1140
  %bound01240 = icmp ult ptr %scevgep1125, %scevgep1135
  %bound01244 = icmp ult ptr %scevgep1125, %scevgep1137
  %bound01248 = icmp ult ptr %scevgep1125, %scevgep1140
  %i.iw = icmp ult <2 x ptr> %i.if, %i.ih
  %bound01276 = icmp ult ptr %scevgep1131, %scevgep1140
  %stride.check = icmp slt i32 %i.hn, 0
  %i.ix = insertelement <8 x i1> poison, i1 %bound01276, i64 6
  %i.iy = insertelement <8 x i1> %i.ix, i1 %stride.check, i64 7
  %i.iz = shufflevector <2 x i1> %i.iw, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ja = and i64 %i.is, 3                        ; 2 uses
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = select i1 %i.jb, i64 4, i64 %i.ja
  %n.vec = sub nsw i64 %i.is, %i.jc               ; 2 uses
  %i.jd = add nsw i64 %n.vec, 1                   ; 2 uses
  br label %.lr.ph832.us.us

.lr.ph836.split.us843:                            ; preds = %.lr.ph836.split.us843.preheader, %.lr.ph836.split.us843
  %indvars.iv945 = phi i64 [ 0, %.lr.ph836.split.us843.preheader ], [ %indvars.iv.next946, %.lr.ph836.split.us843 ] ; 2 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv945 ; 4 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.hq ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.hr ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.hr ; 2 uses
  %i.jk = load <2 x float>, ptr %i.jf, align 4, !tbaa !109 ; 3 uses
  %i.jl = load float, ptr %i.jg, align 4, !tbaa !137
  %i.jm = load <2 x float>, ptr %i.jh, align 4, !tbaa !109 ; 3 uses
  %i.jn = load float, ptr %i.ji, align 4, !tbaa !137
  %i.jo = shufflevector <2 x float> %i.jk, <2 x float> %i.jm, <2 x i32> <i32 1, i32 2>
  %i.jp = shufflevector <2 x float> %i.jm, <2 x float> %i.jk, <2 x i32> <i32 1, i32 2>
  %i.jq = fsub <2 x float> %i.jo, %i.jp           ; 2 uses
  %i.jr = load <2 x float>, ptr %i.je, align 4, !tbaa !109 ; 2 uses
  %i.js = load <2 x float>, ptr %i.jj, align 4, !tbaa !109 ; 2 uses
  %i.jt = fsub <2 x float> %i.jr, %i.js           ; 2 uses
  %i.ju = fadd <2 x float> %i.jr, %i.js           ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.jk, %i.jm
  %i.jv = fadd float %i.jl, %i.jn
  %i.jw = insertelement <2 x float> %foldExtExtBinop, float %i.jv, i64 1 ; 2 uses
  %i.jx = fadd <2 x float> %i.jw, %i.ju
  store <2 x float> %i.jx, ptr %i.je, align 4, !tbaa !109
  %i.jy = fsub <2 x float> %i.ju, %i.jw
  store <2 x float> %i.jy, ptr %i.jf, align 4, !tbaa !109
  %i.jz = fadd <2 x float> %i.jq, %i.jt
  store <2 x float> %i.jz, ptr %i.jj, align 4, !tbaa !109
  %i.ka = fsub <2 x float> %i.jt, %i.jq
  store <2 x float> %i.ka, ptr %i.jh, align 4, !tbaa !109
  %indvars.iv.next946 = add nsw i64 %indvars.iv945, %i.ht ; 2 uses
  %i.kb = icmp slt i64 %indvars.iv.next946, %i.hb
  br i1 %i.kb, label %.lr.ph836.split.us843, label %..loopexit798_crit_edge.us, !llvm.loop !443

.lr.ph832.us.us:                                  ; preds = %.lr.ph832.us.us.preheader, %._crit_edge833.us.us
  %indvars.iv957 = phi i64 [ 0, %.lr.ph832.us.us.preheader ], [ %indvars.iv.next958, %._crit_edge833.us.us ] ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv957 ; 6 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.hq ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %i.hr ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.hr ; 2 uses
  %i.ki = load <2 x float>, ptr %i.kd, align 4, !tbaa !109 ; 3 uses
  %i.kj = load float, ptr %i.ke, align 4, !tbaa !137
  %i.kk = load <2 x float>, ptr %i.kf, align 4, !tbaa !109 ; 3 uses
  %i.kl = load float, ptr %i.kg, align 4, !tbaa !137
  %i.km = shufflevector <2 x float> %i.ki, <2 x float> %i.kk, <2 x i32> <i32 1, i32 2>
  %i.kn = shufflevector <2 x float> %i.kk, <2 x float> %i.ki, <2 x i32> <i32 1, i32 2>
  %i.ko = fsub <2 x float> %i.km, %i.kn           ; 2 uses
  %i.kp = load <2 x float>, ptr %i.kc, align 4, !tbaa !109 ; 2 uses
  %i.kq = load <2 x float>, ptr %i.kh, align 4, !tbaa !109 ; 2 uses
  %i.kr = fsub <2 x float> %i.kp, %i.kq           ; 2 uses
  %i.ks = fadd <2 x float> %i.kp, %i.kq           ; 2 uses
  %foldExtExtBinop1438 = fadd <2 x float> %i.ki, %i.kk
  %i.kt = fadd float %i.kj, %i.kl
  %i.ku = insertelement <2 x float> %foldExtExtBinop1438, float %i.kt, i64 1 ; 2 uses
  %i.kv = fadd <2 x float> %i.ku, %i.ks
  store <2 x float> %i.kv, ptr %i.kc, align 4, !tbaa !109
  %i.kw = fsub <2 x float> %i.ks, %i.ku
  store <2 x float> %i.kw, ptr %i.kd, align 4, !tbaa !109
  %i.kx = fadd <2 x float> %i.ko, %i.kr
  store <2 x float> %i.kx, ptr %i.kh, align 4, !tbaa !109
  %i.ky = fsub <2 x float> %i.kr, %i.ko
  store <2 x float> %i.ky, ptr %i.kf, align 4, !tbaa !109
  br i1 %or.cond1386, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph832.us.us
  %i.kz = udiv i64 %i.hc, %i.hv
  %i.la = shl i64 %i.kz, 3
  %i.lb = mul i64 %i.la, %i.hv                    ; 3 uses
  %i.lc = add i64 %i.lb, %i.hw                    ; 2 uses
  %scevgep1100 = getelementptr i8, ptr %scevgep1099, i64 %i.lc ; 3 uses
  %.reass = add i64 %i.lb, %invariant.op          ; 2 uses
  %scevgep1104 = getelementptr i8, ptr %scevgep1103, i64 %.reass ; 6 uses
  %i.ld = add i64 %i.lb, %i.hy                    ; 2 uses
  %i.le = add i64 %i.ld, %i.hw                    ; 2 uses
  %scevgep1108 = getelementptr i8, ptr %scevgep1107, i64 %i.le ; 6 uses
  %.reass1479 = add i64 %i.ld, %invariant.op1478  ; 2 uses
  %scevgep1112 = getelementptr i8, ptr %scevgep1111, i64 %.reass1479 ; 6 uses
  %scevgep1123 = getelementptr i8, ptr %2, i64 %i.lc ; 3 uses
  %scevgep1126 = getelementptr i8, ptr %2, i64 %.reass ; 6 uses
  %scevgep1129 = getelementptr i8, ptr %2, i64 %i.le ; 3 uses
  %scevgep1132 = getelementptr i8, ptr %2, i64 %.reass1479 ; 4 uses
  %i.lf = insertelement <4 x ptr> %i.iu, ptr %scevgep1104, i64 0
  %i.lg = insertelement <4 x ptr> %i.lf, ptr %scevgep1108, i64 1
  %i.lh = insertelement <4 x ptr> %i.lg, ptr %scevgep1112, i64 2
  %i.li = icmp ult <4 x ptr> %i.hg, %i.lh
  %i.lj = insertelement <4 x ptr> poison, ptr %scevgep1100, i64 0
  %i.lk = shufflevector <4 x ptr> %i.lj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ll = icmp ult <4 x ptr> %i.in, %i.lk
  %i.lm = and <4 x i1> %i.li, %i.ll
  %bound11153 = icmp ult ptr %scevgep1116, %scevgep1100
  %found.conflict1154 = and i1 %bound01152, %bound11153
  %bound11157 = icmp ult ptr %scevgep1119, %scevgep1100
  %found.conflict1158 = and i1 %bound01156, %bound11157
  %bound01160 = icmp ult ptr %scevgep1102, %scevgep1108
  %bound11161 = icmp ult ptr %scevgep1106, %scevgep1104
  %found.conflict1162 = and i1 %bound01160, %bound11161
  %bound01164 = icmp ult ptr %scevgep1102, %scevgep1112
  %bound11165 = icmp ult ptr %scevgep1110, %scevgep1104
  %found.conflict1166 = and i1 %bound01164, %bound11165
  %bound11169 = icmp ult ptr %scevgep1113, %scevgep1104
  %found.conflict1170 = and i1 %bound01168, %bound11169
  %bound11173 = icmp ult ptr %scevgep1116, %scevgep1104
  %found.conflict1174 = and i1 %bound01172, %bound11173
  %bound11177 = icmp ult ptr %scevgep1119, %scevgep1104
  %found.conflict1178 = and i1 %bound01176, %bound11177
  %bound01180 = icmp ult ptr %scevgep1106, %scevgep1112
  %bound11181 = icmp ult ptr %scevgep1110, %scevgep1108
  %found.conflict1182 = and i1 %bound01180, %bound11181
  %bound11185 = icmp ult ptr %scevgep1113, %scevgep1108
  %found.conflict1186 = and i1 %bound01184, %bound11185
  %bound11189 = icmp ult ptr %scevgep1116, %scevgep1108
  %found.conflict1190 = and i1 %bound01188, %bound11189
  %bound11193 = icmp ult ptr %scevgep1119, %scevgep1108
  %found.conflict1194 = and i1 %bound01192, %bound11193
  %bound11197 = icmp ult ptr %scevgep1113, %scevgep1112
  %found.conflict1198 = and i1 %bound01196, %bound11197
  %bound11201 = icmp ult ptr %scevgep1116, %scevgep1112
  %found.conflict1202 = and i1 %bound01200, %bound11201
  %bound11205 = icmp ult ptr %scevgep1119, %scevgep1112
  %found.conflict1206 = and i1 %bound01204, %bound11205
  %i.ln = insertelement <4 x ptr> %i.iv, ptr %scevgep1126, i64 0
  %i.lo = insertelement <4 x ptr> %i.ln, ptr %scevgep1129, i64 1
  %i.lp = insertelement <4 x ptr> %i.lo, ptr %scevgep1132, i64 2
  %i.lq = icmp ult <4 x ptr> %i.hj, %i.lp
  %i.lr = insertelement <4 x ptr> poison, ptr %scevgep1123, i64 0
  %i.ls = shufflevector <4 x ptr> %i.lr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lt = icmp ult <4 x ptr> %i.iq, %i.ls
  %i.lu = and <4 x i1> %i.lq, %i.lt
  %bound11225 = icmp ult ptr %scevgep1136, %scevgep1123
  %found.conflict1226 = and i1 %bound01224, %bound11225
  %bound11229 = icmp ult ptr %scevgep1138, %scevgep1123
  %found.conflict1230 = and i1 %bound01228, %bound11229
end_hunk_0
begin_hunk_1_@_ZN2cvL3DFTIdEEvRKNS_13OcvDftOptionsEPKNS_7ComplexIT_EEPS6_:_ZNKSt9type_infoeqERKS_.exit.thread804

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
  %lcmp.mod1465 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod1465)
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
  %i.hg = phi i32 [ %i.rb, %..loopexit811_crit_edge.us ], [ 4, %.lr.ph849.us.preheader ] ; 6 uses
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
  %i.hq = shl nsw i64 %i.hj, 4                    ; 5 uses
  %scevgep1117 = getelementptr i8, ptr %scevgep1116, i64 %i.hq ; 6 uses
  %i.hr = shl nuw nsw i64 %i.hk, 4                ; 4 uses
  %scevgep1121 = getelementptr i8, ptr %scevgep1120, i64 %i.hr ; 6 uses
  %i.hs = add nsw i64 %i.hr, %i.hq                ; 2 uses
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
  %i.ie = insertelement <4 x ptr> %i.ha, ptr %scevgep1117, i64 0
  %i.if = insertelement <4 x ptr> %i.ie, ptr %scevgep1121, i64 1
  %i.ig = insertelement <4 x ptr> %i.if, ptr %scevgep1125, i64 2
  %i.ih = insertelement <4 x ptr> %i.hd, ptr %scevgep1140, i64 0
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %scevgep1143, i64 1
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep1146, i64 2
  %i.ik = shufflevector <4 x ptr> %i.ic, <4 x ptr> %i.he, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %min.iters.check = icmp ugt i32 %.1634852.us, 11
  %i.il = and i32 %.0799851.us, -4
  %ident.check.not = icmp eq i32 %i.il, 4
  %or.cond1396 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %invariant.op = add i64 %i.hq, %i.hp
  %invariant.op1485 = add i64 %i.hq, %i.hp
  %i.im = insertelement <4 x ptr> poison, ptr %scevgep1130, i64 3
  %bound01167 = icmp ult ptr %scevgep, %scevgep1133
  %bound01171 = icmp ult ptr %scevgep, %scevgep1136
  %bound01183 = icmp ult ptr %scevgep1117, %scevgep1130
  %bound01187 = icmp ult ptr %scevgep1117, %scevgep1133
  %bound01191 = icmp ult ptr %scevgep1117, %scevgep1136
  %bound01199 = icmp ult ptr %scevgep1121, %scevgep1130
  %bound01203 = icmp ult ptr %scevgep1121, %scevgep1133
  %bound01207 = icmp ult ptr %scevgep1121, %scevgep1136
  %bound01211 = icmp ult ptr %scevgep1125, %scevgep1130
  %bound01215 = icmp ult ptr %scevgep1125, %scevgep1133
  %bound01219 = icmp ult ptr %scevgep1125, %scevgep1136
  %i.in = insertelement <4 x ptr> poison, ptr %scevgep1150, i64 3
  %bound01239 = icmp ult ptr %scevgep1137, %scevgep1152
  %bound01243 = icmp ult ptr %scevgep1137, %scevgep1155
  %bound01255 = icmp ult ptr %scevgep1140, %scevgep1150
  %bound01259 = icmp ult ptr %scevgep1140, %scevgep1152
  %bound01263 = icmp ult ptr %scevgep1140, %scevgep1155
  %i.io = icmp ult <2 x ptr> %i.hy, %i.ia
  %bound01291 = icmp ult ptr %scevgep1146, %scevgep1155
  %stride.check = icmp slt i32 %i.hg, 0
  %i.ip = insertelement <8 x i1> poison, i1 %bound01291, i64 6
  %i.iq = insertelement <8 x i1> %i.ip, i1 %stride.check, i64 7
  %i.ir = shufflevector <2 x i1> %i.io, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.is = and i64 %wide.trip.count968, 2147483644 ; 2 uses
  %i.it = add nsw i64 %i.is, -1                   ; 2 uses
  %i.iu = add nsw i64 %i.is, -4
  br label %.lr.ph845.us.us

.lr.ph849.split.us856:                            ; preds = %.lr.ph849.split.us856.preheader, %.lr.ph849.split.us856
  %indvars.iv958 = phi i64 [ 0, %.lr.ph849.split.us856.preheader ], [ %indvars.iv.next959, %.lr.ph849.split.us856 ] ; 2 uses
  %i.iv = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv958 ; 4 uses
  %i.iw = getelementptr inbounds [16 x i8], ptr %i.iv, i64 %i.hj ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.iy = getelementptr inbounds [16 x i8], ptr %i.iw, i64 %i.hk ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = getelementptr inbounds [16 x i8], ptr %i.iv, i64 %i.hk ; 2 uses
  %i.jb = load <2 x double>, ptr %i.iw, align 8, !tbaa !113 ; 3 uses
  %i.jc = load double, ptr %i.ix, align 8, !tbaa !134
  %i.jd = load <2 x double>, ptr %i.iy, align 8, !tbaa !113 ; 3 uses
  %i.je = load double, ptr %i.iz, align 8, !tbaa !134
  %i.jf = shufflevector <2 x double> %i.jb, <2 x double> %i.jd, <2 x i32> <i32 1, i32 2>
  %i.jg = shufflevector <2 x double> %i.jd, <2 x double> %i.jb, <2 x i32> <i32 1, i32 2>
  %i.jh = fsub <2 x double> %i.jf, %i.jg          ; 2 uses
  %i.ji = load <2 x double>, ptr %i.iv, align 8, !tbaa !113 ; 2 uses
  %i.jj = load <2 x double>, ptr %i.ja, align 8, !tbaa !113 ; 2 uses
  %i.jk = fsub <2 x double> %i.ji, %i.jj          ; 2 uses
  %i.jl = insertelement <2 x double> %i.jb, double %i.jc, i64 1
  %i.jm = insertelement <2 x double> %i.jd, double %i.je, i64 1
  %i.jn = fadd <2 x double> %i.jl, %i.jm          ; 2 uses
  %i.jo = fadd <2 x double> %i.ji, %i.jj          ; 2 uses
  %i.jp = fadd <2 x double> %i.jn, %i.jo
  store <2 x double> %i.jp, ptr %i.iv, align 8, !tbaa !113
  %i.jq = fsub <2 x double> %i.jo, %i.jn
  store <2 x double> %i.jq, ptr %i.iw, align 8, !tbaa !113
  %i.jr = fadd <2 x double> %i.jh, %i.jk
  store <2 x double> %i.jr, ptr %i.ja, align 8, !tbaa !113
  %i.js = fsub <2 x double> %i.jk, %i.jh
  store <2 x double> %i.js, ptr %i.iy, align 8, !tbaa !113
  %indvars.iv.next959 = add nsw i64 %indvars.iv958, %i.hm ; 2 uses
  %i.jt = icmp slt i64 %indvars.iv.next959, %i.gu
  br i1 %i.jt, label %.lr.ph849.split.us856, label %..loopexit811_crit_edge.us, !llvm.loop !515

.lr.ph845.us.us:                                  ; preds = %.lr.ph845.us.us.preheader, %._crit_edge846.us.us
  %indvars.iv970 = phi i64 [ 0, %.lr.ph845.us.us.preheader ], [ %indvars.iv.next971, %._crit_edge846.us.us ] ; 2 uses
  %i.ju = getelementptr inbounds [16 x i8], ptr %2, i64 %indvars.iv970 ; 6 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.hj ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.hk ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = getelementptr inbounds nuw [16 x i8], ptr %i.ju, i64 %i.hk ; 2 uses
  %i.ka = load <2 x double>, ptr %i.jv, align 8, !tbaa !113 ; 3 uses
  %i.kb = load double, ptr %i.jw, align 8, !tbaa !134
  %i.kc = load <2 x double>, ptr %i.jx, align 8, !tbaa !113 ; 3 uses
  %i.kd = load double, ptr %i.jy, align 8, !tbaa !134
  %i.ke = shufflevector <2 x double> %i.ka, <2 x double> %i.kc, <2 x i32> <i32 1, i32 2>
  %i.kf = shufflevector <2 x double> %i.kc, <2 x double> %i.ka, <2 x i32> <i32 1, i32 2>
  %i.kg = fsub <2 x double> %i.ke, %i.kf          ; 2 uses
  %i.kh = load <2 x double>, ptr %i.ju, align 8, !tbaa !113 ; 2 uses
  %i.ki = load <2 x double>, ptr %i.jz, align 8, !tbaa !113 ; 2 uses
  %i.kj = fsub <2 x double> %i.kh, %i.ki          ; 2 uses
  %i.kk = insertelement <2 x double> %i.ka, double %i.kb, i64 1
  %i.kl = insertelement <2 x double> %i.kc, double %i.kd, i64 1
  %i.km = fadd <2 x double> %i.kk, %i.kl          ; 2 uses
  %i.kn = fadd <2 x double> %i.kh, %i.ki          ; 2 uses
  %i.ko = fadd <2 x double> %i.km, %i.kn
  store <2 x double> %i.ko, ptr %i.ju, align 8, !tbaa !113
  %i.kp = fsub <2 x double> %i.kn, %i.km
  store <2 x double> %i.kp, ptr %i.jv, align 8, !tbaa !113
  %i.kq = fadd <2 x double> %i.kg, %i.kj
  store <2 x double> %i.kq, ptr %i.jz, align 8, !tbaa !113
  %i.kr = fsub <2 x double> %i.kj, %i.kg
  store <2 x double> %i.kr, ptr %i.jx, align 8, !tbaa !113
  br i1 %or.cond1396, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph845.us.us
  %i.ks = udiv i64 %i.gv, %i.ho
  %i.kt = shl i64 %i.ks, 4
  %i.ku = mul i64 %i.kt, %i.ho                    ; 3 uses
  %i.kv = add i64 %i.ku, %i.hp                    ; 2 uses
  %scevgep1115 = getelementptr i8, ptr %scevgep1114, i64 %i.kv ; 3 uses
  %.reass = add i64 %i.ku, %invariant.op          ; 2 uses
  %scevgep1119 = getelementptr i8, ptr %scevgep1118, i64 %.reass ; 6 uses
  %i.kw = add i64 %i.ku, %i.hr                    ; 2 uses
  %i.kx = add i64 %i.kw, %i.hp                    ; 2 uses
  %scevgep1123 = getelementptr i8, ptr %scevgep1122, i64 %i.kx ; 6 uses
  %.reass1486 = add i64 %i.kw, %invariant.op1485  ; 2 uses
  %scevgep1127 = getelementptr i8, ptr %scevgep1126, i64 %.reass1486 ; 6 uses
  %scevgep1138 = getelementptr i8, ptr %2, i64 %i.kv ; 3 uses
  %scevgep1141 = getelementptr i8, ptr %2, i64 %.reass ; 6 uses
  %scevgep1144 = getelementptr i8, ptr %2, i64 %i.kx ; 3 uses
  %scevgep1147 = getelementptr i8, ptr %2, i64 %.reass1486 ; 4 uses
  %i.ky = insertelement <4 x ptr> %i.im, ptr %scevgep1119, i64 0
  %i.kz = insertelement <4 x ptr> %i.ky, ptr %scevgep1123, i64 1
  %i.la = insertelement <4 x ptr> %i.kz, ptr %scevgep1127, i64 2
  %i.lb = icmp ult <4 x ptr> %i.gz, %i.la
  %i.lc = insertelement <4 x ptr> poison, ptr %scevgep1115, i64 0
  %i.ld = shufflevector <4 x ptr> %i.lc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.le = icmp ult <4 x ptr> %i.ig, %i.ld
  %i.lf = and <4 x i1> %i.lb, %i.le
  %bound11168 = icmp ult ptr %scevgep1131, %scevgep1115
  %found.conflict1169 = and i1 %bound01167, %bound11168
  %bound11172 = icmp ult ptr %scevgep1134, %scevgep1115
  %found.conflict1173 = and i1 %bound01171, %bound11172
  %bound01175 = icmp ult ptr %scevgep1117, %scevgep1123
  %bound11176 = icmp ult ptr %scevgep1121, %scevgep1119
  %found.conflict1177 = and i1 %bound01175, %bound11176
  %bound01179 = icmp ult ptr %scevgep1117, %scevgep1127
  %bound11180 = icmp ult ptr %scevgep1125, %scevgep1119
  %found.conflict1181 = and i1 %bound01179, %bound11180
  %bound11184 = icmp ult ptr %scevgep1128, %scevgep1119
  %found.conflict1185 = and i1 %bound01183, %bound11184
  %bound11188 = icmp ult ptr %scevgep1131, %scevgep1119
  %found.conflict1189 = and i1 %bound01187, %bound11188
  %bound11192 = icmp ult ptr %scevgep1134, %scevgep1119
  %found.conflict1193 = and i1 %bound01191, %bound11192
  %bound01195 = icmp ult ptr %scevgep1121, %scevgep1127
  %bound11196 = icmp ult ptr %scevgep1125, %scevgep1123
  %found.conflict1197 = and i1 %bound01195, %bound11196
  %bound11200 = icmp ult ptr %scevgep1128, %scevgep1123
  %found.conflict1201 = and i1 %bound01199, %bound11200
  %bound11204 = icmp ult ptr %scevgep1131, %scevgep1123
  %found.conflict1205 = and i1 %bound01203, %bound11204
  %bound11208 = icmp ult ptr %scevgep1134, %scevgep1123
  %found.conflict1209 = and i1 %bound01207, %bound11208
  %bound11212 = icmp ult ptr %scevgep1128, %scevgep1127
  %found.conflict1213 = and i1 %bound01211, %bound11212
  %bound11216 = icmp ult ptr %scevgep1131, %scevgep1127
  %found.conflict1217 = and i1 %bound01215, %bound11216
  %bound11220 = icmp ult ptr %scevgep1134, %scevgep1127
  %found.conflict1221 = and i1 %bound01219, %bound11220
  %i.lg = insertelement <4 x ptr> %i.in, ptr %scevgep1141, i64 0
  %i.lh = insertelement <4 x ptr> %i.lg, ptr %scevgep1144, i64 1
  %i.li = insertelement <4 x ptr> %i.lh, ptr %scevgep1147, i64 2
  %i.lj = icmp ult <4 x ptr> %i.hc, %i.li
  %i.lk = insertelement <4 x ptr> poison, ptr %scevgep1138, i64 0
  %i.ll = shufflevector <4 x ptr> %i.lk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lm = icmp ult <4 x ptr> %i.ij, %i.ll
  %i.ln = and <4 x i1> %i.lj, %i.lm
  %bound11240 = icmp ult ptr %scevgep1151, %scevgep1138
  %found.conflict1241 = and i1 %bound01239, %bound11240
  %bound11244 = icmp ult ptr %scevgep1153, %scevgep1138
  %found.conflict1245 = and i1 %bound01243, %bound11244
  %bound01247 = icmp ult ptr %scevgep1140, %scevgep1144
  %bound11248 = icmp ult ptr %scevgep1143, %scevgep1141
  %found.conflict1249 = and i1 %bound01247, %bound11248
end_hunk_1
