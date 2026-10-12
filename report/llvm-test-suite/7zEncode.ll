Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zEncode?download=true
inline.NumInlined: 400
inline.NumDeleted: 195
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8NArchive3N7z8CEncoder13EncoderConstrEv:bb.a
  %.067.i98.ph = phi i32 [ 0, %.lr.ph.i96 ], [ %i.go, %middle.block ] ; 2 uses
  %i.gp = sub i32 %i.fz, %.08.i97.ph
  %xtraiter343 = and i32 %i.gp, 3                 ; 2 uses
  %lcmp.mod344.not = icmp eq i32 %xtraiter343, 0
  br i1 %lcmp.mod344.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.08.i97.prol = phi i32 [ %i.gv, %scalar.ph.prol ], [ %.08.i97.ph, %scalar.ph.preheader ] ; 2 uses
  %.067.i98.prol = phi i32 [ %i.gu, %scalar.ph.prol ], [ %.067.i98.ph, %scalar.ph.preheader ]
  %prol.iter345 = phi i32 [ %prol.iter345.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gq = sext i32 %.08.i97.prol to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !201
  %i.gu = add i32 %i.gt, %.067.i98.prol           ; 3 uses
  %i.gv = add nuw i32 %.08.i97.prol, 1            ; 2 uses
  %prol.iter345.next = add i32 %prol.iter345, 1   ; 2 uses
  %prol.iter345.cmp.not = icmp eq i32 %prol.iter345.next, %xtraiter343
  br i1 %prol.iter345.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !180

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa340.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.gu, %scalar.ph.prol ]
  %.08.i97.unr = phi i32 [ %.08.i97.ph, %scalar.ph.preheader ], [ %i.gv, %scalar.ph.prol ]
  %.067.i98.unr = phi i32 [ %.067.i98.ph, %scalar.ph.preheader ], [ %i.gu, %scalar.ph.prol ]
  %i.gw = sub i32 %.08.i97.ph, %i.fz
  %i.gx = icmp ugt i32 %i.gw, -4
  br i1 %i.gx, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.08.i97 = phi i32 [ %i.hv, %scalar.ph ], [ %.08.i97.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.067.i98 = phi i32 [ %i.hu, %scalar.ph ], [ %.067.i98.unr, %scalar.ph.prol.loopexit ]
  %i.gy = sext i32 %.08.i97 to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !201
  %i.hc = add i32 %i.hb, %.067.i98
  %i.hd = add nuw i32 %.08.i97, 1
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !201
  %i.hi = add i32 %i.hh, %i.hc
  %i.hj = add nuw i32 %.08.i97, 2
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !201
  %i.ho = add i32 %i.hn, %i.hi
  %i.hp = add nuw i32 %.08.i97, 3
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !201
  %i.hu = add i32 %i.ht, %i.ho                    ; 2 uses
  %i.hv = add nuw i32 %.08.i97, 4                 ; 2 uses
  %exitcond.not.i99.3 = icmp eq i32 %i.hv, %i.fz
  br i1 %exitcond.not.i99.3, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit, label %scalar.ph, !llvm.loop !181

_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNK11NCoderMixer9CBindInfo21GetCoderInStreamIndexEj.exit
  %.06.lcssa.i100 = phi i32 [ 0, %_ZNK11NCoderMixer9CBindInfo21GetCoderInStreamIndexEj.exit ], [ %.lcssa340.unr, %scalar.ph.prol.loopexit ], [ %i.hu, %scalar.ph ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !202
  %i.hy = add i32 %i.hx, %.06.lcssa.i100
  %.sroa.421.0.insert.ext = zext i32 %i.hy to i64
  %.sroa.421.0.insert.shift = shl nuw i64 %.sroa.421.0.insert.ext, 32
  %.sroa.020.0.insert.ext = zext i32 %i.fx to i64
  %.sroa.020.0.insert.insert = or disjoint i64 %.sroa.421.0.insert.shift, %.sroa.020.0.insert.ext
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
  %i.hz = load ptr, ptr %i.du, align 8, !tbaa !41
  %i.ia = load i32, ptr %i.dv, align 4, !tbaa !39
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.ib
  store i64 %.sroa.020.0.insert.insert, ptr %i.ic, align 4, !tbaa !10
  %i.id = load i32, ptr %i.dv, align 4, !tbaa !39
  %i.ie = add nsw i32 %i.id, 1
  store i32 %i.ie, ptr %i.dv, align 4, !tbaa !39
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.if = load i32, ptr %i.dn, align 4, !tbaa !39
  %i.ig = sext i32 %i.if to i64
  %i.ih = icmp slt i64 %indvars.iv.next208, %i.ig
  br i1 %i.ih, label %bb.t, label %.preheader142, !llvm.loop !182

bb.u:                                             ; preds = %.lr.ph174, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit
  %.2173 = phi i32 [ 0, %.lr.ph174 ], [ %i.iv, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit ] ; 3 uses
  %i.ii = load i32, ptr %i.dx, align 4, !tbaa !39 ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %.lr.ph.i101, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread

.lr.ph.i101:                                      ; preds = %bb.u
  %i.ik = load ptr, ptr %i.dy, align 8, !tbaa !41
  %wide.trip.count.i = zext nneg i32 %i.ii to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i101
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i101 ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4, !tbaa !203
  %i.io = icmp eq i32 %i.in, %.2173
  br i1 %i.io, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i102, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread, label %bb.v, !llvm.loop !183

_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread: ; preds = %bb.w, %bb.u
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dz)
  %i.ip = load ptr, ptr %i.ea, align 8, !tbaa !41
  %i.iq = load i32, ptr %i.eb, align 4, !tbaa !39
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ir
  store i32 %.2173, ptr %i.is, align 4, !tbaa !10
  %i.it = load i32, ptr %i.eb, align 4, !tbaa !39
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.eb, align 4, !tbaa !39
  br label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit

_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit: ; preds = %bb.v, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread
  %i.iv = add nuw nsw i32 %.2173, 1               ; 2 uses
  %exitcond210.not = icmp eq i32 %i.iv, %.083.lcssa
  br i1 %exitcond210.not, label %.loopexit143, label %bb.u, !llvm.loop !184

.loopexit143:                                     ; preds = %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit, %.preheader142, %._crit_edge
  %i.iw = icmp sgt i32 %.082.lcssa, 0
  br i1 %i.iw, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %.loopexit143
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph177, %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit
  %.3175 = phi i32 [ 0, %.lr.ph177 ], [ %i.jo, %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit ] ; 3 uses
  %i.jc = load i32, ptr %i.ix, align 4, !tbaa !39 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph.i103, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread

.lr.ph.i103:                                      ; preds = %bb.x
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !41
  %wide.trip.count.i104 = zext nneg i32 %i.jc to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i103
  %indvars.iv.i105 = phi i64 [ 0, %.lr.ph.i103 ], [ %indvars.iv.next.i106, %bb.z ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.i105
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !78
  %i.jh = icmp eq i32 %i.jg, %.3175
  br i1 %i.jh, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %exitcond.not.i107 = icmp eq i64 %indvars.iv.next.i106, %wide.trip.count.i104
  br i1 %exitcond.not.i107, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread, label %bb.y, !llvm.loop !1

_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread: ; preds = %bb.z, %bb.x
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.iz)
  %i.ji = load ptr, ptr %i.ja, align 8, !tbaa !41
  %i.jj = load i32, ptr %i.jb, align 4, !tbaa !39
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ji, i64 %i.jk
  store i32 %.3175, ptr %i.jl, align 4, !tbaa !10
  %i.jm = load i32, ptr %i.jb, align 4, !tbaa !39
  %i.jn = add nsw i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !39
  br label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit

_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit: ; preds = %bb.y, %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread
  %i.jo = add nuw nsw i32 %.3175, 1               ; 2 uses
  %exitcond211.not = icmp eq i32 %i.jo, %.082.lcssa
  br i1 %exitcond211.not, label %._crit_edge178, label %bb.x, !llvm.loop !185

._crit_edge178:                                   ; preds = %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit, %.loopexit143
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !39
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge178
  %i.jt = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.jt, align 16, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.jt, ptr nonnull @_ZTIi, ptr null) #19
  unreachable

