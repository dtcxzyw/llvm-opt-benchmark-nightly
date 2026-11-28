Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/cpu_info?download=true
inline.NumInlined: 282
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5arrow8internal7CpuInfo4ImplC2Ev:bb.a
  %i.gv = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.ck
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i: ; preds = %bb.an
  %i.gx = load i64, ptr %i.ck, align 8, !tbaa !41
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i
  %i.gz = load i64, ptr %i.cm, align 8, !tbaa !49 ; 9 uses
  %cond.i = icmp eq i64 %i.gz, 0
  br i1 %cond.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 5)
  %i.ha = load ptr, ptr %4, align 8, !tbaa !40    ; 4 uses
  %bcmp.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.10, i64 %.sroa.speculated.i.i)
  %.not.i37.i = icmp eq i32 %bcmp.i, 0
  %i.hb = icmp eq i64 %i.gz, 5
  %or.cond131.i = and i1 %i.hb, %.not.i37.i
  br i1 %or.cond131.i, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.sroa.speculated.i39.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 8)
  %bcmp126.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.11, i64 %.sroa.speculated.i39.i)
  %.not.i41.i = icmp eq i32 %bcmp126.i, 0
  %i.hc = icmp eq i64 %i.gz, 8
  %or.cond132.i = and i1 %i.hc, %.not.i41.i
  br i1 %or.cond132.i, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit47.thread.i

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %i.co, ptr %1, align 16, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.19, i64 5, i1 false)
  store i64 5, ptr %i.cp, align 8, !tbaa !49
  store i8 0, ptr %i.cq, align 1, !tbaa !41
  store i64 1, ptr %i.cr, align 16, !tbaa !115
  store ptr %i.ct, ptr %i.cs, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ct, ptr noundef nonnull align 1 dereferenceable(6) @.str.20, i64 6, i1 false)
  store i64 6, ptr %i.cu, align 16, !tbaa !49
  store i8 0, ptr %i.cv, align 2, !tbaa !41
  store i64 2, ptr %i.cw, align 8, !tbaa !115
  store ptr %i.cy, ptr %i.cx, align 16, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.cy, ptr noundef nonnull align 1 dereferenceable(6) @.str.21, i64 6, i1 false)
  store i64 6, ptr %i.cz, align 8, !tbaa !49
  store i8 0, ptr %i.da, align 2, !tbaa !41
  store i64 4, ptr %i.db, align 16, !tbaa !115
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dd, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  store i64 6, ptr %i.de, align 16, !tbaa !49
  store i8 0, ptr %i.df, align 2, !tbaa !41
  store i64 8, ptr %i.dg, align 8, !tbaa !115
  store ptr %i.di, ptr %i.dh, align 16, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.di, ptr noundef nonnull align 1 dereferenceable(3) @.str.23, i64 3, i1 false)
  store i64 3, ptr %i.dj, align 8, !tbaa !49
  store i8 0, ptr %i.dk, align 1, !tbaa !41
  store i64 16, ptr %i.dl, align 16, !tbaa !115
  store ptr %i.dn, ptr %i.dm, align 8, !tbaa !89
  store i32 846755425, ptr %i.dn, align 8
  store i64 4, ptr %i.do, align 16, !tbaa !49
  store i8 0, ptr %i.dp, align 4, !tbaa !41
  store i64 32, ptr %i.dq, align 8, !tbaa !115
  store ptr %i.ds, ptr %i.dr, align 16, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) %i.ds, ptr noundef nonnull align 1 dereferenceable(7) @.str.25, i64 7, i1 false)
  store i64 7, ptr %i.dt, align 8, !tbaa !49
  store i8 0, ptr %i.du, align 1, !tbaa !41
  store i64 64, ptr %i.dv, align 16, !tbaa !115
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !89
  store i64 7233680613419021921, ptr %i.dx, align 8
  store i64 8, ptr %i.dy, align 16, !tbaa !49
  store i8 0, ptr %i.dz, align 16, !tbaa !41
  store i64 128, ptr %i.ea, align 8, !tbaa !115
  store ptr %i.ec, ptr %i.eb, align 16, !tbaa !89
  store i64 7815489390279947873, ptr %i.ec, align 16
  store i64 8, ptr %i.ed, align 8, !tbaa !49
  store i8 0, ptr %i.ee, align 8, !tbaa !41
  store i64 256, ptr %i.ef, align 16, !tbaa !115
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !89
  store i64 8170710810888795745, ptr %i.eh, align 8
  store i64 8, ptr %i.ei, align 16, !tbaa !49
  store i8 0, ptr %i.ej, align 16, !tbaa !41
  store i64 512, ptr %i.ek, align 8, !tbaa !115
  store ptr %i.em, ptr %i.el, align 16, !tbaa !89
  store i64 8602493425162942049, ptr %i.em, align 16
  store i64 8, ptr %i.en, align 8, !tbaa !49
  store i8 0, ptr %i.eo, align 8, !tbaa !41
  store i64 1024, ptr %i.ep, align 16, !tbaa !115
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !89
  store i32 828992866, ptr %i.er, align 8
  store i64 4, ptr %i.es, align 16, !tbaa !49
  store i8 0, ptr %i.et, align 4, !tbaa !41
  store i64 2048, ptr %i.eu, align 8, !tbaa !115
  store ptr %i.ew, ptr %i.ev, align 16, !tbaa !89
  store i32 845770082, ptr %i.ew, align 16
  store i64 4, ptr %i.ex, align 8, !tbaa !49
  store i8 0, ptr %i.ey, align 4, !tbaa !41
  store i64 4096, ptr %i.ez, align 16, !tbaa !115
  %i.hd = load i64, ptr %i.cn, align 8, !tbaa !49
  %.fr.i.i = freeze i64 %i.hd                     ; 4 uses
  %.not.i.i.not.i.i = icmp eq i64 %.fr.i.i, 0
  br i1 %.not.i.i.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i, label %.split.i.preheader.i

