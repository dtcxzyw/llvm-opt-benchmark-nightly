inline.NumInlined: 403
inline.NumDeleted: 197
begin_hunk_0_@_ZN8NArchive3N7z8CEncoder13EncoderConstrEv:bb.a
  %.067.i98.ph = phi i32 [ 0, %.lr.ph.i96 ], [ %i.gm, %middle.block ] ; 2 uses
  %i.gn = sub i32 %i.fy, %.08.i97.ph
  %xtraiter346 = and i32 %i.gn, 3                 ; 2 uses
  %lcmp.mod347.not = icmp eq i32 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.08.i97.prol = phi i32 [ %i.gt, %scalar.ph.prol ], [ %.08.i97.ph, %scalar.ph.preheader ] ; 2 uses
  %.067.i98.prol = phi i32 [ %i.gs, %scalar.ph.prol ], [ %.067.i98.ph, %scalar.ph.preheader ]
  %prol.iter348 = phi i32 [ %prol.iter348.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.go = sext i32 %.08.i97.prol to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !179
  %i.gs = add i32 %i.gr, %.067.i98.prol           ; 3 uses
  %i.gt = add nuw i32 %.08.i97.prol, 1            ; 2 uses
  %prol.iter348.next = add i32 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i32 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !181

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa343.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.gs, %scalar.ph.prol ]
  %.08.i97.unr = phi i32 [ %.08.i97.ph, %scalar.ph.preheader ], [ %i.gt, %scalar.ph.prol ]
  %.067.i98.unr = phi i32 [ %.067.i98.ph, %scalar.ph.preheader ], [ %i.gs, %scalar.ph.prol ]
  %i.gu = sub i32 %.08.i97.ph, %i.fy
  %i.gv = icmp ugt i32 %i.gu, -4
  br i1 %i.gv, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.08.i97 = phi i32 [ %i.ht, %scalar.ph ], [ %.08.i97.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.067.i98 = phi i32 [ %i.hs, %scalar.ph ], [ %.067.i98.unr, %scalar.ph.prol.loopexit ]
  %i.gw = sext i32 %.08.i97 to i64
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !179
  %i.ha = add i32 %i.gz, %.067.i98
  %i.hb = add nuw i32 %.08.i97, 1
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !179
  %i.hg = add i32 %i.hf, %i.ha
  %i.hh = add nuw i32 %.08.i97, 2
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !179
  %i.hm = add i32 %i.hl, %i.hg
  %i.hn = add nuw i32 %.08.i97, 3
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !179
  %i.hs = add i32 %i.hr, %i.hm                    ; 2 uses
  %i.ht = add nuw i32 %.08.i97, 4                 ; 2 uses
  %exitcond.not.i99.3 = icmp eq i32 %i.ht, %i.fy
  br i1 %exitcond.not.i99.3, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit, label %scalar.ph, !llvm.loop !182

_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %_ZNK11NCoderMixer9CBindInfo21GetCoderInStreamIndexEj.exit
  %.06.lcssa.i100 = phi i32 [ 0, %_ZNK11NCoderMixer9CBindInfo21GetCoderInStreamIndexEj.exit ], [ %.lcssa343.unr, %scalar.ph.prol.loopexit ], [ %i.hs, %scalar.ph ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !183
  %i.hw = add i32 %i.hv, %.06.lcssa.i100
  %.sroa.421.0.insert.ext = zext i32 %i.hw to i64
  %.sroa.421.0.insert.shift = shl nuw i64 %.sroa.421.0.insert.ext, 32
  %.sroa.020.0.insert.ext = zext i32 %i.fw to i64
  %.sroa.020.0.insert.insert = or disjoint i64 %.sroa.421.0.insert.shift, %.sroa.020.0.insert.ext
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
  %i.hx = load ptr, ptr %i.du, align 8, !tbaa !40
  %i.hy = load i32, ptr %i.dv, align 4, !tbaa !37
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %i.hz
  store i64 %.sroa.020.0.insert.insert, ptr %i.ia, align 4
  %i.ib = load i32, ptr %i.dv, align 4, !tbaa !37
  %i.ic = add nsw i32 %i.ib, 1
  store i32 %i.ic, ptr %i.dv, align 4, !tbaa !37
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.id = load i32, ptr %i.dn, align 4, !tbaa !37
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp slt i64 %indvars.iv.next208, %i.ie
  br i1 %i.if, label %bb.t, label %.preheader142, !llvm.loop !184

bb.u:                                             ; preds = %.lr.ph174, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit
  %.2173 = phi i32 [ 0, %.lr.ph174 ], [ %i.it, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit ] ; 3 uses
  %i.ig = load i32, ptr %i.dx, align 4, !tbaa !37 ; 2 uses
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %.lr.ph.i101, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread

.lr.ph.i101:                                      ; preds = %bb.u
  %i.ii = load ptr, ptr %i.dy, align 8, !tbaa !40
  %wide.trip.count.i = zext nneg i32 %i.ig to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i101
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i101 ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !185
  %i.im = icmp eq i32 %i.il, %.2173
  br i1 %i.im, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i102 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i102, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread, label %bb.v, !llvm.loop !186

_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread: ; preds = %bb.w, %bb.u
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dz)
  %i.in = load ptr, ptr %i.ea, align 8, !tbaa !40
  %i.io = load i32, ptr %i.eb, align 4, !tbaa !37
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ip
  store i32 %.2173, ptr %i.iq, align 4, !tbaa !4
  %i.ir = load i32, ptr %i.eb, align 4, !tbaa !37
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.eb, align 4, !tbaa !37
  br label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit

_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit: ; preds = %bb.v, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit.thread
  %i.it = add nuw nsw i32 %.2173, 1               ; 2 uses
  %exitcond210.not = icmp eq i32 %i.it, %.081.lcssa
  br i1 %exitcond210.not, label %.loopexit143, label %bb.u, !llvm.loop !187

.loopexit143:                                     ; preds = %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit, %.preheader142, %._crit_edge
  %i.iu = icmp sgt i32 %.080.lcssa, 0
  br i1 %i.iu, label %.lr.ph177, label %._crit_edge178

.lr.ph177:                                        ; preds = %.loopexit143
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph177, %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit
  %.3175 = phi i32 [ 0, %.lr.ph177 ], [ %i.jm, %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit ] ; 3 uses
  %i.ja = load i32, ptr %i.iv, align 4, !tbaa !37 ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph.i103, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread

.lr.ph.i103:                                      ; preds = %bb.x
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !40
  %wide.trip.count.i104 = zext nneg i32 %i.ja to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i103
  %indvars.iv.i105 = phi i64 [ 0, %.lr.ph.i103 ], [ %indvars.iv.next.i106, %bb.z ] ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.i105
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !153
  %i.jf = icmp eq i32 %i.je, %.3175
  br i1 %i.jf, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next.i106 = add nuw nsw i64 %indvars.iv.i105, 1 ; 2 uses
  %exitcond.not.i107 = icmp eq i64 %indvars.iv.next.i106, %wide.trip.count.i104
  br i1 %exitcond.not.i107, label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread, label %bb.y, !llvm.loop !155

_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread: ; preds = %bb.z, %bb.x
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ix)
  %i.jg = load ptr, ptr %i.iy, align 8, !tbaa !40
  %i.jh = load i32, ptr %i.iz, align 4, !tbaa !37
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.ji
  store i32 %.3175, ptr %i.jj, align 4, !tbaa !4
  %i.jk = load i32, ptr %i.iz, align 4, !tbaa !37
  %i.jl = add nsw i32 %i.jk, 1
  store i32 %i.jl, ptr %i.iz, align 4, !tbaa !37
  br label %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit

_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit: ; preds = %bb.y, %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit.thread
  %i.jm = add nuw nsw i32 %.3175, 1               ; 2 uses
  %exitcond211.not = icmp eq i32 %i.jm, %.080.lcssa
  br i1 %exitcond211.not, label %._crit_edge178, label %bb.x, !llvm.loop !188

._crit_edge178:                                   ; preds = %_ZNK11NCoderMixer9CBindInfo21FindBinderForInStreamEj.exit, %.loopexit143
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !37
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge178
  %i.jr = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.jr, align 16, !tbaa !4
  tail call void @__cxa_throw(ptr nonnull %i.jr, ptr nonnull @_ZTIi, ptr null) #19
  unreachable

bb.ab:                                            ; preds = %._crit_edge178
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !37 ; 2 uses
  %.not.i109 = icmp eq i32 %i.jt, 0
  br i1 %.not.i109, label %._crit_edge.i, label %.lr.ph.i110.lr.ph

.lr.ph.i110.lr.ph:                                ; preds = %bb.ab
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !40
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !40 ; 8 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %3 = load i32, ptr %i.jy, align 4               ; 2 uses
  %4 = icmp sgt i32 %3, 0
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %5 = load ptr, ptr %i.jz, align 8               ; 2 uses
  %wide.trip.count.i121 = zext nneg i32 %3 to i64
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126, %.lr.ph.i110.lr.ph
  %.084.in179 = phi ptr [ %i.jv, %.lr.ph.i110.lr.ph ], [ %i.mr, %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126 ]
  %.084 = load i32, ptr %.084.in179, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i110
  %.0 = phi i32 [ 0, %.lr.ph.i110 ], [ %i.kf, %bb.ad ] ; 9 uses
  %.01117.i = phi i32 [ %.084, %.lr.ph.i110 ], [ %i.ke, %bb.ad ] ; 2 uses
  %i.ka = sext i32 %.0 to i64
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !95 ; 2 uses
  %i.kd = icmp ult i32 %.01117.i, %i.kc
  br i1 %i.kd, label %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ke = sub nuw i32 %.01117.i, %i.kc
  %i.kf = add nuw i32 %.0, 1                      ; 2 uses
  %exitcond212.not = icmp eq i32 %i.kf, %i.jt
  br i1 %exitcond212.not, label %._crit_edge.i, label %bb.ac, !llvm.loop !97

