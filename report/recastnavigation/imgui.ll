Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ej, i64 211
  %i.ft = zext i1 %i.ez to i8
  store i8 %i.ft, ptr %i.fs, align 1, !tbaa !732
  br i1 %i.ez, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.split, %bb.x
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ej, i64 240 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = or i32 %i.fv, 526344
  store i32 %i.fw, ptr %i.fu, align 8
  br label %bb.z

bb.z:                                             ; preds = %.split, %bb.y, %bb.x
  %.0361.in955 = phi i1 [ false, %.split ], [ true, %bb.y ], [ false, %bb.x ] ; 4 uses
  br i1 %.not398, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ej, ptr %i.e, align 8, !tbaa !595
  %i.fx = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  %i.fy = and i32 %spec.select, 16777216
  %.not26.i = icmp ne i32 %i.fy, 0
  %i.fz = and i32 %spec.select, 335544320
  %i.ga = icmp ne i32 %i.fz, 67108864
  %i.gb = and i1 %.not26.i, %i.ga                 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ej, i64 214
  %i.gd = load i8, ptr %i.gc, align 2, !tbaa !1401, !range !120, !noundef !254
  %i.ge = zext i1 %i.gb to i8                     ; 2 uses
  %i.gf = icmp ne i8 %i.gd, %i.ge                 ; 2 uses
  %or.cond.i = or i1 %i.ed, %i.gf
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond3.i = or i1 %i.gb, %or.cond.not.i
  br i1 %or.cond3.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 5104 ; 2 uses
  call void @_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !808
  %i.gi = trunc i32 %i.gh to i16
  %i.gj = add i16 %i.gi, -1
  %i.gk = load ptr, ptr %i.e, align 8, !tbaa !595 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 226
  store i16 %i.gj, ptr %i.gl, align 2, !tbaa !728
  br label %_ZN5ImGuiL28UpdateWindowInFocusOrderListEP11ImGuiWindowbi.exit

bb.ac:                                            ; preds = %bb.aa
  %.not.i510 = xor i1 %i.ed, true
  %or.cond5.i = and i1 %i.gf, %.not.i510
  %or.cond7.i = and i1 %i.gb, %or.cond5.i
  br i1 %or.cond7.i, label %bb.ad, label %_ZN5ImGuiL28UpdateWindowInFocusOrderListEP11ImGuiWindowbi.exit

bb.ad:                                            ; preds = %bb.ac
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ej, i64 226 ; 3 uses
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !728 ; 3 uses
  %i.go = sext i16 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fx, i64 5104 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !808 ; 3 uses
  %.028.i = add nsw i32 %i.go, 1
  %i.gr = icmp slt i32 %.028.i, %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 5112
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !500 ; 6 uses
  br i1 %i.gr, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.ad
  %.pre32.i = sext i32 %i.gq to i64
  br label %._crit_edge.i511

.lr.ph.i:                                         ; preds = %bb.ad
  %i.gu = sext i16 %i.gn to i64                   ; 3 uses
  %i.gv = add nsw i64 %i.gu, 1                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.gq to i64      ; 4 uses
  %i.gw = xor i64 %i.gu, -1
  %i.gx = add nsw i64 %i.gw, %wide.trip.count.i
  %i.gy = add nsw i64 %wide.trip.count.i, -2
  %i.gz = sub nsw i64 %i.gy, %i.gu
  %xtraiter = and i64 %i.gx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.gv, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %indvars.iv.i.prol
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !595
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 226 ; 2 uses
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !728
  %i.he = add i16 %i.hd, -1
  store i16 %i.he, ptr %i.hc, align 2, !tbaa !728
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1395

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.gv, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.hf = icmp ult i64 %i.gz, 3
  br i1 %i.hf, label %._crit_edge.loopexit.i, label %.lr.ph.i.new

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.pre31.i = load i16, ptr %i.gm, align 2, !tbaa !728
  br label %._crit_edge.i511

._crit_edge.i511:                                 ; preds = %._crit_edge.loopexit.i, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre32.i, %.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %._crit_edge.loopexit.i ]
  %i.hg = phi i16 [ %i.gn, %.._crit_edge_crit_edge.i ], [ %.pre31.i, %._crit_edge.loopexit.i ]
  %i.hh = sext i16 %i.hg to i64                   ; 2 uses
  %.idx.i = shl nsw i64 %i.hh, 3
  %i.hi = getelementptr inbounds i8, ptr %i.gt, i64 %.idx.i ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = xor i64 %i.hh, -1
  %i.hl = add nsw i64 %.pre-phi.i, %i.hk
  %i.hm = shl nsw i64 %i.hl, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hi, ptr nonnull align 8 %i.hj, i64 %i.hm, i1 false)
  %i.hn = load i32, ptr %i.gp, align 8, !tbaa !502
  %i.ho = add nsw i32 %i.hn, -1
  store i32 %i.ho, ptr %i.gp, align 8, !tbaa !502
  store i16 -1, ptr %i.gm, align 2, !tbaa !728
  br label %_ZN5ImGuiL28UpdateWindowInFocusOrderListEP11ImGuiWindowbi.exit

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %indvars.iv.i
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !595
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 226 ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !728
  %i.ht = add i16 %i.hs, -1
  store i16 %i.ht, ptr %i.hr, align 2, !tbaa !728
  %i.hu = getelementptr [8 x i8], ptr %i.gt, i64 %indvars.iv.i
  %i.hv = getelementptr i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !595
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 226 ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !728
  %i.hz = add i16 %i.hy, -1
  store i16 %i.hz, ptr %i.hx, align 2, !tbaa !728
  %i.ia = getelementptr [8 x i8], ptr %i.gt, i64 %indvars.iv.i
  %i.ib = getelementptr i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !595
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 226 ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !728
  %i.if = add i16 %i.ie, -1
  store i16 %i.if, ptr %i.id, align 2, !tbaa !728
  %i.ig = getelementptr [8 x i8], ptr %i.gt, i64 %indvars.iv.i
  %i.ih = getelementptr i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !595
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 226 ; 2 uses
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !728
  %i.il = add i16 %i.ik, -1
  store i16 %i.il, ptr %i.ij, align 2, !tbaa !728
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i.new, !llvm.loop !1396

