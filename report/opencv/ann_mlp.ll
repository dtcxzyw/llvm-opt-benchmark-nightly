Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ann_mlp?download=true
inline.NumInlined: 1164
inline.NumDeleted: 373
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv2ml11ANN_MLPImpl14train_backpropERKNS_3MatES4_S4_NS_12TermCriteriaE:bb.a

.noexc269:                                        ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZNK2cv8internal14VecReaderProxyIiLi1EEclERSt6vectorIiSaIiEEm, ptr noundef nonnull @.str.14, i32 noundef 109) #20
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc269
  unreachable

bb.k:                                             ; preds = %.noexc269
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !31
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %.body

bb.l:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit268
  %i.cx = icmp sgt i32 %i.cp, 0
  br i1 %i.cx, label %bb.m, label %.thread.i

.thread.i:                                        ; preds = %bb.l
  %i.cy = icmp eq i32 %i.cp, 0
  %i.cz = zext i1 %i.cy to i32
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 84 ; 2 uses
  %i.db = icmp eq i32 %i.cp, 2
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !88 ; 2 uses
  %.not.i = icmp eq i32 %i.cp, 1
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.df = load i32, ptr %i.da, align 4, !tbaa !88
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %.thread.i
  %i.dg = phi i32 [ %i.cz, %.thread.i ], [ %i.de, %bb.m ]
  %i.dh = icmp sgt i32 %i.cp, -1
  %i.di = zext i1 %i.dh to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dj = phi i32 [ %i.de, %bb.n ], [ %i.dg, %bb.o ]
  %i.dk = phi i32 [ %i.df, %bb.n ], [ %i.di, %bb.o ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.dk to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.dj to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, i64 %.sroa.0.0.insert.insert.i, i32 noundef 6)
          to label %bb.q unwind label %.loopexit312

bb.q:                                             ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw [208 x i8], ptr %.pr.i, i64 %indvars.iv
  %i.dm = load ptr, ptr %15, align 8, !tbaa !230  ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %i.dl, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.u, !inline_history !236

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.q
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bf) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bg) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bh) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !237

bb.r:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.s:                                             ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.t:                                             ; preds = %bb.f, %bb.c
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit312:                                     ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.q
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #19
  br label %.body

.body:                                            ; preds = %.loopexit312, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.u
  %.pn242 = phi { ptr, i32 } [ %i.dt, %bb.u ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit, %.loopexit312 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.db

._crit_edge:                                      ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit, %.loopexit313
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 1, i32 noundef %i.g, i32 noundef 4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %._crit_edge
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !84 ; 5 uses
  %i.dw = icmp sgt i32 %i.g, 0                    ; 2 uses
  br i1 %i.dw, label %.lr.ph335.preheader, label %._crit_edge336

.lr.ph335.preheader:                              ; preds = %bb.v
  %wide.trip.count372 = zext nneg i32 %i.g to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph335.preheader429, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph335.preheader
  %n.vec = and i64 %wide.trip.count372, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <4 x i32> %vec.ind, ptr %i.dx, align 4, !tbaa !88
  store <4 x i32> %step.add, ptr %i.dy, align 4, !tbaa !88
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count372
  br i1 %cmp.n, label %._crit_edge336, label %.lr.ph335.preheader429

.lr.ph335.preheader429:                           ; preds = %.lr.ph335.preheader, %middle.block
  %indvars.iv369.ph = phi i64 [ 0, %.lr.ph335.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph335

.lr.ph335:                                        ; preds = %.lr.ph335.preheader429, %.lr.ph335
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %.lr.ph335 ], [ %indvars.iv369.ph, %.lr.ph335.preheader429 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv369
  %i.eb = trunc nuw nsw i64 %indvars.iv369 to i32
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !88
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %exitcond373.not = icmp eq i64 %indvars.iv.next370, %wide.trip.count372
  br i1 %exitcond373.not, label %._crit_edge336, label %.lr.ph335, !llvm.loop !239

bb.w:                                             ; preds = %._crit_edge
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

._crit_edge336:                                   ; preds = %.lr.ph335, %middle.block, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !91 ; 3 uses
  %i.ef = shl nsw i32 %i.ee, 1                    ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.eh, ptr %17, align 8, !tbaa !151
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.not.i.i271 = icmp ugt i32 %i.ef, 136
  store i64 %i.eg, ptr %i.ei, align 8, !tbaa !154
  br i1 %.not.i.i271, label %bb.x, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit

bb.x:                                             ; preds = %._crit_edge336
  %i.ej = icmp slt i32 %i.ee, 0
  %i.ek = shl nuw nsw i64 %i.eg, 3
  %i.el = select i1 %i.ej, i64 -1, i64 %i.ek
  %i.em = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #17
          to label %.noexc272 unwind label %bb.af ; 2 uses

.noexc272:                                        ; preds = %bb.x
  store ptr %i.em, ptr %17, align 8, !tbaa !151
  br label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit

_ZN2cv10AutoBufferIdLm136EEC2Em.exit:             ; preds = %.noexc272, %._crit_edge336
  %i.en = phi ptr [ %i.em, %.noexc272 ], [ %i.eh, %._crit_edge336 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %i.en, ptr %i.a, align 16, !tbaa !240
  %43 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eo = sext i32 %i.ee to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.eo
  store ptr %i.ep, ptr %43, align 8, !tbaa !240
  %i.eq = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  br i1 %i.eq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !84
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.et = phi ptr [ %i.es, %bb.z ], [ null, %bb.y ] ; 2 uses
  %i.eu = icmp sgt i32 %i.h, 0
  br i1 %i.eu, label %.lr.ph361, label %._crit_edge362

.lr.ph361:                                        ; preds = %bb.aa
  %.not199 = icmp eq ptr %i.et, null
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ez = icmp sgt i32 %i.v, 0
  %i.fa = icmp eq i32 %i.c, 5
  %i.fb = icmp sgt i32 %i.u, 1                    ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.fg = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.fj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 16
  %44 = and i64 %i.t, 1
  %45 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %44
  %sext309 = add i64 %sext, 4294967296
  %i.fm = ashr i64 %sext309, 32
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.fp = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.fq = icmp sgt i32 %i.x, 0
  %i.fr = icmp eq i32 %i.e, 5
  %sext310 = add i64 %sext, -4294967296
  %i.fs = ashr i64 %sext310, 32
  %i.ft = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %27, i64 20
  %i.fv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %28, i64 20
  %i.fy = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.gd = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %32, i64 20
  %i.gg = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gi = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %33, i64 20
  %i.gk = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gm = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %35, i64 20
  %i.gq = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %36, i64 20
  %i.gt = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %40, i64 20
  %i.gz = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %41, i64 20
  %i.hc = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.hf = and i64 %i.t, 4294967295                ; 2 uses
  %wide.trip.count378 = zext nneg i32 %i.v to i64
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %.pr.i291, i64 %i.fs
  %wide.trip.count388 = zext nneg i32 %i.x to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph361, %._crit_edge356
  %.0185359 = phi i32 [ 0, %.lr.ph361 ], [ %i.my, %._crit_edge356 ] ; 3 uses
  %.0186358 = phi double [ 0.000000e+00, %.lr.ph361 ], [ %i.lk, %._crit_edge356 ] ; 4 uses
  %.0190357 = phi double [ f0x7FDFFFFFFFFFFFFF, %.lr.ph361 ], [ %.1191, %._crit_edge356 ] ; 2 uses
  %i.hh = srem i32 %.0185359, %i.g                ; 3 uses
  br i1 %.not199, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !102
  %i.hl = fmul double %i.hk, %i.j
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.hm = phi double [ %i.hl, %bb.ac ], [ 1.000000e+00, %bb.ab ] ; 2 uses
  %i.hn = icmp eq i32 %i.hh, 0
  br i1 %i.hn, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.ho = fsub double %.0190357, %.0186358
  %i.hp = call double @llvm.fabs.f64(double %i.ho)
  %i.hq = fcmp olt double %i.hp, %i.l
  br i1 %i.hq, label %._crit_edge362, label %.preheader311

.preheader311:                                    ; preds = %bb.ae
  br i1 %i.dw, label %_ZN2cv3RNG7uniformEii.exit273.lr.ph, label %.loopexit

_ZN2cv3RNG7uniformEii.exit273.lr.ph:              ; preds = %.preheader311
  %.promoted = load i64, ptr %i.ev, align 8, !tbaa !219
  br label %_ZN2cv3RNG7uniformEii.exit273

bb.af:                                            ; preds = %bb.x
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297

bb.ag:                                            ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZN2cv3RNG7uniformEii.exit273:                    ; preds = %_ZN2cv3RNG7uniformEii.exit273.lr.ph, %_ZN2cv3RNG7uniformEii.exit273
  %i.ht = phi i64 [ %.promoted, %_ZN2cv3RNG7uniformEii.exit273.lr.ph ], [ %i.id, %_ZN2cv3RNG7uniformEii.exit273 ] ; 2 uses
  %.2337 = phi i32 [ 0, %_ZN2cv3RNG7uniformEii.exit273.lr.ph ], [ %i.im, %_ZN2cv3RNG7uniformEii.exit273 ]
  %i.hu = and i64 %i.ht, 4294967295
  %i.hv = mul nuw i64 %i.hu, 4164903690
  %i.hw = lshr i64 %i.ht, 32
  %i.hx = add nuw i64 %i.hv, %i.hw                ; 3 uses
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = urem i32 %i.hy, %i.g
  %i.ia = and i64 %i.hx, 4294967295
  %i.ib = mul nuw i64 %i.ia, 4164903690
  %i.ic = lshr i64 %i.hx, 32
  %i.id = add nuw i64 %i.ib, %i.ic                ; 3 uses
  %i.ie = trunc i64 %i.id to i32
  %i.if = urem i32 %i.ie, %i.g
  %i.ig = zext nneg i32 %i.hz to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ig ; 2 uses
  %i.ii = zext nneg i32 %i.if to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ih, align 4, !tbaa !88
  %i.il = load i32, ptr %i.ij, align 4, !tbaa !88
  store i32 %i.il, ptr %i.ih, align 4, !tbaa !88
  store i32 %i.ik, ptr %i.ij, align 4, !tbaa !88
  %i.im = add nuw nsw i32 %.2337, 1               ; 2 uses
  %exitcond374.not = icmp eq i32 %i.im, %i.g
  br i1 %exitcond374.not, label %..loopexit_crit_edge, label %_ZN2cv3RNG7uniformEii.exit273, !llvm.loop !241

..loopexit_crit_edge:                             ; preds = %_ZN2cv3RNG7uniformEii.exit273
  store i64 %i.id, ptr %i.ev, align 8, !tbaa !219
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader311, %..loopexit_crit_edge, %bb.ad
  %.1191 = phi double [ %.0190357, %bb.ad ], [ %.0186358, %..loopexit_crit_edge ], [ %.0186358, %.preheader311 ]
  %.1187 = phi double [ %.0186358, %bb.ad ], [ 0.000000e+00, %..loopexit_crit_edge ], [ 0.000000e+00, %.preheader311 ] ; 2 uses
  %i.in = zext nneg i32 %i.hh to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !88
  %i.iq = load ptr, ptr %i.ew, align 8, !tbaa !84
  %i.ir = load i64, ptr %i.ex, align 8, !tbaa !38
  %i.is = sext i32 %i.ip to i64                   ; 2 uses
  %i.it = mul i64 %i.ir, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.it ; 2 uses
  %i.iv = load ptr, ptr %i.ey, align 8, !tbaa !39
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !84
  br i1 %i.ez, label %.lr.ph341, label %._crit_edge342

.lr.ph341:                                        ; preds = %.loopexit
  %i.iy = load ptr, ptr %.pr.i291, align 8, !tbaa !228
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph341, %bb.ak
  %indvars.iv375 = phi i64 [ 0, %.lr.ph341 ], [ %indvars.iv.next376, %bb.ak ] ; 5 uses
  br i1 %i.fa, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv375
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !164
  %i.jb = fpext float %i.ja to double
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv375
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !102
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.je = phi double [ %i.jb, %bb.ai ], [ %i.jd, %bb.aj ]
  %.idx = shl nuw nsw i64 %indvars.iv375, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ix, i64 %.idx ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !102
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !102
  %i.jj = call double @llvm.fmuladd.f64(double %i.je, double %i.jg, double %i.ji)
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv375
  store double %i.jj, ptr %i.jk, align 8, !tbaa !102
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond379.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count378
  br i1 %exitcond379.not, label %._crit_edge342, label %bb.ah, !llvm.loop !242

._crit_edge342:                                   ; preds = %bb.ak, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.jl = load ptr, ptr %.pr.i291, align 8, !tbaa !228
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef 1, i32 noundef %i.v, i32 noundef 6, ptr noundef nonnull %i.jl, i64 noundef 0)
          to label %.preheader unwind label %bb.as

.preheader:                                       ; preds = %._crit_edge342
  br i1 %i.fb, label %.lr.ph344, label %._crit_edge345

.lr.ph344:                                        ; preds = %.preheader, %bb.ar
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %bb.ar ], [ 1, %.preheader ] ; 6 uses
  %i.jm = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv380
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %.pr.i291, i64 %indvars.iv380
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !228
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %19, i32 noundef 1, i32 noundef %i.jo, i32 noundef 6, ptr noundef nonnull %i.jq, i64 noundef 0)
          to label %bb.al unwind label %bb.at