._crit_edge.i:                                    ; preds = %bb.ad, %bb.ab
  %i.kg = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.kg, align 16, !tbaa !4
  tail call void @__cxa_throw(ptr nonnull %i.kg, ptr nonnull @_ZTIi, ptr null) #19
  unreachable

_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit: ; preds = %bb.ac
  %.not.i111 = icmp eq i32 %.0, 0
  br i1 %.not.i111, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112.preheader

.lr.ph.i112.preheader:                            ; preds = %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit
  %i.kh = add i32 %.0, 2147483647
  %or.cond322 = icmp ult i32 %i.kh, -2147483640
  br i1 %or.cond322, label %.lr.ph.i112.preheader329, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph.i112.preheader
  %n.mod.vf301 = and i32 %.0, 7                   ; 2 uses
  %i.ki = icmp eq i32 %n.mod.vf301, 0
  %i.kj = select i1 %i.ki, i32 8, i32 %n.mod.vf301
  %n.vec302 = sub i32 %.0, %i.kj                  ; 2 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph300
  %index304 = phi i32 [ 0, %vector.ph300 ], [ %index.next311, %vector.body303 ] ; 3 uses
  %vec.phi305 = phi <4 x i32> [ zeroinitializer, %vector.ph300 ], [ %i.kq, %vector.body303 ]
  %vec.phi306 = phi <4 x i32> [ zeroinitializer, %vector.ph300 ], [ %i.kr, %vector.body303 ]
  %i.kk = sext i32 %index304 to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.kk
  %i.km = sext i32 %index304 to i64
  %i.kn = getelementptr [8 x i8], ptr %i.jx, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kp = getelementptr i8, ptr %i.kn, i64 36
  %wide.vec307 = load <8 x i32>, ptr %i.ko, align 4, !tbaa !179
  %strided.vec308 = shufflevector <8 x i32> %wide.vec307, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec309 = load <8 x i32>, ptr %i.kp, align 4, !tbaa !179
  %strided.vec310 = shufflevector <8 x i32> %wide.vec309, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.kq = add <4 x i32> %strided.vec308, %vec.phi305 ; 2 uses
  %i.kr = add <4 x i32> %strided.vec310, %vec.phi306 ; 2 uses
  %index.next311 = add nuw i32 %index304, 8       ; 2 uses
  %i.ks = icmp eq i32 %index.next311, %n.vec302
  br i1 %i.ks, label %middle.block312, label %vector.body303, !llvm.loop !189

middle.block312:                                  ; preds = %vector.body303
  %bin.rdx313 = add <4 x i32> %i.kr, %i.kq
  %i.kt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx313)
  br label %.lr.ph.i112.preheader329

.lr.ph.i112.preheader329:                         ; preds = %.lr.ph.i112.preheader, %middle.block312
  %.08.i113.ph = phi i32 [ 0, %.lr.ph.i112.preheader ], [ %n.vec302, %middle.block312 ] ; 4 uses
  %.067.i114.ph = phi i32 [ 0, %.lr.ph.i112.preheader ], [ %i.kt, %middle.block312 ] ; 2 uses
  %i.ku = sub i32 %.0, %.08.i113.ph
  %xtraiter349 = and i32 %i.ku, 3                 ; 2 uses
  %lcmp.mod350.not = icmp eq i32 %xtraiter349, 0
  br i1 %lcmp.mod350.not, label %.lr.ph.i112.prol.loopexit, label %.lr.ph.i112.prol