.split.i.preheader.i:                             ; preds = %bb.ao
  %i.he = load ptr, ptr %6, align 8               ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %.fr.i.i
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.he to i64
  br label %.split.i.i

.split.i.i:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, %.split.i.preheader.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ], [ 0, %.split.i.preheader.i ] ; 2 uses
  %.012170.i.i = phi i64 [ %.1.i48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ], [ 0, %.split.i.preheader.i ] ; 6 uses
  %i.hi = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv.i.i ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !40 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !49 ; 5 uses
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread167.i.i, label %bb.ap

bb.ap:                                            ; preds = %.split.i.i
  %.not3339.i.i.i.i = icmp ult i64 %.fr.i.i, %i.hl
  br i1 %.not3339.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap
  %i.hn = load i8, ptr %i.hj, align 1, !tbaa !41
  %i.ho = sext i8 %i.hn to i32
  %invariant.op = sub i64 1, %i.hl
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %.lr.ph.i.i.i.i
  %.041.i.i.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i.i.i ], [ %i.hu, %bb.ar ]
  %.02740.i.i.i.i = phi ptr [ %i.he, %.lr.ph.i.i.i.i ], [ %i.hs, %bb.ar ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.041.i.i.i.i, %invariant.op ; 2 uses
  %i.hp = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.hp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.aq
  %i.hq = call ptr @memchr(ptr noundef %.02740.i.i.i.i, i32 noundef %i.ho, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #25 ; 4 uses
  %.not34.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not34.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.hq, ptr nonnull %i.hj, i64 %i.hl)
  %i.hr = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.hr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 1 ; 2 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = sub i64 %i.hg, %i.ht                    ; 2 uses
  %.not33.i.i.i.i = icmp ult i64 %i.hu, %i.hl
  br i1 %.not33.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %bb.aq, !llvm.loop !76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.hv = ptrtoint ptr %i.hq to i64
  %i.hw = sub i64 %i.hv, %i.hh
  %.not.i49.i = icmp eq i64 %i.hw, -1
  br i1 %.not.i49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread167.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread167.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, %.split.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !115
  %i.hz = or i64 %i.hy, %.012170.i.i
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i: ; preds = %bb.ar, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread167.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i, %bb.ap
  %.1.i48.i = phi i64 [ %i.hz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread167.i.i ], [ %.012170.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.i.i ], [ %.012170.i.i, %bb.ap ], [ %.012170.i.i, %bb.aq ], [ %.012170.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i ], [ %.012170.i.i, %bb.ar ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 13
  br i1 %exitcond.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i, label %.split.i.i, !llvm.loop !77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i, %bb.ao
  %.us-phi.i.i = phi i64 [ 0, %bb.ao ], [ %.1.i48.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit.thread.i.i ]
  %.pre.i = load i64, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ia = or i64 %.pre.i, %.us-phi.i.i
  store i64 %i.ia, ptr %0, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc17.i, %bb.z, %bb.x
  %lpad.loopexit.split-lp166 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.loopexit.split-lp

.loopexit.split-lp142.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc11.i.i.i, %.noexc10.i.i.i
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

bb.as:                                            ; preds = %bb.af
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ci
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i: ; preds = %bb.as
  %i.ie = load i64, ptr %i.ci, align 8, !tbaa !41
  %12 = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %12) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

.loopexit.split-lp147.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i26.i, %.noexc11.i.i27.i, %.noexc10.i.i28.i, %bb.ah
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

bb.at:                                            ; preds = %bb.am
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ck
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i: ; preds = %bb.at
  %i.ii = load i64, ptr %i.ck, align 8, !tbaa !41
  %13 = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %13) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