bb.al:                                            ; preds = %.lr.ph344
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.jr = load ptr, ptr %i.ey, align 8, !tbaa !39
  %i.js = getelementptr inbounds nuw [208 x i8], ptr %i.jr, i64 %indvars.iv380
  %i.jt = load i32, ptr %i.fc, align 4, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !243
  store i32 0, ptr %8, align 4, !tbaa !161, !noalias !243
  store i32 %i.jt, ptr %i.fd, align 4, !tbaa !163, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !243
  store i64 9223372034707292160, ptr %9, align 8, !noalias !243
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.js, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.am unwind label %bb.au

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !243
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store i32 0, ptr %i.fe, align 8, !tbaa !73
  store i32 0, ptr %i.ff, align 4, !tbaa !74
  store i32 16842752, ptr %21, align 8, !tbaa !66
  store ptr %18, ptr %i.fg, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store i32 0, ptr %i.fh, align 8, !tbaa !73
  store i32 0, ptr %i.fi, align 4, !tbaa !74
  store i32 16842752, ptr %22, align 8, !tbaa !66
  store ptr %20, ptr %i.fj, align 8, !tbaa !69
  %i.ju = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  store i64 0, ptr %i.fl, align 8
  store i32 33619968, ptr %23, align 8, !tbaa !66
  store ptr %19, ptr %i.fk, align 8, !tbaa !69
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %i.ju, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 noundef 0)
          to label %bb.ao unwind label %bb.aw

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %.pr.i282, i64 %indvars.iv380
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !228
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %24, i32 noundef 1, i32 noundef %i.jo, i32 noundef 6, ptr noundef nonnull %i.jw, i64 noundef 0)
          to label %bb.ap unwind label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.jx = load ptr, ptr %i.ey, align 8, !tbaa !39
  %i.jy = getelementptr inbounds nuw [208 x i8], ptr %i.jx, i64 %indvars.iv380
  invoke void @_ZNK2cv2ml11ANN_MLPImpl21calc_activ_func_derivERNS_3MatES3_RKS2_(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %24, ptr noundef nonnull align 8 dereferenceable(208) %i.jy)
          to label %bb.aq unwind label %bb.az

bb.aq:                                            ; preds = %bb.ap
  %i.jz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.ar unwind label %bb.az     ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next381, %i.hf
  br i1 %exitcond384.not, label %._crit_edge345, label %.lr.ph344, !llvm.loop !246

bb.as:                                            ; preds = %._crit_edge342
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.at:                                            ; preds = %.lr.ph344
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.au:                                            ; preds = %bb.al
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.av:                                            ; preds = %bb.am
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.aw:                                            ; preds = %bb.an
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.pn227.pn.pn = phi { ptr, i32 } [ %i.kd, %bb.av ], [ %i.ke, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ao
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aq, %bb.ap
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #19
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn232 = phi { ptr, i32 } [ %i.kg, %bb.az ], [ %i.kf, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.pn232.pn = phi { ptr, i32 } [ %.pn232, %bb.ba ], [ %.pn227.pn.pn, %bb.ax ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.pn232.pn.pn = phi { ptr, i32 } [ %.pn232.pn, %bb.bb ], [ %i.kc, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.at
  %.pn232.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn, %bb.bc ], [ %i.kb, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.cq

._crit_edge345:                                   ; preds = %bb.ar, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.kh = load ptr, ptr %45, align 8, !tbaa !240
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %25, i32 noundef 1, i32 noundef %i.x, i32 noundef 6, ptr noundef %i.kh, i64 noundef 0)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %._crit_edge345
  %i.ki = load ptr, ptr %i.ey, align 8, !tbaa !39
  %i.kj = getelementptr inbounds nuw [208 x i8], ptr %i.ki, i64 %i.fm
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !84
  %i.km = load ptr, ptr %i.fn, align 8, !tbaa !84
  %i.kn = load i64, ptr %i.fo, align 8, !tbaa !38
  %i.ko = mul i64 %i.kn, %i.is
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ko ; 2 uses
  %i.kq = load ptr, ptr %i.fp, align 8, !tbaa !84
  br i1 %i.fq, label %.lr.ph349, label %._crit_edge350

.lr.ph349:                                        ; preds = %bb.be
  %i.kr = load ptr, ptr %i.hg, align 8, !tbaa !228
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph349, %bb.bi
  %indvars.iv385 = phi i64 [ 0, %.lr.ph349 ], [ %indvars.iv.next386, %bb.bi ] ; 6 uses
  %.2188347 = phi double [ %.1187, %.lr.ph349 ], [ %i.li, %bb.bi ]
  br i1 %i.fr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv385
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !164
  %i.ku = fpext float %i.kt to double
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv385
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !102
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kx = phi double [ %i.ku, %bb.bg ], [ %i.kw, %bb.bh ]
  %.idx423 = shl nuw nsw i64 %indvars.iv385, 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kl, i64 %.idx423 ; 2 uses
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !102
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lb = load double, ptr %i.la, align 8, !tbaa !102
  %i.lc = call double @llvm.fmuladd.f64(double %i.kx, double %i.kz, double %i.lb)
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv385
  %i.le = load double, ptr %i.ld, align 8, !tbaa !102
  %i.lf = fsub double %i.lc, %i.le                ; 3 uses
  %i.lg = fmul double %i.hm, %i.lf
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv385
  store double %i.lg, ptr %i.lh, align 8, !tbaa !102
  %i.li = call double @llvm.fmuladd.f64(double %i.lf, double %i.lf, double %.2188347) ; 2 uses
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count388
  br i1 %exitcond389.not, label %._crit_edge350, label %bb.bf, !llvm.loop !247

bb.bj:                                            ; preds = %._crit_edge345
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

._crit_edge350:                                   ; preds = %bb.bi, %bb.be
  %.2188.lcssa = phi double [ %.1187, %bb.be ], [ %i.li, %bb.bi ]
  %i.lk = fmul double %i.hm, %.2188.lcssa
  br i1 %i.fb, label %.lr.ph355, label %._crit_edge356

.lr.ph355:                                        ; preds = %._crit_edge350, %bb.ck
  %indvars.iv390 = phi i64 [ %indvars.iv.next391, %bb.ck ], [ %i.hf, %._crit_edge350 ] ; 4 uses
  %indvars.iv.next391 = add nsw i64 %indvars.iv390, -1 ; 8 uses
  %i.ll = add nsw i64 %indvars.iv390, -2          ; 3 uses
  %i.lm = load ptr, ptr %i.m, align 8, !tbaa !76  ; 2 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ll
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !88 ; 4 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.next391
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %.pr.i282, i64 %indvars.iv.next391
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !228
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %26, i32 noundef 1, i32 noundef %i.lq, i32 noundef 6, ptr noundef nonnull %i.ls, i64 noundef 0)
          to label %bb.bk unwind label %bb.bw

bb.bk:                                            ; preds = %.lr.ph355
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store i32 0, ptr %i.ft, align 8, !tbaa !73
  store i32 0, ptr %i.fu, align 4, !tbaa !74
  store i32 16842752, ptr %27, align 8, !tbaa !66
  store ptr %25, ptr %i.fv, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  store i32 0, ptr %i.fw, align 8, !tbaa !73
  store i32 0, ptr %i.fx, align 4, !tbaa !74
  store i32 16842752, ptr %28, align 8, !tbaa !66
  store ptr %26, ptr %i.fy, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  store i64 0, ptr %i.ga, align 8
  store i32 33619968, ptr %29, align 8, !tbaa !66
  store ptr %25, ptr %i.fz, align 8, !tbaa !69
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.bl unwind label %bb.bx

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.lt = add nsw i32 %i.lo, 1
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %.pr.i291, i64 %i.ll
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !228
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %30, i32 noundef %i.lt, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %i.lv, i64 noundef 0)
          to label %bb.bm unwind label %bb.by

bb.bm:                                            ; preds = %bb.bl
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %.pr.i291, i64 %i.ll
  %i.lx = sext i32 %i.lo to i64
  %i.ly = load ptr, ptr %i.lw, align 8, !tbaa !228
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lx
  store double 1.000000e+00, ptr %i.lz, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store i32 0, ptr %i.gb, align 8, !tbaa !73
  store i32 0, ptr %i.gc, align 4, !tbaa !74
  store i32 16842752, ptr %31, align 8, !tbaa !66
  store ptr %30, ptr %i.gd, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  store i32 0, ptr %i.ge, align 8, !tbaa !73
  store i32 0, ptr %i.gf, align 4, !tbaa !74
  store i32 16842752, ptr %32, align 8, !tbaa !66
  store ptr %25, ptr %i.gg, align 8, !tbaa !69
  %i.ma = load double, ptr %i.gh, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %i.mb = getelementptr inbounds nuw [208 x i8], ptr %.pr.i, i64 %indvars.iv.next391 ; 2 uses
  store i32 0, ptr %i.gi, align 8, !tbaa !73
  store i32 0, ptr %i.gj, align 4, !tbaa !74
  store i32 16842752, ptr %33, align 8, !tbaa !66
  store ptr %i.mb, ptr %i.gk, align 8, !tbaa !69
  %i.mc = load double, ptr %i.gl, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  store i64 0, ptr %i.gn, align 8
  store i32 33619968, ptr %34, align 8, !tbaa !66
  store ptr %i.mb, ptr %i.gm, align 8, !tbaa !69
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32, double noundef %i.ma, ptr noundef nonnull align 8 dereferenceable(24) %33, double noundef %i.mc, ptr noundef nonnull align 8 dereferenceable(24) %34, i32 noundef 0)
          to label %bb.bn unwind label %bb.bz

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  %i.md = load ptr, ptr %i.ey, align 8, !tbaa !39
  %i.me = getelementptr inbounds nuw [208 x i8], ptr %i.md, i64 %indvars.iv.next391 ; 2 uses
  store i32 0, ptr %i.go, align 8, !tbaa !73
  store i32 0, ptr %i.gp, align 4, !tbaa !74
  store i32 16842752, ptr %35, align 8, !tbaa !66
  store ptr %i.me, ptr %i.gq, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.mf = getelementptr inbounds nuw [208 x i8], ptr %.pr.i, i64 %indvars.iv.next391
  store i32 0, ptr %i.gr, align 8, !tbaa !73
  store i32 0, ptr %i.gs, align 4, !tbaa !74
  store i32 16842752, ptr %36, align 8, !tbaa !66
  store ptr %i.mf, ptr %i.gt, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  store i64 0, ptr %i.gv, align 8
  store i32 33619968, ptr %37, align 8, !tbaa !66
  store ptr %i.me, ptr %i.gu, align 8, !tbaa !69
  %i.mg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bo unwind label %bb.ca

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %i.mg, i32 noundef -1)
          to label %bb.bp unwind label %bb.ca

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %.not212 = icmp eq i64 %indvars.iv390, 2
  br i1 %.not212, label %bb.ck, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  %i.mh = and i64 %indvars.iv.next391, 1
  %46 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.mh
  %i.mi = load ptr, ptr %46, align 8, !tbaa !240
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %38, i32 noundef 1, i32 noundef %i.lo, i32 noundef 6, ptr noundef %i.mi, i64 noundef 0)
          to label %bb.br unwind label %bb.cb

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  %i.mj = load ptr, ptr %i.ey, align 8, !tbaa !39
  %i.mk = getelementptr inbounds nuw [208 x i8], ptr %i.mj, i64 %indvars.iv.next391
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !248
  store i32 0, ptr %6, align 4, !tbaa !161, !noalias !248
  store i32 %i.lo, ptr %i.gw, align 4, !tbaa !163, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !248
  store i64 9223372034707292160, ptr %7, align 8, !noalias !248
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 8 dereferenceable(208) %i.mk, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.bs unwind label %bb.cc

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !248
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  store i32 0, ptr %i.gx, align 8, !tbaa !73
  store i32 0, ptr %i.gy, align 4, !tbaa !74
  store i32 16842752, ptr %40, align 8, !tbaa !66
  store ptr %25, ptr %i.gz, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  store i32 0, ptr %i.ha, align 8, !tbaa !73
  store i32 0, ptr %i.hb, align 4, !tbaa !74
  store i32 16842752, ptr %41, align 8, !tbaa !66
  store ptr %39, ptr %i.hc, align 8, !tbaa !69
  %i.ml = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bt unwind label %bb.cd

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  store i64 0, ptr %i.he, align 8
  store i32 33619968, ptr %42, align 8, !tbaa !66
  store ptr %38, ptr %i.hd, align 8, !tbaa !69
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %41, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %i.ml, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %42, i32 noundef 2)
          to label %bb.bu unwind label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  %i.mm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %38)
          to label %bb.bv unwind label %bb.cg     ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.ck