.lr.ph.i112.prol:                                 ; preds = %.lr.ph.i112.preheader329, %.lr.ph.i112.prol
  %.08.i113.prol = phi i32 [ %i.la, %.lr.ph.i112.prol ], [ %.08.i113.ph, %.lr.ph.i112.preheader329 ] ; 2 uses
  %.067.i114.prol = phi i32 [ %i.kz, %.lr.ph.i112.prol ], [ %.067.i114.ph, %.lr.ph.i112.preheader329 ]
  %prol.iter351 = phi i32 [ %prol.iter351.next, %.lr.ph.i112.prol ], [ 0, %.lr.ph.i112.preheader329 ]
  %i.kv = sext i32 %.08.i113.prol to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.kv
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !179
  %i.kz = add i32 %i.ky, %.067.i114.prol          ; 3 uses
  %i.la = add nuw i32 %.08.i113.prol, 1           ; 2 uses
  %prol.iter351.next = add i32 %prol.iter351, 1   ; 2 uses
  %prol.iter351.cmp.not = icmp eq i32 %prol.iter351.next, %xtraiter349
  br i1 %prol.iter351.cmp.not, label %.lr.ph.i112.prol.loopexit, label %.lr.ph.i112.prol, !llvm.loop !190

.lr.ph.i112.prol.loopexit:                        ; preds = %.lr.ph.i112.prol, %.lr.ph.i112.preheader329
  %.lcssa334.unr = phi i32 [ poison, %.lr.ph.i112.preheader329 ], [ %i.kz, %.lr.ph.i112.prol ]
  %.08.i113.unr = phi i32 [ %.08.i113.ph, %.lr.ph.i112.preheader329 ], [ %i.la, %.lr.ph.i112.prol ]
  %.067.i114.unr = phi i32 [ %.067.i114.ph, %.lr.ph.i112.preheader329 ], [ %i.kz, %.lr.ph.i112.prol ]
  %i.lb = sub i32 %.08.i113.ph, %.0
  %i.lc = icmp ugt i32 %i.lb, -4
  br i1 %i.lc, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %.lr.ph.i112.prol.loopexit, %.lr.ph.i112
  %.08.i113 = phi i32 [ %i.ma, %.lr.ph.i112 ], [ %.08.i113.unr, %.lr.ph.i112.prol.loopexit ] ; 5 uses
  %.067.i114 = phi i32 [ %i.lz, %.lr.ph.i112 ], [ %.067.i114.unr, %.lr.ph.i112.prol.loopexit ]
  %i.ld = sext i32 %.08.i113 to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !179
  %i.lh = add i32 %i.lg, %.067.i114
  %i.li = add nuw i32 %.08.i113, 1
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !179
  %i.ln = add i32 %i.lm, %i.lh
  %i.lo = add nuw i32 %.08.i113, 2
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !179
  %i.lt = add i32 %i.ls, %i.ln
  %i.lu = add nuw i32 %.08.i113, 3
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !179
  %i.lz = add i32 %i.ly, %i.lt                    ; 2 uses
  %i.ma = add nuw i32 %.08.i113, 4                ; 2 uses
  %exitcond.not.i115.3 = icmp eq i32 %i.ma, %.0
  br i1 %exitcond.not.i115.3, label %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, label %.lr.ph.i112, !llvm.loop !191

_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118: ; preds = %.lr.ph.i112.prol.loopexit, %.lr.ph.i112, %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit
  %.06.lcssa.i117 = phi i32 [ 0, %_ZNK11NCoderMixer9CBindInfo12FindInStreamEjRjS1_.exit ], [ %.lcssa334.unr, %.lr.ph.i112.prol.loopexit ], [ %i.lz, %.lr.ph.i112 ] ; 3 uses
  br i1 %4, label %.lr.ph.i120.a, label %.preheader

.lr.ph.i120.a:                                    ; preds = %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, %bb.ae
  %indvars.iv.i122 = phi i64 [ %indvars.iv.next.i123, %bb.ae ], [ 0, %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118 ] ; 3 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i122
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !185
  %i.me = icmp eq i32 %i.md, %.06.lcssa.i117
  br i1 %i.me, label %_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i120.a
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i122, 1 ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %indvars.iv.next.i123, %wide.trip.count.i121
  br i1 %exitcond.not.i124, label %.preheader, label %.lr.ph.i120.a, !llvm.loop !186

