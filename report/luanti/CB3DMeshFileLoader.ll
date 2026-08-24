Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CB3DMeshFileLoader?download=true
inline.NumInlined: 1647
inline.NumDeleted: 602
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5scene18CB3DMeshFileLoader13readChunkBRUSEv:bb.a
  %i.ed = getelementptr inbounds i8, ptr %i.dh, i64 -48
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !8
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef i64 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull %i.ed, i64 noundef 4)
          to label %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit107 unwind label %bb.y, !inline_history !148 ; 0 uses

_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit107: ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit105
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.dh, i64 -44
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef i64 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull %i.ej, i64 noundef 4)
          to label %bb.s unwind label %bb.y       ; 0 uses

bb.s:                                             ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit107
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.dh, i64 -40 ; 2 uses
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !8
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef i64 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull %i.eo, i64 noundef 4)
          to label %.preheader112 unwind label %bb.y ; 0 uses

.preheader112:                                    ; preds = %bb.s
  br i1 %.not156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader112
  %i.es = getelementptr inbounds i8, ptr %i.dh, i64 -32
  br label %bb.t

.preheader:                                       ; preds = %bb.aa
  br i1 %.not157.not, label %.lr.ph146, label %._crit_edge

bb.t:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 -1, ptr %i.c, align 4, !tbaa !108
  %i.et = load ptr, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = invoke noundef i64 %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.et, ptr noundef nonnull %i.c, i64 noundef 4)
          to label %bb.u unwind label %bb.z       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ex = load i32, ptr %i.c, align 4, !tbaa !108 ; 2 uses
  %i.ey = load ptr, ptr %i.as, align 8, !tbaa !134
  %i.ez = load ptr, ptr %i.ar, align 8, !tbaa !133 ; 2 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 2 uses
  %i.fd = lshr exact i64 %i.fc, 6
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = icmp ult i32 %i.ex, %i.fe
  br i1 %i.ff, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.fg = zext i32 %i.ex to i64                   ; 2 uses
  %i.fh = ashr exact i64 %i.fc, 6
  %i.fi = icmp ugt i64 %i.fh, %i.fg
  br i1 %i.fi, label %_ZN4core5arrayIN5scene11SB3dTextureEEixEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5scene11SB3dTextureEEixEj) #28
  unreachable

_ZN4core5arrayIN5scene11SB3dTextureEEixEj.exit:   ; preds = %bb.v
  %i.fj = getelementptr inbounds nuw [64 x i8], ptr %i.ez, i64 %i.fg
  br label %bb.aa

bb.x:                                             ; preds = %bb.l, %bb.k
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5scene12SB3dMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.bu

bb.y:                                             ; preds = %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit105, %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit103, %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit101, %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit, %_ZN4core5arrayIN5scene12SB3dMaterialEE7getLastEv.exit, %bb.s, %_ZN5scene18CB3DMeshFileLoader10readFloatsEPfj.exit107
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.z:                                             ; preds = %bb.t
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.bu