bb.bw:                                            ; preds = %.lr.ph355
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bx:                                            ; preds = %bb.bk
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.cn

bb.by:                                            ; preds = %bb.bl
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bz:                                            ; preds = %bb.bm
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  br label %bb.cl

bb.ca:                                            ; preds = %bb.bo, %bb.bn
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.cl

bb.cb:                                            ; preds = %bb.bq
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cc:                                            ; preds = %bb.br
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.cd:                                            ; preds = %bb.bs
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.bt
  %i.mv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %.pn213.pn.pn = phi { ptr, i32 } [ %i.mu, %bb.cd ], [ %i.mv, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.ch

bb.cg:                                            ; preds = %bb.bu
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn218 = phi { ptr, i32 } [ %i.mw, %bb.cg ], [ %.pn213.pn.pn, %bb.cf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #19
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cc
  %.pn218.pn = phi { ptr, i32 } [ %.pn218, %bb.ch ], [ %i.mt, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %38) #19
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cb
  %.pn218.pn.pn = phi { ptr, i32 } [ %.pn218.pn, %bb.ci ], [ %i.ms, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.cl

bb.ck:                                            ; preds = %bb.bv, %bb.bp
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.mx = icmp sgt i64 %indvars.iv390, 2
  br i1 %i.mx, label %.lr.ph355, label %._crit_edge356, !llvm.loop !251

bb.cl:                                            ; preds = %bb.cj, %bb.ca, %bb.bz
  %.pn218.pn.pn.pn = phi { ptr, i32 } [ %.pn218.pn.pn, %bb.cj ], [ %i.mr, %bb.ca ], [ %i.mq, %bb.bz ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %30) #19
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.by
  %.pn218.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn218.pn.pn.pn, %bb.cl ], [ %i.mp, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.bx
  %.pn218.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn218.pn.pn.pn.pn, %bb.cm ], [ %i.mo, %bb.bx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #19
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.bw
  %.pn218.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn218.pn.pn.pn.pn.pn, %bb.cn ], [ %i.mn, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  br label %bb.cp

._crit_edge356:                                   ; preds = %bb.ck, %._crit_edge350
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.my = add nuw nsw i32 %.0185359, 1            ; 2 uses
  %exitcond393.not = icmp eq i32 %i.my, %i.h
  br i1 %exitcond393.not, label %._crit_edge362, label %bb.ab, !llvm.loop !252

bb.cp:                                            ; preds = %bb.co, %bb.bj
  %.pn218.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn218.pn.pn.pn.pn.pn.pn, %bb.co ], [ %i.lj, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.bd
  %.pn232.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn, %bb.bd ], [ %.pn218.pn.pn.pn.pn.pn.pn.pn, %bb.cp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.as
  %.pn232.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn, %bb.cq ], [ %i.ka, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.cy

._crit_edge362:                                   ; preds = %._crit_edge356, %bb.ae, %bb.aa
  %.0185.lcssa = phi i32 [ 0, %bb.aa ], [ %.0185359, %bb.ae ], [ %i.h, %._crit_edge356 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.mz = load ptr, ptr %17, align 8, !tbaa !151  ; 3 uses
  %.not.i.i277 = icmp eq ptr %i.mz, %i.eh
  %i.na = icmp eq ptr %i.mz, null
  %or.cond.i = or i1 %.not.i.i277, %i.na
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge362
  call void @_ZdaPv(ptr noundef nonnull %i.mz) #18
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit

_ZN2cv10AutoBufferIdLm136EED2Ev.exit:             ; preds = %._crit_edge362, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.bc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN2cv10AutoBufferIdLm136EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.nb, %.lr.ph.i.i.i ], [ %.pr.i, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #19
  %i.nb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nb, %i.bc
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !43

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.nc = ptrtoint ptr %.pr.i to i64
  %i.nd = sub i64 %i.aw, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.nd) #18
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.ne = load ptr, ptr %i.ay, align 8, !tbaa !225 ; 2 uses
  %.not4.i.i.i278 = icmp eq ptr %.pr.i282, %i.ne
  br i1 %.not4.i.i.i278, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i279

.lr.ph.i.i.i279:                                  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i280 = phi ptr [ %i.nl, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %.pr.i282, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %i.nf = load ptr, ptr %.05.i.i.i280, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i279
  %i.ng = getelementptr inbounds nuw i8, ptr %.05.i.i.i280, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !253
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = ptrtoint ptr %i.nf to i64
  %i.nk = sub i64 %i.ni, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nk) #18
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.cu, %.lr.ph.i.i.i279
  %i.nl = getelementptr inbounds nuw i8, ptr %.05.i.i.i280, i64 24 ; 2 uses
  %.not.i.i.i281 = icmp eq ptr %i.nl, %i.ne
  br i1 %.not.i.i.i281, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i279, !llvm.loop !254

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %.not.i.i1.i283 = icmp eq ptr %.pr.i282, null
  br i1 %.not.i.i1.i283, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.nm = load ptr, ptr %i.ax, align 8, !tbaa !224
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = ptrtoint ptr %.pr.i282 to i64
  %i.np = sub i64 %i.nn, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i282, i64 noundef %i.np) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.nq = load ptr, ptr %i.az, align 8, !tbaa !225 ; 2 uses
  %.not4.i.i.i284 = icmp eq ptr %.pr.i291, %i.nq
  br i1 %.not4.i.i.i284, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292, label %.lr.ph.i.i.i285

.lr.ph.i.i.i285:                                  ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288
  %.05.i.i.i286 = phi ptr [ %i.nx, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288 ], [ %.pr.i291, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.nr = load ptr, ptr %.05.i.i.i286, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i287 = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i.i.i.i287, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i.i.i285
  %i.ns = getelementptr inbounds nuw i8, ptr %.05.i.i.i286, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !253
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nw) #18
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288: ; preds = %bb.cw, %.lr.ph.i.i.i285
  %i.nx = getelementptr inbounds nuw i8, ptr %.05.i.i.i286, i64 24 ; 2 uses
  %.not.i.i.i289 = icmp eq ptr %i.nx, %i.nq
  br i1 %.not.i.i.i289, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292, label %.lr.ph.i.i.i285, !llvm.loop !254

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i288, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit
  %.not.i.i1.i293 = icmp eq ptr %.pr.i291, null
  br i1 %.not.i.i1.i293, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit294, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292
  %i.ny = load ptr, ptr %i.ba, align 8, !tbaa !224
  %i.nz = ptrtoint ptr %i.ny to i64
  %i.oa = ptrtoint ptr %.pr.i291 to i64
  %i.ob = sub i64 %i.nz, %i.oa
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i291, i64 noundef %i.ob) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit294

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit294:      ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i292, %bb.cx
  %i.oc = sdiv i32 %.0185.lcssa, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret i32 %i.oc

bb.cy:                                            ; preds = %bb.cr, %bb.ag
  %.pn232.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn.pn, %bb.cr ], [ %i.hs, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.od = load ptr, ptr %17, align 8, !tbaa !151  ; 3 uses
  %.not.i.i295 = icmp eq ptr %i.od, %i.eh
  %i.oe = icmp eq ptr %i.od, null
  %or.cond.i296 = or i1 %.not.i.i295, %i.oe
  br i1 %or.cond.i296, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_ZdaPv(ptr noundef nonnull %i.od) #18
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297

_ZN2cv10AutoBufferIdLm136EED2Ev.exit297:          ; preds = %bb.cz, %bb.cy, %bb.af
  %.pn232.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.af ], [ %.pn232.pn.pn.pn.pn.pn.pn, %bb.cy ], [ %.pn232.pn.pn.pn.pn.pn.pn, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  br label %bb.da

bb.da:                                            ; preds = %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297, %bb.w
  %.pn232.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn.pn.pn.pn, %_ZN2cv10AutoBufferIdLm136EED2Ev.exit297 ], [ %i.ec, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.db

bb.db:                                            ; preds = %bb.t, %.body, %bb.da
  %.pn242.pn.pn = phi { ptr, i32 } [ %.pn232.pn.pn.pn.pn.pn.pn.pn.pn, %bb.da ], [ %.pn242, %.body ], [ %i.ds, %bb.t ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.s
  %.pn242.pn.pn.pn = phi { ptr, i32 } [ %.pn242.pn.pn, %bb.db ], [ %i.dr, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #19
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.r
  %.pn242.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn242.pn.pn.pn, %bb.dc ], [ %i.dq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  resume { ptr, i32 } %.pn242.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv2ml11ANN_MLPImpl11train_rpropERKNS_3MatES4_S4_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 %4, double %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator", align 1   ; 3 uses
  %14 = alloca %"class.std::vector.11", align 8   ; 21 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %16 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %17 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %23 = alloca %"struct.cv::ml::ANN_MLPImpl::RPropLoop", align 8 ; 16 uses
  %24 = alloca %"class.cv::Range", align 4        ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.sroa.1.0.extract.shift = lshr i64 %4, 32
  %.sroa.1.0.extract.trunc = trunc nuw i64 %.sroa.1.0.extract.shift to i32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load double, ptr %i.d, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load double, ptr %i.f, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !109 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load double, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = lshr i64 %i.r, 2                         ; 4 uses
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %sext = shl i64 %i.r, 30
  %i.u = ashr i64 %sext, 32                       ; 9 uses
  %i.v = icmp ugt i64 %i.u, 44343134792571037
  br i1 %i.v, label %.noexc, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #20
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.w = mul nuw nsw i64 %i.u, 208                ; 3 uses
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17 ; 5 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  %.08.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.u, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #19
  %i.y = add nsw i64 %.057.i.i.i.i.i, -1          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i150, label %.lr.ph.i.i.i.i.i, !llvm.loop !119

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i150: ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.x, i64 %i.u ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17
          to label %.noexc158 unwind label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit258.thread ; 3 uses

.noexc158:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i150
  store ptr %i.ab, ptr %14, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ad = getelementptr inbounds nuw [208 x i8], ptr %i.ab, i64 %i.u
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !118
  br label %.lr.ph.i.i.i.i.i151

.lr.ph.i.i.i.i.i151:                              ; preds = %.lr.ph.i.i.i.i.i151, %.noexc158
  %.08.i.i.i.i.i152 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i151 ], [ %i.ab, %.noexc158 ] ; 2 uses
  %.057.i.i.i.i.i153 = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i151 ], [ %i.u, %.noexc158 ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i152) #19
  %i.af = add nsw i64 %.057.i.i.i.i.i153, -1      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i152, i64 208 ; 2 uses
  %.not.i.i.i.i.i154 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i154, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162, label %.lr.ph.i.i.i.i.i151, !llvm.loop !119

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162: ; preds = %.lr.ph.i.i.i.i.i151
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !42
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17
          to label %.lr.ph.i.i.i.i.i163 unwind label %bb.af ; 3 uses

.lr.ph.i.i.i.i.i163:                              ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162, %.lr.ph.i.i.i.i.i163
  %.08.i.i.i.i.i164 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i163 ], [ %i.ah, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162 ] ; 2 uses
  %.057.i.i.i.i.i165 = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i163 ], [ %i.u, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i162 ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i164) #19
  %i.ai = add nsw i64 %.057.i.i.i.i.i165, -1      ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i164, i64 208 ; 2 uses
  %.not.i.i.i.i.i166 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i166, label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit, label %.lr.ph.i.i.i.i.i163, !llvm.loop !119