bb.ab:                                            ; preds = %._crit_edge178
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !39 ; 2 uses
  %.not.i109 = icmp eq i32 %i.jv, 0
  br i1 %.not.i109, label %._crit_edge.i, label %.lr.ph.i110.lr.ph

.lr.ph.i110.lr.ph:                                ; preds = %bb.ab
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !41
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !41 ; 8 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126, %.lr.ph.i110.lr.ph
  %.081.in179 = phi ptr [ %i.jx, %.lr.ph.i110.lr.ph ], [ %4, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126 ]
  %.081 = load i32, ptr %.081.in179, align 4, !tbaa !10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i110
  %.0 = phi i32 [ 0, %.lr.ph.i110 ], [ %i.kh, %bb.ad ] ; 9 uses
  %.01117.i = phi i32 [ %.081, %.lr.ph.i110 ], [ %i.kg, %bb.ad ] ; 2 uses
  %i.kc = sext i32 %.0 to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !68 ; 2 uses
  %i.kf = icmp ult i32 %.01117.i, %i.ke
  br i1 %i.kf, label %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kg = sub nuw i32 %.01117.i, %i.ke
  %i.kh = add nuw i32 %.0, 1                      ; 2 uses
  %exitcond212.not = icmp eq i32 %i.kh, %i.jv
  br i1 %exitcond212.not, label %._crit_edge.i, label %bb.ac, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.ad, %bb.ab
  %i.ki = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.ki, align 16, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.ki, ptr nonnull @_ZTIi, ptr null) #19
  unreachable