_ZN5ImGuiL28UpdateWindowInFocusOrderListEP11ImGuiWindowbi.exit: ; preds = %bb.ab, %bb.ac, %._crit_edge.i511
  %i.im = phi ptr [ %i.ej, %bb.ac ], [ %i.ej, %._crit_edge.i511 ], [ %i.gk, %bb.ab ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 214
  store i8 %i.ge, ptr %i.in, align 2, !tbaa !1401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.io = load ptr, ptr %i.g, align 8, !tbaa !595 ; 7 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 20
  store i32 %spec.select, ptr %i.ip, align 4, !tbaa !608
  %i.iq = getelementptr inbounds nuw i8, ptr %i.j, i64 7784
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !853
  %i.is = and i32 %i.ir, 512
  %.not400 = icmp eq i32 %i.is, 0
  br i1 %.not400, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN5ImGuiL28UpdateWindowInFocusOrderListEP11ImGuiWindowbi.exit
  %i.it = getelementptr inbounds nuw i8, ptr %i.j, i64 7844
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !882
  br label %bb.af

bb.af:                                            ; preds = %_ZN5ImGuiL28UpdateWindowInFocusOrderListEP11ImGuiWindowbi.exit, %bb.ae
  %i.iv = phi i32 [ %i.iu, %bb.ae ], [ 0, %_ZN5ImGuiL28UpdateWindowInFocusOrderListEP11ImGuiWindowbi.exit ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !883
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 648
  store i32 %i.eo, ptr %i.ix, align 8, !tbaa !649
  %i.iy = getelementptr inbounds nuw i8, ptr %i.j, i64 4992
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !452
  %i.ja = fptrunc double %i.iz to float
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 652
  store float %i.ja, ptr %i.jb, align 4, !tbaa !650
  %i.jc = getelementptr inbounds nuw i8, ptr %i.io, i64 222
  store i16 0, ptr %i.jc, align 2, !tbaa !884
  %i.jd = getelementptr inbounds nuw i8, ptr %i.j, i64 5168 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !546 ; 2 uses
  %i.jf = add nsw i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 8, !tbaa !546
  %i.jg = trunc i32 %i.je to i16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.io, i64 224
  store i16 %i.jg, ptr %i.jh, align 8, !tbaa !885
  br label %bb.ah

bb.ag:                                            ; preds = %bb.z
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !608
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.jk = phi ptr [ %i.io, %bb.af ], [ %i.ej, %bb.ag ] ; 4 uses
  %.1359 = phi i32 [ %spec.select, %bb.af ], [ %i.jj, %bb.ag ] ; 34 uses
  %i.jl = load i32, ptr %i.er, align 8, !tbaa !505 ; 3 uses
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jn = getelementptr inbounds nuw i8, ptr %i.j, i64 5144
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !503
  %i.jp = sext i32 %i.jl to i64
  %i.jq = getelementptr [120 x i8], ptr %i.jo, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 -120
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !887
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.jt = phi ptr [ %i.js, %bb.ai ], [ null, %bb.ah ] ; 4 uses
  br i1 %.not398, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ju = and i32 %.1359, 83886080
  %.not401 = icmp eq i32 %i.ju, 0
  %i.jv = select i1 %.not401, ptr null, ptr %i.jt
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jk, i64 944
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !802
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jy = phi ptr [ %i.jv, %bb.ak ], [ %i.jx, %bb.al ] ; 19 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jk, i64 264 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !640
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  call void @_ZN8ImVectorIjE9push_backERKj(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, ptr noundef nonnull align 4 dereferenceable(4) %i.kc)
  %.pre1032 = load ptr, ptr %i.g, align 8, !tbaa !595
  %.pre1033 = load i32, ptr %i.er, align 8, !tbaa !864
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.kd = phi i32 [ %.pre1033, %bb.an ], [ %i.jl, %bb.am ]
  %i.ke = phi ptr [ %.pre1032, %bb.an ], [ %i.jk, %bb.am ]
  %i.kf = getelementptr inbounds nuw i8, ptr %i.j, i64 5184 ; 2 uses
  store ptr %i.ke, ptr %i.kf, align 8, !tbaa !309
  %i.kg = add nsw i32 %i.kd, 1
  call void @_ZN8ImVectorI20ImGuiWindowStackDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i32 noundef %i.kg)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.j, i64 5144
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !503
  %i.kj = load i32, ptr %i.er, align 8, !tbaa !505
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr [120 x i8], ptr %i.ki, i64 %i.kk ; 15 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 -120
  %i.kn = load ptr, ptr %i.g, align 8, !tbaa !595 ; 14 uses
  store ptr %i.kn, ptr %i.km, align 8, !tbaa !887
  %i.ko = getelementptr inbounds nuw i8, ptr %i.j, i64 7704
  %i.kp = getelementptr i8, ptr %i.kl, i64 -112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.kp, ptr noundef nonnull align 8 dereferenceable(80) %i.ko, i64 80, i1 false), !tbaa.struct !888
  %i.kq = and i32 %.1359, 33554432
  %.not417 = icmp eq i32 %i.kq, 0                 ; 4 uses
  br i1 %.not417, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kr = getelementptr inbounds nuw i8, ptr %i.j, i64 7640
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !807
  %i.kt = lshr i32 %i.ks, 10
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = and i8 %i.ku, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.kw = phi i8 [ 0, %bb.ao ], [ %i.kv, %bb.ap ]
  %i.kx = getelementptr i8, ptr %i.kl, i64 -10    ; 2 uses
  store i8 %i.kw, ptr %i.kx, align 2, !tbaa !889
  %i.ky = getelementptr i8, ptr %i.kl, i64 -8
  store float 0.000000e+00, ptr %i.ky, align 8, !tbaa !890
  %i.kz = getelementptr i8, ptr %i.kl, i64 -32    ; 2 uses
  %i.la = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 11 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 5136
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !864
  %i.ld = trunc i32 %i.lc to i16
  store i16 %i.ld, ptr %i.kz, align 8, !tbaa !865
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 5184
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !309 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 264
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !640
  %i.li = trunc i32 %i.lh to i16
  %i.lj = getelementptr i8, ptr %i.kl, i64 -30
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !866
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 416
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !433
  %i.lm = trunc i32 %i.ll to i16
  %i.ln = getelementptr i8, ptr %i.kl, i64 -28
  store i16 %i.lm, ptr %i.ln, align 4, !tbaa !867
  %i.lo = getelementptr inbounds nuw i8, ptr %i.la, i64 7912
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !407
  %i.lq = trunc i32 %i.lp to i16
  %i.lr = getelementptr i8, ptr %i.kl, i64 -26
  store i16 %i.lq, ptr %i.lr, align 2, !tbaa !868
  %i.ls = getelementptr inbounds nuw i8, ptr %i.la, i64 7928
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !423
  %i.lu = trunc i32 %i.lt to i16
  %i.lv = getelementptr i8, ptr %i.kl, i64 -24
  store i16 %i.lu, ptr %i.lv, align 8, !tbaa !869
  %i.lw = getelementptr inbounds nuw i8, ptr %i.la, i64 7944
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !870
  %i.ly = trunc i32 %i.lx to i16
  %i.lz = getelementptr i8, ptr %i.kl, i64 -22
  store i16 %i.ly, ptr %i.lz, align 2, !tbaa !871
  %i.ma = getelementptr inbounds nuw i8, ptr %i.la, i64 7960 ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !872
  %i.mc = trunc i32 %i.mb to i16
  %i.md = getelementptr i8, ptr %i.kl, i64 -20
  store i16 %i.mc, ptr %i.md, align 4, !tbaa !873
  %i.me = getelementptr inbounds nuw i8, ptr %i.la, i64 7992
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !874
  %i.mg = trunc i32 %i.mf to i16
  %i.mh = getelementptr i8, ptr %i.kl, i64 -18
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !875
  %i.mi = getelementptr inbounds nuw i8, ptr %i.la, i64 7976
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !876
  %i.mk = trunc i32 %i.mj to i16
  %i.ml = getelementptr i8, ptr %i.kl, i64 -16
  store i16 %i.mk, ptr %i.ml, align 8, !tbaa !877
  %i.mm = getelementptr inbounds nuw i8, ptr %i.la, i64 8024
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !738
  %i.mo = trunc i32 %i.mn to i16
  %i.mp = getelementptr i8, ptr %i.kl, i64 -14
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !878
  %i.mq = getelementptr inbounds nuw i8, ptr %i.la, i64 9624
  %i.mr = load i16, ptr %i.mq, align 8, !tbaa !879
  %i.ms = getelementptr i8, ptr %i.kl, i64 -12
  store i16 %i.mr, ptr %i.ms, align 4, !tbaa !880
  %i.mt = getelementptr inbounds nuw i8, ptr %i.j, i64 10144
  store ptr %i.kz, ptr %i.mt, align 8, !tbaa !581
  %i.mu = and i32 %.1359, 268435456
  %.not402 = icmp eq i32 %i.mu, 0                 ; 3 uses
  br i1 %.not402, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.j, i64 9480 ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !891
  %i.mx = add nsw i32 %i.mw, 1
  store i32 %i.mx, ptr %i.mv, align 8, !tbaa !891
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.not398, label %._crit_edge1034, label %bb.at

