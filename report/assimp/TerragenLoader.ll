inline.NumInlined: 203
inline.NumDeleted: 114
begin_hunk_0_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
.invoke357:                                       ; preds = %bb.bq, %bb.bx, %bb.bu
  %i.fk = phi ptr [ %i.fo, %bb.bx ], [ %i.fj, %bb.bu ], [ %i.eu, %bb.bq ]
  invoke void @__cxa_throw(ptr nonnull %i.fk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %.cont358 unwind label %.loopexit.split-lp

.cont358:                                         ; preds = %.invoke357
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fj) #18
  br label %.body

bb.bw:                                            ; preds = %bb.bs
  %i.fm = icmp ult i32 %.0136308, 2
  %i.fn = icmp ult i32 %.0139307, 2
  %or.cond = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.fo = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull @.str.21)
          to label %.invoke357 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fo) #18
  br label %.body

bb.bz:                                            ; preds = %bb.bw
  store i32 1, ptr %i.bt, align 8
  %i.fq = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #22
          to label %bb.ca unwind label %.loopexit280 ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.fq, ptr %i.bu, align 8
  %i.fr = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #22
          to label %bb.cb unwind label %bb.cg     ; 10 uses

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 2 uses
  store i32 0, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 224
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 1272
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 1312
  store ptr null, ptr %i.fx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.fu, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.fv, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fw, i8 0, i64 36, i1 false)
  store ptr %i.fr, ptr %i.fq, align 8
  %i.fy = add nsw i32 %.0136308, -1               ; 2 uses
  %i.fz = add nsw i32 %.0139307, -1               ; 2 uses
  %i.ga = mul nuw i32 %i.fy, %i.fz                ; 3 uses
  store i32 %i.ga, ptr %i.ft, align 8
  %i.gb = zext i32 %i.ga to i64                   ; 5 uses
  %i.gc = shl nuw nsw i64 %i.gb, 4
  %i.gd = or disjoint i64 %i.gc, 8
  %i.ge = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.gd) #22
          to label %bb.cc unwind label %bb.ch     ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  store i64 %i.gb, ptr %i.ge, align 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 5 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.gb
  %i.gh = add nuw nsw i64 %i.gb, 1152921504606846975
  %i.gi = and i64 %i.gh, 1152921504606846975
  %xtraiter = and i64 %i.gb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.cc, %.prol.preheader
  %i.gj = phi ptr [ %i.gl, %.prol.preheader ], [ %i.gf, %bb.cc ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.cc ]
  store i32 0, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr null, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !4

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.cc
  %.unr = phi ptr [ %i.gf, %bb.cc ], [ %i.gl, %.prol.preheader ]
  %i.gm = icmp samesign ult i64 %i.gi, 7
  br i1 %i.gm, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.gn = phi ptr [ %i.hd, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.gn, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr null, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i32 0, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store ptr null, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store i32 0, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  store ptr null, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store i32 0, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  store ptr null, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  store i32 0, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  store ptr null, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  store i32 0, ptr %i.gx, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  store ptr null, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  store i32 0, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  store ptr null, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  store i32 0, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 120
  store ptr null, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 128 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gg
  br i1 %i.he, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fr, i64 208
  store ptr %i.gf, ptr %i.hf, align 8
  %i.hg = shl i32 %i.ga, 2                        ; 3 uses
  store i32 %i.hg, ptr %i.fs, align 4
  %i.hh = zext i32 %i.hg to i64
  %i.hi = mul nuw nsw i64 %i.hh, 12               ; 4 uses
  %i.hj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hi) #22
          to label %bb.cd unwind label %bb.ci     ; 3 uses

bb.cd:                                            ; preds = %.unr-lcssa
  %i.hk = icmp eq i32 %i.hg, 0                    ; 2 uses
  br i1 %i.hk, label %.loopexit279, label %.loopexit279.loopexit

.loopexit279.loopexit:                            ; preds = %bb.cd
  %i.hl = add nsw i64 %i.hi, -12                  ; 2 uses
  %i.hm = urem i64 %i.hl, 12
  %i.hn = sub nuw nsw i64 %i.hl, %i.hm
  %i.ho = add nsw i64 %i.hn, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hj, i8 0, i64 %i.ho, i1 false)
  br label %.loopexit279