_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit: ; preds = %.lr.ph.i.i.i.i.i163
  %i.ak = getelementptr inbounds nuw [208 x i8], ptr %i.ah, i64 %i.u
  %i.al = ptrtoint ptr %i.ak to i64
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171

_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171:  ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168
  %.sroa.18.0322362 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.aa, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 3 uses
  %.sroa.0300.0332355 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.x, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 9 uses
  %.0.lcssa.i.i.i.i.i342348 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.z, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 4 uses
  %.sroa.0292.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.ah, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 12 uses
  %.sroa.17.0 = phi i64 [ 0, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.al, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 2 uses
  %.0.lcssa.i.i.i.i.i167 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i168 ], [ %i.aj, %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171.loopexit ] ; 4 uses
  %i.am = icmp sgt i32 %i.t, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEC2EmRKS2_.exit171
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 224
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 432
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 224
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 16
  %wide.trip.count = and i64 %i.s, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv3MataSERKNS_7MatExprE.exit201
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3MataSERKNS_7MatExprE.exit201 ] ; 8 uses
  %.0102403 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %_ZN2cv3MataSERKNS_7MatExprE.exit201 ]
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !88
  %i.ba = add nsw i32 %i.az, %.0102403            ; 4 uses
  %i.bb = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0300.0332355, i64 %indvars.iv ; 2 uses
  %i.bc = load ptr, ptr %i.an, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw [208 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !229 ; 6 uses
  %i.bg = icmp slt i32 %i.bf, 3
  br i1 %i.bg, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIdSaIdEE17_M_default_appendEm:bb.a
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #18
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !228
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !226
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !253
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #2

declare void @_ZN2cv3expERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml11ANN_MLPImpl9RPropLoopD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv2ml11ANN_MLPImpl9RPropLoopE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #19
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml11ANN_MLPImpl9RPropLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv2ml11ANN_MLPImpl9RPropLoopE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #19, !inline_history !272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #19, !inline_history !272
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(464) %0) #19, !inline_history !272
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 464) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml11ANN_MLPImpl9RPropLoopclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::Range", align 4         ; 5 uses
  %9 = alloca %"class.cv::Range", align 8         ; 4 uses
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !378  ; 2 uses
  %i.e = sitofp i32 %i.d to double
  %i.f = fdiv double 1.000000e+00, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92   ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !88   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !88   ; 5 uses
  %i.p = load i32, ptr %i.b, align 8, !tbaa !77
  %i.q = and i32 %i.p, 4095
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i32, ptr %i.r, align 8, !tbaa !77
  %i.t = and i32 %i.s, 4095
  %i.u = ptrtoint ptr %i.m to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 2                         ; 4 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %sext = shl i64 %i.w, 30                        ; 3 uses
  %i.z = ashr i64 %sext, 32                       ; 5 uses
  %i.aa = icmp ugt i64 %i.z, 384307168202282325
  br i1 %i.aa, label %.noexc, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #20
  unreachable

_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit233, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ab = mul nuw nsw i64 %i.z, 24                ; 6 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #17 ; 5 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.z ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.ab, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ac, i64 %i.ab ; 2 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #17
          to label %.noexc232 unwind label %bb.j  ; 4 uses

.noexc232:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ae, i8 0, i64 %i.ab, i1 false)
  %scevgep.i.i.i.i.i227 = getelementptr i8, ptr %i.ae, i64 %i.ab
  %i.ag = ptrtoint ptr %i.af to i64
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit233