_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit: ; preds = %bb.ac
  %.not.i111 = icmp eq i32 %.0, 0
  br i1 %.not.i111, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit
  %i.kj = add i32 %.0, 2147483647
  %or.cond319 = icmp ult i32 %i.kj, -2147483640
  br i1 %or.cond319, label %.lr.ph.i112.preheader326, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph.i112.preheader
  %i.kk = and i32 %.0, 7                          ; 2 uses
  %i.kl = icmp eq i32 %i.kk, 0
  %i.km = select i1 %i.kl, i32 8, i32 %i.kk
  %n.vec301 = sub i32 %.0, %i.km                  ; 2 uses
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i32 [ 0, %vector.ph300 ], [ %index.next310, %vector.body302 ] ; 3 uses
  %vec.phi304 = phi <4 x i32> [ zeroinitializer, %vector.ph300 ], [ %i.kt, %vector.body302 ]
  %vec.phi305 = phi <4 x i32> [ zeroinitializer, %vector.ph300 ], [ %i.ku, %vector.body302 ]
  %i.kn = sext i32 %index303 to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kn
  %i.kp = sext i32 %index303 to i64
  %i.kq = getelementptr [8 x i8], ptr %i.jz, i64 %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 4
  %i.ks = getelementptr i8, ptr %i.kq, i64 36
  %wide.vec306 = load <8 x i32>, ptr %i.kr, align 4, !tbaa !201
  %strided.vec307 = shufflevector <8 x i32> %wide.vec306, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec308 = load <8 x i32>, ptr %i.ks, align 4, !tbaa !201
  %strided.vec309 = shufflevector <8 x i32> %wide.vec308, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.kt = add <4 x i32> %strided.vec307, %vec.phi304 ; 2 uses
  %i.ku = add <4 x i32> %strided.vec309, %vec.phi305 ; 2 uses
  %index.next310 = add nuw i32 %index303, 8       ; 2 uses
  %i.kv = icmp eq i32 %index.next310, %n.vec301
  br i1 %i.kv, label %middle.block311, label %vector.body302, !llvm.loop !186

middle.block311:                                  ; preds = %vector.body302
  %bin.rdx312 = add <4 x i32> %i.ku, %i.kt
  %i.kw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx312)
  br label %.lr.ph.i112.preheader326

.lr.ph.i112.preheader326:                         ; preds = %.lr.ph.i112.preheader, %middle.block311
  %.08.i113.ph = phi i32 [ 0, %.lr.ph.i112.preheader ], [ %n.vec301, %middle.block311 ] ; 4 uses
  %.067.i114.ph = phi i32 [ 0, %.lr.ph.i112.preheader ], [ %i.kw, %middle.block311 ] ; 2 uses
  %i.kx = sub i32 %.0, %.08.i113.ph
  %xtraiter346 = and i32 %i.kx, 3                 ; 2 uses
  %lcmp.mod347.not = icmp eq i32 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph.i112.prol.loopexit, label %.lr.ph.i112.prol