._crit_edge1034:                                  ; preds = %bb.as
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %.pre1035 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !883
  %.pre1076 = and i32 %.pre1035, 256
  %.pre1077 = and i32 %.1359, 67108864
  br label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.my = getelementptr inbounds nuw i8, ptr %i.kn, i64 944
  store ptr %i.jy, ptr %i.my, align 8, !tbaa !802
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kn, i64 984
  %i.na = getelementptr inbounds nuw i8, ptr %i.kn, i64 976
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kn, i64 968
  %i.nc = getelementptr inbounds nuw i8, ptr %i.kn, i64 960 ; 2 uses
  %i.nd = insertelement <4 x ptr> poison, ptr %i.kn, i64 0
  %i.ne = shufflevector <4 x ptr> %i.nd, <4 x ptr> poison, <4 x i32> zeroinitializer
  store <4 x ptr> %i.ne, ptr %i.nc, align 8, !tbaa !595
  %.not.i512 = icmp eq ptr %i.jy, null            ; 4 uses
  %i.nf = and i32 %.1359, 50331648
  %i.ng = icmp ne i32 %i.nf, 16777216
  %or.cond29.not.i = or i1 %i.ng, %.not.i512
  br i1 %or.cond29.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nh = getelementptr inbounds nuw i8, ptr %i.jy, i64 960
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !683
  store ptr %i.ni, ptr %i.nc, align 8, !tbaa !683
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.nj = and i32 %.1359, 67108864                ; 2 uses
  %.not25.i = icmp eq i32 %i.nj, 0
  %or.cond30.i = or i1 %.not25.i, %.not.i512
  br i1 %or.cond30.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.nk = getelementptr inbounds nuw i8, ptr %i.jy, i64 968
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !892
  store ptr %i.nl, ptr %i.nb, align 8, !tbaa !892
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.nm = and i32 %.1359, 134217728
  %.not26.i513 = icmp ne i32 %i.nm, 0
  %i.nn = and i32 %.1359, 83886080
  %.not27.i = icmp eq i32 %i.nn, 0
  %i.no = or i1 %.not26.i513, %.not27.i
  %or.cond32.i = or i1 %i.no, %.not.i512
  br i1 %or.cond32.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.np = getelementptr inbounds nuw i8, ptr %i.jy, i64 976
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !893
  store ptr %i.nq, ptr %i.na, align 8, !tbaa !893
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !883
  %i.nt = and i32 %i.ns, 256                      ; 2 uses
  %.not2834.i = icmp eq i32 %i.nt, 0
  br i1 %.not2834.i, label %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit, label %.lr.ph.i514