_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit233: ; preds = %.noexc232, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.0.lcssa.i.i.i.i.i429 = phi ptr [ %scevgep.i.i.i.i.i, %.noexc232 ], [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %.sink.i395 = phi ptr [ %i.ad, %.noexc232 ], [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 3 uses
  %.sroa.0313.0361 = phi ptr [ %i.ac, %.noexc232 ], [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 12 uses
  %.sroa.0305.0 = phi ptr [ %i.ae, %.noexc232 ], [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 13 uses
  %.sink.i228 = phi i64 [ %i.ag, %.noexc232 ], [ 0, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i229 = phi ptr [ %scevgep.i.i.i.i.i227, %.noexc232 ], [ null, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !91
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !266
  %i.al = mul nsw i32 %i.ak, %i.ai                ; 4 uses
  %i.am = shl nsw i32 %i.al, 1
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = icmp slt i32 %i.al, 0
  br i1 %i.ao, label %bb.b, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit233
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #20
          to label %.noexc235 unwind label %bb.k

.noexc235:                                        ; preds = %bb.b
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2EmRKS2_.exit233
  %.not.i.i.i.i234 = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i234, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ap = shl nuw nsw i64 %i.an, 3                ; 2 uses
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #17
          to label %.noexc236 unwind label %bb.k  ; 4 uses

.noexc236:                                        ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.an
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !102
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ap, -8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !102
  %i.at = ptrtoint ptr %i.ar to i64
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %.noexc236, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0299.0 = phi ptr [ %i.aq, %.noexc236 ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi i64 [ %i.at, %.noexc236 ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %.sroa.0299.0, ptr %i.a, align 16, !tbaa !240
  %33 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = zext nneg i32 %i.al to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0299.0, i64 %i.au
  store ptr %i.av, ptr %33, align 8, !tbaa !240
  %i.aw = icmp sgt i32 %i.y, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %wide.trip.count = and i64 %i.x, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIdSaIdEE6resizeEm.exit241
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIdSaIdEE6resizeEm.exit241 ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0313.0361, i64 %indvars.iv ; 3 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !88
  %i.bd = load i32, ptr %i.aj, align 8, !tbaa !266
  %i.be = mul nsw i32 %i.bd, %i.bc
  %i.bf = sext i32 %i.be to i64                   ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !226 ; 2 uses
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !228 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.bf
  br i1 %i.bn, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.bo = sub nuw nsw i64 %i.bf, %i.bm
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %i.bo)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge unwind label %bb.l

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge:    ; preds = %bb.d
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !260
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre686 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !76
  %.phi.trans.insert687 = getelementptr inbounds nuw [4 x i8], ptr %.pre686, i64 %indvars.iv
  %.pre688 = load i32, ptr %.phi.trans.insert687, align 4, !tbaa !88
  %.pre689 = load i32, ptr %i.aj, align 8, !tbaa !266
  %.pre691 = mul nsw i32 %.pre689, %.pre688
  %.pre692 = sext i32 %.pre691 to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.bp = icmp ugt i64 %i.bm, %i.bf
  br i1 %i.bp, label %bb.f, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bf ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  store ptr %i.bq, ptr %i.bg, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %bb.f, %bb.e
  %.pre-phi693 = phi i64 [ %.pre692, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge ], [ %i.bf, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ], [ %i.bf, %bb.f ], [ %i.bf, %bb.e ] ; 4 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0305.0, i64 %indvars.iv ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !226 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !228 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 3                 ; 3 uses
  %i.bz = icmp ult i64 %i.by, %.pre-phi693
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.ca = sub nuw nsw i64 %.pre-phi693, %i.by
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %i.ca)
          to label %_ZNSt6vectorIdSaIdEE6resizeEm.exit241 unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.cb = icmp ugt i64 %i.by, %.pre-phi693
  br i1 %i.cb, label %bb.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit241

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.pre-phi693 ; 2 uses
  %.not.i.i238 = icmp eq ptr %i.bt, %i.cc
  br i1 %.not.i.i238, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit241, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i239

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i239:     ; preds = %bb.i
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit241

_ZNSt6vectorIdSaIdEE6resizeEm.exit241:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i239, %bb.i, %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !379

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit282

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit271

bb.l:                                             ; preds = %bb.g, %bb.d
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit241, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.cg = load i32, ptr %1, align 4, !tbaa !161   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !163
  %i.cj = icmp slt i32 %i.cg, %i.ci
  br i1 %i.cj, label %.lr.ph556, label %._crit_edge557

.lr.ph556:                                        ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cm = icmp sgt i32 %i.k, 0
  %i.cn = icmp eq i32 %i.q, 5
  %i.co = icmp sgt i32 %i.y, 1                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 84
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %11, i64 88
  %34 = and i64 %i.x, 1
  %35 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %34
  %sext431 = add i64 %sext, 4294967296
  %i.db = ashr i64 %sext431, 32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 360
  %sext432 = add i64 %sext, -4294967296
  %i.de = ashr i64 %sext432, 32
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0313.0361, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 128 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dj = icmp sgt i32 %i.o, 0
  %i.dk = icmp eq i32 %i.t, 5
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %24, i64 20
  %i.dx = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %25, i64 20
  %i.ea = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %26, i64 20
  %i.ed = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %30, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.em = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ep = sext i32 %i.k to i64                    ; 4 uses
  %i.eq = sext i32 %i.o to i64
  %i.er = and i64 %i.x, 4294967295                ; 2 uses
  %i.es = sext i32 %i.cg to i64
  %wide.trip.count641 = zext i32 %i.k to i64      ; 11 uses
  %wide.trip.count649 = zext nneg i32 %i.k to i64
  %wide.trip.count662 = zext nneg i32 %i.o to i64
  %wide.trip.count667 = zext nneg i32 %i.o to i64
  %i.et = shl nuw nsw i64 %wide.trip.count641, 3  ; 2 uses
  %i.eu = shl nsw i64 %i.ep, 3
  %i.ev = shl nuw nsw i64 %wide.trip.count641, 4  ; 2 uses
  %i.ew = shl nsw i64 %i.ep, 3
  %min.iters.check924 = icmp ult i32 %i.k, 4
  %n.vec926 = and i64 %wide.trip.count641, 2147483644 ; 3 uses
  %cmp.n939 = icmp eq i64 %n.vec926, %wide.trip.count641
  %xtraiter = and i64 %wide.trip.count641, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ex = add nsw i64 %wide.trip.count641, -1
  %min.iters.check894 = icmp ult i32 %i.k, 4
  %n.vec896 = and i64 %wide.trip.count641, 2147483644 ; 3 uses
  %cmp.n907 = icmp eq i64 %n.vec896, %wide.trip.count641
  %xtraiter1018 = and i64 %wide.trip.count641, 1
  %lcmp.mod1019.not = icmp eq i64 %xtraiter1018, 0
  %i.ey = add nsw i64 %wide.trip.count641, -1
  br label %bb.n

._crit_edge557:                                   ; preds = %._crit_edge552, %._crit_edge
  %.0129.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %.1.lcssa, %._crit_edge552 ]
  %i.ez = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 248 ; 2 uses
  %i.fb = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.fa) #19 ; 2 uses
  %.not.i.i242 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i242, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge557
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.fb) #20
          to label %.noexc243 unwind label %bb.cn

.noexc243:                                        ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.lr.ph556, %._crit_edge552
  %indvars.iv683 = phi i64 [ %i.es, %.lr.ph556 ], [ %indvars.iv.next684, %._crit_edge552 ] ; 3 uses
  %.0129553 = phi double [ 0.000000e+00, %.lr.ph556 ], [ %.1.lcssa, %._crit_edge552 ] ; 2 uses
  %i.fc = load i32, ptr %i.aj, align 8, !tbaa !266 ; 2 uses
  %i.fd = trunc nsw i64 %indvars.iv683 to i32
  %i.fe = mul nsw i32 %i.fc, %i.fd                ; 3 uses
  %indvars.iv.next684 = add nsw i64 %indvars.iv683, 1 ; 3 uses
  %i.ff = trunc nsw i64 %indvars.iv.next684 to i32
  %i.fg = mul nsw i32 %i.fc, %i.ff
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.d, i32 %i.fg)
  %i.fh = sub nsw i32 %.sroa.speculated, %i.fe    ; 10 uses
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !39
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !84 ; 14 uses
  %i.fn = icmp sgt i32 %i.fh, 0                   ; 3 uses
  %.pre690 = load ptr, ptr %.sroa.0313.0361, align 8, !tbaa !228 ; 7 uses
  br i1 %i.fn, label %.lr.ph523, label %._crit_edge524.split

.lr.ph523:                                        ; preds = %bb.n
  %i.fo = load ptr, ptr %i.ck, align 8, !tbaa !84 ; 4 uses
  %i.fp = load i64, ptr %i.cl, align 8, !tbaa !38 ; 5 uses
  br i1 %i.cm, label %.lr.ph523.split, label %._crit_edge524.split

.lr.ph523.split:                                  ; preds = %.lr.ph523
  %i.fq = sext i32 %i.fe to i64                   ; 4 uses
  %i.fr = zext nneg i32 %i.fh to i64              ; 4 uses
  %scevgep887 = getelementptr i8, ptr %.pre690, i64 %i.et ; 2 uses
  %i.fs = add nsw i64 %i.fr, -1                   ; 2 uses
  br i1 %i.cn, label %.lr.ph519.us.preheader, label %.lr.ph519.preheader

.lr.ph519.preheader:                              ; preds = %.lr.ph523.split
  %i.ft = mul i64 %i.ew, %i.fs
  %scevgep911 = getelementptr i8, ptr %scevgep887, i64 %i.ft ; 2 uses
  %i.fu = mul i64 %i.fp, %i.fq
  %scevgep912 = getelementptr i8, ptr %i.fo, i64 %i.fu
  %scevgep913 = getelementptr i8, ptr %i.fo, i64 %i.et
  %i.fv = add nsw i64 %i.fq, -1
  %i.fw = add nsw i64 %i.fv, %i.fr
  %i.fx = mul i64 %i.fp, %i.fw
  %scevgep914 = getelementptr i8, ptr %scevgep913, i64 %i.fx
  %scevgep915 = getelementptr i8, ptr %i.fm, i64 %i.ev
  %bound0916 = icmp ult ptr %.pre690, %scevgep914
  %bound1917 = icmp ult ptr %scevgep912, %scevgep911
  %found.conflict918 = and i1 %bound0916, %bound1917
  %stride.check919 = icmp slt i64 %i.fp, 0
  %i.fy = or i1 %found.conflict918, %stride.check919
  %bound0920 = icmp ult ptr %.pre690, %scevgep915
  %bound1921 = icmp ult ptr %i.fm, %scevgep911
  %found.conflict922 = and i1 %bound0920, %bound1921
  %conflict.rdx = or i1 %i.fy, %found.conflict922
  br label %.lr.ph519

.lr.ph519.us.preheader:                           ; preds = %.lr.ph523.split
  %i.fz = mul i64 %i.eu, %i.fs
  %scevgep888 = getelementptr i8, ptr %scevgep887, i64 %i.fz
  %scevgep889 = getelementptr i8, ptr %i.fm, i64 %i.ev
  %bound0890 = icmp ult ptr %.pre690, %scevgep889
  %bound1891 = icmp ult ptr %i.fm, %scevgep888
  %found.conflict892 = and i1 %bound0890, %bound1891
  br label %.lr.ph519.us

.lr.ph519.us:                                     ; preds = %.lr.ph519.us.preheader, %._crit_edge520.split.us.us
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %._crit_edge520.split.us.us ], [ 0, %.lr.ph519.us.preheader ] ; 3 uses
  %i.ga = add nsw i64 %indvars.iv651, %i.fq
  %i.gb = mul i64 %i.fp, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.gb ; 4 uses
  %i.gd = mul nuw nsw i64 %indvars.iv651, %i.ep
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.pre690, i64 %i.gd ; 4 uses
  %brmerge = select i1 %min.iters.check894, i1 true, i1 %found.conflict892
  br i1 %brmerge, label %scalar.ph893.preheader, label %vector.body897

vector.body897:                                   ; preds = %.lr.ph519.us, %vector.body897
  %index898 = phi i64 [ %index.next905, %vector.body897 ], [ 0, %.lr.ph519.us ] ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %index898 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %wide.load899 = load <2 x float>, ptr %i.gf, align 4, !tbaa !164
  %wide.load900 = load <2 x float>, ptr %i.gg, align 4, !tbaa !164
  %i.gh = fpext <2 x float> %wide.load899 to <2 x double>
  %i.gi = fpext <2 x float> %wide.load900 to <2 x double>
  %i.gj = shl nuw nsw i64 %index898, 4
  %i.gk = shl i64 %index898, 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %wide.vec = load <4 x double>, ptr %i.gl, align 8, !tbaa !102, !alias.scope !380 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec901 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec902 = load <4 x double>, ptr %i.gn, align 8, !tbaa !102, !alias.scope !380 ; 2 uses
  %strided.vec903 = shufflevector <4 x double> %wide.vec902, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec904 = shufflevector <4 x double> %wide.vec902, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %strided.vec, <2 x double> %strided.vec901)
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %strided.vec903, <2 x double> %strided.vec904)
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %index898 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <2 x double> %i.go, ptr %i.gq, align 8, !tbaa !102, !alias.scope !383, !noalias !380
  store <2 x double> %i.gp, ptr %i.gr, align 8, !tbaa !102, !alias.scope !383, !noalias !380
  %index.next905 = add nuw i64 %index898, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next905, %n.vec896
  br i1 %i.gs, label %middle.block906, label %vector.body897, !llvm.loop !385

middle.block906:                                  ; preds = %vector.body897
  br i1 %cmp.n907, label %._crit_edge520.split.us.us, label %scalar.ph893.preheader

scalar.ph893.preheader:                           ; preds = %.lr.ph519.us, %middle.block906
  %indvars.iv646.ph = phi i64 [ %n.vec896, %middle.block906 ], [ 0, %.lr.ph519.us ] ; 6 uses
  br i1 %lcmp.mod1019.not, label %scalar.ph893.prol.loopexit, label %scalar.ph893.prol

scalar.ph893.prol:                                ; preds = %scalar.ph893.preheader
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv646.ph
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !164
  %i.gv = fpext float %i.gu to double
  %.idx725.prol = shl nuw nsw i64 %indvars.iv646.ph, 4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx725.prol ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !102
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !102
  %i.ha = call double @llvm.fmuladd.f64(double %i.gv, double %i.gx, double %i.gz)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv646.ph
  store double %i.ha, ptr %i.hb, align 8, !tbaa !102
  %indvars.iv.next647.prol = or disjoint i64 %indvars.iv646.ph, 1
  br label %scalar.ph893.prol.loopexit

scalar.ph893.prol.loopexit:                       ; preds = %scalar.ph893.prol, %scalar.ph893.preheader
  %indvars.iv646.unr = phi i64 [ %indvars.iv646.ph, %scalar.ph893.preheader ], [ %indvars.iv.next647.prol, %scalar.ph893.prol ]
  %i.hc = icmp eq i64 %indvars.iv646.ph, %i.ey
  br i1 %i.hc, label %._crit_edge520.split.us.us, label %scalar.ph893

scalar.ph893:                                     ; preds = %scalar.ph893.prol.loopexit, %scalar.ph893
  %indvars.iv646 = phi i64 [ %indvars.iv.next647.1, %scalar.ph893 ], [ %indvars.iv646.unr, %scalar.ph893.prol.loopexit ] ; 5 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv646
  %i.he = load float, ptr %i.hd, align 4, !tbaa !164
  %i.hf = fpext float %i.he to double
  %.idx725 = shl nuw nsw i64 %indvars.iv646, 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx725 ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !102
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !102
  %i.hk = call double @llvm.fmuladd.f64(double %i.hf, double %i.hh, double %i.hj)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv646
  store double %i.hk, ptr %i.hl, align 8, !tbaa !102
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.next647
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !164
  %i.ho = fpext float %i.hn to double
  %.idx725.1 = shl nuw nsw i64 %indvars.iv.next647, 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx725.1 ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !102
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !102
  %i.ht = call double @llvm.fmuladd.f64(double %i.ho, double %i.hq, double %i.hs)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next647
  store double %i.ht, ptr %i.hu, align 8, !tbaa !102
  %indvars.iv.next647.1 = add nuw nsw i64 %indvars.iv646, 2 ; 2 uses
  %exitcond650.not.1 = icmp eq i64 %indvars.iv.next647.1, %wide.trip.count649
  br i1 %exitcond650.not.1, label %._crit_edge520.split.us.us, label %scalar.ph893, !llvm.loop !386

._crit_edge520.split.us.us:                       ; preds = %scalar.ph893.prol.loopexit, %scalar.ph893, %middle.block906
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %i.hv = icmp samesign ult i64 %indvars.iv.next652, %i.fr
  br i1 %i.hv, label %.lr.ph519.us, label %._crit_edge524.split, !llvm.loop !387

.lr.ph519:                                        ; preds = %.lr.ph519.preheader, %._crit_edge520.split
  %indvars.iv643 = phi i64 [ %indvars.iv.next644, %._crit_edge520.split ], [ 0, %.lr.ph519.preheader ] ; 3 uses
  %i.hw = add nsw i64 %indvars.iv643, %i.fq
  %i.hx = mul i64 %i.fp, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.hx ; 4 uses
  %i.hz = mul nuw nsw i64 %indvars.iv643, %i.ep
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.pre690, i64 %i.hz ; 4 uses
  %brmerge1097 = select i1 %min.iters.check924, i1 true, i1 %conflict.rdx
  br i1 %brmerge1097, label %scalar.ph923.preheader, label %vector.body927

