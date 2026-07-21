inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  %i.dx = load ptr, ptr %i.v, align 8
  %.not231 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not231, label %._crit_edge233, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %.sroa.0166.0232 = phi ptr [ %i.er, %bb.j ], [ %i.dw, %bb.f ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 12 ; 3 uses
  %i.dz = load i32, ptr %.sroa.0166.0232, align 4 ; 2 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = load ptr, ptr %0, align 8
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ec, i32 noundef %i.dz, i32 noundef %i.ed)
          to label %bb.h unwind label %bb.k

._crit_edge233:                                   ; preds = %bb.j, %bb.f
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.l unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.h:                                             ; preds = %.preheader
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 4
  %i.eg = load i32, ptr %i.ef, align 4            ; 2 uses
  %i.eh = zext i32 %i.eg to i64
  %i.ei = load ptr, ptr %0, align 8
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ej, i32 noundef %i.eg, i32 noundef %i.ek)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 8
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = load ptr, ptr %0, align 8
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.en
  %i.eq = load i32, ptr %i.dy, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ep, i32 noundef %i.em, i32 noundef %i.eq)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0166.0232, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.er, %i.es
  br i1 %.not, label %._crit_edge233, label %.preheader, !llvm.loop !14

bb.k:                                             ; preds = %bb.i, %bb.h, %.preheader
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.l:                                             ; preds = %._crit_edge233
  %i.eu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ev = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i114, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 12
  %i.fa = add nsw i64 %i.ez, 63                   ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = and i64 %i.fb, 2305843009213693944
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #31
          to label %.noexc115 unwind label %bb.o  ; 3 uses

.noexc115:                                        ; preds = %bb.m
  %i.fe = lshr i64 %i.fa, 6                       ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  %.idx.i = shl nuw nsw i64 %i.fe, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fd, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc115, %bb.l
  %.sroa.0157.0 = phi ptr [ null, %bb.l ], [ %i.fd, %.noexc115 ] ; 10 uses
  %.sroa.15163.0 = phi ptr [ null, %bb.l ], [ %i.ff, %.noexc115 ] ; 4 uses
  %i.fg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.fh = load ptr, ptr %i.v, align 8
  %.not208249 = icmp eq ptr %i.fg, %i.fh
  br i1 %.not208249, label %._crit_edge252, label %.lr.ph251

.lr.ph251:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.p

._crit_edge252:                                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.fk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.ac unwind label %bb.ag     ; 0 uses

bb.n:                                             ; preds = %._crit_edge233
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.o:                                             ; preds = %bb.m
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

bb.p:                                             ; preds = %.lr.ph251, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.sroa.0152.0250 = phi ptr [ %i.fg, %.lr.ph251 ], [ %i.ga, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 12 ; 3 uses
  %i.fo = load i32, ptr %.sroa.0152.0250, align 4 ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = lshr i32 %i.fo, 6
  %.zext = zext nneg i32 %i.fq to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext
  %i.fs = and i64 %i.fp, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = load i64, ptr %i.fr, align 8
  %i.fv = and i64 %i.ft, %i.fu
  %.not209 = icmp eq i64 %i.fv, 0
  br i1 %.not209, label %bb.r, label %.loopexit

bb.q:                                             ; preds = %.loopexit.2
  %i.fw = load ptr, ptr %i.fj, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.li to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.fz) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.loopexit.2, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 16 ; 2 uses
  %i.gb = load ptr, ptr %i.v, align 8
  %.not208 = icmp eq ptr %i.ga, %i.gb
  br i1 %.not208, label %._crit_edge252, label %bb.p, !llvm.loop !15

bb.r:                                             ; preds = %bb.p
  %i.gc = load ptr, ptr %0, align 8
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.fp
  %i.ge = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.gd, i32 noundef %i.ge, float noundef %sqrt.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gf = load ptr, ptr %4, align 8               ; 3 uses
  %i.gg = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not210234 = icmp eq ptr %i.gf, %i.gg          ; 2 uses
  br i1 %.not210234, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %bb.s
  %i.gh = load ptr, ptr %i.a, align 8
  br label %bb.u

._crit_edge241:                                   ; preds = %bb.u, %bb.s
  %.sroa.14.0.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.hd, %bb.u ] ; 4 uses
  %i.gi = phi <2 x float> [ zeroinitializer, %bb.s ], [ %i.ha, %bb.u ] ; 5 uses
  %foldExtExtBinop326 = fmul <2 x float> %i.gi, %i.gi
  %i.gj = extractelement <2 x float> %foldExtExtBinop326, i64 1
  %i.gk = extractelement <2 x float> %i.gi, i64 0 ; 2 uses
  %i.gl = call float @llvm.fmuladd.f32(float %i.gk, float %i.gk, float %i.gj)
  %i.gm = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %.sroa.14.0.lcssa, float %i.gl) ; 2 uses
  %i.gn = fcmp ogt float %i.gm, 0.000000e+00
  br i1 %i.gn, label %_ZN10aiVector3tIfEdVEf.exit.i, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %._crit_edge241
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.gm)
  %i.go = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.gp = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.gi, %i.gq
  %i.gs = fmul float %.sroa.14.0.lcssa, %i.go
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit

bb.t:                                             ; preds = %bb.y, %bb.v, %bb.r
  %i.gt = landingpad { ptr, i32 }
          cleanup
  %i.gu = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i122, label %.thread, label %bb.ab

bb.u:                                             ; preds = %.lr.ph240, %bb.u
  %.sroa.0142.0238 = phi ptr [ %i.gf, %.lr.ph240 ], [ %i.he, %bb.u ] ; 2 uses
  %.sroa.14.0235 = phi float [ 0.000000e+00, %.lr.ph240 ], [ %i.hd, %bb.u ]
  %i.gv = phi <2 x float> [ zeroinitializer, %.lr.ph240 ], [ %i.ha, %bb.u ]
  %i.gw = load i32, ptr %.sroa.0142.0238, align 4
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [12 x i8], ptr %i.gh, i64 %i.gx ; 2 uses
  %i.gz = load <2 x float>, ptr %i.gy, align 4
  %i.ha = fadd <2 x float> %i.gv, %i.gz           ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hc = load float, ptr %i.hb, align 4
  %i.hd = fadd float %.sroa.14.0235, %i.hc        ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238, i64 4 ; 2 uses
  %.not210 = icmp eq ptr %i.he, %i.gg
  br i1 %.not210, label %._crit_edge241, label %bb.u, !llvm.loop !16

