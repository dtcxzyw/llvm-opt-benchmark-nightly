inline.NumInlined: 203
inline.NumDeleted: 114
begin_hunk_0_@_ZN6Assimp16TerragenImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
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
  br i1 %i.hq, label %bb.ce, label %.preheader.preheader

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
  br label %.preheader.preheader

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

.preheader.preheader:                             ; preds = %.loopexit279, %.loopexit
  %.0150 = phi ptr [ %i.hr, %.loopexit ], [ null, %.loopexit279 ]
  %.0149 = phi float [ %i.hy, %.loopexit ], [ 0.000000e+00, %.loopexit279 ] ; 2 uses
  %.0148 = phi float [ %i.ia, %.loopexit ], [ 0.000000e+00, %.loopexit279 ] ; 2 uses
  %i.if = zext nneg i32 %.0136308 to i64          ; 2 uses
  %wide.trip.count320 = zext nneg i32 %i.fz to i64
  %wide.trip.count = zext nneg i32 %i.fy to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv317 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next318, %._crit_edge ] ; 3 uses
  %.0143304 = phi i32 [ 0, %.preheader.preheader ], [ %i.km, %._crit_edge ]
  %.1151302 = phi ptr [ %.0150, %.preheader.preheader ], [ %.3153, %._crit_edge ]
  %.0154301 = phi ptr [ %i.hj, %.preheader.preheader ], [ %i.jr, %._crit_edge ]
  %.0156300 = phi ptr [ %i.gf, %.preheader.preheader ], [ %i.kn, %._crit_edge ]
  %i.ig = trunc nuw nsw i64 %indvars.iv317 to i32
  %i.ih = uitofp nneg i32 %i.ig to float          ; 4 uses
  %i.ii = mul nuw i64 %indvars.iv317, %i.if
  %i.ij = fadd float %i.ih, 1.000000e+00          ; 2 uses
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 4 uses
  %i.ik = mul nuw i64 %indvars.iv.next318, %i.if
  %i.il = fmul float %.0149, %i.ih                ; 2 uses
  %i.im = trunc nuw nsw i64 %indvars.iv.next318 to i32
  %i.in = uitofp nneg i32 %i.im to float
  %i.io = fmul float %.0149, %i.in                ; 2 uses
  br label %bb.cl

._crit_edge305.split:                             ; preds = %._crit_edge
  store i32 1, ptr %i.bw, align 8
  %i.ip = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #22
          to label %bb.cq unwind label %bb.ck     ; 2 uses

bb.ck:                                            ; preds = %._crit_edge305.split
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %bb.co
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count320
  br i1 %exitcond321.not, label %._crit_edge305.split, label %.preheader, !llvm.loop !8