.lr.ph.i514:                                      ; preds = %bb.az, %.lr.ph.i514
  %i.nu = phi ptr [ %i.nw, %.lr.ph.i514 ], [ %i.kn, %bb.az ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 944
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !802 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !883
  %i.nz = and i32 %i.ny, 256
  %.not28.i = icmp eq i32 %i.nz, 0
  br i1 %.not28.i, label %._crit_edge.i515, label %.lr.ph.i514, !llvm.loop !50

._crit_edge.i515:                                 ; preds = %.lr.ph.i514
  store ptr %i.nw, ptr %i.mz, align 8, !tbaa !389
  br label %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit

_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit: ; preds = %bb.az, %._crit_edge.i515
  %i.oa = getelementptr inbounds nuw i8, ptr %i.kn, i64 952
  store ptr %i.jt, ptr %i.oa, align 8, !tbaa !684
  %i.ob = and i32 %.1359, 16777216
  %.not403 = icmp eq i32 %i.ob, 0
  %i.oc = select i1 %.not403, ptr null, ptr %i.jt
  %i.od = getelementptr inbounds nuw i8, ptr %i.kn, i64 992
  store ptr %i.oc, ptr %i.od, align 8, !tbaa !894
  br i1 %.not.i512, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit
  %i.oe = getelementptr inbounds nuw i8, ptr %i.jy, i64 700
  %i.of = load float, ptr %i.oe, align 4, !tbaa !1402
  %i.og = getelementptr inbounds nuw i8, ptr %i.jy, i64 696
  %i.oh = load float, ptr %i.og, align 8, !tbaa !848
  %i.oi = fmul float %i.of, %i.oh
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit, %bb.ba
  %i.oj = phi float [ %i.oi, %bb.ba ], [ 1.000000e+00, %_ZN5ImGui30UpdateWindowParentAndRootLinksEP11ImGuiWindowiS1_.exit ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kn, i64 700
  store float %i.oj, ptr %i.ok, align 4, !tbaa !1402
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge1034, %bb.bb
  %.pre-phi1078 = phi i32 [ %.pre1077, %._crit_edge1034 ], [ %i.nj, %bb.bb ]
  %.pre-phi = phi i32 [ %.pre1076, %._crit_edge1034 ], [ %i.nt, %bb.bb ]
  %.not405 = icmp eq i32 %.pre-phi, 0
  %i.ol = getelementptr inbounds nuw i8, ptr %i.j, i64 7636 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %.in = select i1 %.not405, ptr %i.om, ptr %i.ol
  %i.on = load i32, ptr %.in, align 4, !tbaa !255 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #35
  store i32 %i.on, ptr %32, align 4, !tbaa !896
end_hunk_0
begin_hunk_1_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.aay = phi i32 [ %i.aax, %bb.ec ], [ 0, %bb.eb ]
  store i32 0, ptr %i.aan, align 8, !tbaa !86
  %.sroa_idx839 = getelementptr inbounds nuw i8, ptr %i.aak, i64 92
  store i32 %i.aay, ptr %.sroa_idx839, align 4, !tbaa !86
  br label %bb.ee

bb.ee:                                            ; preds = %.thread957, %bb.dz, %bb.ed, %bb.ea
  %i.aaz = phi float [ %i.aah, %.thread957 ], [ %i.aaq, %bb.dz ], [ 0.000000e+00, %bb.ed ], [ %i.aaq, %bb.ea ] ; 2 uses
  %brmerge959 = phi i1 [ true, %.thread957 ], [ true, %bb.dz ], [ false, %bb.ed ], [ false, %bb.ea ]
  %i.aba = phi ptr [ %i.aab, %.thread957 ], [ %i.aak, %bb.dz ], [ %i.aak, %bb.ed ], [ %i.aak, %bb.ea ] ; 23 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.j, i64 3228 ; 2 uses
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !1410 ; 2 uses
  %i.abd = fcmp oge float %i.aaz, %i.abc
  %i.abe = select i1 %i.abd, float %i.aaz, float %i.abc ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.j, i64 7892
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !1411 ; 2 uses
  %i.abh = fcmp oge float %i.abe, %i.abg
  %i.abi = select i1 %i.abh, float %i.abe, float %i.abg
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aba, i64 380
  store float %i.abi, ptr %i.abj, align 4, !tbaa !1412
  %i.abk = getelementptr inbounds nuw i8, ptr %i.j, i64 7896
  %i.abl = load float, ptr %i.abk, align 8, !tbaa !1413 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aba, i64 384
  store float %i.abl, ptr %i.abm, align 4, !tbaa !1414
  %i.abn = and i32 %.1359, 1
  %.not427 = icmp eq i32 %i.abn, 0                ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.j, i64 4400
  %i.abp = load float, ptr %i.abo, align 8, !tbaa !426 ; 3 uses
  br i1 %.not427, label %bb.ef, label %._crit_edge1243

bb.ef:                                            ; preds = %bb.ee
  %i.abq = getelementptr inbounds nuw i8, ptr %i.j, i64 3216
  %i.abr = load float, ptr %i.abq, align 8, !tbaa !430
  %i.abs = call float @llvm.fmuladd.f32(float %i.abr, float 2.000000e+00, float %i.abp)
  br label %._crit_edge1243

._crit_edge1243:                                  ; preds = %bb.ee, %bb.ef
  %i.abt = phi float [ %i.abs, %bb.ef ], [ 0.000000e+00, %bb.ee ] ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aba, i64 104
  store float %i.abt, ptr %i.abu, align 8, !tbaa !736
  %i.abv = and i32 %.1359, 1024
  %.not428.not = icmp eq i32 %i.abv, 0
  %.phi.trans.insert1042 = getelementptr inbounds nuw i8, ptr %i.j, i64 4400 ; 2 uses
  br i1 %.not428.not, label %._crit_edge1041, label %bb.eg

bb.eg:                                            ; preds = %._crit_edge1243
  %i.abw = fadd float %i.abl, %i.abp
  %i.abx = getelementptr inbounds nuw i8, ptr %i.j, i64 3216
  %i.aby = load float, ptr %i.abx, align 8, !tbaa !430
  %i.abz = call float @llvm.fmuladd.f32(float %i.aby, float 2.000000e+00, float %i.abw)
  br label %._crit_edge1041

._crit_edge1041:                                  ; preds = %._crit_edge1243, %bb.eg
  %i.aca = phi float [ %i.abz, %bb.eg ], [ 0.000000e+00, %._crit_edge1243 ] ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aba, i64 108
  store float %i.aca, ptr %i.acb, align 4, !tbaa !925
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aba, i64 704
  store float %i.abp, ptr %i.acc, align 8, !tbaa !651
  br i1 %.0374, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %._crit_edge1041
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aba, i64 80
  %i.ace = load float, ptr %i.acd, align 8, !tbaa !926
  %i.acf = fcmp une float %i.ace, 0.000000e+00
  %spec.select465 = or i1 %i.ed, %i.acf
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %._crit_edge1041
  %.0364 = phi i1 [ %i.ed, %._crit_edge1041 ], [ %spec.select465, %bb.eh ] ; 4 uses
  br i1 %.0373, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aba, i64 84
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !927
  %i.aci = fcmp une float %i.ach, 0.000000e+00
  %spec.select466 = or i1 %i.ed, %i.aci
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.0362 = phi i1 [ %i.ed, %bb.ei ], [ %spec.select466, %bb.ej ] ; 3 uses
  %i.acj = and i32 %.1359, 33
  %or.cond467 = icmp eq i32 %i.acj, 0
  br i1 %or.cond467, label %bb.el, label %bb.ew

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #35
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aba, i64 40
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aba, i64 56
  %i.acm = load float, ptr %i.acl, align 8, !tbaa !737
  %i.acn = load <2 x float>, ptr %i.ack, align 8, !tbaa !86 ; 2 uses
  %i.aco = insertelement <2 x float> poison, float %i.acm, i64 0
  %i.acp = insertelement <2 x float> %i.aco, float %i.abt, i64 1
  %i.acq = fadd <2 x float> %i.acp, %i.acn
  store <2 x float> %i.acn, ptr %34, align 8
  %i.acr = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store <2 x float> %i.acq, ptr %i.acr, align 8
  %i.acs = getelementptr inbounds nuw i8, ptr %i.j, i64 5192
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !687
  %i.acu = icmp eq ptr %i.act, %i.aba
  br i1 %i.acu, label %bb.em, label %bb.es

bb.em:                                            ; preds = %bb.el
  %i.acv = getelementptr inbounds nuw i8, ptr %i.j, i64 5276
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !677
  %i.acx = icmp eq i32 %i.acw, 0
  br i1 %i.acx, label %bb.en, label %bb.es

bb.en:                                            ; preds = %bb.em
  %i.acy = getelementptr inbounds nuw i8, ptr %i.j, i64 5280
  %i.acz = load i32, ptr %i.acy, align 8, !tbaa !679
  %i.ada = icmp eq i32 %i.acz, 0
  br i1 %i.ada, label %bb.eo, label %bb.es

bb.eo:                                            ; preds = %bb.en
  %i.adb = getelementptr inbounds nuw i8, ptr %i.j, i64 5300
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !665
  %i.add = icmp eq i32 %i.adc, 0
  br i1 %i.add, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.eo
  %i.ade = call noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %i.acr, i1 noundef zeroext true)
  br i1 %i.ade, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.adf = getelementptr inbounds nuw i8, ptr %i.j, i64 2842
  %i.adg = load i16, ptr %i.adf, align 2, !tbaa !275
  %i.adh = icmp eq i16 %i.adg, 2
  br i1 %i.adh, label %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit, label %bb.es

_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit:            ; preds = %bb.eq
  %i.adi = getelementptr i8, ptr %i.zn, i64 7148
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !534
  %i.adk = icmp eq i32 %i.adj, -1
  br i1 %i.adk, label %bb.er, label %bb.es

bb.er:                                            ; preds = %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit
  %i.adl = getelementptr inbounds nuw i8, ptr %i.aba, i64 208
  store i8 1, ptr %i.adl, align 8, !tbaa !907
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %_ZN5ImGui11GetKeyOwnerE8ImGuiKey.exit, %bb.er, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el
  %i.adm = getelementptr inbounds nuw i8, ptr %i.aba, i64 208
  %i.adn = load i8, ptr %i.adm, align 8, !tbaa !907, !range !120, !noundef !254
  %i.ado = trunc nuw i8 %i.adn to i1
  br i1 %i.ado, label %bb.et, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.et:                                            ; preds = %bb.es
  %i.adp = getelementptr inbounds nuw i8, ptr %i.aba, i64 207 ; 2 uses
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !607, !range !120, !noundef !254 ; 2 uses
  %i.adr = xor i8 %i.adq, 1
  store i8 %i.adr, ptr %i.adp, align 1, !tbaa !607
  %.not996 = icmp ne i8 %i.adq, 0
  %spec.select468 = select i1 %.not996, i1 true, i1 %.0362 ; 3 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.aba, i64 20
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !608
  %i.adu = and i32 %i.adt, 256
  %.not.i530 = icmp eq i32 %i.adu, 0
  br i1 %.not.i530, label %bb.eu, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

bb.eu:                                            ; preds = %bb.et
  %i.adv = getelementptr inbounds nuw i8, ptr %i.zn, i64 9836 ; 2 uses
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !577
  %i.adx = fcmp ugt float %i.adw, 0.000000e+00
  br i1 %i.adx, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ady = getelementptr inbounds nuw i8, ptr %i.zn, i64 36
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !731
  store float %i.adz, ptr %i.adv, align 4, !tbaa !577
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit: ; preds = %bb.ev, %bb.eu, %bb.et, %bb.es
  %.2 = phi i1 [ %.0362, %bb.es ], [ %spec.select468, %bb.et ], [ %spec.select468, %bb.eu ], [ %spec.select468, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #35
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ek
  %i.aea = getelementptr inbounds nuw i8, ptr %i.aba, i64 207
  store i8 0, ptr %i.aea, align 1, !tbaa !607
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit
  %.3 = phi i1 [ %.0362, %bb.ew ], [ %.2, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit ] ; 4 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aba, i64 208
  store i8 0, ptr %i.aeb, align 8, !tbaa !907
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aba, i64 192 ; 2 uses
  %.sroa_idx834 = getelementptr inbounds nuw i8, ptr %i.aba, i64 196
  %i.aed = load <2 x float>, ptr %i.aec, align 8
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aba, i64 112
  store float 0.000000e+00, ptr %i.aee, align 8, !tbaa !928
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aba, i64 120
  %i.aeg = fadd float %i.abt, %i.aca
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aba, i64 116
  store float %i.aeg, ptr %i.aeh, align 4, !tbaa !929
  store <2 x float> zeroinitializer, ptr %i.aef, align 8, !tbaa !86
  store i32 0, ptr %i.aec, align 8, !tbaa !86
  store i32 0, ptr %.sroa_idx834, align 4, !tbaa !86
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aba, i64 72
  %i.aej = call fastcc <2 x float> @_ZL21CalcWindowAutoFitSizeP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %i.aba, ptr noundef nonnull align 4 dereferenceable(8) %i.aei) ; 8 uses
  %i.aek = and i32 %.1359, 64
  %.not430 = icmp ne i32 %i.aek, 0                ; 2 uses
  %.pre1044 = load ptr, ptr %i.g, align 8, !tbaa !595 ; 16 uses
  br i1 %.not430, label %bb.ey, label %bb.fd

bb.ey:                                            ; preds = %bb.ex
  %i.ael = getelementptr inbounds nuw i8, ptr %.pre1044, i64 207
  %i.aem = load i8, ptr %i.ael, align 1, !tbaa !607, !range !120, !noundef !254
  %i.aen = trunc nuw i8 %i.aem to i1
  br i1 %i.aen, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  br i1 %.0374, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.sroa.0819.0.vec.extract = extractelement <2 x float> %i.aej, i64 0
  %i.aeo = getelementptr inbounds nuw i8, ptr %.pre1044, i64 56
  store float %.sroa.0819.0.vec.extract, ptr %i.aeo, align 8, !tbaa !737
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.1365 = phi i1 [ %.0364, %bb.ez ], [ true, %bb.fa ] ; 2 uses
  br i1 %.0373, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.sroa.0819.4.vec.extract = extractelement <2 x float> %i.aej, i64 1
  %i.aep = getelementptr inbounds nuw i8, ptr %.pre1044, i64 60
  store float %.sroa.0819.4.vec.extract, ptr %i.aep, align 4, !tbaa !904
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532

bb.fd:                                            ; preds = %bb.ey, %bb.ex
  %i.aeq = getelementptr inbounds nuw i8, ptr %.pre1044, i64 228
  %i.aer = load i8, ptr %i.aeq, align 4, !tbaa !647
  %i.aes = icmp sgt i8 %i.aer, 0
  br i1 %i.aes, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aet = getelementptr inbounds nuw i8, ptr %.pre1044, i64 229
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !646
  %i.aev = icmp sgt i8 %i.aeu, 0
  br i1 %i.aev, label %.thread961, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532

bb.ff:                                            ; preds = %bb.fd
  br i1 %.0374, label %.thread961, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aew = getelementptr inbounds nuw i8, ptr %.pre1044, i64 230
  %i.aex = load i8, ptr %i.aew, align 2, !tbaa !930, !range !120, !noundef !254
  %i.aey = trunc nuw i8 %i.aex to i1
  br i1 %i.aey, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.aez = getelementptr inbounds nuw i8, ptr %.pre1044, i64 56
  %i.afa = load float, ptr %i.aez, align 8, !tbaa !737 ; 2 uses
  %.sroa.0819.0.vec.extract821 = extractelement <2 x float> %i.aej, i64 0 ; 2 uses
  %i.afb = fcmp oge float %i.afa, %.sroa.0819.0.vec.extract821
  %i.afc = select i1 %i.afb, float %i.afa, float %.sroa.0819.0.vec.extract821
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %.sroa.0819.0.vec.extract823 = extractelement <2 x float> %i.aej, i64 0
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.afd = phi float [ %i.afc, %bb.fh ], [ %.sroa.0819.0.vec.extract823, %bb.fi ]
  %i.afe = getelementptr inbounds nuw i8, ptr %.pre1044, i64 56
  store float %i.afd, ptr %i.afe, align 8, !tbaa !737
  br label %.thread961

.thread961:                                       ; preds = %bb.fe, %bb.fj, %bb.ff
  %.2366 = phi i1 [ %.0364, %bb.ff ], [ true, %bb.fj ], [ %.0364, %bb.fe ] ; 4 uses
  br i1 %.0373, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %.thread961
  %i.aff = getelementptr inbounds nuw i8, ptr %.pre1044, i64 229
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !646
  %i.afh = icmp sgt i8 %i.afg, 0
  br i1 %i.afh, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %bb.fk
  %i.afi = getelementptr inbounds nuw i8, ptr %.pre1044, i64 230
  %i.afj = load i8, ptr %i.afi, align 2, !tbaa !930, !range !120, !noundef !254
  %i.afk = trunc nuw i8 %i.afj to i1
  br i1 %i.afk, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.afl = getelementptr inbounds nuw i8, ptr %.pre1044, i64 60
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !904 ; 2 uses
  %.sroa.0819.4.vec.extract829 = extractelement <2 x float> %i.aej, i64 1 ; 2 uses
  %i.afn = fcmp oge float %i.afm, %.sroa.0819.4.vec.extract829
  %i.afo = select i1 %i.afn, float %i.afm, float %.sroa.0819.4.vec.extract829
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fl
  %.sroa.0819.4.vec.extract827 = extractelement <2 x float> %i.aej, i64 1
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.afp = phi float [ %i.afo, %bb.fm ], [ %.sroa.0819.4.vec.extract827, %bb.fn ]
  %i.afq = getelementptr inbounds nuw i8, ptr %.pre1044, i64 60
  store float %i.afp, ptr %i.afq, align 4, !tbaa !904
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fk, %.thread961
  %.4 = phi i1 [ %.3, %.thread961 ], [ true, %bb.fo ], [ %.3, %bb.fk ] ; 4 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.pre1044, i64 207
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !607, !range !120, !noundef !254
  %i.aft = trunc nuw i8 %i.afs to i1
  br i1 %i.aft, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.afu = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.pre1044, i64 20
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !608
  %i.afx = and i32 %i.afw, 256
  %.not.i531 = icmp eq i32 %i.afx, 0
  br i1 %.not.i531, label %bb.fr, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532

bb.fr:                                            ; preds = %bb.fq
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afu, i64 9836 ; 2 uses
  %i.afz = load float, ptr %i.afy, align 4, !tbaa !577
  %i.aga = fcmp ugt float %i.afz, 0.000000e+00
  br i1 %i.aga, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afu, i64 36
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !731
  store float %i.agc, ptr %i.afy, align 4, !tbaa !577
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532: ; preds = %bb.fs, %bb.fr, %bb.fq, %bb.fe, %bb.fp, %bb.fb, %bb.fc
  %.3367 = phi i1 [ %.2366, %bb.fp ], [ %.1365, %bb.fc ], [ %.0364, %bb.fe ], [ %.1365, %bb.fb ], [ %.2366, %bb.fq ], [ %.2366, %bb.fr ], [ %.2366, %bb.fs ] ; 8 uses
  %.5 = phi i1 [ %.4, %bb.fp ], [ true, %bb.fc ], [ %.3, %bb.fe ], [ %.3, %bb.fb ], [ %.4, %bb.fq ], [ %.4, %bb.fr ], [ %.4, %bb.fs ] ; 8 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %.pre1044, i64 56
  %.val503 = load i64, ptr %i.agd, align 4, !tbaa !86
  %i.age = call fastcc <2 x float> @_ZL29CalcWindowSizeAfterConstraintP11ImGuiWindowRK6ImVec2(ptr noundef nonnull %.pre1044, i64 %.val503) ; 3 uses
  %i.agf = load ptr, ptr %i.g, align 8, !tbaa !595 ; 9 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 56
  store <2 x float> %i.age, ptr %i.agg, align 8, !tbaa !86
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 207
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !607, !range !120, !noundef !254
  %i.agj = trunc nuw i8 %i.agi to i1
  %i.agk = select i1 %i.agj, i1 %.not416, i1 false
  br i1 %i.agk, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agf, i64 40
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agf, i64 104
  %i.agn = load float, ptr %i.agm, align 8, !tbaa !736
  %i.ago = load <2 x float>, ptr %i.agl, align 8, !tbaa !86 ; 2 uses
  %i.agp = insertelement <2 x float> %i.age, float %i.agn, i64 1
  %i.agq = fadd <2 x float> %i.agp, %i.ago
  %i.agr = fsub <2 x float> %i.agq, %i.ago
  br label %bb.fu

bb.fu:                                            ; preds = %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532, %bb.ft
  %.sroa.076.0 = phi <2 x float> [ %i.agr, %bb.ft ], [ %i.age, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit532 ]
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agf, i64 48
  store <2 x float> %.sroa.076.0, ptr %i.ags, align 8, !tbaa !86
  br i1 %.0361.in955, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %bb.fu
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agf, i64 232
  store i32 -1, ptr %i.agt, align 8, !tbaa !648
  br i1 %i.ov, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %bb.fv
  %i.agu = and i32 %.1359, 134217728
  %i.agv = icmp ne i32 %i.agu, 0
  %or.cond5 = or i1 %i.agv, %.0375.shrunk
  br i1 %or.cond5, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.agw = getelementptr inbounds nuw i8, ptr %i.j, i64 8024
  %i.agx = getelementptr inbounds nuw i8, ptr %i.j, i64 8032
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !511
  %i.agz = load i32, ptr %i.agw, align 8, !tbaa !513
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = getelementptr [56 x i8], ptr %i.agy, i64 %i.aha
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 -20
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agf, i64 40
  %i.ahe = load i64, ptr %i.ahc, align 4, !tbaa !86
  store i64 %i.ahe, ptr %i.ahd, align 8, !tbaa !86
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fv, %bb.fw, %bb.fx, %bb.fu
  br i1 %.not416, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.jy, i64 432 ; 2 uses
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !931
  %i.ahh = trunc i32 %i.ahg to i16
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agf, i64 222
  store i16 %i.ahh, ptr %i.ahi, align 2, !tbaa !884
  call void @_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ahf, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %or.cond7 = or i1 %i.ov, %.0375.shrunk
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.wa
  %.pre1045 = load ptr, ptr %i.g, align 8, !tbaa !595 ; 3 uses
  br i1 %or.cond9, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.jy, i64 280
  %i.ahk = getelementptr inbounds nuw i8, ptr %.pre1045, i64 40
  %i.ahl = load i64, ptr %i.ahj, align 8, !tbaa !86
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.cih = getelementptr inbounds nuw i8, ptr %.pre1054, i64 124
  %i.cii = load float, ptr %i.cih, align 4, !tbaa !935
  %i.cij = fadd float %i.cig, %i.cii
  %i.cik = fsub float %i.cie, %i.cij              ; 2 uses
  %i.cil = fcmp oge float %i.chy, %i.cik
  %i.cim = select i1 %i.cil, float %i.chy, float %i.cik
  br label %bb.mx

bb.mx:                                            ; preds = %._crit_edge1055, %bb.mw
  %i.cin = phi float [ %i.cig, %bb.mw ], [ %.pre1059, %._crit_edge1055 ] ; 3 uses
  %i.cio = phi float [ %i.cic, %bb.mw ], [ %.pre1057, %._crit_edge1055 ] ; 5 uses
  %i.cip = phi float [ %i.cim, %bb.mw ], [ %i.chu, %._crit_edge1055 ]
  %i.ciq = getelementptr inbounds nuw i8, ptr %.pre1054, i64 544
  %i.cir = load float, ptr %i.ciq, align 8, !tbaa !1425
  %i.cis = getelementptr inbounds nuw i8, ptr %.pre1054, i64 152
  %i.cit = getelementptr inbounds nuw i8, ptr %.pre1054, i64 88
  %i.ciu = load float, ptr %i.cit, align 8, !tbaa !933 ; 6 uses
  %i.civ = getelementptr inbounds nuw i8, ptr %.pre1054, i64 100
  %i.ciw = load float, ptr %i.civ, align 4, !tbaa !1407 ; 4 uses
  %i.cix = fcmp oge float %i.ciu, %i.ciw
  %i.ciy = select i1 %i.cix, float %i.ciu, float %i.ciw
  %i.ciz = getelementptr inbounds nuw i8, ptr %.pre1054, i64 576 ; 2 uses
  %i.cja = getelementptr inbounds nuw i8, ptr %.pre1054, i64 548
  %i.cjb = load float, ptr %i.cja, align 4, !tbaa !1426
  %i.cjc = getelementptr inbounds nuw i8, ptr %.pre1054, i64 156
  %i.cjd = load float, ptr %i.cis, align 8, !tbaa !705 ; 4 uses
  %i.cje = fsub float %i.cir, %i.cjd
  %i.cjf = fadd float %i.cje, %i.ciy
  %i.cjg = fptosi float %i.cjf to i32
  %i.cjh = sitofp i32 %i.cjg to float             ; 2 uses
  store float %i.cjh, ptr %i.ciz, align 8, !tbaa !1427
  %i.cji = load float, ptr %i.cjc, align 4, !tbaa !828 ; 3 uses
  %i.cjj = fsub float %i.cjb, %i.cji
  %i.cjk = fcmp oge float %i.cio, %i.ciw
  %i.cjl = select i1 %i.cjk, float %i.cio, float %i.ciw
  %i.cjm = fadd float %i.cjl, %i.cjj
  %i.cjn = fptosi float %i.cjm to i32
  %i.cjo = sitofp i32 %i.cjn to float             ; 2 uses
  %i.cjp = getelementptr inbounds nuw i8, ptr %.pre1054, i64 580
  store float %i.cjo, ptr %i.cjp, align 4, !tbaa !1428
  %i.cjq = fadd float %i.chs, %i.cjh
  %i.cjr = getelementptr inbounds nuw i8, ptr %.pre1054, i64 584
  store float %i.cjq, ptr %i.cjr, align 8, !tbaa !703
  %i.cjs = fadd float %i.cip, %i.cjo
  %i.cjt = getelementptr inbounds nuw i8, ptr %.pre1054, i64 588
  store float %i.cjs, ptr %i.cjt, align 4, !tbaa !1429
  %i.cju = getelementptr inbounds nuw i8, ptr %.pre1054, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cju, ptr noundef nonnull align 8 dereferenceable(16) %i.ciz, i64 16, i1 false), !tbaa.struct !402
  %i.cjv = getelementptr inbounds nuw i8, ptr %.pre1054, i64 40
  %i.cjw = load float, ptr %i.cjv, align 8, !tbaa !704 ; 2 uses
  %i.cjx = fsub float %i.cjw, %i.cjd
  %i.cjy = fadd float %i.ciu, %i.cjx
  %i.cjz = getelementptr inbounds nuw i8, ptr %.pre1054, i64 112
  %i.cka = load float, ptr %i.cjz, align 8, !tbaa !928 ; 4 uses
  %i.ckb = fadd float %i.cka, %i.cjy              ; 2 uses
  %i.ckc = getelementptr inbounds nuw i8, ptr %.pre1054, i64 624
  store float %i.ckb, ptr %i.ckc, align 8, !tbaa !1430
  %i.ckd = getelementptr inbounds nuw i8, ptr %.pre1054, i64 44
  %i.cke = load float, ptr %i.ckd, align 4, !tbaa !744 ; 2 uses
  %i.ckf = fsub float %i.cke, %i.cji
  %i.ckg = fadd float %i.cio, %i.ckf
  %i.ckh = fadd float %i.cin, %i.ckg              ; 2 uses
  %i.cki = getelementptr inbounds nuw i8, ptr %.pre1054, i64 628
  store float %i.ckh, ptr %i.cki, align 4, !tbaa !1431
  br i1 %i.cgy, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.ckj = getelementptr inbounds nuw i8, ptr %.pre1054, i64 48
  %i.ckk = load float, ptr %i.ckj, align 8, !tbaa !916
  %i.ckl = fneg float %i.ciu
  %i.ckm = call float @llvm.fmuladd.f32(float %i.ckl, float 2.000000e+00, float %i.ckk)
  %i.ckn = getelementptr inbounds nuw i8, ptr %.pre1054, i64 120
  %i.cko = load float, ptr %i.ckn, align 8, !tbaa !938
  %i.ckp = fadd float %i.cka, %i.cko
  %i.ckq = fsub float %i.ckm, %i.ckp
  br label %bb.mz