_ZN10aiVector3tIfE13NormalizeSafeEv.exit:         ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %._crit_edge241
  %.sroa.14.1 = phi float [ %i.gs, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.sroa.14.0.lcssa, %._crit_edge241 ]
  %i.hf = phi <2 x float> [ %i.gr, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.gi, %._crit_edge241 ]
  br i1 %.not210234, label %.loopexit, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit
  %i.hg = load ptr, ptr %i.fi, align 8
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %.sroa.0137.0246 = phi ptr [ %i.hq, %.lr.ph247 ], [ %i.gf, %.lr.ph247.preheader ] ; 2 uses
  %i.hh = load i32, ptr %.sroa.0137.0246, align 4 ; 2 uses
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.hi ; 2 uses
  store <2 x float> %i.hf, ptr %i.hj, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx, align 4
  %i.hk = lshr i32 %i.hh, 6
  %.zext207 = zext nneg i32 %i.hk to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext207 ; 2 uses
  %i.hm = and i64 %i.hi, 63
  %i.hn = shl nuw i64 1, %i.hm
  %i.ho = load i64, ptr %i.hl, align 8
  %i.hp = or i64 %i.ho, %i.hn
  store i64 %i.hp, ptr %i.hl, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0137.0246, i64 4 ; 2 uses
  %.not211 = icmp eq ptr %i.hq, %i.hg
  br i1 %.not211, label %.loopexit, label %.lr.ph247, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph247, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit, %bb.p
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 4
  %i.hs = load i32, ptr %i.hr, align 4            ; 2 uses
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = lshr i32 %i.hs, 6
  %.zext.1 = zext nneg i32 %i.hu to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext.1
  %i.hw = and i64 %i.ht, 63
  %i.hx = shl nuw i64 1, %i.hw
  %i.hy = load i64, ptr %i.hv, align 8
  %i.hz = and i64 %i.hx, %i.hy
  %.not209.1 = icmp eq i64 %i.hz, 0
  br i1 %.not209.1, label %bb.v, label %.loopexit.1

bb.v:                                             ; preds = %.loopexit
  %i.ia = load ptr, ptr %0, align 8
  %i.ib = getelementptr inbounds nuw [12 x i8], ptr %i.ia, i64 %i.ht
  %i.ic = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ib, i32 noundef %i.ic, float noundef %sqrt.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %bb.v
  %i.id = load ptr, ptr %4, align 8               ; 3 uses
  %i.ie = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not210234.1 = icmp eq ptr %i.id, %i.ie        ; 2 uses
  br i1 %.not210234.1, label %._crit_edge241.1, label %.lr.ph240.1

.lr.ph240.1:                                      ; preds = %bb.w
  %i.if = load ptr, ptr %i.a, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph240.1
  %.sroa.0142.0238.1 = phi ptr [ %i.id, %.lr.ph240.1 ], [ %i.ip, %bb.x ] ; 2 uses
  %.sroa.14.0235.1 = phi float [ 0.000000e+00, %.lr.ph240.1 ], [ %i.io, %bb.x ]
  %i.ig = phi <2 x float> [ zeroinitializer, %.lr.ph240.1 ], [ %i.il, %bb.x ]
  %i.ih = load i32, ptr %.sroa.0142.0238.1, align 4
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [12 x i8], ptr %i.if, i64 %i.ii ; 2 uses
  %i.ik = load <2 x float>, ptr %i.ij, align 4
  %i.il = fadd <2 x float> %i.ig, %i.ik           ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.in = load float, ptr %i.im, align 4
  %i.io = fadd float %.sroa.14.0235.1, %i.in      ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238.1, i64 4 ; 2 uses
  %.not210.1 = icmp eq ptr %i.ip, %i.ie
  br i1 %.not210.1, label %._crit_edge241.1, label %bb.x, !llvm.loop !16

._crit_edge241.1:                                 ; preds = %bb.x, %bb.w
  %.sroa.14.0.lcssa.1 = phi float [ 0.000000e+00, %bb.w ], [ %i.io, %bb.x ] ; 4 uses
  %i.iq = phi <2 x float> [ zeroinitializer, %bb.w ], [ %i.il, %bb.x ] ; 5 uses
  %foldExtExtBinop328 = fmul <2 x float> %i.iq, %i.iq
  %i.ir = extractelement <2 x float> %foldExtExtBinop328, i64 1
  %i.is = extractelement <2 x float> %i.iq, i64 0 ; 2 uses
  %i.it = call float @llvm.fmuladd.f32(float %i.is, float %i.is, float %i.ir)
  %i.iu = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa.1, float %.sroa.14.0.lcssa.1, float %i.it) ; 2 uses
  %i.iv = fcmp ogt float %i.iu, 0.000000e+00
  br i1 %i.iv, label %_ZN10aiVector3tIfEdVEf.exit.i.1, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1

_ZN10aiVector3tIfEdVEf.exit.i.1:                  ; preds = %._crit_edge241.1
  %sqrt.i.i.1 = call noundef float @llvm.sqrt.f32(float %i.iu)
  %i.iw = fdiv float 1.000000e+00, %sqrt.i.i.1    ; 2 uses
  %i.ix = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.iq, %i.iy
  %i.ja = fmul float %.sroa.14.0.lcssa.1, %i.iw
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1

_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1:       ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.1, %._crit_edge241.1
  %.sroa.14.1.1 = phi float [ %i.ja, %_ZN10aiVector3tIfEdVEf.exit.i.1 ], [ %.sroa.14.0.lcssa.1, %._crit_edge241.1 ]
  %i.jb = phi <2 x float> [ %i.iz, %_ZN10aiVector3tIfEdVEf.exit.i.1 ], [ %i.iq, %._crit_edge241.1 ]
  br i1 %.not210234.1, label %.loopexit.1, label %.lr.ph247.preheader.1

.lr.ph247.preheader.1:                            ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1
  %i.jc = load ptr, ptr %i.fi, align 8
  br label %.lr.ph247.1