bb.au:                                            ; preds = %bb.av
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.fa
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i: ; preds = %bb.au
  %i.im = load i64, ptr %i.fa, align 8, !tbaa !41
  %14 = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %14) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit47.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit.thread.i
  %.sroa.speculated.i59.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 10)
  %bcmp127.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.12, i64 %.sroa.speculated.i59.i)
  %.not.i61.i = icmp eq i32 %bcmp127.i, 0
  %i.in = icmp eq i64 %i.gz, 10
  %or.cond133.i = and i1 %i.in, %.not.i61.i
  br i1 %or.cond133.i, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread.i

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit47.thread.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i unwind label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit47.thread.i
  %.sroa.speculated.i69.i = call i64 @llvm.umin.i64(i64 %i.gz, i64 9)
  %bcmp128.i = call i32 @bcmp(ptr %i.ha, ptr nonnull @.str.13, i64 %.sroa.speculated.i69.i)
  %.not.i71.i = icmp eq i32 %bcmp128.i, 0
  %i.io = icmp eq i64 %i.gz, 9
  %or.cond134.i = and i1 %i.io, %.not.i71.i
  br i1 %or.cond134.i, label %bb.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread.i
  %i.ip = load i64, ptr %i.cn, align 8, !tbaa !49 ; 3 uses
  %.sroa.speculated.i78.i = call i64 @llvm.umin.i64(i64 %i.ip, i64 12) ; 2 uses
  %cond140.i = icmp eq i64 %i.ip, 0
  br i1 %cond140.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i79.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i79.i: ; preds = %bb.aw
  %i.iq = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %bcmp129.i = call i32 @bcmp(ptr %i.iq, ptr nonnull @.str.14, i64 %.sroa.speculated.i78.i)
  %.not.i80.i = icmp eq i32 %bcmp129.i, 0
  %i.ir = icmp eq i64 %i.ip, 12                   ; 2 uses
  %or.cond135.i = and i1 %i.ir, %.not.i80.i
  br i1 %or.cond135.i, label %bb.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i88.i

bb.ax:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i79.i
  store i32 1, ptr %i.e, align 8, !tbaa !117
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i88.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i79.i
  %bcmp130.i = call i32 @bcmp(ptr %i.iq, ptr nonnull @.str.15, i64 %.sroa.speculated.i78.i)
  %.not.i89.i = icmp eq i32 %bcmp130.i, 0
  %or.cond136.i = and i1 %i.ir, %.not.i89.i
  br i1 %or.cond136.i, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