.lr.ph.i112.prol:                                 ; preds = %.lr.ph.i112.preheader326, %.lr.ph.i112.prol
  %.08.i113.prol = phi i32 [ %i.ld, %.lr.ph.i112.prol ], [ %.08.i113.ph, %.lr.ph.i112.preheader326 ] ; 2 uses
  %.067.i114.prol = phi i32 [ %i.lc, %.lr.ph.i112.prol ], [ %.067.i114.ph, %.lr.ph.i112.preheader326 ]
  %prol.iter348 = phi i32 [ %prol.iter348.next, %.lr.ph.i112.prol ], [ 0, %.lr.ph.i112.preheader326 ]
  %i.ky = sext i32 %.08.i113.prol to i64
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !201
  %i.lc = add i32 %i.lb, %.067.i114.prol          ; 3 uses
  %i.ld = add nuw i32 %.08.i113.prol, 1           ; 2 uses
  %prol.iter348.next = add i32 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i32 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %.lr.ph.i112.prol.loopexit, label %.lr.ph.i112.prol, !llvm.loop !187

.lr.ph.i112.prol.loopexit:                        ; preds = %.lr.ph.i112.prol, %.lr.ph.i112.preheader326
  %.lcssa331.unr = phi i32 [ poison, %.lr.ph.i112.preheader326 ], [ %i.lc, %.lr.ph.i112.prol ]
  %.08.i113.unr = phi i32 [ %.08.i113.ph, %.lr.ph.i112.preheader326 ], [ %i.ld, %.lr.ph.i112.prol ]
  %.067.i114.unr = phi i32 [ %.067.i114.ph, %.lr.ph.i112.preheader326 ], [ %i.lc, %.lr.ph.i112.prol ]
  %i.le = sub i32 %.08.i113.ph, %.0
  %i.lf = icmp ugt i32 %i.le, -4
  br i1 %i.lf, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112.prol.loopexit, %.lr.ph.i112
  %.08.i113 = phi i32 [ %i.md, %.lr.ph.i112 ], [ %.08.i113.unr, %.lr.ph.i112.prol.loopexit ] ; 5 uses
  %.067.i114 = phi i32 [ %i.mc, %.lr.ph.i112 ], [ %.067.i114.unr, %.lr.ph.i112.prol.loopexit ]
  %i.lg = sext i32 %.08.i113 to i64
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !201
  %i.lk = add i32 %i.lj, %.067.i114
  %i.ll = add nuw i32 %.08.i113, 1
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !201
  %i.lq = add i32 %i.lp, %i.lk
  %i.lr = add nuw i32 %.08.i113, 2
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !201
  %i.lw = add i32 %i.lv, %i.lq
  %i.lx = add nuw i32 %.08.i113, 3
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !201
  %i.mc = add i32 %i.mb, %i.lw                    ; 2 uses
  %i.md = add nuw i32 %.08.i113, 4                ; 2 uses
  %exitcond.not.i115.3 = icmp eq i32 %i.md, %.0
  br i1 %exitcond.not.i115.3, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112, !llvm.loop !188

_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118: ; preds = %.lr.ph.i112.prol.loopexit, %.lr.ph.i112, %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit
  %.06.lcssa.i117 = phi i32 [ 0, %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit ], [ %.lcssa331.unr, %.lr.ph.i112.prol.loopexit ], [ %i.mc, %.lr.ph.i112 ] ; 3 uses
  %i.me = load i32, ptr %i.ka, align 4, !tbaa !39 ; 2 uses
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph.i120, label %.preheader

.lr.ph.i120:                                      ; preds = %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118
  %i.mg = load ptr, ptr %i.kb, align 8, !tbaa !41
  %wide.trip.count.i121 = zext nneg i32 %i.me to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i120
  %indvars.iv.i122 = phi i64 [ 0, %.lr.ph.i120 ], [ %indvars.iv.next.i123, %bb.af ] ; 3 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv.i122
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !203
  %i.mk = icmp eq i32 %i.mj, %.06.lcssa.i117
  br i1 %i.mk, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %indvars.iv.next.i123, %wide.trip.count.i121
  br i1 %exitcond.not.i124, label %.preheader, label %bb.ae, !llvm.loop !183

.preheader:                                       ; preds = %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, %bb.af
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !39 ; 2 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.lr.ph181, label %.loopexit140