.lr.ph247.1:                                      ; preds = %.lr.ph247.1, %.lr.ph247.preheader.1
  %.sroa.0137.0246.1 = phi ptr [ %i.jm, %.lr.ph247.1 ], [ %i.id, %.lr.ph247.preheader.1 ] ; 2 uses
  %i.jd = load i32, ptr %.sroa.0137.0246.1, align 4 ; 2 uses
  %i.je = zext i32 %i.jd to i64                   ; 2 uses
  %i.jf = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.je ; 2 uses
  store <2 x float> %i.jb, ptr %i.jf, align 4
  %.sroa.14.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store float %.sroa.14.1.1, ptr %.sroa.14.0..sroa_idx.1, align 4
  %i.jg = lshr i32 %i.jd, 6
  %.zext207.1 = zext nneg i32 %i.jg to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext207.1 ; 2 uses
  %i.ji = and i64 %i.je, 63
  %i.jj = shl nuw i64 1, %i.ji
  %i.jk = load i64, ptr %i.jh, align 8
  %i.jl = or i64 %i.jk, %i.jj
  store i64 %i.jl, ptr %i.jh, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0137.0246.1, i64 4 ; 2 uses
  %.not211.1 = icmp eq ptr %i.jm, %i.jc
  br i1 %.not211.1, label %.loopexit.1, label %.lr.ph247.1, !llvm.loop !17

.loopexit.1:                                      ; preds = %.lr.ph247.1, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.1, %.loopexit
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0152.0250, i64 8
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = lshr i32 %i.jo, 6
  %.zext.2 = zext nneg i32 %i.jq to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext.2
  %i.js = and i64 %i.jp, 63
  %i.jt = shl nuw i64 1, %i.js
  %i.ju = load i64, ptr %i.jr, align 8
  %i.jv = and i64 %i.jt, %i.ju
  %.not209.2 = icmp eq i64 %i.jv, 0
  br i1 %.not209.2, label %bb.y, label %.loopexit.1..loopexit.2_crit_edge

.loopexit.1..loopexit.2_crit_edge:                ; preds = %.loopexit.1
  %.pre = load ptr, ptr %4, align 8
  br label %.loopexit.2

bb.y:                                             ; preds = %.loopexit.1
  %i.jw = load ptr, ptr %0, align 8
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %i.jw, i64 %i.jp
  %i.jy = load i32, ptr %i.fn, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.jx, i32 noundef %i.jy, float noundef %sqrt.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false)
          to label %bb.z unwind label %bb.t

bb.z:                                             ; preds = %bb.y
  %i.jz = load ptr, ptr %4, align 8               ; 5 uses
  %i.ka = load ptr, ptr %i.fi, align 8            ; 3 uses
  %.not210234.2 = icmp eq ptr %i.jz, %i.ka        ; 2 uses
  br i1 %.not210234.2, label %._crit_edge241.2, label %.lr.ph240.2

.lr.ph240.2:                                      ; preds = %bb.z
  %i.kb = load ptr, ptr %i.a, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph240.2
  %.sroa.0142.0238.2 = phi ptr [ %i.jz, %.lr.ph240.2 ], [ %i.kl, %bb.aa ] ; 2 uses
  %.sroa.14.0235.2 = phi float [ 0.000000e+00, %.lr.ph240.2 ], [ %i.kk, %bb.aa ]
  %i.kc = phi <2 x float> [ zeroinitializer, %.lr.ph240.2 ], [ %i.kh, %bb.aa ]
  %i.kd = load i32, ptr %.sroa.0142.0238.2, align 4
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %i.kb, i64 %i.ke ; 2 uses
  %i.kg = load <2 x float>, ptr %i.kf, align 4
  %i.kh = fadd <2 x float> %i.kc, %i.kg           ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = load float, ptr %i.ki, align 4
  %i.kk = fadd float %.sroa.14.0235.2, %i.kj      ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238.2, i64 4 ; 2 uses
  %.not210.2 = icmp eq ptr %i.kl, %i.ka
  br i1 %.not210.2, label %._crit_edge241.2, label %bb.aa, !llvm.loop !16

._crit_edge241.2:                                 ; preds = %bb.aa, %bb.z
  %.sroa.14.0.lcssa.2 = phi float [ 0.000000e+00, %bb.z ], [ %i.kk, %bb.aa ] ; 4 uses
  %i.km = phi <2 x float> [ zeroinitializer, %bb.z ], [ %i.kh, %bb.aa ] ; 5 uses
  %foldExtExtBinop330 = fmul <2 x float> %i.km, %i.km
  %i.kn = extractelement <2 x float> %foldExtExtBinop330, i64 1
  %i.ko = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.kp = call float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.kn)
  %i.kq = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa.2, float %.sroa.14.0.lcssa.2, float %i.kp) ; 2 uses
  %i.kr = fcmp ogt float %i.kq, 0.000000e+00
  br i1 %i.kr, label %_ZN10aiVector3tIfEdVEf.exit.i.2, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2

_ZN10aiVector3tIfEdVEf.exit.i.2:                  ; preds = %._crit_edge241.2
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.kq)
  %i.ks = fdiv float 1.000000e+00, %sqrt.i.i.2    ; 2 uses
  %i.kt = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.km, %i.ku
  %i.kw = fmul float %.sroa.14.0.lcssa.2, %i.ks
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2

_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2:       ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.2, %._crit_edge241.2
  %.sroa.14.1.2 = phi float [ %i.kw, %_ZN10aiVector3tIfEdVEf.exit.i.2 ], [ %.sroa.14.0.lcssa.2, %._crit_edge241.2 ]
  %i.kx = phi <2 x float> [ %i.kv, %_ZN10aiVector3tIfEdVEf.exit.i.2 ], [ %i.km, %._crit_edge241.2 ]
  br i1 %.not210234.2, label %.loopexit.2, label %.lr.ph247.2

.lr.ph247.2:                                      ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2, %.lr.ph247.2
  %.sroa.0137.0246.2 = phi ptr [ %i.lh, %.lr.ph247.2 ], [ %i.jz, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2 ] ; 2 uses
  %i.ky = load i32, ptr %.sroa.0137.0246.2, align 4 ; 2 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.kz ; 2 uses
  store <2 x float> %i.kx, ptr %i.la, align 4
  %.sroa.14.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store float %.sroa.14.1.2, ptr %.sroa.14.0..sroa_idx.2, align 4
  %i.lb = lshr i32 %i.ky, 6
  %.zext207.2 = zext nneg i32 %i.lb to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext207.2 ; 2 uses
  %i.ld = and i64 %i.kz, 63
  %i.le = shl nuw i64 1, %i.ld
  %i.lf = load i64, ptr %i.lc, align 8
  %i.lg = or i64 %i.lf, %i.le
  store i64 %i.lg, ptr %i.lc, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0137.0246.2, i64 4 ; 2 uses
  %.not211.2 = icmp eq ptr %i.lh, %i.ka
  br i1 %.not211.2, label %.loopexit.2, label %.lr.ph247.2, !llvm.loop !17

