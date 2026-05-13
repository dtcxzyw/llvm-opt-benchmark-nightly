inline.NumInlined: 321
inline.NumDeleted: 162
begin_hunk_0_@_ZN6Assimp11OFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
    i8 9, label %bb.di
    i8 13, label %bb.di
    i8 10, label %bb.di
  ]

bb.di:                                            ; preds = %bb.dh, %bb.dh, %bb.dh, %bb.dh
  %.not.i.i20.i392 = icmp eq ptr %.in.i391, %i.z
  br i1 %.not.i.i20.i392, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i393, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.hr = getelementptr inbounds nuw i8, ptr %.in.i391, i64 1
  br label %bb.dh, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i393: ; preds = %bb.di, %bb.dh
  %.0.lcssa.i.i21.i394 = phi ptr [ %.in.i391, %bb.dh ], [ %scevgep.i.i18.i390, %bb.di ] ; 3 uses
  %i.hs = icmp ult ptr %.0.lcssa.i.i21.i394, %i.z
  br i1 %i.hs, label %.lr.ph.i377, label %_ZN6AssimpL9NextTokenEPPKcS1_.exit397, !llvm.loop !8

_ZN6AssimpL9NextTokenEPPKcS1_.exit397:            ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i393, %.lr.ph.i377, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i375
  %.20 = phi ptr [ %.0.lcssa.i.i.i376, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i375 ], [ %.0.lcssa.i.i21.i394, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i393 ], [ %.19, %.lr.ph.i377 ] ; 3 uses
  %i.ht = load i8, ptr %.20, align 1              ; 2 uses
  %i.hu = add i8 %i.ht, -58
  %or.cond11.i398 = icmp ult i8 %i.hu, -10
  br i1 %or.cond11.i398, label %_ZN6Assimp9strtoul10EPKcPS1_.exit407, label %.lr.ph.i399

.lr.ph.i399:                                      ; preds = %_ZN6AssimpL9NextTokenEPPKcS1_.exit397, %.lr.ph.i399
  %.0812.i401 = phi ptr [ %i.hv, %.lr.ph.i399 ], [ %.20, %_ZN6AssimpL9NextTokenEPPKcS1_.exit397 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.0812.i401, i64 1 ; 3 uses
  %i.hw = load i8, ptr %i.hv, align 1             ; 2 uses
  %i.hx = add i8 %i.hw, -58
  %or.cond.i403 = icmp ult i8 %i.hx, -10
  br i1 %or.cond.i403, label %_ZN6Assimp9strtoul10EPKcPS1_.exit407, label %.lr.ph.i399, !llvm.loop !9

_ZN6Assimp9strtoul10EPKcPS1_.exit407:             ; preds = %.lr.ph.i399, %_ZN6AssimpL9NextTokenEPPKcS1_.exit397
  %i.hy = phi i8 [ %i.ht, %_ZN6AssimpL9NextTokenEPPKcS1_.exit397 ], [ %i.hw, %.lr.ph.i399 ]
  %.08.lcssa.i404 = phi ptr [ %.20, %_ZN6AssimpL9NextTokenEPPKcS1_.exit397 ], [ %i.hv, %.lr.ph.i399 ] ; 3 uses
  %i.hz = ptrtoint ptr %.08.lcssa.i404 to i64
  %i.ia = sub i64 %i.aa, %i.hz
  %scevgep.i.i.i408 = getelementptr i8, ptr %.08.lcssa.i404, i64 %i.ia
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dm, %_ZN6Assimp9strtoul10EPKcPS1_.exit407
  %i.ib = phi i8 [ %i.hy, %_ZN6Assimp9strtoul10EPKcPS1_.exit407 ], [ %.pre801, %bb.dm ]
  %.0.i.i.i409 = phi ptr [ %.08.lcssa.i404, %_ZN6Assimp9strtoul10EPKcPS1_.exit407 ], [ %i.ic, %bb.dm ] ; 3 uses
  switch i8 %i.ib, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i411 [
    i8 32, label %bb.dl
    i8 9, label %bb.dl
    i8 13, label %bb.dl
    i8 10, label %bb.dl
  ]

bb.dl:                                            ; preds = %bb.dk, %bb.dk, %bb.dk, %bb.dk
  %.not.i.i.i410 = icmp eq ptr %.0.i.i.i409, %i.z
  br i1 %.not.i.i.i410, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i411, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i.i.i409, i64 1 ; 2 uses
  %.pre801 = load i8, ptr %i.ic, align 1
  br label %bb.dk, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i411: ; preds = %bb.dl, %bb.dk
  %.0.lcssa.i.i.i412 = phi ptr [ %.0.i.i.i409, %bb.dk ], [ %scevgep.i.i.i408, %bb.dl ] ; 3 uses
  %i.id = icmp ult ptr %.0.lcssa.i.i.i412, %i.z
  br i1 %i.id, label %.lr.ph.i413, label %_ZN6AssimpL9NextTokenEPPKcS1_.exit433

.lr.ph.i413:                                      ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i411, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i429
  %.21 = phi ptr [ %.0.lcssa.i.i21.i430, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i429 ], [ %.0.lcssa.i.i.i412, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i411 ] ; 5 uses
  %i.ie = load i8, ptr %.21, align 1              ; 2 uses
  switch i8 %i.ie, label %_ZN6AssimpL9NextTokenEPPKcS1_.exit433 [
    i8 35, label %.critedge2.i415
    i8 10, label %.critedge2.i415
    i8 13, label %.critedge2.i415
  ]

.critedge2.i415:                                  ; preds = %.lr.ph.i413, %.lr.ph.i413, %.lr.ph.i413
  %i.if = ptrtoint ptr %.21 to i64
  %i.ig = sub i64 %i.aa, %i.if
  %scevgep.i.i15.i416 = getelementptr i8, ptr %.21, i64 %i.ig
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %.critedge2.i415
  %i.ih = phi i8 [ %i.ie, %.critedge2.i415 ], [ %.pre.i432, %bb.dp ]
  %.0.i.i16.i417 = phi ptr [ %.21, %.critedge2.i415 ], [ %i.ii, %bb.dp ] ; 6 uses
  switch i8 %i.ih, label %bb.do [
    i8 13, label %.critedge.i.i.i418
    i8 10, label %.critedge.i.i.i418
    i8 0, label %.critedge.i.i.i418
    i8 35, label %.critedge.i.i.i418
  ]

bb.do:                                            ; preds = %bb.dn
  %.not22.i.i.i431 = icmp eq ptr %.0.i.i16.i417, %i.z
  br i1 %.not22.i.i.i431, label %.critedge.i.i.i418, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i16.i417, i64 1 ; 2 uses
  %.pre.i432 = load i8, ptr %i.ii, align 1
  br label %bb.dn, !llvm.loop !6

.critedge.i.i.i418:                               ; preds = %bb.do, %bb.dn, %bb.dn, %bb.dn, %bb.dn
  %.0.lcssa.i.i17.i419 = phi ptr [ %.0.i.i16.i417, %bb.dn ], [ %.0.i.i16.i417, %bb.dn ], [ %.0.i.i16.i417, %bb.dn ], [ %.0.i.i16.i417, %bb.dn ], [ %scevgep.i.i15.i416, %bb.do ] ; 3 uses
  %.0.lcssa24.i.i.i420 = ptrtoint ptr %.0.lcssa.i.i17.i419 to i64
  %i.ij = sub i64 %i.aa, %.0.lcssa24.i.i.i420
  %scevgep25.i.i.i421 = getelementptr i8, ptr %.0.lcssa.i.i17.i419, i64 %i.ij
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ds, %.critedge.i.i.i418
  %.1.i.i.i422 = phi ptr [ %.0.lcssa.i.i17.i419, %.critedge.i.i.i418 ], [ %i.il, %bb.ds ] ; 4 uses
  %i.ik = load i8, ptr %.1.i.i.i422, align 1
  switch i8 %i.ik, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i424 [
    i8 13, label %bb.dr
    i8 10, label %bb.dr
  ]

bb.dr:                                            ; preds = %bb.dq, %bb.dq
  %.not23.i.i.i423 = icmp eq ptr %.1.i.i.i422, %i.z
  br i1 %.not23.i.i.i423, label %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i424, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.il = getelementptr inbounds nuw i8, ptr %.1.i.i.i422, i64 1
  br label %bb.dq, !llvm.loop !7

_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i424:       ; preds = %bb.dr, %bb.dq
  %.1.lcssa.i.i.i425 = phi ptr [ %.1.i.i.i422, %bb.dq ], [ %scevgep25.i.i.i421, %bb.dr ] ; 3 uses
  %i.im = ptrtoint ptr %.1.lcssa.i.i.i425 to i64
  %i.in = sub i64 %i.aa, %i.im
  %scevgep.i.i18.i426 = getelementptr i8, ptr %.1.lcssa.i.i.i425, i64 %i.in
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dv, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i424
  %.in.i427 = phi ptr [ %i.ip, %bb.dv ], [ %.1.lcssa.i.i.i425, %_ZN6Assimp8SkipLineIcEEbPPKT_S3_.exit.i424 ] ; 4 uses
  %i.io = load i8, ptr %.in.i427, align 1
  switch i8 %i.io, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i429 [
    i8 32, label %bb.du
    i8 9, label %bb.du
    i8 13, label %bb.du
    i8 10, label %bb.du
  ]

bb.du:                                            ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt
  %.not.i.i20.i428 = icmp eq ptr %.in.i427, %i.z
  br i1 %.not.i.i20.i428, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i429, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ip = getelementptr inbounds nuw i8, ptr %.in.i427, i64 1
  br label %bb.dt, !llvm.loop !4

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i429: ; preds = %bb.du, %bb.dt
  %.0.lcssa.i.i21.i430 = phi ptr [ %.in.i427, %bb.dt ], [ %scevgep.i.i18.i426, %bb.du ] ; 3 uses
  %i.iq = icmp ult ptr %.0.lcssa.i.i21.i430, %i.z
  br i1 %i.iq, label %.lr.ph.i413, label %_ZN6AssimpL9NextTokenEPPKcS1_.exit433, !llvm.loop !8

_ZN6AssimpL9NextTokenEPPKcS1_.exit433:            ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i429, %.lr.ph.i413, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i411
  %.22 = phi ptr [ %.0.lcssa.i.i.i412, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i411 ], [ %.0.lcssa.i.i21.i430, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit22.i429 ], [ %.21, %.lr.ph.i413 ]
  %.not183 = icmp eq i32 %.0.lcssa.i333, 0
  br i1 %.not183, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %_ZN6AssimpL9NextTokenEPPKcS1_.exit433
  %i.ir = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull @.str.6)
          to label %.invoke848 unwind label %bb.dy