.loopexit279:                                     ; preds = %.loopexit279.loopexit, %bb.cd
  store ptr %i.hj, ptr %i.fu, align 8
  %i.hp = load i8, ptr %i.bv, align 8, !range !6, !noundef !7
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.ce, label %.preheader.us.preheader

bb.ce:                                            ; preds = %.loopexit279
  %i.hr = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hi) #22
          to label %bb.cf unwind label %bb.cj     ; 3 uses

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.hk, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.cf
  %i.hs = add nsw i64 %i.hi, -12                  ; 2 uses
  %i.ht = urem i64 %i.hs, 12
  %i.hu = sub nuw nsw i64 %i.hs, %i.ht
  %i.hv = add nsw i64 %i.hu, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hr, i8 0, i64 %i.hv, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cf
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  store ptr %i.hr, ptr %i.hw, align 8
  %i.hx = uitofp nneg i32 %.0139307 to float
  %i.hy = fdiv float 1.000000e+00, %i.hx
  %i.hz = uitofp nneg i32 %.0136308 to float
  %i.ia = fdiv float 1.000000e+00, %i.hz
  br label %.preheader.us.preheader

bb.cg:                                            ; preds = %bb.ca
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ch:                                            ; preds = %bb.cb
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ci:                                            ; preds = %.unr-lcssa
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cj:                                            ; preds = %bb.ce
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader.us.preheader:                          ; preds = %.loopexit, %.loopexit279
  %.0150 = phi ptr [ %i.hr, %.loopexit ], [ null, %.loopexit279 ]
  %.0149 = phi float [ %i.hy, %.loopexit ], [ 0.000000e+00, %.loopexit279 ] ; 2 uses
  %.0148 = phi float [ %i.ia, %.loopexit ], [ 0.000000e+00, %.loopexit279 ] ; 2 uses
  %i.if = zext nneg i32 %.0136308 to i64          ; 2 uses
  %wide.trip.count322 = zext nneg i32 %i.fz to i64
  %wide.trip.count = zext nneg i32 %i.fy to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv319 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next320, %._crit_edge.us ] ; 3 uses
  %.0143304.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.km, %._crit_edge.us ]
  %.1151302.us = phi ptr [ %.0150, %.preheader.us.preheader ], [ %.3153.us, %._crit_edge.us ]
  %.0154301.us = phi ptr [ %i.hj, %.preheader.us.preheader ], [ %i.jp, %._crit_edge.us ]
  %.0156300.us = phi ptr [ %i.gf, %.preheader.us.preheader ], [ %i.kn, %._crit_edge.us ]
  %i.ig = trunc nuw nsw i64 %indvars.iv319 to i32
  %i.ih = uitofp nneg i32 %i.ig to float          ; 4 uses
  %i.ii = mul nuw i64 %indvars.iv319, %i.if
  %i.ij = fadd float %i.ih, 1.000000e+00          ; 2 uses
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 4 uses
  %i.ik = mul nuw i64 %indvars.iv.next320, %i.if
  %i.il = fmul float %.0149, %i.ih                ; 2 uses
  %i.im = trunc nuw nsw i64 %indvars.iv.next320 to i32
  %i.in = uitofp nneg i32 %i.im to float
  %i.io = fmul float %.0149, %i.in                ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %.preheader.us, %bb.cn
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.cn ] ; 5 uses
  %.1144295.us = phi i32 [ %.0143304.us, %.preheader.us ], [ %i.km, %bb.cn ] ; 5 uses
  %.2152294.us = phi ptr [ %.1151302.us, %.preheader.us ], [ %.3153.us, %bb.cn ] ; 14 uses
  %.1155293.us = phi ptr [ %.0154301.us, %.preheader.us ], [ %i.jp, %bb.cn ] ; 13 uses
  %.1157292.us = phi ptr [ %.0156300.us, %.preheader.us ], [ %i.kn, %bb.cn ] ; 3 uses
  %i.ip = trunc nuw nsw i64 %indvars.iv to i32
  %i.iq = uitofp nneg i32 %i.ip to float          ; 4 uses
  %i.ir = add nuw i64 %indvars.iv, %i.ii          ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ir
  %i.it = load i16, ptr %i.is, align 2
  %i.iu = sitofp i16 %i.it to float
  %i.iv = call float @llvm.fmuladd.f32(float %i.iu, float %.0158, float %i.ez)
  %i.iw = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 12
  store float %i.iq, ptr %.1155293.us, align 4
  %.sroa.4271.0..1155.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 4
  store float %i.ih, ptr %.sroa.4271.0..1155.sroa_idx.us, align 4
  %.sroa.5272.0..1155.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 8
  store float %i.iv, ptr %.sroa.5272.0..1155.sroa_idx.us, align 4
  %i.ix = add nuw i64 %indvars.iv, %i.ik          ; 2 uses
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2
  %i.ja = sitofp i16 %i.iz to float
  %i.jb = call float @llvm.fmuladd.f32(float %i.ja, float %.0158, float %i.ez)
  %i.jc = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 24
  store float %i.iq, ptr %i.iw, align 4
  %.sroa.4268.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 16
  store float %i.ij, ptr %.sroa.4268.0..sroa_idx.us, align 4
  %.sroa.5269.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 20
  store float %i.jb, ptr %.sroa.5269.0..sroa_idx.us, align 4
  %i.jd = fadd float %i.iq, 1.000000e+00          ; 2 uses
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ix
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jg = load i16, ptr %i.jf, align 2
  %i.jh = sitofp i16 %i.jg to float
  %i.ji = call float @llvm.fmuladd.f32(float %i.jh, float %.0158, float %i.ez)
  %i.jj = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 36
  store float %i.jd, ptr %i.jc, align 4
  %.sroa.4265.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 28
  store float %i.ij, ptr %.sroa.4265.0..sroa_idx.us, align 4
  %.sroa.5266.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 32
  store float %i.ji, ptr %.sroa.5266.0..sroa_idx.us, align 4
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.ir
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  %i.jm = load i16, ptr %i.jl, align 2
  %i.jn = sitofp i16 %i.jm to float
  %i.jo = call float @llvm.fmuladd.f32(float %i.jn, float %.0158, float %i.ez)
  %i.jp = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 48 ; 2 uses
  store float %i.jd, ptr %i.jj, align 4
  %.sroa.4262.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 40
  store float %i.ih, ptr %.sroa.4262.0..sroa_idx.us, align 4
  %.sroa.5263.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.1155293.us, i64 44
  store float %i.jo, ptr %.sroa.5263.0..sroa_idx.us, align 4
  %i.jq = load i8, ptr %i.bv, align 8, !range !6, !noundef !7
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.js = fmul float %.0148, %i.iq                ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 12
  store float %i.js, ptr %.2152294.us, align 4
  %.sroa.4259.0..2152.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 4
  store float %i.il, ptr %.sroa.4259.0..2152.sroa_idx.us, align 4
  %.sroa.5260.0..2152.sroa_idx.us = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 8
  store float 0.000000e+00, ptr %.sroa.5260.0..2152.sroa_idx.us, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 24
  store float %i.js, ptr %i.jt, align 4
  %.sroa.4256.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 16
  store float %i.io, ptr %.sroa.4256.0..sroa_idx.us, align 4
  %.sroa.5257.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 20
  store float 0.000000e+00, ptr %.sroa.5257.0..sroa_idx.us, align 4
  %i.jv = trunc i64 %indvars.iv to i32
  %i.jw = add i32 %i.jv, 1
  %i.jx = uitofp nneg i32 %i.jw to float
  %i.jy = fmul float %.0148, %i.jx                ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 36
  store float %i.jy, ptr %i.ju, align 4
  %.sroa.4253.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 28
  store float %i.io, ptr %.sroa.4253.0..sroa_idx.us, align 4
  %.sroa.5254.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 32
  store float 0.000000e+00, ptr %.sroa.5254.0..sroa_idx.us, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 48
  store float %i.jy, ptr %i.jz, align 4
  %.sroa.4.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 40
  store float %i.il, ptr %.sroa.4.0..sroa_idx.us, align 4
  %.sroa.5.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.2152294.us, i64 44
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.us, align 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.3153.us = phi ptr [ %i.ka, %bb.cl ], [ %.2152294.us, %bb.ck ] ; 2 uses
  store i32 4, ptr %.1157292.us, align 8
  %i.kb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #22
          to label %bb.cn unwind label %.split.us ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  %i.kc = getelementptr inbounds nuw i8, ptr %.1157292.us, i64 8 ; 4 uses
  store ptr %i.kb, ptr %i.kc, align 8
  store i32 %.1144295.us, ptr %i.kb, align 4
  %i.kd = add i32 %.1144295.us, 1
  %i.ke = load ptr, ptr %i.kc, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store i32 %i.kd, ptr %i.kf, align 4
  %i.kg = add i32 %.1144295.us, 2
  %i.kh = load ptr, ptr %i.kc, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i32 %i.kg, ptr %i.ki, align 4
  %i.kj = add i32 %.1144295.us, 3
  %i.kk = load ptr, ptr %i.kc, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  store i32 %i.kj, ptr %i.kl, align 4
  %i.km = add i32 %.1144295.us, 4                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.1157292.us, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.ck, !llvm.loop !8