bb.mz:                                            ; preds = %bb.mx, %bb.my
  %i.ckr = phi float [ %i.ckq, %bb.my ], [ %i.cgx, %bb.mx ]
  %i.cks = fadd float %i.ckb, %i.ckr
  %i.ckt = getelementptr inbounds nuw i8, ptr %.pre1054, i64 632
  store float %i.cks, ptr %i.ckt, align 8, !tbaa !1432
  br i1 %i.chv, label %bb.nb, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.cku = getelementptr inbounds nuw i8, ptr %.pre1054, i64 52
  %i.ckv = load float, ptr %i.cku, align 4, !tbaa !917
  %i.ckw = fneg float %i.cio
  %i.ckx = call float @llvm.fmuladd.f32(float %i.ckw, float 2.000000e+00, float %i.ckv)
  %i.cky = getelementptr inbounds nuw i8, ptr %.pre1054, i64 124
  %i.ckz = load float, ptr %i.cky, align 4, !tbaa !935
  %i.cla = fadd float %i.cin, %i.ckz
  %i.clb = fsub float %i.ckx, %i.cla
  br label %bb.nb

bb.nb:                                            ; preds = %bb.mz, %bb.na
  %i.clc = phi float [ %i.clb, %bb.na ], [ %i.chu, %bb.mz ]
  %i.cld = fadd float %i.ckh, %i.clc
  %i.cle = getelementptr inbounds nuw i8, ptr %.pre1054, i64 636
  store float %i.cld, ptr %i.cle, align 4, !tbaa !1433
  %i.clf = fadd float %i.ciu, %i.cka
  %i.clg = fsub float %i.clf, %i.cjd
  %i.clh = getelementptr inbounds nuw i8, ptr %.pre1054, i64 348
  store float %i.clg, ptr %i.clh, align 4, !tbaa !947
  %i.cli = getelementptr inbounds nuw i8, ptr %.pre1054, i64 352
  store <2 x float> zeroinitializer, ptr %i.cli, align 8, !tbaa !86
  %i.clj = fpext float %i.cjw to double
  %i.clk = fpext float %i.ciu to double
  %i.cll = fadd double %i.clk, %i.clj
  %i.clm = fpext float %i.cjd to double
  %i.cln = fpext float %i.cka to double
  %i.clo = fpext float %i.cke to double
  %i.clp = fpext float %i.cio to double
  %i.clq = fpext float %i.cji to double
  %i.clr = fpext float %i.cin to double
  %i.cls = getelementptr inbounds nuw i8, ptr %.pre1054, i64 296 ; 2 uses
  %.sroa_idx777 = getelementptr inbounds nuw i8, ptr %.pre1054, i64 300
  %i.clt = getelementptr inbounds nuw i8, ptr %.pre1054, i64 360
  %i.clu = fsub double %i.cll, %i.clm
  %i.clv = fadd double %i.clu, %i.cln
  %i.clw = fadd double %i.clp, %i.clo
  %i.clx = fsub double %i.clw, %i.clq
  %i.cly = insertelement <2 x double> poison, double %i.clv, i64 0
  %i.clz = insertelement <2 x double> %i.cly, double %i.clx, i64 1
  %i.cma = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.clr, i64 1
  %i.cmb = fadd <2 x double> %i.clz, %i.cma       ; 2 uses
  %i.cmc = fptrunc <2 x double> %i.cmb to <2 x float> ; 3 uses
  %i.cmd = extractelement <2 x float> %i.cmc, i64 0
  store float %i.cmd, ptr %i.cls, align 8, !tbaa !86
  %i.cme = extractelement <2 x float> %i.cmc, i64 1
  store float %i.cme, ptr %.sroa_idx777, align 4, !tbaa !86
  %i.cmf = fpext <2 x float> %i.cmc to <2 x double>
  %i.cmg = fsub <2 x double> %i.cmb, %i.cmf
  %i.cmh = fptrunc <2 x double> %i.cmg to <2 x float>
  store <2 x float> %i.cmh, ptr %i.clt, align 8, !tbaa !86
  %i.cmi = getelementptr inbounds nuw i8, ptr %.pre1054, i64 280
  %i.cmj = load i64, ptr %i.cls, align 8, !tbaa !86 ; 4 uses
  store i64 %i.cmj, ptr %i.cmi, align 8, !tbaa !86
  %i.cmk = getelementptr inbounds nuw i8, ptr %.pre1054, i64 288
  store i64 %i.cmj, ptr %i.cmk, align 8, !tbaa !86
  %i.cml = getelementptr inbounds nuw i8, ptr %.pre1054, i64 304
  store i64 %i.cmj, ptr %i.cml, align 8, !tbaa !86
  %i.cmm = getelementptr inbounds nuw i8, ptr %.pre1054, i64 312
  store i64 %i.cmj, ptr %i.cmm, align 8, !tbaa !86
  %i.cmn = getelementptr inbounds nuw i8, ptr %.pre1054, i64 320
  %i.cmo = getelementptr inbounds nuw i8, ptr %.pre1054, i64 368
  store i32 0, ptr %i.cmo, align 8, !tbaa !899
  %i.cmp = getelementptr inbounds nuw i8, ptr %.pre1054, i64 374 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.cmn, i8 0, i64 26, i1 false)
  %i.cmq = load i16, ptr %i.cmp, align 2, !tbaa !814
  %i.cmr = getelementptr inbounds nuw i8, ptr %.pre1054, i64 372
  store i16 %i.cmq, ptr %i.cmr, align 4, !tbaa !815
  store i16 0, ptr %i.cmp, align 2, !tbaa !814
  %i.cms = getelementptr inbounds nuw i8, ptr %.pre1054, i64 376
  store i8 1, ptr %i.cms, align 8, !tbaa !924
  %i.cmt = getelementptr inbounds nuw i8, ptr %.pre1054, i64 377
  store i8 0, ptr %i.cmt, align 1, !tbaa !443
  %i.cmu = getelementptr inbounds nuw i8, ptr %.pre1054, i64 164
  %i.cmv = load float, ptr %i.cmu, align 4, !tbaa !832
  %i.cmw = fcmp ogt float %i.cmv, 0.000000e+00
  %i.cmx = getelementptr inbounds nuw i8, ptr %.pre1054, i64 378
  %i.cmy = zext i1 %i.cmw to i8
  store i8 %i.cmy, ptr %i.cmx, align 2, !tbaa !827
  %i.cmz = getelementptr inbounds nuw i8, ptr %.pre1054, i64 379
  store i8 0, ptr %i.cmz, align 1, !tbaa !948
  %i.cna = getelementptr inbounds nuw i8, ptr %.pre1054, i64 388
  %i.cnb = load float, ptr %i.abb, align 4, !tbaa !1410
  call void @_ZN16ImGuiMenuColumns6UpdateEfb(ptr noundef nonnull align 4 dereferenceable(26) %i.cna, float noundef %i.cnb, i1 noundef zeroext %.0361.in955) #35
  %i.cnc = load ptr, ptr %i.g, align 8, !tbaa !595 ; 4 uses
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnc, i64 416
  store i32 0, ptr %i.cnd, align 8, !tbaa !433
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cnc, i64 424
  store i32 0, ptr %i.cne, align 8, !tbaa !1434
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cnc, i64 420
  store i32 0, ptr %i.cnf, align 4, !tbaa !1435
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnc, i64 432
  call void @_ZN8ImVectorIP11ImGuiWindowE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cng, i32 noundef 0)
  %i.cnh = load ptr, ptr %i.g, align 8, !tbaa !595 ; 10 uses
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnh, i64 664
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cnh, i64 448
  store ptr %i.cni, ptr %i.cnj, align 8, !tbaa !949
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cnh, i64 456
  store ptr null, ptr %i.cnk, align 8, !tbaa !343
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cnh, i64 468
  store i32 1, ptr %i.cnl, align 4, !tbaa !950
  %.not450 = icmp eq ptr %i.jy, null
  br i1 %.not450, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.jy, i64 468
  %i.cnn = load i32, ptr %i.cnm, align 4, !tbaa !950
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nb, %bb.nc
  %i.cno = phi i32 [ %i.cnn, %bb.nc ], [ 1, %bb.nb ]
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cnh, i64 472
  store i32 %i.cno, ptr %i.cnp, align 8, !tbaa !1436
  %i.cnq = getelementptr inbounds nuw i8, ptr %i.cnh, i64 48
  %i.cnr = load float, ptr %i.cnq, align 8, !tbaa !916 ; 2 uses
  %i.cns = fcmp ule float %i.cnr, 0.000000e+00
  %.not417.not = xor i1 %.not417, true
  %brmerge483 = or i1 %i.cns, %.not417.not
  %brmerge484 = or i1 %.not430, %brmerge483
  br i1 %brmerge484, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.cnt = fmul nnan float %i.cnr, 6.500000e-01
  br label %bb.ng