bb.ay:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i88.i
  store i32 2, ptr %i.e, align 8, !tbaa !117
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i: ; preds = %bb.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i88.i, %bb.ax, %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc.exit67.thread.i, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i151.12.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
  %i.is = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.fa
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i
  %i.iu = load i64, ptr %i.fa, align 8, !tbaa !41
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.iw = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.fb
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i
  %i.iy = load i64, ptr %i.fb, align 8, !tbaa !41
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre224.i = load ptr, ptr %3, align 8, !tbaa !40
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i: ; preds = %bb.au, %bb.at, %.loopexit.split-lp147.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i
  %.pn.i = phi { ptr, i32 } [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i ], [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i ], [ %lpad.loopexit.split-lp171, %.loopexit.split-lp147.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.if, %bb.at ], [ %i.ij, %bb.au ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ja = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.fb
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i
  %15 = load i64, ptr %i.fb, align 8, !tbaa !41
  %i.jc = add i64 %15, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, %bb.as, %.loopexit.split-lp142.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i.a ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp142.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ib, %bb.as ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit.split-lp.i.loopexit.split-lp

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.jd = phi ptr [ %.pre225.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.pre225.i, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i ], [ %.pre224.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i ] ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.cg
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i
  %i.jf = load i64, ptr %i.cg, align 8, !tbaa !41
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jh = load ptr, ptr %2, align 8, !tbaa !51
  %i.ji = getelementptr i8, ptr %i.jh, i64 -24    ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds i8, ptr %2, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !98
  %i.jn = and i32 %i.jm, 5
  %.not.i.i26 = icmp eq i32 %i.jn, 0
  br i1 %.not.i.i26, label %bb.w, label %.loopexit, !llvm.loop !78

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ %lpad.loopexit.split-lp166, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.jo = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.cg
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp
  %i.jq = load i64, ptr %i.cg, align 8, !tbaa !41
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110.i: ; preds = %.loopexit.split-lp.i.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107.i, %.noexc28
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.js = load i64, ptr %0, align 8, !tbaa !45
  store i64 %i.js, ptr %i.d, align 8, !tbaa !47
  %i.jt = call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #25
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.jt, i32 1)
  store i32 %.sroa.speculated, ptr %i.c, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN5arrow8internal9GetEnvVarB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %9, i64 21, ptr nonnull @.str.1)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %.loopexit
  %i.ju = load ptr, ptr %9, align 8, !tbaa !57    ; 2 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.bc, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i