._crit_edge.us:                                   ; preds = %bb.cn
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge305, label %.preheader.us, !llvm.loop !10

.split.us:                                        ; preds = %bb.cm
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge305:                                   ; preds = %._crit_edge.us
  store i32 1, ptr %i.bw, align 8
  %8 = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #22
          to label %bb.cp unwind label %bb.co     ; 2 uses

bb.co:                                            ; preds = %._crit_edge305
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cp:                                            ; preds = %._crit_edge305
  store ptr %8, ptr %i.bx, align 8
  store i32 0, ptr %8, align 4
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236, %bb.ai, %bb.ay, %bb.bj, %bb.bh, %bb.cp, %bb.bk, %bb.an, %bb.ad
  %.1140 = phi i32 [ %.0139307, %bb.bk ], [ %.0139307, %bb.cp ], [ %.0139307, %bb.bj ], [ %.0139307, %bb.bh ], [ %.0139307, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236 ], [ %.0139307, %bb.ay ], [ %i.dj, %bb.an ], [ %i.db, %bb.ai ], [ %.0139307, %bb.ad ]
  %.1137 = phi i32 [ %.0136308, %bb.bk ], [ %.0136308, %bb.cp ], [ %.0136308, %bb.bj ], [ %.0136308, %bb.bh ], [ %.0136308, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236 ], [ %.0136308, %bb.ay ], [ %i.dj, %bb.an ], [ %.0136308, %bb.ai ], [ %i.cu, %bb.ad ]
  %i.kp = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.kq = load ptr, ptr %i.by, align 8
  %i.kr = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = and i32 %i.ku, 3                        ; 2 uses
  %.not185 = icmp eq i32 %i.kv, 0
  br i1 %.not185, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kw = sub nuw nsw i32 4, %i.kv
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kx ; 4 uses
  store ptr %i.ky, ptr %i.x, align 8
  %i.kz = load ptr, ptr %i.bl, align 8
  %i.la = icmp ugt ptr %i.ky, %i.kz
  br i1 %i.la, label %bb.cs, label %._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge

._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge: ; preds = %bb.cr
  %.pre324 = ptrtoint ptr %i.ky to i64
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251

bb.cs:                                            ; preds = %bb.cr
  %i.lb = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull @.str.32)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  invoke void @__cxa_throw(ptr nonnull %i.lb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %.noexc248 unwind label %bb.cv

.noexc248:                                        ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lb) #18
  br label %.body

bb.cv:                                            ; preds = %bb.ct
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251: ; preds = %._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge, %bb.cq
  %.pre-phi = phi i64 [ %.pre324, %._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge ], [ %i.kr, %bb.cq ]
  %i.le = phi ptr [ %i.ky, %._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge ], [ %i.kp, %bb.cq ]
  %i.lf = load ptr, ptr %i.v, align 8
  %i.lg = ptrtoint ptr %i.lf to i64               ; 2 uses
  %i.lh = sub i64 %i.lg, %.pre-phi
  %i.li = and i64 %i.lh, 4294967292
  %.not278 = icmp eq i64 %i.li, 0
  br i1 %.not278, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251.thread, label %bb.t

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251.thread: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit210, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit.preheader
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lk = load i32, ptr %i.lj, align 8
  %.not188 = icmp eq i32 %i.lk, 1
  br i1 %.not188, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251.thread
  %i.ll = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull @.str.22)
          to label %.invoke353.a unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ll) #18
  br label %.body