bb.nf:                                            ; preds = %bb.nd
  %i.cnu = load float, ptr %.phi.trans.insert1042, align 8, !tbaa !426
  %i.cnv = fmul float %i.cnu, 1.600000e+01
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %bb.ne
  %.sink.in.in = phi float [ %i.cnv, %bb.nf ], [ %i.cnt, %bb.ne ]
  %.sink.in = fptosi float %.sink.in.in to i32
  %.sink = sitofp i32 %.sink.in to float          ; 2 uses
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnh, i64 656
  store float %.sink, ptr %i.cnw, align 8, !tbaa !951
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cnh, i64 488
  store float %.sink, ptr %i.cnx, align 8, !tbaa !952
  %i.cny = getelementptr inbounds nuw i8, ptr %i.cnh, i64 492
  store float -1.000000e+00, ptr %i.cny, align 4, !tbaa !953
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.cnh, i64 496
  call void @_ZN8ImVectorIfE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cnz, i32 noundef 0)
  %i.coa = load ptr, ptr %i.g, align 8, !tbaa !595
  %i.cob = getelementptr inbounds nuw i8, ptr %i.coa, i64 512
  call void @_ZN8ImVectorIfE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.cob, i32 noundef 0)
  %i.coc = and i32 %.1359, 134217728
  %.not451 = icmp eq i32 %i.coc, 0
  %.pre1060 = load ptr, ptr %i.g, align 8, !tbaa !595 ; 4 uses
  br i1 %.not451, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.cod = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cod, i64 4324
  %i.cof = load <4 x float>, ptr %i.coe, align 4, !tbaa !86 ; 3 uses
  %i.cog = fcmp olt <4 x float> %i.cof, zeroinitializer
  %i.coh = fcmp ogt <4 x float> %i.cof, splat (float 1.000000e+00)
  %i.coi = select <4 x i1> %i.coh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cof
  %i.coj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.coi, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cok = select <4 x i1> %i.cog, <4 x float> splat (float 5.000000e-01), <4 x float> %i.coj
  %i.col = fptosi <4 x float> %i.cok to <4 x i32>
  %i.com = shl <4 x i32> %i.col, <i32 0, i32 8, i32 16, i32 24>
  %i.con = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.com)
  %i.coo = getelementptr inbounds nuw i8, ptr %.pre1060, i64 476
  store i32 %i.con, ptr %i.coo, align 4, !tbaa !954
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %i.cop = getelementptr inbounds nuw i8, ptr %.pre1060, i64 228 ; 2 uses
  %i.coq = load i8, ptr %i.cop, align 4, !tbaa !647 ; 2 uses
  %i.cor = icmp sgt i8 %i.coq, 0
  br i1 %i.cor, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.cos = add nsw i8 %i.coq, -1
  store i8 %i.cos, ptr %i.cop, align 4, !tbaa !647
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.cot = getelementptr inbounds nuw i8, ptr %.pre1060, i64 229 ; 2 uses
  %i.cou = load i8, ptr %i.cot, align 1, !tbaa !646 ; 2 uses
  %i.cov = icmp sgt i8 %i.cou, 0
  br i1 %i.cov, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  %i.cow = add nsw i8 %i.cou, -1
  store i8 %i.cow, ptr %i.cot, align 1, !tbaa !646
  br label %bb.nm

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  br i1 %spec.select987, label %bb.nn, label %.critedge486