.loopexit.2:                                      ; preds = %.lr.ph247.2, %.loopexit.1..loopexit.2_crit_edge, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2
  %i.li = phi ptr [ %.pre, %.loopexit.1..loopexit.2_crit_edge ], [ %i.jz, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2 ], [ %i.jz, %.lr.ph247.2 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.q

bb.ab:                                            ; preds = %bb.t
  %i.lj = load ptr, ptr %i.fj, align 8
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.gu to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.lm) #29
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ah

bb.ac:                                            ; preds = %._crit_edge252
  %.not.i.i124 = icmp eq ptr %.sroa.0157.0, null
  br i1 %.not.i.i124, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ln = ptrtoint ptr %.sroa.15163.0 to i64
  %i.lo = ptrtoint ptr %.sroa.0157.0 to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 2 uses
  %i.lq = ashr exact i64 %i.lp, 3
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds [8 x i8], ptr %.sroa.15163.0, i64 %i.lr
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lp) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.ac, %bb.ad
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp13SGSpatialSortD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #29
  br label %_ZN6Assimp13SGSpatialSortD2Ev.exit

_ZN6Assimp13SGSpatialSortD2Ev.exit:               ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ma = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp13SGSpatialSortD2Ev.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.ma to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mf) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp13SGSpatialSortD2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.ag:                                            ; preds = %._crit_edge252
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i126 = icmp eq ptr %.sroa.0157.0, null
  br i1 %.not.i.i126, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127, label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag
  %.pn.pn.pn204 = phi { ptr, i32 } [ %i.gt, %.thread ], [ %i.mg, %bb.ag ]
  %i.mh = ptrtoint ptr %.sroa.15163.0 to i64
  %i.mi = ptrtoint ptr %.sroa.0157.0 to i64
  %i.mj = sub i64 %i.mh, %i.mi                    ; 2 uses
  %i.mk = ashr exact i64 %i.mj, 3
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds [8 x i8], ptr %.sroa.15163.0, i64 %i.ml
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mj) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

_ZNSt13_Bvector_baseISaIbEED2Ev.exit127:          ; preds = %bb.o, %bb.ag, %bb.ah, %bb.n, %bb.k
  %.pn91 = phi { ptr, i32 } [ %i.et, %bb.k ], [ %i.fl, %bb.n ], [ %i.fm, %bb.o ], [ %i.mg, %bb.ag ], [ %.pn.pn.pn204, %bb.ah ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8            ; 3 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i128, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127
end_hunk_0
begin_hunk_1_@_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj:bb.a
  br label %._crit_edge.i.i32

._crit_edge.i.i32:                                ; preds = %.noexc35, %bb.x
  %i.db = phi ptr [ %i.cz, %.noexc35 ], [ %i.x, %bb.x ] ; 2 uses
  switch i32 %2, label %bb.z [
    i32 1, label %bb.y
    i32 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i32
  %i.dc = load i8, ptr %1, align 1
  store i8 %i.dc, ptr %i.db, align 1
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %1, i64 %i.q, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i32
  %i.dd = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dd, ptr %i.y, align 8
  %i.de = load ptr, ptr %5, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 0, ptr %i.df, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.dg = load i64, ptr %i.y, align 8             ; 5 uses
  %i.dh = icmp ugt i64 %i.dg, 1023
  %.pre118 = load ptr, ptr %5, align 8            ; 3 uses
  br i1 %i.dh, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = trunc nuw nsw i64 %i.dg to i32
  store i32 %i.di, ptr %i.bx, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dj, ptr align 1 %.pre118, i64 %i.dg, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg
  store i8 0, ptr %i.dk, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.aa, %bb.ab
  %i.dl = icmp eq ptr %.pre118, %i.x
  br i1 %i.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dm = icmp ult i64 %i.dg, 16
  call void @llvm.assume(i1 %i.dm)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dn = load i64, ptr %i.x, align 8
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %.pre118, i64 noundef %i.do) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.dp = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = icmp ugt ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.ac, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.dw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull @.str.39)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dw) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %i.dy = load float, ptr %i.dr, align 1
  store ptr %i.ds, ptr %i.dq, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1032
  store float %i.dy, ptr %i.dz, align 4
  %i.ea = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = icmp ugt ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.af, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit40

bb.af:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.eh = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull @.str.39)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @__cxa_throw(ptr nonnull %i.eh, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eh) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit40: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.ej = load float, ptr %i.ec, align 1
  store ptr %i.ed, ptr %i.eb, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bx, i64 1036
  store float %i.ej, ptr %i.ek, align 4
  %i.el = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = icmp ugt ptr %i.eo, %i.eq
  br i1 %i.er, label %bb.ai, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit41

bb.ai:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit40
  %i.es = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull @.str.39)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @__cxa_throw(ptr nonnull %i.es, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.es) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit41: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit40
  %i.eu = load float, ptr %i.en, align 1
  store ptr %i.eo, ptr %i.em, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bx, i64 1040
  store float %i.eu, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bx, i64 1080 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bx, i64 1088 ; 2 uses
  store float 1.000000e+00, ptr %i.ex, align 4
  %i.ey = load i8, ptr %i.w, align 1, !range !30, !noundef !31
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit41
  call void @_ZN6Assimp19Discreet3DSImporter15ParseLightChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.fa = load <2 x float>, ptr %i.ew, align 4
  %.pre121 = load float, ptr %i.ex, align 4
  br label %bb.an