bb.dx:                                            ; preds = %.invoke848, %bb.ec
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.dy:                                            ; preds = %bb.dw
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ir) #17
  br label %bb.iq

bb.dz:                                            ; preds = %_ZN6AssimpL9NextTokenEPPKcS1_.exit433
  %.not184 = icmp eq i32 %.0.lcssa.i369, 0
  br i1 %.not184, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.iu = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.iu, ptr noundef nonnull @.str.7)
          to label %.invoke848 unwind label %bb.eb

.invoke848:                                       ; preds = %bb.dw, %bb.ea
  %i.iv = phi ptr [ %i.iu, %bb.ea ], [ %i.ir, %bb.dw ]
  invoke void @__cxa_throw(ptr nonnull %i.iv, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %.cont849 unwind label %bb.dx

.cont849:                                         ; preds = %.invoke848
  unreachable

bb.eb:                                            ; preds = %bb.ea
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.iu) #17
  br label %bb.iq

bb.ec:                                            ; preds = %bb.dz
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 1, ptr %i.ix, align 8
  %i.iy = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.ed unwind label %bb.dx     ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.iy, ptr %i.iz, align 8
  %i.ja = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #20
          to label %bb.ee unwind label %bb.el     ; 14 uses

bb.ee:                                            ; preds = %bb.ed
  store i32 0, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 2 uses
  store i32 0, ptr %i.jb, align 4
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 16 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 224
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 1272
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 1312
  store ptr null, ptr %i.jg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.jd, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.je, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.jf, i8 0, i64 36, i1 false)
  store ptr %i.ja, ptr %i.iy, align 8
  store i32 %.0.lcssa.i369, ptr %i.jc, align 8
  %i.jh = zext i32 %.0.lcssa.i369 to i64          ; 5 uses
  %i.ji = shl nuw nsw i64 %i.jh, 4
  %i.jj = or disjoint i64 %i.ji, 8
  %i.jk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jj) #20
          to label %bb.ef unwind label %bb.em     ; 2 uses