bb.nn:                                            ; preds = %bb.nm
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %.pre1060, i32 noundef 2)
  %i.cox = load ptr, ptr %i.g, align 8, !tbaa !595 ; 2 uses
  %i.coy = getelementptr inbounds nuw i8, ptr %i.j, i64 8080
  %i.coz = load ptr, ptr %i.coy, align 8, !tbaa !388
  %i.cpa = icmp eq ptr %i.cox, %i.coz
  br i1 %i.cpa, label %bb.no, label %.critedge486

bb.no:                                            ; preds = %bb.nn
  call void @_ZN5ImGui13NavInitWindowEP11ImGuiWindowb(ptr noundef %i.cox, i1 noundef zeroext false)
  br label %.critedge486

.critedge486:                                     ; preds = %bb.nm, %bb.no, %bb.nn
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.cpc = load i8, ptr %i.cpb, align 8, !tbaa !1437, !range !120, !noundef !254
  %i.cpd = trunc nuw i8 %i.cpc to i1
  br i1 %i.cpd, label %bb.np, label %_ZN5ImGui14LogToClipboardEi.exit

bb.np:                                            ; preds = %.critedge486
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.j, i64 8080
  %i.cpf = load ptr, ptr %i.cpe, align 8, !tbaa !388 ; 2 uses
  %.not452 = icmp eq ptr %i.cpf, null
  br i1 %.not452, label %_ZN5ImGui14LogToClipboardEi.exit, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.cpg = getelementptr inbounds nuw i8, ptr %i.cpf, i64 960
  %i.cph = load ptr, ptr %i.cpg, align 8, !tbaa !683
  %i.cpi = load ptr, ptr %i.g, align 8, !tbaa !595
  %i.cpj = icmp eq ptr %i.cph, %i.cpi
  br i1 %i.cpj, label %bb.nr, label %_ZN5ImGui14LogToClipboardEi.exit