.loopexit105:                                     ; preds = %.noexc.i33
  %lpad.loopexit107 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp106:                            ; preds = %bb.w
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp106, %.loopexit105
  %lpad.phi109 = phi { ptr, i32 } [ %lpad.loopexit107, %.loopexit105 ], [ %lpad.loopexit.split-lp108, %.loopexit.split-lp106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.cl

bb.an:                                            ; preds = %bb.al, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit41
  %i.fb = phi float [ %.pre121, %bb.al ], [ 1.000000e+00, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit41 ]
  %i.fc = phi <2 x float> [ %i.fa, %bb.al ], [ splat (float 1.000000e+00), %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit41 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bx, i64 1092
  store <2 x float> %i.fc, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bx, i64 1100
  store float %i.fb, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bx, i64 1104
  %i.fg = load <2 x float>, ptr %i.z, align 8
  store <2 x float> %i.fg, ptr %i.ff, align 4
  %i.fh = load float, ptr %i.aa, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bx, i64 1112
  store float %i.fh, ptr %i.fi, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bx, i64 1028 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.ao, label %bb.ce

bb.ao:                                            ; preds = %bb.an
  store i32 2, ptr %i.fj, align 4
  br label %bb.ce

bb.ap:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fm = call noalias noundef nonnull dereferenceable(1084) ptr @_Znwm(i64 noundef 1084) #31 ; 16 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1044
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1084) %i.fm, i8 0, i64 1044, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 1048
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 1052 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1056
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.fn, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 1060 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 1064
  store <4 x float> <float 1.000000e+00, float f0x3F490FDB, float 1.000000e-01, float 1.000000e+03>, ptr %i.fr, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 1076
  store <2 x float> zeroinitializer, ptr %i.ft, align 4
  %i.fu = load ptr, ptr %i.p, align 8             ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 56 ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8            ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 64 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8
  %.not.i42 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i42, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.fm, ptr %i.fx, align 8
  %i.ga = load ptr, ptr %i.fw, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.gb, ptr %i.fw, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gc = load ptr, ptr %i.fv, align 8            ; 4 uses
  %i.gd = ptrtoint ptr %i.fx to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 6 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775800
  br i1 %i.gg, label %bb.as, label %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
  unreachable

_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.gh = ashr exact i64 %i.gf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i43 = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i43, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 1152921504606846975)
  %i.gl = select i1 %i.gj, i64 1152921504606846975, i64 %i.gk ; 3 uses
  %.not.i.i.i44 = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i44)
  %i.gm = shl nuw nsw i64 %i.gl, 3
  %i.gn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #31 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gf ; 2 uses
  store ptr %i.fm, ptr %i.go, align 8
  %i.gp = icmp sgt i64 %i.gf, 0
  br i1 %i.gp, label %bb.at, label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.at:                                            ; preds = %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr align 8 %i.gc, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.at, %_ZNKSt6vectorIP8aiCameraSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.not.i17.i.i45 = icmp eq ptr %i.gc, null
  br i1 %.not.i17.i.i45, label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gf) #29
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorIP8aiCameraSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.gn, ptr %i.fv, align 8
  store ptr %i.gq, ptr %i.fw, align 8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.gr, ptr %i.fy, align 8
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.aq, %_ZNSt6vectorIP8aiCameraSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.r, ptr %6, align 8
  br i1 %or.cond.i46, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #30
          to label %.noexc49 unwind label %.loopexit.split-lp

.noexc49:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %_ZNSt6vectorIP8aiCameraSaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.q, ptr %i.a, align 8
  br i1 %i.u, label %.noexc.i48, label %._crit_edge.i.i47

.noexc.i48:                                       ; preds = %bb.aw
  %i.gs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc50 unwind label %.loopexit104 ; 2 uses

.noexc50:                                         ; preds = %.noexc.i48
  store ptr %i.gs, ptr %6, align 8
  %i.gt = load i64, ptr %i.a, align 8
  store i64 %i.gt, ptr %i.r, align 8
  br label %._crit_edge.i.i47

._crit_edge.i.i47:                                ; preds = %.noexc50, %bb.aw
  %i.gu = phi ptr [ %i.gs, %.noexc50 ], [ %i.r, %bb.aw ] ; 2 uses
  switch i32 %2, label %bb.ay [
    i32 1, label %bb.ax
    i32 0, label %bb.az
  ]

bb.ax:                                            ; preds = %._crit_edge.i.i47
  %i.gv = load i8, ptr %1, align 1
  store i8 %i.gv, ptr %i.gu, align 1
  br label %bb.az

bb.ay:                                            ; preds = %._crit_edge.i.i47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr align 1 %1, i64 %i.q, i1 false)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge.i.i47
  %i.gw = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.gw, ptr %i.v, align 8
  %i.gx = load ptr, ptr %6, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gw
  store i8 0, ptr %i.gy, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.gz = load i64, ptr %i.v, align 8             ; 5 uses
  %i.ha = icmp ugt i64 %i.gz, 1023
  %.pre = load ptr, ptr %6, align 8               ; 3 uses
  br i1 %i.ha, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit52, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hb = trunc nuw nsw i64 %i.gz to i32
  store i32 %i.hb, ptr %i.fm, align 4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 1 %.pre, i64 %i.gz, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gz
  store i8 0, ptr %i.hd, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit52

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit52: ; preds = %bb.az, %bb.ba
  %i.he = icmp eq ptr %.pre, %i.r
  br i1 %i.he, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit52
  %i.hf = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.hf)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit52
  %i.hg = load i64, ptr %i.r, align 8
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.hh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.hi = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8            ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = icmp ugt ptr %i.hl, %i.hn
  br i1 %i.ho, label %bb.bb, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit56

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.hp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull @.str.39)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @__cxa_throw(ptr nonnull %i.hp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.hq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hp) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.hr = load float, ptr %i.hk, align 1
  store ptr %i.hl, ptr %i.hj, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fm, i64 1028 ; 2 uses
  store float %i.hr, ptr %i.hs, align 4
  %i.ht = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = icmp ugt ptr %i.hw, %i.hy
  br i1 %i.hz, label %bb.be, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57

bb.be:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit56
  %i.ia = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull @.str.39)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @__cxa_throw(ptr nonnull %i.ia, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ia) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit56
  %i.ic = load float, ptr %i.hv, align 1
  store ptr %i.hw, ptr %i.hu, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.fm, i64 1032 ; 2 uses
  store float %i.ic, ptr %i.id, align 4
  %i.ie = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8            ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = icmp ugt ptr %i.ih, %i.ij
  br i1 %i.ik, label %bb.bh, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58

bb.bh:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57
  %i.il = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull @.str.39)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @__cxa_throw(ptr nonnull %i.il, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.il) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57
  %i.in = load float, ptr %i.ig, align 1
  store ptr %i.ih, ptr %i.if, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.fm, i64 1036 ; 2 uses
  store float %i.in, ptr %i.io, align 4
  %i.ip = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8            ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = icmp ugt ptr %i.is, %i.iu
  br i1 %i.iv, label %bb.bk, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59