bb.cl:                                            ; preds = %.preheader, %bb.co
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.co ] ; 5 uses
  %.1144295 = phi i32 [ %.0143304, %.preheader ], [ %i.km, %bb.co ] ; 5 uses
  %.2152294 = phi ptr [ %.1151302, %.preheader ], [ %.3153, %bb.co ] ; 14 uses
  %.1155293 = phi ptr [ %.0154301, %.preheader ], [ %i.jr, %bb.co ] ; 13 uses
  %.1157292 = phi ptr [ %.0156300, %.preheader ], [ %i.kn, %bb.co ] ; 3 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv to i32
  %i.is = uitofp nneg i32 %i.ir to float          ; 4 uses
  %i.it = add nuw i64 %indvars.iv, %i.ii          ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2
  %i.iw = sitofp i16 %i.iv to float
  %i.ix = call float @llvm.fmuladd.f32(float %i.iw, float %.0158, float %i.ez)
  %i.iy = getelementptr inbounds nuw i8, ptr %.1155293, i64 12
  store float %i.is, ptr %.1155293, align 4
  %.sroa.4271.0..1155.sroa_idx = getelementptr inbounds nuw i8, ptr %.1155293, i64 4
  store float %i.ih, ptr %.sroa.4271.0..1155.sroa_idx, align 4
  %.sroa.5272.0..1155.sroa_idx = getelementptr inbounds nuw i8, ptr %.1155293, i64 8
  store float %i.ix, ptr %.sroa.5272.0..1155.sroa_idx, align 4
  %i.iz = add nuw i64 %indvars.iv, %i.ik          ; 2 uses
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2
  %i.jc = sitofp i16 %i.jb to float
  %i.jd = call float @llvm.fmuladd.f32(float %i.jc, float %.0158, float %i.ez)
  %i.je = getelementptr inbounds nuw i8, ptr %.1155293, i64 24
  store float %i.is, ptr %i.iy, align 4
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1155293, i64 16
  store float %i.ij, ptr %.sroa.4268.0..sroa_idx, align 4
  %.sroa.5269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1155293, i64 20
  store float %i.jd, ptr %.sroa.5269.0..sroa_idx, align 4
  %i.jf = fadd float %i.is, 1.000000e+00          ; 2 uses
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.iz
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 2
  %i.ji = load i16, ptr %i.jh, align 2
  %i.jj = sitofp i16 %i.ji to float
  %i.jk = call float @llvm.fmuladd.f32(float %i.jj, float %.0158, float %i.ez)
  %i.jl = getelementptr inbounds nuw i8, ptr %.1155293, i64 36
  store float %i.jf, ptr %i.je, align 4
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1155293, i64 28
  store float %i.ij, ptr %.sroa.4265.0..sroa_idx, align 4
  %.sroa.5266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1155293, i64 32
  store float %i.jk, ptr %.sroa.5266.0..sroa_idx, align 4
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.it
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.jo = load i16, ptr %i.jn, align 2
  %i.jp = sitofp i16 %i.jo to float
  %i.jq = call float @llvm.fmuladd.f32(float %i.jp, float %.0158, float %i.ez)
  %i.jr = getelementptr inbounds nuw i8, ptr %.1155293, i64 48 ; 2 uses
  store float %i.jf, ptr %i.jl, align 4
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1155293, i64 40
  store float %i.ih, ptr %.sroa.4262.0..sroa_idx, align 4
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.1155293, i64 44
  store float %i.jq, ptr %.sroa.5263.0..sroa_idx, align 4
  %i.js = load i8, ptr %i.bv, align 8, !range !6, !noundef !7
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ju = fmul float %.0148, %i.is                ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.2152294, i64 12
  store float %i.ju, ptr %.2152294, align 4
  %.sroa.4259.0..2152.sroa_idx = getelementptr inbounds nuw i8, ptr %.2152294, i64 4
  store float %i.il, ptr %.sroa.4259.0..2152.sroa_idx, align 4
  %.sroa.5260.0..2152.sroa_idx = getelementptr inbounds nuw i8, ptr %.2152294, i64 8
  store float 0.000000e+00, ptr %.sroa.5260.0..2152.sroa_idx, align 4
  %i.jw = getelementptr inbounds nuw i8, ptr %.2152294, i64 24
  store float %i.ju, ptr %i.jv, align 4
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2152294, i64 16
  store float %i.io, ptr %.sroa.4256.0..sroa_idx, align 4
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2152294, i64 20
  store float 0.000000e+00, ptr %.sroa.5257.0..sroa_idx, align 4
  %i.jx = trunc i64 %indvars.iv to i32
  %i.jy = add i32 %i.jx, 1
  %i.jz = uitofp nneg i32 %i.jy to float
  %i.ka = fmul float %.0148, %i.jz                ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.2152294, i64 36
  store float %i.ka, ptr %i.jw, align 4
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2152294, i64 28
  store float %i.io, ptr %.sroa.4253.0..sroa_idx, align 4
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2152294, i64 32
  store float 0.000000e+00, ptr %.sroa.5254.0..sroa_idx, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %.2152294, i64 48
  store float %i.ka, ptr %i.kb, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2152294, i64 40
  store float %i.il, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2152294, i64 44
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.3153 = phi ptr [ %i.kc, %bb.cm ], [ %.2152294, %bb.cl ] ; 2 uses
  store i32 4, ptr %.1157292, align 8
  %i.kd = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #22
          to label %bb.co unwind label %bb.cp     ; 4 uses

bb.co:                                            ; preds = %bb.cn
  %i.ke = getelementptr inbounds nuw i8, ptr %.1157292, i64 8 ; 2 uses
  store ptr %i.kd, ptr %i.ke, align 8
  store i32 %.1144295, ptr %i.kd, align 4
  %i.kf = add i32 %.1144295, 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  store i32 %i.kf, ptr %i.kg, align 4
  %i.kh = add i32 %.1144295, 2
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i32 %i.kh, ptr %i.ki, align 4
  %i.kj = add i32 %.1144295, 3
  %i.kk = load ptr, ptr %i.ke, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  store i32 %i.kj, ptr %i.kl, align 4
  %i.km = add i32 %.1144295, 4                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.1157292, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.cl, !llvm.loop !10

bb.cp:                                            ; preds = %bb.cn
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cq:                                            ; preds = %._crit_edge305.split
  store ptr %i.ip, ptr %i.bx, align 8
  store i32 0, ptr %i.ip, align 4
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236, %bb.ai, %bb.ay, %bb.bj, %bb.bh, %bb.cq, %bb.bk, %bb.an, %bb.ad
  %.1140 = phi i32 [ %.0139307, %bb.bk ], [ %.0139307, %bb.cq ], [ %.0139307, %bb.bj ], [ %.0139307, %bb.bh ], [ %.0139307, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236 ], [ %.0139307, %bb.ay ], [ %i.dj, %bb.an ], [ %i.db, %bb.ai ], [ %.0139307, %bb.ad ]
  %.1137 = phi i32 [ %.0136308, %bb.bk ], [ %.0136308, %bb.cq ], [ %.0136308, %bb.bj ], [ %.0136308, %bb.bh ], [ %.0136308, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit236 ], [ %.0136308, %bb.ay ], [ %i.dj, %bb.an ], [ %.0136308, %bb.ai ], [ %i.cu, %bb.ad ]
  %i.kp = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.kq = load ptr, ptr %i.by, align 8
  %i.kr = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = and i32 %i.ku, 3                        ; 2 uses
  %.not185 = icmp eq i32 %i.kv, 0
  br i1 %.not185, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.kw = sub nuw nsw i32 4, %i.kv
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kx ; 4 uses
  store ptr %i.ky, ptr %i.x, align 8
  %i.kz = load ptr, ptr %i.bl, align 8
  %i.la = icmp ugt ptr %i.ky, %i.kz
  br i1 %i.la, label %bb.ct, label %._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge

._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge: ; preds = %bb.cs
  %.pre322 = ptrtoint ptr %i.ky to i64
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251

bb.ct:                                            ; preds = %bb.cs
  %i.lb = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull @.str.32)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  invoke void @__cxa_throw(ptr nonnull %i.lb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
          to label %.noexc248 unwind label %bb.cw

.noexc248:                                        ; preds = %bb.cu
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.lc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lb) #18
  br label %.body

bb.cw:                                            ; preds = %bb.cu
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251: ; preds = %._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge, %bb.cr
  %.pre-phi = phi i64 [ %.pre322, %._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge ], [ %i.kr, %bb.cr ]
  %i.le = phi ptr [ %i.ky, %._ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251_crit_edge ], [ %i.kp, %bb.cr ]
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
  br i1 %.not188, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251.thread
  %i.ll = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull @.str.22)
          to label %.invoke351 unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ll) #18
  br label %.body

bb.cz:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit251.thread
  %i.ln = load i32, ptr %2, align 8
  %i.lo = or i32 %i.ln, 16
  store i32 %i.lo, ptr %2, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8            ; 2 uses
  %i.lr = icmp eq ptr %i.lq, null
  br i1 %i.lr, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZdaPv(ptr noundef nonnull %i.lq) #19
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8            ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 4 uses
  %i.lv = load atomic i64, ptr %i.lu acquire, align 8 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 4294967297
  %i.lx = trunc i64 %i.lv to i32                  ; 2 uses
  br i1 %i.lw, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
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

bb.de:                                            ; preds = %bb.dc
  %i.mf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.mf, 0
  br i1 %.not.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.mg = add nsw i32 %i.lx, -1
  store i32 %i.mg, ptr %i.lu, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.de
  %i.mh = atomicrmw volatile add ptr %i.lu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i.i = phi i32 [ %i.lx, %bb.df ], [ %i.mh, %bb.dg ]
  %i.mi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.mi, label %bb.dh, label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit, !prof !12

bb.dh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #18
  br label %_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit

_ZN6Assimp12StreamReaderILb0ELb0EED2Ev.exit:      ; preds = %bb.db, %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

.body:                                            ; preds = %.loopexit280, %.loopexit.split-lp, %.loopexit281, %.loopexit.split-lp282, %bb.cw, %bb.cv, %bb.br, %bb.bt, %bb.bo, %bb.v, %bb.ah, %bb.ar, %bb.ax, %bb.bg, %bb.bc, %bb.au, %bb.am, %bb.ac, %bb.w, %bb.s, %bb.x, %bb.y, %bb.cy, %bb.cg, %bb.ci, %bb.ck, %bb.cp, %bb.cj, %bb.ch, %bb.by, %bb.bv, %bb.n, %bb.k, %bb.h, %bb.g
  %.pn191 = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %bb.h ], [ %i.aj, %bb.k ], [ %i.ao, %bb.n ], [ %i.iq, %bb.ck ], [ %i.lm, %bb.cy ], [ %i.cm, %bb.x ], [ %i.cn, %bb.y ], [ %i.ev, %bb.br ], [ %i.cb, %bb.s ], [ %i.ej, %bb.bg ], [ %i.eq, %bb.bo ], [ %i.fl, %bb.bv ], [ %i.fp, %bb.by ], [ %i.ib, %bb.cg ], [ %i.ic, %bb.ch ], [ %i.id, %bb.ci ], [ %i.ie, %bb.cj ], [ %i.ko, %bb.cp ], [ %i.cl, %bb.w ], [ %i.cj, %bb.v ], [ %i.cs, %bb.ac ], [ %i.cz, %bb.ah ], [ %i.dg, %bb.am ], [ %i.do, %bb.ar ], [ %i.dt, %bb.au ], [ %i.dy, %bb.ax ], [ %i.ee, %bb.bc ], [ %i.lc, %bb.cv ], [ %i.fi, %bb.bt ], [ %lpad.loopexit.split-lp284, %.loopexit.split-lp282 ], [ %i.ld, %bb.cw ], [ %lpad.loopexit283, %.loopexit281 ], [ %lpad.loopexit, %.loopexit280 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6Assimp12StreamReaderILb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.di

bb.di:                                            ; preds = %.body, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
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
end_hunk_0