bb.ef:                                            ; preds = %bb.ee
  store i64 %i.jh, ptr %i.jk, align 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 4 uses
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %i.jh
  %i.jn = add nuw nsw i64 %i.jh, 1152921504606846975
  %i.jo = and i64 %i.jn, 1152921504606846975
  %xtraiter = and i64 %i.jh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ef, %.prol.preheader
  %i.jp = phi ptr [ %i.jr, %.prol.preheader ], [ %i.jl, %bb.ef ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ef ]
  store i32 0, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr null, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ef
  %.unr = phi ptr [ %i.jl, %bb.ef ], [ %i.jr, %.prol.preheader ]
  %i.js = icmp samesign ult i64 %i.jo, 7
  br i1 %i.js, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.jt = phi ptr [ %i.kj, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store ptr null, ptr %i.ju, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store i32 0, ptr %i.jv, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store ptr null, ptr %i.jw, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  store i32 0, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  store ptr null, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  store i32 0, ptr %i.jz, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  store ptr null, ptr %i.ka, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 64
  store i32 0, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jt, i64 72
  store ptr null, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 80
  store i32 0, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 88
  store ptr null, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 96
  store i32 0, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jt, i64 104
  store ptr null, ptr %i.kg, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jt, i64 112
  store i32 0, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 120
  store ptr null, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jt, i64 128 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.jm
  br i1 %i.kk, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ja, i64 208 ; 2 uses
  store ptr %i.jl, ptr %i.kl, align 8
  store i32 %.0.lcssa.i333, ptr %i.jb, align 4
  %i.km = zext i32 %.0.lcssa.i333 to i64          ; 3 uses
  %i.kn = mul nuw nsw i64 %i.km, 12               ; 4 uses
  %i.ko = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kn) #20
          to label %bb.eg unwind label %bb.em     ; 2 uses

bb.eg:                                            ; preds = %.unr-lcssa
  %i.kp = add nsw i64 %i.kn, -12                  ; 2 uses
  %i.kq = urem i64 %i.kp, 12
  %i.kr = sub nuw nsw i64 %i.kp, %i.kq
  %i.ks = add nuw nsw i64 %i.kr, 12               ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ko, i8 0, i64 %i.ks, i1 false)
  store ptr %i.ko, ptr %i.jd, align 8
  br i1 %.0155646653668, label %bb.eh, label %.loopexit710

bb.eh:                                            ; preds = %bb.eg
  %i.kt = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kn) #20
          to label %.loopexit710.loopexit unwind label %bb.em ; 2 uses

.loopexit710.loopexit:                            ; preds = %bb.eh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.kt, i8 0, i64 %i.ks, i1 false)
  br label %.loopexit710

.loopexit710:                                     ; preds = %.loopexit710.loopexit, %bb.eg
  %i.ku = phi ptr [ null, %bb.eg ], [ %i.kt, %.loopexit710.loopexit ]
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ja, i64 24 ; 2 uses
  store ptr %i.ku, ptr %i.kv, align 8
  br i1 %.0158638644655664, label %bb.ei, label %.loopexit709

bb.ei:                                            ; preds = %.loopexit710
  %i.kw = shl nuw nsw i64 %i.km, 4                ; 2 uses
  %i.kx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kw) #20
          to label %.loopexit709.loopexit unwind label %bb.em ; 2 uses

.loopexit709.loopexit:                            ; preds = %bb.ei
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kx, i8 0, i64 %i.kw, i1 false)
  br label %.loopexit709

.loopexit709:                                     ; preds = %.loopexit709.loopexit, %.loopexit710
  %i.ky = phi ptr [ null, %.loopexit710 ], [ %i.kx, %.loopexit709.loopexit ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ja, i64 48 ; 2 uses
  store ptr %i.ky, ptr %i.kz, align 8
  br i1 %.0154632637645654666, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %.loopexit709
  %i.la = getelementptr inbounds nuw i8, ptr %i.ja, i64 176
  store i32 2, ptr %i.la, align 8
  %i.lb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kn) #20
          to label %bb.ek unwind label %bb.em     ; 2 uses

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.lb, i8 0, i64 %i.ks, i1 false)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ja, i64 112
  store ptr %i.lb, ptr %i.lc, align 8
  br label %bb.en

bb.el:                                            ; preds = %bb.ed
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.em:                                            ; preds = %bb.ej, %bb.ei, %bb.eh, %.unr-lcssa, %bb.ee
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.en:                                            ; preds = %bb.ek, %.loopexit709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 4096 ; 13 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.a, i64 4095 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.not751 = icmp eq i32 %.1164676, 0             ; 2 uses
  %i.lj = ptrtoint ptr %i.lf to i64               ; 12 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ja, i64 112
  %wide.trip.count = zext nneg i32 %.1164676 to i64
  %exitcond788.not = icmp eq i32 %.1164676, 1
  %exitcond788.not.1 = icmp eq i32 %.1164676, 2
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.hb
  %indvars.iv789 = phi i64 [ 0, %bb.en ], [ %indvars.iv.next790, %bb.hb ] ; 5 uses
  %.0741 = phi ptr [ %.22, %bb.en ], [ %.4, %bb.hb ] ; 3 uses
  %i.ll = load i8, ptr %.0741, align 1            ; 2 uses
  %.not707 = icmp eq i8 %i.ll, 0
  br i1 %.not707, label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.thread, label %.preheader755

.preheader755:                                    ; preds = %bb.eo, %bb.ep
  %.3 = phi ptr [ %i.lt, %bb.ep ], [ %.0741, %bb.eo ] ; 12 uses
  %i.lm = phi i8 [ %.pre21.i.3, %bb.ep ], [ %i.ll, %bb.eo ] ; 2 uses
  %.015.idx.i = phi i64 [ %.015.add.i.3, %bb.ep ], [ 0, %bb.eo ] ; 6 uses
  %.015.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.idx.i ; 5 uses
  switch i8 %i.lm, label %.preheader755.1 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i
  ]

.preheader755.1:                                  ; preds = %.preheader755
  %i.ln = getelementptr inbounds nuw i8, ptr %.3, i64 1
  store i8 %i.lm, ptr %.015.ptr.i, align 4
  %.pre21.i = load i8, ptr %i.ln, align 1         ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.idx.i
  %.015.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.lo, i64 1 ; 2 uses
  switch i8 %.pre21.i, label %.preheader755.2 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i.split.loop.exit956
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i.split.loop.exit956
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i.split.loop.exit956
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i.split.loop.exit956
  ]