bb.bk:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58
  %i.iw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.iw, ptr noundef nonnull @.str.39)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @__cxa_throw(ptr nonnull %i.iw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.iw) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58
  %i.iy = load float, ptr %i.ir, align 1
  store ptr %i.is, ptr %i.iq, align 8
  %i.iz = load float, ptr %i.hs, align 4
  %i.ja = fsub float %i.iy, %i.iz
  store float %i.ja, ptr %i.fp, align 4
  %i.jb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = icmp ugt ptr %i.je, %i.jg
  br i1 %i.jh, label %bb.bn, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60

bb.bn:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59
  %i.ji = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull @.str.39)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @__cxa_throw(ptr nonnull %i.ji, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ji) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59
  %i.jk = load float, ptr %i.jd, align 1
  store ptr %i.je, ptr %i.jc, align 8
  %i.jl = load float, ptr %i.id, align 4
  %i.jm = fsub float %i.jk, %i.jl
  store float %i.jm, ptr %i.fq, align 4
  %i.jn = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = icmp ugt ptr %i.jq, %i.js
  br i1 %i.jt, label %bb.bq, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61

bb.bq:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60
  %i.ju = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noundef nonnull @.str.39)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @__cxa_throw(ptr nonnull %i.ju, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ju) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60
  %i.jw = load float, ptr %i.jp, align 1
  store ptr %i.jq, ptr %i.jo, align 8
  %i.jx = load float, ptr %i.io, align 4
  %i.jy = fsub float %i.jw, %i.jx                 ; 4 uses
  store float %i.jy, ptr %i.fr, align 4
  %7 = load <2 x float>, ptr %i.fp, align 4       ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %7, %7
  %8 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %9 = extractelement <2 x float> %7, i64 0       ; 2 uses
  %i.jz = call float @llvm.fmuladd.f32(float %9, float %9, float %8)
  %i.ka = call noundef float @llvm.fmuladd.f32(float %i.jy, float %i.jy, float %i.jz) ; 2 uses
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.ka) ; 2 uses
  %i.kb = fpext float %sqrt.i to double
  %i.kc = fcmp olt double %i.kb, 1.000000e-05
  br i1 %i.kc, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61
  %i.kd = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.kd, ptr noundef nonnull @.str.10)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.fp, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

.loopexit104:                                     ; preds = %.noexc.i48
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp, %.loopexit104
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit104 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.cl

bb.bv:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61
  %i.ke = fcmp oeq float %i.ka, 0.000000e+00
  br i1 %i.ke, label %_ZN10aiVector3tIfEdVEf.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kf = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %10 = insertelement <2 x float> poison, float %i.kf, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %7, %11
  store <2 x float> %12, ptr %i.fp, align 4
  %i.kg = fmul float %i.jy, %i.kf
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

_ZN10aiVector3tIfEdVEf.exit.sink.split:           ; preds = %bb.bt, %bb.bw
  %.sink = phi float [ %i.kg, %bb.bw ], [ 0.000000e+00, %bb.bt ]
  store float %.sink, ptr %i.fr, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit

_ZN10aiVector3tIfEdVEf.exit:                      ; preds = %_ZN10aiVector3tIfEdVEf.exit.sink.split, %bb.bv
  %i.kh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8            ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = icmp ugt ptr %i.kk, %i.km
  br i1 %i.kn, label %bb.bx, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62

bb.bx:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.ko = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull @.str.39)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @__cxa_throw(ptr nonnull %i.ko, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ko) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62: ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.kq = load float, ptr %i.kj, align 1
  store ptr %i.kk, ptr %i.ki, align 8
  %i.kr = fmul float %i.kq, f0x3C8EFA35
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.fp, align 4 ; 5 uses
  %.sroa.25.0.copyload = load float, ptr %i.fr, align 4 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop.a = fmul <2 x float> %.sroa.04.0.copyload, %.sroa.04.0.copyload
  %i.ks = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.kt = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.ks)
  %i.ku = call noundef float @llvm.fmuladd.f32(float %.sroa.25.0.copyload, float %.sroa.25.0.copyload, float %i.kt) ; 2 uses
  %i.kv = fcmp oeq float %i.ku, 0.000000e+00
  br i1 %i.kv, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.ku)
  %i.kw = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.kx = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = fmul <2 x float> %.sroa.04.0.copyload, %i.ky
  %i.la = fmul float %.sroa.25.0.copyload, %i.kw
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.7.0.i = phi float [ %.sroa.25.0.copyload, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.la, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.lb = phi <2 x float> [ %.sroa.04.0.copyload, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.kz, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.lc = fmul float %i.kr, 5.000000e-01          ; 2 uses
  %i.ld = call noundef float @sinf(float noundef %i.lc) #28 ; 2 uses
  %i.le = call noundef float @cosf(float noundef %i.lc) #28 ; 4 uses
  %i.lf = fmul float %.sroa.7.0.i, %i.ld          ; 6 uses
  %i.lg = fmul float %i.lf, %i.lf                 ; 2 uses
  %i.lh = fneg float %i.le                        ; 2 uses
  %i.li = fmul float %i.lf, %i.le
  %i.lj = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ll = fmul <2 x float> %i.lb, %i.lk           ; 7 uses
  %i.lm = extractelement <2 x float> %i.ll, i64 1 ; 3 uses
  %i.ln = call float @llvm.fmuladd.f32(float %i.lm, float %i.lm, float %i.lg)
  %i.lo = extractelement <2 x float> %i.ll, i64 0 ; 3 uses
  %i.lp = call float @llvm.fmuladd.f32(float %i.lo, float %i.lm, float %i.li)
  %i.lq = call float @llvm.fmuladd.f32(float %i.ln, float -2.000000e+00, float 1.000000e+00)
  %i.lr = insertelement <2 x float> poison, float %i.lq, i64 0
  %i.ls = insertelement <2 x float> %i.lr, float %i.lp, i64 1
  %i.lt = fmul <2 x float> %i.ls, <float 1.000000e+00, float 2.000000e+00>
  %i.lu = call float @llvm.fmuladd.f32(float %i.lo, float %i.lo, float %i.lg)
  %i.lv = call float @llvm.fmuladd.f32(float %i.lu, float -2.000000e+00, float 1.000000e+00)
  %i.lw = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.le, i64 1
  %i.ly = fmul <2 x float> %i.ll, %i.lx
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ma = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ll, <2 x float> %i.mb, <2 x float> %i.lz)
  %i.md = fmul <2 x float> %i.mc, splat (float 2.000000e+00)
  %i.me = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 0> ; 2 uses
  %i.mf = insertelement <4 x float> %i.me, float %i.lf, i64 0
  %i.mg = insertelement <4 x float> %i.me, float %i.lh, i64 0
  %i.mh = insertelement <4 x float> %i.mg, float %i.le, i64 3
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.mj = fmul <4 x float> %i.mf, %i.mi
  %i.mk = shufflevector <2 x float> %i.ll, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ml = insertelement <2 x float> %i.ll, float %i.lf, i64 1
  %i.mm = shufflevector <2 x float> %i.ml, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mk, <4 x float> %i.mm, <4 x float> %i.mj) ; 4 uses
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.mp = insertelement <2 x float> %i.mo, float %i.lv, i64 1
  %i.mq = fmul <2 x float> %i.mp, <float 2.000000e+00, float 1.000000e+00>
  %i.mr = extractelement <4 x float> %i.mn, i64 1
  %i.ms = fmul float %i.mr, 2.000000e+00
  %i.mt = extractelement <4 x float> %i.mn, i64 3
  %i.mu = fmul float %i.mt, 2.000000e+00
  %i.mv = extractelement <4 x float> %i.mn, i64 2
  %i.mw = call float @llvm.fmuladd.f32(float %i.mv, float -2.000000e+00, float 1.000000e+00)
  %i.mx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> zeroinitializer, <2 x float> %i.mq)
  %i.my = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.md, <2 x float> zeroinitializer, <2 x float> %i.mx)
  %i.mz = call float @llvm.fmuladd.f32(float %i.ms, float 0.000000e+00, float %i.mu)
  %i.na = call float @llvm.fmuladd.f32(float %i.mw, float 0.000000e+00, float %i.mz)
  %i.nb = getelementptr inbounds nuw i8, ptr %i.fm, i64 1040
  store <2 x float> %i.my, ptr %i.nb, align 4
  store float %i.na, ptr %i.fo, align 4
  %i.nc = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8            ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = icmp ugt ptr %i.nf, %i.nh
  br i1 %i.ni, label %bb.ca, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63

