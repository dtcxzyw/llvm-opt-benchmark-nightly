inline.NumInlined: 502
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_:bb.a
  br label %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i

_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.y, %bb.x, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i
  %.0.i.i = phi i32 [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i ], [ 0, %bb.x ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.z:                                             ; preds = %bb.o
  %i.ht = sub i64 %i.bm, %.120.lcssa.i.i111.i     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.hu = load i32, ptr %i.c, align 16, !tbaa !3  ; 3 uses
  %i.hv = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hu, i1 false) ; 13 uses
  %i.hw = icmp sgt i64 %.120.lcssa.i.i111.i, 0    ; 2 uses
  %i.hx = icmp ne i32 %i.hv, 0                    ; 3 uses
  %or.cond.i.i = and i1 %i.hw, %i.hx
  br i1 %or.cond.i.i, label %.lr.ph.i120.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i

.lr.ph.i120.i:                                    ; preds = %bb.z
  %i.hy = add nsw i64 %.120.lcssa.i.i111.i, -1    ; 4 uses
  %i.hz = sub nuw nsw i32 32, %i.hv               ; 2 uses
  %min.iters.check107 = icmp ult i64 %.120.lcssa.i.i111.i, 9
  br i1 %min.iters.check107, label %scalar.ph106.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph.i120.i
  %n.vec110 = and i64 %i.hy, -8                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert111 = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %broadcast.splat112 = shufflevector <4 x i32> %broadcast.splatinsert111, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.hu, i64 3
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph108
  %index114 = phi i64 [ 0, %vector.ph108 ], [ %index.next117, %vector.body113 ] ; 3 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph108 ], [ %wide.load116, %vector.body113 ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index114 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index114 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 20
  %wide.load115 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !3 ; 3 uses
  %wide.load116 = load <4 x i32>, ptr %i.id, align 4, !tbaa !3 ; 4 uses
  %i.ie = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load115, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.if = shufflevector <4 x i32> %wide.load115, <4 x i32> %wide.load116, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ig = shl <4 x i32> %i.ie, %broadcast.splat112
  %i.ih = shl <4 x i32> %i.if, %broadcast.splat112
  %i.ii = lshr <4 x i32> %wide.load115, %broadcast.splat
  %i.ij = lshr <4 x i32> %wide.load116, %broadcast.splat
  %i.ik = or disjoint <4 x i32> %i.ii, %i.ig
  %i.il = or disjoint <4 x i32> %i.ij, %i.ih
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <4 x i32> %i.ik, ptr %i.ia, align 16, !tbaa !3
  store <4 x i32> %i.il, ptr %i.im, align 16, !tbaa !3
  %index.next117 = add nuw i64 %index114, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.in, label %middle.block118, label %vector.body113, !llvm.loop !43

middle.block118:                                  ; preds = %vector.body113
  %vector.recur.extract = extractelement <4 x i32> %wide.load116, i64 3
  %cmp.n119 = icmp eq i64 %i.hy, %n.vec110
  br i1 %cmp.n119, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %.lr.ph.i120.i, %middle.block118
  %.ph174 = phi i32 [ %i.hu, %.lr.ph.i120.i ], [ %vector.recur.extract, %middle.block118 ]
  %.019.i.i.ph = phi i64 [ 0, %.lr.ph.i120.i ], [ %n.vec110, %middle.block118 ]
  br label %scalar.ph106

_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i:    ; preds = %scalar.ph106, %middle.block118
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hy ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iq = shl i32 %i.ip, %i.hv
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !3
  br label %.preheader.i123.i

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %i.ir = phi i32 [ %i.iw, %scalar.ph106 ], [ %.ph174, %scalar.ph106.preheader ]
  %.019.i.i = phi i64 [ %i.iu, %scalar.ph106 ], [ %.019.i.i.ph, %scalar.ph106.preheader ] ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.019.i.i
  %i.it = shl i32 %i.ir, %i.hv
  %i.iu = add nuw nsw i64 %.019.i.i, 1            ; 3 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !3  ; 2 uses
  %i.ix = lshr i32 %i.iw, %i.hz
  %i.iy = or disjoint i32 %i.ix, %i.it
  store i32 %i.iy, ptr %i.is, align 4, !tbaa !3
  %exitcond.not.i121.i = icmp eq i64 %i.iu, %i.hy
  br i1 %exitcond.not.i121.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i, label %scalar.ph106, !llvm.loop !44

_ZN5arrowL14ShiftArrayLeftEPjll.exit.i:           ; preds = %bb.z
  br i1 %i.hx, label %.preheader.i123.i, label %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i

.preheader.i123.i:                                ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.thread.i
  %i.iz = icmp sgt i64 %.120.lcssa.i.i.i, 0
  br i1 %i.iz, label %.lr.ph.i125.i, label %._crit_edge.i124.i

.lr.ph.i125.i:                                    ; preds = %.preheader.i123.i
  %i.ja = sub nuw nsw i32 32, %i.hv               ; 2 uses
  %min.iters.check122 = icmp ult i64 %.120.lcssa.i.i.i, 8
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph.i125.i
  %n.vec125 = and i64 %.120.lcssa.i.i.i, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert126 = insertelement <4 x i32> poison, i32 %i.ja, i64 0
  %broadcast.splat127 = shufflevector <4 x i32> %broadcast.splatinsert126, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert128 = insertelement <4 x i32> poison, i32 %i.hv, i64 0
  %broadcast.splat129 = shufflevector <4 x i32> %broadcast.splatinsert128, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph123
  %index131 = phi i64 [ 0, %vector.ph123 ], [ %index.next135, %vector.body130 ] ; 3 uses
  %vector.recur132 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph123 ], [ %wide.load134, %vector.body130 ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index131 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index131 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 20
  %wide.load133 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !3 ; 3 uses
  %wide.load134 = load <4 x i32>, ptr %i.je, align 4, !tbaa !3 ; 4 uses
  %i.jf = shufflevector <4 x i32> %vector.recur132, <4 x i32> %wide.load133, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jg = shufflevector <4 x i32> %wide.load133, <4 x i32> %wide.load134, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jh = shl <4 x i32> %i.jf, %broadcast.splat129
  %i.ji = shl <4 x i32> %i.jg, %broadcast.splat129
  %i.jj = lshr <4 x i32> %wide.load133, %broadcast.splat127
  %i.jk = lshr <4 x i32> %wide.load134, %broadcast.splat127
  %i.jl = or disjoint <4 x i32> %i.jj, %i.jh
  %i.jm = or disjoint <4 x i32> %i.jk, %i.ji
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <4 x i32> %i.jl, ptr %i.jb, align 16, !tbaa !3
  store <4 x i32> %i.jm, ptr %i.jn, align 16, !tbaa !3
  %index.next135 = add nuw i64 %index131, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next135, %n.vec125
  br i1 %i.jo, label %middle.block136, label %vector.body130, !llvm.loop !45

middle.block136:                                  ; preds = %vector.body130
  %vector.recur.extract137 = extractelement <4 x i32> %wide.load134, i64 3
  %cmp.n138 = icmp eq i64 %.120.lcssa.i.i.i, %n.vec125
  br i1 %cmp.n138, label %._crit_edge.i124.i, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.lr.ph.i125.i, %middle.block136
  %.ph = phi i32 [ 0, %.lr.ph.i125.i ], [ %vector.recur.extract137, %middle.block136 ]
  %.019.i127.i.ph = phi i64 [ 0, %.lr.ph.i125.i ], [ %n.vec125, %middle.block136 ]
  br label %scalar.ph121

._crit_edge.i124.i:                               ; preds = %scalar.ph121, %middle.block136, %.preheader.i123.i
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.120.lcssa.i.i.i ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !3
  %i.jr = shl i32 %i.jq, %i.hv
  store i32 %i.jr, ptr %i.jp, align 4, !tbaa !3
  br label %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i

scalar.ph121:                                     ; preds = %scalar.ph121.preheader, %scalar.ph121
  %i.js = phi i32 [ %i.jx, %scalar.ph121 ], [ %.ph, %scalar.ph121.preheader ]
  %.019.i127.i = phi i64 [ %i.jv, %scalar.ph121 ], [ %.019.i127.i.ph, %scalar.ph121.preheader ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.019.i127.i
  %i.ju = shl i32 %i.js, %i.hv
  %i.jv = add nuw nsw i64 %.019.i127.i, 1         ; 3 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !3  ; 2 uses
  %i.jy = lshr i32 %i.jx, %i.ja
  %i.jz = or disjoint i32 %i.jy, %i.ju
  store i32 %i.jz, ptr %i.jt, align 4, !tbaa !3
  %exitcond.not.i128.i = icmp eq i64 %i.jv, %.120.lcssa.i.i.i
  br i1 %exitcond.not.i128.i, label %._crit_edge.i124.i, label %scalar.ph121, !llvm.loop !46

_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i:        ; preds = %._crit_edge.i124.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit.i
  %i.ka = icmp sgt i64 %i.ht, 0
  br i1 %i.ka, label %.lr.ph186.i, label %._crit_edge187.i

.lr.ph186.i:                                      ; preds = %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i
  %i.kb = load i32, ptr %i.c, align 16, !tbaa !3  ; 5 uses
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !3
  %i.kf = zext i32 %i.ke to i64
  %i.kg = add i64 %.120.lcssa.i.i111.i, -1        ; 6 uses
  %xtraiter = and i64 %.120.lcssa.i.i111.i, 1
  %i.kh = icmp eq i64 %i.kg, 0
  %unroll_iter = and i64 %.120.lcssa.i.i111.i, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod183 = trunc i64 %.120.lcssa.i.i111.i to i1
  %xtraiter184 = and i64 %.120.lcssa.i.i111.i, 1
  %i.ki = icmp eq i64 %i.kg, 0
  %unroll_iter188 = and i64 %.120.lcssa.i.i111.i, 9223372036854775806
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  %lcmp.mod187 = trunc i64 %.120.lcssa.i.i111.i to i1
  br label %bb.af

._crit_edge187.i:                                 ; preds = %._crit_edge.thread.i, %_ZN5arrowL14ShiftArrayLeftEPjll.exit129.i
  br i1 %i.hx, label %.preheader.i131.i, label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

.preheader.i131.i:                                ; preds = %._crit_edge187.i
  %i.kj = icmp sgt i64 %.120.lcssa.i.i.i, 0
  br i1 %i.kj, label %.lr.ph.i133.i, label %._crit_edge.i132.i

.lr.ph.i133.i:                                    ; preds = %.preheader.i131.i
  %i.kk = sub nuw nsw i32 32, %i.hv               ; 2 uses
  %min.iters.check142 = icmp ult i64 %.120.lcssa.i.i.i, 8
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph.i133.i
  %n.vec145 = and i64 %.120.lcssa.i.i.i, 9223372036854775800 ; 3 uses
  %i.kl = sub i64 %i.bm, %n.vec145
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %i.kk, i64 0 ; 2 uses
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %i.hv, i64 0 ; 2 uses
  %9 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.km = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.kn = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph143
  %index151 = phi i64 [ 0, %vector.ph143 ], [ %index.next162, %vector.body150 ] ; 2 uses
  %i.ko = sub i64 %i.bm, %index151                ; 2 uses
  %i.kp = getelementptr [4 x i8], ptr %i.b, i64 %i.ko ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kp, i64 -16    ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kp, i64 -32    ; 2 uses
  %wide.load152 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !3
  %wide.load153 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !3
  %i.ks = getelementptr [4 x i8], ptr %i.b, i64 %i.ko ; 2 uses
  %i.kt = getelementptr i8, ptr %i.ks, i64 -20
  %i.ku = getelementptr i8, ptr %i.ks, i64 -36
  %wide.load156 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !3
  %wide.load157 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !3
  %i.kv = shl <4 x i32> %wide.load156, %9
  %11 = lshr <4 x i32> %wide.load152, %i.km
  %reverse160 = or disjoint <4 x i32> %i.kv, %11
  %i.kw = shl <4 x i32> %wide.load157, %10
  %12 = lshr <4 x i32> %wide.load153, %i.kn
  %reverse161 = or disjoint <4 x i32> %i.kw, %12
  store <4 x i32> %reverse160, ptr %i.kq, align 4, !tbaa !3
  store <4 x i32> %reverse161, ptr %i.kr, align 4, !tbaa !3
  %index.next162 = add nuw i64 %index151, 8       ; 2 uses
  %i.kx = icmp eq i64 %index.next162, %n.vec145
  br i1 %i.kx, label %middle.block163, label %vector.body150, !llvm.loop !47

middle.block163:                                  ; preds = %vector.body150
  %cmp.n164 = icmp eq i64 %.120.lcssa.i.i.i, %n.vec145
  br i1 %cmp.n164, label %._crit_edge.i132.i, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %.lr.ph.i133.i, %middle.block163
  %.0.in17.i.i.ph = phi i64 [ %i.bm, %.lr.ph.i133.i ], [ %i.kl, %middle.block163 ]
  br label %scalar.ph141

._crit_edge.i132.i:                               ; preds = %scalar.ph141, %middle.block163, %.preheader.i131.i
  %i.ky = load i32, ptr %i.b, align 16, !tbaa !3
  %i.kz = lshr i32 %i.ky, %i.hv
  store i32 %i.kz, ptr %i.b, align 16, !tbaa !3
  br label %_ZN5arrowL15ShiftArrayRightEPjll.exit.i

scalar.ph141:                                     ; preds = %scalar.ph141.preheader, %scalar.ph141
  %.0.in17.i.i = phi i64 [ %.0.i134.i, %scalar.ph141 ], [ %.0.in17.i.i.ph, %scalar.ph141.preheader ] ; 3 uses
  %.0.i134.i = add nsw i64 %.0.in17.i.i, -1       ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.0.i134.i ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !3
  %i.lc = lshr i32 %i.lb, %i.hv
  %i.ld = getelementptr [4 x i8], ptr %i.b, i64 %.0.in17.i.i
  %i.le = getelementptr i8, ptr %i.ld, i64 -8
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !3
  %i.lg = shl i32 %i.lf, %i.kk
  %i.lh = or disjoint i32 %i.lg, %i.lc
  store i32 %i.lh, ptr %i.la, align 4, !tbaa !3
  %i.li = icmp samesign ugt i64 %.0.in17.i.i, 2
  br i1 %i.li, label %scalar.ph141, label %._crit_edge.i132.i, !llvm.loop !48

_ZN5arrowL15ShiftArrayRightEPjll.exit.i:          ; preds = %._crit_edge.i132.i, %._crit_edge187.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.lj = add i64 %i.ht, -9                       ; 2 uses
  %i.lk = icmp sgt i64 %i.lj, -1
  br i1 %i.lk, label %.lr.ph.i.i136.i, label %.lr.ph36.preheader.i.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i136.i
  %i.ll = add nsw i64 %.02732.i.i.i, -1
  %i.lm = icmp sgt i64 %.02732.i.i.i, 0
  br i1 %i.lm, label %.lr.ph.i.i136.i, label %.lr.ph36.preheader.i.i.i, !llvm.loop !41

.lr.ph.i.i136.i:                                  ; preds = %_ZN5arrowL15ShiftArrayRightEPjll.exit.i, %bb.aa
  %.02732.i.i.i = phi i64 [ %i.ll, %bb.aa ], [ %i.lj, %_ZN5arrowL15ShiftArrayRightEPjll.exit.i ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.02732.i.i.i
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !3
  %.not.i.i137.i = icmp eq i32 %i.lo, 0
  br i1 %.not.i.i137.i, label %bb.aa, label %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i

.lr.ph36.preheader.i.i.i:                         ; preds = %bb.aa, %_ZN5arrowL15ShiftArrayRightEPjll.exit.i
  %i.lp = add nsw i64 %i.ht, -1                   ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.lp ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !3
  %i.ls = zext i32 %i.lr to i64                   ; 2 uses
  %i.lt = icmp eq i64 %i.lp, 0
  br i1 %i.lt, label %.thread.i.i.i, label %bb.ab

.preheader.i.i.i:                                 ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ae, %.thread.i.i.i
  %.022.lcssa.i.i.i = phi i64 [ %.02234.i.i.i.lcssa, %.thread.i.i.i ], [ 1, %bb.ab ], [ 2, %bb.ac ], [ 3, %bb.ad ], [ 4, %bb.ae ] ; 2 uses
  %i.lu = icmp samesign ult i64 %.022.lcssa.i.i.i, 4
  br i1 %i.lu, label %.lr.ph38.preheader.i.i.i, label %bb.al

.lr.ph38.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %i.lv = shl nuw nsw i64 %.022.lcssa.i.i.i, 3    ; 2 uses
  %scevgep.i.i.i = getelementptr i8, ptr %5, i64 %i.lv
  %i.lw = sub nuw nsw i64 32, %i.lv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.lw, i1 false)
  br label %bb.al

.thread.i.i.i:                                    ; preds = %.lr.ph36.i.i.i.3, %.lr.ph36.i.i.i.2, %.lr.ph36.i.i.i.1, %.lr.ph36.preheader.i.i.i
  %.02234.i.i.i.lcssa.sroa.phi = phi ptr [ %5, %.lr.ph36.preheader.i.i.i ], [ %.02234.i.i.i.lcssa.sroa.gep193, %.lr.ph36.i.i.i.1 ], [ %.02234.i.i.i.lcssa.sroa.gep194, %.lr.ph36.i.i.i.2 ], [ %.02234.i.i.i.lcssa.sroa.gep195, %.lr.ph36.i.i.i.3 ]
  %.02234.i.i.i.lcssa = phi i64 [ 1, %.lr.ph36.preheader.i.i.i ], [ 2, %.lr.ph36.i.i.i.1 ], [ 3, %.lr.ph36.i.i.i.2 ], [ 4, %.lr.ph36.i.i.i.3 ]
  %.lcssa169 = phi i64 [ %i.ls, %.lr.ph36.preheader.i.i.i ], [ %i.mf, %.lr.ph36.i.i.i.1 ], [ %i.mq, %.lr.ph36.i.i.i.2 ], [ %i.nb, %.lr.ph36.i.i.i.3 ]
  store i64 %.lcssa169, ptr %.02234.i.i.i.lcssa.sroa.phi, align 8
  br label %.preheader.i.i.i

bb.ab:                                            ; preds = %.lr.ph36.preheader.i.i.i
  %i.lx = add nsw i64 %i.ht, -3                   ; 3 uses
  %i.ly = getelementptr i8, ptr %i.lq, i64 -4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !3
  %i.ma = zext i32 %i.lz to i64
  %i.mb = shl nuw i64 %i.ma, 32
  %i.mc = or disjoint i64 %i.mb, %i.ls
  store i64 %i.mc, ptr %5, align 8
  %.not201 = icmp eq i64 %i.lp, 1
  br i1 %.not201, label %.preheader.i.i.i, label %.lr.ph36.i.i.i.1

.lr.ph36.i.i.i.1:                                 ; preds = %bb.ab
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.lx ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !3
  %i.mf = zext i32 %i.me to i64                   ; 2 uses
  %i.mg = icmp eq i64 %i.lx, 0
  br i1 %i.mg, label %.thread.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph36.i.i.i.1
  %i.mh = add nsw i64 %i.ht, -5                   ; 3 uses
  %i.mi = getelementptr i8, ptr %i.md, i64 -4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = zext i32 %i.mj to i64
  %i.ml = shl nuw i64 %i.mk, 32
  %i.mm = or disjoint i64 %i.ml, %i.mf
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.mm, ptr %i.mn, align 8
  %.not202 = icmp eq i64 %i.lx, 1
  br i1 %.not202, label %.preheader.i.i.i, label %.lr.ph36.i.i.i.2

.lr.ph36.i.i.i.2:                                 ; preds = %bb.ac
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.mh ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mq = zext i32 %i.mp to i64                   ; 2 uses
  %i.mr = icmp eq i64 %i.mh, 0
  br i1 %i.mr, label %.thread.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph36.i.i.i.2
  %i.ms = getelementptr i8, ptr %i.mo, i64 -4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !3
  %i.mu = zext i32 %i.mt to i64
  %i.mv = shl nuw i64 %i.mu, 32
  %i.mw = or disjoint i64 %i.mv, %i.mq
  %i.mx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.mw, ptr %i.mx, align 8
  %.not203 = icmp eq i64 %i.mh, 1
  br i1 %.not203, label %.preheader.i.i.i, label %.lr.ph36.i.i.i.3

.lr.ph36.i.i.i.3:                                 ; preds = %bb.ad
  %i.my = add nsw i64 %i.ht, -7                   ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.my ; 2 uses
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = zext i32 %i.na to i64                   ; 2 uses
  %i.nc = icmp eq i64 %i.my, 0
  br i1 %i.nc, label %.thread.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph36.i.i.i.3
  %i.nd = getelementptr i8, ptr %i.mz, i64 -4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !3
  %i.nf = zext i32 %i.ne to i64
  %i.ng = shl nuw i64 %i.nf, 32
  %i.nh = or disjoint i64 %i.ng, %i.nb
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.nh, ptr %i.ni, align 8
  br label %.preheader.i.i.i

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i: ; preds = %.lr.ph.i.i136.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i

bb.af:                                            ; preds = %._crit_edge.thread.i, %.lr.ph186.i
  %.084185.i = phi i64 [ 0, %.lr.ph186.i ], [ %i.nl, %._crit_edge.thread.i ] ; 3 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.084185.i ; 10 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !3  ; 4 uses
  %i.nl = add nuw nsw i64 %.084185.i, 1           ; 3 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3  ; 2 uses
  %.not98.i = icmp eq i32 %i.nk, %i.kb
  br i1 %.not98.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.no = zext i32 %i.nn to i64
  %i.np = zext i32 %i.nk to i64
  %i.nq = shl nuw i64 %i.np, 32
  %i.nr = or disjoint i64 %i.nq, %i.no
  %i.ns = udiv i64 %i.nr, %i.kc
  %i.nt = trunc i64 %i.ns to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.089.i = phi i32 [ %i.nt, %bb.ag ], [ -1, %bb.af ] ; 2 uses
  %i.nu = mul i32 %.089.i, %i.kb
  %i.nv = sub i32 %i.nn, %i.nu
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !3
  %i.ny = zext i32 %i.nx to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %.190.i = phi i32 [ %.089.i, %bb.ah ], [ %i.of, %bb.aj ] ; 3 uses
  %.088.i = phi i32 [ %i.nv, %bb.ah ], [ %i.og, %bb.aj ] ; 2 uses
  %i.nz = zext i32 %.190.i to i64
  %i.oa = mul nuw i64 %i.nz, %i.kf
  %i.ob = zext i32 %.088.i to i64
  %i.oc = shl nuw i64 %i.ob, 32
  %i.od = or disjoint i64 %i.oc, %i.ny
  %i.oe = icmp ugt i64 %i.oa, %i.od
  br i1 %i.oe, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.of = add i32 %.190.i, -1                     ; 2 uses
  %i.og = add i32 %.088.i, %i.kb                  ; 2 uses
  %i.oh = icmp ult i32 %i.og, %i.kb
  br i1 %i.oh, label %bb.ak, label %bb.ai, !llvm.loop !49

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.i = phi i32 [ %i.of, %bb.aj ], [ %.190.i, %bb.ai ] ; 4 uses
  br i1 %i.hw, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.oi = zext i32 %.2.i to i64                   ; 3 uses
end_hunk_0