.preheader755.2:                                  ; preds = %.preheader755.1
  %i.lp = getelementptr inbounds nuw i8, ptr %.3, i64 2
  store i8 %.pre21.i, ptr %.015.ptr.i.1, align 1
  %.pre21.i.1 = load i8, ptr %i.lp, align 1       ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.idx.i
  %.015.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.lq, i64 2 ; 2 uses
  switch i8 %.pre21.i.1, label %.preheader755.3 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i.split.loop.exit953
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i.split.loop.exit953
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i.split.loop.exit953
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i.split.loop.exit953
  ]

.preheader755.3:                                  ; preds = %.preheader755.2
  %i.lr = getelementptr inbounds nuw i8, ptr %.3, i64 3
end_hunk_0
begin_hunk_1_@_ZN6Assimp11OFFImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
    i8 32, label %bb.gb
    i8 9, label %bb.gb
  ]

bb.gb:                                            ; preds = %bb.ga, %bb.ga
  %.not.i.i469 = icmp eq ptr %.0.i.i468, %i.lf
  br i1 %.not.i.i469, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit472, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.oi = getelementptr inbounds nuw i8, ptr %.0.i.i468, i64 1 ; 2 uses
  %.pr684 = load i8, ptr %i.oi, align 1
  br label %bb.ga, !llvm.loop !14

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit472:      ; preds = %bb.ga, %bb.gb
  %.0.lcssa.i.i471 = phi ptr [ %.0.i.i468, %bb.ga ], [ %scevgep.i.i467, %bb.gb ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  %i.ok = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i471, ptr noundef nonnull align 4 dereferenceable(4) %i.oj, i1 noundef zeroext true)
          to label %bb.gf unwind label %bb.gd

bb.gd:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit484, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit478, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit472, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit466
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.ge:                                            ; preds = %bb.fy, %bb.fy, %bb.fy
  %i.om = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  store float 0.000000e+00, ptr %i.om, align 4
  br label %bb.gf

bb.gf:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit472, %bb.ge
  %.3615 = phi ptr [ %i.od, %bb.ge ], [ %i.ok, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit472 ] ; 5 uses
  %i.on = load i8, ptr %.3615, align 1            ; 2 uses
  switch i8 %i.on, label %bb.gg [
    i8 35, label %bb.gk
    i8 10, label %bb.gk
    i8 13, label %bb.gk
  ]

bb.gg:                                            ; preds = %bb.gf
  %i.oo = ptrtoint ptr %.3615 to i64
  %i.op = sub i64 %i.lj, %i.oo
  %scevgep.i.i473 = getelementptr i8, ptr %.3615, i64 %i.op
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gj, %bb.gg
  %i.oq = phi i8 [ %.pr685, %bb.gj ], [ %i.on, %bb.gg ]
  %.0.i.i474 = phi ptr [ %i.or, %bb.gj ], [ %.3615, %bb.gg ] ; 3 uses
  switch i8 %i.oq, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit478 [
    i8 32, label %bb.gi
    i8 9, label %bb.gi
  ]

bb.gi:                                            ; preds = %bb.gh, %bb.gh
  %.not.i.i475 = icmp eq ptr %.0.i.i474, %i.lf
  br i1 %.not.i.i475, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit478, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i.i474, i64 1 ; 2 uses
  %.pr685 = load i8, ptr %i.or, align 1
  br label %bb.gh, !llvm.loop !14

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit478:      ; preds = %bb.gh, %bb.gi
  %.0.lcssa.i.i477 = phi ptr [ %.0.i.i474, %bb.gh ], [ %scevgep.i.i473, %bb.gi ]
  %i.os = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.ot = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i477, ptr noundef nonnull align 4 dereferenceable(4) %i.os, i1 noundef zeroext true)
          to label %bb.gl unwind label %bb.gd

bb.gk:                                            ; preds = %bb.gf, %bb.gf, %bb.gf
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store float 0.000000e+00, ptr %i.ou, align 4
  br label %bb.gl

bb.gl:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit478, %bb.gk
  %.4616 = phi ptr [ %.3615, %bb.gk ], [ %i.ot, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit478 ] ; 5 uses
  %i.ov = load i8, ptr %.4616, align 1            ; 2 uses
  switch i8 %i.ov, label %bb.gm [
    i8 35, label %bb.gq
    i8 10, label %bb.gq
    i8 13, label %bb.gq
  ]

bb.gm:                                            ; preds = %bb.gl
  %i.ow = ptrtoint ptr %.4616 to i64
  %i.ox = sub i64 %i.lj, %i.ow
  %scevgep.i.i479 = getelementptr i8, ptr %.4616, i64 %i.ox
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gp, %bb.gm
  %i.oy = phi i8 [ %.pr686, %bb.gp ], [ %i.ov, %bb.gm ]
  %.0.i.i480 = phi ptr [ %i.oz, %bb.gp ], [ %.4616, %bb.gm ] ; 3 uses
  switch i8 %i.oy, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit484 [
    i8 32, label %bb.go
    i8 9, label %bb.go
  ]

bb.go:                                            ; preds = %bb.gn, %bb.gn
  %.not.i.i481 = icmp eq ptr %.0.i.i480, %i.lf
  br i1 %.not.i.i481, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit484, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.oz = getelementptr inbounds nuw i8, ptr %.0.i.i480, i64 1 ; 2 uses
  %.pr686 = load i8, ptr %i.oz, align 1
  br label %bb.gn, !llvm.loop !14

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit484:      ; preds = %bb.gn, %bb.go
  %.0.lcssa.i.i483 = phi ptr [ %.0.i.i480, %bb.gn ], [ %scevgep.i.i479, %bb.go ]
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ny, i64 12
  %i.pb = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %.0.lcssa.i.i483, ptr noundef nonnull align 4 dereferenceable(4) %i.pa, i1 noundef zeroext true)
          to label %bb.gr unwind label %bb.gd

bb.gq:                                            ; preds = %bb.gl, %bb.gl, %bb.gl
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ny, i64 12
  store float 1.000000e+00, ptr %i.pc, align 4
  br label %bb.gr

bb.gr:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit484, %bb.gq, %bb.ft
  %.5617 = phi ptr [ %.2614, %bb.ft ], [ %.4616, %bb.gq ], [ %i.pb, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit484 ] ; 3 uses
  br i1 %.0154632637645654666, label %bb.gs, label %bb.hb