bb.ca:                                            ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.nj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, ptr noundef nonnull @.str.39)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @__cxa_throw(ptr nonnull %i.nj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.nj) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63: ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.nl = load float, ptr %i.ne, align 1
  store ptr %i.nf, ptr %i.nd, align 8
  %i.nm = fmul float %i.nl, f0x3C8EFA35           ; 2 uses
  %i.nn = fcmp olt float %i.nm, 1.000000e-03
  %storemerge = select i1 %i.nn, float f0x3F490FDB, float %i.nm
  store float %storemerge, ptr %i.fs, align 4
  %i.no = load i8, ptr %i.w, align 1, !range !30, !noundef !31
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63
  call void @_ZN6Assimp19Discreet3DSImporter16ParseCameraChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63, %bb.cd, %bb.an, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.nq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 40
  %i.ns = load ptr, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  store ptr %i.ns, ptr %i.nt, align 8
  %i.nu = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 40 ; 2 uses
  %i.nw = and i64 %i.bc, 4294967295               ; 2 uses
  %i.nx = icmp eq i64 %i.nw, 4294967295
  br i1 %i.nx, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.nz = load ptr, ptr %i.ny, align 8
  store ptr %i.nz, ptr %i.nv, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.cg:                                            ; preds = %bb.ce
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nw ; 2 uses
  store ptr %i.oc, ptr %i.nv, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = icmp ugt ptr %i.oc, %i.oe
  br i1 %i.of, label %bb.ch, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.ch:                                            ; preds = %bb.cg
  %i.og = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.og, ptr noundef nonnull @.str.41)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @__cxa_throw(ptr nonnull %i.og, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.og) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64: ; preds = %bb.cf, %bb.cg
  %i.oi = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 40
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
end_hunk_1
begin_hunk_2_@_ZN6Assimp19Discreet3DSImporter14ParseMeshChunkEv:bb.a
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 40
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.ry = load ptr, ptr %i.rx, align 8
  %i.rz = ptrtoint ptr %i.rw to i64
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = sub i64 %i.rz, %i.sa                    ; 2 uses
  %i.sc = and i64 %i.sb, 4294967295
  %i.sd = icmp eq i64 %i.sc, 0
  br i1 %i.sd, label %.thread, label %bb.dg

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit115

bb.dg:                                            ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99
  %.pre-phi133 = phi i64 [ %.pre132, %._crit_edge ], [ %i.sb, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit99 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.se = and i64 %.pre-phi133, 4294967294
  %i.sf = icmp samesign ult i64 %i.se, 6
  br i1 %i.sf, label %.loopexit115, label %bb.b

.loopexit115:                                     ; preds = %bb.dg, %bb.a, %.thread
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter15ParseLightChunkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::D3DS::Discreet3DS::Chunk", align 2 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 4294967294
  %i.k = icmp samesign ult i64 %i.j, 6
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6Assimp19Discreet3DSImporter9ReadChunkEPNS_4D3DS11Discreet3DS5ChunkE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %1)
  %i.n = load i32, ptr %i.l, align 2
  %i.o = add i32 %i.n, -6                         ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  %.pre = load ptr, ptr %i.a, align 8             ; 7 uses
  br i1 %i.p, label %._crit_edge, label %bb.c, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre33 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre35 = load ptr, ptr %.phi.trans.insert34, align 8
  %.pre36 = ptrtoint ptr %.pre33 to i64
  %.pre37 = ptrtoint ptr %.pre35 to i64
  %.pre39 = sub i64 %.pre36, %.pre37
  br label %bb.aw, !llvm.loop !72

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.o, %i.x                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 40 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.y, -1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  store ptr %i.ad, ptr %i.z, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = zext i32 %i.y to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ae ; 2 uses
  store ptr %i.af, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp ugt ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull @.str.41)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