.lr.ph181:                                        ; preds = %.preheader
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !41
  %wide.trip.count = zext nneg i32 %i.mm to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph181, %bb.ai
  %indvars.iv213 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next214, %bb.ai ] ; 3 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv213
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !10
  %i.ms = icmp eq i32 %i.mr, %.06.lcssa.i117
  br i1 %i.ms, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mt = trunc nuw nsw i64 %indvars.iv213 to i32
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %i.mu, i32 noundef %i.mt, i32 noundef 1)
  tail call void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %i.mu, i32 noundef 0)
  %i.mv = load ptr, ptr %i.mo, align 8, !tbaa !41
  store i32 %.06.lcssa.i117, ptr %i.mv, align 4, !tbaa !10
  br label %.loopexit140

bb.ai:                                            ; preds = %bb.ag
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count
  br i1 %exitcond216.not, label %.loopexit140, label %bb.ag, !llvm.loop !189

_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126: ; preds = %bb.ae
  %3 = load ptr, ptr %i.kb, align 8, !tbaa !41
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i122
  br label %.lr.ph.i110

.loopexit140:                                     ; preds = %bb.ai, %.preheader, %bb.ah
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.mx = load i8, ptr %i.mw, align 4, !tbaa !193, !range !83, !noundef !84
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %.loopexit140
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.na = load i32, ptr %i.ml, align 4, !tbaa !39 ; 3 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.aj
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %wide.trip.count220 = zext nneg i32 %i.na to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph184, %bb.ak
  %indvars.iv217 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next218, %bb.ak ] ; 3 uses
  %i.ne = trunc nuw nsw i64 %indvars.iv217 to i32
  %i.nf = add i32 %.082.lcssa, %i.ne
  %i.ng = load ptr, ptr %i.nc, align 8, !tbaa !41
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %indvars.iv217
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !10
  %.sroa.4.0.insert.ext = zext i32 %i.ni to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.05.0.insert.ext = zext i32 %i.nf to i64
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.05.0.insert.ext
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.nd)
  %i.nj = load ptr, ptr %i.kb, align 8, !tbaa !41
  %i.nk = load i32, ptr %i.ka, align 4, !tbaa !39
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [8 x i8], ptr %i.nj, i64 %i.nl
  store i64 %.sroa.05.0.insert.insert, ptr %i.nm, align 4, !tbaa !10
  %i.nn = load i32, ptr %i.ka, align 4, !tbaa !39
  %i.no = add nsw i32 %i.nn, 1
  store i32 %i.no, ptr %i.ka, align 4, !tbaa !39
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %.lr.ph188, label %bb.ak, !llvm.loop !190

._crit_edge185:                                   ; preds = %bb.aj
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mz)
  br label %.loopexit

.lr.ph188:                                        ; preds = %bb.ak
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mz)
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph188, %_ZN7CMethodD2Ev.exit137
  %.6186 = phi i32 [ 0, %.lr.ph188 ], [ %i.oz, %_ZN7CMethodD2Ev.exit137 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nq, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.nr, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.np, align 8, !tbaa !14
  store i32 1, ptr %i.ns, align 8, !tbaa !195
  store i32 1, ptr %i.nt, align 4, !tbaa !196
  store i64 116459265, ptr %2, align 8, !tbaa !50
  %i.nw = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
          to label %.noexc128 unwind label %bb.ar ; 7 uses

.noexc128:                                        ; preds = %bb.al
  %i.nx = load i64, ptr %2, align 8, !tbaa !50
  store i64 %i.nx, ptr %i.nw, align 8, !tbaa !50
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.oa, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.ny, align 8, !tbaa !14
  %i.ob = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ny, ptr noundef nonnull align 8 dereferenceable(32) %i.np)
          to label %bb.am unwind label %.body.i127 ; 0 uses

.body.i127:                                       ; preds = %.noexc128
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ny) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.nw, i64 noundef 48) #17
  br label %.body129