bb.cy:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251.thread
  %i.ln = load i32, ptr %2, align 8
  %i.lo = or i32 %i.ln, 16
  store i32 %i.lo, ptr %2, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #19
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8            ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 4 uses
  %i.lv = load atomic i64, ptr %i.lu acquire, align 8 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 4294967297
  %i.lx = trunc i64 %i.lv to i32                  ; 2 uses
  br i1 %i.lw, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %i.lu, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store i32 0, ptr %i.ly, align 4
  %i.lz = load ptr, ptr %i.lt, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #18, !inline_history !11
  %i.mc = load ptr, ptr %i.lt, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #18, !inline_history !11
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

bb.dd:                                            ; preds = %bb.db
  %i.mf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.mf, 0
  br i1 %.not.i.i.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mg = add nsw i32 %i.lx, -1
  store i32 %i.mg, ptr %i.lu, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.mh = atomicrmw volatile add ptr %i.lu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i.i = phi i32 [ %i.lx, %bb.de ], [ %i.mh, %bb.df ]
  %i.mi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.mi, label %bb.dg, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, !prof !12

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #18
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit:      ; preds = %bb.da, %bb.dc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.body:                                            ; preds = %.loopexit280, %.loopexit.split-lp, %.loopexit281, %.loopexit.split-lp282, %bb.cv, %bb.cu, %bb.br, %bb.bt, %bb.bo, %bb.v, %bb.ah, %bb.ar, %bb.ax, %bb.bg, %bb.bc, %bb.au, %bb.am, %bb.ac, %bb.w, %bb.s, %bb.x, %bb.y, %bb.cx, %bb.cg, %bb.ci, %bb.co, %.split.us, %bb.cj, %bb.ch, %bb.by, %bb.bv, %bb.n, %bb.k, %bb.h, %bb.g
  %.pn191 = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %bb.h ], [ %i.aj, %bb.k ], [ %i.ao, %bb.n ], [ %i.ko, %bb.co ], [ %i.lm, %bb.cx ], [ %i.cm, %bb.x ], [ %i.cn, %bb.y ], [ %i.ev, %bb.br ], [ %i.cb, %bb.s ], [ %i.ej, %bb.bg ], [ %i.eq, %bb.bo ], [ %i.fl, %bb.bv ], [ %i.fp, %bb.by ], [ %i.ib, %bb.cg ], [ %i.ic, %bb.ch ], [ %i.id, %bb.ci ], [ %i.ie, %bb.cj ], [ %7, %.split.us ], [ %i.cl, %bb.w ], [ %i.cj, %bb.v ], [ %i.cs, %bb.ac ], [ %i.cz, %bb.ah ], [ %i.dg, %bb.am ], [ %i.do, %bb.ar ], [ %i.dt, %bb.au ], [ %i.dy, %bb.ax ], [ %i.ee, %bb.bc ], [ %i.lc, %bb.cu ], [ %i.fi, %bb.bt ], [ %lpad.loopexit.split-lp284, %.loopexit.split-lp282 ], [ %i.ld, %bb.cv ], [ %lpad.loopexit283, %.loopexit281 ], [ %lpad.loopexit, %.loopexit280 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6Assimp12StreamReaderILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.dh

bb.dh:                                            ; preds = %.body, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn193 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %.pn191, %.body ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ]
  resume { ptr, i32 } %.pn193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA38_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA38_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #18
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #18
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #18 ; 0 uses
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1) #18, !inline_history !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #20
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.f

common.resume:                                    ; preds = %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #23
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.m = zext i1 %2 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.o, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.p, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store i8 %i.m, ptr %i.r, align 8
  invoke void @_ZN6Assimp12StreamReaderILb0ELb0EE11InternBeginEv(ptr noundef nonnull align 8 dereferenceable(49) %0)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  ret void

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOStreamEEC2IS1_vEEPT_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #18
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #18
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
end_hunk_0