.preheader:                                       ; preds = %_ZNK11NCoderMixer9CBindInfo22GetCoderOutStreamIndexEj.exit118, %bb.ae
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !37 ; 2 uses
  %i.mh = icmp sgt i32 %i.mg, 0
  br i1 %i.mh, label %.lr.ph181, label %.loopexit140

.lr.ph181:                                        ; preds = %.preheader
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !40
  %wide.trip.count = zext nneg i32 %i.mg to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph181, %bb.ah
  %indvars.iv213 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next214, %bb.ah ] ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %indvars.iv213
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !4
  %i.mm = icmp eq i32 %i.ml, %.06.lcssa.i117
  br i1 %i.mm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mn = trunc nuw nsw i64 %indvars.iv213 to i32
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %i.mo, i32 noundef %i.mn, i32 noundef 1)
  tail call void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 dereferenceable(32) %i.mo, i32 noundef 0)
  %i.mp = load ptr, ptr %i.mi, align 8, !tbaa !40
  store i32 %.06.lcssa.i117, ptr %i.mp, align 4, !tbaa !4
  br label %.loopexit140

bb.ah:                                            ; preds = %bb.af
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count
  br i1 %exitcond216.not, label %.loopexit140, label %bb.af, !llvm.loop !192

_ZNK11NCoderMixer9CBindInfo22FindBinderForOutStreamEj.exit126: ; preds = %.lr.ph.i120.a
  %i.mq = and i64 %indvars.iv.i122, 4294967295
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.mq
  br label %.lr.ph.i110

.loopexit140:                                     ; preds = %bb.ah, %.preheader, %bb.ag
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.mt = load i8, ptr %i.ms, align 4, !tbaa !165, !range !163, !noundef !164
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %.loopexit140
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.mw = load i32, ptr %i.mf, align 4, !tbaa !37 ; 3 uses
  %i.mx = icmp sgt i32 %i.mw, 0
  br i1 %i.mx, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.ai
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %wide.trip.count220 = zext nneg i32 %i.mw to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph184, %bb.aj
  %indvars.iv217 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next218, %bb.aj ] ; 3 uses
  %i.na = trunc nuw nsw i64 %indvars.iv217 to i32
  %i.nb = add i32 %.080.lcssa, %i.na
  %i.nc = load ptr, ptr %i.my, align 8, !tbaa !40
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv217
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !4
  %.sroa.4.0.insert.ext = zext i32 %i.ne to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.05.0.insert.ext = zext i32 %i.nb to i64
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.05.0.insert.ext
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mz)
  %i.nf = load ptr, ptr %i.jz, align 8, !tbaa !40
  %i.ng = load i32, ptr %i.jy, align 4, !tbaa !37
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.nh
  store i64 %.sroa.05.0.insert.insert, ptr %i.ni, align 4
  %i.nj = load i32, ptr %i.jy, align 4, !tbaa !37
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.jy, align 4, !tbaa !37
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %.lr.ph188, label %bb.aj, !llvm.loop !193

._crit_edge185:                                   ; preds = %bb.ai
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mv)
  br label %.loopexit

.lr.ph188:                                        ; preds = %bb.aj
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mv)
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph188, %_ZN7CMethodD2Ev.exit137
  %.6186 = phi i32 [ 0, %.lr.ph188 ], [ %i.ou, %_ZN7CMethodD2Ev.exit137 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nm, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.nn, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.nl, align 8, !tbaa !10
  store i32 1, ptr %i.no, align 8, !tbaa !166
  store i32 1, ptr %i.np, align 4, !tbaa !168
  store i64 116459265, ptr %2, align 8, !tbaa !47
  %i.ns = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
          to label %.noexc128 unwind label %bb.aq ; 7 uses

.noexc128:                                        ; preds = %bb.ak
  store i64 116459265, ptr %i.ns, align 8, !tbaa !47
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.nv, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.nt, align 8, !tbaa !10
  %i.nw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.nt, ptr noundef nonnull align 8 dereferenceable(32) %i.nl)
          to label %bb.al unwind label %.body.i127 ; 0 uses

.body.i127:                                       ; preds = %.noexc128
  %i.nx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.nt) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef 48) #18
  br label %.body129