bb.gs:                                            ; preds = %bb.gr
  %i.pd = load ptr, ptr %i.lk, align 8
  %i.pe = getelementptr inbounds nuw [12 x i8], ptr %i.pd, i64 %indvars.iv789 ; 2 uses
  %i.pf = ptrtoint ptr %.5617 to i64
  %i.pg = sub i64 %i.lj, %i.pf
  %scevgep.i.i485 = getelementptr i8, ptr %.5617, i64 %i.pg
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gv, %bb.gs
  %.0.i.i486 = phi ptr [ %.5617, %bb.gs ], [ %i.pi, %bb.gv ] ; 4 uses
  %i.ph = load i8, ptr %.0.i.i486, align 1
  switch i8 %i.ph, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit490 [
    i8 32, label %bb.gu
    i8 9, label %bb.gu
  ]

bb.gu:                                            ; preds = %bb.gt, %bb.gt
  %.not.i.i487 = icmp eq ptr %.0.i.i486, %i.lf
  br i1 %.not.i.i487, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit490, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.pi = getelementptr inbounds nuw i8, ptr %.0.i.i486, i64 1
  br label %bb.gt, !llvm.loop !14

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit490:      ; preds = %bb.gt, %bb.gu
  %.0.lcssa.i.i489 = phi ptr [ %.0.i.i486, %bb.gt ], [ %scevgep.i.i485, %bb.gu ]
  %i.pj = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i489, ptr noundef nonnull align 4 dereferenceable(4) %i.pe, i1 noundef zeroext true)
          to label %bb.gw unwind label %bb.ha     ; 3 uses

bb.gw:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit490
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = sub i64 %i.lj, %i.pk
  %scevgep.i.i491 = getelementptr i8, ptr %i.pj, i64 %i.pl
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gz, %bb.gw
  %.0.i.i492 = phi ptr [ %i.pj, %bb.gw ], [ %i.pn, %bb.gz ] ; 4 uses
  %i.pm = load i8, ptr %.0.i.i492, align 1
  switch i8 %i.pm, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit496 [
    i8 32, label %bb.gy
    i8 9, label %bb.gy
  ]

bb.gy:                                            ; preds = %bb.gx, %bb.gx
  %.not.i.i493 = icmp eq ptr %.0.i.i492, %i.lf
  br i1 %.not.i.i493, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit496, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i492, i64 1
  br label %bb.gx, !llvm.loop !14

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit496:      ; preds = %bb.gx, %bb.gy
  %.0.lcssa.i.i495 = phi ptr [ %.0.i.i492, %bb.gx ], [ %scevgep.i.i491, %bb.gy ]
  %i.po = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pp = invoke noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef %.0.lcssa.i.i495, ptr noundef nonnull align 4 dereferenceable(4) %i.po, i1 noundef zeroext true)
          to label %bb.hb unwind label %bb.ha     ; 0 uses

bb.ha:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit496, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit490
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.hb:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit496, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 1 ; 2 uses
  %exitcond793.not = icmp eq i64 %indvars.iv.next790, %i.km
  br i1 %exitcond793.not, label %.loopexit, label %bb.eo, !llvm.loop !16

bb.hc:                                            ; preds = %bb.ha, %bb.gd, %bb.fs, %bb.fe, %bb.ez
  %.pn201 = phi { ptr, i32 } [ %i.mn, %bb.ez ], [ %i.pq, %bb.ha ], [ %i.ol, %bb.gd ], [ %i.nw, %bb.fs ], [ %i.mt, %bb.fe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.ip

.loopexit:                                        ; preds = %bb.hb, %bb.et
  %.0727 = phi ptr [ %.0741, %bb.et ], [ %.4, %bb.hb ]
  %i.pr = load ptr, ptr %i.kl, align 8
  %i.ps = add i32 %.0.lcssa.i333, -1
  br label %bb.he

bb.hd:                                            ; preds = %bb.ib
  %i.pt = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #20
          to label %bb.ic unwind label %bb.ii     ; 8 uses

bb.he:                                            ; preds = %.loopexit, %bb.ib
  %.0136750 = phi i32 [ 0, %.loopexit ], [ %.1137, %bb.ib ]
  %.0165749 = phi ptr [ %i.pr, %.loopexit ], [ %.1166, %bb.ib ] ; 6 uses
  %.2748 = phi ptr [ %.0727, %.loopexit ], [ %.7, %bb.ib ] ; 2 uses
  %i.pu = load i8, ptr %.2748, align 1            ; 2 uses
  %.not708 = icmp eq i8 %i.pu, 0
  br i1 %.not708, label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.thread, label %.preheader754

.preheader754:                                    ; preds = %bb.he, %bb.hf
  %.6 = phi ptr [ %i.qc, %bb.hf ], [ %.2748, %bb.he ] ; 12 uses
  %i.pv = phi i8 [ %.pre21.i508.3, %bb.hf ], [ %i.pu, %bb.he ] ; 2 uses
  %.015.idx.i497 = phi i64 [ %.015.add.i506.3, %bb.hf ], [ 0, %bb.he ] ; 6 uses
  %.015.ptr.i498 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.idx.i497 ; 5 uses
  switch i8 %i.pv, label %.preheader754.1 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499
  ]

.preheader754.1:                                  ; preds = %.preheader754
  %i.pw = getelementptr inbounds nuw i8, ptr %.6, i64 1
  store i8 %i.pv, ptr %.015.ptr.i498, align 4
  %.pre21.i508 = load i8, ptr %i.pw, align 1      ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.idx.i497
  %.015.ptr.i498.1 = getelementptr inbounds nuw i8, ptr %i.px, i64 1 ; 2 uses
  switch i8 %.pre21.i508, label %.preheader754.2 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit972
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit972
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit972
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit972
  ]

.preheader754.2:                                  ; preds = %.preheader754.1
  %i.py = getelementptr inbounds nuw i8, ptr %.6, i64 2
  store i8 %.pre21.i508, ptr %.015.ptr.i498.1, align 1
  %.pre21.i508.1 = load i8, ptr %i.py, align 1    ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.idx.i497
  %.015.ptr.i498.2 = getelementptr inbounds nuw i8, ptr %i.pz, i64 2 ; 2 uses
  switch i8 %.pre21.i508.1, label %.preheader754.3 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit969
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit969
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit969
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit969
  ]