vector.body927:                                   ; preds = %.lr.ph519, %vector.body927
  %index928 = phi i64 [ %index.next937, %vector.body927 ], [ 0, %.lr.ph519 ] ; 5 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %index928 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load929 = load <2 x double>, ptr %i.ib, align 8, !tbaa !102, !alias.scope !388
  %wide.load930 = load <2 x double>, ptr %i.ic, align 8, !tbaa !102, !alias.scope !388
  %i.id = shl nuw nsw i64 %index928, 4
  %i.ie = shl i64 %index928, 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.id
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ie
end_hunk_1
begin_hunk_2_@_ZNK2cv2ml11ANN_MLPImpl9RPropLoopclERKNS_5RangeE:bb.a
  store i32 %i.jy, ptr %i.cq, align 4, !tbaa !163, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !398
  store i64 9223372034707292160, ptr %9, align 8, !noalias !398
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 8 dereferenceable(208) %i.jx, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.p unwind label %bb.ae

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store i32 0, ptr %i.cr, align 8, !tbaa !73
  store i32 0, ptr %i.cs, align 4, !tbaa !74
  store i32 16842752, ptr %13, align 8, !tbaa !66
  store ptr %10, ptr %i.ct, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store i32 0, ptr %i.cu, align 8, !tbaa !73
  store i32 0, ptr %i.cv, align 4, !tbaa !74
  store i32 16842752, ptr %14, align 8, !tbaa !66
  store ptr %12, ptr %i.cw, align 8, !tbaa !69
  %i.jz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.q unwind label %bb.af

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store i64 0, ptr %i.cy, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !66
  store ptr %11, ptr %i.cx, align 8, !tbaa !69
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %i.jz, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 0)
          to label %bb.r unwind label %bb.ag

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.ka = load i32, ptr %i.cz, align 8, !tbaa !229 ; 6 uses
  %i.kb = icmp slt i32 %i.ka, 3
  br i1 %i.kb, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc245 unwind label %.loopexit.split-lp435

.noexc245:                                        ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8internal14VecReaderProxyIiLi1EEclERSt6vectorIiSaIiEEm, ptr noundef nonnull @.str.14, i32 noundef 109) #20
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.noexc245
  unreachable

bb.u:                                             ; preds = %.noexc245
  %i.kc = landingpad { ptr, i32 }
          cleanup
  %i.kd = load ptr, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !31
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

bb.v:                                             ; preds = %bb.r
  %i.ki = icmp sgt i32 %i.ka, 0
  br i1 %i.ki, label %bb.w, label %.thread.i

.thread.i:                                        ; preds = %bb.v
  %i.kj = icmp eq i32 %i.ka, 0
  %i.kk = zext i1 %i.kj to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.kl = icmp eq i32 %i.ka, 2
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.da, align 4            ; 2 uses
  %i.km = select i1 %i.kl, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.ka, 1
  br i1 %.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %.thread.i
  %i.kn = phi i32 [ %i.kk, %.thread.i ], [ %i.km, %bb.w ]
  %i.ko = icmp sgt i32 %i.ka, -1
  %i.kp = zext i1 %i.ko to i32
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.kq = phi i32 [ %i.kn, %bb.x ], [ %i.km, %bb.w ]
  %i.kr = phi i32 [ %i.kp, %bb.x ], [ %.val, %bb.w ]
  %.sroa.2.0.insert.ext.i = zext i32 %i.kr to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.kq to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ks = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0305.0, i64 %indvars.iv654
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !228
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %16, i64 %.sroa.0.0.insert.insert.i, i32 noundef 6, ptr noundef nonnull %i.kt, i64 noundef 0)
          to label %bb.z unwind label %.loopexit434

bb.z:                                             ; preds = %bb.y
  %i.ku = load ptr, ptr %i.g, align 8, !tbaa !260 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !39
  %i.kx = getelementptr inbounds nuw [208 x i8], ptr %i.kw, i64 %indvars.iv654
  invoke void @_ZNK2cv2ml11ANN_MLPImpl21calc_activ_func_derivERNS_3MatES3_RKS2_(ptr noundef nonnull align 8 dereferenceable(296) %i.ku, ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %i.kx)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.ky = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %bb.ab unwind label %bb.ai     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %indvars.iv.next655 = add nuw nsw i64 %indvars.iv654, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %indvars.iv.next655, %i.er
  br i1 %exitcond658.not, label %._crit_edge529, label %.lr.ph528, !llvm.loop !401

bb.ac:                                            ; preds = %._crit_edge524.split
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ad:                                            ; preds = %.lr.ph528
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ae:                                            ; preds = %bb.o
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %bb.p
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.q
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.pn206.pn.pn = phi { ptr, i32 } [ %i.lc, %bb.af ], [ %i.ld, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.aj

.loopexit434:                                     ; preds = %bb.y
  %lpad.loopexit436 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp435:                            ; preds = %bb.s
  %lpad.loopexit.split-lp437 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.aa, %bb.z
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  br label %.body

.body:                                            ; preds = %.loopexit434, %.loopexit.split-lp435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ai
  %.pn211 = phi { ptr, i32 } [ %i.le, %bb.ai ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit436, %.loopexit434 ], [ %lpad.loopexit.split-lp437, %.loopexit.split-lp435 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.aj

bb.aj:                                            ; preds = %.body, %bb.ah
  %.pn211.pn = phi { ptr, i32 } [ %.pn211, %.body ], [ %.pn206.pn.pn, %bb.ah ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ae
  %.pn211.pn.pn = phi { ptr, i32 } [ %.pn211.pn, %bb.aj ], [ %i.lb, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ad
  %.pn211.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn, %bb.ak ], [ %i.la, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.cg

._crit_edge529:                                   ; preds = %bb.ab, %.preheader433
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.lf = load ptr, ptr %35, align 8, !tbaa !240
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef %i.fh, i32 noundef %i.o, i32 noundef 6, ptr noundef %i.lf, i64 noundef 0)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %._crit_edge529
  %i.lg = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 32
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !39
  %i.lj = getelementptr inbounds nuw [208 x i8], ptr %i.li, i64 %i.db
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !84 ; 2 uses
  br i1 %i.fn, label %.lr.ph538, label %.preheader

.lr.ph538:                                        ; preds = %bb.am
  %i.lm = load ptr, ptr %i.dc, align 8, !tbaa !84
  %i.ln = load i64, ptr %i.dd, align 8, !tbaa !38
  %i.lo = load ptr, ptr %i.df, align 8, !tbaa !228
  %i.lp = load ptr, ptr %i.dg, align 8, !tbaa !84
  %i.lq = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.lr = load ptr, ptr %i.di, align 8, !tbaa !265 ; 2 uses
  %.not205 = icmp eq ptr %i.lr, null
  %i.ls = sext i32 %i.fe to i64
  %i.lt = zext nneg i32 %i.fh to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.lr, i64 %indvars.iv683
  br label %bb.an

.preheader:                                       ; preds = %._crit_edge534, %bb.am
  %.1.lcssa = phi double [ %.0129553, %bb.am ], [ %i.nh, %._crit_edge534 ] ; 2 uses
  br i1 %i.co, label %.lr.ph551, label %._crit_edge552

.lr.ph551:                                        ; preds = %.preheader
  %i.lu = sext i32 %i.fh to i64                   ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.lu, i64 1)
  %i.lv = add nsw i64 %smax, -1
  br label %bb.ar

bb.an:                                            ; preds = %.lr.ph538, %._crit_edge534
  %indvars.iv669 = phi i64 [ 0, %.lr.ph538 ], [ %indvars.iv.next670, %._crit_edge534 ] ; 5 uses
  %.1536 = phi double [ %.0129553, %.lr.ph538 ], [ %i.nh, %._crit_edge534 ]
  %i.lw = add nsw i64 %indvars.iv669, %i.ls
  %i.lx = mul i64 %i.ln, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lx ; 2 uses
  %i.lz = mul nsw i64 %indvars.iv669, %i.eq
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lz ; 2 uses
  %i.mb = mul i64 %i.lq, %indvars.iv669
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.mb ; 2 uses
  br i1 %.not205, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv669
  %i.md = load double, ptr %gep, align 8, !tbaa !102
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.me = phi double [ %i.md, %bb.ao ], [ %i.f, %bb.an ] ; 3 uses
  br i1 %i.dj, label %.lr.ph533, label %._crit_edge534

.lr.ph533:                                        ; preds = %bb.ap
  br i1 %i.dk, label %.lr.ph533.split.us, label %.lr.ph533.split

.lr.ph533.split.us:                               ; preds = %.lr.ph533, %.lr.ph533.split.us
  %indvars.iv664 = phi i64 [ %indvars.iv.next665, %.lr.ph533.split.us ], [ 0, %.lr.ph533 ] ; 5 uses
  %.0531.us = phi double [ %i.ms, %.lr.ph533.split.us ], [ 0.000000e+00, %.lr.ph533 ]
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %indvars.iv664
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !164
  %i.mh = fpext float %i.mg to double
  %.idx727 = shl nuw nsw i64 %indvars.iv664, 4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.idx727 ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !102
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !102
  %i.mm = call double @llvm.fmuladd.f64(double %i.mh, double %i.mj, double %i.ml)
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv664
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !102
  %i.mp = fsub double %i.mm, %i.mo                ; 3 uses
  %i.mq = fmul double %i.me, %i.mp
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv664
  store double %i.mq, ptr %i.mr, align 8, !tbaa !102
  %i.ms = call double @llvm.fmuladd.f64(double %i.mp, double %i.mp, double %.0531.us) ; 2 uses
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %exitcond668.not = icmp eq i64 %indvars.iv.next665, %wide.trip.count667
  br i1 %exitcond668.not, label %._crit_edge534, label %.lr.ph533.split.us, !llvm.loop !402

.lr.ph533.split:                                  ; preds = %.lr.ph533, %.lr.ph533.split
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %.lr.ph533.split ], [ 0, %.lr.ph533 ] ; 5 uses
  %.0531 = phi double [ %i.nf, %.lr.ph533.split ], [ 0.000000e+00, %.lr.ph533 ]
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv659
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !102
  %.idx726 = shl nuw nsw i64 %indvars.iv659, 4
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ll, i64 %.idx726 ; 2 uses
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !102
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.my = load double, ptr %i.mx, align 8, !tbaa !102
  %i.mz = call double @llvm.fmuladd.f64(double %i.mu, double %i.mw, double %i.my)
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv659
  %i.nb = load double, ptr %i.na, align 8, !tbaa !102
  %i.nc = fsub double %i.mz, %i.nb                ; 3 uses
  %i.nd = fmul double %i.me, %i.nc
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv659
  store double %i.nd, ptr %i.ne, align 8, !tbaa !102
  %i.nf = call double @llvm.fmuladd.f64(double %i.nc, double %i.nc, double %.0531) ; 2 uses
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count662
  br i1 %exitcond663.not, label %._crit_edge534, label %.lr.ph533.split, !llvm.loop !402

bb.aq:                                            ; preds = %._crit_edge529
  %i.ng = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

._crit_edge534:                                   ; preds = %.lr.ph533.split, %.lr.ph533.split.us, %bb.ap
  %.0.lcssa = phi double [ 0.000000e+00, %bb.ap ], [ %i.ms, %.lr.ph533.split.us ], [ %i.nf, %.lr.ph533.split ]
  %i.nh = call double @llvm.fmuladd.f64(double %i.me, double %.0.lcssa, double %.1536) ; 2 uses
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1 ; 2 uses
  %i.ni = icmp samesign ult i64 %indvars.iv.next670, %i.lt
  br i1 %i.ni, label %bb.an, label %.preheader, !llvm.loop !403

bb.ar:                                            ; preds = %.lr.ph551, %bb.bz
  %indvars.iv680 = phi i64 [ %i.er, %.lr.ph551 ], [ %indvars.iv.next681, %bb.bz ] ; 4 uses
  %indvars.iv.next681 = add nsw i64 %indvars.iv680, -1 ; 11 uses
  %i.nj = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = add nsw i64 %indvars.iv680, -2          ; 2 uses
  %i.nm = load ptr, ptr %i.nk, align 8, !tbaa !76 ; 2 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.nl
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !88 ; 5 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv.next681
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !88 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0305.0, i64 %indvars.iv.next681
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !228
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %i.fh, i32 noundef %i.nq, i32 noundef 6, ptr noundef nonnull %i.ns, i64 noundef 0)
          to label %bb.as unwind label %bb.bd

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store i32 0, ptr %i.dl, align 8, !tbaa !73
  store i32 0, ptr %i.dm, align 4, !tbaa !74
  store i32 16842752, ptr %19, align 8, !tbaa !66
  store ptr %17, ptr %i.dn, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store i32 0, ptr %i.do, align 8, !tbaa !73
  store i32 0, ptr %i.dp, align 4, !tbaa !74
  store i32 16842752, ptr %20, align 8, !tbaa !66
  store ptr %18, ptr %i.dq, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store i64 0, ptr %i.ds, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !66
  store ptr %17, ptr %i.dr, align 8, !tbaa !69
  invoke void @_ZN2cv8multiplyERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.at unwind label %bb.be

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.nt = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 248 ; 3 uses
  %i.nv = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.nu) #19 ; 2 uses
  %.not.i.i246 = icmp eq i32 %i.nv, 0
  br i1 %.not.i.i246, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit248, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.nv) #20
          to label %.noexc247 unwind label %bb.bf