bb.am:                                            ; preds = %.noexc128
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  %i.oe = load i64, ptr %i.ns, align 8
  store i64 %i.oe, ptr %i.od, align 8
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.of = load ptr, ptr %i.nu, align 8, !tbaa !41
  %i.og = load i32, ptr %i.e, align 4, !tbaa !39  ; 2 uses
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.oh
  store ptr %i.nw, ptr %i.oi, align 8, !tbaa !42
  %i.oj = add nsw i32 %i.og, 1
  store i32 %i.oj, ptr %i.e, align 4, !tbaa !39
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.jp)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ok = load ptr, ptr %i.jy, align 8, !tbaa !41
  %i.ol = load i32, ptr %i.ju, align 4, !tbaa !39
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %i.ok, i64 %i.om
  store i64 4294967297, ptr %i.on, align 4, !tbaa !10
  %i.oo = load i32, ptr %i.ju, align 4, !tbaa !39
  %i.op = add nsw i32 %i.oo, 1
  store i32 %i.op, ptr %i.ju, align 4, !tbaa !39
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mz)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.oq = add i32 %.6186, %.083.lcssa
  %i.or = load ptr, ptr %i.nv, align 8, !tbaa !41
  %i.os = load i32, ptr %i.ml, align 4, !tbaa !39
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.or, i64 %i.ot
  store i32 %i.oq, ptr %i.ou, align 4, !tbaa !10
  %i.ov = load i32, ptr %i.ml, align 4, !tbaa !39
  %i.ow = add nsw i32 %i.ov, 1
  store i32 %i.ow, ptr %i.ml, align 4, !tbaa !39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.np, align 8, !tbaa !14
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.np)
          to label %_ZN7CMethodD2Ev.exit137 unwind label %bb.aq, !inline_history !85

bb.aq:                                            ; preds = %bb.ap
  %i.ox = landingpad { ptr, i32 }
          catch ptr null
  %i.oy = extractvalue { ptr, i32 } %i.ox, 0
  call void @__clang_call_terminate(ptr %i.oy) #18, !inline_history !85
  unreachable

_ZN7CMethodD2Ev.exit137:                          ; preds = %bb.ap
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.np) #16, !inline_history !85
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.oz = add nuw nsw i32 %.6186, 1               ; 2 uses
  %exitcond222.not = icmp eq i32 %i.oz, %i.na
  br i1 %exitcond222.not, label %.loopexit, label %bb.al, !llvm.loop !191

bb.ar:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.body129:                                         ; preds = %.body.i127, %bb.ar
  %eh.lpad-body130 = phi { ptr, i32 } [ %i.pa, %bb.ar ], [ %i.oc, %.body.i127 ]
  call void @_ZN7CMethodD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.aw

.loopexit:                                        ; preds = %_ZN7CMethodD2Ev.exit137, %._crit_edge185, %.loopexit140, %_ZN7CMethodD2Ev.exit
  %i.pb = load i32, ptr %i.e, align 4, !tbaa !39  ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, 0
  br i1 %i.pc, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %.loopexit
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.ph = zext nneg i32 %i.pb to i64
  br label %bb.as

._crit_edge192:                                   ; preds = %bb.as, %.loopexit
  %i.pi = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #15 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN11NCoderMixer21CBindReverseConverterC1ERKNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(272) %i.pi, ptr noundef nonnull align 8 dereferenceable(128) %i.pj)
          to label %bb.at unwind label %bb.au

bb.as:                                            ; preds = %.lr.ph191, %bb.as
  %indvars.iv223 = phi i64 [ %i.ph, %.lr.ph191 ], [ %indvars.iv.next224, %bb.as ] ; 2 uses
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, -1 ; 2 uses
  %i.pk = load ptr, ptr %i.pd, align 8, !tbaa !41
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.next224
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !42
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !50
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.pe)
  %i.po = load ptr, ptr %i.pf, align 8, !tbaa !41
  %i.pp = load i32, ptr %i.pg, align 4, !tbaa !39 ; 2 uses
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.pq
  store i64 %i.pn, ptr %i.pr, align 8, !tbaa !72
  %i.ps = add nsw i32 %i.pp, 1
  store i32 %i.ps, ptr %i.pg, align 4, !tbaa !39
  %i.pt = icmp samesign ugt i64 %indvars.iv223, 1
  br i1 %i.pt, label %bb.as, label %._crit_edge192, !llvm.loop !192

bb.at:                                            ; preds = %._crit_edge192
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.pi, ptr %i.pu, align 8, !tbaa !73
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @_ZN11NCoderMixer21CBindReverseConverter21CreateReverseBindInfoERNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(272) %i.pi, ptr noundef nonnull align 8 dereferenceable(128) %i.pv)
  store i8 1, ptr %i.a, align 8, !tbaa !82
end_hunk_0