.preheader754.3:                                  ; preds = %.preheader754.2
  %i.qa = getelementptr inbounds nuw i8, ptr %.6, i64 3
  store i8 %.pre21.i508.1, ptr %.015.ptr.i498.2, align 2
  %.pre21.i508.2 = load i8, ptr %i.qa, align 1    ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.015.idx.i497
  %.015.ptr.i498.3 = getelementptr inbounds nuw i8, ptr %i.qb, i64 3 ; 3 uses
  switch i8 %.pre21.i508.2, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.i504.3 [
    i8 13, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit966
    i8 10, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit966
    i8 0, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit966
    i8 12, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit966
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit.i504.3:          ; preds = %.preheader754.3
  %exitcond.i505.3 = icmp eq i64 %.015.idx.i497, 4092
  br i1 %exitcond.i505.3, label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit, label %bb.hf

bb.hf:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i504.3
  %i.qc = getelementptr inbounds nuw i8, ptr %.6, i64 4 ; 2 uses
  %.015.add.i506.3 = add nuw nsw i64 %.015.idx.i497, 4
  store i8 %.pre21.i508.2, ptr %.015.ptr.i498.3, align 1
  %.pre21.i508.3 = load i8, ptr %i.qc, align 1
  br label %.preheader754, !llvm.loop !12

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.i504.3
  %i.qd = getelementptr inbounds nuw i8, ptr %.6, i64 3
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit966: ; preds = %.preheader754.3, %.preheader754.3, %.preheader754.3, %.preheader754.3
  %i.qe = getelementptr inbounds nuw i8, ptr %.6, i64 3
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit969: ; preds = %.preheader754.2, %.preheader754.2, %.preheader754.2, %.preheader754.2
  %i.qf = getelementptr inbounds nuw i8, ptr %.6, i64 2
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit972: ; preds = %.preheader754.1, %.preheader754.1, %.preheader754.1, %.preheader754.1
  %i.qg = getelementptr inbounds nuw i8, ptr %.6, i64 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499:     ; preds = %.preheader754, %.preheader754, %.preheader754, %.preheader754, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit972, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit969, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit966, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit
  %.6.lcssa = phi ptr [ %i.qe, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit966 ], [ %i.qg, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit972 ], [ %i.qd, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit ], [ %i.qf, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit969 ], [ %.6, %.preheader754 ], [ %.6, %.preheader754 ], [ %.6, %.preheader754 ], [ %.6, %.preheader754 ]
  %.015.ptr.i498.lcssa = phi ptr [ %.015.ptr.i498.3, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit966 ], [ %.015.ptr.i498.1, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit972 ], [ %.015.ptr.i498.3, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit ], [ %.015.ptr.i498.2, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499.split.loop.exit969 ], [ %.015.ptr.i498, %.preheader754 ], [ %.015.ptr.i498, %.preheader754 ], [ %.015.ptr.i498, %.preheader754 ], [ %.015.ptr.i498, %.preheader754 ]
  store i8 0, ptr %.015.ptr.i498.lcssa, align 1
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hi, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499
  %.7 = phi ptr [ %.6.lcssa, %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread.i499 ], [ %i.qi, %bb.hi ] ; 4 uses
  %i.qh = load i8, ptr %.7, align 1               ; 2 uses
  switch i8 %i.qh, label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split.preheader [
    i8 13, label %bb.hh
    i8 10, label %bb.hh
    i8 0, label %bb.hh
    i8 12, label %bb.hh
  ]

bb.hh:                                            ; preds = %bb.hg, %bb.hg, %bb.hg, %bb.hg
  %.not.i501 = icmp eq i8 %i.qh, 0
  %.not18.i502 = icmp eq ptr %.7, %i.lg
  %or.cond.i503 = select i1 %.not.i501, i1 true, i1 %.not18.i502
  br i1 %or.cond.i503, label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split.preheader, label %bb.hi

_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split.preheader: ; preds = %bb.hg, %bb.hh
  br label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split

bb.hi:                                            ; preds = %bb.hh
  %i.qi = getelementptr inbounds nuw i8, ptr %.7, i64 1
  br label %bb.hg, !llvm.loop !13

_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.thread: ; preds = %bb.he
  %i.qj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hj unwind label %bb.hm

bb.hj:                                            ; preds = %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.thread
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qj, ptr noundef nonnull @.str.9)
          to label %bb.hk unwind label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.qk = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, ptr noundef nonnull @.str.9)
          to label %bb.hl unwind label %bb.hn

bb.hl:                                            ; preds = %bb.hk
  invoke void @__cxa_throw(ptr nonnull %i.qk, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
          to label %bb.is unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hj, %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.thread
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.hn:                                            ; preds = %bb.hk
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qk) #17
  br label %bb.ip

_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split: ; preds = %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split.preheader, %bb.ho
  %.0.i.i511.idx = phi i64 [ %.0.i.i511.add, %bb.ho ], [ 0, %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split.preheader ] ; 3 uses
  %.0.i.i511.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.i511.idx
  %i.qn = load i8, ptr %.0.i.i511.ptr, align 1    ; 3 uses
  switch i8 %i.qn, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit515.loopexit [
    i8 32, label %bb.ho
    i8 9, label %bb.ho
  ]

bb.ho:                                            ; preds = %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split, %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split
  %.0.i.i511.add = add nuw nsw i64 %.0.i.i511.idx, 1
  br label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split, !llvm.loop !14

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit515.loopexit: ; preds = %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit509.split
  %i.qo = add i8 %i.qn, -58
  %or.cond11.i516 = icmp ult i8 %i.qo, -10
  br i1 %or.cond11.i516, label %_ZN6Assimp9strtoul10EPKcPS1_.exit525.thread, label %.lr.ph.i517.preheader

.lr.ph.i517.preheader:                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit515.loopexit
  %.0.i.i511.ptr.le = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.i511.idx
  br label %.lr.ph.i517

.lr.ph.i517:                                      ; preds = %.lr.ph.i517.preheader, %.lr.ph.i517
  %i.qp = phi i8 [ %i.qu, %.lr.ph.i517 ], [ %i.qn, %.lr.ph.i517.preheader ]
  %.013.i518 = phi i32 [ %i.qs, %.lr.ph.i517 ], [ 0, %.lr.ph.i517.preheader ]
  %.0812.i519 = phi ptr [ %i.qt, %.lr.ph.i517 ], [ %.0.i.i511.ptr.le, %.lr.ph.i517.preheader ]
  %i.qq = mul i32 %.013.i518, 10
  %narrow.i520 = add nsw i8 %i.qp, -48
  %i.qr = zext nneg i8 %narrow.i520 to i32
  %i.qs = add i32 %i.qq, %i.qr                    ; 4 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0812.i519, i64 1 ; 3 uses
  %i.qu = load i8, ptr %i.qt, align 1             ; 2 uses
  %i.qv = add i8 %i.qu, -58
  %or.cond.i521 = icmp ult i8 %i.qv, -10
  br i1 %or.cond.i521, label %_ZN6Assimp9strtoul10EPKcPS1_.exit525, label %.lr.ph.i517, !llvm.loop !9