.noexc247:                                        ; preds = %bb.au
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit248: ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.nw = load ptr, ptr %i.dt, align 8, !tbaa !267 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !42
  %i.nz = load ptr, ptr %i.nw, align 8, !tbaa !39 ; 2 uses
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = ptrtoint ptr %i.nz to i64
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = sdiv exact i64 %i.oc, 208               ; 2 uses
  %.not.i.i249 = icmp ugt i64 %i.od, %indvars.iv.next681
  br i1 %.not.i.i249, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit248
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.71, i64 noundef %indvars.iv.next681, i64 noundef %i.od) #20
          to label %.noexc250 unwind label %.loopexit.split-lp

.noexc250:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit248
  %i.oe = getelementptr inbounds nuw [208 x i8], ptr %i.nz, i64 %indvars.iv.next681
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !404
  store i32 0, ptr %4, align 4, !tbaa !161, !noalias !404
  store i32 %i.no, ptr %i.du, align 4, !tbaa !163, !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !404
  store i64 9223372034707292160, ptr %5, align 8, !noalias !404
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %i.oe, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.ax unwind label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !404
end_hunk_2
begin_hunk_3_@_ZNK2cv2ml11ANN_MLPImpl9RPropLoopclERKNS_5RangeE:bb.a
  %.not.i.i253 = icmp ugt i64 %i.op, %indvars.iv.next681
  br i1 %.not.i.i253, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.71, i64 noundef %indvars.iv.next681, i64 noundef %i.op) #20
          to label %.noexc254 unwind label %bb.bk

.noexc254:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.oq = getelementptr inbounds nuw [208 x i8], ptr %i.ol, i64 %indvars.iv.next681 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !84 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 128
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !38
  %i.ov = sext i32 %i.no to i64
  %i.ow = mul i64 %i.ou, %i.ov                    ; 2 uses
  %i.ox = getelementptr i8, ptr %i.os, i64 %i.ow  ; 7 uses
  br i1 %i.fn, label %.lr.ph546, label %._crit_edge547.split

.lr.ph546:                                        ; preds = %bb.bc
  %i.oy = load ptr, ptr %i.dg, align 8, !tbaa !84 ; 3 uses
  %i.oz = load i64, ptr %i.dh, align 8, !tbaa !38 ; 3 uses
  %i.pa = icmp sgt i32 %i.nq, 0
  br i1 %i.pa, label %.lr.ph542.preheader, label %._crit_edge547.split

.lr.ph542.preheader:                              ; preds = %.lr.ph546
  %wide.trip.count675 = zext nneg i32 %i.nq to i64 ; 6 uses
  %i.pb = shl nuw nsw i64 %wide.trip.count675, 3  ; 2 uses
  %i.pc = getelementptr i8, ptr %i.os, i64 %i.ow
  %scevgep = getelementptr i8, ptr %i.pc, i64 %i.pb
  %i.pd = mul i64 %i.lv, %i.oz
  %i.pe = getelementptr i8, ptr %i.oy, i64 %i.pd
  %scevgep882 = getelementptr i8, ptr %i.pe, i64 %i.pb
  %min.iters.check = icmp ult i32 %i.nq, 4
  %bound0 = icmp ult ptr %i.ox, %scevgep882
  %bound1 = icmp ult ptr %i.oy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.oz, 0
  %i.pf = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count675, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count675
  %xtraiter1020 = and i64 %wide.trip.count675, 3  ; 2 uses
  %lcmp.mod1021.not = icmp eq i64 %xtraiter1020, 0
  br label %.lr.ph542

.lr.ph542:                                        ; preds = %.lr.ph542.preheader, %._crit_edge543
  %indvars.iv677 = phi i64 [ 0, %.lr.ph542.preheader ], [ %indvars.iv.next678, %._crit_edge543 ] ; 2 uses
  %i.pg = mul i64 %i.oz, %indvars.iv677
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pg ; 6 uses
  %brmerge1098 = select i1 %min.iters.check, i1 true, i1 %i.pf
  br i1 %brmerge1098, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph542, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph542 ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %index ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %wide.load = load <2 x double>, ptr %i.pi, align 8, !tbaa !102, !alias.scope !407
  %wide.load883 = load <2 x double>, ptr %i.pj, align 8, !tbaa !102, !alias.scope !407
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %index ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 2 uses
  %wide.load884 = load <2 x double>, ptr %i.pk, align 8, !tbaa !102, !alias.scope !410, !noalias !407
  %wide.load885 = load <2 x double>, ptr %i.pl, align 8, !tbaa !102, !alias.scope !410, !noalias !407
  %i.pm = fadd <2 x double> %wide.load, %wide.load884
  %i.pn = fadd <2 x double> %wide.load883, %wide.load885
  store <2 x double> %i.pm, ptr %i.pk, align 8, !tbaa !102, !alias.scope !410, !noalias !407
  store <2 x double> %i.pn, ptr %i.pl, align 8, !tbaa !102, !alias.scope !410, !noalias !407
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.po = icmp eq i64 %index.next, %n.vec
  br i1 %i.po, label %middle.block, label %vector.body, !llvm.loop !412

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge543, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph542, %middle.block
  %indvars.iv672.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph542 ] ; 3 uses
  br i1 %lcmp.mod1021.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv672.prol = phi i64 [ %indvars.iv.next673.prol, %scalar.ph.prol ], [ %indvars.iv672.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv672.prol
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !102
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv672.prol ; 2 uses
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !102
  %i.pt = fadd double %i.pq, %i.ps
  store double %i.pt, ptr %i.pr, align 8, !tbaa !102
  %indvars.iv.next673.prol = add nuw nsw i64 %indvars.iv672.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1020
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !413

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv672.unr = phi i64 [ %indvars.iv672.ph, %scalar.ph.preheader ], [ %indvars.iv.next673.prol, %scalar.ph.prol ]
  %i.pu = sub nsw i64 %indvars.iv672.ph, %wide.trip.count675
  %i.pv = icmp ugt i64 %i.pu, -4
  br i1 %i.pv, label %._crit_edge543, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv672 = phi i64 [ %indvars.iv.next673.3, %scalar.ph ], [ %indvars.iv672.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv672
  %i.px = load double, ptr %i.pw, align 8, !tbaa !102
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv672 ; 2 uses
  %i.pz = load double, ptr %i.py, align 8, !tbaa !102
  %i.qa = fadd double %i.px, %i.pz
  store double %i.qa, ptr %i.py, align 8, !tbaa !102
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next673
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !102
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv.next673 ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !102
  %i.qf = fadd double %i.qc, %i.qe
  store double %i.qf, ptr %i.qd, align 8, !tbaa !102
  %indvars.iv.next673.1 = add nuw nsw i64 %indvars.iv672, 2 ; 2 uses
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next673.1
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !102
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv.next673.1 ; 2 uses
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !102
  %i.qk = fadd double %i.qh, %i.qj
  store double %i.qk, ptr %i.qi, align 8, !tbaa !102
  %indvars.iv.next673.2 = add nuw nsw i64 %indvars.iv672, 3 ; 2 uses
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next673.2
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !102
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %indvars.iv.next673.2 ; 2 uses
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !102
  %i.qp = fadd double %i.qm, %i.qo
  store double %i.qp, ptr %i.qn, align 8, !tbaa !102
  %indvars.iv.next673.3 = add nuw nsw i64 %indvars.iv672, 4 ; 2 uses
  %exitcond676.not.3 = icmp eq i64 %indvars.iv.next673.3, %wide.trip.count675
  br i1 %exitcond676.not.3, label %._crit_edge543, label %scalar.ph, !llvm.loop !414

bb.bd:                                            ; preds = %bb.ar
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.be:                                            ; preds = %bb.as
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.cd

bb.bf:                                            ; preds = %bb.au
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit:                                        ; preds = %bb.aw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bg:                                            ; preds = %bb.ax
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.ay
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #19
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn182 = phi { ptr, i32 } [ %i.qu, %bb.bh ], [ %i.qt, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.bq

bb.bj:                                            ; preds = %bb.az
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.bq

bb.bk:                                            ; preds = %bb.bb
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

._crit_edge543:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %i.qx = icmp slt i64 %indvars.iv.next678, %i.lu
  br i1 %i.qx, label %.lr.ph542, label %._crit_edge547.split, !llvm.loop !415

._crit_edge547.split:                             ; preds = %._crit_edge543, %.lr.ph546, %bb.bc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.qy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.nu) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.qz = and i64 %indvars.iv.next681, 1
  %36 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.qz
  %i.ra = load ptr, ptr %36, align 8, !tbaa !240
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %28, i32 noundef %i.fh, i32 noundef %i.no, i32 noundef 6, ptr noundef %i.ra, i64 noundef 0)
          to label %bb.bl unwind label %bb.bs

bb.bl:                                            ; preds = %._crit_edge547.split
  %.not = icmp eq i64 %indvars.iv680, 2
  br i1 %.not, label %bb.by, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  %i.rb = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 32
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !39
  %i.re = getelementptr inbounds nuw [208 x i8], ptr %i.rd, i64 %indvars.iv.next681
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !416
  store i32 0, ptr %2, align 4, !tbaa !161, !noalias !416
  store i32 %i.no, ptr %i.eg, align 4, !tbaa !163, !noalias !416
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !416
  store i64 9223372034707292160, ptr %3, align 8, !noalias !416
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %29, ptr noundef nonnull align 8 dereferenceable(208) %i.re, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.bn unwind label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !416
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !416
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  store i32 0, ptr %i.eh, align 8, !tbaa !73
  store i32 0, ptr %i.ei, align 4, !tbaa !74
  store i32 16842752, ptr %30, align 8, !tbaa !66
  store ptr %17, ptr %i.ej, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store i32 0, ptr %i.ek, align 8, !tbaa !73
  store i32 0, ptr %i.el, align 4, !tbaa !74
  store i32 16842752, ptr %31, align 8, !tbaa !66
  store ptr %29, ptr %i.em, align 8, !tbaa !69
  %i.rf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.bo unwind label %bb.bu

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  store i64 0, ptr %i.eo, align 8
  store i32 33619968, ptr %32, align 8, !tbaa !66
  store ptr %28, ptr %i.en, align 8, !tbaa !69
  invoke void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(24) %31, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %i.rf, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(24) %32, i32 noundef 2)
          to label %bb.bp unwind label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.by

bb.bq:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.pn189 = phi { ptr, i32 } [ %i.qw, %bb.bk ], [ %i.qv, %bb.bj ], [ %.pn182, %bb.bi ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #19
  br label %bb.br

bb.br:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bq
  %.pn189.pn = phi { ptr, i32 } [ %.pn189, %bb.bq ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.rg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.nu) #19 ; 0 uses
  br label %bb.cd

bb.bs:                                            ; preds = %._crit_edge547.split
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bt:                                            ; preds = %bb.bm
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bn
  %i.rj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bo
  %i.rk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.pn193.pn.pn = phi { ptr, i32 } [ %i.rj, %bb.bu ], [ %i.rk, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %29) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.pn193.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn, %bb.bw ], [ %i.ri, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  br label %bb.cb

bb.by:                                            ; preds = %bb.bp, %bb.bl
  %i.rl = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %28)
          to label %bb.bz unwind label %bb.ca     ; 0 uses