bb.nr:                                            ; preds = %bb.nq
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.j, i64 5300
  %i.cpl = load i32, ptr %i.cpk, align 4, !tbaa !665
  %i.cpm = icmp eq i32 %i.cpl, 0
  br i1 %i.cpm, label %bb.ns, label %_ZN5ImGui14LogToClipboardEi.exit

bb.ns:                                            ; preds = %bb.nr
  %i.cpn = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 4644, i32 noundef 0, i32 noundef 0)
  br i1 %i.cpn, label %bb.nt, label %_ZN5ImGui14LogToClipboardEi.exit

bb.nt:                                            ; preds = %bb.ns
  %i.cpo = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 10 uses
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpo, i64 10008 ; 2 uses
  %i.cpq = load i8, ptr %i.cpp, align 8, !tbaa !386, !range !120, !noundef !254
  %i.cpr = trunc nuw i8 %i.cpq to i1
  br i1 %i.cpr, label %_ZN5ImGui14LogToClipboardEi.exit, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpo, i64 5184
  %i.cpt = load ptr, ptr %i.cps, align 8, !tbaa !309 ; 2 uses
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpo, i64 5298
  store i8 1, ptr %i.cpu, align 2, !tbaa !702
  store i8 1, ptr %i.cpp, align 8, !tbaa !386
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpo, i64 10012
  store i32 8, ptr %i.cpv, align 4, !tbaa !955
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpo, i64 10016
  store ptr %i.cpt, ptr %i.cpw, align 8, !tbaa !956
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpo, i64 10048
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cpt, i64 416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cpx, i8 0, i64 16, i1 false)
  %i.cpz = load i32, ptr %i.cpy, align 8, !tbaa !433
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpo, i64 10072
  store i32 %i.cpz, ptr %i.cqa, align 8, !tbaa !432
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cpo, i64 10076
  store i32 0, ptr %i.cqb, align 4, !tbaa !580
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cpo, i64 10064
  store float f0x7F7FFFFF, ptr %i.cqc, align 8, !tbaa !429
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cpo, i64 10068
  store i8 1, ptr %i.cqd, align 4, !tbaa !431
  br label %_ZN5ImGui14LogToClipboardEi.exit

_ZN5ImGui14LogToClipboardEi.exit:                 ; preds = %bb.nu, %bb.nt, %bb.np, %bb.nq, %bb.nr, %bb.ns, %.critedge486
  %.pre1062 = load ptr, ptr %i.g, align 8, !tbaa !595 ; 12 uses
  br i1 %.not427, label %bb.nv, label %bb.po

bb.nv:                                            ; preds = %_ZN5ImGui14LogToClipboardEi.exit
  %i.cqe = load float, ptr %37, align 8, !tbaa !699
  %i.cqf = getelementptr inbounds nuw i8, ptr %.pre1062, i64 100
  %i.cqg = load float, ptr %i.cqf, align 4, !tbaa !1407 ; 2 uses
  %i.cqh = fadd float %i.cqe, %i.cqg              ; 3 uses
  %i.cqi = getelementptr inbounds nuw i8, ptr %37, i64 4
  %i.cqj = load float, ptr %i.cqi, align 4, !tbaa !392 ; 6 uses
  %i.cqk = load float, ptr %i.bhl, align 8, !tbaa !700
  %i.cql = fsub float %i.cqk, %i.cqg              ; 6 uses
  %i.cqm = getelementptr inbounds nuw i8, ptr %37, i64 12
  %i.cqn = load float, ptr %i.cqm, align 4, !tbaa !393 ; 3 uses
  %i.cqo = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 20 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %.pre1062, i64 20
  %i.cqq = load i32, ptr %i.cqp, align 4, !tbaa !608 ; 2 uses
  %i.cqr = and i32 %i.cqq, 32
  %.not94.i = icmp eq i32 %i.cqr, 0
  br i1 %.not94.i, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.cqs = getelementptr inbounds nuw i8, ptr %i.cqo, i64 3192
  %i.cqt = load i32, ptr %i.cqs, align 4, !tbaa !92
  %i.cqu = icmp ne i32 %i.cqt, -1
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  %i.cqv = phi i1 [ false, %bb.nv ], [ %i.cqu, %bb.nw ]
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqo, i64 7640 ; 5 uses
  %i.cqx = load i32, ptr %i.cqw, align 8, !tbaa !807 ; 2 uses
  %i.cqy = or i32 %i.cqx, 4
  store i32 %i.cqy, ptr %i.cqw, align 8, !tbaa !807
  %i.cqz = getelementptr inbounds nuw i8, ptr %.pre1062, i64 368 ; 2 uses
  store i32 1, ptr %i.cqz, align 8, !tbaa !899
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqo, i64 3212 ; 2 uses
  %i.crb = load float, ptr %i.cra, align 4, !tbaa !1438 ; 8 uses
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cqo, i64 4400
  %i.crd = load float, ptr %i.crc, align 8, !tbaa !426 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.cre = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !86
  br i1 %i.wf, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.crf = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.crg = fsub float %i.cql, %i.crb
  %i.crh = fsub float %i.crg, %i.crd
  %i.cri = getelementptr inbounds nuw i8, ptr %i.cqo, i64 3216
  %i.crj = load float, ptr %i.cri, align 8, !tbaa !1439
  %i.crk = fadd float %i.cqj, %i.crj
  store float %i.crh, ptr %5, align 8, !tbaa !86
  store float %i.crk, ptr %i.crf, align 4, !tbaa !86
end_hunk_2