bb.ba:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_119OsRetrieveCacheSizeEPSt5arrayIlLm3EE.exit, %bb.q, %bb.j, %bb.b
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bb:                                            ; preds = %.loopexit
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bc:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.jz, ptr %10, align 8, !tbaa !89, !alias.scope !121
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !40, !noalias !121 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 7 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !49, !noalias !121 ; 3 uses
  %i.kf = icmp ult i64 %i.ke, 16
  call void @llvm.assume(i1 %i.kf)
  %i.kg = add nuw nsw i64 %i.ke, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jz, ptr noundef nonnull align 8 dereferenceable(1) %i.kb, i64 %i.kg, i1 false)
  br label %bb.be

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bc
  store ptr %i.ka, ptr %10, align 8, !tbaa !40, !alias.scope !121
  %i.kh = load i64, ptr %i.kb, align 8, !tbaa !41, !noalias !121
  store i64 %i.kh, ptr %i.jz, align 8, !tbaa !41, !alias.scope !121
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !49, !noalias !121
  br label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.bd
  %i.ki = phi ptr [ %i.jz, %bb.bd ], [ %i.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.kj = phi i64 [ %i.ke, %bb.bd ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.kj, ptr %i.kl, align 8, !tbaa !49, !alias.scope !121
  store ptr %i.kb, ptr %i.jy, align 8, !tbaa !40, !noalias !121
  store i64 0, ptr %i.kk, align 8, !tbaa !49, !noalias !121
  store i8 0, ptr %i.kb, align 8, !tbaa !41, !noalias !121
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kj
  %i.kn = icmp samesign eq i64 %i.kj, 0
  br i1 %i.kn, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.be, %.lr.ph.i32
  %.sroa.0.07.i = phi ptr [ %i.ks, %.lr.ph.i32 ], [ %i.ki, %bb.be ] ; 3 uses
  %i.ko = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !41
  %i.kp = zext i8 %i.ko to i32
  %i.kq = call noundef i32 @toupper(i32 noundef %i.kp) #27
  %i.kr = trunc i32 %i.kq to i8
  store i8 %i.kr, ptr %.sroa.0.07.i, align 1, !tbaa !41
  %i.ks = getelementptr i8, ptr %.sroa.0.07.i, i64 1 ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.km
  br i1 %i.kt, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit, label %.lr.ph.i32, !llvm.loop !85

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit: ; preds = %.lr.ph.i32
  %.val.pre = load ptr, ptr %10, align 8          ; 10 uses
  %.val19.pre = load i64, ptr %i.kl, align 8, !tbaa !49
  switch i64 %.val19.pre, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %i.ku = load i32, ptr %.val.pre, align 1
  %i.kv = xor i32 %i.ku, 894981697
  %i.kw = getelementptr i8, ptr %.val.pre, i64 4
  %i.kx = load i16, ptr %i.kw, align 1
  %i.ky = zext i16 %i.kx to i32
  %i.kz = xor i32 %i.ky, 12849
  %i.la = or i32 %i.kv, %i.kz
  %i.lb = icmp ne i32 %i.la, 0
  %i.lc = zext i1 %i.lb to i32
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %_ZN5arrow8internal12_GLOBAL__N_122ArchParseUserSimdLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %i.le = load i32, ptr %.val.pre, align 1
  %i.lf = icmp ne i32 %i.le, 844650049
  %i.lg = zext i1 %i.lf to i32
  %i.lh = icmp eq i32 %i.lg, 0
  br i1 %i.lh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  %i.li = load i16, ptr %.val.pre, align 1
  %i.lj = xor i16 %i.li, 22081
  %i.lk = getelementptr i8, ptr %.val.pre, i64 2
  %i.ll = load i8, ptr %i.lk, align 1
  %i.lm = zext i8 %i.ll to i16
  %i.ln = xor i16 %i.lm, 88
  %i.lo = or i16 %i.lj, %i.ln
  %i.lp = icmp ne i16 %i.lo, 0
  %i.lq = zext i1 %i.lp to i32
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.ls = load i32, ptr %.val.pre, align 1
  %i.lt = xor i32 %i.ls, 876958547
  %i.lu = getelementptr i8, ptr %.val.pre, i64 4
  %i.lv = load i16, ptr %i.lu, align 1
  %i.lw = zext i16 %i.lv to i32
  %i.lx = xor i32 %i.lw, 12895
  %i.ly = or i32 %i.lt, %i.lx
  %i.lz = icmp ne i32 %i.ly, 0
  %i.ma = zext i1 %i.lz to i32
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %i.mc = load i32, ptr %.val.pre, align 1
  %i.md = icmp ne i32 %i.mc, 1162760014
  %i.me = zext i1 %i.md to i32
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.thread.sink.split.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i
  %.sink44.i = phi i64 [ -6113, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i ], [ -6129, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i ], [ -1985, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15.i ], [ -8181, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i ]
  %i.mg = load i64, ptr %0, align 8, !tbaa !52
  %i.mh = and i64 %i.mg, %.sink44.i
  store i64 %i.mh, ptr %0, align 8, !tbaa !52
  br label %_ZN5arrow8internal12_GLOBAL__N_122ArchParseUserSimdLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPl.exit

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit.thread: ; preds = %bb.be, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit21.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit19.i, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN5arrow8internal7CpuInfo4ImplC1EvEUlhE_ET0_T_SG_SF_T1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %11, ptr noundef nonnull @.str.2, i32 noundef 527, i32 noundef 1)
          to label %bb.bf unwind label %bb.bi
end_hunk_0