bb.bz:                                            ; preds = %bb.by
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.rm = icmp sgt i64 %indvars.iv680, 2
  br i1 %i.rm, label %bb.ar, label %._crit_edge552, !llvm.loop !419

bb.ca:                                            ; preds = %bb.by
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %.pn199 = phi { ptr, i32 } [ %i.rn, %bb.ca ], [ %.pn193.pn.pn.pn.pn, %bb.bx ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %28) #19
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bs
  %.pn199.pn = phi { ptr, i32 } [ %.pn199, %bb.cb ], [ %i.rh, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bf, %bb.br, %bb.cc, %bb.be
  %.pn199.pn.pn = phi { ptr, i32 } [ %.pn199.pn, %bb.cc ], [ %i.qr, %bb.be ], [ %.pn189.pn, %bb.br ], [ %i.qs, %bb.bf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #19
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bd
  %.pn199.pn.pn.pn = phi { ptr, i32 } [ %.pn199.pn.pn, %bb.cd ], [ %i.qq, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #19
  br label %bb.cf

._crit_edge552:                                   ; preds = %bb.bz, %.preheader
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ro = load i32, ptr %i.ch, align 4, !tbaa !163
  %i.rp = sext i32 %i.ro to i64
  %i.rq = icmp slt i64 %indvars.iv.next684, %i.rp
  br i1 %i.rq, label %bb.n, label %._crit_edge557, !llvm.loop !420

bb.cf:                                            ; preds = %bb.ce, %bb.aq
  %.pn199.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn199.pn.pn.pn, %bb.ce ], [ %i.ng, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.al
  %.pn211.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn, %bb.al ], [ %.pn199.pn.pn.pn.pn, %bb.cf ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ac
  %.pn211.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn211.pn.pn.pn.pn, %bb.cg ], [ %i.kz, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.co

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %._crit_edge557
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !268 ; 2 uses
  %i.rt = load double, ptr %i.rs, align 8, !tbaa !102
  %i.ru = fadd double %.0129.lcssa, %i.rt
  store double %i.ru, ptr %i.rs, align 8, !tbaa !102
  %i.rv = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.fa) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.i.i = icmp eq ptr %.sroa.0299.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  %i.rw = ptrtoint ptr %.sroa.0299.0 to i64
  %i.rx = sub i64 %.sroa.11.0, %i.rw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.0, i64 noundef %i.rx) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %bb.ci
  %.not4.i.i.i = icmp eq ptr %.sroa.0305.0, %.0.lcssa.i.i.i.i.i229
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.se, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %.sroa.0305.0, %_ZNSt6vectorIdSaIdEED2Ev.exit ] ; 3 uses
  %i.ry = load ptr, ptr %.05.i.i.i, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i
  %i.rz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !253
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = ptrtoint ptr %i.ry to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.sd) #18
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.cj, %.lr.ph.i.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i258 = icmp eq ptr %i.se, %.0.lcssa.i.i.i.i.i229
  br i1 %.not.i.i.i258, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !254

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, %_ZNSt6vectorIdSaIdEED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %.sroa.0305.0, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.sf = ptrtoint ptr %.sroa.0305.0 to i64
  %i.sg = sub i64 %.sink.i228, %i.sf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0305.0, i64 noundef %i.sg) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ck
  %.not4.i.i.i259 = icmp eq ptr %.sroa.0313.0361, %.0.lcssa.i.i.i.i.i429
  br i1 %.not4.i.i.i259, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i267, label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i263
  %.05.i.i.i261 = phi ptr [ %i.sn, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i263 ], [ %.sroa.0313.0361, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.sh = load ptr, ptr %.05.i.i.i261, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i262 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i.i.i.i.i262, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i263, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i260
  %i.si = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !253
  %i.sk = ptrtoint ptr %i.sj to i64
  %i.sl = ptrtoint ptr %i.sh to i64
  %i.sm = sub i64 %i.sk, %i.sl
  call void @_ZdlPvm(ptr noundef nonnull %i.sh, i64 noundef %i.sm) #18
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i263

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i263: ; preds = %bb.cl, %.lr.ph.i.i.i260
  %i.sn = getelementptr inbounds nuw i8, ptr %.05.i.i.i261, i64 24 ; 2 uses
  %.not.i.i.i264 = icmp eq ptr %i.sn, %.0.lcssa.i.i.i.i.i429
  br i1 %.not.i.i.i264, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i267, label %.lr.ph.i.i.i260, !llvm.loop !254

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i267: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i263, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit
  %.not.i.i1.i268 = icmp eq ptr %.sroa.0313.0361, null
  br i1 %.not.i.i1.i268, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit269, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i267
  %i.so = ptrtoint ptr %.sink.i395 to i64
  %i.sp = ptrtoint ptr %.sroa.0313.0361 to i64
  %i.sq = sub i64 %i.so, %i.sp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0313.0361, i64 noundef %i.sq) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit269

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit269:      ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i267, %bb.cm
  ret void

bb.cn:                                            ; preds = %bb.m
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ch, %bb.l
  %.pn218 = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %.pn211.pn.pn.pn.pn.pn, %bb.ch ], [ %i.sr, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not.i.i.i270 = icmp eq ptr %.sroa.0299.0, null
  br i1 %.not.i.i.i270, label %_ZNSt6vectorIdSaIdEED2Ev.exit271, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ss = ptrtoint ptr %.sroa.0299.0 to i64
  %i.st = sub i64 %.sroa.11.0, %i.ss
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.0, i64 noundef %i.st) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit271

_ZNSt6vectorIdSaIdEED2Ev.exit271:                 ; preds = %bb.cp, %bb.co, %bb.k
  %.pn218.pn = phi { ptr, i32 } [ %i.ce, %bb.k ], [ %.pn218, %bb.co ], [ %.pn218, %bb.cp ] ; 2 uses
  %.not4.i.i.i272 = icmp eq ptr %.sroa.0305.0, %.0.lcssa.i.i.i.i.i229
  br i1 %.not4.i.i.i272, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280, label %.lr.ph.i.i.i273

.lr.ph.i.i.i273:                                  ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit271, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i276
  %.05.i.i.i274 = phi ptr [ %i.ta, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i276 ], [ %.sroa.0305.0, %_ZNSt6vectorIdSaIdEED2Ev.exit271 ] ; 3 uses
  %i.su = load ptr, ptr %.05.i.i.i274, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i275 = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i.i.i.i.i275, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i276, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.i.i.i273
  %i.sv = getelementptr inbounds nuw i8, ptr %.05.i.i.i274, i64 16
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !253
  %i.sx = ptrtoint ptr %i.sw to i64
  %i.sy = ptrtoint ptr %i.su to i64
  %i.sz = sub i64 %i.sx, %i.sy
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef %i.sz) #18
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i276

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i276: ; preds = %bb.cq, %.lr.ph.i.i.i273
  %i.ta = getelementptr inbounds nuw i8, ptr %.05.i.i.i274, i64 24 ; 2 uses
  %.not.i.i.i277 = icmp eq ptr %i.ta, %.0.lcssa.i.i.i.i.i229
  br i1 %.not.i.i.i277, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280, label %.lr.ph.i.i.i273, !llvm.loop !254

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i276, %_ZNSt6vectorIdSaIdEED2Ev.exit271
  %.not.i.i1.i281 = icmp eq ptr %.sroa.0305.0, null
  br i1 %.not.i.i1.i281, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit282, label %bb.cr

bb.cr:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280
  %i.tb = ptrtoint ptr %.sroa.0305.0 to i64
  %i.tc = sub i64 %.sink.i228, %i.tb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0305.0, i64 noundef %i.tc) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit282

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit282:      ; preds = %bb.cr, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280, %bb.j
  %.0.lcssa.i.i.i.i.i397 = phi ptr [ %scevgep.i.i.i.i.i, %bb.j ], [ %.0.lcssa.i.i.i.i.i429, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280 ], [ %.0.lcssa.i.i.i.i.i429, %bb.cr ] ; 2 uses
  %.sink.i363 = phi ptr [ %i.ad, %bb.j ], [ %.sink.i395, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280 ], [ %.sink.i395, %bb.cr ]
  %.sroa.0313.0329 = phi ptr [ %i.ac, %bb.j ], [ %.sroa.0313.0361, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280 ], [ %.sroa.0313.0361, %bb.cr ] ; 5 uses
  %.pn218.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.j ], [ %.pn218.pn, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i280 ], [ %.pn218.pn, %bb.cr ]
  %.not4.i.i.i283 = icmp eq ptr %.sroa.0313.0329, %.0.lcssa.i.i.i.i.i397
  br i1 %.not4.i.i.i283, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i291, label %.lr.ph.i.i.i284

.lr.ph.i.i.i284:                                  ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit282, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i287
  %.05.i.i.i285 = phi ptr [ %i.tj, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i287 ], [ %.sroa.0313.0329, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit282 ] ; 3 uses
  %i.td = load ptr, ptr %.05.i.i.i285, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i286 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i.i.i.i286, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i287, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i284
  %i.te = getelementptr inbounds nuw i8, ptr %.05.i.i.i285, i64 16
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !253
  %i.tg = ptrtoint ptr %i.tf to i64
  %i.th = ptrtoint ptr %i.td to i64
  %i.ti = sub i64 %i.tg, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.ti) #18
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i287

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i287: ; preds = %bb.cs, %.lr.ph.i.i.i284
  %i.tj = getelementptr inbounds nuw i8, ptr %.05.i.i.i285, i64 24 ; 2 uses
  %.not.i.i.i288 = icmp eq ptr %i.tj, %.0.lcssa.i.i.i.i.i397
  br i1 %.not.i.i.i288, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i291, label %.lr.ph.i.i.i284, !llvm.loop !254

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i291: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i287, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit282
  %.not.i.i1.i292 = icmp eq ptr %.sroa.0313.0329, null
  br i1 %.not.i.i1.i292, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit293, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i291
  %i.tk = ptrtoint ptr %.sink.i363 to i64
  %i.tl = ptrtoint ptr %.sroa.0313.0329 to i64
  %i.tm = sub i64 %i.tk, %i.tl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0313.0329, i64 noundef %i.tm) #18
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit293

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit293:      ; preds = %bb.ct, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i291
  resume { ptr, i32 } %.pn218.pn.pn
}

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv2ml24simulatedAnnealingSolverINS0_25SimulatedAnnealingANN_MLPEEEiRT_dddmPdRNS_3RNGE(ptr noundef nonnull align 8 dereferenceable(84) %0, double noundef %1, double noundef %2, double noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = fcmp ogt double %2, 0.000000e+00
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv2ml24simulatedAnnealingSolverINS0_25SimulatedAnnealingANN_MLPEEEiRT_dddmPdRNS_3RNGE, ptr noundef nonnull @.str.74, i32 noundef 19) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %7, align 8, !tbaa !32     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !31
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ai

bb.g:                                             ; preds = %bb.a
  %i.i = fcmp ogt double %1, %2
  br i1 %i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv2ml24simulatedAnnealingSolverINS0_25SimulatedAnnealingANN_MLPEEEiRT_dddmPdRNS_3RNGE, ptr noundef nonnull @.str.74, i32 noundef 20) #20
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.l:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %9, align 8, !tbaa !32     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.l
  %i.o = load i64, ptr %i.m, align 8, !tbaa !31
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.k
  %.pn56 = phi { ptr, i32 } [ %i.j, %bb.k ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.k, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ai

bb.m:                                             ; preds = %bb.g
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.n, label %bb.s
end_hunk_3