_ZN6Assimp9strtoul10EPKcPS1_.exit525:             ; preds = %.lr.ph.i517
  %i.qw = add i32 %i.qs, -10
  %or.cond = icmp ult i32 %i.qw, -9
  br i1 %or.cond, label %_ZN6Assimp9strtoul10EPKcPS1_.exit525.thread, label %bb.hs

_ZN6Assimp9strtoul10EPKcPS1_.exit525.thread:      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit515.loopexit, %_ZN6Assimp9strtoul10EPKcPS1_.exit525
  %i.qx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hp unwind label %bb.hr

bb.hp:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit525.thread
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.qx, ptr noundef nonnull @.str.10)
          to label %bb.hq unwind label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.qy = load i32, ptr %i.jc, align 8
  %i.qz = add i32 %i.qy, -1
  store i32 %i.qz, ptr %i.jc, align 8
  br label %bb.ib, !llvm.loop !17

bb.hr:                                            ; preds = %bb.hs, %bb.hp, %_ZN6Assimp9strtoul10EPKcPS1_.exit525.thread
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.hs:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit525
  store i32 %i.qs, ptr %.0165749, align 8
  %i.rb = shl nuw nsw i32 %i.qs, 2
  %i.rc = zext nneg i32 %i.rb to i64
  %i.rd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.rc) #20
          to label %bb.ht unwind label %bb.hr

bb.ht:                                            ; preds = %bb.hs
  %i.re = getelementptr inbounds nuw i8, ptr %.0165749, i64 8 ; 2 uses
  store ptr %i.rd, ptr %i.re, align 8
  %i.rf = load i32, ptr %.0165749, align 8
  %.not753 = icmp eq i32 %i.rf, 0
  br i1 %.not753, label %._crit_edge747, label %.lr.ph746

._crit_edge747:                                   ; preds = %bb.ia, %bb.ht
  %i.rg = getelementptr inbounds nuw i8, ptr %.0165749, i64 16
  br label %bb.ib

.lr.ph746:                                        ; preds = %bb.ht, %bb.ia
  %indvars.iv794 = phi i64 [ %indvars.iv.next795, %bb.ia ], [ 0, %bb.ht ] ; 2 uses
  %.6618743 = phi ptr [ %.08.lcssa.i538, %bb.ia ], [ %i.qt, %bb.ht ] ; 3 uses
  %i.rh = ptrtoint ptr %.6618743 to i64
  %i.ri = sub i64 %i.lj, %i.rh
  %scevgep.i.i526 = getelementptr i8, ptr %.6618743, i64 %i.ri ; 2 uses
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hw, %.lr.ph746
  %.0.i.i527 = phi ptr [ %.6618743, %.lr.ph746 ], [ %i.rk, %bb.hw ] ; 4 uses
  %i.rj = load i8, ptr %.0.i.i527, align 1        ; 2 uses
  switch i8 %i.rj, label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531 [
    i8 32, label %bb.hv
    i8 9, label %bb.hv
  ]

bb.hv:                                            ; preds = %bb.hu, %bb.hu
  %.not.i.i528 = icmp eq ptr %.0.i.i527, %i.lf
  br i1 %.not.i.i528, label %.critedge.i.i529thread-pre-split, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i.i527, i64 1
  br label %bb.hu, !llvm.loop !14

.critedge.i.i529thread-pre-split:                 ; preds = %bb.hv
  %.pr694 = load i8, ptr %scevgep.i.i526, align 1
  br label %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531:      ; preds = %bb.hu, %.critedge.i.i529thread-pre-split
  %i.rl = phi i8 [ %.pr694, %.critedge.i.i529thread-pre-split ], [ %i.rj, %bb.hu ] ; 2 uses
  %.0.lcssa.i.i530 = phi ptr [ %scevgep.i.i526, %.critedge.i.i529thread-pre-split ], [ %.0.i.i527, %bb.hu ] ; 2 uses
  %i.rm = add i8 %i.rl, -58
  %or.cond11.i532 = icmp ult i8 %i.rm, -10
  br i1 %or.cond11.i532, label %_ZN6Assimp9strtoul10EPKcPS1_.exit541, label %.lr.ph.i533

.lr.ph.i533:                                      ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531, %.lr.ph.i533
  %i.rn = phi i8 [ %i.rs, %.lr.ph.i533 ], [ %i.rl, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531 ]
  %.013.i534 = phi i32 [ %i.rq, %.lr.ph.i533 ], [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531 ]
  %.0812.i535 = phi ptr [ %i.rr, %.lr.ph.i533 ], [ %.0.lcssa.i.i530, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531 ]
  %i.ro = mul i32 %.013.i534, 10
  %narrow.i536 = add nsw i8 %i.rn, -48
  %i.rp = zext nneg i8 %narrow.i536 to i32
  %i.rq = add i32 %i.ro, %i.rp                    ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.0812.i535, i64 1 ; 3 uses
  %i.rs = load i8, ptr %i.rr, align 1             ; 2 uses
  %i.rt = add i8 %i.rs, -58
  %or.cond.i537 = icmp ult i8 %i.rt, -10
  br i1 %or.cond.i537, label %_ZN6Assimp9strtoul10EPKcPS1_.exit541, label %.lr.ph.i533, !llvm.loop !9