bb.al:                                            ; preds = %.noexc128
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 40
  %i.nz = load i64, ptr %i.no, align 8
  store i64 %i.nz, ptr %i.ny, align 8
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.oa = load ptr, ptr %i.nq, align 8, !tbaa !40
  %i.ob = load i32, ptr %i.e, align 4, !tbaa !37  ; 2 uses
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %i.oc
  store ptr %i.ns, ptr %i.od, align 8, !tbaa !41
  %i.oe = add nsw i32 %i.ob, 1
  store i32 %i.oe, ptr %i.e, align 4, !tbaa !37
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.jn)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.of = load ptr, ptr %i.jw, align 8, !tbaa !40
  %i.og = load i32, ptr %i.js, align 4, !tbaa !37
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.oh
  store i64 4294967297, ptr %i.oi, align 4
  %i.oj = load i32, ptr %i.js, align 4, !tbaa !37
  %i.ok = add nsw i32 %i.oj, 1
  store i32 %i.ok, ptr %i.js, align 4, !tbaa !37
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.mv)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.ol = add i32 %.6186, %.081.lcssa
  %i.om = load ptr, ptr %i.nr, align 8, !tbaa !40
  %i.on = load i32, ptr %i.mf, align 4, !tbaa !37
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.om, i64 %i.oo
  store i32 %i.ol, ptr %i.op, align 4, !tbaa !4
  %i.oq = load i32, ptr %i.mf, align 4, !tbaa !37
  %i.or = add nsw i32 %i.oq, 1
  store i32 %i.or, ptr %i.mf, align 4, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.nl, align 8, !tbaa !10
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.nl)
          to label %_ZN7CMethodD2Ev.exit137 unwind label %bb.ap, !inline_history !169

bb.ap:                                            ; preds = %bb.ao
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  call void @__clang_call_terminate(ptr %i.ot) #17, !inline_history !169
  unreachable

_ZN7CMethodD2Ev.exit137:                          ; preds = %bb.ao
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.nl) #16, !inline_history !169
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.ou = add nuw nsw i32 %.6186, 1               ; 2 uses
  %exitcond222.not = icmp eq i32 %i.ou, %i.mw
  br i1 %exitcond222.not, label %.loopexit, label %bb.ak, !llvm.loop !194

bb.aq:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body129

.body129:                                         ; preds = %.body.i127, %bb.aq
  %eh.lpad-body130 = phi { ptr, i32 } [ %i.ov, %bb.aq ], [ %i.nx, %.body.i127 ]
  call void @_ZN7CMethodD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.av

.loopexit:                                        ; preds = %_ZN7CMethodD2Ev.exit137, %._crit_edge185, %.loopexit140, %_ZN7CMethodD2Ev.exit
  %i.ow = load i32, ptr %i.e, align 4, !tbaa !37  ; 2 uses
  %i.ox = icmp sgt i32 %i.ow, 0
  br i1 %i.ox, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %.loopexit
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.pc = zext nneg i32 %i.ow to i64
  br label %bb.ar

._crit_edge192:                                   ; preds = %bb.ar, %.loopexit
  %i.pd = call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #15 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke void @_ZN11NCoderMixer21CBindReverseConverterC1ERKNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(272) %i.pd, ptr noundef nonnull align 8 dereferenceable(128) %i.pe)
          to label %bb.as unwind label %bb.at

bb.ar:                                            ; preds = %.lr.ph191, %bb.ar
  %indvars.iv223 = phi i64 [ %i.pc, %.lr.ph191 ], [ %indvars.iv.next224, %bb.ar ] ; 2 uses
  %indvars.iv.next224 = add nsw i64 %indvars.iv223, -1 ; 2 uses
  %i.pf = load ptr, ptr %i.oy, align 8, !tbaa !40
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %indvars.iv.next224
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !41
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !47
  call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.oz)
  %i.pj = load ptr, ptr %i.pa, align 8, !tbaa !40
  %i.pk = load i32, ptr %i.pb, align 4, !tbaa !37 ; 2 uses
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.pl
  store i64 %i.pi, ptr %i.pm, align 8, !tbaa !138
  %i.pn = add nsw i32 %i.pk, 1
  store i32 %i.pn, ptr %i.pb, align 4, !tbaa !37
  %i.po = icmp samesign ugt i64 %indvars.iv223, 1
  br i1 %i.po, label %bb.ar, label %._crit_edge192, !llvm.loop !195

bb.as:                                            ; preds = %._crit_edge192
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.pd, ptr %i.pp, align 8, !tbaa !143
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @_ZN11NCoderMixer21CBindReverseConverter21CreateReverseBindInfoERNS_9CBindInfoE(ptr noundef nonnull align 8 dereferenceable(272) %i.pd, ptr noundef nonnull align 8 dereferenceable(128) %i.pq)
end_hunk_0