bb.aa:                                            ; preds = %bb.u, %_ZN4core5arrayIN5scene11SB3dTextureEEixEj.exit
  %.sink = phi ptr [ %i.fj, %_ZN4core5arrayIN5scene11SB3dTextureEEixEj.exit ], [ null, %bb.u ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv
  store ptr %.sink, ptr %i.fn, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.t, !llvm.loop !174

.lr.ph146:                                        ; preds = %.preheader, %bb.ag
  %.1145 = phi i32 [ %i.ge, %bb.ag ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 -1, ptr %i.d, align 4, !tbaa !108
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !8
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef i64 %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull %i.d, i64 noundef 4)
          to label %bb.ab unwind label %bb.af     ; 0 uses

bb.ab:                                            ; preds = %.lr.ph146
  %i.fs = load i8, ptr %i.at, align 2, !tbaa !47, !range !175, !noundef !176
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = load i32, ptr %i.d, align 4
  %i.fv = icmp ne i32 %i.fu, -1
  %or.cond = select i1 %i.ft, i1 %i.fv, i1 false
  %i.fw = load i32, ptr %i.b, align 4
  %i.fx = icmp ugt i32 %i.fw, 4
  %or.cond3 = select i1 %or.cond, i1 %i.fx, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.fy = load ptr, ptr %i.e, align 8, !tbaa !69  ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.gb(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2os7Printer3logEPKcRKN4core6stringIcEE10ELOG_LEVEL(ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %i.gc, i32 noundef 2)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.at, align 2, !tbaa !47
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph146
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.bu

bb.ag:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ge = add nuw i32 %.1145, 1                   ; 2 uses
  %exitcond159.not = icmp eq i32 %i.ge, %i.l
  br i1 %exitcond159.not, label %._crit_edge, label %.lr.ph146, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.ag, %.preheader112, %.preheader
  %i.gf = getelementptr inbounds i8, ptr %i.dh, i64 -32 ; 19 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !137 ; 3 uses
  %.not = icmp eq ptr %i.gg, null
  br i1 %.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !178
  %i.gj = and i32 %i.gi, 65536
  %.not83 = icmp eq i32 %i.gj, 0
  br i1 %.not83, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds i8, ptr %i.dh, i64 -24 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !137
  store ptr %i.gg, ptr %i.gk, align 8, !tbaa !137
  store ptr %i.gl, ptr %i.gf, align 8, !tbaa !137
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %._crit_edge
  br i1 %.not156, label %._crit_edge154, label %.lr.ph153

.loopexit:                                        ; preds = %bb.bc, %.lr.ph153
  br i1 %.not84, label %._crit_edge154, label %.lr.ph153.1

.lr.ph153.1:                                      ; preds = %.loopexit
  br i1 %i.az, label %.lr.ph149.prol.1, label %.loopexit.1

.lr.ph149.prol.1:                                 ; preds = %.lr.ph153.1
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.av ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !137 ; 2 uses
  %.not91.prol.1 = icmp eq ptr %i.gn, null
  br i1 %.not91.prol.1, label %.loopexit.1, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph149.prol.1
  %i.go = getelementptr [8 x i8], ptr %i.gf, i64 %i.av
  %i.gp = getelementptr i8, ptr %i.go, i64 -8     ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !137
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.al, label %.loopexit.1

bb.al:                                            ; preds = %bb.ak
  store ptr %i.gn, ptr %i.gp, align 8, !tbaa !137
  store ptr null, ptr %i.gm, align 8, !tbaa !137
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.lr.ph149.prol.1, %bb.ak, %bb.al, %.lr.ph153.1
  br i1 %.not84.1, label %._crit_edge154, label %.lr.ph153.2

.lr.ph153.2:                                      ; preds = %.loopexit.1
  br i1 %i.bb, label %.lr.ph149.2, label %.loopexit.2

.lr.ph149.2:                                      ; preds = %.lr.ph153.2, %bb.aq
  %indvars.iv162.2 = phi i64 [ %indvars.iv.next163.1.2, %bb.aq ], [ %indvars.iv.next161.1, %.lr.ph153.2 ] ; 3 uses
  %indvars.iv.next163.2 = add nsw i64 %indvars.iv162.2, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163.2 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !137 ; 2 uses
  %.not91.2 = icmp eq ptr %i.gt, null
  br i1 %.not91.2, label %.lr.ph149.1.2, label %bb.am

bb.am:                                            ; preds = %.lr.ph149.2
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv162.2 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !137
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.an, label %.lr.ph149.1.2

bb.an:                                            ; preds = %bb.am
  store ptr %i.gt, ptr %i.gu, align 8, !tbaa !137
  store ptr null, ptr %i.gs, align 8, !tbaa !137
  br label %.lr.ph149.1.2

.lr.ph149.1.2:                                    ; preds = %bb.an, %bb.am, %.lr.ph149.2
  %indvars.iv.next163.1.2 = add nsw i64 %indvars.iv162.2, 2 ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163.1.2 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !137 ; 2 uses
  %.not91.1.2 = icmp eq ptr %i.gy, null
  br i1 %.not91.1.2, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph149.1.2
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163.2 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !137
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !137
  store ptr null, ptr %i.gx, align 8, !tbaa !137
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %.lr.ph149.1.2
  %lftr.wideiv.1.2 = trunc i64 %indvars.iv.next163.1.2 to i32
  %exitcond165.not.1.2 = icmp eq i32 %i.au, %lftr.wideiv.1.2
  br i1 %exitcond165.not.1.2, label %.loopexit.2, label %.lr.ph149.2, !llvm.loop !180

.loopexit.2:                                      ; preds = %bb.aq, %.lr.ph153.2
  %.not195 = xor i1 %i.bd, true
  %brmerge = select i1 %.not84.2, i1 true, i1 %.not195
  br i1 %brmerge, label %._crit_edge154, label %.lr.ph149.prol.3

.lr.ph149.prol.3:                                 ; preds = %.loopexit.2
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163.prol.3 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !137 ; 2 uses
  %.not91.prol.3 = icmp eq ptr %i.hd, null
  br i1 %.not91.prol.3, label %.lr.ph149.preheader.new.3, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph149.prol.3
  %i.he = getelementptr [8 x i8], ptr %i.gf, i64 %i.av
  %i.hf = getelementptr i8, ptr %i.he, i64 -24    ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !137
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.as, label %.lr.ph149.preheader.new.3

bb.as:                                            ; preds = %bb.ar
  store ptr %i.hd, ptr %i.hf, align 8, !tbaa !137
  store ptr null, ptr %i.hc, align 8, !tbaa !137
  br label %.lr.ph149.preheader.new.3

.lr.ph149.preheader.new.3:                        ; preds = %bb.as, %bb.ar, %.lr.ph149.prol.3
  br label %.lr.ph149.3

.lr.ph149.3:                                      ; preds = %bb.ax, %.lr.ph149.preheader.new.3
  %indvars.iv162.3 = phi i64 [ %indvars.iv.next163.prol.3, %.lr.ph149.preheader.new.3 ], [ %indvars.iv.next163.1.3, %bb.ax ] ; 3 uses
  %indvars.iv.next163.3 = add nsw i64 %indvars.iv162.3, 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163.3 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !137 ; 2 uses
  %.not91.3 = icmp eq ptr %i.hj, null
  br i1 %.not91.3, label %.lr.ph149.1.3, label %bb.at

bb.at:                                            ; preds = %.lr.ph149.3
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv162.3 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !137
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.au, label %.lr.ph149.1.3

bb.au:                                            ; preds = %bb.at
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !137
  store ptr null, ptr %i.hi, align 8, !tbaa !137
  br label %.lr.ph149.1.3

.lr.ph149.1.3:                                    ; preds = %bb.au, %bb.at, %.lr.ph149.3
  %indvars.iv.next163.1.3 = add nsw i64 %indvars.iv162.3, 2 ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163.1.3 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !137 ; 2 uses
  %.not91.1.3 = icmp eq ptr %i.ho, null
  br i1 %.not91.1.3, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %.lr.ph149.1.3
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163.3 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !137
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !137
  store ptr null, ptr %i.hn, align 8, !tbaa !137
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %.lr.ph149.1.3
  %lftr.wideiv.1.3 = trunc i64 %indvars.iv.next163.1.3 to i32
  %exitcond165.not.1.3 = icmp eq i32 %i.au, %lftr.wideiv.1.3
  br i1 %exitcond165.not.1.3, label %._crit_edge154, label %.lr.ph149.3, !llvm.loop !180

.lr.ph153:                                        ; preds = %bb.aj
  br i1 %i.ax, label %.lr.ph149, label %.loopexit

.lr.ph149:                                        ; preds = %.lr.ph153, %bb.bc
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.1, %bb.bc ], [ %i.av, %.lr.ph153 ] ; 3 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !137 ; 2 uses
  %.not91 = icmp eq ptr %i.ht, null
  br i1 %.not91, label %.lr.ph149.1, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph149
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv162 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !137
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.az, label %.lr.ph149.1

bb.az:                                            ; preds = %bb.ay
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !137
  store ptr null, ptr %i.hs, align 8, !tbaa !137
  br label %.lr.ph149.1

.lr.ph149.1:                                      ; preds = %.lr.ph149, %bb.ay, %bb.az
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163.1 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !137 ; 2 uses
  %.not91.1 = icmp eq ptr %i.hy, null
  br i1 %.not91.1, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph149.1
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next163 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !137
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !137
  store ptr null, ptr %i.hx, align 8, !tbaa !137
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.lr.ph149.1
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next163.1 to i32
  %exitcond165.not.1 = icmp eq i32 %i.au, %lftr.wideiv.1
  br i1 %exitcond165.not.1, label %.loopexit, label %.lr.ph149, !llvm.loop !180

._crit_edge154:                                   ; preds = %.loopexit.2, %.loopexit, %.loopexit.1, %bb.ax, %bb.aj
  %i.ic = getelementptr inbounds i8, ptr %i.dh, i64 -24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !137
  %.not85 = icmp eq ptr %i.id, null
  br i1 %.not85, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge154
  %i.ie = getelementptr inbounds i8, ptr %i.dh, i64 -96
  store i32 3, ptr %i.ie, align 8, !tbaa !181
  %i.if = getelementptr inbounds i8, ptr %i.dh, i64 -66 ; 2 uses
  %i.ig = load i8, ptr %i.if, align 2
  %i.ih = and i8 %i.ig, -13
  store i8 %i.ih, ptr %i.if, align 2
  br label %bb.bp

bb.be:                                            ; preds = %._crit_edge154
  %i.ii = load ptr, ptr %i.gf, align 8, !tbaa !137 ; 2 uses
  %.not86 = icmp eq ptr %i.ii, null
  br i1 %.not86, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !178 ; 2 uses
  %i.il = and i32 %i.ik, 2
  %.not87 = icmp eq i32 %i.il, 0
  br i1 %.not87, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.im = getelementptr inbounds i8, ptr %i.dh, i64 -96
  store i32 1, ptr %i.im, align 8, !tbaa !181
  %i.in = getelementptr inbounds i8, ptr %i.dh, i64 -66 ; 2 uses
  %i.io = load i8, ptr %i.in, align 2
  %i.ip = and i8 %i.io, -13
  store i8 %i.ip, ptr %i.in, align 2
  br label %bb.bp

bb.bh:                                            ; preds = %bb.bf
  %i.iq = and i32 %i.ik, 4
  %.not88 = icmp eq i32 %i.iq, 0
  br i1 %.not88, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ir = getelementptr inbounds i8, ptr %i.dh, i64 -96
  store i32 2, ptr %i.ir, align 8, !tbaa !181
  br label %bb.bp

bb.bj:                                            ; preds = %bb.bh
  %i.is = load float, ptr %i.dy, align 4, !tbaa !182
  %i.it = fcmp oeq float %i.is, 1.000000e+00
  %i.iu = getelementptr inbounds i8, ptr %i.dh, i64 -96 ; 2 uses
  br i1 %i.it, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.iu, align 8, !tbaa !181
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  store i32 3, ptr %i.iu, align 8, !tbaa !181
  %i.iv = getelementptr inbounds i8, ptr %i.dh, i64 -66 ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 2
  %i.ix = and i8 %i.iw, -13
  store i8 %i.ix, ptr %i.iv, align 2
  br label %bb.bp

bb.bm:                                            ; preds = %bb.be
  %i.iy = load float, ptr %i.dy, align 4, !tbaa !182
  %i.iz = fcmp oeq float %i.iy, 1.000000e+00
  %i.ja = getelementptr inbounds i8, ptr %i.dh, i64 -96 ; 2 uses
  br i1 %i.iz, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.ja, align 8, !tbaa !181
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  store i32 3, ptr %i.ja, align 8, !tbaa !181
  %i.jb = getelementptr inbounds i8, ptr %i.dh, i64 -66 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 2
  %i.jd = and i8 %i.jc, -13
  store i8 %i.jd, ptr %i.jb, align 2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bi, %bb.bl, %bb.bk, %bb.bg, %bb.bo, %bb.bn, %bb.bd
  %i.je = load i32, ptr %i.eo, align 8, !tbaa !171 ; 2 uses
  %i.jf = and i32 %i.je, 16
  %.not89 = icmp eq i32 %i.jf, 0
  br i1 %.not89, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jg = getelementptr inbounds i8, ptr %i.dh, i64 -66 ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 2
  %i.ji = and i8 %i.jh, -17
  store i8 %i.ji, ptr %i.jg, align 2
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.jj = and i32 %i.je, 32
  %.not90 = icmp eq i32 %i.jj, 0
  br i1 %.not90, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jk = getelementptr inbounds i8, ptr %i.dh, i64 -96
  store i32 3, ptr %i.jk, align 8, !tbaa !181
  %i.jl = getelementptr inbounds i8, ptr %i.dh, i64 -66 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 2
  %i.jn = and i8 %i.jm, -13
  store i8 %i.jn, ptr %i.jl, align 2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.jo = load ptr, ptr %1, align 8, !tbaa !68    ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.r
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bt
  %i.jq = load i64, ptr %i.r, align 8, !tbaa !67
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.js = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.jt = load ptr, ptr %i.n, align 8, !tbaa !117 ; 2 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %._crit_edge155, label %_ZN4core5arrayIN5scene9SB3dChunkEE7getLastEv.exit96, !llvm.loop !183

bb.bu:                                            ; preds = %bb.y, %bb.af, %bb.z, %bb.x
  %.pn92.pn.pn = phi { ptr, i32 } [ %i.fk, %bb.x ], [ %i.fl, %bb.y ], [ %i.fm, %bb.z ], [ %i.gd, %bb.af ]
  %i.jv = load ptr, ptr %1, align 8, !tbaa !68    ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.r
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.bu
end_hunk_0