common.resume:                                    ; preds = %bb.av, %bb.ap, %bb.al, %bb.ai, %bb.af, %bb.ab, %bb.x, %bb.u, %bb.r, %bb.o, %bb.l, %bb.h
  %.sink = phi ptr [ %i.gt, %bb.av ], [ %i.fz, %bb.ap ], [ %i.fm, %bb.al ], [ %i.ez, %bb.ai ], [ %i.em, %bb.af ], [ %i.du, %bb.ab ], [ %i.di, %bb.x ], [ %i.cw, %bb.u ], [ %i.cd, %bb.r ], [ %i.bp, %bb.o ], [ %i.bb, %bb.l ], [ %i.aj, %bb.h ]
  %common.resume.op = phi { ptr, i32 } [ %i.gu, %bb.av ], [ %i.ga, %bb.ap ], [ %i.fn, %bb.al ], [ %i.fa, %bb.ai ], [ %i.en, %bb.af ], [ %i.dv, %bb.ab ], [ %i.dj, %bb.x ], [ %i.cx, %bb.u ], [ %i.ce, %bb.r ], [ %i.bq, %bb.o ], [ %i.bc, %bb.l ], [ %i.ak, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit: ; preds = %bb.d, %bb.e
  %i.al = ptrtoint ptr %i.aa to i64
  %i.am = sub i64 %i.al, %i.v
  %i.an = load ptr, ptr %i.m, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 15 uses
  %i.as = load i16, ptr %1, align 2
  switch i16 %i.as, label %bb.aq [
    i16 17936, label %bb.i
    i16 18011, label %bb.y
    i16 16, label %bb.ac
    i16 19, label %bb.ac
    i16 17957, label %bb.am
  ]

bb.i:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1028
  store i32 3, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.39)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit:  ; preds = %bb.i
  %i.bd = load float, ptr %i.aw, align 1
  store ptr %i.ax, ptr %i.av, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 1032
  %i.bf = load float, ptr %i.be, align 4
  %i.bg = fsub float %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 1044 ; 3 uses
  store float %i.bg, ptr %i.bh, align 4
  %i.bi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp ugt ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.m, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit22

bb.m:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull @.str.39)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit22: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit
  %i.br = load float, ptr %i.bk, align 1
  store ptr %i.bl, ptr %i.bj, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 1036
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fsub float %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 1048
  store float %i.bu, ptr %i.bv, align 4
  %i.bw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp ugt ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.p, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit23

bb.p:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit22
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull @.str.39)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit23: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit22
  %i.cf = load float, ptr %i.by, align 1
  store ptr %i.bz, ptr %i.bx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ar, i64 1040
  %i.ch = load float, ptr %i.cg, align 4
  %i.ci = fsub float %i.cf, %i.ch                 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 1052 ; 2 uses
  store float %i.ci, ptr %i.cj, align 4
  %2 = load <2 x float>, ptr %i.bh, align 4       ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %3 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %4 = extractelement <2 x float> %2, i64 0       ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %4, float %4, float %3)
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.ck) ; 2 uses
  %i.cm = fcmp oeq float %i.cl, 0.000000e+00
  br i1 %i.cm, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit23
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cl)
  %i.cn = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %5 = insertelement <2 x float> poison, float %i.cn, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x float> %2, %6
  store <2 x float> %7, ptr %i.bh, align 4
  %i.co = fmul float %i.ci, %i.cn
  store float %i.co, ptr %i.cj, align 4
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit23, %_ZN10aiVector3tIfEdVEf.exit.i
  %i.cp = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = icmp ugt ptr %i.cs, %i.cu
  br i1 %i.cv, label %bb.s, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit24

bb.s:                                             ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.cw = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull @.str.39)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit24: ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %i.cy = load float, ptr %i.cr, align 1
  store ptr %i.cs, ptr %i.cq, align 8
  %i.cz = fmul float %i.cy, f0x3C8EFA35           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ar, i64 1116
  store float %i.cz, ptr %i.da, align 4
  %i.db = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = icmp ugt ptr %i.de, %i.dg
  br i1 %i.dh, label %bb.v, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit25

bb.v:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit24
  %i.di = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull @.str.39)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_throw(ptr nonnull %i.di, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit25: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit24
  %i.dk = load float, ptr %i.dd, align 1
  store ptr %i.de, ptr %i.dc, align 8
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float f0x3C8EFA35, float %i.cz)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ar, i64 1120
  store float %i.dl, ptr %i.dm, align 4
  br label %bb.aq

bb.y:                                             ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.dn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = icmp ugt ptr %i.dq, %i.ds
  br i1 %i.dt, label %bb.z, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit26

bb.z:                                             ; preds = %bb.y
  %i.du = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull @.str.39)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit26: ; preds = %bb.y
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1080 ; 2 uses
  %i.dx = load float, ptr %i.dp, align 1          ; 2 uses
  store ptr %i.dq, ptr %i.do, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ar, i64 1088 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !noalias !73
  %i.ea = fmul float %i.dx, %i.dz
  %i.eb = load <2 x float>, ptr %i.dw, align 4, !noalias !73
  %i.ec = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.ed, %i.eb
  store <2 x float> %i.ee, ptr %i.dw, align 4
  store float %i.ea, ptr %i.dy, align 4
  br label %bb.aq

bb.ac:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.ef = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = icmp ugt ptr %i.ei, %i.ek
  br i1 %i.el, label %bb.ad, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit27

bb.ad:                                            ; preds = %bb.ac
  %i.em = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull @.str.39)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @__cxa_throw(ptr nonnull %i.em, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit27: ; preds = %bb.ac
  %i.eo = load float, ptr %i.eh, align 1
  store ptr %i.ei, ptr %i.eg, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ar, i64 1080 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4
  %i.er = fmul float %i.eo, %i.eq
  store float %i.er, ptr %i.ep, align 4
  %i.es = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = icmp ugt ptr %i.ev, %i.ex
  br i1 %i.ey, label %bb.ag, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit28

bb.ag:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit27
  %i.ez = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull @.str.39)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__cxa_throw(ptr nonnull %i.ez, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit28: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit27
  %i.fb = load float, ptr %i.eu, align 1
  store ptr %i.ev, ptr %i.et, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ar, i64 1084 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4
  %i.fe = fmul float %i.fb, %i.fd
  store float %i.fe, ptr %i.fc, align 4
  %i.ff = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = icmp ugt ptr %i.fi, %i.fk
  br i1 %i.fl, label %bb.aj, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit29

bb.aj:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit28
  %i.fm = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull @.str.39)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void @__cxa_throw(ptr nonnull %i.fm, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit29: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit28
  %i.fo = load float, ptr %i.fh, align 1
  store ptr %i.fi, ptr %i.fg, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ar, i64 1088 ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4
  %i.fr = fmul float %i.fo, %i.fq
  store float %i.fr, ptr %i.fp, align 4
  br label %bb.aq

bb.am:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.fs = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 2 uses
end_hunk_2
