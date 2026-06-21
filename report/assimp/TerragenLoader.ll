inline.NumInlined: 203
inline.NumDeleted: 114
begin_hunk_0_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
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
  %.0143304.us = phi i32 [ 0, %.preheader.us.preheader ], [ %i.kk, %._crit_edge.us ]
  %.1151302.us = phi ptr [ %.0150, %.preheader.us.preheader ], [ %.3153.us, %._crit_edge.us ]
  %.0154301.us = phi ptr [ %i.hj, %.preheader.us.preheader ], [ %i.jp, %._crit_edge.us ]
  %.0156300.us = phi ptr [ %i.gf, %.preheader.us.preheader ], [ %i.kl, %._crit_edge.us ]
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
  %.1144295.us = phi i32 [ %.0143304.us, %.preheader.us ], [ %i.kk, %bb.cn ] ; 5 uses
  %.2152294.us = phi ptr [ %.1151302.us, %.preheader.us ], [ %.3153.us, %bb.cn ] ; 14 uses
  %.1155293.us = phi ptr [ %.0154301.us, %.preheader.us ], [ %i.jp, %bb.cn ] ; 13 uses
  %.1157292.us = phi ptr [ %.0156300.us, %.preheader.us ], [ %i.kl, %bb.cn ] ; 3 uses
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
          to label %bb.cn unwind label %.split.us ; 4 uses

bb.cn:                                            ; preds = %bb.cm
  %i.kc = getelementptr inbounds nuw i8, ptr %.1157292.us, i64 8 ; 2 uses
  store ptr %i.kb, ptr %i.kc, align 8
  store i32 %.1144295.us, ptr %i.kb, align 4
  %i.kd = add i32 %.1144295.us, 1
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  store i32 %i.kd, ptr %i.ke, align 4
  %i.kf = add i32 %.1144295.us, 2
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i32 %i.kf, ptr %i.kg, align 4
  %i.kh = add i32 %.1144295.us, 3
  %i.ki = load ptr, ptr %i.kc, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 12
  store i32 %i.kh, ptr %i.kj, align 4
  %i.kk = add i32 %.1144295.us, 4                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.1157292.us, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.ck, !llvm.loop !8

._crit_edge.us:                                   ; preds = %bb.cn
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge305, label %.preheader.us, !llvm.loop !10

.split.us:                                        ; preds = %bb.cm
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge305:                                   ; preds = %._crit_edge.us
  store i32 1, ptr %i.bw, align 8
  %i.kn = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #22
          to label %bb.cp unwind label %bb.co     ; 2 uses

bb.co:                                            ; preds = %._crit_edge305
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cp:                                            ; preds = %._crit_edge305
  store ptr %i.kn, ptr %i.bx, align 8
  store i32 0, ptr %i.kn, align 4
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
          to label %.invoke353 unwind label %bb.cx

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
  %.pn191 = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %bb.h ], [ %i.aj, %bb.k ], [ %i.ao, %bb.n ], [ %i.ko, %bb.co ], [ %i.lm, %bb.cx ], [ %i.cm, %bb.x ], [ %i.cn, %bb.y ], [ %i.ev, %bb.br ], [ %i.cb, %bb.s ], [ %i.ej, %bb.bg ], [ %i.eq, %bb.bo ], [ %i.fl, %bb.bv ], [ %i.fp, %bb.by ], [ %i.ib, %bb.cg ], [ %i.ic, %bb.ch ], [ %i.id, %bb.ci ], [ %i.ie, %bb.cj ], [ %i.km, %.split.us ], [ %i.cl, %bb.w ], [ %i.cj, %bb.v ], [ %i.cs, %bb.ac ], [ %i.cz, %bb.ah ], [ %i.dg, %bb.am ], [ %i.do, %bb.ar ], [ %i.dt, %bb.au ], [ %i.dy, %bb.ax ], [ %i.ee, %bb.bc ], [ %i.lc, %bb.cu ], [ %i.fi, %bb.bt ], [ %lpad.loopexit.split-lp284, %.loopexit.split-lp282 ], [ %i.ld, %bb.cv ], [ %lpad.loopexit283, %.loopexit281 ], [ %lpad.loopexit, %.loopexit280 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
end_hunk_0