_ZN6Assimp9strtoul10EPKcPS1_.exit541:             ; preds = %.lr.ph.i533, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531
  %.08.lcssa.i538 = phi ptr [ %.0.lcssa.i.i530, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531 ], [ %i.rr, %.lr.ph.i533 ]
  %.0.lcssa.i539 = phi i32 [ 0, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit531 ], [ %i.rq, %.lr.ph.i533 ] ; 2 uses
  %.not188 = icmp ult i32 %.0.lcssa.i539, %.0.lcssa.i333
  br i1 %.not188, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit541
  %i.ru = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.hy unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ru, ptr noundef nonnull @.str.11)
          to label %bb.ia unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.ia:                                            ; preds = %bb.hy, %_ZN6Assimp9strtoul10EPKcPS1_.exit541
  %.0135 = phi i32 [ %.0.lcssa.i539, %_ZN6Assimp9strtoul10EPKcPS1_.exit541 ], [ %i.ps, %bb.hy ]
  %i.rw = load ptr, ptr %i.re, align 8
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %indvars.iv794
  store i32 %.0135, ptr %i.rx, align 4
  %indvars.iv.next795 = add nuw nsw i64 %indvars.iv794, 1 ; 2 uses
  %i.ry = load i32, ptr %.0165749, align 8
  %i.rz = zext i32 %i.ry to i64
  %i.sa = icmp samesign ult i64 %indvars.iv.next795, %i.rz
  br i1 %i.sa, label %.lr.ph746, label %._crit_edge747, !llvm.loop !18

bb.ib:                                            ; preds = %._crit_edge747, %bb.hq
  %.1166 = phi ptr [ %.0165749, %bb.hq ], [ %i.rg, %._crit_edge747 ]
  %.1137 = add nuw i32 %.0136750, 1               ; 2 uses
  %exitcond798.not = icmp eq i32 %.1137, %.0.lcssa.i369
  br i1 %exitcond798.not, label %bb.hd, label %bb.he

bb.ic:                                            ; preds = %bb.hd
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.pt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 unwind label %bb.ij

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %bb.ic
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.pt, ptr %i.sb, align 8
  store i32 9, ptr %i.pt, align 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.sc, ptr noundef nonnull align 1 dereferenceable(9) @.str.12, i64 9, i1 false)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pt, i64 13
  store i8 0, ptr %i.sd, align 1
  %i.se = getelementptr inbounds nuw i8, ptr %i.pt, i64 1120
  store i32 1, ptr %i.se, align 8
  %i.sf = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %bb.id unwind label %bb.ii     ; 2 uses

bb.id:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548
  %i.sg = getelementptr inbounds nuw i8, ptr %i.pt, i64 1128
  store ptr %i.sf, ptr %i.sg, align 8
  store i32 0, ptr %i.sf, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.sh, align 8
  %i.si = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #20
          to label %bb.ie unwind label %bb.ii

bb.ie:                                            ; preds = %bb.id
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.si, ptr %i.sj, align 8
  %i.sk = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %bb.if unwind label %bb.ik     ; 5 uses

bb.if:                                            ; preds = %bb.ie
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.sk)
          to label %bb.ig unwind label %bb.il

bb.ig:                                            ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store <4 x float> <float 6.000000e-01, float 6.000000e-01, float 6.000000e-01, float 1.000000e+00>, ptr %6, align 16
  %i.sl = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.sk, ptr noundef nonnull %6, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit unwind label %bb.im ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit: ; preds = %bb.ig
  %i.sm = load ptr, ptr %i.sj, align 8
  store ptr %i.sk, ptr %i.sm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 1, ptr %i.d, align 4
  %i.sn = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.sk, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.in ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.so = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i551 = icmp eq ptr %i.so, null
  br i1 %.not.i.i.i551, label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit, label %bb.ih

bb.ih:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %i.sp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = ptrtoint ptr %i.so to i64
  %i.st = sub i64 %i.sr, %i.ss
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef %i.st) #18
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.su = load ptr, ptr %i.l, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8
  call void %i.sw(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #17, !inline_history !19
  ret void

bb.ii:                                            ; preds = %bb.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %bb.hd
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.ij:                                            ; preds = %bb.ic
  %i.sy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef 1144) #18
  br label %bb.ip

bb.ik:                                            ; preds = %bb.ie
  %i.sz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.il:                                            ; preds = %bb.if
  %i.ta = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef 16) #18
  br label %bb.ip

bb.im:                                            ; preds = %bb.ig
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.in:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor4tIfEjPKcjj.exit
  %i.tc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.pn185 = phi { ptr, i32 } [ %i.tc, %bb.in ], [ %i.tb, %bb.im ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ip

bb.ip:                                            ; preds = %bb.ik, %bb.il, %bb.io, %bb.hm, %bb.hn, %bb.hz, %bb.hr, %bb.eu, %bb.hc, %bb.ij, %bb.ii
  %.pn201.pn.pn = phi { ptr, i32 } [ %i.sy, %bb.ij ], [ %i.mb, %bb.eu ], [ %i.rv, %bb.hz ], [ %i.sx, %bb.ii ], [ %i.sz, %bb.ik ], [ %.pn201, %bb.hc ], [ %i.qm, %bb.hn ], [ %i.ql, %bb.hm ], [ %i.ra, %bb.hr ], [ %.pn185, %bb.io ], [ %i.ta, %bb.il ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.iq

bb.iq:                                            ; preds = %bb.v, %bb.bk, %bb.bz, %bb.dx, %bb.dy, %bb.eb, %bb.em, %bb.ip, %bb.el, %bb.u
  %.pn209.pn = phi { ptr, i32 } [ %i.bc, %bb.u ], [ %i.bd, %bb.v ], [ %i.ew, %bb.bz ], [ %i.dq, %bb.bk ], [ %i.le, %bb.em ], [ %i.it, %bb.dy ], [ %i.is, %bb.dx ], [ %i.iw, %bb.eb ], [ %i.ld, %bb.el ], [ %.pn201.pn.pn, %bb.ip ]
  %i.td = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i.i.i553 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i553, label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i556, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.te = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = ptrtoint ptr %i.tf to i64
  %i.th = ptrtoint ptr %i.td to i64
  %i.ti = sub i64 %i.tg, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.ti) #18
  br label %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i556

_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i556: ; preds = %bb.ir, %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.tj = load ptr, ptr %i.l, align 8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #17, !inline_history !19
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit557

_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit557: ; preds = %bb.d, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i556, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.pn212.pn = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.pn209.pn, %_ZNKSt14default_deleteIN6Assimp8IOStreamEEclEPS1_.exit.i556 ], [ %i.w, %bb.d ]
  resume { ptr, i32 } %.pn212.pn

bb.is:                                            ; preds = %bb.hl
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_KcERA25_S9_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3)
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
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #18
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #17
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @_ZN6Assimp12BaseImporter16TextFileToBufferEPNS_8IOStreamERSt6vectorIcSaIcEENS0_12TextFileModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
end_hunk_1
